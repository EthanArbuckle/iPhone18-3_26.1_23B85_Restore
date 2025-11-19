uint64_t sub_10070C580(uint64_t a1)
{
  v2 = sub_10070C990();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070C5BC(uint64_t a1)
{
  v2 = sub_10070C990();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070C600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070B184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10070C628(uint64_t a1)
{
  v2 = sub_10070C8E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070C664(uint64_t a1)
{
  v2 = sub_10070C8E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070C6A0(uint64_t a1)
{
  v2 = sub_10070C93C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070C6DC(uint64_t a1)
{
  v2 = sub_10070C93C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070C718(uint64_t a1)
{
  v2 = sub_10070C9E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070C754(uint64_t a1)
{
  v2 = sub_10070C9E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10070C79C()
{
  Hasher.init(_seed:)();
  sub_10070BBCC();
  return Hasher._finalize()();
}

uint64_t sub_10070C880(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CD4B88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10070C8E8()
{
  result = qword_100CD4BB0;
  if (!qword_100CD4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4BB0);
  }

  return result;
}

unint64_t sub_10070C93C()
{
  result = qword_100CD4BB8;
  if (!qword_100CD4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4BB8);
  }

  return result;
}

unint64_t sub_10070C990()
{
  result = qword_100CD4BC0;
  if (!qword_100CD4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4BC0);
  }

  return result;
}

unint64_t sub_10070C9E4()
{
  result = qword_100CD4BC8;
  if (!qword_100CD4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4BC8);
  }

  return result;
}

uint64_t sub_10070CA38(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MoonDetailSelectedDate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_10070CB7C(_BYTE *result, int a2, int a3)
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

unint64_t sub_10070CC2C()
{
  result = qword_100CD4BF0;
  if (!qword_100CD4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4BF0);
  }

  return result;
}

unint64_t sub_10070CC84()
{
  result = qword_100CD4BF8;
  if (!qword_100CD4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4BF8);
  }

  return result;
}

unint64_t sub_10070CCDC()
{
  result = qword_100CD4C00;
  if (!qword_100CD4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4C00);
  }

  return result;
}

unint64_t sub_10070CD34()
{
  result = qword_100CD4C08;
  if (!qword_100CD4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4C08);
  }

  return result;
}

unint64_t sub_10070CD8C()
{
  result = qword_100CD4C10;
  if (!qword_100CD4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4C10);
  }

  return result;
}

unint64_t sub_10070CDE4()
{
  result = qword_100CD4C18;
  if (!qword_100CD4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4C18);
  }

  return result;
}

unint64_t sub_10070CE3C()
{
  result = qword_100CD4C20;
  if (!qword_100CD4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4C20);
  }

  return result;
}

unint64_t sub_10070CE94()
{
  result = qword_100CD4C28;
  if (!qword_100CD4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4C28);
  }

  return result;
}

unint64_t sub_10070CEEC()
{
  result = qword_100CD4C30;
  if (!qword_100CD4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4C30);
  }

  return result;
}

unint64_t sub_10070CF44()
{
  result = qword_100CD4C38;
  if (!qword_100CD4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4C38);
  }

  return result;
}

unint64_t sub_10070CF9C()
{
  result = qword_100CD4C40;
  if (!qword_100CD4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4C40);
  }

  return result;
}

unint64_t sub_10070CFF4()
{
  result = qword_100CD4C48;
  if (!qword_100CD4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4C48);
  }

  return result;
}

void sub_10070D04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1 == a5 && a2 == a6;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_1000BCFBC();
    if (v7)
    {
      sub_100003B2C();

      sub_1000BD330();
    }
  }
}

uint64_t sub_10070D0D8()
{
  v2 = v1;
  v3 = sub_10000C76C();
  type metadata accessor for LocationWeatherDataState(v3);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CD4D28);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  sub_100006610();
  sub_1001A0E7C(v2, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = sub_10022C350(&qword_100CA75D8);
      v20 = *(v19 + 48);
      v21 = *(v19 + 64);
      Dictionary.init(dictionaryLiteral:)();
      sub_10012CDA0();
      ShortDescription.init(name:_:)();
      sub_10001CB98();
      sub_1001A126C(v7 + v21, v22);
      sub_100008D68();
      sub_1001A126C(v7 + v20, v23);
      v14 = type metadata accessor for WeatherData;
      goto LABEL_7;
    case 2u:
      v26 = *v7;
      v15 = *(v7 + 16);
      v16 = *(v7 + 24);
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      sub_100052068(inited, xmmword_100A2C3F0);
      inited[4].n128_u64[1] = sub_10022C350(&qword_100CACE00);
      v18 = swift_allocObject();
      inited[3].n128_u64[0] = v18;
      *(v18 + 16) = v26;
      *(v18 + 32) = v15;
      *(v18 + 40) = v16;
      Dictionary.init(dictionaryLiteral:)();
      sub_100071DD4();
      goto LABEL_5;
    case 3u:
      Dictionary.init(dictionaryLiteral:)();
      sub_1000186C0();
LABEL_5:
      ShortDescription.init(name:_:)();
      break;
    default:
      Dictionary.init(dictionaryLiteral:)();
      sub_1000B02F0();
      v14 = type metadata accessor for LocationWeatherDataState;
LABEL_7:
      sub_1001A126C(v7, v14);
      break;
  }

  v0[3] = v8;
  v0[4] = sub_10012EF24(&qword_100CD4D30, &qword_100CD4D28);
  v24 = sub_100042FB0(v0);
  return (*(v10 + 32))(v24, v13, v8);
}

void sub_10070D3FC()
{
  sub_10000C778();
  v57 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for UUID();
  sub_1000037C4();
  v55 = v10;
  v56 = v9;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_100003C38();
  sub_100079578();
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for PreprocessedWeatherData();
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_1000037D8();
  v54 = v22 - v21;
  v23 = sub_1000038CC();
  v24 = type metadata accessor for WeatherData(v23);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000037D8();
  v53 = v27 - v26;
  v28 = sub_10022C350(&qword_100CA37B0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003C38();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = &v49 - v34;

  sub_1000864C0(v6, v4, v2);
  if (sub_100024D10(v35, 1, v14) == 1)
  {
    goto LABEL_5;
  }

  v51 = v8;
  v52 = v6;
  sub_1005C1F54(v35, v32, &qword_100CA37B0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100019DF0();
    sub_1001A126C(v32, v46);
    v8 = v51;
LABEL_5:
    sub_1000289EC();
    sub_1001A0E7C(v8, v18);
    sub_10003BF3C();
    swift_storeEnumTagMultiPayload();
    sub_10000496C();
    v47 = sub_1000F0034();
    sub_1001A10BC(v47, v48);

    swift_isUniquelyReferenced_nonNull_native();
    sub_1000871F0();
    sub_1002391FC();

    goto LABEL_6;
  }

  v36 = sub_10022C350(&qword_100CA75D8);
  v37 = *(v36 + 64);
  v49 = *(v36 + 48);
  v50 = v37;
  sub_100014D4C();
  v38 = v53;
  sub_1001A10BC(v32, v53);
  sub_10002307C();
  sub_1001A10BC(v32 + v49, v54);
  v49 = *(v36 + 48);
  v39 = *(v36 + 64);
  sub_1000249E4();
  sub_1001A0E7C(v38, v18);
  sub_100041B2C();
  v40 = v54;
  sub_1001A0E7C(v54, &v18[v49]);
  sub_1000289EC();
  sub_1001A0E7C(v51, &v18[v39]);
  sub_10003BF3C();
  swift_storeEnumTagMultiPayload();
  sub_10000496C();
  v41 = sub_1000F0034();
  sub_1001A10BC(v41, v42);

  swift_isUniquelyReferenced_nonNull_native();
  sub_1000871F0();
  sub_1002391FC();

  sub_100008D68();
  sub_1001A126C(v40, v43);
  sub_10001F620();
  sub_1001A126C(v53, v44);
  sub_10001CB98();
  sub_1001A126C(v32 + v50, v45);
LABEL_6:
  sub_1000180EC(v35, &qword_100CA37B0);

  UUID.init()();
  UUID.uuidString.getter();
  (*(v55 + 8))(v13, v56);
  sub_10000536C();
}

void sub_10070D800()
{
  sub_10000C778();
  v75 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v66 = v7;
  type metadata accessor for UUID();
  sub_1000037C4();
  v73 = v9;
  v74 = v8;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_100003848();
  v68 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v67 = &v63 - v17;
  sub_1000038CC();
  v18 = type metadata accessor for NewsDataModel();
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_1000037D8();
  v72 = v21 - v20;
  sub_1000038CC();
  v22 = type metadata accessor for PreprocessedWeatherData();
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_1000037D8();
  v71 = v25 - v24;
  v26 = sub_1000038CC();
  v27 = type metadata accessor for WeatherData(v26);
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_100003C38();
  v31 = (v29 - v30);
  __chkstk_darwin(v32);
  v34 = &v63 - v33;
  v35 = sub_10022C350(&qword_100CA37B0);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_100003C38();
  v39 = v37 - v38;
  __chkstk_darwin(v40);
  v42 = &v63 - v41;

  v69 = v6;
  v70 = v4;
  v43 = v6;
  v44 = v2;
  sub_1000864C0(v43, v4, v2);
  if (sub_100024D10(v42, 1, v13) != 1)
  {
    sub_1005C1F54(v42, v39, &qword_100CA37B0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v65 = sub_10022C350(&qword_100CA75D8);
      v45 = *(v65 + 48);
      v46 = *(v65 + 64);
      sub_100014D4C();
      sub_1001A10BC(v39, v34);
      sub_10002307C();
      sub_1001A10BC(v39 + v45, v71);
      sub_100010968();
      sub_1001A10BC(v39 + v46, v72);
      v48 = *v34;
      v64 = *(v34 + 1);
      v47 = v64;
      sub_1005C1F54(&v34[v27[5]], &v31[v27[5]], &qword_100CAA9F0);
      v49 = v27[6];
      type metadata accessor for WeatherDataModel();
      sub_1000037E8();
      (*(v50 + 16))(&v31[v49], &v34[v49]);
      sub_10003728C();
      sub_1001A0E7C(v66, &v31[v51]);
      sub_100025378();
      sub_1001A0E7C(&v34[v52], &v31[v52]);
      sub_1005C1F54(&v34[v27[9]], &v31[v27[9]], &qword_100CA75C8);
      *v31 = v48;
      *(v31 + 1) = v47;
      v53 = *(v65 + 48);
      v54 = *(v65 + 64);
      sub_1000249E4();
      v55 = v67;
      sub_1001A0E7C(v31, v67);
      sub_100041B2C();
      v56 = v71;
      sub_1001A0E7C(v71, v55 + v53);
      sub_1000289EC();
      v57 = v55 + v54;
      v58 = v72;
      sub_1001A0E7C(v72, v57);
      sub_10003C310();
      swift_storeEnumTagMultiPayload();
      sub_10000496C();
      sub_1001A10BC(v55, v68);

      swift_isUniquelyReferenced_nonNull_native();
      v76 = v44;
      sub_1002391FC();

      sub_1001A126C(v31, type metadata accessor for WeatherData);
      sub_10001CB98();
      sub_1001A126C(v58, v59);
      sub_100008D68();
      sub_1001A126C(v56, v60);
      v61 = sub_100003940();
    }

    else
    {
      sub_100019DF0();
      v61 = v39;
    }

    sub_1001A126C(v61, v62);
  }

  sub_1000180EC(v42, &qword_100CA37B0);

  UUID.init()();
  UUID.uuidString.getter();
  (*(v73 + 8))(v12, v74);
  sub_100003940();
  sub_10000536C();
}

uint64_t sub_10070DCF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1635017060 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000100ABAE70 == a2)
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

uint64_t sub_10070DE10(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 1635017060;
  }

  return 0xD000000000000011;
}

uint64_t sub_10070DE68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1937204590 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1635017060 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
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

uint64_t sub_10070DFC4(char a1)
{
  result = 0x676E6964616F6CLL;
  switch(a1)
  {
    case 1:
      result = 1937204590;
      break;
    case 2:
      result = 1635017060;
      break;
    case 3:
      result = 0x64656C696166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10070E034(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 12639 && a2 == 0xE200000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 12895 && a2 == 0xE200000000000000)
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

uint64_t sub_10070E144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7272456863746566 && a2 == 0xEA0000000000726FLL)
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

uint64_t sub_10070E218(char a1)
{
  if (a1)
  {
    return 0x7272456863746566;
  }

  else
  {
    return 0x73654D726F727265;
  }
}

uint64_t sub_10070E264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070DCF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10070E28C(uint64_t a1)
{
  v2 = sub_1007122D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E2C8(uint64_t a1)
{
  v2 = sub_1007122D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070DE68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10070E334(uint64_t a1)
{
  v2 = sub_100712618();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E370(uint64_t a1)
{
  v2 = sub_100712618();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070E034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10070E3DC(uint64_t a1)
{
  v2 = sub_100712714();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E418(uint64_t a1)
{
  v2 = sub_100712714();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070E144(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10070E484(uint64_t a1)
{
  v2 = sub_10071266C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E4C0(uint64_t a1)
{
  v2 = sub_10071266C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E4FC(uint64_t a1)
{
  v2 = sub_1007127BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E538(uint64_t a1)
{
  v2 = sub_1007127BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E574(uint64_t a1)
{
  v2 = sub_100712768();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E5B0(uint64_t a1)
{
  v2 = sub_100712768();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E5EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1635017060 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
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

uint64_t sub_10070E6F8(char a1)
{
  if (!a1)
  {
    return 0x676E6964616F6CLL;
  }

  if (a1 == 1)
  {
    return 1635017060;
  }

  return 0x64656C696166;
}

uint64_t sub_10070E744(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_10070E7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070E5EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10070E7FC(uint64_t a1)
{
  v2 = sub_100712864();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E838(uint64_t a1)
{
  v2 = sub_100712864();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E874(uint64_t a1)
{
  v2 = sub_10071290C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E8B0(uint64_t a1)
{
  v2 = sub_10071290C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10070E744(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10070E91C(uint64_t a1)
{
  v2 = sub_1007128B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E958(uint64_t a1)
{
  v2 = sub_1007128B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10070E994(uint64_t a1)
{
  v2 = sub_100712960();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10070E9D0(uint64_t a1)
{
  v2 = sub_100712960();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10070EA0C()
{
  sub_10000C778();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for PreprocessedWeatherData();
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003848();
  v85 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  v88 = &v83 - v10;
  v11 = sub_1000038CC();
  v12 = type metadata accessor for WeatherData(v11);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_1000037D8();
  v86 = (v15 - v14);
  sub_1000038CC();
  v16 = type metadata accessor for NewsDataModel();
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_100003848();
  v84 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v87 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  v23 = &v83 - v22;
  type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003C38();
  v27 = (v25 - v26);
  __chkstk_darwin(v28);
  sub_100079578();
  __chkstk_darwin(v29);
  v31 = &v83 - v30;
  v32 = sub_10022C350(&qword_100CD4D20);
  sub_100003810(v32);
  sub_100003828();
  __chkstk_darwin(v33);
  sub_100013348();
  v35 = (v0 + v34);
  sub_1001A0E7C(v5, v0);
  sub_1001A0E7C(v3, v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100006610();
      v48 = sub_1000F0034();
      sub_1001A0E7C(v48, v49);
      v50 = sub_10022C350(&qword_100CA75D8);
      v51 = *(v50 + 48);
      v52 = *(v50 + 64);
      if (sub_1000C8F20() != 1)
      {
        sub_10001CB98();
        sub_1001A126C(v1 + v52, v66);
        sub_100008D68();
        sub_1001A126C(v1 + v51, v67);
        sub_10001F620();
        v37 = v1;
        goto LABEL_19;
      }

      sub_100014D4C();
      v53 = v86;
      sub_1001A10BC(v35, v86);
      sub_1001A10BC(v1 + v51, v88);
      v54 = v87;
      sub_1001A10BC(v1 + v52, v87);
      v55 = v85;
      sub_1001A10BC(v35 + v51, v85);
      v56 = v84;
      sub_1001A10BC(v35 + v52, v84);
      v57 = sub_100883064(v1, v53);
      sub_10001F620();
      sub_1001A126C(v1, v58);
      if (v57)
      {
        v59 = v88;
        if (sub_1001D3D2C(v88, v55))
        {
          v60 = v87;
          sub_1009D82EC(v87, v56);
          sub_100020AA4();
          sub_1001A126C(v56, v61);
          sub_1001A126C(v55, type metadata accessor for PreprocessedWeatherData);
          sub_1001A126C(v60, v57);
          sub_1001A126C(v59, type metadata accessor for PreprocessedWeatherData);
          sub_10001F620();
          v63 = v53;
          goto LABEL_22;
        }

        sub_100020AA4();
        sub_1001A126C(v56, v80);
        sub_10002164C();
        sub_1001A126C(v55, v81);
        sub_1001A126C(v87, v57);
        v79 = v59;
      }

      else
      {
        sub_100020AA4();
        sub_1001A126C(v56, v77);
        sub_10002164C();
        sub_1001A126C(v55, v78);
        sub_1001A126C(v54, v57);
        v79 = v88;
      }

      sub_1001A126C(v79, type metadata accessor for NewsDataModel);
      sub_10001F620();
      sub_1001A126C(v53, v82);
      goto LABEL_25;
    case 2u:
      sub_100006610();
      sub_1001A0E7C(v0, v27);
      v39 = *v27;
      v38 = v27[1];
      if (sub_1000C8F20() != 2)
      {
        v64 = sub_100031474();
        sub_10031EF8C(v64, v65);

        goto LABEL_20;
      }

      v40 = v35[2];
      v41 = v35[3];
      if (v39 == *v35 && v38 == v35[1])
      {
      }

      else
      {
        sub_100020E44();
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v43 & 1) == 0)
        {
          v44 = sub_10002C598();
          sub_10031EF8C(v44, v45);
          v46 = sub_100031474();
          sub_10031EF8C(v46, v47);
          goto LABEL_25;
        }
      }

      v70 = sub_100031474();
      sub_1008983B8(v70, v71, v40, v41);
      v72 = sub_100031474();
      sub_10031EF8C(v72, v73);
      v74 = sub_10002C598();
      sub_10031EF8C(v74, v75);
      goto LABEL_25;
    case 3u:
      if (sub_1000C8F20() == 3)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    default:
      sub_100006610();
      sub_1001A0E7C(v0, v31);
      if (sub_1000C8F20())
      {
        sub_10001CB98();
        v37 = v31;
LABEL_19:
        sub_1001A126C(v37, v36);
LABEL_20:
        sub_1000180EC(v0, &qword_100CD4D20);
      }

      else
      {
        sub_100010968();
        sub_1001A10BC(v35, v23);
        v68 = sub_100031474();
        sub_1009D82EC(v68, v69);
        sub_1001A126C(v23, type metadata accessor for NewsDataModel);
        v63 = v31;
        v62 = type metadata accessor for NewsDataModel;
LABEL_22:
        sub_1001A126C(v63, v62);
LABEL_25:
        sub_100019DF0();
        sub_1001A126C(v0, v76);
      }

      sub_10000536C();
      return;
  }
}

void sub_10070EFDC()
{
  sub_10000C778();
  v3 = v2;
  v4 = type metadata accessor for AvailableDataSets();
  sub_1000037C4();
  v28 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  type metadata accessor for LocationAvailableDataSetState(0);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_100003C38();
  v13 = (v11 - v12);
  __chkstk_darwin(v14);
  sub_10003BA64();
  v15 = sub_10022C350(&qword_100CAA7E0);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  sub_100013348();
  v18 = (v0 + v17);
  sub_1001A0E7C(v3, v0);
  v19 = sub_100014AD8();
  sub_1001A0E7C(v19, v20);
  sub_100003940();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100049B4C();
      sub_1001A0E7C(v0, v13);
      v23 = *v13;
      v22 = v13[1];
      sub_10003C310();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v23 != *v18 || v22 != v18[1])
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_18;
      }
    }

    else
    {
      sub_10003C310();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_18:
        sub_10000ED34();
        goto LABEL_19;
      }
    }
  }

  else
  {
    sub_100049B4C();
    sub_1001A0E7C(v0, v1);
    sub_10003C310();
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v28 + 32))(v9, v18, v4);
      sub_100016DE0();
      sub_100712170(v25, v26);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v27 = *(v28 + 8);
      v27(v9, v4);
      v27(v1, v4);
      sub_10000ED34();
      goto LABEL_19;
    }

    (*(v28 + 8))(v1, v4);
  }

  sub_1000180EC(v0, &qword_100CAA7E0);
LABEL_19:
  sub_10000536C();
}

uint64_t sub_10070F324@<X0>(unint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  sub_1000C83E0(inited, xmmword_100A2D320);
  sub_10022C350(&qword_100CD4D48);
  inited[3].n128_u64[0] = a1;
  sub_1000326A0();
  inited[4].n128_u64[1] = v8;
  inited[5].n128_u64[0] = v7 | 1;
  inited[5].n128_u64[1] = v9;
  inited[7].n128_u64[1] = sub_10022C350(&qword_100CD4D50);
  inited[6].n128_u64[0] = a2;

  Dictionary.init(dictionaryLiteral:)();
  a3[3] = sub_10022C350(&qword_100CD4D58);
  a3[4] = sub_10012EF24(&qword_100CD4D60, &qword_100CD4D58);
  sub_100042FB0(a3);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10070F488()
{
  sub_100712210();

  return ShortDescribable.description.getter();
}

void sub_10070F4C4()
{
  sub_10000C778();
  v2 = v0;
  v34 = v3;
  v4 = sub_10022C350(&qword_100CA75D8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for NewsDataModel();
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v10 = sub_1000115E8();
  type metadata accessor for LocationWeatherDataState(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = sub_10022C350(&qword_100CD4D28);
  sub_1000037C4();
  v17 = v16;
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v33 - v19;
  sub_100006610();
  sub_1001A0E7C(v2, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100712264(v14, v7);
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      v29 = sub_1000C83E0(inited, xmmword_100A2C3F0);
      v29[4].n128_u64[1] = v4;
      v30 = sub_100042FB0(&v29[3]);
      sub_1005C1F54(v7, v30, &qword_100CA75D8);
      Dictionary.init(dictionaryLiteral:)();
      sub_10012CDA0();
      ShortDescription.init(name:_:)();
      sub_1000180EC(v7, &qword_100CA75D8);
      break;
    case 2u:
      v33 = *v14;
      v24 = *(v14 + 16);
      v25 = *(v14 + 24);
      sub_10022C350(&qword_100CA36F8);
      v26 = swift_initStackObject();
      sub_100052068(v26, xmmword_100A2C3F0);
      v26[4].n128_u64[1] = sub_10022C350(&qword_100CACE00);
      v27 = swift_allocObject();
      v26[3].n128_u64[0] = v27;
      *(v27 + 16) = v33;
      *(v27 + 32) = v24;
      *(v27 + 40) = v25;
      Dictionary.init(dictionaryLiteral:)();
      sub_100071DD4();
      goto LABEL_5;
    case 3u:
      Dictionary.init(dictionaryLiteral:)();
      sub_1000186C0();
LABEL_5:
      ShortDescription.init(name:_:)();
      break;
    default:
      sub_100010968();
      sub_1001A10BC(v14, v1);
      sub_10022C350(&qword_100CA36F8);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_100A2C3F0;
      *(v21 + 32) = 0x617461447377656ELL;
      *(v21 + 40) = 0xE800000000000000;
      *(v21 + 72) = v8;
      sub_100042FB0((v21 + 48));
      sub_1000289EC();
      sub_1001A0E7C(v1, v22);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000B02F0();
      sub_10001CB98();
      sub_1001A126C(v1, v23);
      break;
  }

  v31 = v34;
  v34[3] = v15;
  v31[4] = sub_10012EF24(&qword_100CD4D30, &qword_100CD4D28);
  v32 = sub_100042FB0(v31);
  (*(v17 + 32))(v32, v20, v15);
  sub_10000536C();
}

uint64_t sub_10070F904()
{
  sub_100712170(&qword_100CD4D70, type metadata accessor for LocationWeatherDataState);

  return ShortDescribable.description.getter();
}

void sub_10070F970()
{
  sub_10000C778();
  v4 = v1;
  sub_10000C76C();
  v5 = type metadata accessor for AvailableDataSets();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v9 = sub_1000115E8();
  type metadata accessor for LocationAvailableDataSetState(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = (v12 - v11);
  v14 = sub_10022C350(&qword_100CD4D78);
  sub_1000037C4();
  v16 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_100003CF8();
  sub_100049B4C();
  sub_1001A0E7C(v4, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v13;
      v20 = v13[1];
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      v22 = sub_100052068(inited, xmmword_100A2C3F0);
      v22[4].n128_u64[1] = &type metadata for String;
      v22[3].n128_u64[0] = v19;
      v22[3].n128_u64[1] = v20;
      Dictionary.init(dictionaryLiteral:)();
      sub_100071DD4();
    }

    else
    {
      Dictionary.init(dictionaryLiteral:)();
      sub_1000186C0();
    }

    ShortDescription.init(name:_:)();
  }

  else
  {
    (*(v7 + 32))(v3, v13, v5);
    sub_10022C350(&qword_100CA36F8);
    *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
    sub_1000326A0();
    v23[4] = v25;
    v23[5] = v24;
    v23[9] = v5;
    v26 = sub_100042FB0(v23 + 6);
    (*(v7 + 16))(v26, v3, v5);
    Dictionary.init(dictionaryLiteral:)();
    sub_10012CDA0();
    ShortDescription.init(name:_:)();
    (*(v7 + 8))(v3, v5);
  }

  v0[3] = v14;
  v0[4] = sub_10012EF24(&qword_100CD4D80, &qword_100CD4D78);
  v27 = sub_100042FB0(v0);
  (*(v16 + 32))(v27, v2, v14);
  sub_10000536C();
}

void sub_10070FC8C()
{
  sub_10000E8AC();
  v3 = v2;
  v4 = sub_10022C350(&qword_100CD4DC0);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100003CF8();
  sub_1000161C0(v3, v3[3]);
  sub_1007122D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_10022C350(&qword_100CD4D48);
    sub_1007124A0();
    sub_1000D42B8();
    sub_10022C350(&qword_100CD4D50);
    sub_10071255C();
    sub_1000D42B8();
  }

  (*(v6 + 8))(v1, v4);
  sub_10000C8F4();
}

void sub_10070FE20()
{
  sub_10000E8AC();
  v2 = v1;
  sub_10022C350(&qword_100CD4D90);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  v4 = sub_1000F0034();
  sub_1000161C0(v4, v5);
  sub_1007122D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_10022C350(&qword_100CD4D48);
    sub_100712328();
    sub_1000B99FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10022C350(&qword_100CD4D50);
    sub_1007123E4();
    sub_1000B99FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = sub_100036E30();
    v7(v6);
  }

  sub_100006F14(v2);
  sub_100020E44();
  sub_10000C8F4();
}

void sub_100710064()
{
  sub_10000E8AC();
  v99 = v1;
  v95 = v0;
  v4 = v3;
  sub_10022C350(&qword_100CD4E50);
  sub_1000037C4();
  v87 = v6;
  v88 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v86 = v8;
  sub_10022C350(&qword_100CD4E58);
  sub_1000037C4();
  v90 = v10;
  v91 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v89 = v12;
  sub_1000038CC();
  v82[0] = type metadata accessor for PreprocessedWeatherData();
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000037D8();
  v92 = v15 - v14;
  v16 = sub_1000038CC();
  v84 = type metadata accessor for WeatherData(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v93 = v19 - v18;
  sub_10022C350(&qword_100CD4E60);
  sub_1000037C4();
  v82[3] = v21;
  v83 = v20;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  v82[2] = v23;
  sub_1000038CC();
  v94 = type metadata accessor for NewsDataModel();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003848();
  v85 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  v28 = v82 - v27;
  sub_10022C350(&qword_100CD4E68);
  sub_1000037C4();
  v82[1] = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  v31 = sub_1000115E8();
  type metadata accessor for LocationWeatherDataState(v31);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_1000037D8();
  v35 = v34 - v33;
  sub_10022C350(&qword_100CD4E70);
  sub_1000037C4();
  v97 = v36;
  v98 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_100003CF8();
  sub_1000161C0(v4, v4[3]);
  sub_100712618();
  v96 = v2;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100006610();
  sub_1001A0E7C(v95, v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v61 = sub_10022C350(&qword_100CA75D8);
      v62 = *(v61 + 48);
      v63 = *(v61 + 64);
      sub_100014D4C();
      v64 = v93;
      sub_1001A10BC(v35, v93);
      sub_10002307C();
      v65 = v92;
      sub_1001A10BC(v35 + v62, v92);
      sub_100010968();
      v66 = v85;
      sub_1001A10BC(v35 + v63, v85);
      LOBYTE(v100) = 2;
      sub_100712714();
      v67 = v89;
      v40 = v96;
      v39 = v97;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v100) = 0;
      sub_1000305A0();
      sub_100712170(v68, v69);
      v70 = v91;
      v71 = v99;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v71)
      {
        LOBYTE(v100) = 1;
        sub_100024314();
        sub_100712170(v72, v73);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        LOBYTE(v100) = 2;
        sub_10004E9A0();
        sub_100712170(v74, v75);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v90 + 8))(v67, v70);
      sub_10001CB98();
      sub_1001A126C(v66, v76);
      sub_100008D68();
      sub_1001A126C(v65, v77);
      sub_10001F620();
      v47 = v64;
      goto LABEL_10;
    case 2u:
      v49 = *(v35 + 16);
      v48 = *(v35 + 24);
      LOBYTE(v100) = 3;
      sub_10071266C();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v100) = 0;
      v50 = v99;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (v50)
      {

        sub_10031EF8C(v49, v48);
        v51 = sub_1001707AC();
        v52(v51);
        v53 = sub_100020E44();
LABEL_11:
        v55(v53, v54);
      }

      else
      {

        v100 = v49;
        v101 = v48;
        sub_100712810();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v78 = sub_1001707AC();
        v79(v78);
        v80 = sub_100020E44();
        v81(v80);
        sub_10031EF8C(v49, v48);
      }

LABEL_12:
      sub_10000C8F4();
      return;
    case 3u:
      LOBYTE(v100) = 0;
      sub_1007127BC();
      v56 = v97;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = sub_100014AD8();
      v58(v57);
      v59 = sub_1000202BC();
      v60(v59, v56);
      goto LABEL_12;
    default:
      sub_1001A10BC(v35, v28);
      LOBYTE(v100) = 1;
      sub_100712768();
      v40 = v96;
      v39 = v97;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10004E9A0();
      sub_100712170(v41, v42);
      v43 = v83;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v44 = sub_100052730();
      v45(v44, v43);
      sub_10001CB98();
      v47 = v28;
LABEL_10:
      sub_1001A126C(v47, v46);
      v55 = *(v98 + 8);
      v53 = v40;
      v54 = v39;
      goto LABEL_11;
  }
}

void sub_100710860()
{
  sub_10000E8AC();
  v111 = v0;
  v2 = v1;
  v105 = v3;
  sub_10022C350(&qword_100CD4DE8);
  sub_1000037C4();
  v99 = v5;
  v100 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v103 = v7;
  sub_10022C350(&qword_100CD4DF0);
  sub_1000037C4();
  v106 = v9;
  v107 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v104 = v11;
  sub_10022C350(&qword_100CD4DF8);
  sub_1000037C4();
  v97 = v13;
  v98 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v102 = v15;
  sub_10022C350(&qword_100CD4E00);
  sub_1000037C4();
  v95 = v17;
  v96 = v16;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v101 = v19;
  sub_10022C350(&qword_100CD4E08);
  sub_1000037C4();
  v108 = v21;
  v109 = v20;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_100003CF8();
  v23 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003C38();
  v27 = (v25 - v26);
  __chkstk_darwin(v28);
  v30 = &v90 - v29;
  __chkstk_darwin(v31);
  v33 = &v90 - v32;
  __chkstk_darwin(v34);
  v36 = &v90 - v35;
  v37 = v2[3];
  v110 = v2;
  sub_1000161C0(v2, v37);
  sub_100712618();
  v38 = v111;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    goto LABEL_8;
  }

  v92 = v33;
  v91 = v27;
  v94 = v30;
  v93 = v36;
  v111 = v23;
  v39 = v109;
  v40 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v40, 0);
  if (v42 == v43 >> 1)
  {
LABEL_7:
    v51 = v111;
    v52 = type metadata accessor for DecodingError();
    swift_allocError();
    v54 = v53;
    sub_10022C350(&qword_100CA7610);
    *v54 = v51;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C();
    (*(*(v52 - 8) + 104))(v54, enum case for DecodingError.typeMismatch(_:), v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = sub_1000202BC();
    v56(v55, v39);
LABEL_8:
    v57 = v110;
LABEL_9:
    sub_100006F14(v57);
    sub_10000C8F4();
    return;
  }

  v90 = 0;
  if (v42 < (v43 >> 1))
  {
    v44 = *(v41 + v42);
    sub_100618E7C(v42 + 1);
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    if (v46 == v48 >> 1)
    {
      v49 = v105;
      switch(v44)
      {
        case 1:
          LOBYTE(v112) = 1;
          sub_100712768();
          sub_100021124();
          type metadata accessor for NewsDataModel();
          sub_10004E9A0();
          sub_100712170(v64, v65);
          v66 = v92;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v73 = sub_1000C9078();
          v74(v73);
          sub_100020724();
          v75 = sub_10003BF3C();
          v76(v75);
          swift_storeEnumTagMultiPayload();
          sub_10000496C();
          v63 = v93;
          sub_1001A10BC(v66, v93);
          goto LABEL_13;
        case 2:
          LOBYTE(v112) = 2;
          sub_100712714();
          sub_100021124();
          type metadata accessor for WeatherData(0);
          LOBYTE(v112) = 0;
          sub_1000305A0();
          sub_100712170(v58, v59);
          sub_1000B99FC();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v103 = sub_10022C350(&qword_100CA75D8);
          v67 = *(v103 + 48);
          type metadata accessor for PreprocessedWeatherData();
          LOBYTE(v112) = 1;
          sub_100024314();
          sub_100712170(v68, v69);
          sub_1000B99FC();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v102 = v67;
          type metadata accessor for NewsDataModel();
          LOBYTE(v112) = 2;
          sub_10004E9A0();
          sub_100712170(v78, v79);
          v80 = v107;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v85 = sub_100052730();
          v86(v85, v80);
          v87 = sub_10003BF3C();
          v88(v87);
          v89 = v94;
          goto LABEL_15;
        case 3:
          LOBYTE(v112) = 3;
          sub_10071266C();
          sub_100021124();
          LOBYTE(v112) = 0;
          v60 = v100;
          v70 = KeyedDecodingContainer.decode(_:forKey:)();
          v72 = v71;
          sub_1007126C0();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v81 = sub_1000202BC();
          v82(v81, v60);
          v83 = sub_10003BF3C();
          v84(v83);
          v89 = v91;
          *v91 = v70;
          *(v89 + 8) = v72;
          *(v89 + 16) = v112;
LABEL_15:
          swift_storeEnumTagMultiPayload();
          sub_10000496C();
          v63 = v93;
          sub_1001A10BC(v89, v93);
          v77 = v110;
          v49 = v105;
          break;
        default:
          LOBYTE(v112) = 0;
          sub_1007127BC();
          v50 = v101;
          sub_100021124();
          swift_unknownObjectRelease();
          (*(v95 + 8))(v50, v96);
          sub_100020724();
          v61 = sub_10003BF3C();
          v62(v61);
          v63 = v93;
          swift_storeEnumTagMultiPayload();
LABEL_13:
          v77 = v110;
          break;
      }

      sub_10000496C();
      sub_1001A10BC(v63, v49);
      v57 = v77;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_100711300()
{
  sub_10000E8AC();
  v55 = v1;
  v53 = v0;
  v3 = v2;
  v50 = sub_10022C350(&qword_100CD4ED8);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v45 = v6;
  v49 = sub_10022C350(&qword_100CD4EE0);
  sub_1000037C4();
  v44 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v52 = v9;
  sub_1000038CC();
  type metadata accessor for AvailableDataSets();
  sub_1000037C4();
  v46 = v11;
  v47 = v10;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v51 = v13 - v12;
  v14 = sub_10022C350(&qword_100CD4EE8);
  sub_1000037C4();
  v43[1] = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  type metadata accessor for LocationAvailableDataSetState(0);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v54 = sub_10022C350(&qword_100CD4EF0);
  sub_1000037C4();
  v22 = v21;
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = v43 - v24;
  sub_1000161C0(v3, v3[3]);
  sub_100712864();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100049B4C();
  sub_1001A0E7C(v53, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1007128B8();
      v27 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v28 = v50;
      KeyedEncodingContainer.encode(_:forKey:)();

      sub_100020724();
      v29(v27, v28);
      v30 = sub_100014AD8();
      v31(v30);
    }

    else
    {
      sub_100712960();
      v40 = v54;
      sub_100037BD4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v41 = sub_100052730();
      v42(v41, v14);
      (*(v22 + 8))(v25, v40);
    }
  }

  else
  {
    v32 = v44;
    v33 = v46;
    v34 = v20;
    v35 = v47;
    (*(v46 + 32))(v51, v34, v47);
    sub_10071290C();
    v36 = v54;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100016DE0();
    sub_100712170(v37, v38);
    v39 = v49;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v32 + 8))(v52, v39);
    (*(v33 + 8))(v51, v35);
    (*(v22 + 8))(v25, v36);
  }

  sub_10000C8F4();
}

void sub_1007117F4()
{
  sub_10000E8AC();
  v86 = v0;
  v4 = v3;
  v81 = v5;
  sub_10022C350(&qword_100CD4E90);
  sub_1000037C4();
  v82 = v7;
  v83 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v80 = v9;
  sub_10022C350(&qword_100CD4E98);
  sub_1000037C4();
  v76 = v11;
  v77 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v79 = v13;
  sub_10022C350(&qword_100CD4EA0);
  sub_1000037C4();
  v74 = v15;
  v75 = v14;
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v78 = v17;
  sub_10022C350(&qword_100CD4EA8);
  sub_1000037C4();
  v84 = v19;
  v85 = v18;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  v23 = type metadata accessor for LocationAvailableDataSetState(0);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003C38();
  sub_100079578();
  __chkstk_darwin(v25);
  v27 = &v69 - v26;
  __chkstk_darwin(v28);
  sub_10003BA64();
  sub_1000161C0(v4, v4[3]);
  sub_100712864();
  v29 = v86;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    goto LABEL_10;
  }

  v70 = v2;
  v71 = v27;
  v72 = v1;
  v73 = v23;
  v86 = v4;
  v30 = v85;
  v31 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v31, 0);
  if (v33 == v34 >> 1)
  {
LABEL_9:
    v49 = type metadata accessor for DecodingError();
    swift_allocError();
    v51 = v50;
    sub_10022C350(&qword_100CA7610);
    *v51 = v73;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C();
    (*(*(v49 - 8) + 104))(v51, enum case for DecodingError.typeMismatch(_:), v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_100014A24();
    v52(v22, v30);
    v4 = v86;
LABEL_10:
    sub_100006F14(v4);
LABEL_11:
    sub_10000C8F4();
    return;
  }

  if (v33 < (v34 >> 1))
  {
    v35 = v22;
    v36 = *(v32 + v33);
    sub_100618E7C(v33 + 1);
    v38 = v37;
    v40 = v39;
    swift_unknownObjectRelease();
    v41 = v38 == v40 >> 1;
    v43 = v82;
    v42 = v83;
    if (!v41)
    {
      v22 = v35;
      goto LABEL_9;
    }

    if (v36)
    {
      if (v36 == 1)
      {
        sub_10071290C();
        sub_10008684C();
        v44 = v81;
        type metadata accessor for AvailableDataSets();
        sub_100016DE0();
        sub_100712170(v45, v46);
        v47 = v71;
        v48 = v77;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v57 = sub_1000202BC();
        v58(v57, v48);
        v59 = sub_100020E44();
        v60(v59);
        swift_storeEnumTagMultiPayload();
        sub_10000CE1C();
        v61 = v72;
        sub_1001A10BC(v47, v72);
LABEL_15:
        sub_10000CE1C();
        sub_1001A10BC(v61, v44);
        sub_100006F14(v86);
        goto LABEL_11;
      }

      sub_1007128B8();
      v54 = v80;
      sub_10008684C();
      v62 = KeyedDecodingContainer.decode(_:forKey:)();
      v64 = v63;
      swift_unknownObjectRelease();
      (*(v43 + 8))(v54, v42);
      sub_100014A24();
      v65 = sub_100014AD8();
      v66(v65);
      v67 = v70;
      *v70 = v62;
      v67[1] = v64;
      swift_storeEnumTagMultiPayload();
      sub_10000CE1C();
      v68 = v67;
      v61 = v72;
      sub_1001A10BC(v68, v72);
    }

    else
    {
      sub_100712960();
      v53 = v78;
      sub_10008684C();
      swift_unknownObjectRelease();
      (*(v74 + 8))(v53, v75);
      v55 = sub_1000202BC();
      v56(v55, v30);
      v61 = v72;
      swift_storeEnumTagMultiPayload();
    }

    v44 = v81;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_100711F14()
{
  sub_100712170(&qword_100CD4D88, type metadata accessor for LocationAvailableDataSetState);

  return ShortDescribable.description.getter();
}

void sub_100711F80(void *a1@<X8>)
{
  sub_10070FE20();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_100712030(void *a1@<X8>)
{
  sub_100780068();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

uint64_t sub_100712170(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1007121BC()
{
  result = qword_100CD4D18;
  if (!qword_100CD4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4D18);
  }

  return result;
}

unint64_t sub_100712210()
{
  result = qword_100CD4D68;
  if (!qword_100CD4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4D68);
  }

  return result;
}

uint64_t sub_100712264(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA75D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007122D4()
{
  result = qword_100CD4D98;
  if (!qword_100CD4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4D98);
  }

  return result;
}

unint64_t sub_100712328()
{
  result = qword_100CD4DA0;
  if (!qword_100CD4DA0)
  {
    sub_10022E824(&qword_100CD4D48);
    sub_100712170(&qword_100CD4DA8, type metadata accessor for LocationWeatherDataState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4DA0);
  }

  return result;
}

unint64_t sub_1007123E4()
{
  result = qword_100CD4DB0;
  if (!qword_100CD4DB0)
  {
    sub_10022E824(&qword_100CD4D50);
    sub_100712170(&qword_100CD4DB8, type metadata accessor for LocationAvailableDataSetState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4DB0);
  }

  return result;
}

unint64_t sub_1007124A0()
{
  result = qword_100CD4DC8;
  if (!qword_100CD4DC8)
  {
    sub_10022E824(&qword_100CD4D48);
    sub_100712170(&qword_100CD4DD0, type metadata accessor for LocationWeatherDataState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4DC8);
  }

  return result;
}

unint64_t sub_10071255C()
{
  result = qword_100CD4DD8;
  if (!qword_100CD4DD8)
  {
    sub_10022E824(&qword_100CD4D50);
    sub_100712170(&qword_100CD4DE0, type metadata accessor for LocationAvailableDataSetState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4DD8);
  }

  return result;
}

unint64_t sub_100712618()
{
  result = qword_100CD4E10;
  if (!qword_100CD4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4E10);
  }

  return result;
}

unint64_t sub_10071266C()
{
  result = qword_100CD4E18;
  if (!qword_100CD4E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4E18);
  }

  return result;
}

unint64_t sub_1007126C0()
{
  result = qword_100CD4E20;
  if (!qword_100CD4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4E20);
  }

  return result;
}

unint64_t sub_100712714()
{
  result = qword_100CD4E28;
  if (!qword_100CD4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4E28);
  }

  return result;
}

unint64_t sub_100712768()
{
  result = qword_100CD4E40;
  if (!qword_100CD4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4E40);
  }

  return result;
}

unint64_t sub_1007127BC()
{
  result = qword_100CD4E48;
  if (!qword_100CD4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4E48);
  }

  return result;
}

unint64_t sub_100712810()
{
  result = qword_100CD4E78;
  if (!qword_100CD4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4E78);
  }

  return result;
}

unint64_t sub_100712864()
{
  result = qword_100CD4EB0;
  if (!qword_100CD4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4EB0);
  }

  return result;
}

unint64_t sub_1007128B8()
{
  result = qword_100CD4EB8;
  if (!qword_100CD4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4EB8);
  }

  return result;
}

unint64_t sub_10071290C()
{
  result = qword_100CD4EC0;
  if (!qword_100CD4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4EC0);
  }

  return result;
}

unint64_t sub_100712960()
{
  result = qword_100CD4ED0;
  if (!qword_100CD4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4ED0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationWeatherDataState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100712AE0(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LocationWeatherDataState.FailedCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_100712C78(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100712D58()
{
  result = qword_100CD4FB0;
  if (!qword_100CD4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4FB0);
  }

  return result;
}

unint64_t sub_100712DB0()
{
  result = qword_100CD4FB8;
  if (!qword_100CD4FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4FB8);
  }

  return result;
}

unint64_t sub_100712E08()
{
  result = qword_100CD4FC0;
  if (!qword_100CD4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4FC0);
  }

  return result;
}

unint64_t sub_100712E60()
{
  result = qword_100CD4FC8;
  if (!qword_100CD4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4FC8);
  }

  return result;
}

unint64_t sub_100712EB8()
{
  result = qword_100CD4FD0;
  if (!qword_100CD4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4FD0);
  }

  return result;
}

unint64_t sub_100712F10()
{
  result = qword_100CD4FD8;
  if (!qword_100CD4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4FD8);
  }

  return result;
}

unint64_t sub_100712F68()
{
  result = qword_100CD4FE0;
  if (!qword_100CD4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4FE0);
  }

  return result;
}

unint64_t sub_100712FC0()
{
  result = qword_100CD4FE8;
  if (!qword_100CD4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4FE8);
  }

  return result;
}

unint64_t sub_100713018()
{
  result = qword_100CD4FF0;
  if (!qword_100CD4FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4FF0);
  }

  return result;
}

unint64_t sub_100713070()
{
  result = qword_100CD4FF8;
  if (!qword_100CD4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD4FF8);
  }

  return result;
}

unint64_t sub_1007130C8()
{
  result = qword_100CD5000;
  if (!qword_100CD5000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5000);
  }

  return result;
}

unint64_t sub_100713120()
{
  result = qword_100CD5008;
  if (!qword_100CD5008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5008);
  }

  return result;
}

unint64_t sub_100713178()
{
  result = qword_100CD5010;
  if (!qword_100CD5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5010);
  }

  return result;
}

unint64_t sub_1007131D0()
{
  result = qword_100CD5018;
  if (!qword_100CD5018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5018);
  }

  return result;
}

unint64_t sub_100713228()
{
  result = qword_100CD5020;
  if (!qword_100CD5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5020);
  }

  return result;
}

unint64_t sub_100713280()
{
  result = qword_100CD5028;
  if (!qword_100CD5028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5028);
  }

  return result;
}

unint64_t sub_1007132D8()
{
  result = qword_100CD5030;
  if (!qword_100CD5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5030);
  }

  return result;
}

unint64_t sub_100713330()
{
  result = qword_100CD5038;
  if (!qword_100CD5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5038);
  }

  return result;
}

unint64_t sub_100713388()
{
  result = qword_100CD5040;
  if (!qword_100CD5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5040);
  }

  return result;
}

unint64_t sub_1007133E0()
{
  result = qword_100CD5048;
  if (!qword_100CD5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5048);
  }

  return result;
}

unint64_t sub_100713438()
{
  result = qword_100CD5050;
  if (!qword_100CD5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5050);
  }

  return result;
}

unint64_t sub_100713490()
{
  result = qword_100CD5058;
  if (!qword_100CD5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5058);
  }

  return result;
}

unint64_t sub_1007134E8()
{
  result = qword_100CD5060;
  if (!qword_100CD5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5060);
  }

  return result;
}

unint64_t sub_100713540()
{
  result = qword_100CD5068;
  if (!qword_100CD5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5068);
  }

  return result;
}

unint64_t sub_100713598()
{
  result = qword_100CD5070;
  if (!qword_100CD5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5070);
  }

  return result;
}

unint64_t sub_1007135F0()
{
  result = qword_100CD5078;
  if (!qword_100CD5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5078);
  }

  return result;
}

unint64_t sub_100713648()
{
  result = qword_100CD5080;
  if (!qword_100CD5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5080);
  }

  return result;
}

unint64_t sub_1007136A0()
{
  result = qword_100CD5088;
  if (!qword_100CD5088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5088);
  }

  return result;
}

uint64_t sub_10071374C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA3EE8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for LocationHeaderViewLargeText();
  sub_1000955E0(v1 + *(v13 + 28), v12, &qword_100CA3EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Font.Context();
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

uint64_t sub_10071392C()
{
  v1 = type metadata accessor for Font.Leading();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-v6];
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v12, 0);
    (*(v9 + 8))(v11, v8);
  }

  static Font.Weight.thin.getter();
  v14 = type metadata accessor for Font.Design();
  sub_10001B350(v7, 1, 1, v14);
  static Font.system(size:weight:design:)();
  sub_1000180EC(v7, &qword_100CA4020);
  (*(v2 + 104))(v4, enum case for Font.Leading.tight(_:), v1);
  v15 = Font.leading(_:)();

  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_100713C18()
{
  v1 = type metadata accessor for Font.Leading();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-v6];
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v12, 0);
    (*(v9 + 8))(v11, v8);
  }

  static Font.Weight.light.getter();
  v14 = type metadata accessor for Font.Design();
  sub_10001B350(v7, 1, 1, v14);
  static Font.system(size:weight:design:)();
  sub_1000180EC(v7, &qword_100CA4020);
  (*(v2 + 104))(v4, enum case for Font.Leading.tight(_:), v1);
  v15 = Font.leading(_:)();

  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_100713F04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v26 = v4;
  v27 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CD5130);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = sub_10022C350(&qword_100CD5138);
  sub_1000037C4();
  v14 = v13;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  v28 = sub_10022C350(&qword_100CD5140);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v24 - v19;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v21 = sub_10022C350(&qword_100CD5148);
  sub_100714264(v2, &v11[*(v21 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v22 = sub_100006F64(&qword_100CD5150, &qword_100CD5130);
  View.accessibilityElement(children:)();
  (*(v26 + 8))(v7, v27);
  sub_1000180EC(v11, &qword_100CD5130);
  v32 = v8;
  v33 = v22;
  swift_getOpaqueTypeConformance2();
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v14 + 8))(v17, v12);
  Solarium.init()();
  v31 = v25;
  v30 = v25;
  sub_10022C350(&qword_100CD5158);
  sub_100717878();
  sub_1007179A4();
  View.staticIf<A, B, C>(_:then:else:)();
  return sub_1000180EC(v20, &qword_100CD5140);
}

uint64_t sub_100714264@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v89 = a2;
  v3 = sub_10022C350(&qword_100CD5170);
  __chkstk_darwin(v3 - 8);
  v91 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v90 = (&v85 - v6);
  v7 = *(type metadata accessor for LocationHeaderViewLargeText() + 32);
  *(&v88 + 1) = a1;
  v8 = a1 + v7;
  v9 = *(a1 + v7);
  v10 = *(v8 + 8);
  *&v98 = v9;
  *(&v98 + 1) = v10;
  v11 = sub_10002D5A4();

  *&v88 = v11;
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Font.largeTitle.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_10010CD64(v12, v14, v16 & 1);

  static Color.black.getter();
  sub_100156608();
  Color.opacity(_:)();

  sub_100156634();
  sub_10015667C();
  sub_100156658();
  v93 = Text.shadow(color:radius:x:y:)();
  v92 = v22;
  v24 = v23;
  v94 = v25;

  sub_10010CD64(v17, v19, v21 & 1);

  v26 = *(v8 + 24);
  v27 = *(v8 + 40) >> 6;
  if (v27)
  {
    if (v27 == 1)
    {
      v28 = *(v8 + 32);
      *&v98 = *(v8 + 24);
      *(&v98 + 1) = v28;

      v29 = Text.init<A>(_:)();
      v31 = v30;
      v33 = v32;
      v34 = v24;
      static Font.footnote.getter();
      v35 = Text.font(_:)();
      v37 = v36;
      v39 = v38;

      sub_10010CD64(v29, v31, v33 & 1);

      static Color.black.getter();
      sub_100156608();
      Color.opacity(_:)();

      sub_100156634();
      sub_10015667C();
      sub_100156658();
      v40 = Text.shadow(color:radius:x:y:)();
      v42 = v41;
      v44 = v43;
      v46 = v45;

      sub_10010CD64(v35, v37, v39 & 1);

      v47 = v44 & 1;
      v24 = v34;
      *&v95 = v40;
      *(&v95 + 1) = v42;
      *&v96 = v47;
      *(&v96 + 1) = v46;
      v97 = 256;
    }

    else
    {
      LOBYTE(v97) = 0;
      v95 = 0u;
      v96 = 0u;
      _ConditionalContent<>.init(storage:)();
      v95 = v98;
      v96 = v99;
      v97 = v100;
    }

    sub_10022C350(&qword_100CD5178);
    sub_100717A78();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *&v98 = *(v8 + 16);
    *(&v98 + 1) = v26;

    v48 = Text.init<A>(_:)();
    v50 = v49;
    v52 = v51;
    static Font.footnote.getter();
    v53 = Text.font(_:)();
    v55 = v54;
    v56 = v24;
    v58 = v57;

    sub_10010CD64(v48, v50, v52 & 1);

    static Color.black.getter();
    sub_100156608();
    Color.opacity(_:)();

    sub_100156634();
    sub_10015667C();
    sub_100156658();
    v59 = Text.shadow(color:radius:x:y:)();
    v61 = v60;
    LOBYTE(v48) = v62;
    v64 = v63;

    sub_10010CD64(v53, v55, v58 & 1);

    v65 = v48 & 1;
    *&v95 = v59;
    *(&v95 + 1) = v61;
    *&v96 = v65;
    *(&v96 + 1) = v64;
    LOBYTE(v97) = 1;
    sub_10010CD54(v59, v61, v65);

    _ConditionalContent<>.init(storage:)();
    v95 = v98;
    v96 = v99;
    v97 = v100;
    sub_10022C350(&qword_100CD5178);
    sub_100717A78();
    v24 = v56;
    _ConditionalContent<>.init(storage:)();
    sub_10010CD64(v59, v61, v65);
  }

  v66 = v100;
  v67 = v101;
  v68 = *(&v88 + 1);
  v85 = v99;
  v86 = v98;
  v87 = v98;
  v88 = v99;
  sub_100717AFC(v98, *(&v98 + 1), v99, *(&v99 + 1), v100, v101);
  v69 = static Alignment.topLeading.getter();
  v70 = v90;
  *v90 = v69;
  *(v70 + 8) = v71;
  v72 = sub_10022C350(&qword_100CD5188);
  sub_100714A94(v68, v70 + *(v72 + 44));
  v73 = v91;
  sub_1000955E0(v70, v91, &qword_100CD5170);
  v74 = v89;
  *v89 = 0;
  *(v74 + 8) = 1;
  v75 = v93;
  v76 = v94;
  v77 = v92;
  v74[2] = v93;
  v74[3] = v77;
  v78 = v24 & 1;
  *(v74 + 32) = v78;
  v74[5] = v76;
  v79 = v85;
  *(v74 + 3) = v86;
  *(v74 + 4) = v79;
  *(v74 + 80) = v66;
  *(v74 + 81) = v67;
  v80 = sub_10022C350(&qword_100CD5190);
  sub_1000955E0(v73, v74 + *(v80 + 80), &qword_100CD5170);
  v81 = v74 + *(v80 + 96);
  sub_10010CD54(v75, v77, v78);

  v82 = v87;
  v83 = v88;
  sub_100717AFC(v87, *(&v87 + 1), v88, *(&v88 + 1), v66, v67);
  sub_100717BA4(v82, *(&v82 + 1), v83, *(&v83 + 1), v66, v67);
  *v81 = 0;
  v81[8] = 1;
  sub_1000180EC(v70, &qword_100CD5170);
  sub_1000180EC(v73, &qword_100CD5170);
  sub_100717BA4(v82, *(&v82 + 1), v83, *(&v83 + 1), v66, v67);
  sub_10010CD64(v93, v92, v78);
}

uint64_t sub_100714A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CD5198);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v19 = sub_10022C350(&qword_100CD51A0);
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - v10;
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_10022C350(&qword_100CD51A8);
  sub_100714D5C(a1);
  static AccessibilityChildBehavior.ignore.getter();
  v12 = sub_100006F64(&qword_100CD51B0, &qword_100CD5198);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v20);
  sub_1000180EC(v8, &qword_100CD5198);
  v13 = a1 + *(type metadata accessor for LocationHeaderViewLargeText() + 32);
  v15 = *(v13 + 136);
  v14 = *(v13 + 144);
  v24 = v15;
  v25 = v14;
  v22 = v6;
  v23 = v12;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v16 = v19;
  View.accessibilityLabel<A>(_:)();
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_100714D5C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v92 = v3;
  v4 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v4 - 8);
  v83 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v82 = &v76 - v7;
  v78 = type metadata accessor for EnvironmentValues();
  v8 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10022C350(&qword_100CA4000);
  __chkstk_darwin(v86);
  v87 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v94 = &v76 - v16;
  sub_1007156D0(v2, v104);
  v95 = *(&v104[0] + 1);
  v90 = *&v104[1];
  v91 = *&v104[0];
  v89 = *(&v104[1] + 1);
  v88 = LOBYTE(v104[2]);
  v17 = *(type metadata accessor for LocationHeaderViewLargeText() + 32);
  v93 = v2;
  v18 = (v2 + v17);
  v84 = *(v2 + v17 + 128);
  if (v84 != 1)
  {
    goto LABEL_9;
  }

  v19 = v18[13];
  v20 = v18[12] & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v19) & 0xF;
  }

  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = v18[15];
  v22 = v18[14] & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v21) & 0xF;
  }

  if (v22)
  {
    sub_100715C64(v101);
    memcpy(v102, v101, sizeof(v102));
    LocationSearchEntityFromStringResolver.init()();
    memcpy(v104, v102, 0x26BuLL);
  }

  else
  {
LABEL_9:
    sub_100717C4C(v104);
  }

  v23 = v18[6];
  v24 = v18[7];
  v85 = v18;
  *v102 = v23;
  *&v102[8] = v24;
  sub_10002D5A4();

  v80 = Text.init<A>(_:)();
  v81 = v25;
  v27 = v26;
  v79 = v28;
  v29 = *(v11 + 104);
  v29(v13, enum case for Font.TextStyle.title3(_:), v10);
  static Font.Weight.medium.getter();
  v30 = static Font.system(_:weight:)();
  v31 = *(v11 + 8);
  v31(v13, v10);
  v29(v13, enum case for Font.TextStyle.body(_:), v10);
  static Font.Weight.medium.getter();
  v32 = static Font.system(_:weight:)();
  v31(v13, v10);
  v33 = *v93;
  if (*(v93 + 8) == 1)
  {
    v103 = v33 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v35 = v77;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v33, 0);
    (*(v8 + 8))(v35, v78);
    LOBYTE(v33) = v103;
  }

  v36 = enum case for Font.Leading.tight(_:);
  v37 = type metadata accessor for Font.Leading();
  v38 = v82;
  (*(*(v37 - 8) + 104))(v82, v36, v37);
  sub_10001B350(v38, 0, 1, v37);
  v39 = v83;
  sub_1000955E0(v38, v83, &qword_100CACFF0);

  sub_1001C987C(v30, v32, v33 & 1, v39);
  LOBYTE(v37) = v27;
  v41 = v80;
  v40 = v81;
  v83 = Text.font(_:)();
  v77 = v43;
  v78 = v42;
  v45 = v44;

  sub_10010CD64(v41, v40, v37 & 1);

  sub_1000180EC(v38, &qword_100CACFF0);
  static Color.black.getter();
  sub_100156608();
  Color.opacity(_:)();

  sub_100156634();
  sub_10015667C();
  sub_100156658();
  v46 = v83;
  v47 = v78;
  v48 = Text.shadow(color:radius:x:y:)();
  v50 = v49;
  LOBYTE(v37) = v51;

  sub_10010CD64(v46, v47, v45 & 1);

  *v102 = static HierarchicalShapeStyle.secondary.getter();
  v52 = Text.foregroundStyle<A>(_:)();
  v54 = v53;
  LOBYTE(v39) = v55;
  v57 = v56;
  sub_10010CD64(v48, v50, v37 & 1);

  v58 = *(v86 + 36);
  v59 = enum case for BlendMode.plusLighter(_:);
  v60 = type metadata accessor for BlendMode();
  v61 = v94;
  (*(*(v60 - 8) + 104))(v94 + v58, v59, v60);
  *v61 = v52;
  *(v61 + 8) = v54;
  *(v61 + 16) = v39 & 1;
  *(v61 + 24) = v57;
  if (v84)
  {
    goto LABEL_21;
  }

  v62 = v85[13];
  v63 = v85[12] & 0xFFFFFFFFFFFFLL;
  if ((v62 & 0x2000000000000000) != 0)
  {
    v63 = HIBYTE(v62) & 0xF;
  }

  if (!v63)
  {
    goto LABEL_21;
  }

  v64 = v85[15];
  v65 = v85[14] & 0xFFFFFFFFFFFFLL;
  if ((v64 & 0x2000000000000000) != 0)
  {
    v65 = HIBYTE(v64) & 0xF;
  }

  if (v65)
  {
    sub_100715C64(v100);
    memcpy(v101, v100, 0x26BuLL);
    LocationSearchEntityFromStringResolver.init()();
    memcpy(v102, v101, sizeof(v102));
  }

  else
  {
LABEL_21:
    sub_100717C4C(v102);
  }

  memcpy(v97, v104, sizeof(v97));
  v66 = v94;
  v67 = v87;
  sub_1000955E0(v94, v87, &qword_100CA4000);
  memcpy(v96, v102, sizeof(v96));
  v69 = v91;
  v68 = v92;
  v70 = v95;
  *v92 = v91;
  v68[1] = v70;
  v72 = v89;
  v71 = v90;
  v68[2] = v90;
  v68[3] = v72;
  *(v68 + 32) = v88;
  memcpy(v98, v97, 0x26BuLL);
  memcpy(v68 + 5, v97, 0x26BuLL);
  v73 = sub_10022C350(&qword_100CD51B8);
  sub_1000955E0(v67, v68 + *(v73 + 64), &qword_100CA4000);
  v74 = *(v73 + 80);
  memcpy(v99, v96, 0x26BuLL);
  memcpy(v68 + v74, v96, 0x26BuLL);
  sub_100717C80(v69, v70, v71);
  sub_1000955E0(v98, v101, &qword_100CD51C0);
  sub_1000955E0(v99, v101, &qword_100CD51C0);
  sub_1000180EC(v66, &qword_100CA4000);
  memcpy(v100, v96, 0x26BuLL);
  sub_1000180EC(v100, &qword_100CD51C0);
  sub_1000180EC(v67, &qword_100CA4000);
  memcpy(v101, v97, 0x26BuLL);
  sub_1000180EC(v101, &qword_100CD51C0);
  return sub_100717CBC(v69, v95, v71);
}

double sub_1007156D0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for Font.Context();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for LocationHeaderViewLargeText() + 32));
  v8 = v7[11];
  if (v8)
  {
    v9 = v7[9];
    v10 = v7[10];
    *&v81 = v7[8];
    *(&v81 + 1) = v9;
    sub_10002D5A4();
    v70 = v4;

    v11 = Text.init<A>(_:)();
    v13 = v12;
    v15 = v14;
    v69 = v3;
    sub_10071392C();
    v74 = Text.font(_:)();
    v73 = v16;
    v71 = v17;
    v72 = v18;

    sub_10010CD64(v11, v13, v15 & 1);

    *&v81 = v10;
    *(&v81 + 1) = v8;
    v19 = Text.init<A>(_:)();
    v21 = v20;
    LOBYTE(v11) = v22;
    sub_100713C18();
    v23 = Text.font(_:)();
    v25 = v24;
    v27 = v26;
    v68[1] = v28;

    sub_10010CD64(v19, v21, v11 & 1);

    sub_10071392C();
    sub_10071374C(v6);
    Font.capHeight(in:)();

    v29 = *(v70 + 8);
    v30 = v69;
    v29(v6, v69);
    sub_100713C18();
    sub_10071374C(v6);
    Font.capHeight(in:)();

    v29(v6, v30);
    v31 = Text.baselineOffset(_:)();
    v33 = v32;
    LOBYTE(v11) = v34;
    sub_10010CD64(v23, v25, v27 & 1);

    static Color.black.getter();
    sub_100156608();
    Color.opacity(_:)();

    sub_100156634();
    sub_10015667C();
    sub_100156658();
    v35 = Text.shadow(color:radius:x:y:)();
    v37 = v36;
    v39 = v38;

    sub_10010CD64(v31, v33, v11 & 1);

    LOBYTE(v33) = v71;
    v40 = v74;
    v41 = v73;
    v70 = static Text.+ infix(_:_:)();
    v69 = v42;
    LOBYTE(v11) = v43;
    v45 = v44;
    sub_10010CD64(v35, v37, v39 & 1);

    sub_10010CD64(v40, v41, v33 & 1);

    v76 = v70;
    v77 = v69;
    v78 = v11 & 1;
    v79 = v45;
    v80 = 0;
  }

  else
  {
    v46 = v7[9];
    *&v81 = v7[8];
    *(&v81 + 1) = v46;
    sub_10002D5A4();

    v47 = Text.init<A>(_:)();
    v49 = v48;
    v51 = v50;
    sub_10071392C();
    v52 = Text.font(_:)();
    v54 = v53;
    v56 = v55;

    sub_10010CD64(v47, v49, v51 & 1);

    static Color.black.getter();
    sub_100156608();
    Color.opacity(_:)();

    sub_100156634();
    sub_10015667C();
    sub_100156658();
    v57 = Text.shadow(color:radius:x:y:)();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    sub_10010CD64(v52, v54, v56 & 1);

    v76 = v57;
    v77 = v59;
    v78 = v61 & 1;
    v79 = v63;
    v80 = 1;
  }

  _ConditionalContent<>.init(storage:)();
  result = *&v81;
  v65 = v82;
  v66 = v83;
  v67 = v75;
  *v75 = v81;
  v67[1] = v65;
  *(v67 + 32) = v66;
  return result;
}

void *sub_100715C64@<X0>(void *a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v70 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Font.TextStyle();
  v71 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  v16 = *(type metadata accessor for LocationHeaderViewLargeText() + 32);
  v72 = v1;
  v17 = (v1 + v16);
  if (*(v1 + v16 + 128) == 1)
  {
    v18 = objc_opt_self();
    v19 = [v18 mainBundle];
    v79._object = 0x8000000100ADBE90;
    v20._countAndFlagsBits = 0x98ABE9809CE6;
    v79._countAndFlagsBits = 0xD000000000000051;
    v20._object = 0xA600000000000000;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v79);

    v23 = [v18 mainBundle];
    v80._object = 0x8000000100ADBEF0;
    v24._countAndFlagsBits = 0x8EBDE4809CE6;
    v24._object = 0xA600000000000000;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v80._countAndFlagsBits = 0xD000000000000050;
    v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v80);

    v27 = static VerticalAlignment.center.getter();
    v76[0] = 0;
    sub_100716C74(v22._countAndFlagsBits, v22._object, v72, v26._countAndFlagsBits, v26._object, v78);
    memcpy(v74, v78, sizeof(v74));
    memcpy(v75, v78, sizeof(v75));
    sub_1000955E0(v74, v77, &qword_100CD51E8);
    sub_1000180EC(v75, &qword_100CD51E8);

    memcpy(&v73[7], v74, 0x250uLL);
    v77[0] = v27;
    v77[1] = 0x4020000000000000;
    LOBYTE(v77[2]) = v76[0];
    memcpy(&v77[2] + 1, v73, 0x257uLL);
    LOWORD(v77[77]) = 256;
    sub_100717DBC(v77);
    memcpy(v76, v77, sizeof(v76));
    sub_10022C350(&qword_100CD51C8);
    sub_100717D04();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v61 = v10;
    v62 = v9;
    v67 = v5;
    v68 = v8;
    v69 = a1;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28._countAndFlagsBits = 14920;
    v28._object = 0xE200000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v28);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v17[6]);
    v29._countAndFlagsBits = 978067488;
    v29._object = 0xE400000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v17[7]);
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
    LocalizedStringKey.init(stringInterpolation:)();
    v31 = Text.init(_:tableName:bundle:comment:)();
    v33 = v32;
    v35 = v34;
    static Color.black.getter();
    sub_100156608();
    Color.opacity(_:)();

    sub_100156634();
    sub_10015667C();
    sub_100156658();
    v36 = Text.shadow(color:radius:x:y:)();
    v64 = v37;
    v65 = v36;
    v63 = v38;
    v66 = v39;

    sub_10010CD64(v31, v33, v35 & 1);

    v40 = v71;
    v41 = *(v71 + 104);
    v41(v14, enum case for Font.TextStyle.title3(_:), v12);
    static Font.Weight.medium.getter();
    v42 = static Font.system(_:weight:)();
    v43 = *(v40 + 8);
    v43(v14, v12);
    v41(v14, enum case for Font.TextStyle.body(_:), v12);
    static Font.Weight.medium.getter();
    v44 = static Font.system(_:weight:)();
    v43(v14, v12);
    v45 = *v72;
    if (*(v72 + 8) == 1)
    {
      v75[0] = v45 & 1;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v46 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v47 = v70;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v45, 0);
      (*(v61 + 8))(v47, v62);
      LOBYTE(v45) = v75[0];
    }

    v48 = enum case for Font.Leading.tight(_:);
    v49 = type metadata accessor for Font.Leading();
    v50 = v68;
    (*(*(v49 - 8) + 104))(v68, v48, v49);
    sub_10001B350(v50, 0, 1, v49);
    v51 = v67;
    sub_1000955E0(v50, v67, &qword_100CACFF0);

    sub_1001C987C(v42, v44, v45 & 1, v51);
    v52 = v63;
    v53 = v64;
    v54 = v65;
    v55 = Text.font(_:)();
    v70 = v56;
    v71 = v55;
    v58 = v57;
    v72 = v59;

    sub_10010CD64(v54, v53, v52 & 1);

    sub_1000180EC(v50, &qword_100CACFF0);
    v77[0] = v71;
    v77[1] = v70;
    LOBYTE(v77[2]) = v58 & 1;
    v77[3] = v72;
    sub_100717CF8(v77);
    memcpy(v76, v77, sizeof(v76));
    sub_10022C350(&qword_100CD51C8);
    sub_100717D04();
    _ConditionalContent<>.init(storage:)();
    a1 = v69;
  }

  return memcpy(a1, v78, 0x26BuLL);
}

uint64_t sub_1007164B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = a3;
  v4 = type metadata accessor for EnvironmentValues();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserInterfaceSizeClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v41 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA64E8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  v47 = static Edge.Set.top.getter();
  v45 = type metadata accessor for LocationHeaderViewLargeText();
  v46 = a2;
  sub_10009D114();
  (*(v7 + 104))(v18, enum case for UserInterfaceSizeClass.regular(_:), v6);
  sub_10001B350(v18, 0, 1, v6);
  v22 = *(v10 + 56);
  sub_1000955E0(v21, v12, &qword_100CA6028);
  sub_1000955E0(v18, &v12[v22], &qword_100CA6028);
  if (sub_100024D10(v12, 1, v6) == 1)
  {
    sub_1000180EC(v18, &qword_100CA6028);
    sub_1000180EC(v21, &qword_100CA6028);
    if (sub_100024D10(&v12[v22], 1, v6) == 1)
    {
      sub_1000180EC(v12, &qword_100CA6028);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1000955E0(v12, v15, &qword_100CA6028);
    if (sub_100024D10(&v12[v22], 1, v6) != 1)
    {
      v27 = v41;
      (*(v7 + 32))(v41, &v12[v22], v6);
      sub_100717A30(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v7 + 8);
      v29(v27, v6);
      sub_1000180EC(v18, &qword_100CA6028);
      sub_1000180EC(v21, &qword_100CA6028);
      v29(v15, v6);
      sub_1000180EC(v12, &qword_100CA6028);
      if (v28)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    sub_1000180EC(v18, &qword_100CA6028);
    sub_1000180EC(v21, &qword_100CA6028);
    (*(v7 + 8))(v15, v6);
  }

  sub_1000180EC(v12, &qword_100CA64E8);
LABEL_7:
  v23 = v46 + *(v45 + 24);
  v24 = *v23;
  if (*(v23 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v26 = v42;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v43 + 8))(v26, v44);
  }

LABEL_10:
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v49;
  sub_1000955E0(v48, v49, &qword_100CD5140);
  result = sub_10022C350(&qword_100CD5158);
  v40 = v38 + *(result + 36);
  *v40 = v47;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  *(v40 + 40) = 0;
  return result;
}

uint64_t sub_100716A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static Edge.Set.top.getter();
  v11 = a2 + *(type metadata accessor for LocationHeaderViewLargeText() + 24);
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v12, 0);
    (*(v7 + 8))(v9, v6);
  }

  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1000955E0(a1, a3, &qword_100CD5140);
  result = sub_10022C350(&qword_100CD5158);
  v23 = a3 + *(result + 36);
  *v23 = v10;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_100716C74@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a4;
  v59 = a5;
  v62 = a6;
  v9 = type metadata accessor for Font.Leading();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = static HorizontalAlignment.center.getter();
  LOBYTE(v83[0]) = 0;
  v39 = a3;
  sub_10071739C(a1, a2, v103);
  memcpy(v92, v103, sizeof(v92));
  memcpy(v93, v103, 0xD0uLL);
  sub_1000955E0(v92, v102, &qword_100CD51F0);
  sub_1000180EC(v93, &qword_100CD51F0);
  memcpy(&v85[7], v92, 0xD0uLL);
  v60 = LOBYTE(v83[0]);
  v51 = (a3 + *(type metadata accessor for LocationHeaderViewLargeText() + 32));
  v13 = v51[13];
  v103[0] = v51[12];
  v103[1] = v13;
  v50 = sub_10002D5A4();

  v14 = Text.init<A>(_:)();
  v53 = v15;
  v17 = v16;
  sub_100717DC4();
  v46 = UIFontTextStyleBody;
  static UIFont.scaledSystemFont(ofSize:style:maxSize:weight:traits:)();
  Font.init(_:)();
  v45 = enum case for Font.Leading.tight(_:);
  v18 = *(v10 + 104);
  v43 = v10 + 104;
  v44 = v18;
  v40 = v9;
  v18(v12);
  Font.leading(_:)();

  v19 = *(v10 + 8);
  v41 = v10 + 8;
  v42 = v19;
  v19(v12, v9);
  v20 = v53;
  v21 = Text.font(_:)();
  v55 = v22;
  v56 = v21;
  v54 = v23;
  v57 = v24;

  sub_10010CD64(v14, v20, v17 & 1);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v47 = v86;
  v49 = v88;
  v52 = v91;
  v53 = v90;
  v99 = 1;
  v97 = v87;
  v95 = v89;
  v48 = static HorizontalAlignment.center.getter();
  LOBYTE(v83[0]) = 0;
  sub_10071739C(v58, v59, v103);
  memcpy(v100, v103, sizeof(v100));
  memcpy(v101, v103, sizeof(v101));
  sub_1000955E0(v100, v102, &qword_100CD51F0);
  sub_1000180EC(v101, &qword_100CD51F0);
  memcpy(&v84[7], v100, 0xD0uLL);
  LODWORD(v59) = LOBYTE(v83[0]);
  v25 = v51[15];
  v103[0] = v51[14];
  v103[1] = v25;

  v26 = Text.init<A>(_:)();
  v28 = v27;
  v30 = v29;
  static UIFont.scaledSystemFont(ofSize:style:maxSize:weight:traits:)();
  Font.init(_:)();
  v31 = v40;
  v44(v12, v45, v40);
  Font.leading(_:)();

  v42(v12, v31);
  v32 = Text.font(_:)();
  v34 = v33;
  LOBYTE(v31) = v35;
  v37 = v36;

  sub_10010CD64(v26, v28, v30 & 1);

  v83[0] = v61;
  v83[1] = 0;
  LOBYTE(v83[2]) = v60;
  memcpy(&v83[2] + 1, v85, 0xD7uLL);
  v79 = v56;
  v80 = v55;
  v81 = v54 & 1;
  v82 = v57;
  v83[29] = v83;
  v83[30] = &v79;
  v68 = 0;
  v69 = v99;
  *v70 = *v98;
  *&v70[3] = *&v98[3];
  v71 = v47;
  v72 = v97;
  *v73 = *v96;
  *&v73[3] = *&v96[3];
  v74 = v49;
  v75 = v95;
  *&v76[3] = *&v94[3];
  *v76 = *v94;
  v77 = v53;
  v78 = v52;
  v83[31] = &v68;
  v67[0] = v48;
  v67[1] = 0;
  LOBYTE(v67[2]) = v59;
  memcpy(&v67[2] + 1, v84, 0xD7uLL);
  v63 = v32;
  v64 = v34;
  v65 = v31 & 1;
  v66 = v37;
  v83[32] = v67;
  v83[33] = &v63;
  sub_1003E9738();
  sub_10010CD64(v63, v64, v65);

  memcpy(v102, v67, sizeof(v102));
  sub_1000180EC(v102, &qword_100CB5DF8);
  sub_10010CD64(v79, v80, v81);

  memcpy(v103, v83, 0xE8uLL);
  return sub_1000180EC(v103, &qword_100CB5DF8);
}

unint64_t sub_1007172C4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = String.index(_:offsetBy:limitedBy:)();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = String.subscript.getter();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10071739C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  static Alignment.center.getter();
  sub_100004984();
  v89 = 1;
  v87 = v74;
  v85 = v76;

  v64 = sub_1002B0AC0(1);
  v65 = v11;
  v66 = v12;
  v67 = v13;
  sub_10033CD14();
  v34 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  sub_100717DC4();
  static UIFont.scaledSystemFont(ofSize:style:maxSize:weight:traits:)();
  Font.init(_:)();
  v37 = enum case for Font.Leading.tight(_:);
  v36 = *(v6 + 104);
  v36(v10);
  Font.leading(_:)();

  v35 = *(v6 + 8);
  v35(v10, v4);
  v18 = Text.font(_:)();
  v40 = v19;
  v41 = v18;
  v39 = v20;
  v42 = v21;

  sub_10010CD64(v34, v15, v17 & 1);

  sub_1007172C4(1uLL, a1, a2);
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  static UIFont.scaledSystemFont(ofSize:style:maxSize:weight:traits:)();
  Font.init(_:)();
  (v36)(v10, v37, v4);
  Font.leading(_:)();

  v35(v10, v4);
  v27 = Text.font(_:)();
  v29 = v28;
  LOBYTE(v10) = v30;
  v32 = v31;

  sub_10010CD64(v22, v24, v26 & 1);

  static Alignment.center.getter();
  sub_100004984();
  v95 = 1;
  v93 = v80;
  v91 = v82;
  v64 = 0;
  LOBYTE(v65) = 1;
  *(&v65 + 1) = *v88;
  HIDWORD(v65) = *&v88[3];
  v66 = v73[7];
  LOBYTE(v67) = v74;
  *(&v67 + 1) = *v86;
  HIDWORD(v67) = *&v86[3];
  v68 = v75;
  v69 = v76;
  *&v70[3] = *&v84[3];
  *v70 = *v84;
  v71 = v77;
  v72 = v78;
  v60 = v41;
  v61 = v40;
  v62 = v39 & 1;
  v63 = v42;
  v73[0] = &v64;
  v73[1] = &v60;
  v57 = v32;
  v58 = 0;
  v59 = 0;
  v54 = v27;
  v55 = v29;
  v56 = v10 & 1;
  v73[2] = &v58;
  v73[3] = &v54;
  v44 = 0;
  v45 = 1;
  *v46 = *v94;
  *&v46[3] = *&v94[3];
  v47 = v79;
  v48 = v80;
  *v49 = *v92;
  *&v49[3] = *&v92[3];
  v50 = v81;
  v51 = v82;
  *&v52[3] = *&v90[3];
  *v52 = *v90;
  v53 = v83;
  v73[4] = &v44;
  sub_1003E98B4(v73, a3);
  sub_10010CD64(v54, v55, v56);

  sub_10010CD64(v60, v61, v62);
}

unint64_t sub_100717878()
{
  result = qword_100CD5160;
  if (!qword_100CD5160)
  {
    sub_10022E824(&qword_100CD5140);
    sub_10022E824(&qword_100CD5130);
    sub_100006F64(&qword_100CD5150, &qword_100CD5130);
    swift_getOpaqueTypeConformance2();
    sub_100717A30(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5160);
  }

  return result;
}

unint64_t sub_1007179A4()
{
  result = qword_100CD5168;
  if (!qword_100CD5168)
  {
    sub_10022E824(&qword_100CD5158);
    sub_100717878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5168);
  }

  return result;
}

uint64_t sub_100717A30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100717A78()
{
  result = qword_100CD5180;
  if (!qword_100CD5180)
  {
    sub_10022E824(&qword_100CD5178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5180);
  }

  return result;
}

uint64_t sub_100717AFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_10010CD54(a1, a2, a3 & 1);
  }

  else
  {
    v7 = a5 & 1;

    return sub_100717B60(a1, a2, a3, a4, v7);
  }
}

uint64_t sub_100717B60(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_10010CD54(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100717BA4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_10010CD64(a1, a2, a3 & 1);
  }

  else
  {
    v7 = a5 & 1;

    return sub_100717C08(a1, a2, a3, a4, v7);
  }
}

uint64_t sub_100717C08(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_10010CD64(result, a2, a3 & 1);
  }

  return result;
}

void sub_100717C4C(uint64_t a1)
{
  bzero(a1, 0x268uLL);
  *(a1 + 618) = -1;
  *(a1 + 616) = 0;
}

uint64_t sub_100717C80(uint64_t a1, uint64_t a2, char a3)
{
  sub_10010CD54(a1, a2, a3 & 1);
}

uint64_t sub_100717CBC(uint64_t a1, uint64_t a2, char a3)
{
  sub_10010CD64(a1, a2, a3 & 1);
}

unint64_t sub_100717D04()
{
  result = qword_100CD51D0;
  if (!qword_100CD51D0)
  {
    sub_10022E824(&qword_100CD51C8);
    sub_100006F64(&qword_100CD51D8, &qword_100CD51E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD51D0);
  }

  return result;
}

unint64_t sub_100717DC4()
{
  result = qword_100CB8B98;
  if (!qword_100CB8B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB8B98);
  }

  return result;
}

id sub_100717E08()
{
  sub_100035B30(v0, v4);
  v1 = *(v0 + 40);
  v2 = objc_allocWithZone(type metadata accessor for NotificationsOptInNotificationPermissionView.Coordinator());
  return sub_1007184B8(v4, v1);
}

id sub_100717E54()
{
  v0 = [objc_opt_self() systemFontOfSize:60.0];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithFont:v0 scale:-1];

  v3 = [objc_opt_self() systemBlueColor];
  v4 = [v1 configurationWithHierarchicalColor:v3];

  sub_100169C04();
  v58 = v2;
  v5 = sub_10038F9FC(0x6461622E6C6C6562, 0xEF6C6C69662E6567, v2);
  v56 = v4;
  v57 = v5;
  if (v5)
  {
    v6 = [v5 imageByApplyingSymbolConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v14 = sub_10001F0D4(0xD000000000000013, 0x8000000100ADBFA0, v9, v10, v11, v12, v13, 0xD000000000000036);
  v16 = v15;

  v17 = [v7 mainBundle];
  v23 = sub_10001F0D4(0x10000000000000A9, 0x8000000100ADC000, v18, v19, v20, v21, v22, 0xD00000000000003DLL);
  v25 = v24;

  v26 = objc_allocWithZone(OBWelcomeController);
  v55 = v6;
  v27 = sub_10038FDF4(v14, v16, v23, v25, v6);
  v28 = [objc_opt_self() boldButton];
  v29 = [v7 mainBundle];
  v35 = sub_10001CBB0(0x65756E69746E6F43, 0xE800000000000000, v30, v31, v32, v33, v34, 0xD00000000000002ALL);
  v37 = v36;

  sub_10038FE94(v35, v37, 0, v28);
  sub_10022C350(&qword_100CD5238);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v28 addTarget:v59 action:"continueButtonTapped" forControlEvents:{64, 0x8000000100ADC0F0}];

  v38 = [v27 buttonTray];
  [v38 addButton:v28];

  v39 = [objc_opt_self() linkButton];
  v40 = [v7 mainBundle];
  v46 = sub_10001CBB0(0x776F4E20746F4ELL, 0xE700000000000000, v41, v42, v43, v44, v45, 0xD000000000000028);
  v48 = v47;

  sub_10038FE94(v46, v48, 0, v39);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v39 addTarget:v59 action:"notNowButtonTapped" forControlEvents:{64, 0x8000000100AC3D50}];

  v49 = [v27 buttonTray];
  [v49 addButton:v39];

  v50 = objc_opt_self();
  v51 = String._bridgeToObjectiveC()();
  v52 = [v50 linkWithBundleIdentifier:v51];

  v53 = [v27 buttonTray];
  [v53 setPrivacyLinkController:v52];

  [v27 setModalPresentationStyle:2];
  return v27;
}

id sub_1007183A0@<X0>(void *a1@<X8>)
{
  result = sub_100717E08();
  *a1 = result;
  return result;
}

uint64_t sub_1007183C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10071877C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10071842C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10071877C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100718490()
{
  sub_10071877C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_1007184B8(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  sub_100035B30(a1, &v2[OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor]);
  v2[OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_notificationKind] = a2 & 1;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_100006F14(a1);
  return v6;
}

uint64_t sub_100718540()
{
  v1 = *(v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor + 24);
  v2 = *(v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor + 32);
  sub_1000161C0((v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor), v1);
  return (*(v2 + 8))(*(v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_notificationKind), v1, v2);
}

uint64_t sub_1007185F4()
{
  v1 = *(v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor + 24);
  v2 = *(v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor + 32);
  sub_1000161C0((v0 + OBJC_IVAR____TtCV7Weather44NotificationsOptInNotificationPermissionView11Coordinator_interactor), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1007186DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10071871C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_10071877C()
{
  result = qword_100CD5230;
  if (!qword_100CD5230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5230);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationViewerAlertState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3F)
  {
    if (a2 + 193 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 193) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 194;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v5 >= 0x3E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for LocationViewerAlertState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3E)
  {
    v6 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
          *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100718980(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000100ADC120 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100ADC140 == a2)
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

unint64_t sub_100718A58(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_100718A8C(void *a1, int a2)
{
  v26 = a2;
  sub_10022C350(&qword_100CD5270);
  sub_1000037C4();
  v24 = v4;
  v25 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v23 = &v23 - v6;
  v7 = sub_10022C350(&qword_100CD5278);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = sub_10022C350(&qword_100CD5280);
  sub_1000037C4();
  v15 = v14;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v23 - v17;
  sub_1000161C0(a1, a1[3]);
  sub_1007194BC();
  v19 = v26;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v19 < 0)
  {
    v30 = 1;
    sub_100719510();
    v20 = v23;
    sub_100008D80();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v19 & 1;
    sub_1002DD42C();
    v21 = v25;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v24 + 8))(v20, v21);
  }

  else
  {
    v28 = 0;
    sub_100719564();
    sub_100008D80();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v19;
    sub_1002DD2DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v9 + 8))(v12, v7);
  }

  return (*(v15 + 8))(v18, v13);
}

uint64_t sub_100718D74(void *a1)
{
  sub_10022C350(&qword_100CD5240);
  sub_1000037C4();
  v44 = v3;
  v45 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = v40 - v5;
  v7 = sub_10022C350(&qword_100CD5248);
  sub_1000037C4();
  v42 = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = v40 - v10;
  v12 = sub_10022C350(&qword_100CD5250);
  sub_1000037C4();
  v43 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = v40 - v15;
  v17 = sub_1000161C0(a1, a1[3]);
  sub_1007194BC();
  v18 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_8;
  }

  v40[0] = v7;
  v40[1] = v11;
  v41 = v6;
  v20 = v44;
  v19 = v45;
  v46 = a1;
  v21 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v21, 0);
  if (v24 == v25 >> 1)
  {
LABEL_7:
    v17 = v16;
    v31 = type metadata accessor for DecodingError();
    swift_allocError();
    v33 = v32;
    sub_10022C350(&qword_100CA7610);
    *v33 = &type metadata for LocationViewerAlertState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v31 - 8) + 104))(v33, enum case for DecodingError.typeMismatch(_:), v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v17, v12);
    a1 = v46;
LABEL_8:
    sub_100006F14(a1);
    return v17;
  }

  if (v24 < (v25 >> 1))
  {
    v47 = *(v23 + v24);
    sub_100618E7C(v24 + 1);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 == v29 >> 1)
    {
      if (v47)
      {
        v51 = 1;
        sub_100719510();
        v30 = v41;
        sub_100008D80();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_1002DE304();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        (*(v20 + 8))(v30, v19);
        v34 = sub_10001CBD4();
        v35(v34);
        v17 = v50 | 0xFFFFFF80;
      }

      else
      {
        v49 = 0;
        sub_100719564();
        sub_100008D80();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_1002DE2B0();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v36 = sub_100006628();
        v37(v36);
        v38 = sub_10001CBD4();
        v39(v38);
        v17 = v48;
      }

      sub_100006F14(v46);
      return v17;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007192D0(uint64_t a1)
{
  v2 = sub_100719510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10071930C(uint64_t a1)
{
  v2 = sub_100719510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100719350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100718980(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100719378(uint64_t a1)
{
  v2 = sub_1007194BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007193B4(uint64_t a1)
{
  v2 = sub_1007194BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007193F0(uint64_t a1)
{
  v2 = sub_100719564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10071942C(uint64_t a1)
{
  v2 = sub_100719564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100719474@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100718D74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1007194BC()
{
  result = qword_100CD5258;
  if (!qword_100CD5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5258);
  }

  return result;
}

unint64_t sub_100719510()
{
  result = qword_100CD5260;
  if (!qword_100CD5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5260);
  }

  return result;
}

unint64_t sub_100719564()
{
  result = qword_100CD5268;
  if (!qword_100CD5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5268);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewerAlertState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1007196A4(_BYTE *result, int a2, int a3)
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

unint64_t sub_100719754()
{
  result = qword_100CD5288;
  if (!qword_100CD5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5288);
  }

  return result;
}

unint64_t sub_1007197AC()
{
  result = qword_100CD5290;
  if (!qword_100CD5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5290);
  }

  return result;
}

unint64_t sub_100719804()
{
  result = qword_100CD5298;
  if (!qword_100CD5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5298);
  }

  return result;
}

unint64_t sub_10071985C()
{
  result = qword_100CD52A0;
  if (!qword_100CD52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD52A0);
  }

  return result;
}

unint64_t sub_1007198B4()
{
  result = qword_100CD52A8;
  if (!qword_100CD52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD52A8);
  }

  return result;
}

unint64_t sub_10071990C()
{
  result = qword_100CD52B0;
  if (!qword_100CD52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD52B0);
  }

  return result;
}

unint64_t sub_100719964()
{
  result = qword_100CD52B8;
  if (!qword_100CD52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD52B8);
  }

  return result;
}

unint64_t sub_1007199BC()
{
  result = qword_100CD52C0;
  if (!qword_100CD52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD52C0);
  }

  return result;
}

unint64_t sub_100719A14()
{
  result = qword_100CD52C8;
  if (!qword_100CD52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD52C8);
  }

  return result;
}

uint64_t sub_100719A6C(uint64_t a1, char *a2)
{
  v489[0] = a2;
  v3 = sub_10022C350(&qword_100CA65C0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003990(&v439 - v5);
  v6 = sub_10022C350(&qword_100CA65D0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003990(&v439 - v8);
  v9 = sub_10022C350(&qword_100CA65C8);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  v12 = sub_100003918(&v439 - v11);
  v488 = type metadata accessor for LocationPreviewModalViewState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  v496 = v14;
  __chkstk_darwin(v15);
  sub_10000E70C();
  v17 = sub_100003918(v16);
  v487[4] = type metadata accessor for LocationPreviewViewState(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  v497 = v19;
  __chkstk_darwin(v20);
  sub_10000E70C();
  v22 = sub_100003918(v21);
  v501 = type metadata accessor for ViewState(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  sub_100003918(v26);
  v502 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v495 = v30;
  sub_1000038CC();
  v500 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v494 = v34;
  sub_1000038CC();
  v499 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  v493 = v38;
  sub_1000038CC();
  v498 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  v492 = v42;
  sub_1000038CC();
  v504 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  v491 = v46;
  sub_1000038CC();
  v503 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_10000E70C();
  v490 = v50;
  v51 = sub_10022C350(&qword_100CA65E8);
  v52 = sub_100003810(v51);
  __chkstk_darwin(v52);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_10000E70C();
  sub_100003990(v58);
  v59 = sub_10022C350(&qword_100CA6610);
  v60 = sub_100003810(v59);
  __chkstk_darwin(v60);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_10000E70C();
  v489[9] = v66;
  v67 = sub_10022C350(&qword_100CA6618);
  v68 = sub_100003810(v67);
  __chkstk_darwin(v68);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_10000E70C();
  v489[8] = v74;
  v75 = sub_10022C350(&qword_100CA6620);
  v76 = sub_100003810(v75);
  __chkstk_darwin(v76);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_10000E70C();
  sub_100003990(v82);
  v83 = sub_10022C350(&qword_100CA6628);
  v84 = sub_100003810(v83);
  __chkstk_darwin(v84);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_10000E70C();
  sub_100003990(v90);
  v91 = sub_10022C350(&qword_100CA6630);
  v92 = sub_100003810(v91);
  __chkstk_darwin(v92);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_10000E70C();
  sub_100003990(v98);
  v99 = sub_10022C350(&qword_100CA6638);
  v100 = sub_100003810(v99);
  __chkstk_darwin(v100);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
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
  v107 = sub_10022C350(&qword_100CA6640);
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
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_10000E70C();
  sub_100003918(v114);
  v115 = type metadata accessor for MoonDetailViewState();
  v116 = sub_100003810(v115);
  __chkstk_darwin(v116);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  v120 = (&v439 - v119);
  v121 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v122);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  v125 = __chkstk_darwin(v124);
  v127 = &v439 - v126;
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  v130 = __chkstk_darwin(v129);
  v132 = &v439 - v131;
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  v134 = __chkstk_darwin(v133);
  v136 = &v439 - v135;
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  v139 = &v439 - v138;
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  v141 = __chkstk_darwin(v140);
  v143 = &v439 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v141);
  v145 = &v439 - v144;
  sub_10001CBE0();
  v505 = v146;
  sub_1000BCA28();
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1000D394C();
    sub_1000BCA28();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_100028A04();
      sub_1000D394C();
      v147 = sub_100003BCC(&v507);
      sub_10001B350(v147, v148, v149, v503);
      v150 = sub_100003BCC(&v508);
      sub_10001B350(v150, v151, v152, v504);
      v153 = sub_100003BCC(&v509);
      sub_10001B350(v153, v154, v155, v498);
      v156 = sub_100003BCC(&v510);
      sub_10001B350(v156, v157, v158, v499);
      v159 = sub_100003BCC(&v511);
      sub_10001B350(v159, v160, v161, v500);
      sub_100003934();
      v162 = v502;
      sub_10001B350(v163, v164, v165, v502);
      sub_100003934();
      sub_10001B350(v166, v167, v168, v501);
      v169 = sub_1000D3F6C();
      sub_10071BF60(v169, v170);
      sub_100016DF8();
      sub_1000E0098(v120, v171);
      sub_1000E0098(v145, type metadata accessor for ModalViewState.LocationDetailModal);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v172, v173, v174, v121);
      sub_10001CBE0();
      sub_1000BCA28();
      sub_100020FE8();
      sub_100051BBC();
      v175 = sub_10000C834();
      sub_1000038B4(v175, v176, v121);
      if (v177)
      {
        sub_1000180EC(v120, &qword_100CA65E8);
      }

      else
      {
        sub_100010980();
        sub_1000E0098(v136, v295);
        sub_10001F638();
        sub_1000D394C();
      }

      v296 = v479;
      v297 = v476;
      v298 = v474;
      sub_10001F638();
      sub_1000D394C();
      v299 = *(a1 + 16);
      LODWORD(v497) = *(a1 + 24);
      sub_100051BBC();
      v300 = sub_1000201BC();
      v301 = v503;
      sub_1000038B4(v300, v302, v503);
      v303 = v499;
      v304 = v500;
      v305 = v498;
      v505 = v299;
      if (v177)
      {
        sub_100049B64();
        sub_1000BCA28();
        v306 = sub_1000201BC();
        v308 = sub_100024D10(v306, v307, v301);

        v309 = v504;
        if (v308 != 1)
        {
          sub_1000180EC(v298, &qword_100CA6640);
        }
      }

      else
      {
        sub_100074ECC();
        sub_1000D394C();

        v309 = v504;
      }

      v310 = v475;
      sub_100051BBC();
      v311 = sub_1000201BC();
      sub_1000038B4(v311, v312, v309);
      if (v177)
      {
        sub_10002014C();
        sub_10000ED5C();
        sub_1000BCA28();
        v313 = sub_1000201BC();
        sub_1000038B4(v313, v314, v309);
        v315 = v480;
        v316 = v477;
        if (!v177)
        {
          sub_1000180EC(v310, &qword_100CA6638);
        }
      }

      else
      {
        sub_10002CA1C();
        sub_1000D394C();
        v315 = v480;
        v316 = v477;
      }

      sub_100051BBC();
      v317 = sub_1000182B8();
      sub_1000038B4(v317, v318, v305);
      if (v177)
      {
        sub_100020ABC();
        sub_1000BCA28();
        v319 = sub_1000182B8();
        sub_1000038B4(v319, v320, v305);
        v321 = v478;
        if (!v177)
        {
          sub_1000180EC(v297, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000CE34();
        sub_1000D394C();
        v321 = v478;
      }

      sub_100051BBC();
      v322 = sub_100007FC4();
      sub_1000038B4(v322, v323, v303);
      if (v177)
      {
        sub_1000249FC();
        sub_1000BCA28();
        v324 = sub_100007FC4();
        sub_1000038B4(v324, v325, v303);
        if (!v177)
        {
          sub_1000180EC(v316, &qword_100CA6628);
        }
      }

      else
      {
        sub_10003C784();
        sub_1000D394C();
      }

      sub_100051BBC();
      v326 = sub_1000175DC();
      sub_1000038B4(v326, v327, v304);
      if (v177)
      {
        sub_100017CDC();
        sub_1000BCA28();
        v328 = sub_1000175DC();
        sub_1000038B4(v328, v329, v304);
        if (!v177)
        {
          sub_1000180EC(v321, &qword_100CA6620);
        }
      }

      else
      {
        sub_10006990C();
        sub_1000D394C();
      }

      sub_100051BBC();
      v330 = sub_10000C834();
      sub_1000038B4(v330, v331, v162);
      if (v177)
      {
        sub_100013B48();
        sub_1000BCA28();
        v332 = sub_10000C834();
        sub_1000038B4(v332, v333, v162);
        if (!v177)
        {
          sub_1000180EC(v296, &qword_100CA6618);
        }
      }

      else
      {
        sub_100023094();
        sub_1000D394C();
      }

      sub_100051BBC();
      v334 = sub_1000131C4();
      v335 = v501;
      sub_1000038B4(v334, v336, v501);
      if (v177)
      {
        sub_10004E9B8();
        sub_1000BCA28();
        v337 = sub_1000131C4();
        sub_1000038B4(v337, v338, v335);
        if (!v177)
        {
          sub_1000180EC(v315, &qword_100CA6610);
        }
      }

      else
      {
        sub_100052084();
      }

      sub_10001F638();
      sub_1000B9A0C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v339 = sub_100037CF8();
      v341 = v490;
      v342 = v491;
      v343 = v492;
      v344 = v493;
      v345 = v494;
      v346 = v495;
      goto LABEL_115;
    }

    v120 = type metadata accessor for ModalViewState.LocationDetailModal;
    sub_1000E0098(v145, type metadata accessor for ModalViewState.LocationDetailModal);
    v179 = v143;
    v178 = type metadata accessor for ModalViewState.LocationDetailModal;
  }

  else
  {
    sub_100010980();
    v179 = v139;
  }

  sub_1000E0098(v179, v178);
  v180 = v502;
  sub_10001CBE0();
  v181 = a1;
  sub_1000BCA28();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v183 = v503;
  v184 = v504;
  if (EnumCaseMultiPayload)
  {
    sub_100010980();
    v186 = v132;
  }

  else
  {
    sub_1000305B8();
    v187 = v483;
    sub_1000D394C();
    sub_100030034();
    v188 = v481;
    sub_1000BCA28();
    sub_100020FE8();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_100028A04();
      v189 = v184;
      v190 = v452;
      sub_1000D394C();
      v191 = sub_100003BCC(&v494);
      sub_10001B350(v191, v192, v193, v183);
      v194 = sub_100003BCC(&v495);
      sub_10001B350(v194, v195, v196, v189);
      v197 = sub_100003BCC(&v496);
      sub_10001B350(v197, v198, v199, v498);
      v200 = sub_100003BCC(&v497);
      sub_10001B350(v200, v201, v202, v499);
      v203 = sub_100003BCC(&v500);
      sub_10001B350(v203, v204, v205, v500);
      v206 = sub_100003BCC(&v502);
      sub_10001B350(v206, v207, v208, v180);
      v209 = sub_100003BCC(&v503);
      sub_10001B350(v209, v210, v211, v501);
      type metadata accessor for PreviewLocation();
      v212 = v471;
      sub_100003934();
      sub_10001B350(v213, v214, v215, v216);
      v217 = v187;
      v218 = v472;
      sub_10071BF60(v489[0], v472);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v219, v220, v221, v120);
      type metadata accessor for SelectedSearchResult();
      v222 = v473;
      sub_100003934();
      sub_10001B350(v223, v224, v225, v226);
      sub_10043DB64(v212, v218, v222, v457);
      sub_1000180EC(v222, &qword_100CA65C0);
      sub_1000180EC(v218, &qword_100CA65D0);
      sub_1000180EC(v212, &qword_100CA65C8);
      sub_100016DF8();
      sub_1000E0098(v190, v227);
      sub_100014D64();
      sub_1000E0098(v217, v228);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v229, v230, v231, v121);
      sub_10001CBE0();
      v232 = v453;
      sub_1000BCA28();
      sub_100020FE8();
      sub_100051BBC();
      v233 = sub_10000C834();
      sub_1000038B4(v233, v234, v121);
      if (v177)
      {
        sub_1000180EC(v222, &qword_100CA65E8);
      }

      else
      {
        sub_100010980();
        sub_1000E0098(v232, v348);
        sub_10001F638();
        sub_100003940();
        sub_1000D394C();
      }

      v349 = v460;
      v350 = v456;
      v351 = v454;
      sub_10001F638();
      sub_1000D394C();
      v352 = *(v181 + 16);
      LODWORD(v497) = *(v181 + 24);
      sub_100051BBC();
      v353 = sub_1000175DC();
      sub_1000038B4(v353, v354, v183);
      v356 = v499;
      v355 = v500;
      v357 = v498;
      v358 = v504;
      v505 = v352;
      if (v177)
      {
        sub_100049B64();
        sub_1000BCA28();
        v359 = sub_1000175DC();
        v361 = sub_100024D10(v359, v360, v183);

        if (v361 != 1)
        {
          sub_1000180EC(v351, &qword_100CA6640);
        }
      }

      else
      {
        sub_100074ECC();
        sub_1000D394C();
      }

      v362 = v455;
      sub_100051BBC();
      v363 = sub_1000175DC();
      sub_1000038B4(v363, v364, v358);
      v365 = v355;
      if (v177)
      {
        sub_10002014C();
        sub_10000ED5C();
        sub_1000BCA28();
        v366 = sub_1000175DC();
        sub_1000038B4(v366, v367, v358);
        v368 = v461;
        v369 = v349;
        if (!v177)
        {
          sub_1000180EC(v362, &qword_100CA6638);
        }
      }

      else
      {
        sub_10002CA1C();
        sub_1000D394C();
        v368 = v461;
        v369 = v349;
      }

      sub_100051BBC();
      sub_1000038B4(v350, 1, v357);
      v370 = *(&v459 + 1);
      if (v177)
      {
        sub_100020ABC();
        sub_1000BCA28();
        sub_1000038B4(v350, 1, v357);
        if (!v177)
        {
          sub_1000180EC(v350, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000CE34();
        sub_1000D394C();
      }

      v371 = v459;
      sub_100051BBC();
      v372 = sub_1000182B8();
      sub_1000038B4(v372, v373, v356);
      if (v177)
      {
        sub_1000249FC();
        sub_1000BCA28();
        v374 = sub_1000182B8();
        sub_1000038B4(v374, v375, v356);
        v376 = v502;
        if (!v177)
        {
          sub_1000180EC(v371, &qword_100CA6628);
        }
      }

      else
      {
        sub_10003C784();
        sub_1000D394C();
        v376 = v502;
      }

      sub_100051BBC();
      v377 = sub_100016298();
      sub_1000038B4(v377, v378, v365);
      if (v177)
      {
        sub_100017CDC();
        sub_1000BCA28();
        v379 = sub_100016298();
        sub_1000038B4(v379, v380, v365);
        if (!v177)
        {
          sub_1000180EC(v370, &qword_100CA6620);
        }
      }

      else
      {
        sub_10006990C();
        sub_1000D394C();
      }

      sub_100051BBC();
      v381 = sub_10000C834();
      sub_1000038B4(v381, v382, v376);
      if (v177)
      {
        sub_100013B48();
        sub_1000BCA28();
        v383 = sub_10000C834();
        sub_1000038B4(v383, v384, v376);
        if (!v177)
        {
          sub_1000180EC(v369, &qword_100CA6618);
        }
      }

      else
      {
        sub_100023094();
        sub_1000D394C();
      }

      sub_100051BBC();
      v385 = sub_1000131C4();
      v386 = v501;
      sub_1000038B4(v385, v387, v501);
      if (v177)
      {
        sub_10004E9B8();
        sub_1000BCA28();
        v388 = sub_1000131C4();
        sub_1000038B4(v388, v389, v386);
        if (!v177)
        {
          sub_1000180EC(v368, &qword_100CA6610);
        }
      }

      else
      {
        sub_100052084();
      }

      sub_10001F638();
      sub_1000B9A0C();
      sub_10008686C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v339 = sub_100037CF8();
      v341 = v485;
      v342 = v486;
      v343 = v487[0];
      v344 = v487[1];
      v345 = v487[2];
      v390 = &v506;
      goto LABEL_114;
    }

    sub_100014D64();
    sub_1000E0098(v187, v235);
    sub_1000372A4();
    v186 = v188;
  }

  sub_1000E0098(v186, v185);
  sub_10001CBE0();
  sub_1000BCA28();
  v236 = swift_getEnumCaseMultiPayload();
  v237 = v496;
  v238 = v497;
  if (v236 != 4)
  {
    sub_100010980();
    v242 = v127;
LABEL_20:
    sub_1000E0098(v242, v241);
    goto LABEL_21;
  }

  v239 = type metadata accessor for ModalViewState.MapViewModal(0);
  sub_1000038B4(v127, 1, v239);
  v240 = v501;
  if (!v177)
  {
    sub_1000305B8();
    sub_1000D394C();
    sub_100030034();
    sub_1000BCA28();
    v243 = v488;
    v244 = swift_getEnumCaseMultiPayload();
    if (v244 == 5)
    {
      sub_100028A04();
      v245 = v183;
      v246 = v440;
      sub_1000D394C();
      v247 = sub_100003BCC(&v481);
      sub_10001B350(v247, v248, v249, v245);
      v250 = sub_100003BCC(v482);
      sub_10001B350(v250, v251, v252, v184);
      v253 = sub_100003BCC(&v483);
      sub_10001B350(v253, v254, v255, v498);
      v256 = sub_100003BCC(v484);
      sub_10001B350(v256, v257, v258, v499);
      v259 = sub_100003BCC(&v485);
      sub_10001B350(v259, v260, v261, v500);
      v262 = sub_100003BCC(&v486);
      sub_10001B350(v262, v263, v264, v180);
      v265 = sub_100003BCC(v487);
      sub_10001B350(v265, v266, v267, v240);
      type metadata accessor for PreviewLocation();
      v268 = v471;
      sub_100003934();
      sub_10001B350(v269, v270, v271, v272);
      v273 = v238;
      v274 = sub_1000D3F6C();
      sub_10071BF60(v274, v275);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v276, v277, v278, v243);
      type metadata accessor for SelectedSearchResult();
      v279 = v473;
      sub_100003934();
      sub_10001B350(v280, v281, v282, v283);
      sub_10043DB64(v268, v240, v279, v445);
      sub_1000180EC(v279, &qword_100CA65C0);
      sub_1000180EC(v240, &qword_100CA65D0);
      sub_1000180EC(v268, &qword_100CA65C8);
      sub_100016DF8();
      sub_1000E0098(v246, v284);
      sub_100014D64();
      sub_1000E0098(v273, v285);
      sub_10000E7B0();
      sub_10001B350(v286, v287, v288, v239);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v289, v290, v291, v121);
      sub_10001CBE0();
      v292 = v441;
      sub_1000BCA28();
      sub_100020FE8();
      sub_100051BBC();
      v293 = sub_10000C834();
      sub_1000038B4(v293, v294, v121);
      if (v177)
      {
        sub_1000180EC(v239, &qword_100CA65E8);
      }

      else
      {
        sub_100010980();
        sub_1000E0098(v292, v391);
        sub_10001F638();
        sub_100003940();
        sub_1000D394C();
      }

      v392 = v449;
      v393 = v447;
      v394 = v444;
      v395 = v442;
      sub_10001F638();
      sub_1000D394C();
      v396 = *(v181 + 16);
      LODWORD(v497) = *(v181 + 24);
      sub_100051BBC();
      v397 = sub_100016298();
      v398 = v503;
      sub_1000038B4(v397, v399, v503);
      v401 = v498;
      v400 = v499;
      v402 = v502;
      v505 = v396;
      if (v177)
      {
        sub_100049B64();
        sub_1000BCA28();
        v403 = sub_100016298();
        v405 = sub_100024D10(v403, v404, v398);

        if (v405 != 1)
        {
          sub_1000180EC(v395, &qword_100CA6640);
        }
      }

      else
      {
        sub_100074ECC();
        sub_1000D394C();
      }

      v406 = v443;
      sub_100051BBC();
      v407 = sub_100016298();
      v408 = v504;
      sub_1000038B4(v407, v409, v504);
      if (v177)
      {
        sub_10002014C();
        sub_10000ED5C();
        sub_1000BCA28();
        v410 = sub_100016298();
        sub_1000038B4(v410, v411, v408);
        v412 = v450;
        if (!v177)
        {
          sub_1000180EC(v406, &qword_100CA6638);
        }
      }

      else
      {
        sub_10002CA1C();
        sub_1000D394C();
        v412 = v450;
      }

      sub_100051BBC();
      v413 = sub_100007FC4();
      sub_1000038B4(v413, v414, v401);
      if (v177)
      {
        sub_100020ABC();
        sub_1000BCA28();
        v415 = sub_100007FC4();
        sub_1000038B4(v415, v416, v401);
        v417 = v448;
        v418 = v402;
        if (!v177)
        {
          sub_1000180EC(v394, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000CE34();
        sub_1000D394C();
        v417 = v448;
        v418 = v402;
      }

      sub_100051BBC();
      v419 = sub_1000175DC();
      sub_1000038B4(v419, v420, v400);
      v421 = v500;
      if (v177)
      {
        sub_1000249FC();
        sub_1000BCA28();
        v422 = sub_1000175DC();
        sub_1000038B4(v422, v423, v400);
        if (!v177)
        {
          sub_1000180EC(v393, &qword_100CA6628);
        }
      }

      else
      {
        sub_10003C784();
        sub_1000D394C();
      }

      sub_100051BBC();
      v424 = sub_1000182B8();
      sub_1000038B4(v424, v425, v421);
      if (v177)
      {
        sub_100017CDC();
        sub_1000BCA28();
        v426 = sub_1000182B8();
        sub_1000038B4(v426, v427, v421);
        if (!v177)
        {
          sub_1000180EC(v417, &qword_100CA6620);
        }
      }

      else
      {
        sub_10006990C();
        sub_1000D394C();
      }

      sub_100051BBC();
      v428 = sub_10000C834();
      sub_1000038B4(v428, v429, v418);
      if (v177)
      {
        sub_100013B48();
        sub_1000BCA28();
        v430 = sub_10000C834();
        sub_1000038B4(v430, v431, v418);
        v432 = v501;
        if (!v177)
        {
          sub_1000180EC(v392, &qword_100CA6618);
        }
      }

      else
      {
        sub_100023094();
        sub_1000D394C();
        v432 = v501;
      }

      sub_100051BBC();
      v433 = sub_1000131C4();
      sub_1000038B4(v433, v434, v432);
      if (v177)
      {
        sub_10004E9B8();
        sub_1000BCA28();
        v435 = sub_1000131C4();
        sub_1000038B4(v435, v436, v432);
        if (!v177)
        {
          sub_1000180EC(v412, &qword_100CA6610);
        }
      }

      else
      {
        sub_100052084();
      }

      sub_10001F638();
      sub_1000B9A0C();
      sub_10008686C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v339 = sub_100037CF8();
      v341 = v466;
      v342 = v467;
      v343 = v468;
      v344 = v469;
      v345 = v470;
      v390 = v489;
LABEL_114:
      v346 = *(v390 - 32);
LABEL_115:
      sub_10003E038(v339, v340, v341, v342, v343, v344, v345, v346, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465);
      v181 = v437;

      return v181;
    }

    sub_100014D64();
    sub_1000E0098(v238, v347);
    sub_1000372A4();
    v242 = v237;
    goto LABEL_20;
  }

  sub_1000180EC(v127, &qword_100CA65E0);
LABEL_21:

  return v181;
}

uint64_t sub_10071BF60@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v179 = a2;
  v180 = a1;
  v184 = type metadata accessor for Location();
  v178 = *(v184 - 8);
  v2 = __chkstk_darwin(v184);
  v173 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v153 = &v147 - v5;
  __chkstk_darwin(v4);
  v174 = &v147 - v6;
  v7 = sub_10022C350(qword_100CA66A0);
  v8 = __chkstk_darwin(v7 - 8);
  v170 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v152 = &v147 - v11;
  v12 = __chkstk_darwin(v10);
  v168 = &v147 - v13;
  v14 = __chkstk_darwin(v12);
  v149 = &v147 - v15;
  v16 = __chkstk_darwin(v14);
  v151 = &v147 - v17;
  v18 = __chkstk_darwin(v16);
  v177 = &v147 - v19;
  v20 = __chkstk_darwin(v18);
  v150 = &v147 - v21;
  v22 = __chkstk_darwin(v20);
  v154 = &v147 - v23;
  __chkstk_darwin(v22);
  v169 = &v147 - v24;
  v25 = sub_10022C350(&qword_100CA65D8);
  v26 = __chkstk_darwin(v25 - 8);
  v163 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v157 = &v147 - v29;
  v30 = __chkstk_darwin(v28);
  v164 = &v147 - v31;
  v32 = __chkstk_darwin(v30);
  v158 = &v147 - v33;
  v34 = __chkstk_darwin(v32);
  v171 = &v147 - v35;
  __chkstk_darwin(v34);
  v167 = &v147 - v36;
  v37 = type metadata accessor for Date();
  v182 = *(v37 - 8);
  *&v183 = v37;
  v38 = __chkstk_darwin(v37);
  v40 = &v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v160 = &v147 - v41;
  v162 = type metadata accessor for DateComponents();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v159 = &v147 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10022C350(&unk_100CB2CF0);
  v44 = __chkstk_darwin(v43 - 8);
  v166 = &v147 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v148 = &v147 - v47;
  v48 = __chkstk_darwin(v46);
  v176 = &v147 - v49;
  v50 = __chkstk_darwin(v48);
  v165 = &v147 - v51;
  v52 = __chkstk_darwin(v50);
  v147 = &v147 - v53;
  v54 = __chkstk_darwin(v52);
  v175 = &v147 - v55;
  v56 = __chkstk_darwin(v54);
  v58 = &v147 - v57;
  v59 = __chkstk_darwin(v56);
  v61 = &v147 - v60;
  __chkstk_darwin(v59);
  v172 = &v147 - v62;
  v63 = type metadata accessor for TimeZone();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v147 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for Calendar();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v68 = &v147 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for MoonDetailSelectedDate();
  __chkstk_darwin(v181);
  v69 = type metadata accessor for MoonDetailViewAction();
  __chkstk_darwin(v69);
  v71 = &v147 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BCA28();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v177 = v58;
    v180 = v61;
    sub_1000D394C();
    Location.timeZone.getter();
    static Calendar.currentCalendar(with:)();
    (*(v64 + 8))(v66, v63);
    sub_10022C350(&qword_100CA53E8);
    v86 = type metadata accessor for Calendar.Component();
    v87 = *(v86 - 8);
    v88 = *(v87 + 72);
    v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_100A2D320;
    v91 = v90 + v89;
    v92 = *(v87 + 104);
    v92(v91, enum case for Calendar.Component.year(_:), v86);
    v92(v91 + v88, enum case for Calendar.Component.month(_:), v86);
    sub_10004BCB0(v90);
    v93 = v160;
    sub_10070B0DC(v160);
    v94 = v159;
    Calendar.dateComponents(_:from:)();

    v96 = v182;
    v95 = v183;
    (*(v182 + 8))(v93, v183);
    Calendar.date(from:)();
    (*(v161 + 8))(v94, v162);
    (*(v155 + 8))(v68, v156);
    v97 = v184;
    sub_10001B350(v167, 1, 1, v184);
    v98 = v169;
    sub_1000D394C();
    v99 = v181;
    sub_10001B350(v98, 0, 1, v181);
    v100 = v171;
    sub_100051BBC();
    if (sub_100024D10(v100, 1, v97) == 1)
    {
      v101 = v178;
      v102 = v185;
      (*(v178 + 16))(v174, v185, v97);
      v103 = sub_100024D10(v100, 1, v97);
      v104 = v179;
      v105 = v102;
      v106 = v154;
      v107 = v150;
      if (v103 != 1)
      {
        sub_1000180EC(v171, &qword_100CA65D8);
      }
    }

    else
    {
      v101 = v178;
      (*(v178 + 32))(v174, v100, v97);
      v104 = v179;
      v105 = v185;
      v106 = v154;
      v107 = v150;
    }

    sub_100051BBC();
    if (sub_100024D10(v107, 1, v99) == 1)
    {
      type metadata accessor for MoonDetailViewState();
      sub_100095588();
      if (sub_100024D10(v107, 1, v99) != 1)
      {
        sub_1000180EC(v107, qword_100CA66A0);
      }
    }

    else
    {
      sub_1000D394C();
      sub_10001B350(v106, 0, 1, v99);
    }

    v129 = v177;
    sub_100051BBC();
    if (sub_100024D10(v129, 1, v95) == 1)
    {
      type metadata accessor for MoonDetailViewState();
      sub_100095588();
      if (sub_100024D10(v129, 1, v95) != 1)
      {
        sub_1000180EC(v129, &unk_100CB2CF0);
      }
    }

    else
    {
      v130 = v180;
      (*(v96 + 32))(v180, v129, v95);
      sub_10001B350(v130, 0, 1, v95);
    }

    v131 = type metadata accessor for MoonDetailViewState();
    v122 = (v131 + 32);
    v132 = *(v131 + 28);
    v133 = (v105 + v132);
    v108 = *(v105 + *(v131 + 32));
    v125 = *(v133 + 32);
    v126 = v104 + v132;
    v134 = *(v101 + 32);
    v135 = v133[1];
    v185 = *v133;
    v183 = v135;
    v134(v104, v174, v97);
    sub_100051BBC();
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v73 = v183;
    v74 = *(v182 + 32);
    v74(v40, v71, v183);
    v75 = v184;
    sub_10001B350(v158, 1, 1, v184);
    v76 = v181;
    sub_10001B350(v177, 1, 1, v181);
    v77 = v175;
    v74(v175, v40, v73);
    sub_10001B350(v77, 0, 1, v73);
    v78 = v164;
    sub_100051BBC();
    if (sub_100024D10(v78, 1, v75) == 1)
    {
      v79 = v178;
      v80 = v153;
      v81 = v185;
      (*(v178 + 16))(v153, v185, v75);
      v82 = sub_100024D10(v78, 1, v75) == 1;
      v83 = v151;
      v84 = v78;
      v85 = v149;
      if (!v82)
      {
        sub_1000180EC(v84, &qword_100CA65D8);
      }
    }

    else
    {
      v79 = v178;
      v80 = v153;
      (*(v178 + 32))(v153, v78, v75);
      v81 = v185;
      v83 = v151;
      v85 = v149;
    }

    sub_100051BBC();
    if (sub_100024D10(v85, 1, v76) == 1)
    {
      type metadata accessor for MoonDetailViewState();
      sub_100095588();
      if (sub_100024D10(v85, 1, v76) != 1)
      {
        sub_1000180EC(v85, qword_100CA66A0);
      }
    }

    else
    {
      sub_1000D394C();
      sub_10001B350(v83, 0, 1, v76);
    }

    v118 = v165;
    sub_100051BBC();
    if (sub_100024D10(v118, 1, v73) == 1)
    {
      type metadata accessor for MoonDetailViewState();
      sub_100095588();
      v82 = sub_100024D10(v118, 1, v73) == 1;
      v119 = v118;
      v104 = v179;
      if (!v82)
      {
        sub_1000180EC(v119, &unk_100CB2CF0);
      }
    }

    else
    {
      v120 = v147;
      v74(v147, v118, v73);
      sub_10001B350(v120, 0, 1, v73);
      v104 = v179;
    }

    v121 = type metadata accessor for MoonDetailViewState();
    v122 = (v121 + 32);
    v123 = *(v121 + 28);
    v124 = (v81 + v123);
    v108 = *(v81 + *(v121 + 32));
    v125 = *(v124 + 32);
    v126 = v104 + v123;
    v127 = *(v79 + 32);
    v128 = v124[1];
    v185 = *v124;
    v183 = v128;
    v127(v104, v80, v75);
    sub_100051BBC();
LABEL_32:
    result = sub_100051BBC();
    v137 = v183;
    *v126 = v185;
    *(v126 + 16) = v137;
    goto LABEL_43;
  }

  v108 = *v71;
  v109 = v184;
  sub_10001B350(v157, 1, 1, v184);
  v110 = v181;
  sub_10001B350(v168, 1, 1, v181);
  v111 = v183;
  sub_10001B350(v176, 1, 1, v183);
  v112 = v163;
  sub_100051BBC();
  if (sub_100024D10(v112, 1, v109) == 1)
  {
    v113 = v178;
    v114 = v185;
    (*(v178 + 16))(v173, v185, v109);
    v82 = sub_100024D10(v112, 1, v109) == 1;
    v104 = v179;
    v115 = v112;
    v116 = v182;
    v117 = v152;
    if (!v82)
    {
      sub_1000180EC(v115, &qword_100CA65D8);
    }
  }

  else
  {
    v113 = v178;
    (*(v178 + 32))(v173, v112, v109);
    v104 = v179;
    v114 = v185;
    v116 = v182;
    v117 = v152;
  }

  v138 = v170;
  sub_100051BBC();
  if (sub_100024D10(v138, 1, v110) == 1)
  {
    type metadata accessor for MoonDetailViewState();
    sub_100095588();
    if (sub_100024D10(v138, 1, v110) != 1)
    {
      sub_1000180EC(v138, qword_100CA66A0);
    }
  }

  else
  {
    sub_1000D394C();
    sub_10001B350(v117, 0, 1, v110);
  }

  v139 = v166;
  sub_100051BBC();
  if (sub_100024D10(v139, 1, v111) == 1)
  {
    type metadata accessor for MoonDetailViewState();
    sub_100095588();
    if (sub_100024D10(v139, 1, v111) != 1)
    {
      sub_1000180EC(v139, &unk_100CB2CF0);
    }
  }

  else
  {
    v140 = v148;
    (*(v116 + 32))(v148, v139, v111);
    sub_10001B350(v140, 0, 1, v111);
  }

  v141 = type metadata accessor for MoonDetailViewState();
  v142 = *(v141 + 28);
  v143 = (v114 + v142);
  v125 = *(v114 + v142 + 32);
  v126 = v104 + v142;
  v144 = *(v113 + 32);
  v145 = v143[1];
  v185 = *v143;
  v183 = v145;
  v144(v104, v173, v109);
  sub_100051BBC();
  result = sub_100051BBC();
  v146 = v183;
  *v126 = v185;
  *(v126 + 16) = v146;
  v122 = (v141 + 32);
LABEL_43:
  *(v126 + 32) = v125;
  *(v104 + *v122) = v108;
  return result;
}

uint64_t sub_10071D434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a2;
  v93 = a3;
  v82 = a1;
  v4 = type metadata accessor for DetailViewVisibilityTrackerModel();
  v5 = sub_100003AE8(v4);
  v91 = v6;
  v8 = *(v7 + 64);
  v68 = v5;
  v90 = v8;
  __chkstk_darwin(v5);
  v89 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CD5370);
  __chkstk_darwin(v10 - 8);
  v86 = &v67 - v11;
  sub_1000038CC();
  type metadata accessor for DetailViewOrigin();
  sub_1000037C4();
  v84 = v13;
  v85 = v12;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v83 = v15 - v14;
  sub_1000038CC();
  v87 = type metadata accessor for DetailViewOriginationData();
  sub_1000037C4();
  v97 = v16;
  v88 = *(v17 + 64);
  __chkstk_darwin(v18);
  sub_10000FBD0();
  v96 = v19;
  __chkstk_darwin(v20);
  v95 = &v67 - v21;
  sub_1000038CC();
  type metadata accessor for ViewAction();
  sub_1000037C4();
  v80 = v23;
  v81 = v22;
  __chkstk_darwin(v22);
  sub_1000037D8();
  v79 = v25 - v24;
  sub_1000038CC();
  v76 = type metadata accessor for ViewType();
  sub_1000037C4();
  v73 = v26;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v71 = v29 - v28;
  sub_1000038CC();
  v70 = type metadata accessor for UUID();
  sub_1000037C4();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_1000037D8();
  v35 = v34 - v33;
  v77 = type metadata accessor for ViewData();
  sub_1000037C4();
  v75 = v36;
  v78 = *(v37 + 64);
  __chkstk_darwin(v38);
  sub_10000FBD0();
  v72 = v39;
  __chkstk_darwin(v40);
  v94 = &v67 - v41;
  sub_1000038CC();
  v42 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v44 = v43;
  __chkstk_darwin(v45);
  sub_1000037D8();
  v48 = v47 - v46;
  v69 = v3;
  sub_1000161C0(v3 + 1, v3[4]);
  v49 = v82;
  Location.identifier.getter();
  v74 = dispatch thunk of LocationPrivacySamplerType.canRecordLocation(_:)();
  (*(v44 + 8))(v48, v42);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v31 + 8))(v35, v70);
  (*(v73 + 104))(v71, enum case for ViewType.detail(_:), v76);
  (*(v80 + 104))(v79, enum case for ViewAction.unknown(_:), v81);
  v50 = v94;
  ViewData.init(viewSessionID:viewType:viewAction:)();
  v51 = v49;
  (*(v84 + 16))(v83, v49 + *(v68 + 32), v85);
  v52 = type metadata accessor for ComponentData();
  sub_10001B350(v86, 1, 1, v52);
  v53 = v95;
  DetailViewOriginationData.init(origin:componentData:)();
  v86 = *v69;
  v54 = v75;
  v55 = v72;
  v56 = v77;
  (*(v75 + 16))(v72, v50, v77);
  v57 = v89;
  sub_100275E44(v51, v89);
  v58 = v97;
  v59 = v87;
  (*(v97 + 16))(v96, v53, v87);
  v60 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v61 = (v78 + *(v91 + 80) + v60) & ~*(v91 + 80);
  v62 = v61 + v90;
  v63 = (*(v58 + 80) + v61 + v90 + 1) & ~*(v58 + 80);
  v64 = swift_allocObject();
  (*(v54 + 32))(v64 + v60, v55, v56);
  sub_10071E1E0(v57, v64 + v61);
  *(v64 + v62) = v74 & 1;
  v65 = v97;
  (*(v97 + 32))(v64 + v63, v96, v59);
  Tracker.transaction(block:)();

  (*(v65 + 8))(v95, v59);
  return (*(v54 + 8))(v94, v56);
}

uint64_t sub_10071DBB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v33 = a5;
  v30 = a4;
  v27 = a3;
  v25[1] = a2;
  v26 = type metadata accessor for Location();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationData();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v29 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetailType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DetailViewData();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewData();
  sub_10071E248(&qword_100CB3EE0, &type metadata accessor for ViewData);
  AccessTracker.push<A>(data:traits:file:line:)();
  v17 = v27;
  v18 = v9;
  v19 = v26;
  (*(v10 + 16))(v12, v27, v18);
  DetailViewData.init(type:)();
  sub_10071E248(&qword_100CD5378, &type metadata accessor for DetailViewData);
  AccessTracker.push<A>(data:traits:file:line:)();
  (*(v14 + 8))(v16, v13);
  v20 = v28;
  v21 = type metadata accessor for DetailViewVisibilityTrackerModel();
  (*(v20 + 16))(v6, v17 + *(v21 + 20), v19);
  if (v30)
  {
    Location.coordinate.getter();
    Location.coordinate.getter();
  }

  v22 = v29;
  LocationData.init(latitudeDouble:longitudeDouble:)();
  (*(v20 + 8))(v6, v19);
  sub_10071E248(&qword_100CB12A8, &type metadata accessor for LocationData);
  v23 = v32;
  AccessTracker.push<A>(data:traits:file:line:)();
  (*(v31 + 8))(v22, v23);
  type metadata accessor for DetailViewOriginationData();
  sub_10071E248(&qword_100CD5380, &type metadata accessor for DetailViewOriginationData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for DetailViewEvent();
  sub_10071E248(&qword_100CD5368, &type metadata accessor for DetailViewEvent);
  return AccessTracker.time<A>(_:submitAndRestartWithSession:)();
}

uint64_t sub_10071E0E0()
{
  type metadata accessor for DetailViewEvent();
  sub_10071E248(&qword_100CD5368, &type metadata accessor for DetailViewEvent);
  memset(v1, 0, sizeof(v1));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_1003C1574(v1);
}

uint64_t sub_10071E1E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailViewVisibilityTrackerModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10071E248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10071E2C4(uint64_t a1)
{
  v3 = type metadata accessor for ViewData();
  sub_100003AE8(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for DetailViewVisibilityTrackerModel();
  sub_100003AE8(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = v10 + *(v11 + 64);
  v13 = *(type metadata accessor for DetailViewOriginationData() - 8);
  v14 = *(v1 + v12);
  v15 = v1 + ((v12 + *(v13 + 80) + 1) & ~*(v13 + 80));

  return sub_10071DBB4(a1, v1 + v5, v1 + v10, v14, v15);
}

uint64_t sub_10071E3FC(const void *a1)
{
  v3 = type metadata accessor for MainAction();
  __chkstk_darwin(v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 16);
  memcpy(v5, a1, 0x60uLL);
  type metadata accessor for ModalViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10029C25C(a1, v8);
  sub_10004F034(v5, v9, v6);
  sub_1000E17D8(v9);
  return sub_1000547B8(v5);
}

uint64_t sub_10071E4F8()
{
  sub_1000161C0((v0 + 32), *(v0 + 56));
  type metadata accessor for ReportWeatherExposureEvent();
  sub_10071E84C(&qword_100CA6E18, 255, &type metadata accessor for ReportWeatherExposureEvent);
  return Tracker.submit<A>(_:onlyIfTimed:completion:)();
}

uint64_t sub_10071E584(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000161C0(v1 + 4, v1[7]);
  sub_100387178(a1);
  v7 = v1[12];
  v8 = v1[13];
  sub_1000161C0(v1 + 9, v7);
  result = (*(v8 + 8))(v7, v8);
  if ((*(a1 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_entrySource) & 1) == 0)
  {
    if (qword_100CA2158 != -1)
    {
      swift_once();
    }

    static WeatherClock.date.getter();
    Date.timeIntervalSince1970.getter();
    v11 = v10;
    (*(v4 + 8))(v6, v3);
    v14 = v11;
    sub_10071E84C(&qword_100CD5440, v12, type metadata accessor for ReportWeatherInteractor);
    Updatable.save<A>(setting:value:)();
    if (qword_100CA2160 != -1)
    {
      swift_once();
    }

    v13[7] = 1;
    return Updatable.save<A>(setting:value:)();
  }

  return result;
}

uint64_t sub_10071E84C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10071EA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v49 = sub_10022C350(&qword_100CA2DD8);
  __chkstk_darwin(v49);
  v6 = &v42 - v5;
  v48 = sub_10022C350(&qword_100CD5590);
  v47 = *(v48 - 1);
  __chkstk_darwin(v48);
  v8 = &v42 - v7;
  sub_100035B30(a1, __dst);
  v9 = type metadata accessor for WeatherApp();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  sub_100720520();
  v12 = *(v10 + 80);
  v13 = swift_allocObject();
  sub_100013188(__dst, v13 + 16);
  sub_10005B7F8();
  v14 = sub_10022C350(&qword_100CD17D8);
  *&__src[80] = sub_10008360C;
  *&__src[88] = 0;
  __src[96] = 0;
  *__src = v14;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  v52 = v6;
  swift_beginAccess();
  result = sub_100095588();
  if (*&__dst[24])
  {
    v51 = ~v12;
    sub_100013188(__dst, &__src[24]);
    *&__src[8] = sub_1007205D4;
    *&__src[16] = v13;
    v16 = Dictionary.init(dictionaryLiteral:)();
    *&__src[64] = _swiftEmptyArrayStorage;
    *&__src[72] = v16;
    memcpy(__dst, __src, sizeof(__dst));
    v46 = a1;
    sub_100035B30(a1, __src);
    v17 = swift_allocObject();
    sub_100013188(__src, v17 + 16);
    sub_10022C350(&qword_100CD5540);
    sub_100006F64(&qword_100CD5548, &qword_100CD5540);
    View.onOpenURL(perform:)();

    v18 = sub_1000180EC(__dst, &qword_100CD5540);
    v44 = &v42;
    __chkstk_darwin(v18);
    v43 = v8;
    sub_100720520();
    sub_100035B30(a1, __dst);
    v45 = a2;
    v19 = (v11 + 7 + ((v12 + 16) & v51)) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    sub_10005B7F8();
    sub_100013188(__dst, v20 + v19);
    v21 = v52;
    v22 = (*(v47 + 32))(v52, v43, v48);
    v23 = &v21[*(v49 + 9)];
    *v23 = sub_100720660;
    *(v23 + 1) = v20;
    __chkstk_darwin(v22);
    sub_100720520();
    sub_100035B30(v46, __dst);
    type metadata accessor for MainActor();
    v24 = static MainActor.shared.getter();
    v25 = (v11 + 7 + ((v12 + 32) & v51)) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = &protocol witness table for MainActor;
    sub_10005B7F8();
    sub_100013188(__dst, v26 + v25);
    v27 = type metadata accessor for TaskPriority();
    v28 = *(v27 - 8);
    v29 = *(v28 + 64);
    __chkstk_darwin(v27);
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
    v31 = &v42 - v30;
    static TaskPriority.userInitiated.getter();
    if (sub_100A162A0(2, 26, 4, 0))
    {
      v47 = type metadata accessor for _TaskModifier2();
      v48 = &v42;
      v46 = *(v47 - 8);
      __chkstk_darwin(v47);
      v51 = &v42;
      v49 = &v42;
      v33 = &v42 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      *__src = 0;
      *&__src[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      *__src = 0xD000000000000025;
      *&__src[8] = 0x8000000100ADC260;
      v53 = 60;
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v36 = __chkstk_darwin(v35);
      (*(v28 + 16))(&v42 - v30, v31, v27, v36);
      _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
      (*(v28 + 8))(v31, v27);
      v37 = v50;
      sub_10020E9F0();
      v38 = sub_10022C350(&qword_100CA2DE0);
      return (*(v46 + 32))(v37 + *(v38 + 36), v33, v47);
    }

    else
    {
      v39 = sub_10022C350(&qword_100CA2DE8);
      v40 = (v50 + *(v39 + 36));
      v41 = type metadata accessor for _TaskModifier();
      (*(v28 + 32))(&v40[*(v41 + 20)], &v42 - v30, v27);
      *v40 = &unk_100A7DCF8;
      *(v40 + 1) = v26;
      return sub_10020E9F0();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10071F3E0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v34 = a4;
  v6 = type metadata accessor for MainView(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10022C350(&qword_100CD55A8);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v35 = sub_10022C350(&qword_100CD55B0);
  __chkstk_darwin(v35);
  v13 = &v33 - v12;
  v36 = sub_10022C350(&qword_100CD55B8);
  __chkstk_darwin(v36);
  v15 = &v33 - v14;
  sub_1000161C0(a1, a1[3]);
  sub_10009E8D0(v8);
  KeyPath = swift_getKeyPath();
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CD17E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v39)
  {
    v18 = *sub_1000161C0(v38, v39);
    sub_10005B7F8();
    v19 = &v11[*(v9 + 36)];
    *v19 = KeyPath;
    v19[8] = v18;
    sub_100006F14(v38);
    v33 = swift_getKeyPath();
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA2258 != -1)
    {
      swift_once();
    }

    DeviceSupportsStickyHeaders();
    v20 = SettingReader.isEnabled(_:with:)();

    static SettingReader.shared.getter();
    if (qword_100CA2268 != -1)
    {
      swift_once();
    }

    v21 = SettingReader.isEnabled(_:with:)();

    static SettingReader.shared.getter();
    if (qword_100CA2270 != -1)
    {
      swift_once();
    }

    v22 = SettingReader.isEnabled(_:with:)();

    static SettingReader.shared.getter();
    static Settings.VFX.foregroundEffects.getter();
    DeviceSupportsForegroundEffects();
    v23 = SettingReader.isEnabled(_:with:)();

    sub_100051BBC();
    v24 = &v13[*(v35 + 36)];
    *v24 = v33;
    v24[8] = v20 & 1;
    v24[9] = v21 & 1;
    v24[10] = v22 & 1;
    v24[11] = v23 & 1;
    sub_10022C350(&qword_100CD5450);
    v25 = UIApplicationDelegateAdaptor.wrappedValue.getter();
    v26 = sub_100083E30();

    type metadata accessor for ObservableResolver();
    sub_1000030C8(&qword_100CB0468, &type metadata accessor for ObservableResolver);
    v27 = static ObservableObject.environmentStore.getter();
    sub_100051BBC();
    v28 = &v15[*(v36 + 36)];
    *v28 = v27;
    v28[1] = v26;
    sub_1000161C0(a2, a2[3]);
    sub_10022C350(&qword_100CBF860);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v29 = result;
      sub_100006F64(&qword_100CD19C8, &qword_100CBF860);
      v30 = static ObservableObject.environmentStore.getter();
      v31 = v34;
      sub_100051BBC();
      result = sub_10022C350(&qword_100CD55C0);
      v32 = (v31 + *(result + 36));
      *v32 = v30;
      v32[1] = v29;
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

uint64_t sub_10071F950(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10022C350(&qword_100CD5598);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  sub_100095588();
  v7 = type metadata accessor for OpenURLOptions();
  if (sub_100024D10(v6, 1, v7) == 1)
  {
    sub_1000180EC(v6, &qword_100CD5598);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = OpenURLOptions.uiSceneOpenURLOptions.getter();
    (*(*(v7 - 8) + 8))(v6, v7);
    v8 = sub_1003E2674(v10);
    v9 = v11;
  }

  sub_1000161C0(a3, a3[3]);
  sub_10022C350(&qword_100CBE1B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v13[0] = v8;
    v13[1] = v9;
    URLHandlerManager.handle(url:context:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10071FAF4(_BYTE *a1, uint64_t a2, void *a3)
{
  v5 = sub_10022C350(&unk_100CD54D8);
  __chkstk_darwin(v5 - 8);
  __chkstk_darwin(v6);
  v8 = &v17[-1] - v7;
  __chkstk_darwin(v9);
  v11 = &v17[-1] - v10;
  if (*a1 == 1)
  {
    type metadata accessor for WeatherApp();
    sub_10022C350(&qword_100CD5458);
    State.wrappedValue.getter();
    v12 = type metadata accessor for WeatherMenuCommands();
    v13 = sub_100024D10(v11, 1, v12);
    sub_1000180EC(v11, &unk_100CD54D8);
    if (v13 == 1)
    {
      type metadata accessor for SettingReader();
      static SettingReader.shared.getter();
      if (qword_100CA24E0 != -1)
      {
        swift_once();
      }

      SettingReader.read<A>(_:)();

      if (LOBYTE(v17[0]) == 1 && (v14 = [objc_opt_self() currentDevice], v15 = objc_msgSend(v14, "userInterfaceIdiom"), v14, v15 == 1))
      {
        sub_1000161C0(a3, a3[3]);
        sub_10022C350(&qword_100CB9760);
        dispatch thunk of ResolverType.resolve<A>(_:)();
        if (!v18)
        {
          __break(1u);
          return;
        }

        sub_1000161C0(v17, v18);
        sub_1009BA00C();
        sub_10001B350(v8, 0, 1, v12);
        sub_100006F14(v17);
      }

      else
      {
        sub_10001B350(v8, 1, 1, v12);
      }

      sub_100095588();
      State.wrappedValue.setter();
      sub_1000180EC(v8, &unk_100CD54D8);
    }
  }
}

uint64_t sub_10071FDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10071FE64, v6, v5);
}

uint64_t sub_10071FE64()
{
  v1 = *(v0 + 24);

  sub_1001887D4(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10071FED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v23 = sub_10022C350(&qword_100CD5588);
  __chkstk_darwin(v23);
  v3 = &v22 - v2;
  v4 = sub_10022C350(&qword_100CD5580);
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for SidebarCommands();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&unk_100CD54D8);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for WeatherMenuCommands();
  __chkstk_darwin(v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherApp();
  sub_10022C350(&qword_100CD5458);
  State.wrappedValue.getter();
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_1000180EC(v13, &unk_100CD54D8);
    v17 = 1;
    v18 = v25;
  }

  else
  {
    sub_10005B7F8();
    SidebarCommands.init()();
    v19 = *(v23 + 48);
    sub_100720520();
    (*(v8 + 16))(&v3[v19], v10, v7);
    TupleCommandContent.init(_:)();
    (*(v8 + 8))(v10, v7);
    sub_100720578(v16);
    v20 = v25;
    (*(v22 + 32))(v25, v6, v4);
    v17 = 0;
    v18 = v20;
  }

  return sub_10001B350(v18, v17, 1, v4);
}

void sub_100720268()
{
  if (!qword_100CD54D0)
  {
    sub_10022E824(&unk_100CD54D8);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD54D0);
    }
  }
}

uint64_t sub_1007202CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WeatherApp() - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_10071EA88(v1 + 16, v4, a1);
}

unint64_t sub_100720340()
{
  result = qword_100CD5538;
  if (!qword_100CD5538)
  {
    sub_10022E824(&qword_100CA2DD8);
    sub_10022E824(&qword_100CD5540);
    sub_100006F64(&qword_100CD5548, &qword_100CD5540);
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CD5550, &qword_100CD5558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5538);
  }

  return result;
}

unint64_t sub_100720470()
{
  result = qword_100CD5570;
  if (!qword_100CD5570)
  {
    sub_10022E824(&qword_100CD5568);
    sub_100006F64(&qword_100CD5578, &qword_100CD5580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5570);
  }

  return result;
}

uint64_t sub_100720520()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100720578(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMenuCommands();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007205D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WeatherApp() - 8);
  v6 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_10071F3E0(a1, (v2 + 16), v6, a2);
}

void sub_100720660(_BYTE *a1)
{
  v3 = *(type metadata accessor for WeatherApp() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10071FAF4(a1, v1 + v4, v5);
}

uint64_t sub_1007206FC()
{
  v2 = *(type metadata accessor for WeatherApp() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000926F8;

  return sub_10071FDCC(v5, v6, v0 + v3, v0 + v4);
}

uint64_t sub_10072080C()
{
  v1 = type metadata accessor for ActivityAction();
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((v0 + 16), *(v0 + 40));
  swift_storeEnumTagMultiPayload();
  v4 = static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
  v5 = static VerticalSizingBehaviorKey.defaultValue.getter();
  sub_100366814(v3, v4 & 1, v5 & 1);
  return sub_1002AC218(v3);
}

uint64_t sub_100720908()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1007209A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v309 = a1;
  v310 = a5;
  v308 = a3;
  v271 = a6;
  v8 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v8 - 8);
  v254 = v251 - v9;
  v252 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v252);
  sub_100003848();
  v281 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v269 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v268 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_100003878();
  v278 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_100003878();
  v266 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v275 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v263 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v261 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v273 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v258 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v272 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v255 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v251[0] = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v37 = v251 - v36;
  v38 = *(a4 - 8);
  __chkstk_darwin(v39);
  sub_100003848();
  v270 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  v290 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v289 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v288 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v287 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v286 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v285 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v284 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v283 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v282 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v267 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v280 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v265 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v305 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v264 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v304 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v262 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v303 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v260 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v302 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v259 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v300 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v257 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v299 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v256 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v298 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v253 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v297 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v251[3] = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v296 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v251[2] = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v295 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v251[1] = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v294 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  v109 = v251 - v108;
  __chkstk_darwin(v110);
  v112 = v251 - v111;
  v301 = type metadata accessor for Optional();
  v274 = *(v301 - 8);
  __chkstk_darwin(v301);
  sub_100003848();
  v279 = v113;
  sub_10000386C();
  __chkstk_darwin(v114);
  sub_100003878();
  v293 = v115;
  sub_10000386C();
  __chkstk_darwin(v116);
  v118 = v251 - v117;
  __chkstk_darwin(v119);
  v292 = v251 - v120;
  v121 = a2;
  sub_100566A24(a2, v328);
  v306 = v118;
  v307 = v109;
  v291 = v112;
  if (v329)
  {
    v122 = 1;
  }

  else
  {
    v123 = v328[3];
    v124 = v328[2];
    v125 = v38;
    v126 = v328[1];
    v277 = v121;
    v127 = v328[0];
    sub_1001B3B30(v309 + OBJC_IVAR____TtCV7Weather18NoAqiSevereContent8_Storage_severeAlert, v37);
    v128 = v123;
    v109 = v307;
    v308(v37, v127, v126, v124, v128);
    sub_1001B4354(v37);
    v129 = v310;
    sub_1000833D8(v109, a4, v310);
    v130 = *(v125 + 8);
    v130(v109, a4);
    v131 = sub_100005480();
    v132 = v129;
    v118 = v306;
    sub_1000833D8(v131, v133, v132);
    v134 = sub_100005480();
    (v130)(v134);
    v38 = v125;
    v121 = v277;
    (*(v125 + 32))(v118, v109, a4);
    v122 = 0;
  }

  sub_10001B350(v118, v122, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v135, v136);
  v276 = *(v274 + 8);
  v277 = v274 + 8;
  v276(v118, v301);
  v137 = OBJC_IVAR____TtCV7Weather18NoAqiSevereContent8_Storage_map;
  v138 = v309;
  swift_beginAccess();
  v139 = v138 + v137;
  v140 = v254;
  sub_10026E174(v139, v254);
  if (sub_100024D10(v140, 1, v252) == 1)
  {
    sub_10026E1E4(v140);
LABEL_8:
    v142 = 1;
    v143 = v306;
    goto LABEL_10;
  }

  v141 = v251[0];
  sub_10026E24C(v140, v251[0]);
  sub_100566A5C(v121, v330);
  if (v330[32])
  {
    sub_1001B4354(v141);
    goto LABEL_8;
  }

  v144 = sub_100028198();
  v145(v144);
  sub_1001B4354(v141);
  v146 = v310;
  sub_1000833D8(v109, a4, v310);
  v147 = *(v38 + 8);
  v147(v307, a4);
  v148 = sub_100005480();
  sub_1000833D8(v148, v149, v146);
  v150 = sub_100005480();
  (v147)(v150);
  v143 = v306;
  (*(v38 + 32))(v306, v307, a4);
  v142 = 0;
LABEL_10:
  sub_10001B350(v143, v142, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v151, v152);
  v276(v143, v301);
  sub_10001420C();
  v154 = v255;
  sub_1001B3B30(v153 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v255);
  sub_100566A78(v121, v331);
  if (v332)
  {
    goto LABEL_28;
  }

  v308(v154, v331[0], v331[1], v331[2], v331[3]);
  sub_1001B4354(v154);
  v155 = sub_100005480();
  sub_1000833D8(v155, v156, v310);
  v157 = *(v38 + 8);
  v158 = sub_100005480();
  v157(v158);
  sub_10001420C();
  sub_1001B3B30(v159 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v272);
  sub_100566A94(v121, v333);
  if (v334)
  {
    goto LABEL_28;
  }

  v160 = v272;
  v308(v272, v333[0], v333[1], v333[2], v333[3]);
  sub_1001B4354(v160);
  v161 = sub_100005480();
  sub_1000833D8(v161, v162, v310);
  v163 = sub_100005480();
  v157(v163);
  sub_10001420C();
  v165 = v258;
  sub_1001B3B30(v164 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v258);
  sub_100566AB0(v121, v335);
  if (v335[32])
  {
    goto LABEL_31;
  }

  v166 = sub_10001926C();
  v167(v166);
  sub_1001B4354(v165);
  v168 = sub_100005480();
  sub_1000833D8(v168, v169, v310);
  v170 = sub_100005480();
  v157(v170);
  sub_10001420C();
  sub_1001B3B30(v171 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v273);
  sub_100566ACC(v121, v336);
  if (v337)
  {
    goto LABEL_28;
  }

  v172 = v273;
  v308(v273, v336[0], v336[1], v336[2], v336[3]);
  sub_1001B4354(v172);
  v173 = sub_100005480();
  sub_1000833D8(v173, v174, v310);
  v175 = sub_100005480();
  v157(v175);
  sub_10001420C();
  v177 = v261;
  sub_1001B3B30(v176 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v261);
  sub_100566AE8(v121, v338);
  if (v338[32])
  {
    goto LABEL_31;
  }

  v178 = sub_10001926C();
  v179(v178);
  sub_1001B4354(v177);
  v180 = sub_100005480();
  sub_1000833D8(v180, v181, v310);
  v182 = sub_100005480();
  v157(v182);
  sub_10001420C();
  v184 = v263;
  sub_1001B3B30(v183 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v263);
  sub_100566B04(v121, v339);
  if (v339[32])
  {
    goto LABEL_28;
  }

  v185 = sub_100028198();
  v186(v185);
  sub_1001B4354(v184);
  sub_100007FFC();
  sub_1000833D8(v187, v188, v189);
  v190 = sub_100005474();
  v157(v190);
  sub_10001420C();
  sub_1001B3B30(v191 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v275);
  sub_100566B20(v121, v340);
  if (v340[32])
  {
    goto LABEL_28;
  }

  v192 = v275;
  v193 = sub_100028198();
  v194(v193);
  sub_1001B4354(v192);
  sub_100007FFC();
  sub_1000833D8(v195, v196, v197);
  v198 = sub_100005474();
  v157(v198);
  sub_10001420C();
  v200 = v266;
  sub_1001B3B30(v199 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v266);
  sub_100566B3C(v121, v341);
  if (v341[32])
  {
LABEL_31:
    sub_100013470();
    goto LABEL_32;
  }

  v201 = sub_10001926C();
  v202(v201);
  sub_1001B4354(v200);
  v203 = sub_100005480();
  sub_1000833D8(v203, v204, v310);
  v205 = sub_100005480();
  v157(v205);
  sub_10001420C();
  sub_1001B3B30(v206 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v278);
  sub_100566B58(v121, v342);
  if ((v343 & 1) == 0)
  {
    v207 = v278;
    v308(v278, v342[0], v342[1], v342[2], v342[3]);
    sub_1001B4354(v207);
    v208 = sub_100005480();
    sub_1000833D8(v208, v209, v310);
    v210 = sub_100005480();
    v157(v210);
    sub_10001420C();
    v212 = v268;
    sub_1001B3B30(v211 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v268);
    sub_100566B74(v121, &v344);
    if ((v345 & 1) == 0)
    {
      v213 = sub_10001926C();
      v214(v213);
      sub_1001B4354(v212);
      v215 = sub_100005480();
      sub_1000833D8(v215, v216, v310);
      v217 = sub_100005480();
      v157(v217);
      sub_10001420C();
      v219 = v269;
      sub_1001B3B30(v218 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v269);
      sub_100566B90(v121, &v346);
      if ((v347 & 1) == 0)
      {
        v220 = sub_100028198();
        v221(v220);
        sub_1001B4354(v219);
        sub_100007FFC();
        sub_1000833D8(v222, v223, v224);
        v225 = sub_100005474();
        v157(v225);
        sub_10001420C();
        sub_1001B3B30(v226 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v281);
        sub_100566BAC(v121, v348);
        if ((v349 & 1) == 0)
        {
          v227 = v267;
          v228 = v281;
          v308(v281, v348[0], v348[1], v348[2], v348[3]);
          sub_1001B4354(v228);
          v229 = v310;
          sub_1000833D8(v227, a4, v310);
          (v157)(v227, a4);
          v230 = *(v274 + 16);
          v231 = v306;
          v232 = v301;
          v230(v306, v292, v301);
          v327[0] = v231;
          v233 = v279;
          v230(v279, v293, v232);
          v327[1] = v233;
          v234 = *(v38 + 16);
          v235 = v291;
          v234(v291, v294, a4);
          v327[2] = v235;
          v236 = v307;
          v234(v307, v295, a4);
          v327[3] = v236;
          v237 = v282;
          v234(v282, v296, a4);
          v327[4] = v237;
          v238 = v283;
          v234(v283, v297, a4);
          v327[5] = v238;
          v239 = v284;
          v234(v284, v298, a4);
          v327[6] = v239;
          v240 = v285;
          v234(v285, v299, a4);
          v327[7] = v240;
          v241 = v286;
          v234(v286, v300, a4);
          v327[8] = v241;
          v242 = v287;
          v234(v287, v302, a4);
          v327[9] = v242;
          v243 = v288;
          v234(v288, v303, a4);
          v327[10] = v243;
          v244 = v289;
          v234(v289, v304, a4);
          v327[11] = v244;
          v245 = v290;
          v234(v290, v305, a4);
          v327[12] = v245;
          v246 = v270;
          v234(v270, v280, a4);
          v327[13] = v246;
          v247 = v246;
          v326[0] = v232;
          v326[1] = v232;
          v326[2] = a4;
          v326[3] = a4;
          v326[4] = a4;
          v326[5] = a4;
          v326[6] = a4;
          v326[7] = a4;
          v326[8] = a4;
          v326[9] = a4;
          v326[10] = a4;
          v326[11] = a4;
          v326[12] = a4;
          v326[13] = a4;
          v311 = v229;
          WitnessTable = swift_getWitnessTable();
          v313 = WitnessTable;
          v314 = v229;
          v315 = v229;
          v316 = v229;
          v317 = v229;
          v318 = v229;
          v319 = v229;
          v320 = v229;
          v321 = v229;
          v322 = v229;
          v323 = v229;
          v324 = v229;
          v325 = v229;
          sub_10012E24C(v327, 14, v326);
          v248 = sub_100005474();
          v157(v248);
          (v157)(v305, a4);
          (v157)(v304, a4);
          (v157)(v303, a4);
          (v157)(v302, a4);
          (v157)(v300, a4);
          (v157)(v299, a4);
          (v157)(v298, a4);
          (v157)(v297, a4);
          (v157)(v296, a4);
          (v157)(v295, a4);
          (v157)(v294, a4);
          v249 = v276;
          v276(v293, v232);
          v249(v292, v232);
          (v157)(v247, a4);
          (v157)(v290, a4);
          (v157)(v289, a4);
          (v157)(v288, a4);
          (v157)(v287, a4);
          (v157)(v286, a4);
          (v157)(v285, a4);
          (v157)(v284, a4);
          (v157)(v283, a4);
          (v157)(v282, a4);
          (v157)(v307, a4);
          (v157)(v291, a4);
          v249(v279, v232);
          return (v249)(v306, v232);
        }
      }
    }

    goto LABEL_31;
  }

LABEL_28:
  sub_10001E640();
LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100722030@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD5980);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4D38);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v20, v21);
      __chkstk_darwin(v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for MoonScrubberInteractor();
      v19[3] = v11;
      v19[4] = &off_100C648F0;
      v19[0] = v10;
      v12 = type metadata accessor for MoonScrubberModule();
      v13 = swift_allocObject();
      v14 = sub_10002D7F8(v19, v11);
      __chkstk_darwin(v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v11;
      v13[6] = &off_100C648F0;
      v13[2] = v18;
      v13[7] = v5;
      sub_100006F14(v19);
      result = sub_100006F14(v20);
      a2[3] = v12;
      a2[4] = &off_100C6D9A8;
      *a2 = v13;
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

uint64_t sub_1007222AC()
{
  sub_10022C350(&qword_100CD5980);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD5988);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(qword_100CD5990);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4D38);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_1007223D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for MoonScrubberInteractor();
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    a2[3] = v4;
    a2[4] = &off_100C648F0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10072247C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MoonScrubberInputFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C56848;
  *a1 = result;
  return result;
}

uint64_t sub_1007224C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v4 = type metadata accessor for MoonScrubberViewModelFactory();
    swift_allocObject();
    result = sub_10048FBA4();
    a2[3] = v4;
    a2[4] = &off_100C594B0;
    *a2 = result;
  }

  return result;
}

uint64_t sub_10072255C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v22;
  v4 = v23;
  v6 = v21;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD5988);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v18, v19);
  v16 = type metadata accessor for MoonScrubberInputFactory();
  v17 = &off_100C56848;
  v15[0] = v7;
  sub_100035B30(v15, v14);
  v8 = swift_allocObject();
  sub_100013188(v14, v8 + 16);

  sub_100006F14(v15);
  sub_100006F14(v18);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1007228F4;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(qword_100CD5990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v10 = *sub_1000161C0(v18, v19);
    v16 = type metadata accessor for MoonScrubberViewModelFactory();
    v17 = &off_100C594B0;
    v15[0] = v10;
    sub_100035B30(v15, v14);
    v11 = swift_allocObject();
    sub_100013188(v14, v11 + 16);

    sub_100006F14(v15);
    sub_100006F14(v18);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10009F868;
    *(v12 + 24) = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1007228FC;
    *(v13 + 24) = v11;
    sub_10022C350(&qword_100CA4D38);
    swift_allocObject();
    return sub_10024BD0C(v3, v6, v5, v4, sub_100266DE8, 0, sub_10009F81C, v12, sub_1000E87D0, v13);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100722904()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10072299C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v309 = a1;
  v310 = a5;
  v308 = a3;
  v271 = a6;
  v8 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v8 - 8);
  v254 = v251 - v9;
  v252 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v252);
  sub_100003848();
  v281 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v269 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v268 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_100003878();
  v278 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_100003878();
  v266 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v275 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v263 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v261 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v273 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v258 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v272 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v255 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v251[0] = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v37 = v251 - v36;
  v38 = *(a4 - 8);
  __chkstk_darwin(v39);
  sub_100003848();
  v270 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  v290 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v289 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v288 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v287 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v286 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v285 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v284 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v283 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v282 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v267 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v280 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v265 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v305 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v264 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v304 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v262 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v303 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v260 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v302 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v259 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v300 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v257 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v299 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v256 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v298 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v253 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v297 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v251[3] = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v296 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v251[2] = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v295 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v251[1] = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v294 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  v109 = v251 - v108;
  __chkstk_darwin(v110);
  v112 = v251 - v111;
  v301 = type metadata accessor for Optional();
  v274 = *(v301 - 8);
  __chkstk_darwin(v301);
  sub_100003848();
  v279 = v113;
  sub_10000386C();
  __chkstk_darwin(v114);
  sub_100003878();
  v293 = v115;
  sub_10000386C();
  __chkstk_darwin(v116);
  v118 = v251 - v117;
  __chkstk_darwin(v119);
  v292 = v251 - v120;
  v121 = a2;
  sub_100566A40(a2, v328);
  v306 = v118;
  v307 = v109;
  v291 = v112;
  if (v329)
  {
    v122 = 1;
  }

  else
  {
    v123 = v328[3];
    v124 = v328[2];
    v125 = v38;
    v126 = v328[1];
    v277 = v121;
    v127 = v328[0];
    sub_1001B3B30(v309 + OBJC_IVAR____TtCV7Weather14DefaultContent8_Storage_airQuality, v37);
    v128 = v123;
    v109 = v307;
    v308(v37, v127, v126, v124, v128);
    sub_1001B4354(v37);
    v129 = v310;
    sub_1000833D8(v109, a4, v310);
    v130 = *(v125 + 8);
    v130(v109, a4);
    v131 = sub_100005480();
    v132 = v129;
    v118 = v306;
    sub_1000833D8(v131, v133, v132);
    v134 = sub_100005480();
    (v130)(v134);
    v38 = v125;
    v121 = v277;
    (*(v125 + 32))(v118, v109, a4);
    v122 = 0;
  }

  sub_10001B350(v118, v122, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v135, v136);
  v276 = *(v274 + 8);
  v277 = v274 + 8;
  v276(v118, v301);
  v137 = OBJC_IVAR____TtCV7Weather14DefaultContent8_Storage_map;
  v138 = v309;
  swift_beginAccess();
  v139 = v138 + v137;
  v140 = v254;
  sub_10026E174(v139, v254);
  if (sub_100024D10(v140, 1, v252) == 1)
  {
    sub_10026E1E4(v140);
LABEL_8:
    v142 = 1;
    v143 = v306;
    goto LABEL_10;
  }

  v141 = v251[0];
  sub_10026E24C(v140, v251[0]);
  sub_100566A5C(v121, v330);
  if (v330[32])
  {
    sub_1001B4354(v141);
    goto LABEL_8;
  }

  v144 = sub_100028198();
  v145(v144);
  sub_1001B4354(v141);
  v146 = v310;
  sub_1000833D8(v109, a4, v310);
  v147 = *(v38 + 8);
  v147(v307, a4);
  v148 = sub_100005480();
  sub_1000833D8(v148, v149, v146);
  v150 = sub_100005480();
  (v147)(v150);
  v143 = v306;
  (*(v38 + 32))(v306, v307, a4);
  v142 = 0;
LABEL_10:
  sub_10001B350(v143, v142, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v151, v152);
  v276(v143, v301);
  sub_10001420C();
  v154 = v255;
  sub_1001B3B30(v153 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v255);
  sub_100566A78(v121, v331);
  if (v332)
  {
    goto LABEL_28;
  }

  v308(v154, v331[0], v331[1], v331[2], v331[3]);
  sub_1001B4354(v154);
  v155 = sub_100005480();
  sub_1000833D8(v155, v156, v310);
  v157 = *(v38 + 8);
  v158 = sub_100005480();
  v157(v158);
  sub_10001420C();
  sub_1001B3B30(v159 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v272);
  sub_100566A94(v121, v333);
  if (v334)
  {
    goto LABEL_28;
  }

  v160 = v272;
  v308(v272, v333[0], v333[1], v333[2], v333[3]);
  sub_1001B4354(v160);
  v161 = sub_100005480();
  sub_1000833D8(v161, v162, v310);
  v163 = sub_100005480();
  v157(v163);
  sub_10001420C();
  v165 = v258;
  sub_1001B3B30(v164 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v258);
  sub_100566AB0(v121, v335);
  if (v335[32])
  {
    goto LABEL_31;
  }

  v166 = sub_10001926C();
  v167(v166);
  sub_1001B4354(v165);
  v168 = sub_100005480();
  sub_1000833D8(v168, v169, v310);
  v170 = sub_100005480();
  v157(v170);
  sub_10001420C();
  sub_1001B3B30(v171 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v273);
  sub_100566ACC(v121, v336);
  if (v337)
  {
    goto LABEL_28;
  }

  v172 = v273;
  v308(v273, v336[0], v336[1], v336[2], v336[3]);
  sub_1001B4354(v172);
  v173 = sub_100005480();
  sub_1000833D8(v173, v174, v310);
  v175 = sub_100005480();
  v157(v175);
  sub_10001420C();
  v177 = v261;
  sub_1001B3B30(v176 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v261);
  sub_100566AE8(v121, v338);
  if (v338[32])
  {
    goto LABEL_31;
  }

  v178 = sub_10001926C();
  v179(v178);
  sub_1001B4354(v177);
  v180 = sub_100005480();
  sub_1000833D8(v180, v181, v310);
  v182 = sub_100005480();
  v157(v182);
  sub_10001420C();
  v184 = v263;
  sub_1001B3B30(v183 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v263);
  sub_100566B04(v121, v339);
  if (v339[32])
  {
    goto LABEL_28;
  }

  v185 = sub_100028198();
  v186(v185);
  sub_1001B4354(v184);
  sub_100007FFC();
  sub_1000833D8(v187, v188, v189);
  v190 = sub_100005474();
  v157(v190);
  sub_10001420C();
  sub_1001B3B30(v191 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v275);
  sub_100566B20(v121, v340);
  if (v340[32])
  {
    goto LABEL_28;
  }

  v192 = v275;
  v193 = sub_100028198();
  v194(v193);
  sub_1001B4354(v192);
  sub_100007FFC();
  sub_1000833D8(v195, v196, v197);
  v198 = sub_100005474();
  v157(v198);
  sub_10001420C();
  v200 = v266;
  sub_1001B3B30(v199 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v266);
  sub_100566B3C(v121, v341);
  if (v341[32])
  {
LABEL_31:
    sub_100013470();
    goto LABEL_32;
  }

  v201 = sub_10001926C();
  v202(v201);
  sub_1001B4354(v200);
  v203 = sub_100005480();
  sub_1000833D8(v203, v204, v310);
  v205 = sub_100005480();
  v157(v205);
  sub_10001420C();
  sub_1001B3B30(v206 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v278);
  sub_100566B58(v121, v342);
  if ((v343 & 1) == 0)
  {
    v207 = v278;
    v308(v278, v342[0], v342[1], v342[2], v342[3]);
    sub_1001B4354(v207);
    v208 = sub_100005480();
    sub_1000833D8(v208, v209, v310);
    v210 = sub_100005480();
    v157(v210);
    sub_10001420C();
    v212 = v268;
    sub_1001B3B30(v211 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v268);
    sub_100566B74(v121, &v344);
    if ((v345 & 1) == 0)
    {
      v213 = sub_10001926C();
      v214(v213);
      sub_1001B4354(v212);
      v215 = sub_100005480();
      sub_1000833D8(v215, v216, v310);
      v217 = sub_100005480();
      v157(v217);
      sub_10001420C();
      v219 = v269;
      sub_1001B3B30(v218 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v269);
      sub_100566B90(v121, &v346);
      if ((v347 & 1) == 0)
      {
        v220 = sub_100028198();
        v221(v220);
        sub_1001B4354(v219);
        sub_100007FFC();
        sub_1000833D8(v222, v223, v224);
        v225 = sub_100005474();
        v157(v225);
        sub_10001420C();
        sub_1001B3B30(v226 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v281);
        sub_100566BAC(v121, v348);
        if ((v349 & 1) == 0)
        {
          v227 = v267;
          v228 = v281;
          v308(v281, v348[0], v348[1], v348[2], v348[3]);
          sub_1001B4354(v228);
          v229 = v310;
          sub_1000833D8(v227, a4, v310);
          (v157)(v227, a4);
          v230 = *(v274 + 16);
          v231 = v306;
          v232 = v301;
          v230(v306, v292, v301);
          v327[0] = v231;
          v233 = v279;
          v230(v279, v293, v232);
          v327[1] = v233;
          v234 = *(v38 + 16);
          v235 = v291;
          v234(v291, v294, a4);
          v327[2] = v235;
          v236 = v307;
          v234(v307, v295, a4);
          v327[3] = v236;
          v237 = v282;
          v234(v282, v296, a4);
          v327[4] = v237;
          v238 = v283;
          v234(v283, v297, a4);
          v327[5] = v238;
          v239 = v284;
          v234(v284, v298, a4);
          v327[6] = v239;
          v240 = v285;
          v234(v285, v299, a4);
          v327[7] = v240;
          v241 = v286;
          v234(v286, v300, a4);
          v327[8] = v241;
          v242 = v287;
          v234(v287, v302, a4);
          v327[9] = v242;
          v243 = v288;
          v234(v288, v303, a4);
          v327[10] = v243;
          v244 = v289;
          v234(v289, v304, a4);
          v327[11] = v244;
          v245 = v290;
          v234(v290, v305, a4);
          v327[12] = v245;
          v246 = v270;
          v234(v270, v280, a4);
          v327[13] = v246;
          v247 = v246;
          v326[0] = v232;
          v326[1] = v232;
          v326[2] = a4;
          v326[3] = a4;
          v326[4] = a4;
          v326[5] = a4;
          v326[6] = a4;
          v326[7] = a4;
          v326[8] = a4;
          v326[9] = a4;
          v326[10] = a4;
          v326[11] = a4;
          v326[12] = a4;
          v326[13] = a4;
          v311 = v229;
          WitnessTable = swift_getWitnessTable();
          v313 = WitnessTable;
          v314 = v229;
          v315 = v229;
          v316 = v229;
          v317 = v229;
          v318 = v229;
          v319 = v229;
          v320 = v229;
          v321 = v229;
          v322 = v229;
          v323 = v229;
          v324 = v229;
          v325 = v229;
          sub_10012E24C(v327, 14, v326);
          v248 = sub_100005474();
          v157(v248);
          (v157)(v305, a4);
          (v157)(v304, a4);
          (v157)(v303, a4);
          (v157)(v302, a4);
          (v157)(v300, a4);
          (v157)(v299, a4);
          (v157)(v298, a4);
          (v157)(v297, a4);
          (v157)(v296, a4);
          (v157)(v295, a4);
          (v157)(v294, a4);
          v249 = v276;
          v276(v293, v232);
          v249(v292, v232);
          (v157)(v247, a4);
          (v157)(v290, a4);
          (v157)(v289, a4);
          (v157)(v288, a4);
          (v157)(v287, a4);
          (v157)(v286, a4);
          (v157)(v285, a4);
          (v157)(v284, a4);
          (v157)(v283, a4);
          (v157)(v282, a4);
          (v157)(v307, a4);
          (v157)(v291, a4);
          v249(v279, v232);
          return (v249)(v306, v232);
        }
      }
    }

    goto LABEL_31;
  }

LABEL_28:
  sub_10001E640();
LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100724004(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return sub_100724014(a1, v2);
}

uint64_t sub_100724014(uint64_t a1, int a2)
{
  v429 = a2;
  v3 = sub_10022C350(&qword_100CA65C0);
  __chkstk_darwin(v3 - 8);
  v399 = &v359 - v4;
  v5 = sub_10022C350(&qword_100CA65D0);
  __chkstk_darwin(v5 - 8);
  v398 = &v359 - v6;
  v7 = sub_10022C350(&qword_100CA65C8);
  __chkstk_darwin(v7 - 8);
  v397 = &v359 - v8;
  v427 = type metadata accessor for LocationPreviewModalViewState(0);
  v9 = __chkstk_darwin(v427);
  *&v448 = &v359 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v415 = &v359 - v11;
  v426 = type metadata accessor for LocationPreviewViewState(0);
  v12 = __chkstk_darwin(v426);
  *&v446 = &v359 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v417 = &v359 - v14;
  v449 = type metadata accessor for ViewState(0);
  v15 = __chkstk_darwin(v449);
  v370 = &v359 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v382 = &v359 - v18;
  __chkstk_darwin(v17);
  *&v445 = &v359 - v19;
  v447 = type metadata accessor for TimeState();
  v20 = __chkstk_darwin(v447);
  v396 = &v359 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v425 = &v359 - v23;
  __chkstk_darwin(v22);
  *&v444 = &v359 - v24;
  v452 = type metadata accessor for NotificationsOptInState();
  v25 = __chkstk_darwin(v452);
  v395 = &v359 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v424 = &v359 - v28;
  __chkstk_darwin(v27);
  v443 = &v359 - v29;
  v453 = type metadata accessor for NotificationsState();
  v30 = __chkstk_darwin(v453);
  v394 = &v359 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v423 = &v359 - v33;
  __chkstk_darwin(v32);
  v442 = &v359 - v34;
  v455 = type metadata accessor for LocationsState();
  v35 = __chkstk_darwin(v455);
  v393 = &v359 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v422 = &v359 - v38;
  __chkstk_darwin(v37);
  v441 = &v359 - v39;
  v451 = type metadata accessor for EnvironmentState();
  v40 = __chkstk_darwin(v451);
  v392 = &v359 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v421 = &v359 - v43;
  __chkstk_darwin(v42);
  v440 = &v359 - v44;
  v450 = type metadata accessor for AppConfigurationState();
  v45 = __chkstk_darwin(v450);
  v391 = &v359 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v420 = &v359 - v48;
  __chkstk_darwin(v47);
  v439 = &v359 - v49;
  v50 = sub_10022C350(&qword_100CA65E8);
  v51 = __chkstk_darwin(v50 - 8);
  v366 = &v359 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v365 = &v359 - v54;
  v55 = __chkstk_darwin(v53);
  v377 = &v359 - v56;
  v57 = __chkstk_darwin(v55);
  v376 = &v359 - v58;
  v59 = __chkstk_darwin(v57);
  v405 = &v359 - v60;
  __chkstk_darwin(v59);
  v404 = &v359 - v61;
  v62 = sub_10022C350(&qword_100CA6610);
  v63 = __chkstk_darwin(v62 - 8);
  *(&v369 + 1) = &v359 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __chkstk_darwin(v63);
  v390 = &v359 - v66;
  v67 = __chkstk_darwin(v65);
  v381 = &v359 - v68;
  v69 = __chkstk_darwin(v67);
  v419 = &v359 - v70;
  v71 = __chkstk_darwin(v69);
  v409 = &v359 - v72;
  __chkstk_darwin(v71);
  v438 = &v359 - v73;
  v74 = sub_10022C350(&qword_100CA6618);
  v75 = __chkstk_darwin(v74 - 8);
  *&v369 = &v359 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __chkstk_darwin(v75);
  v389 = &v359 - v78;
  v79 = __chkstk_darwin(v77);
  v380 = &v359 - v80;
  v81 = __chkstk_darwin(v79);
  v418 = &v359 - v82;
  v83 = __chkstk_darwin(v81);
  v408 = &v359 - v84;
  __chkstk_darwin(v83);
  v437 = &v359 - v85;
  v86 = sub_10022C350(&qword_100CA6620);
  v87 = __chkstk_darwin(v86 - 8);
  v368 = &v359 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __chkstk_darwin(v87);
  v388 = &v359 - v90;
  v91 = __chkstk_darwin(v89);
  v379 = &v359 - v92;
  v93 = __chkstk_darwin(v91);
  v416 = &v359 - v94;
  v95 = __chkstk_darwin(v93);
  v407 = &v359 - v96;
  __chkstk_darwin(v95);
  v436 = &v359 - v97;
  v98 = sub_10022C350(&qword_100CA6628);
  v99 = __chkstk_darwin(v98 - 8);
  v367 = &v359 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __chkstk_darwin(v99);
  v386 = &v359 - v102;
  v103 = __chkstk_darwin(v101);
  v378 = &v359 - v104;
  v105 = __chkstk_darwin(v103);
  v413 = &v359 - v106;
  v107 = __chkstk_darwin(v105);
  v406 = &v359 - v108;
  __chkstk_darwin(v107);
  v435 = &v359 - v109;
  v110 = sub_10022C350(&qword_100CA6630);
  v111 = __chkstk_darwin(v110 - 8);
  v364 = &v359 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __chkstk_darwin(v111);
  v385 = &v359 - v114;
  v115 = __chkstk_darwin(v113);
  v375 = &v359 - v116;
  v117 = __chkstk_darwin(v115);
  v412 = &v359 - v118;
  v119 = __chkstk_darwin(v117);
  v403 = &v359 - v120;
  __chkstk_darwin(v119);
  v433 = &v359 - v121;
  v122 = sub_10022C350(&qword_100CA6638);
  v123 = __chkstk_darwin(v122 - 8);
  v363 = &v359 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __chkstk_darwin(v123);
  v384 = &v359 - v126;
  v127 = __chkstk_darwin(v125);
  v374 = &v359 - v128;
  v129 = __chkstk_darwin(v127);
  v411 = &v359 - v130;
  v131 = __chkstk_darwin(v129);
  v402 = &v359 - v132;
  __chkstk_darwin(v131);
  v432 = &v359 - v133;
  v134 = sub_10022C350(&qword_100CA6640);
  v135 = __chkstk_darwin(v134 - 8);
  v362 = &v359 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __chkstk_darwin(v135);
  v383 = &v359 - v138;
  v139 = __chkstk_darwin(v137);
  v373 = &v359 - v140;
  v141 = __chkstk_darwin(v139);
  v410 = &v359 - v142;
  v143 = __chkstk_darwin(v141);
  v401 = &v359 - v144;
  __chkstk_darwin(v143);
  v431 = &v359 - v145;
  v428 = type metadata accessor for SunriseSunsetDetailViewState();
  v146 = __chkstk_darwin(v428);
  v360 = &v359 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __chkstk_darwin(v146);
  v371 = &v359 - v149;
  __chkstk_darwin(v148);
  v151 = &v359 - v150;
  v152 = type metadata accessor for ModalViewState(0);
  v153 = __chkstk_darwin(v152);
  v361 = &v359 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __chkstk_darwin(v153);
  v387 = &v359 - v156;
  v157 = __chkstk_darwin(v155);
  v159 = &v359 - v158;
  v160 = __chkstk_darwin(v157);
  v372 = &v359 - v161;
  v162 = __chkstk_darwin(v160);
  v414 = &v359 - v163;
  v164 = __chkstk_darwin(v162);
  v166 = &v359 - v165;
  v167 = __chkstk_darwin(v164);
  v430 = &v359 - v168;
  v169 = __chkstk_darwin(v167);
  v400 = &v359 - v170;
  v171 = __chkstk_darwin(v169);
  v434 = &v359 - v172;
  __chkstk_darwin(v171);
  v174 = &v359 - v173;
  v175 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  v176 = __chkstk_darwin(v175);
  v178 = &v359 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v176);
  v180 = &v359 - v179;
  v181 = a1;
  v454 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  sub_1000BCA80(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v174, type metadata accessor for ModalViewState);
  v182 = v152;
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1000D39A4(v174, v180, type metadata accessor for ModalViewState.LocationDetailModal);
    sub_1000D39A4(v180, v178, type metadata accessor for ModalViewState.LocationDetailModal);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1000D39A4(v178, v151, type metadata accessor for SunriseSunsetDetailViewState);
      sub_10001B350(v431, 1, 1, v450);
      sub_10001B350(v432, 1, 1, v451);
      sub_10001B350(v433, 1, 1, v455);
      sub_10001B350(v435, 1, 1, v453);
      sub_10001B350(v436, 1, 1, v452);
      v183 = v447;
      sub_10001B350(v437, 1, 1, v447);
      v184 = v449;
      sub_10001B350(v438, 1, 1, v449);
      v185 = type metadata accessor for Location();
      v186 = v404;
      (*(*(v185 - 8) + 16))(v404, v151, v185);
      v187 = v428;
      v188 = &v151[*(v428 + 20)];
      v189 = v188[32];
      v190 = *(v188 + 1);
      v448 = *v188;
      v446 = v190;
      sub_1000E00F0(v151, type metadata accessor for SunriseSunsetDetailViewState);
      v191 = v186 + *(v187 + 20);
      v192 = v446;
      *v191 = v448;
      *(v191 + 16) = v192;
      *(v191 + 32) = v189;
      *(v186 + *(v187 + 24)) = v429;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v186, 0, 1, v182);
      v193 = v181;
      v194 = v400;
      sub_1000BCA80(v181 + v454, v400, type metadata accessor for ModalViewState);
      v195 = v186;
      v196 = v405;
      sub_1002AB08C(v195, v405, &qword_100CA65E8);
      if (sub_100024D10(v196, 1, v182) == 1)
      {
        sub_1000180EC(v196, &qword_100CA65E8);
      }

      else
      {
        sub_1000E00F0(v194, type metadata accessor for ModalViewState);
        sub_1000D39A4(v196, v194, type metadata accessor for ModalViewState);
      }

      v257 = v406;
      v258 = v402;
      v259 = v184;
      sub_1000D39A4(v194, v434, type metadata accessor for ModalViewState);
      v260 = *(v193 + 16);
      LODWORD(v448) = *(v193 + 24);
      v261 = v401;
      sub_1002AB08C(v431, v401, &qword_100CA6640);
      v262 = v450;
      v263 = sub_100024D10(v261, 1, v450);
      v264 = v455;
      v454 = v260;
      if (v263 == 1)
      {
        sub_1000BCA80(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v439, type metadata accessor for AppConfigurationState);
        v265 = sub_100024D10(v261, 1, v262);

        v266 = v453;
        v267 = v451;
        if (v265 != 1)
        {
          sub_1000180EC(v261, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000D39A4(v261, v439, type metadata accessor for AppConfigurationState);

        v266 = v453;
        v267 = v451;
      }

      sub_1002AB08C(v432, v258, &qword_100CA6638);
      if (sub_100024D10(v258, 1, v267) == 1)
      {
        v268 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        sub_1000BCA80(v193 + v268, v440, type metadata accessor for EnvironmentState);
        v269 = sub_100024D10(v258, 1, v267);
        v270 = v409;
        v271 = v407;
        v272 = v259;
        if (v269 != 1)
        {
          sub_1000180EC(v258, &qword_100CA6638);
        }
      }

      else
      {
        sub_1000D39A4(v258, v440, type metadata accessor for EnvironmentState);
        v270 = v409;
        v271 = v407;
        v272 = v259;
      }

      v273 = v403;
      sub_1002AB08C(v433, v403, &qword_100CA6630);
      if (sub_100024D10(v273, 1, v264) == 1)
      {
        sub_1000BCA80(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v441, type metadata accessor for LocationsState);
        v274 = sub_100024D10(v273, 1, v264);
        v275 = v408;
        if (v274 != 1)
        {
          sub_1000180EC(v273, &qword_100CA6630);
        }
      }

      else
      {
        sub_1000D39A4(v273, v441, type metadata accessor for LocationsState);
        v275 = v408;
      }

      sub_1002AB08C(v435, v257, &qword_100CA6628);
      if (sub_100024D10(v257, 1, v266) == 1)
      {
        sub_1000BCA80(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v442, type metadata accessor for NotificationsState);
        v276 = sub_100024D10(v257, 1, v266);
        v277 = v445;
        if (v276 != 1)
        {
          sub_1000180EC(v257, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000D39A4(v257, v442, type metadata accessor for NotificationsState);
        v277 = v445;
      }

      sub_1002AB08C(v436, v271, &qword_100CA6620);
      v278 = v452;
      if (sub_100024D10(v271, 1, v452) == 1)
      {
        sub_1000BCA80(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn, v443, type metadata accessor for NotificationsOptInState);
        if (sub_100024D10(v271, 1, v278) != 1)
        {
          sub_1000180EC(v271, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000D39A4(v271, v443, type metadata accessor for NotificationsOptInState);
      }

      sub_1002AB08C(v437, v275, &qword_100CA6618);
      if (sub_100024D10(v275, 1, v183) == 1)
      {
        sub_1000BCA80(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v444, type metadata accessor for TimeState);
        if (sub_100024D10(v275, 1, v183) != 1)
        {
          sub_1000180EC(v275, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000D39A4(v275, v444, type metadata accessor for TimeState);
      }

      sub_1002AB08C(v438, v270, &qword_100CA6610);
      if (sub_100024D10(v270, 1, v272) == 1)
      {
        sub_1000BCA80(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v277, type metadata accessor for ViewState);
        if (sub_100024D10(v270, 1, v272) != 1)
        {
          sub_1000180EC(v270, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000D39A4(v270, v277, type metadata accessor for ViewState);
      }

      v279 = v430;
      sub_1000D39A4(v434, v430, type metadata accessor for ModalViewState);
      v281 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v280 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v283 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v282 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v284 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v286 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v285 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v287 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v358) = v284;
      sub_10003E038(v454, v448, v439, v440, v441, v442, v443, v444, v445, v279, v281, v280, v283, v282, v358, v286, v285, v287, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375);
      v199 = v288;

      goto LABEL_118;
    }

    v197 = type metadata accessor for ModalViewState.LocationDetailModal;
    v198 = v178;
  }

  else
  {
    v197 = type metadata accessor for ModalViewState;
    v198 = v174;
  }

  sub_1000E00F0(v198, v197);
  v199 = v181;
  v200 = v454;
  sub_1000BCA80(v181 + v454, v166, type metadata accessor for ModalViewState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v202 = v455;
  v203 = v448;
  if (EnumCaseMultiPayload)
  {
    sub_1000E00F0(v166, type metadata accessor for ModalViewState);
  }

  else
  {
    v204 = v417;
    sub_1000D39A4(v166, v417, type metadata accessor for LocationPreviewViewState);
    v205 = v415;
    sub_1000BCA80(v204 + *(v426 + 20), v415, type metadata accessor for LocationPreviewModalViewState);
    v206 = v427;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v207 = v371;
      sub_1000D39A4(v205, v371, type metadata accessor for SunriseSunsetDetailViewState);
      sub_10001B350(v410, 1, 1, v450);
      sub_10001B350(v411, 1, 1, v451);
      sub_10001B350(v412, 1, 1, v202);
      sub_10001B350(v413, 1, 1, v453);
      sub_10001B350(v416, 1, 1, v452);
      sub_10001B350(v418, 1, 1, v447);
      sub_10001B350(v419, 1, 1, v449);
      v208 = type metadata accessor for PreviewLocation();
      v209 = v204;
      v210 = v397;
      sub_10001B350(v397, 1, 1, v208);
      v211 = v428;
      v212 = v207 + *(v428 + 20);
      v213 = *(v212 + 32);
      v214 = type metadata accessor for Location();
      v215 = *(*(v214 - 8) + 16);
      v216 = *(v212 + 16);
      v448 = *v212;
      v446 = v216;
      v217 = v398;
      v215(v398, v207, v214);
      v218 = v217 + *(v211 + 20);
      v219 = v446;
      *v218 = v448;
      *(v218 + 16) = v219;
      *(v218 + 32) = v213;
      *(v217 + *(v211 + 24)) = v429;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v217, 0, 1, v206);
      v220 = type metadata accessor for SelectedSearchResult();
      v221 = v399;
      sub_10001B350(v399, 1, 1, v220);
      v222 = v376;
      sub_10043DB64(v210, v217, v221, v376);
      sub_1000180EC(v221, &qword_100CA65C0);
      sub_1000180EC(v217, &qword_100CA65D0);
      sub_1000180EC(v210, &qword_100CA65C8);
      sub_1000E00F0(v207, type metadata accessor for SunriseSunsetDetailViewState);
      sub_1000E00F0(v209, type metadata accessor for LocationPreviewViewState);
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v222, 0, 1, v182);
      v223 = v372;
      sub_1000BCA80(v199 + v454, v372, type metadata accessor for ModalViewState);
      v224 = v377;
      sub_1002AB08C(v222, v377, &qword_100CA65E8);
      if (sub_100024D10(v224, 1, v182) == 1)
      {
        sub_1000180EC(v224, &qword_100CA65E8);
      }

      else
      {
        sub_1000E00F0(v223, type metadata accessor for ModalViewState);
        sub_1000D39A4(v224, v223, type metadata accessor for ModalViewState);
      }

      v289 = v379;
      v290 = v378;
      v291 = v375;
      v292 = v373;
      sub_1000D39A4(v223, v414, type metadata accessor for ModalViewState);
      v293 = *(v199 + 16);
      LODWORD(v448) = *(v199 + 24);
      sub_1002AB08C(v410, v292, &qword_100CA6640);
      v294 = v450;
      v295 = sub_100024D10(v292, 1, v450);
      v296 = v455;
      if (v295 == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v420, type metadata accessor for AppConfigurationState);
        v297 = sub_100024D10(v292, 1, v294);

        v298 = v297 == 1;
        v299 = v380;
        v300 = v374;
        if (!v298)
        {
          sub_1000180EC(v292, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000D39A4(v292, v420, type metadata accessor for AppConfigurationState);

        v299 = v380;
        v300 = v374;
      }

      v454 = v293;
      sub_1002AB08C(v411, v300, &qword_100CA6638);
      v301 = v451;
      if (sub_100024D10(v300, 1, v451) == 1)
      {
        v302 = v300;
        v303 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        sub_1000BCA80(v199 + v303, v421, type metadata accessor for EnvironmentState);
        v304 = sub_100024D10(v302, 1, v301);
        v305 = v382;
        v306 = v381;
        if (v304 != 1)
        {
          sub_1000180EC(v302, &qword_100CA6638);
        }
      }

      else
      {
        sub_1000D39A4(v300, v421, type metadata accessor for EnvironmentState);
        v305 = v382;
        v306 = v381;
      }

      sub_1002AB08C(v412, v291, &qword_100CA6630);
      if (sub_100024D10(v291, 1, v296) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v422, type metadata accessor for LocationsState);
        if (sub_100024D10(v291, 1, v296) != 1)
        {
          sub_1000180EC(v291, &qword_100CA6630);
        }
      }

      else
      {
        sub_1000D39A4(v291, v422, type metadata accessor for LocationsState);
      }

      sub_1002AB08C(v413, v290, &qword_100CA6628);
      if (sub_100024D10(v290, 1, v453) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v423, type metadata accessor for NotificationsState);
        if (sub_100024D10(v290, 1, v453) != 1)
        {
          sub_1000180EC(v290, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000D39A4(v290, v423, type metadata accessor for NotificationsState);
      }

      sub_1002AB08C(v416, v289, &qword_100CA6620);
      v307 = v452;
      if (sub_100024D10(v289, 1, v452) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn, v424, type metadata accessor for NotificationsOptInState);
        if (sub_100024D10(v289, 1, v307) != 1)
        {
          sub_1000180EC(v289, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000D39A4(v289, v424, type metadata accessor for NotificationsOptInState);
      }

      sub_1002AB08C(v418, v299, &qword_100CA6618);
      v308 = v447;
      if (sub_100024D10(v299, 1, v447) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v425, type metadata accessor for TimeState);
        if (sub_100024D10(v299, 1, v308) != 1)
        {
          sub_1000180EC(v299, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000D39A4(v299, v425, type metadata accessor for TimeState);
      }

      sub_1002AB08C(v419, v306, &qword_100CA6610);
      v309 = v449;
      if (sub_100024D10(v306, 1, v449) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v305, type metadata accessor for ViewState);
        v310 = sub_100024D10(v306, 1, v309);
        v311 = v305;
        if (v310 != 1)
        {
          sub_1000180EC(v306, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000D39A4(v306, v305, type metadata accessor for ViewState);
        v311 = v305;
      }

      v312 = v430;
      sub_1000D39A4(v414, v430, type metadata accessor for ModalViewState);
      v314 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v313 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v316 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v315 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v317 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v318 = v199;
      v320 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v319 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v321 = *(v318 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v358) = v317;
      sub_10003E038(v454, v448, v420, v421, v422, v423, v424, v425, v311, v312, v314, v313, v316, v315, v358, v320, v319, v321, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375);
      goto LABEL_117;
    }

    sub_1000E00F0(v204, type metadata accessor for LocationPreviewViewState);
    sub_1000E00F0(v205, type metadata accessor for LocationPreviewModalViewState);
    v200 = v454;
  }

  sub_1000BCA80(v181 + v200, v159, type metadata accessor for ModalViewState);
  v225 = swift_getEnumCaseMultiPayload();
  v226 = v446;
  if (v225 != 4)
  {
    v230 = type metadata accessor for ModalViewState;
    v231 = v159;
    goto LABEL_17;
  }

  v227 = type metadata accessor for ModalViewState.MapViewModal(0);
  v228 = sub_100024D10(v159, 1, v227);
  v229 = v449;
  if (v228 != 1)
  {
    sub_1000D39A4(v159, v226, type metadata accessor for LocationPreviewViewState);
    sub_1000BCA80(v226 + *(v426 + 20), v203, type metadata accessor for LocationPreviewModalViewState);
    v236 = v427;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v237 = v360;
      sub_1000D39A4(v203, v360, type metadata accessor for SunriseSunsetDetailViewState);
      sub_10001B350(v383, 1, 1, v450);
      sub_10001B350(v384, 1, 1, v451);
      sub_10001B350(v385, 1, 1, v202);
      sub_10001B350(v386, 1, 1, v453);
      sub_10001B350(v388, 1, 1, v452);
      sub_10001B350(v389, 1, 1, v447);
      sub_10001B350(v390, 1, 1, v229);
      v238 = type metadata accessor for PreviewLocation();
      v239 = v397;
      sub_10001B350(v397, 1, 1, v238);
      v240 = v428;
      v241 = v236;
      v242 = v237 + *(v428 + 20);
      v243 = *(v242 + 32);
      v244 = type metadata accessor for Location();
      v245 = *(*(v244 - 8) + 16);
      v246 = *v242;
      v444 = *(v242 + 16);
      v445 = v246;
      *&v448 = v182;
      v247 = v226;
      v248 = v398;
      v245(v398, v237, v244);
      v249 = v248 + *(v240 + 20);
      v250 = v444;
      *v249 = v445;
      *(v249 + 16) = v250;
      *(v249 + 32) = v243;
      *(v248 + *(v240 + 24)) = v429;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v248, 0, 1, v241);
      v251 = type metadata accessor for SelectedSearchResult();
      v252 = v399;
      sub_10001B350(v399, 1, 1, v251);
      v253 = v365;
      sub_10043DB64(v239, v248, v252, v365);
      sub_1000180EC(v252, &qword_100CA65C0);
      sub_1000180EC(v248, &qword_100CA65D0);
      sub_1000180EC(v239, &qword_100CA65C8);
      sub_1000E00F0(v237, type metadata accessor for SunriseSunsetDetailViewState);
      sub_1000E00F0(v247, type metadata accessor for LocationPreviewViewState);
      sub_10001B350(v253, 0, 1, v227);
      v254 = v448;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v253, 0, 1, v254);
      v255 = v361;
      sub_1000BCA80(v199 + v454, v361, type metadata accessor for ModalViewState);
      v256 = v366;
      sub_1002AB08C(v253, v366, &qword_100CA65E8);
      if (sub_100024D10(v256, 1, v254) == 1)
      {
        sub_1000180EC(v256, &qword_100CA65E8);
      }

      else
      {
        sub_1000E00F0(v255, type metadata accessor for ModalViewState);
        sub_1000D39A4(v256, v255, type metadata accessor for ModalViewState);
      }

      v323 = v368;
      v324 = v367;
      v325 = v364;
      v326 = v362;
      sub_1000D39A4(v255, v387, type metadata accessor for ModalViewState);
      v327 = *(v199 + 16);
      LODWORD(v448) = *(v199 + 24);
      sub_1002AB08C(v383, v326, &qword_100CA6640);
      v328 = v450;
      v329 = sub_100024D10(v326, 1, v450);
      v330 = v453;
      v331 = v455;
      if (v329 == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v391, type metadata accessor for AppConfigurationState);
        v332 = sub_100024D10(v326, 1, v328);

        v298 = v332 == 1;
        v333 = v369;
        v334 = v363;
        if (!v298)
        {
          sub_1000180EC(v326, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000D39A4(v326, v391, type metadata accessor for AppConfigurationState);

        v333 = v369;
        v334 = v363;
      }

      v454 = v327;
      sub_1002AB08C(v384, v334, &qword_100CA6638);
      v335 = v451;
      if (sub_100024D10(v334, 1, v451) == 1)
      {
        v336 = v334;
        v337 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        sub_1000BCA80(v199 + v337, v392, type metadata accessor for EnvironmentState);
        v338 = sub_100024D10(v336, 1, v335);
        v339 = v370;
        v340 = *(&v369 + 1);
        if (v338 != 1)
        {
          sub_1000180EC(v336, &qword_100CA6638);
        }
      }

      else
      {
        sub_1000D39A4(v334, v392, type metadata accessor for EnvironmentState);
        v339 = v370;
        v340 = *(&v369 + 1);
      }

      sub_1002AB08C(v385, v325, &qword_100CA6630);
      if (sub_100024D10(v325, 1, v331) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v393, type metadata accessor for LocationsState);
        if (sub_100024D10(v325, 1, v331) != 1)
        {
          sub_1000180EC(v325, &qword_100CA6630);
        }
      }

      else
      {
        sub_1000D39A4(v325, v393, type metadata accessor for LocationsState);
      }

      sub_1002AB08C(v386, v324, &qword_100CA6628);
      if (sub_100024D10(v324, 1, v330) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v394, type metadata accessor for NotificationsState);
        if (sub_100024D10(v324, 1, v330) != 1)
        {
          sub_1000180EC(v324, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000D39A4(v324, v394, type metadata accessor for NotificationsState);
      }

      sub_1002AB08C(v388, v323, &qword_100CA6620);
      v341 = v452;
      if (sub_100024D10(v323, 1, v452) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn, v395, type metadata accessor for NotificationsOptInState);
        if (sub_100024D10(v323, 1, v341) != 1)
        {
          sub_1000180EC(v323, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000D39A4(v323, v395, type metadata accessor for NotificationsOptInState);
      }

      sub_1002AB08C(v389, v333, &qword_100CA6618);
      v342 = v447;
      if (sub_100024D10(v333, 1, v447) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v396, type metadata accessor for TimeState);
        v343 = sub_100024D10(v333, 1, v342);
        v344 = v449;
        if (v343 != 1)
        {
          sub_1000180EC(v333, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000D39A4(v333, v396, type metadata accessor for TimeState);
        v344 = v449;
      }

      sub_1002AB08C(v390, v340, &qword_100CA6610);
      if (sub_100024D10(v340, 1, v344) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v339, type metadata accessor for ViewState);
        v345 = v339;
        if (sub_100024D10(v340, 1, v344) != 1)
        {
          sub_1000180EC(v340, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000D39A4(v340, v339, type metadata accessor for ViewState);
        v345 = v339;
      }

      v346 = v430;
      sub_1000D39A4(v387, v430, type metadata accessor for ModalViewState);
      v348 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v347 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v350 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v349 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v351 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v352 = v199;
      v354 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v353 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v355 = *(v352 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v358) = v351;
      sub_10003E038(v454, v448, v391, v392, v393, v394, v395, v396, v345, v346, v348, v347, v350, v349, v358, v354, v353, v355, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375);
LABEL_117:
      v356 = v322;

      v199 = v356;
LABEL_118:

      return v199;
    }

    sub_1000E00F0(v226, type metadata accessor for LocationPreviewViewState);
    v230 = type metadata accessor for LocationPreviewModalViewState;
    v231 = v203;
LABEL_17:
    sub_1000E00F0(v231, v230);
    goto LABEL_18;
  }

  sub_1000180EC(v159, &qword_100CA65E0);
LABEL_18:
  if (qword_100CA2700 != -1)
  {
    swift_once();
  }

  v232 = type metadata accessor for Logger();
  sub_10000703C(v232, qword_100D90B68);
  v233 = Logger.logObject.getter();
  v234 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v233, v234))
  {
    v235 = swift_slowAlloc();
    *v235 = 0;
    _os_log_impl(&_mh_execute_header, v233, v234, "Update data state when there is no modal presented", v235, 2u);
  }

  return v199;
}