uint64_t sub_1007FDCC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CDB0D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007FDD38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

_BYTE *sub_1007FDD94(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1007FDE6C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1007FDEAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1007FDEF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1007FDF18()
{
  result = qword_100CDB0D8;
  if (!qword_100CDB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB0D8);
  }

  return result;
}

unint64_t sub_1007FDF80()
{
  result = qword_100CDB0E0;
  if (!qword_100CDB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB0E0);
  }

  return result;
}

void *sub_1007FDFD4(void *a1)
{
  v3 = sub_10022C350(&qword_100CDB0F0);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  v9 = sub_1000161C0(a1, a1[3]);
  sub_1007FE7CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100006F14(a1);
  }

  else
  {
    sub_1007FE820();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v3);
    v9 = v11[15];
    sub_100006F14(a1);
  }

  return v9;
}

uint64_t sub_1007FE138(void *a1, char a2)
{
  v4 = sub_10022C350(&qword_100CDB108);
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  sub_1000161C0(a1, a1[3]);
  sub_1007FE7CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = (v6 + 8);
  if (a2)
  {
    if (a2 == 1)
    {
      v12[14] = 1;
    }

    else
    {
      v12[15] = 2;
    }

    sub_1007FE874();
  }

  else
  {
    v12[13] = 0;
    sub_1007FE874();
  }

  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*v10)(v9, v4);
}

unint64_t sub_1007FE2C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45268, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1007FE310(char a1)
{
  if (!a1)
  {
    return 0x756F72676B636162;
  }

  if (a1 == 1)
  {
    return 0x756F726765726F66;
  }

  return 0x6E6968636E75616CLL;
}

BOOL sub_1007FE378@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002136F4(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1007FE3AC@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1002136F4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1007FE3D8(uint64_t a1)
{
  v2 = sub_1007FE7CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007FE414(uint64_t a1)
{
  v2 = sub_1007FE7CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1007FE474@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007FE2C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1007FE4A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007FE310(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1007FE580@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007FDFD4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1007FE5C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CDB118);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a1[3] = v2;
  a1[4] = sub_1007FE8C8();
  v8 = sub_100042FB0(a1);
  return (*(v4 + 32))(v8, v7, v2);
}

uint64_t sub_1007FE738()
{
  sub_1007FE92C();

  return ShortDescribable.description.getter();
}

unint64_t sub_1007FE778()
{
  result = qword_100CDB0E8;
  if (!qword_100CDB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB0E8);
  }

  return result;
}

unint64_t sub_1007FE7CC()
{
  result = qword_100CDB0F8;
  if (!qword_100CDB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB0F8);
  }

  return result;
}

unint64_t sub_1007FE820()
{
  result = qword_100CDB100;
  if (!qword_100CDB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB100);
  }

  return result;
}

unint64_t sub_1007FE874()
{
  result = qword_100CDB110;
  if (!qword_100CDB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB110);
  }

  return result;
}

unint64_t sub_1007FE8C8()
{
  result = qword_100CDB120;
  if (!qword_100CDB120)
  {
    sub_10022E824(&qword_100CDB118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB120);
  }

  return result;
}

unint64_t sub_1007FE92C()
{
  result = qword_100CDB128;
  if (!qword_100CDB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB128);
  }

  return result;
}

_BYTE *sub_1007FE980(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AppLifecycleState.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1007FEB0C()
{
  result = qword_100CDB130;
  if (!qword_100CDB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB130);
  }

  return result;
}

unint64_t sub_1007FEB64()
{
  result = qword_100CDB138;
  if (!qword_100CDB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB138);
  }

  return result;
}

unint64_t sub_1007FEBBC()
{
  result = qword_100CDB140;
  if (!qword_100CDB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB140);
  }

  return result;
}

unint64_t sub_1007FEC14()
{
  result = qword_100CDB148;
  if (!qword_100CDB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB148);
  }

  return result;
}

unint64_t sub_1007FEC68()
{
  result = qword_100CDB150;
  if (!qword_100CDB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB150);
  }

  return result;
}

void sub_1007FECE4()
{
  sub_100020DF0();
  v1 = v0;
  sub_10022C350(&qword_100CDB408);
  sub_100018784();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CF8();
  sub_100806904();
  sub_100008B5C();
  sub_1000302D8(v3, v4, v5);
  sub_100453998();
  sub_10003A3A8(*(v1 + 8));
  sub_100008B5C();
  sub_10011C0F0(v6, v7, v8);
  sub_10003C890();
  sub_1000212EC();
}

void sub_1007FEDB0()
{
  sub_100020DF0();
  v3 = v2;
  v5 = v4;
  sub_10022C350(&qword_100CDB3F0);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100003CF8();
  v7 = sub_10022C350(&qword_100CBAD88);
  type metadata accessor for AxisGridLine();
  (*(*(v7 - 8) + 16))(v1, *v3, v7);
  sub_100453574();
  v8 = *(v0 + 56);
  sub_1000302D8(v3[1], v1 + v8, &qword_100CBAD70);
  sub_10002CA80();
  v9();
  sub_10011C0F0(v1 + v8, v5 + *(v0 + 56), &qword_100CBAD70);
  sub_1000212EC();
}

void sub_1007FEEE8()
{
  sub_100020DF0();
  v1 = v0;
  sub_10022C350(&qword_100CDB400);
  sub_100018784();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CF8();
  sub_100643AC4();
  sub_100008B5C();
  sub_1000302D8(v3, v4, v5);
  sub_100643C50();
  sub_10003A3A8(*(v1 + 8));
  sub_100008B5C();
  sub_10011C0F0(v6, v7, v8);
  sub_10003C890();
  sub_1000212EC();
}

void sub_1007FEFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100020DF0();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = sub_100003A24(v23, v27);
  sub_10022C350(v28);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v29);
  v31 = &a9 - v30;
  v32 = sub_10022C350(v22);
  type metadata accessor for AxisGridLine();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v31, *v24, v32);
  v34 = sub_10022C350(&qword_100CBAE08);
  type metadata accessor for AxisTick();
  (*(*(v34 - 8) + 16))(&v31[*(v18 + 56)], v24[1], v34);
  (*(v33 + 32))(v26, v31, v32);
  v35 = sub_1000372CC();
  v36(v35);
  sub_1000212EC();
}

void sub_1007FF14C()
{
  sub_100020DF0();
  v1 = v0;
  sub_10022C350(&qword_100CDB418);
  sub_100018784();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CF8();
  sub_100806988();
  sub_100008B5C();
  sub_1000302D8(v3, v4, v5);
  sub_100453998();
  sub_10003A3A8(*(v1 + 8));
  sub_100008B5C();
  sub_10011C0F0(v6, v7, v8);
  sub_10003C890();
  sub_1000212EC();
}

void sub_1007FF218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100020DF0();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  sub_10022C350(&qword_100CDB410);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &a9 - v24;
  sub_10066A9DC();
  sub_100008B5C();
  sub_1000302D8(v26, v27, v28);
  v29 = sub_10022C350(&qword_100CCF668);
  sub_10023FBF4(&qword_100CCF660, &unk_100CCF658);
  (*(*(v29 - 8) + 16))(&v25[*(v18 + 56)], *(v22 + 8), v29);
  sub_100008B5C();
  sub_10011C0F0(v30, v31, v32);
  v33 = sub_1000372CC();
  v34(v33);
  sub_1000212EC();
}

uint64_t sub_1007FF370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CDB3E8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  sub_100806798();
  sub_1000302D8(*a1, v7, &qword_100CDB3C0);
  v8 = sub_10022C350(&qword_100CDB3D0);
  sub_10023FBF4(&qword_100CDB3C8, &qword_100CDB3D0);
  v9 = *(v5 + 56);
  v10 = *(v8 - 8);
  (*(v10 + 16))(&v7[v9], a1[1], v8);
  sub_10066A9DC();
  v11 = *(v5 + 72);
  sub_1000302D8(a1[2], &v7[v11], &qword_100CCF650);
  sub_10011C0F0(v7, a2, &qword_100CDB3C0);
  (*(v10 + 32))(a2 + *(v5 + 56), &v7[v9], v8);
  return sub_10011C0F0(&v7[v11], a2 + *(v5 + 72), &qword_100CCF650);
}

void sub_1007FF53C()
{
  sub_10000C778();
  v3 = v2;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&qword_100CA2D60);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100003CF8();
  v12 = type metadata accessor for SunriseSunsetInteractiveChartView();
  sub_1000302D8(v0 + *(v12 + 36), v1, &qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    (*(v13 + 32))(v3, v1);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v10, v4);
  }

  sub_10000536C();
}

void sub_1007FF704()
{
  sub_10000C778();
  v72 = v0;
  v65 = v1;
  v66 = v2;
  v4 = v3;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v74 = v6;
  v75 = v5;
  __chkstk_darwin(v5);
  sub_1000038E4();
  v69 = v7;
  sub_1000038CC();
  v70 = type metadata accessor for Location();
  sub_1000037C4();
  v68 = v8;
  __chkstk_darwin(v9);
  sub_1000038E4();
  v67 = v10;
  sub_1000038CC();
  v73 = type metadata accessor for Calendar();
  sub_1000037C4();
  v71 = v11;
  __chkstk_darwin(v12);
  sub_1000038E4();
  v64 = v13;
  sub_1000038CC();
  v14 = type metadata accessor for ShadowModel();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_1000038E4();
  v63 = v16;
  sub_1000038CC();
  v17 = type metadata accessor for SunriseSunsetDetailChartContentStyle.TwilightSunColors();
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_1000038E4();
  v62 = v19;
  sub_1000038CC();
  type metadata accessor for Color.RGBColorSpace();
  sub_1000037C4();
  v59 = v20;
  v60 = v21;
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_10022C350(&unk_100CB2CF0);
  sub_1000037E8();
  __chkstk_darwin(v22);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v59 - v26;
  v28 = type metadata accessor for Date();
  v29 = sub_10000900C();
  sub_10001B350(v29, v30, v31, v28);
  sub_1000302D8(v27, v24, &unk_100CB2CF0);
  State.init(wrappedValue:)();
  sub_100018198(v27, &unk_100CB2CF0);
  v32 = type metadata accessor for SunriseSunsetInteractiveChartView();
  v33 = sub_10000900C();
  sub_10001B350(v33, v34, v35, v28);
  sub_1000302D8(v27, v24, &unk_100CB2CF0);
  State.init(wrappedValue:)();
  sub_100018198(v27, &unk_100CB2CF0);
  v36 = v32[7];
  v76 = 0;
  State.init(wrappedValue:)();
  *(v4 + v36) = v77[0];
  v37 = v32[9];
  *(v4 + v37) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60);
  swift_storeEnumTagMultiPayload();
  *(v4 + v32[12]) = 0x4030000000000000;
  v38 = v4;
  v61 = v32[13];
  v39 = *(v60 + 104);
  v40 = sub_100028BE8();
  v39(v40);
  v60 = Color.init(_:red:green:blue:opacity:)();
  v41 = sub_100028BE8();
  v39(v41);
  sub_1000216F4();
  v42 = sub_100028BE8();
  v39(v42);
  sub_1000216F4();
  v43 = sub_100028BE8();
  v39(v43);
  sub_1000216F4();
  v44 = sub_100028BE8();
  v39(v44);
  sub_1000216F4();
  sub_100003940();
  SunriseSunsetDetailChartContentStyle.TwilightSunColors.init(twilightCivil:twilightNautical:twilightAstronomical:)();
  static SunriseSunsetDetailChartContentStyle.defaultNightLineGradient.getter();
  static SunriseSunsetDetailChartContentStyle.defaultDayLineGradient.getter();
  static Image.sunriseSunsetDay.getter();
  static Image.sunriseSunsetNight.getter();
  static ShadowModel.clear.getter();
  sub_100003940();
  SunriseSunsetDetailChartContentStyle.init(nightLineGradient:dayLineGradient:daySunImage:nightSunImage:dayNightLineWidth:horizonLineWidth:horizonLineColor:horizonLineShadow:sunImageWidth:nightSunColor:nightSunSymbolSize:twilightSunColors:twilightSunSymbolSize:)();
  *(v4 + v32[14]) = 0x4024000000000000;
  *(v4 + v32[15]) = 0x4030000000000000;
  *(v4 + v32[16]) = 0x4000000000000000;
  v45 = v65;
  v46 = v66;
  v47 = *(v65 + 8);
  *&v77[0] = *v65;
  v63 = v47;
  v48 = v4 + v32[5];
  v49 = *(v65 + 16);
  *v48 = *v65;
  *(v48 + 16) = v49;
  *(v48 + 32) = *(v45 + 32);
  sub_1000302D8(v46, v4 + v32[8], &qword_100CDB158);
  v50 = objc_allocWithZone(UISelectionFeedbackGenerator);
  sub_1007FFE10(v77, &v76);

  *(v38 + v32[10]) = [v50 init];
  v51 = v32[11];
  v52 = type metadata accessor for SunriseSunsetDetailChartViewModel();
  sub_100003928();
  v54 = v53;
  v55 = v72;
  (*(v53 + 16))(v38 + v51, v72, v52);
  v56 = v64;
  static Calendar.current.getter();
  v57 = v67;
  SunriseSunsetDetailChartViewModel.location.getter();
  v58 = v69;
  Location.timeZone.getter();
  (*(v68 + 8))(v57, v70);
  Calendar.withTimeZone(_:)();
  sub_1007FFE6C(v77);

  (*(v54 + 8))(v55, v52);
  sub_100018198(v46, &qword_100CDB158);
  (*(v74 + 8))(v58, v75);
  (*(v71 + 8))(v56, v73);
  sub_10000536C();
}

uint64_t type metadata accessor for SunriseSunsetInteractiveChartView()
{
  result = qword_100CDB1B8;
  if (!qword_100CDB1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007FFEE8()
{
  sub_10080013C(319, &qword_100CBB7E8, &unk_100CB2CF0, &unk_100A2D7F0, &type metadata accessor for State);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_10080013C(319, &unk_100CC0E40, &qword_100CC07D8, &unk_100A84020, &type metadata accessor for Binding);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1008000EC();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_10080013C(319, &qword_100CDB1C8, &qword_100CAB930, &unk_100A3A7C0, &type metadata accessor for Binding);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_100578820();
          v1 = v9;
          if (v10 <= 0x3F)
          {
            v1 = sub_10000C70C(319, &unk_100CDB1D0);
            if (v11 <= 0x3F)
            {
              v1 = type metadata accessor for SunriseSunsetDetailChartViewModel();
              if (v12 <= 0x3F)
              {
                v1 = type metadata accessor for SunriseSunsetDetailChartContentStyle();
                if (v13 <= 0x3F)
                {
                  v1 = type metadata accessor for Calendar();
                  if (v14 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1008000EC()
{
  if (!qword_100CD22A8[0])
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, qword_100CD22A8);
    }
  }
}

void sub_10080013C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10022E824(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1008001BC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v158 = a1;
  type metadata accessor for SunriseSunsetInteractiveChartView();
  sub_1000037C4();
  v156 = v4;
  __chkstk_darwin(v5);
  v162 = v6;
  sub_100003990(&v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  v154 = v7;
  __chkstk_darwin(v8);
  sub_1000038E4();
  sub_100003990(v9);
  v139 = type metadata accessor for PlotDimensionScaleRange();
  sub_1000037C4();
  v135 = v10;
  __chkstk_darwin(v11);
  sub_1000038E4();
  sub_100003990(v12);
  v13 = sub_10022C350(&qword_100CBABB8);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v130 - v15;
  v17 = sub_10022C350(&qword_100CDB230);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v18);
  sub_100003CF8();
  v133 = sub_10022C350(&qword_100CDB238);
  sub_1000037C4();
  v132 = v19;
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  sub_100003990(v21);
  v138 = sub_10022C350(&qword_100CDB240);
  sub_1000037C4();
  v137 = v22;
  sub_100003828();
  __chkstk_darwin(v23);
  sub_1000039BC();
  sub_100003990(v24);
  v144 = sub_10022C350(&qword_100CDB248);
  sub_1000037C4();
  v141 = v25;
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  sub_100003990(v27);
  v146 = sub_10022C350(&qword_100CDB250);
  sub_1000037C4();
  v143 = v28;
  sub_100003828();
  __chkstk_darwin(v29);
  sub_1000039BC();
  sub_100003990(v30);
  v148 = sub_10022C350(&qword_100CDB258);
  sub_1000037C4();
  v147 = v31;
  sub_100003828();
  __chkstk_darwin(v32);
  sub_1000039BC();
  sub_100003990(v33);
  v150 = sub_10022C350(&qword_100CDB260);
  sub_1000037C4();
  v149 = v34;
  sub_100003828();
  __chkstk_darwin(v35);
  sub_1000039BC();
  sub_100003990(v36);
  v152 = sub_10022C350(&qword_100CDB268);
  sub_1000037C4();
  v151 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  sub_100003990(v39);
  v164 = v1;
  type metadata accessor for SunriseSunsetDetailChartContent();
  sub_100806118(&qword_100CDB270, &type metadata accessor for SunriseSunsetDetailChartContent);
  Chart.init(content:)();
  v40 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v2 + *(sub_10022C350(&qword_100CDB278) + 36);
  *v49 = v40;
  *(v49 + 8) = v42;
  *(v49 + 16) = v44;
  *(v49 + 24) = v46;
  *(v49 + 32) = v48;
  *(v49 + 40) = 0;
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5F28();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v50 = (v2 + *(v17 + 36));
  v51 = v173;
  *v50 = v172;
  v50[1] = v51;
  v50[2] = v174;
  v165 = SunriseSunsetDetailChartViewModel.xDomain.getter();
  v52 = type metadata accessor for ScaleType();
  v163 = v3;
  v131 = v52;
  v53 = sub_10000900C();
  sub_10001B350(v53, v54, v55, v56);
  v57 = v16;
  v130 = sub_10022C350(&qword_100CA72D0);
  v58 = sub_1008059FC();
  v59 = sub_100805B40(&qword_100CCF570, &qword_100CA72D0);
  v60 = v17;
  View.chartXScale<A>(domain:type:)();
  sub_100018198(v57, &qword_100CBABB8);

  sub_100018198(v2, &qword_100CDB230);
  sub_10022C350(&qword_100CAB9C0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100A2D320;
  SunriseSunsetDetailChartViewModel.chartMinYValue.getter();
  *(v61 + 32) = v62;
  SunriseSunsetDetailChartViewModel.chartMaxYValue.getter();
  *(v61 + 40) = v63;
  v171 = v61;
  v64 = v134;
  static PositionScaleRange<>.plotDimension(startPadding:endPadding:)();
  sub_10001B350(v57, 1, 1, v131);
  v65 = sub_100003940();
  v66 = sub_10022C350(v65);
  v165 = v60;
  v166 = v130;
  v167 = v58;
  v168 = v59;
  v67 = sub_10004EB1C();
  v68 = sub_100805B40(&qword_100CCF580, &qword_100CCF578);
  v69 = v136;
  sub_10002CA80();
  v70 = v133;
  v71 = v139;
  v72 = v159;
  View.chartYScale<A, B>(domain:range:type:)();
  sub_100018198(v57, &qword_100CBABB8);
  sub_10000E73C();
  v73(v64, v71);

  sub_10000E73C();
  v75 = v74(v72, v70);
  v159 = &v130;
  __chkstk_darwin(v75);
  sub_100031848();
  v76 = v163;
  *(v77 - 16) = v163;
  v135 = sub_10022C350(&qword_100CDB2A0);
  v165 = v70;
  v166 = v66;
  v167 = v71;
  v168 = v67;
  v169 = v68;
  v170 = &protocol witness table for PlotDimensionScaleRange;
  v78 = sub_10004EB1C();
  v79 = sub_10022E824(&qword_100CDB2A8);
  v80 = sub_10022E824(&qword_100CDB2B0);
  sub_100014F44();
  v139 = v81;
  v83 = sub_10023FBF4(v82, &qword_100CDB2A8);
  v84 = sub_100805BC8();
  v165 = v79;
  v166 = v80;
  v167 = v83;
  v168 = v84;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v140;
  v87 = v138;
  v88 = v135;
  View.chartXAxis<A>(content:)();
  sub_10000E73C();
  v90 = v89(v69, v87);
  __chkstk_darwin(v90);
  sub_100031848();
  *(v91 - 16) = v76;
  v92 = sub_10022C350(&qword_100CDB2D8);
  v165 = v87;
  v166 = v88;
  v167 = v78;
  v168 = OpaqueTypeConformance2;
  v93 = sub_10004EB1C();
  v94 = sub_10022E824(&qword_100CDB2E0);
  v95 = sub_10022E824(&qword_100CDB2E8);
  v96 = sub_10023FBF4(&qword_100CDB2F0, &qword_100CDB2E0);
  v97 = sub_100805C98();
  v165 = v94;
  v166 = v95;
  v167 = v96;
  v168 = v97;
  v98 = swift_getOpaqueTypeConformance2();
  v99 = v142;
  v100 = v144;
  View.chartYAxis<A>(content:)();
  sub_10000E73C();
  v101(v86, v100);
  v102 = v154;
  v103 = v153;
  v104 = v155;
  (*(v154 + 104))(v153, enum case for DynamicTypeSize.large(_:), v155);
  v165 = v100;
  v166 = v92;
  v167 = v93;
  v168 = v98;
  v105 = sub_10004EB1C();
  v106 = v145;
  v107 = v146;
  View.dynamicTypeSize(_:)();
  (*(v102 + 8))(v103, v104);
  sub_10000E73C();
  v109 = v108(v99, v107);
  __chkstk_darwin(v109);
  sub_100031848();
  v110 = v163;
  *(v111 - 16) = v163;
  v155 = sub_10022C350(&qword_100CB90B0);
  v165 = v107;
  v166 = v105;
  v112 = sub_10004EB1C();
  v113 = sub_100433B9C();
  v114 = v148;
  View.accessibilityRepresentation<A>(representation:)();
  sub_10000E73C();
  v115(v106, v114);
  v116 = v157;
  sub_100805D58(v110, v157);
  v117 = (*(v156 + 80) + 16) & ~*(v156 + 80);
  v118 = sub_100041B80();
  sub_100805DBC(v116, v118 + v117);
  static Alignment.center.getter();
  v119 = sub_10022C350(&qword_100CDB310);
  v165 = v114;
  v166 = v155;
  v167 = v112;
  v168 = v113;
  v120 = sub_10004EB1C();
  v121 = sub_100805E8C();
  v122 = v150;
  v123 = v160;
  View.chartBackground<A>(alignment:content:)();

  sub_10000E73C();
  v124(v123, v122);
  sub_100805D58(v163, v116);
  v125 = sub_100041B80();
  sub_100805DBC(v116, v125 + v117);
  static Alignment.center.getter();
  sub_10022C350(&qword_100CDB340);
  v165 = v122;
  v166 = v119;
  v167 = v120;
  v168 = v121;
  sub_10004EB1C();
  sub_100806040();
  v126 = v152;
  v127 = v161;
  View.chartOverlay<A>(alignment:content:)();

  sub_10000E73C();
  return v128(v127, v126);
}

uint64_t sub_100801180(uint64_t a1)
{
  v2 = type metadata accessor for SunriseSunsetDetailChartContentStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SunriseSunsetDetailChartViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SunriseSunsetInteractiveChartView();
  (*(v7 + 16))(v9, a1 + *(v10 + 44), v6);
  (*(v3 + 16))(v5, a1 + *(v10 + 52), v2);
  return SunriseSunsetDetailChartContent.init(model:style:sampleBlocks:)();
}

void sub_100801318()
{
  sub_10000C778();
  v1 = v0;
  v45 = v2;
  v3 = type metadata accessor for AxisMarkPosition();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000038E4();
  v44 = v5;
  sub_1000038CC();
  v6 = type metadata accessor for AxisMarkPreset();
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000038E4();
  v43 = v8;
  sub_1000038CC();
  v9 = type metadata accessor for SunriseSunsetInteractiveChartView();
  v10 = v9 - 8;
  v41 = *(v9 - 8);
  v11 = *(v41 + 64);
  __chkstk_darwin(v9);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CBADB0);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  v23 = type metadata accessor for AxisMarkValues();
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000037D8();
  v40 = sub_10022C350(&qword_100CDB2A8);
  sub_1000037C4();
  v42 = v25;
  sub_100003828();
  v27 = __chkstk_darwin(v26);
  v29 = &v38 - v28;
  (*(v18 + 104))(v22, enum case for Calendar.Component.hour(_:), v16, v27);
  v30 = *(v10 + 76);
  v31 = type metadata accessor for Calendar();
  sub_1000037E8();
  (*(v32 + 16))(v15, v1 + v30, v31);
  sub_10001B350(v15, 0, 1, v31);
  static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
  sub_100018198(v15, &qword_100CBADB0);
  (*(v18 + 8))(v22, v16);
  v33 = v39;
  sub_100805D58(v1, v39);
  v34 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v35 = swift_allocObject();
  sub_100805DBC(v33, v35 + v34);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_10022C350(&qword_100CDB3A8);
  sub_1008066D0();
  AxisMarks.init(preset:position:values:content:)();
  sub_10022C350(&qword_100CDB2B0);
  sub_100014F44();
  sub_10023FBF4(v36, &qword_100CDB2A8);
  sub_100805BC8();
  v37 = v40;
  AxisContent.compositingLayer<A>(style:)();
  (*(v42 + 8))(v29, v37);
  sub_10000536C();
}

void sub_100801788()
{
  sub_10000C778();
  v1 = type metadata accessor for AxisMarkPosition();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000037D8();
  v3 = type metadata accessor for AxisMarkPreset();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000037D8();
  v5 = type metadata accessor for AxisMarkValues();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = sub_10022C350(&qword_100CDB2E0);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_100003CF8();
  sub_10014AB54();
  static AxisMarkValues.stride<A>(by:roundLowerBound:roundUpperBound:)();
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_10022C350(&qword_100CCF650);
  sub_10066A9DC();
  AxisMarks.init(preset:position:values:content:)();
  sub_10022C350(&qword_100CDB2E8);
  sub_100014F44();
  sub_10023FBF4(v11, &qword_100CDB2E0);
  sub_100805C98();
  AxisContent.compositingLayer<A>(style:)();
  (*(v9 + 8))(v0, v7);
  sub_10000536C();
}

uint64_t sub_1008019E8@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v54 = a2;
  v2 = type metadata accessor for AccessibilityCustomContentKey();
  __chkstk_darwin(v2 - 8);
  v60 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel();
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for AccessibilityCustomContentEntry();
  v61 = *(v58 - 8);
  __chkstk_darwin(v58);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CB90B0);
  __chkstk_darwin(v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v16 = *(v7 + 20);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(&v9[v16], v17, v18);
  __asm { FMOV            V0.2D, #5.0 }

  *v9 = _Q0;
  LocalizedStringKey.init(stringLiteral:)();
  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  v28 = v27;
  sub_100806118(&qword_100CA47B8, &type metadata accessor for RoundedRectangle);
  View.accessibilityLabel(_:)();
  sub_10010CD64(v24, v26, v28 & 1);

  sub_100433DB4(v9);
  LocalizedStringKey.init(stringLiteral:)();
  v29 = Text.init(_:tableName:bundle:comment:)();
  v31 = v30;
  v33 = v32;
  v52 = v15;
  v53 = v10;
  ModifiedContent<>.accessibilityHint(_:)();
  sub_10010CD64(v29, v31, v33 & 1);

  sub_100018198(v12, &qword_100CB90B0);
  type metadata accessor for SunriseSunsetInteractiveChartView();
  v34 = SunriseSunsetDetailChartViewModel.sunEventAccessibilityModels.getter();
  v35 = *(v34 + 16);
  if (v35)
  {
    v64 = _swiftEmptyArrayStorage;
    sub_1006A838C();
    v36 = v64;
    v37 = v56 + 16;
    v38 = *(v56 + 16);
    v39 = *(v56 + 80);
    v50 = v34;
    v40 = v34 + ((v39 + 32) & ~v39);
    v56 = *(v56 + 72);
    v57 = v38;
    v41 = (v37 - 8);
    v55 = v61 + 32;
    v42 = v37;
    v43 = v51;
    do
    {
      v44 = v59;
      v45 = v42;
      v57(v5, v40, v59);
      SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.label.getter();
      LocalizedStringKey.init(_:)();
      AccessibilityCustomContentKey.init(_:)();
      v62 = SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.value.getter();
      v63 = v46;
      sub_10002D5A4();
      Text.init<A>(_:)();
      AccessibilityCustomContentEntry.init(_:value:importance:)();
      (*v41)(v5, v44);
      v64 = v36;
      v47 = v36[2];
      if (v47 >= v36[3] >> 1)
      {
        sub_1006A838C();
        v43 = v51;
        v36 = v64;
      }

      v36[2] = v47 + 1;
      (*(v61 + 32))(v36 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v47, v43, v58);
      v40 += v56;
      --v35;
      v42 = v45;
    }

    while (v35);
  }

  v48 = v52;
  ModifiedContent<>.accessibilityCustomContent(_:)();

  return sub_100018198(v48, &qword_100CB90B0);
}

void *sub_100801FFC@<X0>(void *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CCD140);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for SunriseSunsetChartBackground();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SunriseSunsetInteractiveChartView();
  SunriseSunsetDetailChartViewModel.chartBackground.getter();
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    sub_100018198(v4, &qword_100CCD140);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v26[0] = 0;
    ChartProxy.position<A>(forY:)();
    if ((v9 & 1) == 0)
    {
      SunriseSunsetChartBackground.gradient.getter();
      LinearGradient.init(gradient:startPoint:endPoint:)();
      v16 = v19;
      ChartProxy.plotSize.getter();
      SunriseSunsetDetailChartContentStyle.horizonLineWidth.getter();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v18[6] = v22;
      *&v18[22] = v23;
      *&v18[38] = v24;
      SunriseSunsetChartBackground.opacity.getter();
      v11 = v10;
      static Alignment.topLeading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v12 = *(v6 + 8);
      v14 = v21;
      v15 = v20;
      v12(v8, v5);
      v17[0] = v16;
      *&v17[1] = v15;
      *&v17[3] = v14;
      LOWORD(v17[5]) = 256;
      *(&v17[5] + 2) = *v18;
      *(&v17[7] + 2) = *&v18[16];
      *(&v17[9] + 2) = *&v18[32];
      v17[11] = *&v18[46];
      v17[12] = v11;
      memcpy(&v17[13], v25, 0x70uLL);
      LocationSearchEntityFromStringResolver.init()();
      memcpy(v26, v17, 0xD8uLL);
      return memcpy(a1, v26, 0xD8uLL);
    }

    (*(v6 + 8))(v8, v5);
  }

  sub_100806630(v26);
  return memcpy(a1, v26, 0xD8uLL);
}

void *sub_10080235C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CDB358);
  __chkstk_darwin(v6 - 8);
  v8 = &__src[-v7];
  *v8 = static Alignment.topLeading.getter();
  v8[1] = v9;
  v10 = sub_10022C350(&qword_100CDB360);
  sub_1008024AC(a2, a1, v8 + *(v10 + 44));
  static Alignment.topLeading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10011C0F0(v8, a3, &qword_100CDB358);
  v11 = sub_10022C350(&qword_100CDB340);
  return memcpy((a3 + *(v11 + 36)), __src, 0x70uLL);
}

uint64_t sub_1008024AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v96 = a2;
  v92 = a3;
  v4 = type metadata accessor for LocalCoordinateSpace();
  v90 = *(v4 - 8);
  v91 = v4;
  __chkstk_darwin(v4);
  v89 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ChartProxy();
  v77 = *(v86 - 8);
  __chkstk_darwin(v86);
  v95 = v6;
  v83 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SunriseSunsetInteractiveChartView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v93 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChartDragGestureRecognizerRepresentable();
  v79 = *(v10 - 8);
  v80 = v10;
  __chkstk_darwin(v10);
  v78 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CDB368);
  v81 = *(v12 - 8);
  v82 = v12;
  __chkstk_darwin(v12);
  v94 = &v67 - v13;
  v14 = sub_10022C350(&qword_100CDB370);
  v87 = *(v14 - 8);
  v88 = v14;
  __chkstk_darwin(v14);
  v85 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v84 = &v67 - v17;
  v18 = *(v7 + 20);
  v97 = a1;
  v19 = a1 + v18;
  v20 = *(v19 + 8);
  v21 = *(v19 + 32);
  *&v107[0] = *v19;
  *(&v107[0] + 1) = v20;
  v107[1] = *(v19 + 16);
  LOBYTE(v107[2]) = v21;
  sub_10022C350(&qword_100CDB378);
  Binding.wrappedValue.getter();
  if (v106[2])
  {
    sub_1008060F8(v107);
  }

  else
  {
    v22 = *v106;
    v23 = *&v106[1];
    SunriseSunsetDetailChartViewModel.chartMinYValue.getter();
    *&v107[0] = v24;
    ChartProxy.position<A>(forY:)();
    v73 = v9;
    v74 = v8;
    if (v25)
    {
      v75 = 0;
      v76 = 0;
      v26 = 0;
      v71 = 0;
      v72 = 0;
      v69 = 0;
      v70 = 0;
      v27 = 0;
      v28 = 0.0;
    }

    else
    {
      v76 = static Color.white.getter();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v26 = v106[32];
      v75 = v106[33];
      v71 = v106[35];
      v72 = v106[34];
      v27 = 256;
      v28 = v22;
      v69 = v106[37];
      v70 = v106[36];
    }

    v67 = v27;
    v68 = static Alignment.center.getter();
    v30 = v29;
    v31 = v97;
    sub_100802F0C(v107);
    memcpy(v99, v107, sizeof(v99));
    memcpy(v100, v107, sizeof(v100));
    sub_1000302D8(v99, v106, &qword_100CDB390);
    sub_100018198(v100, &qword_100CDB390);
    v32 = *(v31 + *(v7 + 60)) * 0.5;
    v33 = v22 - v32;
    v34 = v23 - v32;
    memcpy(&v105[2], v99, 0x80uLL);
    v35 = v75;
    v101[0] = v76;
    v101[1] = v27;
    v101[2] = v26;
    v101[3] = v75;
    v36 = v71;
    v37 = v72;
    v101[4] = v72;
    v101[5] = v71;
    v39 = v69;
    v38 = v70;
    v101[6] = v70;
    v101[7] = v69;
    *&v101[8] = v28;
    v101[9] = 0;
    LOBYTE(v101[10]) = 0;
    memcpy(v98, v101, 0x51uLL);
    v104[0] = v68;
    v104[1] = v30;
    memcpy(&v104[2], v99, 0x80uLL);
    *&v104[18] = v33;
    *&v104[19] = v34;
    LOBYTE(v104[20]) = 0;
    memcpy(&v98[88], v104, 0xA1uLL);
    v105[0] = v68;
    v105[1] = v30;
    *&v105[18] = v33;
    *&v105[19] = v34;
    LOBYTE(v105[20]) = 0;
    sub_1000302D8(v101, v107, &qword_100CDB398);
    sub_1000302D8(v104, v107, &qword_100CDB3A0);
    sub_100018198(v105, &qword_100CDB3A0);
    v102[0] = v76;
    v102[1] = v67;
    v102[2] = v26;
    v102[3] = v35;
    v102[4] = v37;
    v102[5] = v36;
    v102[6] = v38;
    v102[7] = v39;
    *&v102[8] = v28;
    v102[9] = 0;
    v103 = 0;
    sub_100018198(v102, &qword_100CDB398);
    memcpy(v106, v98, 0xF9uLL);
    LocationSearchEntityFromStringResolver.init()();
    memcpy(v107, v106, 0xF9uLL);
    v9 = v73;
    v8 = v74;
  }

  v76 = static Color.clear.getter();
  v106[0] = v76;
  LOWORD(v106[1]) = 256;
  BYTE2(v106[1]) = 0;
  v40 = v93;
  sub_100805D58(v97, v93);
  v41 = v77;
  v75 = *(v77 + 16);
  v42 = v83;
  v43 = v86;
  v75(v83, v96, v86);
  v44 = *(v8 + 80);
  v45 = *(v41 + 80);
  v46 = (v44 + 16) & ~v44;
  v47 = (v9 + v45 + v46) & ~v45;
  v73 = v44 | v45;
  v74 = v46;
  v48 = swift_allocObject();
  sub_100805DBC(v40, v48 + v46);
  v77 = *(v41 + 32);
  (v77)(v48 + v47, v42, v43);
  v49 = v78;
  ChartDragGestureRecognizerRepresentable.init(isRecognizedHandler:)();
  v72 = sub_10022C350(&qword_100CCE098);
  v50 = sub_10064B084();
  v71 = sub_100806118(&qword_100CCE0A8, &type metadata accessor for ChartDragGestureRecognizerRepresentable);
  v51 = v80;
  View.gestureRecognizer<A>(_:)();
  (*(v79 + 8))(v49, v51);

  v52 = v93;
  sub_100805D58(v97, v93);
  v75(v42, v96, v43);
  v53 = swift_allocObject();
  sub_100805DBC(v52, v53 + v74);
  (v77)(v53 + v47, v42, v43);
  v54 = v89;
  static CoordinateSpaceProtocol<>.local.getter();
  v106[0] = v72;
  v106[1] = v51;
  v106[2] = v50;
  v106[3] = v71;
  swift_getOpaqueTypeConformance2();
  v55 = v84;
  v56 = v82;
  v57 = v91;
  v58 = v94;
  View.onContinuousHover<A>(coordinateSpace:perform:)();

  (*(v90 + 8))(v54, v57);
  (*(v81 + 8))(v58, v56);
  memcpy(v104, v107, 0xF9uLL);
  v60 = v87;
  v59 = v88;
  v61 = *(v87 + 16);
  v62 = v85;
  v61(v85, v55, v88);
  memcpy(v105, v104, 0xF9uLL);
  v63 = v92;
  memcpy(v92, v104, 0xF9uLL);
  v64 = sub_10022C350(&qword_100CDB380);
  v61(&v63[*(v64 + 48)], v62, v59);
  sub_1000302D8(v105, v106, &qword_100CDB388);
  v65 = *(v60 + 8);
  v65(v55, v59);
  v65(v62, v59);
  memcpy(v106, v104, 0xF9uLL);
  return sub_100018198(v106, &qword_100CDB388);
}

uint64_t sub_100802F0C@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  v3 = Color.init(_:)();
  type metadata accessor for SunriseSunsetInteractiveChartView();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v8[3] = *&v8[27];
  *&v8[11] = *&v8[35];
  *&v8[19] = v9;
  v4 = static Color.white.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v7[6] = v10;
  *&v7[22] = v11;
  *&v7[38] = v12;
  *v13 = v3;
  *&v13[8] = 256;
  *&v13[10] = *v8;
  *&v13[26] = *&v8[8];
  *&v13[42] = *&v8[16];
  *&v13[56] = *(&v9 + 1);
  *v14 = v4;
  v6[2] = *&v13[32];
  v6[3] = *&v13[48];
  v6[0] = *v13;
  v6[1] = *&v13[16];
  *&v14[8] = 256;
  *&v14[10] = *v7;
  *&v14[56] = *(&v12 + 1);
  *&v14[42] = *&v7[32];
  *&v14[26] = *&v7[16];
  v6[6] = *&v14[32];
  v6[7] = *&v14[48];
  v6[4] = *v14;
  v6[5] = *&v14[16];
  memcpy(a1, v6, 0x80uLL);
  v15 = v4;
  v16 = 256;
  v17 = *v7;
  v18 = *&v7[16];
  *v19 = *&v7[32];
  *&v19[14] = *&v7[46];
  sub_1000302D8(v13, &v20, &qword_100CBB260);
  sub_1000302D8(v14, &v20, &qword_100CBB260);
  sub_100018198(&v15, &qword_100CBB260);
  v20 = v3;
  v21 = 256;
  v22 = *v8;
  v23 = *&v8[8];
  *v24 = *&v8[16];
  *&v24[14] = *&v8[23];
  return sub_100018198(&v20, &qword_100CBB260);
}

uint64_t sub_100803148(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v10 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  v16 = sub_10022C350(&qword_100CAB930);
  __chkstk_darwin(v16 - 8);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v28 - v20;
  if (a3)
  {
    v22 = (a4 + *(type metadata accessor for SunriseSunsetInteractiveChartView() + 20));
    v23 = v22[1];
    v24 = *(v22 + 32);
    v30 = *v22;
    v31 = v23;
    v32 = *(v22 + 1);
    v33 = v24;
    v28[0] = a1;
    v28[1] = a2;
    v29 = 1;
    sub_10022C350(&qword_100CDB378);
    Binding.wrappedValue.setter();
    v25 = type metadata accessor for DetailChartDataElement();
    sub_10001B350(v21, 1, 1, v25);
    sub_1000302D8(v21, v18, &qword_100CAB930);
    sub_10022C350(&qword_100CDB158);
    Binding.wrappedValue.setter();
    sub_100018198(v21, &qword_100CAB930);
    v26 = type metadata accessor for Date();
    sub_10001B350(v15, 1, 1, v26);
    sub_1000302D8(v15, v12, &unk_100CB2CF0);
    sub_10022C350(&qword_100CBB758);
    State.wrappedValue.setter();
    return sub_100018198(v15, &unk_100CB2CF0);
  }

  else
  {
    type metadata accessor for Date();
    ChartProxy.value<A>(atX:as:)();
    sub_1000302D8(v15, v12, &unk_100CB2CF0);
    sub_10022C350(&qword_100CBB758);
    State.wrappedValue.setter();
    sub_100018198(v15, &unk_100CB2CF0);
    return sub_100803464(a5);
  }
}

uint64_t sub_100803464(uint64_t a1)
{
  v57 = a1;
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v54 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v56 = v47 - v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v55 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v47 - v10;
  v12 = sub_10022C350(&qword_100CAB930);
  __chkstk_darwin(v12 - 8);
  v58 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v47 - v15;
  __chkstk_darwin(v17);
  v19 = v47 - v18;
  v20 = type metadata accessor for DetailChartDataElement();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  sub_1008051B4(v19);
  if (sub_100024D10(v19, 1, v20) == 1)
  {
    sub_100018198(v19, &qword_100CAB930);
LABEL_6:
    v33 = (v24 + *(type metadata accessor for SunriseSunsetInteractiveChartView() + 20));
    v34 = v33[1];
    v35 = *(v33 + 32);
    v62 = *v33;
    v63 = v34;
    v64 = *(v33 + 1);
    v65 = v35;
    v59 = 0.0;
    v60 = 0;
    v61 = 1;
    sub_10022C350(&qword_100CDB378);
    Binding.wrappedValue.setter();
    sub_10001B350(v16, 1, 1, v20);
    sub_1000302D8(v16, v58, &qword_100CAB930);
    sub_10022C350(&qword_100CDB158);
    Binding.wrappedValue.setter();
    return sub_100018198(v16, &qword_100CAB930);
  }

  (*(v21 + 32))(v23, v19, v20);
  DetailChartDataElement.date.getter();
  v25 = ChartProxy.position<A>(forX:)();
  v27 = v26;
  v53 = v7;
  v29 = *(v7 + 8);
  v28 = v7 + 8;
  v52 = v29;
  v29(v11, v6);
  if (v27 & 1) != 0 || (DetailChartDataElement.value.getter(), v62 = v30, v31 = ChartProxy.position<A>(forY:)(), (v32))
  {
    (*(v21 + 8))(v23, v20);
    goto LABEL_6;
  }

  v48 = v31;
  v51 = v28;
  v37 = *&v25;
  DetailChartDataElement.date.getter();
  v38 = type metadata accessor for SunriseSunsetInteractiveChartView();
  v47[0] = *(v24 + v38[10]);
  [v47[0] prepare];
  v47[1] = v38[11];
  v39 = v38[6];
  v49 = sub_10022C350(&qword_100CBB758);
  v50 = v39;
  v40 = v56;
  State.wrappedValue.getter();
  LOBYTE(v39) = SunriseSunsetDetailChartViewModel.shouldTriggerHaptic(currentDate:previousDate:)();
  sub_100018198(v40, &unk_100CB2CF0);
  if (v39)
  {
    [v47[0] selectionChanged];
  }

  v41 = sub_100805508(v57, v37);
  v42 = (v24 + v38[5]);
  v43 = v42[1];
  v44 = *(v42 + 32);
  v62 = *v42;
  v63 = v43;
  v64 = *(v42 + 1);
  v65 = v44;
  v59 = v41;
  v60 = v48;
  v61 = 0;
  sub_10022C350(&qword_100CDB378);
  Binding.wrappedValue.setter();
  (*(v21 + 16))(v16, v23, v20);
  sub_10001B350(v16, 0, 1, v20);
  sub_1000302D8(v16, v58, &qword_100CAB930);
  sub_10022C350(&qword_100CDB158);
  Binding.wrappedValue.setter();
  sub_100018198(v16, &qword_100CAB930);
  v45 = v55;
  v46 = v56;
  (*(v53 + 16))(v56, v55, v6);
  sub_10001B350(v46, 0, 1, v6);
  sub_1000302D8(v46, v54, &unk_100CB2CF0);
  State.wrappedValue.setter();
  sub_100018198(v46, &unk_100CB2CF0);
  v52(v45, v6);
  return (*(v21 + 8))(v23, v20);
}

uint64_t sub_100803B10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10022C350(&qword_100CAB930);
  __chkstk_darwin(v8 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  v14 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v14 - 8);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v26 - v18;
  if (a3)
  {
    v20 = (a4 + *(type metadata accessor for SunriseSunsetInteractiveChartView() + 20));
    v21 = v20[1];
    v22 = *(v20 + 32);
    v28 = *v20;
    v29 = v21;
    v30 = *(v20 + 1);
    v31 = v22;
    v26[0] = 0;
    v26[1] = 0;
    v27 = 1;
    sub_10022C350(&qword_100CDB378);
    Binding.wrappedValue.setter();
    v23 = type metadata accessor for DetailChartDataElement();
    sub_10001B350(v13, 1, 1, v23);
    sub_1000302D8(v13, v10, &qword_100CAB930);
    sub_10022C350(&qword_100CDB158);
    Binding.wrappedValue.setter();
    sub_100018198(v13, &qword_100CAB930);
    v24 = type metadata accessor for Date();
    sub_10001B350(v19, 1, 1, v24);
    sub_1000302D8(v19, v16, &unk_100CB2CF0);
    sub_10022C350(&qword_100CBB758);
    State.wrappedValue.setter();
    return sub_100018198(v19, &unk_100CB2CF0);
  }

  else
  {
    type metadata accessor for Date();
    ChartProxy.value<A>(atX:as:)();
    sub_1000302D8(v19, v16, &unk_100CB2CF0);
    sub_10022C350(&qword_100CBB758);
    State.wrappedValue.setter();
    sub_100018198(v19, &unk_100CB2CF0);
    return sub_100803464(a5);
  }
}

uint64_t sub_100803E28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v70 = a1;
  v78 = a2;
  v2 = type metadata accessor for AxisGridLine();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v67 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10022C350(&qword_100CBAD88);
  v66 = *(v75 - 8);
  __chkstk_darwin(v75);
  v65 = &v62 - v4;
  v5 = sub_10022C350(&qword_100CCF650);
  __chkstk_darwin(v5 - 8);
  v77 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v62 - v8;
  v9 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10022C350(&qword_100CDB3D0);
  v73 = *(v11 - 8);
  v74 = v11;
  __chkstk_darwin(v11);
  v72 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v80 = &v62 - v14;
  v15 = type metadata accessor for AxisTick.Length();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for AxisTick();
  v64 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CBAE08);
  v63 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v22 = sub_10022C350(&qword_100CDB3C0);
  __chkstk_darwin(v22 - 8);
  v71 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v79 = &v62 - v25;
  if (AxisValue.isFirst.getter() & 1) != 0 || (AxisValue.isLast.getter())
  {
    v26 = v79;
    v27 = 1;
  }

  else
  {
    static AxisTick.Length.longestLabel.getter();
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    v62 = v16;
    swift_beginAccess();
    memcpy(v83, &qword_100D90070, 0x1A0uLL);
    sub_100453A48(v83, v82);
    AxisValue.isLast.getter();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v28 = v83[52];
    v29 = v83[54];
    v30 = v83[55];
    v31 = v83[56];
    v32 = v83[53];
    sub_100453AA4(v83);
    v83[62] = v28;
    v83[63] = v32;
    v83[64] = v29;
    v83[65] = v30;
    v83[66] = v31;
    AxisTick.init(centered:length:stroke:)();
    swift_beginAccess();
    v33 = sub_1004B5F70();
    swift_endAccess();
    v82[0] = v33;
    v34 = v62;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v64 + 8))(v18, v34);
    v35 = v79;
    (*(v63 + 32))(v79, v21, v19);
    v26 = v35;
    v27 = 0;
  }

  v36 = sub_10001B350(v26, v27, 1, v19);
  __chkstk_darwin(v36);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  v61[2] = sub_10022C350(&qword_100CDB3D8);
  v61[3] = sub_100806868();
  v61[0] = sub_100806860;
  v61[1] = v61;
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  v37 = AxisValue.isFirst.getter();
  v38 = v76;
  if (v37)
  {
    v39 = v76;
    v40 = 1;
    v41 = v75;
  }

  else
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    memcpy(v83, &qword_100D90070, 0x1A0uLL);
    sub_100453A48(v83, v82);
    AxisValue.isLast.getter();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v42 = v83[57];
    v43 = v83[59];
    v44 = v83[60];
    v45 = v83[61];
    v46 = v83[58];
    sub_100453AA4(v83);
    v82[0] = v42;
    v82[1] = v46;
    v82[2] = v43;
    v82[3] = v44;
    v82[4] = v45;
    v47 = v67;
    AxisGridLine.init(centered:stroke:)();
    swift_beginAccess();
    v48 = sub_1004B5F70();
    swift_endAccess();
    v81 = v48;
    v49 = v65;
    v50 = v69;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v68 + 8))(v47, v50);
    v51 = v75;
    (*(v66 + 32))(v38, v49, v75);
    v39 = v38;
    v40 = 0;
    v41 = v51;
  }

  sub_10001B350(v39, v40, 1, v41);
  v52 = v79;
  v53 = v71;
  sub_1000302D8(v79, v71, &qword_100CDB3C0);
  v83[0] = v53;
  v54 = v72;
  v55 = v73;
  v56 = v80;
  v57 = v74;
  (*(v73 + 16))(v72, v80, v74);
  v83[1] = v54;
  v58 = v77;
  sub_1000302D8(v38, v77, &qword_100CCF650);
  v83[2] = v58;
  sub_1007FF370(v83, v78);
  sub_100018198(v38, &qword_100CCF650);
  v59 = *(v55 + 8);
  v59(v56, v57);
  sub_100018198(v52, &qword_100CDB3C0);
  sub_100018198(v58, &qword_100CCF650);
  v59(v54, v57);
  return sub_100018198(v53, &qword_100CDB3C0);
}

uint64_t sub_100804854@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TimeStyle();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CAB930);
  __chkstk_darwin(v5 - 8);
  v7 = v33 - v6;
  v8 = type metadata accessor for DetailChartDataElement();
  v40 = *(v8 - 8);
  __chkstk_darwin(v8);
  v39 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v10 - 8);
  v12 = v33 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AxisValue.as<A>(_:)();
  if (sub_100024D10(v12, 1, v13) == 1)
  {
    result = sub_100018198(v12, &unk_100CB2CF0);
LABEL_5:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_9;
  }

  (*(v14 + 32))(v16, v12, v13);
  type metadata accessor for SunriseSunsetInteractiveChartView();
  v18 = SunriseSunsetDetailChartViewModel.chartData.getter();
  __chkstk_darwin(v18);
  v33[-2] = v16;
  sub_1008DBA9C();

  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_100018198(v7, &qword_100CAB930);
    result = (*(v14 + 8))(v16, v13);
    goto LABEL_5;
  }

  v35 = v14;
  (*(v40 + 32))(v39, v7, v8);
  type metadata accessor for Style();
  v36 = v8;
  static Style.componentTime.getter();
  DetailChartDataElement.dateLabel.getter();
  sub_10000C70C(0, &qword_100CA53F0);
  static NSDateFormatter.prevailingPeriodSymbols.getter();
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B60A0();
  swift_endAccess();
  v23 = TimeStyle.formatTime(_:periodSymbols:font:)();
  v25 = v24;
  v34 = v26;
  v33[1] = v27;

  (*(v37 + 8))(v4, v38);
  swift_beginAccess();
  v28 = sub_1004B61C0();
  swift_endAccess();
  v41 = v28;
  v29 = v34;
  v19 = Text.foregroundStyle<A>(_:)();
  v20 = v30;
  LODWORD(v38) = v31;
  v22 = v32;
  sub_10010CD64(v23, v25, v29 & 1);

  (*(v40 + 8))(v39, v36);
  v21 = v38 & 1;
  result = (*(v35 + 8))(v16, v13);
LABEL_9:
  *a1 = v19;
  a1[1] = v20;
  a1[2] = v21;
  a1[3] = v22;
  return result;
}

uint64_t sub_100804DD0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.date.getter();
  v4 = static Date.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100804EE0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AxisGridLine();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CBAD88);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  if ((AxisValue.isLast.getter() & 1) != 0 || (AxisValue.as<A>(_:)(), (BYTE8(v20) & 1) == 0) && *&v20 == 0.0)
  {
    v10 = 1;
  }

  else
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B62E0();
    v14 = v18;
    v15 = v17;
    v11 = v19;
    swift_endAccess();
    v20 = v15;
    v21 = v14;
    v22 = v11;
    AxisGridLine.init(centered:stroke:)();
    swift_beginAccess();
    v12 = sub_1004B5F70();
    swift_endAccess();
    v16 = v12;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v3 + 8))(v5, v2);
    (*(v7 + 32))(a1, v9, v6);
    v10 = 0;
  }

  return sub_10001B350(a1, v10, 1, v6);
}

uint64_t sub_1008051B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-v3];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10022C350(&qword_100CBB758);
  State.wrappedValue.getter();
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    sub_100018198(v4, &unk_100CB2CF0);
    v9 = type metadata accessor for DetailChartDataElement();
    return sub_10001B350(a1, 1, 1, v9);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    type metadata accessor for SunriseSunsetInteractiveChartView();
    v11 = SunriseSunsetDetailChartViewModel.chartData.getter();
    __chkstk_darwin(v11);
    *&v12[-16] = v8;
    sub_1008EFB74();

    return (*(v6 + 8))(v8, v5);
  }
}

BOOL sub_1008053CC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.date.getter();
  Date.distance(to:)();
  v5 = v4;
  v6 = *(v1 + 8);
  v6(v3, v0);
  v7 = fabs(v5);
  DetailChartDataElement.date.getter();
  Date.distance(to:)();
  v9 = v8;
  v6(v3, v0);
  return v7 < fabs(v9);
}

double sub_100805508(uint64_t a1, double a2)
{
  v55 = a1;
  v3 = sub_10022C350(&qword_100CAB930);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v51 - v7;
  v9 = type metadata accessor for Date();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin(v9);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v51 - v12;
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  __chkstk_darwin(v16);
  v58 = &v51 - v17;
  v18 = type metadata accessor for LayoutDirection();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  sub_1007FF53C();
  (*(v19 + 104))(v21, enum case for LayoutDirection.rightToLeft(_:), v18);
  v25 = static LayoutDirection.== infix(_:_:)();
  v26 = *(v19 + 8);
  v26(v21, v18);
  v26(v24, v18);
  if (v25)
  {
    type metadata accessor for SunriseSunsetInteractiveChartView();
    v27 = SunriseSunsetDetailChartViewModel.chartData.getter();
    sub_1002F5488(v27, v8);

    v28 = type metadata accessor for DetailChartDataElement();
    if (sub_100024D10(v8, 1, v28) == 1)
    {
      v29 = v8;
LABEL_6:
      sub_100018198(v29, &qword_100CAB930);
      return a2;
    }

    DetailChartDataElement.date.getter();
    v30 = *(v28 - 8);
    v31 = *(v30 + 8);
    v51 = v30 + 8;
    v52 = v31;
    v31(v8, v28);
    v32 = v56;
    v33 = v57;
    v34 = v58;
    v35 = v15;
    v36 = *(v56 + 32);
    v36(v58, v35, v57);
    v37 = SunriseSunsetDetailChartViewModel.chartData.getter();
    sub_1003DF9A4(v37, v5);

    if (sub_100024D10(v5, 1, v28) == 1)
    {
      (*(v32 + 8))(v34, v33);
      v29 = v5;
      goto LABEL_6;
    }

    v39 = v53;
    DetailChartDataElement.date.getter();
    v52(v5, v28);
    v40 = v54;
    v36(v54, v39, v33);
    v41 = ChartProxy.position<A>(forX:)();
    if (v42)
    {
      v43 = *(v32 + 8);
      v43(v40, v33);
      v43(v58, v33);
    }

    else
    {
      v44 = *&v41;
      v45 = v58;
      v46 = COERCE_DOUBLE(ChartProxy.position<A>(forX:)());
      v48 = v47;
      v49 = *(v32 + 8);
      v49(v40, v33);
      v49(v45, v33);
      if ((v48 & 1) == 0)
      {
        v50 = v44;
        if (v44 <= v46)
        {
          v50 = v46;
        }

        return v50 - a2;
      }
    }
  }

  return a2;
}

unint64_t sub_1008059FC()
{
  result = qword_100CDB280;
  if (!qword_100CDB280)
  {
    sub_10022E824(&qword_100CDB230);
    sub_100805A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB280);
  }

  return result;
}

unint64_t sub_100805A88()
{
  result = qword_100CDB288;
  if (!qword_100CDB288)
  {
    sub_10022E824(&qword_100CDB278);
    sub_10023FBF4(&qword_100CDB290, &unk_100CDB298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB288);
  }

  return result;
}

uint64_t sub_100805B40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_100003A24(0, a2);
    sub_10022E824(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100805BC8()
{
  result = qword_100CDB2C0;
  if (!qword_100CDB2C0)
  {
    sub_10022E824(&qword_100CDB2B0);
    sub_10023FBF4(&qword_100CDB2C8, &unk_100CDB2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB2C0);
  }

  return result;
}

unint64_t sub_100805C98()
{
  result = qword_100CDB2F8;
  if (!qword_100CDB2F8)
  {
    sub_10022E824(&qword_100CDB2E8);
    sub_10023FBF4(&qword_100CDB300, &unk_100CDB308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB2F8);
  }

  return result;
}

uint64_t sub_100805D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetInteractiveChartView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100805DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetInteractiveChartView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100805E20()
{
  v0 = type metadata accessor for SunriseSunsetInteractiveChartView();
  sub_100003810(v0);
  sub_100005614();

  return sub_100801FFC(v1);
}

unint64_t sub_100805E8C()
{
  result = qword_100CDB318;
  if (!qword_100CDB318)
  {
    sub_10022E824(&qword_100CDB310);
    sub_100805F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB318);
  }

  return result;
}

unint64_t sub_100805F10()
{
  result = qword_100CDB320;
  if (!qword_100CDB320)
  {
    sub_10022E824(&qword_100CDB328);
    sub_100805F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB320);
  }

  return result;
}

unint64_t sub_100805F9C()
{
  result = qword_100CDB330;
  if (!qword_100CDB330)
  {
    sub_10022E824(&qword_100CDB338);
    sub_1007A9848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB330);
  }

  return result;
}

unint64_t sub_100806040()
{
  result = qword_100CDB348;
  if (!qword_100CDB348)
  {
    sub_10022E824(&qword_100CDB340);
    sub_10023FBF4(&qword_100CDB350, &unk_100CDB358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB348);
  }

  return result;
}

uint64_t sub_100806118(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100806160()
{
  v1 = type metadata accessor for SunriseSunsetInteractiveChartView();
  sub_100003DDC();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v26 = *(v4 + 64);
  v27 = type metadata accessor for ChartProxy();
  sub_1000037C4();
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v0 + v3;
  v9 = type metadata accessor for Date();
  if (!sub_100024D10(v0 + v3, 1, v9))
  {
    sub_100003B20();
    (*(v10 + 8))(v0 + v3, v9);
  }

  sub_10022C350(&qword_100CBB758);

  v11 = v8 + v1[6];
  if (!sub_100024D10(v11, 1, v9))
  {
    sub_100003B20();
    (*(v12 + 8))(v11, v9);
  }

  v13 = v8 + v1[8];

  v14 = *(sub_10022C350(&qword_100CDB158) + 32);
  v15 = type metadata accessor for DetailChartDataElement();
  if (!sub_100024D10(v13 + v14, 1, v15))
  {
    sub_100003B20();
    (*(v16 + 8))(v13 + v14, v15);
  }

  v17 = v1[9];
  sub_10022C350(&qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v18 + 8))(v8 + v17);
  }

  else
  {
  }

  v19 = v1[11];
  type metadata accessor for SunriseSunsetDetailChartViewModel();
  sub_100003D98();
  (*(v20 + 8))(v8 + v19);
  v21 = v1[13];
  type metadata accessor for SunriseSunsetDetailChartContentStyle();
  sub_100003D98();
  (*(v22 + 8))(v8 + v21);
  v23 = v1[17];
  type metadata accessor for Calendar();
  sub_100003D98();
  (*(v24 + 8))(v8 + v23);
  (*(v6 + 8))(v0 + ((v3 + v26 + v7) & ~v7), v27);

  return swift_deallocObject();
}

uint64_t sub_100806514(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, unint64_t, uint64_t))
{
  v8 = *(type metadata accessor for SunriseSunsetInteractiveChartView() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = type metadata accessor for ChartProxy();
  sub_100003810(v11);
  v13 = v4 + ((v9 + v10 + *(v12 + 80)) & ~*(v12 + 80));

  return a4(a1, a2, a3 & 1, v4 + v9, v13);
}

uint64_t sub_100806650(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = type metadata accessor for SunriseSunsetInteractiveChartView();
  sub_100003810(v2);
  v3 = sub_100005614();

  return a2(v3);
}

unint64_t sub_1008066D0()
{
  result = qword_100CDB3B0;
  if (!qword_100CDB3B0)
  {
    sub_10022E824(&qword_100CDB3A8);
    sub_100806798();
    sub_10023FBF4(&qword_100CDB3C8, &qword_100CDB3D0);
    sub_10066A9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB3B0);
  }

  return result;
}

unint64_t sub_100806798()
{
  result = qword_100CDB3B8;
  if (!qword_100CDB3B8)
  {
    sub_10022E824(&qword_100CDB3C0);
    type metadata accessor for AxisTick();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB3B8);
  }

  return result;
}

unint64_t sub_100806868()
{
  result = qword_100CDB3E0;
  if (!qword_100CDB3E0)
  {
    sub_10022E824(&qword_100CDB3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB3E0);
  }

  return result;
}

unint64_t sub_100806904()
{
  result = qword_100CBADC8;
  if (!qword_100CBADC8)
  {
    sub_10022E824(&qword_100CBADD0);
    sub_100453890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBADC8);
  }

  return result;
}

unint64_t sub_100806988()
{
  result = qword_100CCF680;
  if (!qword_100CCF680)
  {
    sub_10022E824(&qword_100CCF688);
    sub_10066AC6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCF680);
  }

  return result;
}

id sub_100806A0C()
{
  v1 = OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:1];
    [v4 setTimeStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100806AA8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController____lazy_storage___dateFormatter] = 0;
  *&v1[OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController_notifications] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DebugSevereNotificationsViewController();
  return objc_msgSendSuper2(&v3, "initWithStyle:", 2);
}

void sub_100806AF8()
{
  *(v0 + OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController____lazy_storage___dateFormatter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100806B70()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DebugSevereNotificationsViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    sub_1003B3418();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = String._bridgeToObjectiveC()();
    [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

    sub_1003C1790(0xD000000000000014, 0x8000000100ABF120, v0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100806CC4(void *a1)
{
  v3 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - v4;
  type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v44 = v7;
  v45 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for SevereNotificationEntity();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [a1 dequeueReusableCellWithIdentifier:v18 forIndexPath:isa];

  v21 = *(v1 + OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController_notifications);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result >= *(v21 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = *(v13 + 16);
  v24 = v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * result;
  v43 = v11;
  v23(v17, v24, v11);
  static UIListContentConfiguration.subtitleCell()();
  SevereNotificationEntity.id.getter();
  dispatch thunk of Column.value.getter();

  UIListContentConfiguration.text.setter();
  v25 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontSizeToFitWidth.setter();
  v25(&v46, 0);
  v26 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v26(&v46, 0);
  v46 = 0;
  v47 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v46 = 0x203A65746144;
  v47 = 0xE600000000000000;
  v27 = sub_100806A0C();
  SevereNotificationEntity.date.getter();
  dispatch thunk of Column.value.getter();
  v28 = type metadata accessor for Date();
  result = sub_100024D10(v5, 1, v28);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v29 = Date._bridgeToObjectiveC()().super.isa;
  (*(*(v28 - 8) + 8))(v5, v28);
  v30 = [v27 stringFromDate:v29];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  v35._object = 0x8000000100AC4760;
  v35._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v35);
  SevereNotificationEntity.subscription.getter();
  dispatch thunk of Column.value.getter();

  if (v51)
  {
    v36 = v50;
  }

  else
  {
    v36 = 0xD000000000000014;
  }

  if (v51)
  {
    v37 = v51;
  }

  else
  {
    v37 = 0x8000000100ABCAE0;
  }

  v38 = v37;
  String.append(_:)(*&v36);

  UIListContentConfiguration.secondaryText.setter();
  v39 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v39(&v46, 0);
  v40 = v45;
  v48 = v45;
  v49 = &protocol witness table for UIListContentConfiguration;
  v41 = sub_100042FB0(&v46);
  v42 = v44;
  (*(v44 + 16))(v41, v10, v40);
  UITableViewCell.contentConfiguration.setter();
  [v20 setAccessoryType:1];
  (*(v42 + 8))(v10, v40);
  (*(v13 + 8))(v17, v43);
  return v20;
}

void sub_1008072BC()
{
  v1 = v0;
  v2 = type metadata accessor for SevereNotificationEntity();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = *&v0[OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController_notifications];
  v10 = IndexPath.row.getter();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v4 + 16))(v8, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v2);
  v11 = objc_allocWithZone(type metadata accessor for DebugSevereNotificationViewController());
  v12 = sub_1004932D4(v8);
  v13 = [v1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v12 animated:1];

    v12 = v14;
  }
}

id sub_10080759C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSevereNotificationsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t LocalSearchRequestService.__allocating_init(appConfigurationManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_10003E2A0(a1, v2 + 16);
  return v2;
}

uint64_t LocalSearchRequestService.performLocalSearch(with:calloutTitle:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MKLocalSearchRequest) initWithCompletion:a1];
  sub_10022C350(&qword_100CD04C0);
  swift_allocObject();
  v1 = Promise.init(resolver:)();

  return v1;
}

uint64_t LocalSearchRequestService.performLocalSearch(with:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MKLocalSearchRequest) init];
  sub_1008088D4(a1, a2, v4);
  sub_10022C350(&qword_100CD04C0);
  swift_allocObject();
  v5 = Promise.init(resolver:)();

  return v5;
}

void sub_100807804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_1008088D4(a6, a7, a5);
  v14 = [objc_allocWithZone(MKLocalSearch) initWithRequest:a5];
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a2;
  v17[4] = sub_100808950;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1008087F8;
  v17[3] = &unk_100C6EE28;
  v16 = _Block_copy(v17);

  [v14 startWithCompletionHandler:v16];
  _Block_release(v16);
}

void sub_100807960(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(char *), uint64_t a8)
{
  v131 = a8;
  v132 = a7;
  v138 = a6;
  v139 = a5;
  v142 = a4;
  v136 = a1;
  v137 = a3;
  v9 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v9 - 8);
  v135 = &v120 - v10;
  v133 = type metadata accessor for Location();
  v130 = *(v133 - 8);
  __chkstk_darwin(v133);
  v12 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v120 - v14;
  v16 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v16 - 8);
  v18 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v120 - v20;
  __chkstk_darwin(v22);
  v24 = &v120 - v23;
  v25 = type metadata accessor for TimeZone();
  v134 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v120 - v29;
  v31 = type metadata accessor for Logger();
  v32 = *(v31 - 8);
  v140 = v31;
  v141 = v32;
  __chkstk_darwin(v31);
  __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  *&v39 = __chkstk_darwin(v35).n128_u64[0];
  v41 = &v120 - v40;
  if (a2)
  {
    swift_errorRetain();
    static Logger.geocode.getter();
    swift_errorRetain();
    v42 = v142;

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v144[0] = swift_slowAlloc();
      *v45 = 141558531;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2085;
      *(v45 + 14) = sub_100078694(v137, v42, v144);
      *(v45 + 22) = 2082;
      v143 = a2;
      swift_errorRetain();
      sub_10022C350(&qword_100CD8220);
      v46 = String.init<A>(describing:)();
      v48 = sub_100078694(v46, v47, v144);

      *(v45 + 24) = v48;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to geocode. searchString=%{sensitive,mask.hash}s, error=%{public}s", v45, 0x20u);
      swift_arrayDestroy();
    }

    (*(v141 + 8))(v41, v140);
    sub_100808960();
    v49 = swift_allocError();
    *v50 = a2;
    swift_errorRetain();
    (v139)(v49);

LABEL_15:

    return;
  }

  v125 = v21;
  v126 = v24;
  v127 = v27;
  v51 = v135;
  v123 = v12;
  v128 = v30;
  v129 = v25;
  v124 = v15;
  v52 = v142;
  if (!v136)
  {
LABEL_12:
    v68 = v36;
    static Logger.geocode.getter();

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v144[0] = v72;
      *v71 = 141558275;
      *(v71 + 4) = 1752392040;
      *(v71 + 12) = 2085;
      *(v71 + 14) = sub_100078694(v137, v52, v144);
      sub_100006F14(v72);
    }

    (*(v141 + 8))(v68, v140);
    sub_100808960();
    swift_allocError();
    *v73 = 0;
    v139();
    goto LABEL_15;
  }

  v53 = v36;
  v121 = v38;
  v122 = v37;
  v54 = [v136 mapItems];
  sub_1008089B4();
  v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!sub_100073CDC(v55))
  {

    v36 = v53;
    goto LABEL_12;
  }

  sub_1000A7560(0, (v55 & 0xC000000000000001) == 0, v55);
  if ((v55 & 0xC000000000000001) != 0)
  {
    v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v56 = *(v55 + 32);
  }

  v57 = v56;
  v58 = v129;
  v59 = v51;
  v60 = v127;

  v61 = [v57 placemark];
  v62 = [v61 timeZone];

  v63 = v125;
  if (v62)
  {
    static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = v134;
    v65 = *(v134 + 32);
    v65(v63, v60, v58);
    sub_10001B350(v63, 0, 1, v58);
    v66 = v126;
    v65(v126, v63, v58);
    sub_10001B350(v66, 0, 1, v58);
    v67 = v128;
  }

  else
  {
    v74 = 1;
    sub_10001B350(v125, 1, 1, v58);
    v75 = [v57 timeZone];
    if (v75)
    {
      v76 = v75;
      static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

      v74 = 0;
    }

    v67 = v128;
    v66 = v126;
    sub_10001B350(v18, v74, 1, v58);
    sub_1008089F8(v18, v66);
    v77 = sub_100024D10(v63, 1, v58);
    v64 = v134;
    if (v77 != 1)
    {
      sub_100808A68(v63);
    }
  }

  if (sub_100024D10(v66, 1, v58) == 1)
  {
    sub_100808A68(v66);
    v78 = v121;
    static Logger.geocode.getter();
    v79 = v142;

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v144[0] = v83;
      *v82 = 141558275;
      *(v82 + 4) = 1752392040;
      *(v82 + 12) = 2085;
      *(v82 + 14) = sub_100078694(v137, v79, v144);
      _os_log_impl(&_mh_execute_header, v80, v81, "Time zone missing while geocoding, searchString=%{sensitive,mask.hash}s.", v82, 0x16u);
      sub_100006F14(v83);
    }

    (*(v141 + 8))(v78, v140);
    sub_100808960();
    swift_allocError();
    *v84 = 1;
    v139();
  }

  else
  {
    (*(v64 + 32))(v67, v66, v58);
    v85 = [v57 placemark];
    [v85 coordinate];

    v138 = CLLocationCoordinate2D.id.getter();
    v139 = v86;
    v87 = [v57 wc_weatherDisplayName];
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v135 = v89;
    v136 = v88;

    (*(v64 + 16))(v60, v67, v58);
    static WeatherClock.date.getter();
    v90 = type metadata accessor for Date();
    sub_10001B350(v59, 0, 1, v90);
    v91 = [v57 placemark];
    v92 = MKPlacemark.safeTitle.getter();
    v126 = v93;
    v127 = v92;

    v94 = [v57 placemark];
    MKPlacemark.safeSubtitle.getter();
    v125 = v95;

    v96 = [v57 wc_weatherLocationName];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v97 = [v57 wc_weatherLocationName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v98 = [v57 wc_weatherDisplayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static Location.sanitizedSecondaryName(_:name:)();

    v99 = v124;
    Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
    v100 = v122;
    static Logger.geocode.getter();
    v101 = v130;
    v102 = v123;
    v103 = v133;
    (*(v130 + 16))(v123, v99, v133);
    v104 = v142;

    v105 = v57;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();
    v139 = v105;

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v144[0] = swift_slowAlloc();
      *v108 = 141559299;
      v109 = v102;
      *(v108 + 4) = 1752392040;
      *(v108 + 12) = 2085;
      *(v108 + 14) = sub_100078694(v137, v104, v144);
      *(v108 + 22) = 2160;
      *(v108 + 24) = 1752392040;
      *(v108 + 32) = 2081;
      v110 = Location.id.getter();
      v112 = v111;
      v113 = *(v101 + 8);
      v113(v109, v133);
      v114 = sub_100078694(v110, v112, v144);

      *(v108 + 34) = v114;
      *(v108 + 42) = 2160;
      *(v108 + 44) = 1752392040;
      *(v108 + 52) = 2081;
      v115 = [v139 wc_weatherLocationName];
      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v117;

      v119 = sub_100078694(v116, v118, v144);

      *(v108 + 54) = v119;
      _os_log_impl(&_mh_execute_header, v106, v107, "Successfully geocoded location. searchString=%{sensitive,mask.hash}s, location=%{private,mask.hash}s, unsanitizedSecondaryName=%{private,mask.hash}s", v108, 0x3Eu);
      swift_arrayDestroy();
      v99 = v124;

      v103 = v133;
    }

    else
    {

      v113 = *(v101 + 8);
      v113(v102, v103);
    }

    (*(v141 + 8))(v100, v140);
    v132(v99);

    v113(v99, v103);
    (*(v134 + 8))(v128, v129);
  }
}

void sub_1008087F8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1008088D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setNaturalLanguageQuery:v4];
}

unint64_t sub_100808960()
{
  result = qword_100CDB500;
  if (!qword_100CDB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB500);
  }

  return result;
}

unint64_t sub_1008089B4()
{
  result = qword_100CB97C0;
  if (!qword_100CB97C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB97C0);
  }

  return result;
}

uint64_t sub_1008089F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CACE08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100808A68(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CACE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100808AD0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100808AE8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100808B3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100808BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_100808BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppConfiguration();

  return sub_10001B350(a1, a2, a3, v6);
}

void sub_100808C94()
{
  sub_10080EDD8(319, &unk_100CC0E40, &qword_100CC07D8, &unk_100A84020, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_10080EDD8(319, &qword_100CDB1C8, &qword_100CAB930, &unk_100A3A7C0, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SunriseSunsetDetailViewModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100808DE4()
{
  type metadata accessor for AttributedString();
  if (v0 <= 0x3F)
  {
    sub_10000D054();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100808EF0()
{
  type metadata accessor for AttributedString();
  if (v0 <= 0x3F)
  {
    sub_10000D054();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100808FB0@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_10000E78C();
  sub_10022C350(v5);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003C38();
  sub_100017E40();
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  v19[1] = 0;
  v19[2] = 0;
  v20 = 1;
  sub_10022C350(&qword_100CC07D8);
  State.init(wrappedValue:)();
  v10 = v22;
  v11 = v23;
  *(a2 + 16) = v21;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  v12 = type metadata accessor for SunriseSunsetDetailView(0);
  v13 = type metadata accessor for DetailChartDataElement();
  sub_10001B350(v9, 1, 1, v13);
  sub_10018CF14(v9, v2, &qword_100CAB930);
  State.init(wrappedValue:)();
  sub_10003FDA0(v9, &qword_100CAB930);
  v14 = v12[7];
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = sub_1004BA278();
  swift_endAccess();
  *(a2 + v14) = v15;
  *(a2 + v12[9]) = 0;
  v16 = sub_10000E78C();
  sub_10022C350(v16);
  sub_10023FBF4(&qword_100CA4D78, &qword_100CA4D70);
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v17;
  return sub_100013188(a1, a2 + v12[8]);
}

BOOL sub_1008091E8()
{
  v1 = sub_10022C350(&qword_100CAB930);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v4 = &v9[-v3];
  LOBYTE(v3) = *(v0 + 32);
  v5 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = v3;
  v12 = v5;
  sub_10022C350(&qword_100CC0B18);
  State.wrappedValue.getter();
  if (v9[24])
  {
    return 0;
  }

  type metadata accessor for SunriseSunsetDetailView(0);
  sub_10022C350(&qword_100CDB830);
  State.wrappedValue.getter();
  v7 = type metadata accessor for DetailChartDataElement();
  v6 = sub_100024D10(v4, 1, v7) != 1;
  sub_10003FDA0(v4, &qword_100CAB930);
  return v6;
}

uint64_t sub_10080930C()
{
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v39 = v1;
  v40 = v0;
  __chkstk_darwin(v0);
  sub_1000037D8();
  v38 = v3 - v2;
  v4 = type metadata accessor for SunriseSunsetDetailViewModel();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v37 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = sub_10022C350(&qword_100CAB930);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for Date();
  sub_1000037C4();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100003C38();
  v25 = (v23 - v24);
  __chkstk_darwin(v26);
  v28 = &v36 - v27;
  __chkstk_darwin(v29);
  v31 = &v36 - v30;
  type metadata accessor for SunriseSunsetDetailView(0);
  sub_10022C350(&qword_100CDB830);
  State.wrappedValue.getter();
  if (sub_100024D10(v18, 1, v9))
  {
    sub_10003FDA0(v18, &qword_100CAB930);
    static WeatherClock.date.getter();
    v31 = v25;
  }

  else
  {
    v32 = v37;
    (*(v37 + 16))(v14, v18, v9);
    sub_10003FDA0(v18, &qword_100CAB930);
    DetailChartDataElement.date.getter();
    (*(v32 + 8))(v14, v9);
    (*(v21 + 32))(v31, v28, v19);
  }

  sub_10098A320();
  v33 = v38;
  sub_10062A418();
  sub_10001F908();
  sub_10080F004(v8, v34);
  Date.formattedTime(timeZone:)();
  (*(v39 + 8))(v33, v40);
  (*(v21 + 8))(v31, v19);
  return sub_100003940();
}

uint64_t sub_10080969C()
{
  v1 = type metadata accessor for SunriseSunsetDetailViewModel();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  v6 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v47 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v46 = v10 - v9;
  v11 = sub_10022C350(&qword_100CAB930);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003C38();
  sub_100017E40();
  __chkstk_darwin(v13);
  v15 = v43 - v14;
  type metadata accessor for Date();
  sub_1000037C4();
  v48 = v17;
  v49 = v16;
  __chkstk_darwin(v16);
  sub_100003C38();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v43 - v22;
  __chkstk_darwin(v24);
  v45 = v43 - v25;
  type metadata accessor for SunriseSunsetDetailView(0);
  sub_10022C350(&qword_100CDB830);
  State.wrappedValue.getter();
  if (sub_100024D10(v15, 1, v6))
  {
    v0 = v15;
    v26 = v48;
    v27 = v49;
  }

  else
  {
    v44 = v5;
    v28 = v47;
    v43[0] = *(v47 + 16);
    v43[1] = v47 + 16;
    (v43[0])(v46, v15, v6);
    sub_10003FDA0(v15, &qword_100CAB930);
    DetailChartDataElement.date.getter();
    v29 = *(v28 + 8);
    v30 = sub_10000E78C();
    v47 = v28 + 8;
    v29(v30);
    v31 = v45;
    (*(v48 + 32))(v45, v23, v49);
    State.wrappedValue.getter();
    if (!sub_100024D10(v0, 1, v6))
    {
      (v43[0])(v46, v0, v6);
      sub_10003FDA0(v0, &qword_100CAB930);
      DetailChartDataElement.value.getter();
      v36 = sub_10000E78C();
      v29(v36);
      v37 = v31;
      v5 = v44;
      sub_10098A320();
      v32 = sub_10062B248(v37);
      v39 = v38;
      sub_10001F908();
      sub_10080F004(v5, v40);
      v26 = v48;
      v41 = v37;
      v27 = v49;
      (*(v48 + 8))(v41, v49);
      if (v39)
      {
        return v32;
      }

      goto LABEL_6;
    }

    v26 = v48;
    v27 = v49;
    (*(v48 + 8))(v31, v49);
    v5 = v44;
  }

  sub_10003FDA0(v0, &qword_100CAB930);
LABEL_6:
  sub_10098A320();
  static WeatherClock.date.getter();
  v32 = sub_10062B248(v20);
  v34 = v33;
  (*(v26 + 8))(v20, v27);
  sub_10001F908();
  sub_10080F004(v5, v35);
  if (!v34)
  {
    return 5849412;
  }

  return v32;
}

uint64_t sub_100809AE8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = type metadata accessor for SunriseSunsetDetailViewModel();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v48 = v5 - v4;
  v6 = sub_10022C350(&qword_100CA5730);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003C38();
  v46 = v8 - v9;
  __chkstk_darwin(v10);
  v45 = &v44 - v11;
  v12 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v44 = v13;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = sub_10022C350(&qword_100CAB930);
  sub_100003810(v18);
  sub_100003828();
  __chkstk_darwin(v19);
  v21 = &v44 - v20;
  v22 = type metadata accessor for Date();
  sub_1000037C4();
  v47 = v23;
  __chkstk_darwin(v24);
  sub_100003C38();
  sub_100017E40();
  __chkstk_darwin(v25);
  v27 = &v44 - v26;
  __chkstk_darwin(v28);
  v30 = &v44 - v29;
  type metadata accessor for SunriseSunsetDetailView(0);
  sub_10022C350(&qword_100CDB830);
  State.wrappedValue.getter();
  if (sub_100024D10(v21, 1, v12))
  {
    sub_10003FDA0(v21, &qword_100CAB930);
    v31 = v47;
    v32 = v48;
  }

  else
  {
    v33 = v44;
    (*(v44 + 16))(v17, v21, v12);
    sub_10003FDA0(v21, &qword_100CAB930);
    DetailChartDataElement.date.getter();
    (*(v33 + 8))(v17, v12);
    v31 = v47;
    (*(v47 + 32))(v30, v27, v22);
    v32 = v48;
    sub_10098A320();
    v34 = v45;
    sub_10062B6E4();
    sub_10001F908();
    sub_10080F004(v32, v35);
    (*(v31 + 8))(v30, v22);
    v36 = type metadata accessor for AttributedString();
    sub_10000554C(v34);
    if (!v37)
    {
      sub_100003B20();
      return (*(v42 + 32))(v49, v34, v36);
    }

    sub_10003FDA0(v34, &qword_100CA5730);
  }

  sub_10098A320();
  static WeatherClock.date.getter();
  v38 = v46;
  sub_10062B6E4();
  (*(v31 + 8))(v1, v22);
  sub_10001F908();
  sub_10080F004(v32, v39);
  v40 = type metadata accessor for AttributedString();
  sub_10000554C(v38);
  if (v37)
  {
    AttributedString.init(stringLiteral:)();
    result = sub_10000554C(v38);
    if (!v37)
    {
      return sub_10003FDA0(v38, &qword_100CA5730);
    }
  }

  else
  {
    sub_100003B20();
    return (*(v41 + 32))(v49, v38, v40);
  }

  return result;
}

uint64_t sub_100809F8C@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_10022C350(&qword_100CA2DF0) - 8;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v46 - v4;
  v46 = v1;
  sub_10098A320();
  v6 = type metadata accessor for SunriseSunsetDetailView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v47 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v46 - v47;
  sub_10080EFAC(v1, &v46 - v47, type metadata accessor for SunriseSunsetDetailView);
  v10 = *(v7 + 80);
  v11 = swift_allocObject();
  v48 = type metadata accessor for SunriseSunsetDetailView;
  sub_10080F290(v9, v11 + ((v10 + 16) & ~v10), type metadata accessor for SunriseSunsetDetailView);
  v12 = &v5[*(v2 + 64)];
  sub_10022C350(&qword_100CDB8F0);
  v13 = swift_allocObject();
  v14 = *(*v13 + 96);
  v15 = type metadata accessor for SunriseSunsetDetailViewModel();
  sub_10001B350(v13 + v14, 1, 1, v15);
  ObservationRegistrar.init()();
  v51 = v13;
  v16 = State.init(wrappedValue:)();
  v17 = v53;
  *v12 = v52;
  v12[1] = v17;
  v18 = *(v2 + 60);
  v49 = v5;
  v19 = &v5[v18];
  *v19 = sub_10080EE58;
  v19[1] = v11;
  __chkstk_darwin(v16);
  v20 = &v46 - v47;
  sub_10080EFAC(v46, &v46 - v47, type metadata accessor for SunriseSunsetDetailView);
  type metadata accessor for MainActor();
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = &protocol witness table for MainActor;
  sub_10080F290(v20, v22 + ((v10 + 32) & ~v10), v48);
  v23 = type metadata accessor for TaskPriority();
  sub_1000037C4();
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v28);
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = &v46 - v29;
  static TaskPriority.userInitiated.getter();
  if (sub_100A162A0(2, 26, 4, 0))
  {
    v47 = type metadata accessor for _TaskModifier2();
    v48 = &v46;
    sub_1000037C4();
    v46 = v31;
    __chkstk_darwin(v32);
    sub_1000037D8();
    v35 = v34 - v33;
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v52 = 0xD000000000000032;
    v53 = 0x8000000100ADFD40;
    v51 = 112;
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v38 = __chkstk_darwin(v37);
    (*(v25 + 16))(&v46 - v29, &v46 - v29, v23, v38);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v25 + 8))(&v46 - v29, v23);
    v39 = v50;
    sub_10027FB54(v49, v50, &qword_100CA2DF0);
    v40 = sub_10022C350(&qword_100CA2DF8);
    return (*(v46 + 32))(v39 + *(v40 + 36), v35, v47);
  }

  else
  {
    v42 = sub_10022C350(&qword_100CA2E00);
    v43 = v50;
    v44 = (v50 + *(v42 + 36));
    v45 = type metadata accessor for _TaskModifier();
    (*(v25 + 32))(&v44[*(v45 + 20)], v30, v23);
    *v44 = &unk_100A88630;
    *(v44 + 1) = v22;
    return sub_10027FB54(v49, v43, &qword_100CA2DF0);
  }
}

uint64_t sub_10080A518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for SunriseSunsetDetailViewModel();
  __chkstk_darwin(v6 - 8);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetailViewVisibilityTrackerModel();
  __chkstk_darwin(v9 - 8);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10080EFAC(a1, v8, type metadata accessor for SunriseSunsetDetailViewModel);
  sub_10062C2D8();
  v12 = (a2 + *(type metadata accessor for SunriseSunsetDetailView(0) + 32));
  v13 = v12[3];
  v14 = v12[4];
  v15 = sub_1000161C0(v12, v13);
  v29[3] = v13;
  v29[4] = *(v14 + 8);
  v16 = sub_100042FB0(v29);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  v17 = sub_100629D98();
  v19 = v18;
  v20 = sub_100629F24();
  v22 = v21;
  *a3 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0);
  swift_storeEnumTagMultiPayload();
  v23 = sub_10022C350(&qword_100CDB8F8);
  sub_10080EFAC(v11, a3 + v23[9], type metadata accessor for DetailViewVisibilityTrackerModel);
  sub_100035B30(v29, a3 + v23[10]);
  v24 = (a3 + v23[11]);
  *v24 = v17;
  v24[1] = v19;
  v25 = (a3 + v23[12]);
  *v25 = v20;
  v25[1] = v22;
  *(a3 + v23[13]) = 0;
  v26 = (a3 + v23[14]);
  *v26 = 0;
  v26[1] = 0;
  *(a3 + v23[15]) = 1;
  sub_10080A788(a1, a2, a3 + v23[16]);
  sub_10080F004(v11, type metadata accessor for DetailViewVisibilityTrackerModel);
  return sub_100006F14(v29);
}

uint64_t sub_10080A788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v5 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for ScrollIndicatorVisibility();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CDB900);
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = sub_10022C350(&qword_100CDB908);
  v56 = *(v13 - 8);
  v57 = v13;
  __chkstk_darwin(v13);
  v54 = &v44 - v14;
  v48 = sub_10022C350(&qword_100CDB910);
  __chkstk_darwin(v48);
  v55 = &v44 - v15;
  v16 = sub_10022C350(&qword_100CDB918);
  __chkstk_darwin(v16);
  v52 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v58 = &v44 - v19;
  v59 = sub_10022C350(&qword_100CDB920);
  __chkstk_darwin(v59);
  v21 = (&v44 - v20);
  v22 = type metadata accessor for SunriseSunsetDetailViewModel();
  __chkstk_darwin(v22);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10080EFAC(a1, v24, type metadata accessor for SunriseSunsetDetailViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      *v21 = static Color.clear.getter();
      swift_storeEnumTagMultiPayload();
      sub_10080F064();
      return _ConditionalContent<>.init(storage:)();
    }

    v44 = v5;
    v45 = v16;
    v46 = a3;
    v26 = sub_10022C350(&qword_100CCD130);
    v27 = _s10PolarModelVMa;
  }

  else
  {
    v44 = v5;
    v45 = v16;
    v46 = a3;
    v26 = sub_10022C350(&qword_100CCD138);
    v27 = _s11NormalModelVMa;
  }

  v28 = v27;
  sub_10003FDA0(&v24[*(v26 + 48)], &qword_100CA71A0);
  sub_10080F004(v24, v28);
  v29 = static Axis.Set.vertical.getter();
  __chkstk_darwin(v29);
  v30 = v47;
  *(&v44 - 2) = a1;
  *(&v44 - 1) = v30;
  sub_10022C350(&qword_100CDB928);
  sub_10023FBF4(&qword_100CDB930, &qword_100CDB928);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.never.getter();
  sub_10022C350(&qword_100CB59A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v28) = static Axis.Set.vertical.getter();
  *(inited + 32) = v28;
  v32 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v32;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v28)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v32)
  {
    Axis.Set.init(rawValue:)();
  }

  v33 = v45;
  v35 = v57;
  v34 = v58;
  sub_10023FBF4(&qword_100CDB938, &qword_100CDB900);
  v36 = v54;
  v37 = v50;
  View.scrollIndicators(_:axes:)();
  (*(v51 + 8))(v9, v53);
  (*(v49 + 8))(v12, v37);
  type metadata accessor for AutomationViewInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v38 = v55;
  v39 = &v55[*(v48 + 36)];
  v40 = type metadata accessor for AutomationInfoProperty();
  sub_10080EFAC(v7, &v39[*(v40 + 24)], type metadata accessor for AutomationInfo);
  sub_10080F004(v7, type metadata accessor for AutomationInfo);
  *v39 = 0;
  *(v39 + 1) = 0xE000000000000000;
  *(v39 + 2) = swift_getKeyPath();
  v39[24] = 0;
  (*(v56 + 32))(v38, v36, v35);
  if (qword_100CA23F8 != -1)
  {
    swift_once();
  }

  v41 = qword_100D90688;
  v42 = v52;
  sub_10027FB54(v38, v52, &qword_100CDB910);
  *(v42 + *(v33 + 36)) = v41;
  sub_10027FB54(v42, v34, &qword_100CDB918);
  sub_10018CF14(v34, v21, &qword_100CDB918);
  swift_storeEnumTagMultiPayload();
  sub_10080F064();

  _ConditionalContent<>.init(storage:)();
  return sub_10003FDA0(v34, &qword_100CDB918);
}

uint64_t sub_10080AFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10080B040, v5, v4);
}

uint64_t sub_10080B040()
{
  v1 = *(v0 + 16);

  v2 = type metadata accessor for SunriseSunsetDetailView(0);
  sub_1000161C0((v1 + *(v2 + 32)), *(v1 + *(v2 + 32) + 24));
  sub_1003104C4();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10080B0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_10022C350(&qword_100CDB950);
  return sub_10080B124(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_10080B124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v158 = a3;
  v155 = sub_10022C350(&qword_100CDB958);
  __chkstk_darwin(v155);
  v143 = &v133 - v5;
  v6 = sub_10022C350(&qword_100CA71A0);
  __chkstk_darwin(v6 - 8);
  v150 = &v133 - v7;
  v149 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  __chkstk_darwin(v149);
  v151 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v153 = &v133 - v10;
  v11 = sub_10022C350(&qword_100CDB960);
  __chkstk_darwin(v11 - 8);
  v157 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v156 = &v133 - v14;
  v148 = type metadata accessor for DetailNewsComponentView();
  __chkstk_darwin(v148);
  v142 = (&v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10022C350(&qword_100CA7188);
  __chkstk_darwin(v16 - 8);
  v147 = &v133 - v17;
  v146 = type metadata accessor for DetailComponentContainerViewModel();
  __chkstk_darwin(v146);
  v141 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CA7190);
  __chkstk_darwin(v19 - 8);
  v154 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v167 = &v133 - v22;
  v139 = type metadata accessor for QuaternaryDividerStyle();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for Divider();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_10022C350(&qword_100CB5C40);
  __chkstk_darwin(v145);
  v140 = &v133 - v25;
  v26 = sub_10022C350(&qword_100CDB968);
  __chkstk_darwin(v26 - 8);
  v152 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v166 = &v133 - v29;
  v30 = sub_10022C350(&qword_100CDB158);
  __chkstk_darwin(v30 - 8);
  v32 = &v133 - v31;
  v33 = type metadata accessor for SunriseSunsetChartAndTable(0);
  __chkstk_darwin(v33);
  v35 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10022C350(&qword_100CDB970);
  __chkstk_darwin(v144);
  v163 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v133 - v38;
  __chkstk_darwin(v40);
  v165 = &v133 - v41;
  v42 = sub_10022C350(&qword_100CDB978);
  __chkstk_darwin(v42 - 8);
  v162 = &v133 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = (&v133 - v45);
  *v46 = static Alignment.center.getter();
  v46[1] = v47;
  v48 = *(sub_10022C350(&qword_100CDB980) + 44);
  v161 = v46;
  sub_10080C350(a1, a2, v46 + v48);
  v49 = *(a2 + 32);
  v50 = *(a2 + 40);
  v172 = *(a2 + 16);
  v173 = v49;
  v174 = v50;
  sub_10022C350(&qword_100CC0B18);
  State.projectedValue.getter();
  v159 = v168;
  v51 = v169;
  v52 = v170;
  v53 = v171;
  v160 = type metadata accessor for SunriseSunsetDetailView(0);
  sub_10022C350(&qword_100CDB830);
  v164 = a2;
  State.projectedValue.getter();
  *v35 = v159;
  *(v35 + 2) = v51;
  *(v35 + 3) = v52;
  v35[32] = v53;
  sub_10027FB54(v32, &v35[v33[5]], &qword_100CDB158);
  v54 = &v35[v33[6]];
  *&v159 = a1;
  sub_10080EFAC(a1, v54, type metadata accessor for SunriseSunsetDetailViewModel);
  v35[v33[7]] = 1;
  v55 = 12.0;
  if (static Solarium.isEnabled.getter())
  {
    if (qword_100CA20B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v55 = sub_100472854();
  }

  *&v35[v33[8]] = v55;
  *&v35[v33[9]] = 0x4030000000000000;
  v56 = static Edge.Set.horizontal.getter();
  v57 = v160;
  v58 = v164;
  EdgeInsets.init(_all:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  sub_10080F290(v35, v39, type metadata accessor for SunriseSunsetChartAndTable);
  v67 = &v39[*(v144 + 36)];
  *v67 = v56;
  *(v67 + 1) = v60;
  *(v67 + 2) = v62;
  *(v67 + 3) = v64;
  *(v67 + 4) = v66;
  v67[40] = 0;
  sub_10027FB54(v39, v165, &qword_100CDB970);
  v68 = *(v58 + *(v57 + 36));
  if (v68 == 1)
  {
    v69 = v134;
    Divider.init()();
    v70 = v136;
    static DividerStyle<>.quaternary.getter();
    sub_10080F248(&qword_100CA7298, &type metadata accessor for Divider);
    sub_10080F248(&qword_100CB5C48, &type metadata accessor for QuaternaryDividerStyle);
    v71 = v140;
    v72 = v137;
    v73 = v139;
    View.dividerStyle<A>(_:)();
    (*(v138 + 8))(v70, v73);
    (*(v135 + 8))(v69, v72);
    v74 = static Edge.Set.top.getter();
    v75 = v151;
    v76 = v150;
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004BA4FC();
    swift_endAccess();
    EdgeInsets.init(_all:)();
    v77 = v145;
    v78 = v71 + *(v145 + 36);
    *v78 = v74;
    *(v78 + 8) = v79;
    *(v78 + 16) = v80;
    *(v78 + 24) = v81;
    *(v78 + 32) = v82;
    *(v78 + 40) = 0;
    sub_10027FB54(v71, v166, &qword_100CB5C40);
    v83 = 0;
  }

  else
  {
    v83 = 1;
    v75 = v151;
    v76 = v150;
    v77 = v145;
  }

  sub_10001B350(v166, v83, 1, v77);
  v84 = v147;
  sub_10062B094();
  if (sub_100024D10(v84, 1, v146) == 1)
  {
    sub_10003FDA0(v84, &qword_100CA7188);
    v85 = 1;
    v86 = v153;
    v87 = v148;
  }

  else
  {
    v88 = v141;
    sub_10080F290(v84, v141, type metadata accessor for DetailComponentContainerViewModel);
    v89 = v68;
    v90 = v75;
    v91 = v148;
    v92 = v142;
    sub_10080EFAC(v88, v142 + *(v148 + 20), type metadata accessor for DetailComponentContainerViewModel);
    v93 = (v164 + *(v160 + 32));
    v94 = v93[3];
    v95 = v93[4];
    v96 = sub_1000161C0(v93, v94);
    v97 = (v92 + *(v91 + 24));
    v97[3] = v94;
    v97[4] = *(v95 + 8);
    v98 = sub_100042FB0(v97);
    v99 = *(*(v94 - 8) + 16);
    v100 = v94;
    v87 = v91;
    v75 = v90;
    v99(v98, v96, v100);
    v101 = v167;
    sub_10080F004(v88, type metadata accessor for DetailComponentContainerViewModel);
    *v92 = swift_getKeyPath();
    sub_10022C350(&qword_100CA62E0);
    swift_storeEnumTagMultiPayload();
    *(v92 + *(v87 + 28)) = v89;
    sub_10080F290(v92, v101, type metadata accessor for DetailNewsComponentView);
    v85 = 0;
    v86 = v153;
  }

  sub_10001B350(v167, v85, 1, v87);
  sub_10062AF84(v76);
  if (sub_100024D10(v76, 1, v149) == 1)
  {
    sub_10003FDA0(v76, &qword_100CA71A0);
    v102 = 1;
    v103 = v156;
    v104 = v155;
  }

  else
  {
    sub_10080F290(v76, v86, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_10080EFAC(v86, v75, type metadata accessor for ConditionDetailPlatterViewModel);
    v105 = (v164 + *(v160 + 32));
    v106 = v105[3];
    v107 = v105[4];
    v108 = sub_1000161C0(v105, v106);
    v170 = v106;
    v171 = *(v107 + 8);
    v109 = sub_100042FB0(&v168);
    (*(*(v106 - 8) + 16))(v109, v108, v106);
    v110 = v143;
    sub_10080EFAC(v75, v143, type metadata accessor for ConditionDetailPlatterViewModel);
    v111 = sub_10022C350(&qword_100CA7198);
    sub_100035B30(&v168, v110 + v111[10]);
    *(v110 + v111[9]) = 0;
    v112 = (v110 + v111[11]);
    *v112 = 0;
    v112[1] = 0;
    v113 = v111[12];
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    *(v110 + v113) = sub_1004BA278();
    swift_endAccess();
    sub_10080F004(v75, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_100006F14(&v168);
    v114 = static Edge.Set.bottom.getter();
    swift_beginAccess();
    sub_1004BA570();
    swift_endAccess();
    EdgeInsets.init(_all:)();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    sub_10080F004(v86, type metadata accessor for ConditionDetailPlatterViewModel);
    v104 = v155;
    v123 = v110 + *(v155 + 36);
    *v123 = v114;
    *(v123 + 8) = v116;
    *(v123 + 16) = v118;
    *(v123 + 24) = v120;
    *(v123 + 32) = v122;
    *(v123 + 40) = 0;
    v103 = v156;
    sub_10027FB54(v110, v156, &qword_100CDB958);
    v102 = 0;
  }

  sub_10001B350(v103, v102, 1, v104);
  v124 = v162;
  sub_10018CF14(v161, v162, &qword_100CDB978);
  v125 = v163;
  sub_10018CF14(v165, v163, &qword_100CDB970);
  v126 = v152;
  sub_10018CF14(v166, v152, &qword_100CDB968);
  v127 = v154;
  sub_10018CF14(v167, v154, &qword_100CA7190);
  v128 = v157;
  sub_10018CF14(v103, v157, &qword_100CDB960);
  v129 = v158;
  sub_10018CF14(v124, v158, &qword_100CDB978);
  v130 = v103;
  v131 = sub_10022C350(&qword_100CDB988);
  sub_10018CF14(v125, v129 + v131[12], &qword_100CDB970);
  sub_10018CF14(v126, v129 + v131[16], &qword_100CDB968);
  sub_10018CF14(v127, v129 + v131[20], &qword_100CA7190);
  sub_10018CF14(v128, v129 + v131[24], &qword_100CDB960);
  sub_10003FDA0(v130, &qword_100CDB960);
  sub_10003FDA0(v167, &qword_100CA7190);
  sub_10003FDA0(v166, &qword_100CDB968);
  sub_10003FDA0(v165, &qword_100CDB970);
  sub_10003FDA0(v161, &qword_100CDB978);
  sub_10003FDA0(v128, &qword_100CDB960);
  sub_10003FDA0(v127, &qword_100CA7190);
  sub_10003FDA0(v126, &qword_100CDB968);
  sub_10003FDA0(v163, &qword_100CDB970);
  return sub_10003FDA0(v162, &qword_100CDB978);
}

uint64_t sub_10080C350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v89 = a3;
  v84 = sub_10022C350(&qword_100CDB990);
  __chkstk_darwin(v84);
  v6 = (&v76 - v5);
  v91 = sub_10022C350(&qword_100CDB998);
  v80 = *(v91 - 8);
  __chkstk_darwin(v91);
  v79 = &v76 - v7;
  v8 = sub_10022C350(&qword_100CDB9A0);
  __chkstk_darwin(v8 - 8);
  v88 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = &v76 - v11;
  v93 = sub_10022C350(&unk_100CE1680);
  __chkstk_darwin(v93);
  v13 = &v76 - v12;
  v14 = type metadata accessor for SunriseSunsetDetailHeaderView(0);
  __chkstk_darwin(v14);
  v16 = (&v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = sub_10022C350(&qword_100CDB9A8);
  __chkstk_darwin(v92);
  v18 = &v76 - v17;
  v19 = sub_10022C350(&qword_100CDB9B0);
  v86 = *(v19 - 8);
  v87 = v19;
  __chkstk_darwin(v19);
  v85 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v94 = &v76 - v22;
  v23 = sub_100629BF4();
  v25 = v24;
  sub_10062A0B0();
  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v26 = sub_100472730();
  swift_endAccess();
  v83 = a1;
  sub_10062A280();
  v28 = v27;
  v29 = static HorizontalAlignment.leading.getter();
  *v16 = v23;
  v16[1] = v25;
  *(v16 + v14[6]) = v26;
  *(v16 + v14[7]) = v28;
  *(v16 + v14[8]) = v29;
  v30 = enum case for DynamicTypeSize.accessibility1(_:);
  v31 = type metadata accessor for DynamicTypeSize();
  v32 = *(v31 - 8);
  v33 = *(v32 + 104);
  v82 = v32 + 104;
  v33(v13, v30, v31);
  v81 = sub_10080F248(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v77 = v33;
    v78 = v30;
    sub_10080F248(&qword_100CDB9B8, type metadata accessor for SunriseSunsetDetailHeaderView);
    v76 = sub_10023FBF4(&qword_100CA53C8, &unk_100CE1680);
    View.dynamicTypeSize<A>(_:)();
    sub_10003FDA0(v13, &unk_100CE1680);
    sub_10080F004(v16, type metadata accessor for SunriseSunsetDetailHeaderView);
    v35 = static Edge.Set.horizontal.getter();
    v36 = *(a2 + *(type metadata accessor for SunriseSunsetDetailView(0) + 28));
    EdgeInsets.init(_all:)();
    v37 = &v18[*(v92 + 36)];
    *v37 = v35;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    *(v37 + 4) = v41;
    v37[40] = 0;
    sub_1008091E8();
    sub_10080F2E8();
    View.isHidden(_:defaultAccessibilityHidden:)();
    sub_10003FDA0(v18, &qword_100CDB9A8);
    v42 = *(a2 + 32);
    v43 = *(a2 + 40);
    v98 = *(a2 + 16);
    v99 = v42;
    v100 = v43;
    sub_10022C350(&qword_100CC0B18);
    State.wrappedValue.getter();
    if (v97)
    {
      v44 = 1;
      v46 = v90;
      v45 = v91;
LABEL_8:
      sub_10001B350(v46, v44, 1, v45);
      v68 = v86;
      v67 = v87;
      v69 = *(v86 + 16);
      v70 = v85;
      v71 = v94;
      v69(v85, v94, v87);
      v72 = v88;
      sub_10018CF14(v46, v88, &qword_100CDB9A0);
      v73 = v89;
      v69(v89, v70, v67);
      v74 = sub_10022C350(&qword_100CDB9C8);
      sub_10018CF14(v72, &v73[*(v74 + 48)], &qword_100CDB9A0);
      sub_10003FDA0(v46, &qword_100CDB9A0);
      v75 = *(v68 + 8);
      v75(v71, v67);
      sub_10003FDA0(v72, &qword_100CDB9A0);
      return (v75)(v70, v67);
    }

    v47 = v95;
    v48 = v96;
    v49 = sub_10080969C();
    v51 = v50;
    v52 = sub_10080930C();
    v54 = v53;
    v55 = type metadata accessor for SunriseSunsetDetailLollipopHeaderView(0);
    sub_100809AE8(v6 + v55[6]);
    sub_10062A280();
    v57 = v56;
    v58 = static HorizontalAlignment.center.getter();
    *v6 = v49;
    v6[1] = v51;
    v6[2] = v52;
    v6[3] = v54;
    *(v6 + v55[7]) = v57;
    *(v6 + v55[8]) = v58;
    *(v6 + v55[9]) = v36;
    v59 = (v6 + v55[10]);
    *v59 = v47;
    v59[1] = v48;
    LOBYTE(v49) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v60 = v6 + *(v84 + 36);
    *v60 = v49;
    *(v60 + 1) = v61;
    *(v60 + 2) = v62;
    *(v60 + 3) = v63;
    *(v60 + 4) = v64;
    v60[40] = 0;
    v77(v13, v78, v31);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_10080F434();
      v65 = v79;
      View.dynamicTypeSize<A>(_:)();
      sub_10003FDA0(v13, &unk_100CE1680);
      sub_10003FDA0(v6, &qword_100CDB990);
      v46 = v90;
      v66 = v65;
      v45 = v91;
      (*(v80 + 32))(v90, v66, v91);
      v44 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10080CC34()
{
  type metadata accessor for SunriseSunsetDetailViewModel();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10080CC7C()
{
  v0 = sub_10022C350(&qword_100CDB798);
  __chkstk_darwin(v0);
  v2 = &v5 - v1;
  *v2 = static HorizontalAlignment.center.getter();
  *(v2 + 1) = 0;
  v2[16] = 0;
  v3 = sub_10022C350(&qword_100CDB7A0);
  sub_10080CE18(&v2[*(v3 + 44)]);
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5F4C();
  sub_1004B5F70();
  swift_endAccess();
  sub_10023FBF4(&qword_100CDB7A8, &qword_100CDB798);
  View.overviewTableBackground(_:_:)();

  return sub_10003FDA0(v2, &qword_100CDB798);
}

uint64_t sub_10080CE18@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = type metadata accessor for OverviewTableViewModel();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for OverviewTableView();
  v21 = *(v2 - 8);
  v3 = v21;
  __chkstk_darwin(v2);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = sub_10022C350(&qword_100CDB7B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  sub_10080D0EC();
  type metadata accessor for SunriseSunsetChartAndTable(0);
  sub_10062ADAC();
  OverviewTableView.init(model:rowVerticalPadding:rowHorizontalPadding:showDividerOnFirstRow:titleFont:valueFont:)();
  sub_10018CF14(v13, v10, &qword_100CDB7B0);
  v14 = *(v3 + 16);
  v15 = v22;
  v14(v22, v7, v2);
  v16 = v23;
  sub_10018CF14(v10, v23, &qword_100CDB7B0);
  v17 = v16 + *(sub_10022C350(&qword_100CDB7B8) + 48);
  v14(v17, v15, v2);
  v18 = *(v21 + 8);
  v18(v7, v2);
  sub_10003FDA0(v13, &qword_100CDB7B0);
  v18(v15, v2);
  return sub_10003FDA0(v10, &qword_100CDB7B0);
}

void sub_10080D0EC()
{
  v0 = type metadata accessor for SunriseSunsetDetailChartViewModel();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10022C350(&qword_100CDB158);
  __chkstk_darwin(v1);
  sub_10022C350(&qword_100CDB378);
  Binding.projectedValue.getter();
  type metadata accessor for SunriseSunsetChartAndTable(0);
  Binding.projectedValue.getter();
  sub_10062A5E8();
  sub_1007FF704();
}

void *sub_10080D248@<X0>(uint64_t a1@<X8>)
{
  v3 = static HorizontalAlignment.leading.getter();
  v9 = 0;
  sub_10080D320(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  sub_10018CF14(__dst, &v6, &qword_100CDB810);
  sub_10003FDA0(v11, &qword_100CDB810);
  memcpy(&v8[7], __dst, 0x110uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x117uLL);
}

uint64_t sub_10080D320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Axis.Set.horizontal.getter();
  sub_10080D56C(a1, __src);
  memcpy(__dst, __src, 0x53uLL);
  memcpy(v27, __src, 0x53uLL);
  sub_10018CF14(__dst, v30, &qword_100CDB818);
  sub_10003FDA0(v27, &qword_100CDB818);
  memcpy(&v20[7], __dst, 0x53uLL);
  v5 = static Axis.Set.horizontal.getter();
  sub_10080DAA0(__src);
  memcpy(v28, __src, 0x53uLL);
  memcpy(v29, __src, 0x53uLL);
  sub_10018CF14(v28, v30, &qword_100CDB818);
  sub_10003FDA0(v29, &qword_100CDB818);
  memcpy(&v19[7], v28, 0x53uLL);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29[104] = 1;
  v29[96] = v22;
  v29[88] = v24;
  v16 = 0x4024000000000000;
  v17 = 0;
  v18[0] = &v16;
  v15[0] = v4;
  memcpy(&v15[1], v20, 0x5AuLL);
  v18[1] = v15;
  v14[0] = v5;
  memcpy(&v14[1], v19, 0x5AuLL);
  v7 = 0;
  v8 = 1;
  v9 = v21;
  v10 = v22;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v18[2] = v14;
  v18[3] = &v7;
  sub_1003E9DEC(v18, a2);
  memcpy(v30, v14, 0x5BuLL);
  sub_10003FDA0(v30, &unk_100CB5CD0);
  memcpy(__src, v15, 0x5BuLL);
  return sub_10003FDA0(__src, &unk_100CB5CD0);
}

uint64_t sub_10080D56C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = type metadata accessor for TimeStyle();
  v3 = *(v54 - 8);
  __chkstk_darwin(v54);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Font.Leading();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Font.largeTitle.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v48 = enum case for Font.Leading.tight(_:);
  v47 = *(v7 + 104);
  v41 = v6;
  v47(v9);
  Font.leading(_:)();

  v46 = *(v7 + 8);
  v46(v9, v6);
  v45 = type metadata accessor for Style();
  static Style.componentTime.getter();
  v10 = a1[1];
  v44 = *a1;
  v43 = v10;
  v42 = *(a1 + *(type metadata accessor for SunriseSunsetDetailHeaderView(0) + 28));
  v11 = TimeStyle.formatTime(_:periodSymbols:font:)();
  v13 = v12;
  LOBYTE(a1) = v14;
  v15 = *(v3 + 8);
  v39 = v3 + 8;
  v40 = v15;
  v15(v5, v54);
  v51 = Text.monospacedDigit()();
  v50 = v16;
  v49 = v17;
  v52 = v18;
  sub_10010CD64(v11, v13, a1 & 1);

  static Font.title2.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v19 = v41;
  (v47)(v9, v48, v41);
  Font.leading(_:)();

  v46(v9, v19);
  static Style.componentTime.getter();
  v20 = TimeStyle.formatTime(_:periodSymbols:font:)();
  v22 = v21;
  LOBYTE(v9) = v23;
  v40(v5, v54);
  v24 = Text.monospacedDigit()();
  v26 = v25;
  LOBYTE(v5) = v27;
  v29 = v28;
  sub_10010CD64(v20, v22, v9 & 1);

  KeyPath = swift_getKeyPath();
  v31 = v56[0];
  *(&v58 + 1) = v56[0];
  DWORD1(v58) = *(v56 + 3);
  *v59 = KeyPath;
  *&v59[8] = 2;
  v59[16] = 0;
  *&v59[17] = 256;
  v32 = v53;
  *(v53 + 79) = *&v59[15];
  LOBYTE(a1) = v49 & 1;
  v55[56] = v49 & 1;
  *&v57 = v24;
  *(&v57 + 1) = v26;
  LOBYTE(v58) = v5 & 1;
  *(&v58 + 1) = v29;
  v33 = v51;
  v34 = v50;
  *v32 = v51;
  *(v32 + 8) = v34;
  *(v32 + 16) = a1;
  *(v32 + 24) = v52;
  v35 = v57;
  v36 = *v59;
  *(v32 + 48) = v58;
  *(v32 + 64) = v36;
  *(v32 + 32) = v35;
  v60[0] = v24;
  v60[1] = v26;
  v61 = v5 & 1;
  *&v62[3] = *(v56 + 3);
  *v62 = v31;
  v63 = v29;
  v64 = KeyPath;
  v65 = 2;
  v66 = 0;
  v67 = 256;
  v37 = v33;
  sub_10010CD54(v33, v34, a1);

  sub_10018CF14(&v57, v55, &qword_100CACF40);
  sub_10003FDA0(v60, &qword_100CACF40);
  sub_10010CD64(v37, v34, a1);
}

uint64_t sub_10080DAA0@<X0>(uint64_t a1@<X8>)
{
  static Font.subheadline.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v2 = sub_10080DC50();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  static Font.footnote.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v9 = sub_10080DC50();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  KeyPath = swift_getKeyPath();
  v21[56] = v6 & 1;
  *&v22 = v9;
  *(&v22 + 1) = v11;
  LOBYTE(v23) = v13 & 1;
  *(&v23 + 1) = v15;
  *v24 = KeyPath;
  *&v24[8] = 2;
  v24[16] = 0;
  *&v24[17] = 256;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  v17 = v22;
  v18 = v23;
  v19 = *v24;
  *(a1 + 79) = *&v24[15];
  *(a1 + 48) = v18;
  *(a1 + 64) = v19;
  *(a1 + 32) = v17;
  v25[0] = v9;
  v25[1] = v11;
  v26 = v13 & 1;
  v27 = v15;
  v28 = KeyPath;
  v29 = 2;
  v30 = 0;
  v31 = 256;
  sub_10010CD54(v2, v4, v6 & 1);

  sub_10018CF14(&v22, v21, &qword_100CACF40);
  sub_10003FDA0(v25, &qword_100CACF40);
  sub_10010CD64(v2, v4, v6 & 1);
}

uint64_t sub_10080DC50()
{
  v0 = type metadata accessor for AttributedString();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for SunriseSunsetDetailHeaderView(0);
  AttributedString.with(font:)();
  v1 = Text.init(_:)();
  v3 = v2;
  v5 = v4;
  static Color.secondary.getter();
  v6 = Text.foregroundColor(_:)();
  v8 = v7;
  v10 = v9;

  sub_10010CD64(v1, v3, v5 & 1);

  v11 = Text.monospacedDigit()();
  sub_10010CD64(v6, v8, v10 & 1);

  return v11;
}

uint64_t sub_10080DDC8()
{
  v1 = sub_10022C350(&qword_100CDB7C0);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  *v3 = static HorizontalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_10022C350(&qword_100CDB7C8);
  sub_10080DEF4(v0, &v3[*(v4 + 44)]);
  type metadata accessor for SunriseSunsetDetailLollipopHeaderView(0);
  sub_10023FBF4(&qword_100CDB7D0, &qword_100CDB7C0);
  View.offsetXWithinBounds(_:)();
  return sub_10003FDA0(v3, &qword_100CDB7C0);
}

uint64_t sub_10080DEF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v114 = a2;
  v3 = type metadata accessor for AttributedString();
  __chkstk_darwin(v3 - 8);
  v111 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Font.Leading();
  v107 = *(v5 - 8);
  v108 = v5;
  __chkstk_darwin(v5);
  v106 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimeStyle();
  v109 = *(v7 - 8);
  v110 = v7;
  __chkstk_darwin(v7);
  v105 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CDB7D8);
  v112 = *(v9 - 8);
  v113 = v9;
  __chkstk_darwin(v9);
  v122 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v124 = &v95 - v12;
  v13 = type metadata accessor for CharacterSet();
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin(v13);
  v102 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v15 - 8);
  v17 = &v95 - v16;
  v18 = type metadata accessor for Font.TextStyle();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CDB7E0);
  __chkstk_darwin(v22 - 8);
  v121 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v123 = &v95 - v25;
  v116 = a1;
  v26 = a1[1];
  v98 = *a1;
  v96 = v26;
  v128[0] = v98;
  v128[1] = v26;
  v97 = sub_10002D5A4();
  swift_bridgeObjectRetain_n();
  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;
  v32 = *(v19 + 104);
  v119 = v19 + 104;
  v120 = v32;
  v99 = v18;
  v32(v21, enum case for Font.TextStyle.footnote(_:), v18);
  v33 = type metadata accessor for Font.Design();
  v100 = v17;
  v101 = v33;
  sub_10001B350(v17, 1, 1, v33);
  v115 = v21;
  static Font.system(_:design:weight:)();
  sub_10003FDA0(v17, &qword_100CA4020);
  v34 = *(v19 + 8);
  v117 = v19 + 8;
  v118 = v34;
  v34(v21, v18);
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v35 = Text.font(_:)();
  v37 = v36;
  LOBYTE(v18) = v38;
  v40 = v39;

  sub_10010CD64(v27, v29, v31 & 1);

  v41 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v136 = v18 & 1;
  *&v132 = v35;
  *(&v132 + 1) = v37;
  LOBYTE(v133) = v18 & 1;
  *(&v133 + 1) = v40;
  LOWORD(v134) = 257;
  *(&v134 + 1) = KeyPath;
  v135 = v41;
  v128[0] = v98;
  v128[1] = v96;
  v43 = v102;
  static CharacterSet.whitespacesAndNewlines.getter();
  StringProtocol.trimmingCharacters(in:)();
  (*(v103 + 8))(v43, v104);

  sub_10022C350(&qword_100CDB7E8);
  sub_10080EB88();
  View.accessibilityHidden(_:)();
  v126[0] = v132;
  v126[1] = v133;
  v126[2] = v134;
  v127 = v135;
  sub_10003FDA0(v126, &qword_100CDB7E8);
  type metadata accessor for Style();
  v44 = v105;
  static Style.componentTime.getter();
  v103 = v116[3];
  v104 = type metadata accessor for SunriseSunsetDetailLollipopHeaderView(0);
  v45 = v115;
  v46 = v99;
  v120(v115, enum case for Font.TextStyle.largeTitle(_:), v99);
  v47 = v100;
  sub_10001B350(v100, 1, 1, v101);
  static Font.system(_:design:weight:)();
  sub_10003FDA0(v47, &qword_100CA4020);
  v118(v45, v46);
  v49 = v106;
  v48 = v107;
  v50 = v108;
  (*(v107 + 104))(v106, enum case for Font.Leading.tight(_:), v108);
  Font.leading(_:)();

  (*(v48 + 8))(v49, v50);
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v51 = v44;
  v52 = TimeStyle.formatTime(_:periodSymbols:font:)();
  v54 = v53;
  LOBYTE(v43) = v55;
  v57 = v56;

  (*(v109 + 8))(v51, v110);
  LOBYTE(v47) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  LOBYTE(v51) = v43 & 1;
  LOBYTE(v128[0]) = v43 & 1;
  LOBYTE(v125[0]) = 0;
  v66 = static Color.primary.getter();
  v67 = swift_getKeyPath();
  v125[0] = v52;
  v125[1] = v54;
  LOBYTE(v125[2]) = v51;
  v125[3] = v57;
  LOBYTE(v125[4]) = v47;
  v125[5] = v59;
  v125[6] = v61;
  v125[7] = v63;
  v125[8] = v65;
  LOBYTE(v125[9]) = 0;
  v125[10] = v67;
  v125[11] = v66;
  sub_10022C350(&qword_100CDB7F8);
  sub_10080EC60();
  View.monospacedDigit()();
  memcpy(v128, v125, sizeof(v128));
  sub_10003FDA0(v128, &qword_100CDB7F8);
  v68 = v115;
  v120(v115, enum case for Font.TextStyle.caption2(_:), v46);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v118(v68, v46);
  AttributedString.with(font:)();

  v69 = Text.init(_:)();
  v71 = v70;
  LOBYTE(v68) = v72;
  static Color.secondary.getter();
  v73 = Text.foregroundColor(_:)();
  v75 = v74;
  LOBYTE(v49) = v76;

  sub_10010CD64(v69, v71, v68 & 1);

  v77 = Text.monospacedDigit()();
  v117 = v78;
  v118 = v77;
  LODWORD(v119) = v79;
  v120 = v80;
  sub_10010CD64(v73, v75, v49 & 1);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v115 = v125[2];
  v116 = v125[0];
  v110 = v125[5];
  v111 = v125[4];
  v131 = 1;
  v130 = v125[1];
  v129 = v125[3];
  v81 = v121;
  sub_10018CF14(v123, v121, &qword_100CDB7E0);
  v83 = v112;
  v82 = v113;
  v84 = *(v112 + 16);
  v85 = v122;
  v84(v122, v124, v113);
  LODWORD(v107) = v131;
  LODWORD(v108) = v130;
  LODWORD(v109) = v129;
  v86 = v114;
  *v114 = 0x4018000000000000;
  *(v86 + 8) = 0;
  v87 = sub_10022C350(&qword_100CDB808);
  sub_10018CF14(v81, v86 + v87[12], &qword_100CDB7E0);
  v84(v86 + v87[16], v85, v82);
  v88 = v86 + v87[20];
  v89 = v117;
  v90 = v118;
  *v88 = v118;
  *(v88 + 1) = v89;
  LOBYTE(v66) = v119 & 1;
  v88[16] = v119 & 1;
  *(v88 + 3) = v120;
  v91 = v86 + v87[24];
  *v91 = 0;
  v91[8] = v107;
  *(v91 + 2) = v116;
  v91[24] = v108;
  *(v91 + 4) = v115;
  v91[40] = v109;
  v92 = v110;
  *(v91 + 6) = v111;
  *(v91 + 7) = v92;
  sub_10010CD54(v90, v89, v66);
  v93 = *(v83 + 8);

  v93(v124, v82);
  sub_10003FDA0(v123, &qword_100CDB7E0);
  sub_10010CD64(v90, v89, v66);

  v93(v122, v82);
  return sub_10003FDA0(v121, &qword_100CDB7E0);
}

uint64_t sub_10080EACC(uint64_t a1)
{
  result = sub_10080F248(&qword_100CDB790, type metadata accessor for SunriseSunsetDetailViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10080EB24@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10080EB88()
{
  result = qword_100CDB7F0;
  if (!qword_100CDB7F0)
  {
    sub_10022E824(&qword_100CDB7E8);
    sub_10023EBBC(&qword_100CB8158, &qword_100CB8160);
    sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB7F0);
  }

  return result;
}

unint64_t sub_10080EC60()
{
  result = qword_100CDB800;
  if (!qword_100CDB800)
  {
    sub_10022E824(&qword_100CDB7F8);
    sub_10023EBBC(&qword_100CA64A0, &qword_100CA6438);
    sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB800);
  }

  return result;
}

uint64_t sub_10080ED38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = sub_100003A24(a1, a2);
  sub_10022E824(v6);
  sub_100005A00();
  sub_10023FBF4(a4, a2);
  return swift_getOpaqueTypeConformance2();
}

void sub_10080EDD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10022E824(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10080EE58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for SunriseSunsetDetailView(0);
  sub_100003810(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_10080A518(a1, v7, a2);
}

uint64_t sub_10080EED4()
{
  v2 = type metadata accessor for SunriseSunsetDetailView(0);
  sub_100003810(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000926F8;

  return sub_10080AFA8(v5, v6, v0 + v4);
}

uint64_t sub_10080EFAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10080F004(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10080F064()
{
  result = qword_100CDB940;
  if (!qword_100CDB940)
  {
    sub_10022E824(&qword_100CDB918);
    sub_10080F11C();
    sub_10023FBF4(&qword_100CA4620, &qword_100CA4628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB940);
  }

  return result;
}

unint64_t sub_10080F11C()
{
  result = qword_100CDB948;
  if (!qword_100CDB948)
  {
    sub_10022E824(&qword_100CDB910);
    sub_10022E824(&qword_100CDB900);
    sub_10023FBF4(&qword_100CDB938, &qword_100CDB900);
    swift_getOpaqueTypeConformance2();
    sub_10080F248(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB948);
  }

  return result;
}

uint64_t sub_10080F248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10080F290(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

unint64_t sub_10080F2E8()
{
  result = qword_100CDB9C0;
  if (!qword_100CDB9C0)
  {
    sub_10022E824(&qword_100CDB9A8);
    type metadata accessor for SunriseSunsetDetailHeaderView(255);
    sub_10022E824(&unk_100CE1680);
    sub_10080F248(&qword_100CDB9B8, type metadata accessor for SunriseSunsetDetailHeaderView);
    sub_10023FBF4(&qword_100CA53C8, &unk_100CE1680);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB9C0);
  }

  return result;
}

unint64_t sub_10080F434()
{
  result = qword_100CDB9D0;
  if (!qword_100CDB9D0)
  {
    sub_10022E824(&qword_100CDB990);
    sub_10080F248(&qword_100CDB9D8, type metadata accessor for SunriseSunsetDetailLollipopHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDB9D0);
  }

  return result;
}

uint64_t sub_10080F500(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10080F540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10080F5CC@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10022C350(&qword_100CDBA80);
  return sub_10080F620(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_10080F620@<X0>(char *a1@<X0>, __n128 *a2@<X8>)
{
  v127 = a2;
  v123 = sub_10022C350(&qword_100CDBA88);
  __chkstk_darwin(v123);
  v105 = (&v101 - v3);
  v4 = sub_10022C350(&qword_100CA5528);
  v103 = *(v4 - 8);
  v104 = v4;
  __chkstk_darwin(v4);
  v101 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v102 = &v101 - v7;
  v121 = sub_10022C350(&qword_100CDBA90);
  __chkstk_darwin(v121);
  v122 = &v101 - v8;
  v9 = sub_10022C350(&qword_100CB5DC0);
  __chkstk_darwin(v9 - 8);
  v126 = (&v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = type metadata accessor for Font.TextStyle();
  v115 = *(v14 - 8);
  v116 = v14;
  __chkstk_darwin(v14);
  v114 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v16 - 8);
  v18 = &v101 - v17;
  v19 = sub_10022C350(&qword_100CDBA98);
  __chkstk_darwin(v19);
  v21 = (&v101 - v20);
  v22 = sub_10022C350(&qword_100CB5DB8);
  __chkstk_darwin(v22 - 8);
  v124 = (&v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v128 = &v101 - v25;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v117 = v162[21];
  v118 = v164;
  v119 = v167;
  v120 = v166;
  v179 = 1;
  v177 = v163;
  v175 = v165;

  v113 = Image.init(systemName:)();
  v26 = a1[40];
  v125 = v13;
  v129 = a1;
  if (v26)
  {
    v27 = static Color.secondary.getter();
  }

  else
  {
    v27 = static Color.green.getter();
  }

  v28 = v27;
  KeyPath = swift_getKeyPath();
  v30 = type metadata accessor for Font.Design();
  sub_10001B350(v18, 1, 1, v30);
  v31 = static Font.system(size:weight:design:)();
  sub_10003FDF4(v18, &qword_100CA4020);
  v32 = swift_getKeyPath();
  v33 = (v21 + *(v19 + 36));
  v34 = *(sub_10022C350(&qword_100CAF750) + 28);
  v35 = enum case for Image.Scale.large(_:);
  v36 = type metadata accessor for Image.Scale();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  *v21 = v113;
  v21[1] = KeyPath;
  v21[2] = v28;
  v21[3] = v32;
  v21[4] = v31;
  sub_100810514();
  View.accessibilityHidden(_:)();
  sub_10003FDF4(v21, &qword_100CDBA98);
  swift_beginAccess();
  v37 = sub_10033D8F8();
  swift_endAccess();
  [v37 _scaledValueForValue:46.0];
  v39 = v38;

  v40 = *(v129 + 9);
  v162[0] = *(v129 + 8);
  v162[1] = v40;
  v110 = sub_10002D5A4();

  v41 = Text.init<A>(_:)();
  v43 = v42;
  LOBYTE(v34) = v44;
  v46 = v114;
  v45 = v115;
  v47 = v116;
  (*(v115 + 104))(v114, enum case for Font.TextStyle.title2(_:), v116);
  static Font.Weight.bold.getter();
  static Font.system(_:weight:)();
  (*(v45 + 8))(v46, v47);
  v48 = Text.font(_:)();
  v50 = v49;
  LOBYTE(v45) = v51;

  sub_10010CD64(v41, v43, v34 & 1);

  static Color.primary.getter();
  v52 = Text.foregroundColor(_:)();
  v115 = v53;
  v116 = v52;
  LOBYTE(v43) = v54;
  v114 = v55;

  sub_10010CD64(v48, v50, v45 & 1);

  v113 = swift_getKeyPath();
  v56 = static Edge.Set.horizontal.getter();
  v111 = v43 & 1;
  v112 = v56;
  LOBYTE(v162[0]) = v43 & 1;
  v161[0] = 1;
  swift_beginAccess();
  v57 = sub_10033D8F8();
  swift_endAccess();
  [v57 _scaledValueForValue:24.0];
  v59 = v58;

  v60 = *(v129 + 11);
  v162[0] = *(v129 + 10);
  v162[1] = v60;

  v61 = Text.init<A>(_:)();
  v63 = v62;
  LOBYTE(v43) = v64;
  static Font.subheadline.getter();
  v65 = Text.font(_:)();
  v67 = v66;
  v69 = v68;

  v70 = v43 & 1;
  v71 = v129;
  sub_10010CD64(v61, v63, v70);

  static Color.secondary.getter();
  v72 = Text.foregroundColor(_:)();
  v109 = v74;
  v110 = v73;
  LOBYTE(v63) = v75;

  sub_10010CD64(v65, v67, v69 & 1);

  v108 = swift_getKeyPath();
  v76 = static Edge.Set.horizontal.getter();
  v106 = v63 & 1;
  v107 = v76;
  LOBYTE(v162[0]) = v63 & 1;
  v161[0] = 1;
  v77 = *(v71 + 14);
  if (v77)
  {
    v79 = *(v71 + 12);
    v78 = *(v71 + 13);
    swift_beginAccess();
    v80 = sub_10033D8F8();
    swift_endAccess();
    [v80 _scaledValueForValue:40.0];
    v82 = v81;

    sub_100810684(v71, v162);
    v83 = swift_allocObject();
    v84 = memcpy((v83 + 16), v162, 0x88uLL);
    *(v83 + 152) = v79;
    __chkstk_darwin(v84);
    *(&v101 - 4) = v78;
    *(&v101 - 3) = v77;
    *(&v101 - 2) = v71;
    v85 = v102;
    Button.init(action:label:)();
    v87 = v103;
    v86 = v104;
    v88 = *(v103 + 16);
    v129 = v72;
    v89 = v101;
    v88(v101, v85, v104);
    v90 = v105;
    *v105 = v82;
    *(v90 + 8) = 0;
    *(v90 + 9) = 257;
    v91 = sub_10022C350(&qword_100CDBAB8);
    v88((v90 + *(v91 + 48)), v89, v86);
    v92 = *(v87 + 8);
    v92(v89, v86);
    sub_100060DE0(v90, v122, &qword_100CDBA88);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CDBAC0, &qword_100CDBA88);
    v93 = v125;
    v72 = v129;
    _ConditionalContent<>.init(storage:)();
    sub_10003FDF4(v90, &qword_100CDBA88);
    v92(v85, v86);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CDBAC0, &qword_100CDBA88);
    v93 = v125;
    _ConditionalContent<>.init(storage:)();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v94 = v168;
  v95 = v170;
  v96 = v173;
  v129 = v172;
  v160 = 1;
  v159 = v169;
  v158 = v171;
  v146 = 0;
  v147 = v179;
  *v148 = *v178;
  *&v148[3] = *&v178[3];
  v149 = v117;
  v150 = v177;
  *v151 = *v176;
  *&v151[3] = *&v176[3];
  v152 = v118;
  v153 = v175;
  *&v154[3] = *&v174[3];
  *v154 = *v174;
  v155 = v120;
  v156 = v119;
  v157[0] = &v146;
  v97 = v128;
  v98 = v124;
  sub_100060DE0(v128, v124, &qword_100CB5DB8);
  v143 = v39;
  v144 = 0;
  v145 = 257;
  v157[1] = v98;
  v157[2] = &v143;
  v142[0] = v116;
  v142[1] = v115;
  LOBYTE(v142[2]) = v111;
  v142[3] = v114;
  v142[4] = v113;
  LOBYTE(v142[5]) = 1;
  LOBYTE(v142[6]) = v112;
  memset(&v142[7], 0, 32);
  LOBYTE(v142[11]) = 1;
  v139 = v59;
  v140 = 0;
  v141 = 257;
  v157[3] = v142;
  v157[4] = &v139;
  v138[0] = v72;
  v138[1] = v110;
  LOBYTE(v138[2]) = v106;
  v138[3] = v109;
  v138[4] = v108;
  LOBYTE(v138[5]) = 1;
  LOBYTE(v138[6]) = v107;
  memset(&v138[7], 0, 32);
  LOBYTE(v138[11]) = 1;
  v157[5] = v138;
  v99 = v126;
  sub_100060DE0(v93, v126, &qword_100CB5DC0);
  v130 = 0;
  v131 = v160;
  v132 = v94;
  v133 = v159;
  v134 = v95;
  v135 = v158;
  v136 = v129;
  v137 = v96;
  v157[6] = v99;
  v157[7] = &v130;
  sub_1003E9EE4(v157, v127);
  sub_10003FDF4(v93, &qword_100CB5DC0);
  sub_10003FDF4(v97, &qword_100CB5DB8);
  sub_10003FDF4(v99, &qword_100CB5DC0);
  memcpy(v161, v138, 0x59uLL);
  sub_10003FDF4(v161, &qword_100CB4B18);
  memcpy(v162, v142, 0x59uLL);
  sub_10003FDF4(v162, &qword_100CB4B18);
  return sub_10003FDF4(v98, &qword_100CB5DB8);
}

uint64_t sub_1008103C8@<X0>(uint64_t a1@<X8>)
{
  sub_10002D5A4();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.subheadline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10010CD64(v2, v4, v6 & 1);

  Color.init(hex:)();
  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_10010CD64(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

unint64_t sub_100810514()
{
  result = qword_100CDBAA0;
  if (!qword_100CDBAA0)
  {
    sub_10022E824(&qword_100CDBA98);
    sub_1008105CC();
    sub_100006F64(&unk_100CE1690, &qword_100CAF750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBAA0);
  }

  return result;
}

unint64_t sub_1008105CC()
{
  result = qword_100CDBAA8;
  if (!qword_100CDBAA8)
  {
    sub_10022E824(&qword_100CDBAB0);
    sub_1003325F0();
    sub_100006F64(&qword_100CA53B8, &qword_100CA53C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBAA8);
  }

  return result;
}

uint64_t SearchLocation.init(searchCompletion:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = v57 - v6;
  v8 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003C38();
  v64 = v12 - v13;
  __chkstk_darwin(v14);
  v16 = v57 - v15;
  __chkstk_darwin(v17);
  v19 = v57 - v18;
  *a2 = a1;
  v20 = a1;
  v21 = [v20 title];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  a2[1] = v22;
  a2[2] = v24;
  v25 = [v20 subtitle];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  a2[3] = v26;
  a2[4] = v28;
  v29 = [v20 w_calloutTitle];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  a2[5] = v30;
  a2[6] = v32;
  v65 = 0;
  v66 = 0;
  if (![v20 w_getCoordinate:&v65])
  {

    v53 = type metadata accessor for SearchLocation();
    v54 = a2 + *(v53 + 36);
    *v54 = 0;
    *(v54 + 1) = 0;
    v54[16] = 1;
    v55 = *(v53 + 32);
LABEL_9:
    v50 = type metadata accessor for Location();
    v51 = a2 + v55;
    v52 = 1;
    return sub_10001B350(v51, v52, 1, v50);
  }

  v63 = v7;
  v33 = v65;
  v34 = v66;
  v35 = type metadata accessor for SearchLocation();
  v36 = a2 + *(v35 + 36);
  *v36 = v33;
  *(v36 + 1) = v34;
  v36[16] = 0;
  v37 = [v20 w_mapItem];
  v38 = [v37 timeZone];

  if (!v38)
  {

LABEL_8:
    v55 = *(v35 + 32);
    goto LABEL_9;
  }

  static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v10 + 32))(v19, v16, v8);
  v39 = sub_10081261C([v20 w_mapItem]);
  if (!v40)
  {

    (*(v10 + 8))(v19, v8);
    goto LABEL_8;
  }

  v62 = v39;
  v61 = sub_100811428(v20, v39, v40);
  v58 = *(v35 + 32);
  v59 = v41;
  v57[3] = CLLocationCoordinate2D.id.getter();
  v60 = v42;
  (*(v10 + 16))(v64, v19, v8);
  v43 = v63;
  static WeatherClock.date.getter();
  v44 = type metadata accessor for Date();
  sub_10001B350(v43, 0, 1, v44);
  v45 = [v20 title];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57[1] = v47;
  v57[2] = v46;

  v48 = [v20 subtitle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = v58;
  Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
  (*(v10 + 8))(v19, v8);
  v50 = type metadata accessor for Location();
  v51 = a2 + v49;
  v52 = 0;
  return sub_10001B350(v51, v52, 1, v50);
}

uint64_t static SearchLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationCoordinate();
  sub_1000037C4();
  v77 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v75 = v8 - v7;
  v78 = sub_10022C350(&qword_100CDBAD8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v81 = &v73 - v10;
  v11 = sub_10022C350(&qword_100CDBAE0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003C38();
  v76 = v13 - v14;
  v16 = __chkstk_darwin(v15);
  v79 = &v73 - v17;
  __chkstk_darwin(v16);
  v80 = &v73 - v18;
  v19 = type metadata accessor for Location();
  sub_1000037C4();
  v82 = v20;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v25);
  sub_100003828();
  __chkstk_darwin(v26);
  v28 = &v73 - v27;
  v29 = sub_10022C350(&qword_100CAEE78);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v30);
  v32 = &v73 - v31;
  v33 = *a1;
  v34 = *a2;
  if (*a1)
  {
    if (!v34)
    {
      goto LABEL_41;
    }

    v74 = v4;
    sub_10000A42C();
    v35 = v34;
    v36 = v33;
    v37 = static NSObject.== infix(_:_:)();

    if ((v37 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v74 = v4;
    if (v34)
    {
LABEL_41:
      v63 = 0;
      return v63 & 1;
    }
  }

  v38 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_41;
  }

  v39 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_41;
  }

  v40 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_41;
  }

  v73 = type metadata accessor for SearchLocation();
  v41 = *(v73 + 32);
  v42 = *(v29 + 48);
  sub_1005C1F54(a1 + v41, v32, &qword_100CA65D8);
  sub_1005C1F54(a2 + v41, &v32[v42], &qword_100CA65D8);
  sub_1000038B4(v32, 1, v19);
  if (v38)
  {
    sub_1000038B4(&v32[v42], 1, v19);
    if (v38)
    {
      sub_1000180EC(v32, &qword_100CA65D8);
      goto LABEL_31;
    }

LABEL_29:
    v44 = &qword_100CAEE78;
    v45 = v32;
LABEL_40:
    sub_1000180EC(v45, v44);
    goto LABEL_41;
  }

  sub_1005C1F54(v32, v28, &qword_100CA65D8);
  sub_1000038B4(&v32[v42], 1, v19);
  if (v43)
  {
    (*(v82 + 8))(v28, v19);
    goto LABEL_29;
  }

  v46 = v82;
  (*(v82 + 32))(v24, &v32[v42], v19);
  sub_10001F920();
  sub_100812BA8(v47, v48);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v46 + 8);
  v50(v24, v19);
  v50(v28, v19);
  sub_1000180EC(v32, &qword_100CA65D8);
  if ((v49 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_31:
  v51 = v73;
  sub_10004EB70(a1 + *(v73 + 36));
  v52 = v80;
  LocationCoordinate.init(_:)();
  sub_10004EB70(a2 + *(v51 + 36));
  v53 = v79;
  LocationCoordinate.init(_:)();
  v54 = *(v78 + 48);
  v55 = v81;
  sub_100016AFC();
  sub_1005C1F54(v56, v57, v58);
  sub_100016AFC();
  sub_1005C1F54(v59, v60, v61);
  v62 = v74;
  sub_1000038B4(v55, 1, v74);
  if (!v38)
  {
    v64 = v76;
    sub_1005C1F54(v55, v76, &qword_100CDBAE0);
    sub_1000038B4(v55 + v54, 1, v62);
    if (!v65)
    {
      v67 = v77;
      v68 = v55 + v54;
      v69 = v75;
      (*(v77 + 32))(v75, v68, v62);
      sub_100009034();
      sub_100812BA8(v70, v71);
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v72 = *(v67 + 8);
      v72(v69, v62);
      sub_1000180EC(v53, &qword_100CDBAE0);
      sub_1000180EC(v52, &qword_100CDBAE0);
      v72(v64, v62);
      sub_1000180EC(v55, &qword_100CDBAE0);
      return v63 & 1;
    }

    sub_10001775C(v53);
    sub_10001775C(v52);
    (*(v77 + 8))(v64, v62);
    goto LABEL_39;
  }

  sub_10001775C(v53);
  sub_10001775C(v52);
  sub_1000038B4(v55 + v54, 1, v62);
  if (!v38)
  {
LABEL_39:
    v44 = &qword_100CDBAD8;
    v45 = v55;
    goto LABEL_40;
  }

  sub_1000180EC(v55, &qword_100CDBAE0);
  v63 = 1;
  return v63 & 1;
}

uint64_t SearchLocation.init(searchCompletion:title:subtitle:calloutTitle:location:coordinate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  v14 = type metadata accessor for SearchLocation();
  result = sub_1003541A8(a8, a9 + *(v14 + 32));
  v16 = a9 + *(v14 + 36);
  *v16 = a10;
  *(v16 + 1) = a11;
  v16[16] = a12 & 1;
  return result;
}

id SearchLocation.searchCompletion.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_100811428(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 w_mapItem];
  v7 = [v6 wc_weatherDisplayName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v8 == a2 && v10 == a3)
  {

    return 0;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    return 0;
  }

  v13 = [a1 w_mapItem];
  v14 = [v13 wc_weatherDisplayName];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v15;
}

uint64_t SearchLocation.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v2 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3B030;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000100ADFDC0;
  v7 = *v1;
  v8 = sub_10022C350(&qword_100CDBAE8);
  *(inited + 48) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  v9 = *(v1 + 16);
  *(inited + 96) = *(v1 + 8);
  *(inited + 104) = v9;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x656C746974627573;
  *(inited + 136) = 0xE800000000000000;
  v10 = *(v1 + 32);
  *(inited + 144) = *(v1 + 24);
  *(inited + 152) = v10;
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 176), "calloutTitle");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  v11 = *(v1 + 48);
  *(inited + 192) = *(v1 + 40);
  *(inited + 200) = v11;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x6E6F697461636F6CLL;
  *(inited + 232) = 0xE800000000000000;
  *(inited + 264) = sub_10022C350(&qword_100CA6078);
  v12 = type metadata accessor for SearchLocation();
  sub_1005C1F54(v1 + *(v12 + 32), v5, &qword_100CA65D8);
  v13 = type metadata accessor for Location();
  sub_1000038B4(v5, 1, v13);
  if (v14)
  {
    v15 = v7;

    sub_1000180EC(v5, &qword_100CA65D8);
    v19 = 0;
    v21 = 0;
  }

  else
  {
    sub_10001F920();
    sub_100812BA8(v16, v17);
    v18 = v7;

    v19 = ShortDescribable.description.getter();
    v21 = v20;
    (*(*(v13 - 8) + 8))(v5, v13);
  }

  *(inited + 240) = v19;
  *(inited + 248) = v21;
  Dictionary.init(dictionaryLiteral:)();
  v22 = sub_10022C350(&qword_100CDBAF0);
  v23 = v25;
  v25[3] = v22;
  v23[4] = sub_10081268C();
  sub_100042FB0(v23);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100811888()
{
  sub_100812BA8(&qword_100CDBC18, type metadata accessor for SearchLocation);

  return ShortDescribable.description.getter();
}

uint64_t SearchLocation.hash(into:)()
{
  v1 = v0;
  type metadata accessor for LocationCoordinate();
  sub_1000037C4();
  v39 = v3;
  v40 = v2;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v38 = v5 - v4;
  v6 = sub_10022C350(&qword_100CDBAE0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003C38();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Location();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v37 - v23;
  v25 = *v0;
  if (*v0)
  {
    Hasher._combine(_:)(1u);
    v26 = v25;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v27 = type metadata accessor for SearchLocation();
  sub_1005C1F54(v1 + *(v27 + 32), v24, &qword_100CA65D8);
  sub_1000038B4(v24, 1, v14);
  if (v28)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v16 + 32))(v20, v24, v14);
    Hasher._combine(_:)(1u);
    sub_10001F920();
    sub_100812BA8(v29, v30);
    dispatch thunk of Hashable.hash(into:)();
    (*(v16 + 8))(v20, v14);
  }

  sub_10004EB70(v1 + *(v27 + 36));
  LocationCoordinate.init(_:)();
  sub_1005C1F54(v13, v10, &qword_100CDBAE0);
  v31 = v40;
  sub_1000038B4(v10, 1, v40);
  if (v28)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v33 = v38;
    v32 = v39;
    (*(v39 + 32))(v38, v10, v31);
    Hasher._combine(_:)(1u);
    sub_100009034();
    sub_100812BA8(v34, v35);
    dispatch thunk of Hashable.hash(into:)();
    (*(v32 + 8))(v33, v31);
  }

  return sub_1000180EC(v13, &qword_100CDBAE0);
}

Swift::Int SearchLocation.hashValue.getter()
{
  Hasher.init(_seed:)();
  SearchLocation.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100811D14()
{
  Hasher.init(_seed:)();
  SearchLocation.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SearchLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_10022C350(&qword_100CA65D8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v25 = sub_10022C350(&qword_100CDBB08);
  sub_1000037C4();
  v8 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v26 = type metadata accessor for SearchLocation();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = (v14 - v13);
  v16 = a1[3];
  v27 = a1;
  sub_1000161C0(a1, v16);
  sub_1008126F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(v27);
  }

  *v15 = 0;
  LOBYTE(v28) = 0;
  sub_100075070();
  v15[1] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[2] = v17;
  LOBYTE(v28) = 1;
  sub_100075070();
  v15[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[4] = v18;
  LOBYTE(v28) = 2;
  sub_100075070();
  v15[5] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[6] = v19;
  LOBYTE(v28) = 4;
  sub_100812804(&qword_100CDBB18, &qword_100CAF9E0);
  sub_100075070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v26;
  sub_1003541A8(v6, v15 + *(v26 + 32));
  sub_10022C350(&qword_100CD6698);
  v30 = 5;
  sub_100812880(&qword_100CDBB20, &qword_100CD3020);
  sub_100075070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v8 + 8))(v11, v25);
  v21 = v29;
  v22 = v15 + *(v20 + 36);
  *v22 = v28;
  v22[16] = v21;
  sub_100812744(v15, v24);
  sub_100006F14(v27);
  return sub_1008127A8(v15);
}

uint64_t SearchLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CDBB28);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  sub_1000161C0(a1, a1[3]);
  sub_1008126F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  sub_100004BB8();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_100004BB8();
    LOBYTE(v16) = 2;
    sub_100004BB8();
    v11 = type metadata accessor for SearchLocation();
    LOBYTE(v16) = 4;
    sub_10022C350(&qword_100CA65D8);
    sub_100812804(&qword_100CDBB30, &qword_100CAFA08);
    sub_100016AFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = (v3 + *(v11 + 36));
    v13 = *(v12 + 16);
    v16 = *v12;
    v17 = v13;
    v15[15] = 5;
    sub_10022C350(&qword_100CD6698);
    sub_100812880(&qword_100CDBB38, &qword_100CD3040);
    sub_100016AFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_100812444(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C452D0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1008124B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100812444(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1008124E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100214874(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10081251C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100812490(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100812544(uint64_t a1)
{
  v2 = sub_1008126F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100812580(uint64_t a1)
{
  v2 = sub_1008126F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10081261C(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10081268C()
{
  result = qword_100CDBAF8;
  if (!qword_100CDBAF8)
  {
    sub_10022E824(&qword_100CDBAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBAF8);
  }

  return result;
}

unint64_t sub_1008126F0()
{
  result = qword_100CDBB10;
  if (!qword_100CDBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBB10);
  }

  return result;
}

uint64_t sub_100812744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008127A8(uint64_t a1)
{
  v2 = type metadata accessor for SearchLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100812804(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CA65D8);
    sub_10001F920();
    sub_100812BA8(a2, v5);
    result = sub_100069A94();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100812880(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CD6698);
    sub_100812BA8(a2, type metadata accessor for CLLocationCoordinate2D);
    result = sub_100069A94();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100812AA4()
{
  result = qword_100CDBC00;
  if (!qword_100CDBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBC00);
  }

  return result;
}

unint64_t sub_100812AFC()
{
  result = qword_100CDBC08;
  if (!qword_100CDBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBC08);
  }

  return result;
}

unint64_t sub_100812B54()
{
  result = qword_100CDBC10;
  if (!qword_100CDBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBC10);
  }

  return result;
}

uint64_t sub_100812BA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100812C20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x54746E6572727563 && a2 == 0xEB00000000656D69)
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

uint64_t sub_100812CBC(void *a1)
{
  v2 = sub_10022C350(&qword_100CDBCC8);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_100813384();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Date();
  sub_10001F938();
  sub_1008134A0(v8, v9);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_100812E18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v22 = v5;
  __chkstk_darwin(v6);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CDBCB8);
  sub_1000037C4();
  v23 = v9;
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for TimeState();
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_100813384();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v22;
    v17 = v24;
    sub_10001F938();
    sub_1008134A0(v18, v19);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v12, v8);
    (*(v16 + 32))(v15, v25, v4);
    sub_1008133D8(v15, v17);
  }

  return sub_100006F14(a1);
}

uint64_t sub_10081307C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100812C20(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1008130A8(uint64_t a1)
{
  v2 = sub_100813384();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008130E4(uint64_t a1)
{
  v2 = sub_100813384();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100813154@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0x54746E6572727563;
  *(inited + 40) = 0xEB00000000656D69;
  v4 = type metadata accessor for Date();
  *(inited + 72) = v4;
  v5 = sub_100042FB0((inited + 48));
  (*(*(v4 - 8) + 16))(v5, v1, v4);
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CDBCD0);
  a1[4] = sub_10081343C();
  sub_100042FB0(a1);
  type metadata accessor for TimeState();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1008132A0()
{
  sub_1008134A0(&qword_100CDBCE0, type metadata accessor for TimeState);

  return ShortDescribable.description.getter();
}

unint64_t sub_100813384()
{
  result = qword_100CDBCC0;
  if (!qword_100CDBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBCC0);
  }

  return result;
}

uint64_t sub_1008133D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10081343C()
{
  result = qword_100CDBCD8;
  if (!qword_100CDBCD8)
  {
    sub_10022E824(&qword_100CDBCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBCD8);
  }

  return result;
}

uint64_t sub_1008134A0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for TimeState.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_100813598()
{
  result = qword_100CDBCE8;
  if (!qword_100CDBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBCE8);
  }

  return result;
}

unint64_t sub_1008135F0()
{
  result = qword_100CDBCF0;
  if (!qword_100CDBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBCF0);
  }

  return result;
}

unint64_t sub_100813648()
{
  result = qword_100CDBCF8;
  if (!qword_100CDBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBCF8);
  }

  return result;
}

uint64_t sub_10081369C@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CDBD08);
  a1[4] = sub_1008137E0();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10081374C()
{
  sub_100813844();

  return ShortDescribable.description.getter();
}

unint64_t sub_10081378C()
{
  result = qword_100CDBD00;
  if (!qword_100CDBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBD00);
  }

  return result;
}

unint64_t sub_1008137E0()
{
  result = qword_100CDBD10;
  if (!qword_100CDBD10)
  {
    sub_10022E824(&qword_100CDBD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBD10);
  }

  return result;
}

unint64_t sub_100813844()
{
  result = qword_100CDBD18;
  if (!qword_100CDBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBD18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100813974(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayKind();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  switch(sub_1004CA0C4())
  {
    case 1u:
      if (qword_100CA2870 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D90E48;
      goto LABEL_50;
    case 2u:
      sub_10000685C();
      sub_100003B48();
      v43 = 32;
      goto LABEL_62;
    case 3u:
      sub_10000685C();
      sub_100003B48();
      v43 = 36;
      goto LABEL_62;
    case 4u:
      if (qword_100CA2878 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D90E58;
      goto LABEL_50;
    case 5u:
      if (qword_100CA2880 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D90E68;
      goto LABEL_50;
    case 6u:
      sub_10000685C();
      sub_100003B48();
      v43 = 42;
      goto LABEL_62;
    case 7u:
      if (qword_100CA2888 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D90E78;
      goto LABEL_50;
    case 8u:
      if (qword_100CA2890 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D90E88;
      goto LABEL_50;
    case 9u:
      if (qword_100CA2898 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D90E98;
      goto LABEL_50;
    case 0xAu:
      sub_100003B48();
      v44 = 118;
      goto LABEL_64;
    case 0xBu:
      if (qword_100CA28A0 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D90EA8;
      goto LABEL_50;
    case 0xCu:
      if (qword_100CA28A8 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D90EB8;
      goto LABEL_50;
    case 0xDu:
      if (qword_100CA28B0 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D90EC8;
      goto LABEL_50;
    case 0xEu:
      if (qword_100CA28B8 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D90ED8;
      goto LABEL_50;
    case 0xFu:
      v40 = sub_10000FA34();
      v41(v40);
      v11 = 15;
      goto LABEL_53;
    case 0x10u:
      v24 = enum case for WeatherMapPrecipitationOverlayKind.forecast(_:);
      type metadata accessor for WeatherMapPrecipitationOverlayKind();
      sub_100003A9C();
      (*(v25 + 104))(v7, v24);
      v26 = sub_10000FA34();
      v27(v26);
      v11 = 16;
      goto LABEL_53;
    case 0x11u:
      v36 = enum case for WeatherMapPrecipitationOverlayKind.radar(_:);
      type metadata accessor for WeatherMapPrecipitationOverlayKind();
      sub_100003A9C();
      (*(v37 + 104))(v7, v36);
      v38 = sub_10000FA34();
      v39(v38);
      v11 = 17;
      goto LABEL_53;
    case 0x12u:
      v13 = sub_10000FA34();
      v14(v13);
      v11 = 18;
      goto LABEL_53;
    case 0x13u:
      v28 = sub_10000FA34();
      v29(v28);
      v11 = 19;
LABEL_53:
      v34 = v7;
      v35 = 1;
      goto LABEL_54;
    case 0x14u:
      v9 = sub_10000FA34();
      v10(v9);
      v11 = 20;
      goto LABEL_43;
    case 0x15u:
      v30 = enum case for WeatherMapPrecipitationOverlayKind.forecast(_:);
      type metadata accessor for WeatherMapPrecipitationOverlayKind();
      sub_100003A9C();
      (*(v31 + 104))(v7, v30);
      v32 = sub_10000FA34();
      v33(v32);
      v11 = 21;
      goto LABEL_43;
    case 0x16u:
      v15 = sub_10000FA34();
      v16(v15);
      v11 = 22;
      goto LABEL_43;
    case 0x17u:
      v17 = sub_10000FA34();
      v18(v17);
      v11 = 23;
LABEL_43:
      v34 = v7;
      v35 = 0;
LABEL_54:
      v12 = sub_10099733C(v11, v34, v35);
      (*(v5 + 8))(v7, v4);
      goto LABEL_55;
    case 0x18u:
      if (qword_100CA28C0 != -1)
      {
        swift_once();
      }

      v8 = &byte_100D90EE8;
LABEL_50:
      v12 = *v8;

      goto LABEL_55;
    case 0x19u:
      sub_10000685C();
      sub_100003B48();
      v43 = 110;
      goto LABEL_62;
    case 0x1Au:
      sub_100003B48();
      v44 = 112;
LABEL_64:
      v45 = v44;
      goto LABEL_65;
    case 0x1Bu:
      sub_100997704();
      v12 = 27;
      goto LABEL_55;
    case 0x1Cu:
      sub_1009979E0();
      v12 = 28;
      goto LABEL_55;
    case 0x1Du:
      if (qword_100CA2788 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000703C(v19, qword_100D90CF0);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v46 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_100078694(a1, a2, &v46);
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to find PerformanceTest with name: %s", v22, 0xCu);
        sub_100006F14(v23);
      }

      v12 = 0;
LABEL_55:
      result = v12;
      break;
    default:
      sub_10000685C();
      sub_100003B48();
      v43 = 30;
LABEL_62:
      v45 = v43;
LABEL_65:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1008141BC()
{
  result = sub_100814D80(sub_100814200, 0);
  byte_100D90E48 = 1;
  qword_100D90E50 = result;
  return result;
}

uint64_t sub_100814200(double a1, double a2, double a3, double a4)
{
  v4 = a4 + -240.0;
  v5 = (a4 + -240.0) * 3.0;
  sub_10022C350(&qword_100CCD900);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2D320;
  *(v6 + 56) = &type metadata for Down;
  *(v6 + 64) = &off_100C4F728;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  *(v7 + 16) = 1;
  *(v7 + 24) = xmmword_100A89070;
  *(v7 + 40) = 0x4072C00000000000;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  *(v6 + 96) = &type metadata for Up;
  *(v6 + 104) = &off_100C52C20;
  v8 = swift_allocObject();
  *(v6 + 72) = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = xmmword_100A89070;
  *(v8 + 40) = 0x4072C00000000000;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  return v6;
}

uint64_t sub_100814310()
{
  result = sub_10081433C();
  byte_100D90E58 = 4;
  qword_100D90E60 = result;
  return result;
}

uint64_t sub_10081433C()
{
  v0 = type metadata accessor for Navigate(0);
  __chkstk_darwin(v0);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v9[15];
  *v2 = 2;
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + *(v0 + 20)) = 0;
  sub_100814574();
  v5 = v4;
  sub_10022C350(&qword_100CA5FF8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A30470;
  *(v6 + 56) = &type metadata for Mica;
  *(v6 + 64) = &off_100C63A98;
  *(v6 + 32) = 0;
  *(v6 + 96) = &type metadata for Delay;
  *(v6 + 104) = &off_100C500F8;
  *(v6 + 72) = 0x3FF0000000000000;
  *(v6 + 136) = &type metadata for UpdateWeather;
  *(v6 + 144) = &off_100C7B258;
  *(v6 + 112) = v3;
  *(v6 + 176) = &type metadata for Delay;
  *(v6 + 184) = &off_100C500F8;
  *(v6 + 152) = 0x3FF0000000000000;
  *(v6 + 216) = v0;
  *(v6 + 224) = &off_100C5FB58;
  v7 = sub_100042FB0((v6 + 192));
  sub_100815D68(v2, v7, type metadata accessor for Navigate);
  *(v6 + 256) = &type metadata for Delay;
  *(v6 + 264) = &off_100C500F8;
  *(v6 + 232) = 0x3FF0000000000000;
  *(v6 + 296) = &type metadata for Sidebar;
  *(v6 + 304) = &off_100C700F0;
  *(v6 + 272) = 1;
  *(v6 + 336) = &type metadata for Delay;
  *(v6 + 344) = &off_100C500F8;
  *(v6 + 312) = 0x3FF0000000000000;
  *(v6 + 376) = &type metadata for Measure;
  *(v6 + 384) = &off_100C4E718;
  *(v6 + 352) = v5;
  *(v6 + 416) = &type metadata for Mica;
  *(v6 + 424) = &off_100C63A98;
  *(v6 + 392) = 1;
  sub_100639624(v2, type metadata accessor for Navigate);
  return v6;
}

double sub_100814574()
{
  sub_10022C350(&qword_100CA5FF8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100A2D320;
  *(v0 + 56) = &type metadata for Swipe;
  *(v0 + 64) = &off_100C5E1A0;
  *(v0 + 32) = sub_100815DC4;
  *(v0 + 40) = 0;
  *(v0 + 96) = &type metadata for Delay;
  *(v0 + 104) = &off_100C500F8;
  *(v0 + 72) = 0x3FF0000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A2D320;
  *(v1 + 56) = &type metadata for Swipe;
  *(v1 + 64) = &off_100C5E1A0;
  *(v1 + 32) = sub_1008146F8;
  *(v1 + 40) = 0;
  *(v1 + 96) = &type metadata for Delay;
  *(v1 + 104) = &off_100C500F8;
  *(v1 + 72) = 0x3FF0000000000000;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100A2D320;
  *(v2 + 56) = &type metadata for Swipe;
  *(v2 + 64) = &off_100C5E1A0;
  *(v2 + 32) = sub_100815DC4;
  *(v2 + 40) = 0;
  *(v2 + 96) = &type metadata for Delay;
  *(v2 + 104) = &off_100C500F8;
  *(v2 + 72) = 0x3FF0000000000000;
  v3 = swift_allocObject();
  *&result = 3;
  *(v3 + 16) = xmmword_100A3BBA0;
  *(v3 + 56) = &type metadata for Repeat;
  *(v3 + 64) = &off_100C6E4D8;
  *(v3 + 32) = 2;
  *(v3 + 40) = v0;
  *(v3 + 96) = &type metadata for Repeat;
  *(v3 + 104) = &off_100C6E4D8;
  *(v3 + 72) = 4;
  *(v3 + 80) = v1;
  *(v3 + 136) = &type metadata for Repeat;
  *(v3 + 144) = &off_100C6E4D8;
  *(v3 + 112) = 2;
  *(v3 + 120) = v2;
  return result;
}

uint64_t sub_100814710(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  sub_10022C350(&qword_100CCD908);
  v12 = sub_100019478();
  *(v12 + 16) = xmmword_100A2C3F0;
  *(v12 + 56) = a1;
  *(v12 + 64) = a2;
  v13 = sub_100019478();
  *(v12 + 32) = v13;
  *(v13 + 16) = a3;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = a7;
  *(v13 + 48) = a6;
  *(v13 + 56) = 1;
  *(v13 + 64) = 0x3FF0000000000000;
  return v12;
}

uint64_t sub_1008147A8()
{
  result = sub_1008147D4();
  byte_100D90E68 = 5;
  qword_100D90E70 = result;
  return result;
}

uint64_t sub_1008147D4()
{
  v0 = type metadata accessor for DispatchAction();
  __chkstk_darwin(v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v3 = v8[15];
  static Location.cupertino.getter();
  type metadata accessor for PerformanceTestAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainAction();
  swift_storeEnumTagMultiPayload();
  v2[*(v0 + 20)] = 0;
  v4 = sub_100814A28();
  sub_10022C350(&qword_100CA5FF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A30470;
  *(v5 + 56) = &type metadata for Mica;
  *(v5 + 64) = &off_100C63A98;
  *(v5 + 32) = 0;
  *(v5 + 96) = &type metadata for Delay;
  *(v5 + 104) = &off_100C500F8;
  *(v5 + 72) = 0x3FF0000000000000;
  *(v5 + 136) = &type metadata for UpdateWeather;
  *(v5 + 144) = &off_100C7B258;
  *(v5 + 112) = v3;
  *(v5 + 176) = &type metadata for Delay;
  *(v5 + 184) = &off_100C500F8;
  *(v5 + 152) = 0x3FF0000000000000;
  *(v5 + 216) = v0;
  *(v5 + 224) = &off_100C798F0;
  v6 = sub_100042FB0((v5 + 192));
  sub_100815D68(v2, v6, type metadata accessor for DispatchAction);
  *(v5 + 256) = &type metadata for Delay;
  *(v5 + 264) = &off_100C500F8;
  *(v5 + 232) = 0x3FF0000000000000;
  *(v5 + 296) = &type metadata for Sidebar;
  *(v5 + 304) = &off_100C700F0;
  *(v5 + 272) = 0;
  *(v5 + 336) = &type metadata for Delay;
  *(v5 + 344) = &off_100C500F8;
  *(v5 + 312) = 0x4008000000000000;
  *(v5 + 376) = &type metadata for Measure;
  *(v5 + 384) = &off_100C4E718;
  *(v5 + 352) = v4;
  *(v5 + 416) = &type metadata for Mica;
  *(v5 + 424) = &off_100C63A98;
  *(v5 + 392) = 1;
  sub_100639624(v2, type metadata accessor for DispatchAction);
  return v5;
}

uint64_t sub_100814A28()
{
  v0 = type metadata accessor for DispatchAction();
  __chkstk_darwin(v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Location.newYork.getter();
  type metadata accessor for PerformanceTestAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainAction();
  swift_storeEnumTagMultiPayload();
  v2[*(v0 + 20)] = 0;
  sub_10022C350(&qword_100CA5FF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A2D320;
  *(v3 + 56) = v0;
  *(v3 + 64) = &off_100C798F0;
  v4 = sub_100042FB0((v3 + 32));
  sub_100815D68(v2, v4, type metadata accessor for DispatchAction);
  *(v3 + 96) = &type metadata for Delay;
  *(v3 + 104) = &off_100C500F8;
  *(v3 + 72) = 0x4008000000000000;
  sub_100639624(v2, type metadata accessor for DispatchAction);
  return v3;
}

void sub_100814B70()
{
  sub_100814B9C();
  byte_100D90E78 = 7;
  qword_100D90E80 = v0;
}

double sub_100814B9C()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  sub_10022C350(&qword_100CA5FF8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100A2D320;
  *(v0 + 56) = &type metadata for Rotate;
  *(v0 + 64) = &off_100C601A8;
  *(v0 + 32) = 3;
  *(v0 + 96) = &type metadata for Delay;
  *(v0 + 104) = &off_100C500F8;
  *(v0 + 72) = 0x3FF0000000000000;
  v1 = swift_allocObject();
  *&result = 8;
  *(v1 + 16) = xmmword_100A3ECD0;
  *(v1 + 56) = &type metadata for Mica;
  *(v1 + 64) = &off_100C63A98;
  *(v1 + 32) = 0;
  *(v1 + 96) = &type metadata for Delay;
  *(v1 + 104) = &off_100C500F8;
  *(v1 + 72) = 0x3FF0000000000000;
  *(v1 + 136) = &type metadata for UpdateWeather;
  *(v1 + 144) = &off_100C7B258;
  *(v1 + 112) = v3;
  *(v1 + 176) = &type metadata for Delay;
  *(v1 + 184) = &off_100C500F8;
  *(v1 + 152) = 0x3FF0000000000000;
  *(v1 + 216) = &type metadata for Sidebar;
  *(v1 + 224) = &off_100C700F0;
  *(v1 + 192) = 1;
  *(v1 + 256) = &type metadata for Delay;
  *(v1 + 264) = &off_100C500F8;
  *(v1 + 232) = 0x3FF0000000000000;
  *(v1 + 296) = &type metadata for Measure;
  *(v1 + 304) = &off_100C4E718;
  *(v1 + 272) = v0;
  *(v1 + 336) = &type metadata for Mica;
  *(v1 + 344) = &off_100C63A98;
  *(v1 + 312) = 1;
  return result;
}

uint64_t sub_100814D3C()
{
  result = sub_100814D80(sub_100814FD8, 1);
  byte_100D90E88 = 8;
  qword_100D90E90 = result;
  return result;
}

uint64_t sub_100814D80(uint64_t a1, int a2)
{
  v13 = a2;
  v3 = type metadata accessor for Navigate(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    sub_10000904C();
  }

  SettingReader.read<A>(_:)();

  v7 = v14;
  *v6 = 2;
  type metadata accessor for Navigate.Destination(0);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(v3 + 20)) = 0;
  sub_10022C350(&qword_100CA5FF8);
  v8 = sub_100019478();
  *(v8 + 16) = xmmword_100A2C3F0;
  *(v8 + 56) = &type metadata for Scroll;
  *(v8 + 64) = &off_100C53AA8;
  *(v8 + 32) = a1;
  *(v8 + 40) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100A30470;
  *(v9 + 56) = &type metadata for Mica;
  *(v9 + 64) = &off_100C63A98;
  *(v9 + 32) = 0;
  *(v9 + 96) = &type metadata for Delay;
  *(v9 + 104) = &off_100C500F8;
  *(v9 + 72) = 0x3FF0000000000000;
  *(v9 + 136) = &type metadata for UpdateWeather;
  *(v9 + 144) = &off_100C7B258;
  *(v9 + 112) = v7;
  *(v9 + 176) = &type metadata for Delay;
  *(v9 + 184) = &off_100C500F8;
  *(v9 + 152) = 0x3FF0000000000000;
  *(v9 + 216) = v3;
  *(v9 + 224) = &off_100C5FB58;
  v10 = sub_100042FB0((v9 + 192));
  sub_100815D68(v6, v10, type metadata accessor for Navigate);
  *(v9 + 256) = &type metadata for Delay;
  *(v9 + 264) = &off_100C500F8;
  *(v9 + 232) = 0x3FF0000000000000;
  *(v9 + 296) = &type metadata for Sidebar;
  *(v9 + 304) = &off_100C700F0;
  *(v9 + 272) = v13;
  *(v9 + 336) = &type metadata for Delay;
  *(v9 + 344) = &off_100C500F8;
  *(v9 + 312) = 0x3FF0000000000000;
  *(v9 + 376) = &type metadata for Measure;
  *(v9 + 384) = &off_100C4E718;
  *(v9 + 352) = v8;
  *(v9 + 416) = &type metadata for Mica;
  *(v9 + 424) = &off_100C63A98;
  *(v9 + 392) = 1;
  sub_100639624(v6, type metadata accessor for Navigate);
  return v9;
}

uint64_t sub_100814FD8(double a1, double a2, double a3, double a4)
{
  v12 = CGRectInset(*&a1, 10.0, 90.0);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  sub_10022C350(&qword_100CCD900);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A2D320;
  *(v8 + 56) = &type metadata for Down;
  *(v8 + 64) = &off_100C4F728;
  v9 = swift_allocObject();
  *(v8 + 32) = v9;
  *(v9 + 16) = 1;
  *(v9 + 24) = x;
  *(v9 + 32) = y;
  *(v9 + 40) = width;
  *(v9 + 48) = height;
  *(v9 + 56) = height;
  *(v8 + 96) = &type metadata for Up;
  *(v8 + 104) = &off_100C52C20;
  v10 = swift_allocObject();
  *(v8 + 72) = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = x;
  *(v10 + 32) = y;
  *(v10 + 40) = width;
  *(v10 + 48) = height;
  *(v10 + 56) = height;
  return v8;
}

void sub_1008150D4()
{
  sub_100815100();
  byte_100D90E98 = 9;
  qword_100D90EA0 = v0;
}

double sub_100815100()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  sub_10022C350(&qword_100CA5FF8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100A2C3F0;
  *(v0 + 56) = &type metadata for Scroll;
  *(v0 + 64) = &off_100C53AA8;
  *(v0 + 32) = sub_10081529C;
  *(v0 + 40) = 0;
  v1 = swift_allocObject();
  *&result = 8;
  *(v1 + 16) = xmmword_100A3ECD0;
  *(v1 + 56) = &type metadata for Mica;
  *(v1 + 64) = &off_100C63A98;
  *(v1 + 32) = 0;
  *(v1 + 96) = &type metadata for Delay;
  *(v1 + 104) = &off_100C500F8;
  *(v1 + 72) = 0x3FF0000000000000;
  *(v1 + 136) = &type metadata for UpdateWeather;
  *(v1 + 144) = &off_100C7B258;
  *(v1 + 112) = v3;
  *(v1 + 176) = &type metadata for Delay;
  *(v1 + 184) = &off_100C500F8;
  *(v1 + 152) = 0x3FF0000000000000;
  *(v1 + 216) = &type metadata for Sidebar;
  *(v1 + 224) = &off_100C700F0;
  *(v1 + 192) = 0;
  *(v1 + 256) = &type metadata for Delay;
  *(v1 + 264) = &off_100C500F8;
  *(v1 + 232) = 0x3FF0000000000000;
  *(v1 + 296) = &type metadata for Measure;
  *(v1 + 304) = &off_100C4E718;
  *(v1 + 272) = v0;
  *(v1 + 336) = &type metadata for Mica;
  *(v1 + 344) = &off_100C63A98;
  *(v1 + 312) = 1;
  return result;
}

uint64_t sub_10081529C(double a1, double a2, double a3, double a4)
{
  v6 = a3 + -5.0;
  sub_10022C350(&qword_100CCD900);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2D320;
  *(v7 + 56) = &type metadata for Down;
  *(v7 + 64) = &off_100C4F728;
  v8 = swift_allocObject();
  *(v7 + 32) = v8;
  *(v8 + 16) = 1;
  *(v8 + 24) = v6;
  *(v8 + 32) = a2;
  *(v8 + 40) = 0x4014000000000000;
  *(v8 + 48) = a4;
  *(v8 + 56) = 0x4072C00000000000;
  *(v7 + 96) = &type metadata for Up;
  *(v7 + 104) = &off_100C52C20;
  v9 = swift_allocObject();
  *(v7 + 72) = v9;
  *(v9 + 16) = 0;
  *(v9 + 24) = v6;
  *(v9 + 32) = a2;
  *(v9 + 40) = 0x4014000000000000;
  *(v9 + 48) = a4;
  *(v9 + 56) = 0x4072C00000000000;
  return v7;
}

void sub_1008153A4()
{
  sub_1008157F4(sub_10081542C, 0);
  byte_100D90EA8 = 11;
  qword_100D90EB0 = v0;
}

void sub_1008153E8()
{
  sub_1008157F4(sub_10081542C, 0);
  byte_100D90EB8 = 12;
  qword_100D90EC0 = v0;
}

double sub_10081542C()
{
  sub_10022C350(&qword_100CA5FF8);
  v0 = swift_allocObject();
  *&result = 4;
  *(v0 + 16) = xmmword_100A3B020;
  *(v0 + 56) = &type metadata for Sidebar;
  *(v0 + 64) = &off_100C700F0;
  *(v0 + 32) = 1;
  *(v0 + 96) = &type metadata for Delay;
  *(v0 + 104) = &off_100C500F8;
  *(v0 + 72) = 0x4000000000000000;
  *(v0 + 136) = &type metadata for Sidebar;
  *(v0 + 144) = &off_100C700F0;
  *(v0 + 112) = 0;
  *(v0 + 176) = &type metadata for Delay;
  *(v0 + 184) = &off_100C500F8;
  *(v0 + 152) = 0x4000000000000000;
  return result;
}

void sub_1008154B4()
{
  sub_1008157F4(sub_10081553C, 1);
  byte_100D90EC8 = 13;
  qword_100D90ED0 = v0;
}

void sub_1008154F8()
{
  sub_1008157F4(sub_10081553C, 1);
  byte_100D90ED8 = 14;
  qword_100D90EE0 = v0;
}

uint64_t sub_10081553C()
{
  v0 = type metadata accessor for DispatchAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = sub_10022C350(&qword_100CA6658);
  v8 = &v6[*(v7 + 48)];
  v9 = *(v7 + 64);
  v10 = enum case for WeatherMapOverlayKind.temperature(_:);
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003A9C();
  (*(v11 + 104))(v6, v10);
  type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v12 = type metadata accessor for Date();
  sub_10001B350(&v6[v9], 1, 1, v12);
  type metadata accessor for LocationViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainAction();
  swift_storeEnumTagMultiPayload();
  v6[*(v0 + 20)] = 1;
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v3[*(v0 + 20)] = 1;
  sub_10022C350(&qword_100CA5FF8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100A3B020;
  *(v13 + 56) = v0;
  *(v13 + 64) = &off_100C798F0;
  v14 = sub_100042FB0((v13 + 32));
  sub_100815D68(v6, v14, type metadata accessor for DispatchAction);
  *(v13 + 96) = &type metadata for Delay;
  *(v13 + 104) = &off_100C500F8;
  *(v13 + 72) = 0x4000000000000000;
  *(v13 + 136) = v0;
  *(v13 + 144) = &off_100C798F0;
  v15 = sub_100042FB0((v13 + 112));
  sub_100815D68(v3, v15, type metadata accessor for DispatchAction);
  *(v13 + 176) = &type metadata for Delay;
  *(v13 + 184) = &off_100C500F8;
  *(v13 + 152) = 0x4000000000000000;
  sub_100639624(v3, type metadata accessor for DispatchAction);
  sub_100639624(v6, type metadata accessor for DispatchAction);
  return v13;
}

void sub_1008157B0()
{
  sub_1008157F4(sub_10081598C, 1);
  byte_100D90EE8 = 24;
  qword_100D90EF0 = v0;
}

double sub_1008157F4(uint64_t (*a1)(uint64_t), char a2)
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2238 != -1)
  {
    sub_10000904C();
  }

  SettingReader.read<A>(_:)();

  v5 = a1(v4);
  sub_10022C350(&qword_100CA5FF8);
  v6 = sub_100019478();
  *(v6 + 16) = xmmword_100A2C3F0;
  *(v6 + 56) = &type metadata for Repeat;
  *(v6 + 64) = &off_100C6E4D8;
  *(v6 + 32) = 3;
  *(v6 + 40) = v5;
  v7 = swift_allocObject();
  *&result = 8;
  *(v7 + 16) = xmmword_100A3ECD0;
  *(v7 + 56) = &type metadata for Mica;
  *(v7 + 64) = &off_100C63A98;
  *(v7 + 32) = 0;
  *(v7 + 96) = &type metadata for Delay;
  *(v7 + 104) = &off_100C500F8;
  *(v7 + 72) = 0x3FF0000000000000;
  *(v7 + 136) = &type metadata for UpdateWeather;
  *(v7 + 144) = &off_100C7B258;
  *(v7 + 112) = v9;
  *(v7 + 176) = &type metadata for Delay;
  *(v7 + 184) = &off_100C500F8;
  *(v7 + 152) = 0x3FF0000000000000;
  *(v7 + 216) = &type metadata for Sidebar;
  *(v7 + 224) = &off_100C700F0;
  *(v7 + 192) = a2;
  *(v7 + 256) = &type metadata for Delay;
  *(v7 + 264) = &off_100C500F8;
  *(v7 + 232) = 0x4000000000000000;
  *(v7 + 296) = &type metadata for Measure;
  *(v7 + 304) = &off_100C4E718;
  *(v7 + 272) = v6;
  *(v7 + 336) = &type metadata for Mica;
  *(v7 + 344) = &off_100C63A98;
  *(v7 + 312) = 1;
  return result;
}

uint64_t sub_10081598C()
{
  v0 = type metadata accessor for DispatchAction();
  __chkstk_darwin(v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v29 - v4;
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_10022C350(&qword_100CA6658);
  v13 = &v11[*(v12 + 48)];
  v14 = *(v12 + 64);
  v15 = enum case for WeatherMapPrecipitationOverlayKind.forecast(_:);
  v16 = type metadata accessor for WeatherMapPrecipitationOverlayKind();
  (*(*(v16 - 8) + 104))(v11, v15, v16);
  v17 = enum case for WeatherMapOverlayKind.precipitation(_:);
  v18 = type metadata accessor for WeatherMapOverlayKind();
  (*(*(v18 - 8) + 104))(v11, v17, v18);
  type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 1;
  v19 = type metadata accessor for Date();
  sub_10001B350(&v11[v14], 1, 1, v19);
  type metadata accessor for LocationViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainAction();
  swift_storeEnumTagMultiPayload();
  v11[*(v0 + 20)] = 1;
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8[*(v0 + 20)] = 0;
  v29 = v5;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v5[*(v0 + 20)] = 0;
  v30 = v2;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v2[*(v0 + 20)] = 1;
  sub_10022C350(&qword_100CA5FF8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100A3ECD0;
  *(v20 + 56) = v0;
  *(v20 + 64) = &off_100C798F0;
  v21 = sub_100042FB0((v20 + 32));
  sub_100815D68(v11, v21, type metadata accessor for DispatchAction);
  *(v20 + 96) = &type metadata for Delay;
  *(v20 + 104) = &off_100C500F8;
  *(v20 + 72) = 0x4000000000000000;
  *(v20 + 136) = v0;
  *(v20 + 144) = &off_100C798F0;
  v22 = sub_100042FB0((v20 + 112));
  v23 = v8;
  sub_100815D68(v8, v22, type metadata accessor for DispatchAction);
  *(v20 + 176) = &type metadata for Delay;
  *(v20 + 184) = &off_100C500F8;
  *(v20 + 152) = 0x4000000000000000;
  *(v20 + 216) = v0;
  *(v20 + 224) = &off_100C798F0;
  v24 = sub_100042FB0((v20 + 192));
  v25 = v29;
  sub_100815D68(v29, v24, type metadata accessor for DispatchAction);
  *(v20 + 256) = &type metadata for Delay;
  *(v20 + 264) = &off_100C500F8;
  *(v20 + 232) = 0x4000000000000000;
  *(v20 + 296) = v0;
  *(v20 + 304) = &off_100C798F0;
  v26 = sub_100042FB0((v20 + 272));
  v27 = v30;
  sub_100815D68(v30, v26, type metadata accessor for DispatchAction);
  *(v20 + 336) = &type metadata for Delay;
  *(v20 + 344) = &off_100C500F8;
  *(v20 + 312) = 0x4000000000000000;
  sub_100639624(v27, type metadata accessor for DispatchAction);
  sub_100639624(v25, type metadata accessor for DispatchAction);
  sub_100639624(v23, type metadata accessor for DispatchAction);
  sub_100639624(v11, type metadata accessor for DispatchAction);
  return v20;
}

uint64_t sub_100815D68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100815DC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v37;
  if (!v37)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v6 = v33;
  if (!v33)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = v36;
  v29 = v38;
  v26 = v34;
  v27 = v35;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA728);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v32)
  {
    v7 = sub_10002D7F8(v31, v32);
    v8 = __chkstk_darwin(v7);
    v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for NetworkActivityManager();
    v30[3] = v13;
    v30[4] = &off_100C55440;
    v30[0] = v12;
    v14 = type metadata accessor for ToolbarAddButtonInteractor();
    v15 = swift_allocObject();
    v16 = sub_10002D7F8(v30, v13);
    v17 = __chkstk_darwin(v16);
    v19 = (&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v15[11] = v13;
    v15[12] = &off_100C55440;
    v22 = v29;
    v15[2] = v5;
    v15[3] = v22;
    v24 = v26;
    v23 = v27;
    v15[4] = v6;
    v15[5] = v24;
    v15[6] = v23;
    v15[7] = v28;
    v15[8] = v21;
    sub_100006F14(v30);
    result = sub_100006F14(v31);
    a2[3] = v14;
    a2[4] = &off_100C60958;
    *a2 = v15;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1008160D0@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1 + 24, sizeof(__dst));
  v3 = *v1;
  v4 = swift_allocObject();
  memcpy((v4 + 16), v1, 0x68uLL);
  sub_100500140(v1, &v6);
  sub_1005B408C(__dst, v3 & 1, LocationSearchEntityFromStringResolver.init(), 0, sub_100816208, v4, a1);
}

uint64_t sub_100816210@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, _BYTE *a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, char a15, unsigned __int8 a16, unsigned __int8 a17, __int128 *a18, unsigned __int8 a19)
{
  v80 = a3;
  v81 = a4;
  v79 = a2;
  v74 = a1;
  v25 = a1;
  v26 = a18[1];
  v82 = *a18;
  v83 = v26;
  v27 = *(a18 + 4);
  v28 = *(a18 + 5);
  v29 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v29 - 8);
  v31 = v68 - v30;
  type metadata accessor for Locale();
  sub_1000037C4();
  v76 = v33;
  v77 = v32;
  __chkstk_darwin(v32);
  sub_1000037D8();
  v75 = v35 - v34;
  if (v25 == 2)
  {
    v74 = *v19;
  }

  if (v79 == 5)
  {
    v79 = v19[1];
  }

  if (v80 == 5)
  {
    v80 = v19[2];
  }

  if (v81 == 5)
  {
    v81 = v19[3];
  }

  sub_100817D64(a5, v31);
  v36 = v77;
  if (sub_100024D10(v31, 1, v77) == 1)
  {
    v37 = type metadata accessor for EnvironmentState();
    (*(v76 + 16))(v75, &v19[*(v37 + 32)], v36);
    if (sub_100024D10(v31, 1, v36) != 1)
    {
      sub_1001235D8(v31);
    }

    if (a7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    (*(v76 + 32))(v75, v31, v36);
    if (a7)
    {
LABEL_13:
      v69 = a7;
      goto LABEL_16;
    }
  }

  v38 = &v19[*(type metadata accessor for EnvironmentState() + 36)];
  a6 = *v38;
  v69 = *(v38 + 1);

LABEL_16:
  v39 = a10;
  if (a8 == 2)
  {
    a8 = v19[*(type metadata accessor for EnvironmentState() + 40)];
  }

  v40 = a11;
  if (a10 == 2)
  {
    v39 = v19[*(type metadata accessor for EnvironmentState() + 44)];
  }

  v78 = a12;
  if (a11 == 2)
  {
    v40 = v19[*(type metadata accessor for EnvironmentState() + 48)];
  }

  v73 = a14;
  if (v78 == 2)
  {
    v78 = v19[*(type metadata accessor for EnvironmentState() + 52)];
  }

  v41 = a13;
  if (a15)
  {
    v42 = type metadata accessor for EnvironmentState();
    v41 = a13;
    v73 = *&v19[*(v42 + 56)];
  }

  v43 = a16;
  v71 = a8;
  if (v41 == 2)
  {
    v41 = v19[*(type metadata accessor for EnvironmentState() + 60)];
  }

  v44 = a17;
  v68[3] = v41;
  if (a16 == 2)
  {
    v43 = v19[*(type metadata accessor for EnvironmentState() + 64)];
  }

  v72 = a7;
  if (a17 == 2)
  {
    v44 = v19[*(type metadata accessor for EnvironmentState() + 68)];
  }

  v46 = v82;
  v45 = v83;
  v68[4] = v40;
  v68[5] = v39;
  v47 = a19;
  v70 = a6;
  v68[2] = v43;
  if (v82 == 1)
  {
    v48 = &v19[*(type metadata accessor for EnvironmentState() + 72)];
    v46 = *v48;
    v45 = *(v48 + 1);
    v50 = *(v48 + 4);
    v49 = *(v48 + 5);
  }

  else
  {
    v50 = v27;
    v49 = v28;
  }

  v51 = v46;
  v82 = v46;
  v83 = v45;
  v52 = *(&v46 + 1);
  v53 = v45;
  v54 = v49;
  v55 = v49;
  v56 = v51;
  v57 = v52;
  v58 = v53;
  v59 = *(&v53 + 1);
  v60 = v50;
  if (a19 == 3)
  {
    v47 = v19[*(type metadata accessor for EnvironmentState() + 76)];
  }

  *a9 = v74 & 1;
  v61 = v80;
  a9[1] = v79;
  a9[2] = v61;
  a9[3] = v81;
  v62 = type metadata accessor for EnvironmentState();
  (*(v76 + 32))(&a9[v62[8]], v75, v77);
  v63 = &a9[v62[9]];
  v64 = v69;
  *v63 = v70;
  v63[1] = v64;
  sub_100028BF8(v62[10]);
  sub_100028BF8(v62[11]);
  sub_100028BF8(v62[12]);
  sub_100028BF8(v62[13]);
  *&a9[v62[14]] = v73;
  sub_100028BF8(v62[15]);
  sub_100028BF8(v62[16]);
  a9[v62[17]] = v44 & 1;
  v65 = &a9[v62[18]];
  v66 = v83;
  *v65 = v82;
  *(v65 + 1) = v66;
  *(v65 + 4) = v50;
  *(v65 + 5) = v54;
  a9[v62[19]] = v47;
}

uint64_t sub_1008166D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x8000000100ADFFB0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000100AD5B50 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001FLL && 0x8000000100AD59B0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6B726F7774656ELL && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x8000000100ADFFD0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x8000000100AD5B10 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000016 && 0x8000000100AD5AD0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x8000000100AD5A50 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000021 && 0x8000000100ADFFF0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x636E75614C707061 && a2 == 0xEE00746E756F4368;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001BLL && 0x8000000100AE0020 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x8000000100AE0040 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000013 && 0x8000000100AE0060 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x72756769666E6F63 && a2 == 0xEF7374696E556465;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0xD000000000000010 && 0x8000000100AE0080 == a2)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
    }
  }
}

unint64_t sub_100816B90(char a1)
{
  result = 0x6B726F7774656ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      return result;
    case 4:
      result = 0x656C61636F6CLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0x636E75614C707061;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x72756769666E6F63;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_100816D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008166D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100816DC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100816B88();
  *a1 = result;
  return result;
}

uint64_t sub_100816DE8(uint64_t a1)
{
  v2 = sub_100817DD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100816E24(uint64_t a1)
{
  v2 = sub_100817DD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100816E60(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CDBF58);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v17 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_100817DD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17[0]) = 0;
  sub_10001CE34();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v17[0]) = v3[1];
    v18 = 1;
    sub_100817F78();
    sub_10001CE34();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17[0]) = v3[2];
    v18 = 2;
    sub_10058EA84();
    sub_10001CE34();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17[0]) = v3[3];
    v18 = 3;
    sub_100817FCC();
    sub_10001CE34();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = type metadata accessor for EnvironmentState();
    LOBYTE(v17[0]) = 4;
    type metadata accessor for Locale();
    sub_1000232E4();
    sub_1008180C8(v12, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17[0]) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(6);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(7);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(8);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(9);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(10);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(11);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(12);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10001F950(13);
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = &v3[*(v11 + 72)];
    v15 = v14[1];
    v17[0] = *v14;
    v17[1] = v15;
    v17[2] = v14[2];
    v18 = 14;
    sub_100818020();
    sub_10001CE34();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17[0]) = v3[*(v11 + 76)];
    v18 = 15;
    sub_100818074();
    sub_10001CE34();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_100817234(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Locale();
  sub_1000037C4();
  v26 = v6;
  v27 = v5;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v9 = v8 - v7;
  v25 = sub_10022C350(&qword_100CDBF20);
  sub_1000037C4();
  __chkstk_darwin(v10);
  v29 = type metadata accessor for EnvironmentState();
  __chkstk_darwin(v29);
  sub_1000037D8();
  v28 = (v12 - v11);
  sub_1000161C0(a1, a1[3]);
  sub_100817DD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100006F14(a1);
  }

  else
  {
    sub_10000463C();
    *v28 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_100817E28();
    sub_100016FB8();
    sub_10000463C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28[1] = 0;
    sub_10058EA30();
    sub_100016FB8();
    sub_10000463C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28[2] = 0;
    sub_100817E7C();
    sub_100016FB8();
    sub_10000463C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28[3] = 0;
    LOBYTE(v30) = 4;
    sub_1000232E4();
    sub_1008180C8(v13, v14);
    sub_10000463C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v26 + 32))(&v28[v29[8]], v9, v27);
    sub_100010CA0(5);
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = &v28[v29[9]];
    *v16 = v15;
    v16[1] = v17;
    sub_100010CA0(6);
    v28[v29[10]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_100010CA0(7);
    v28[v29[11]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_100010CA0(8);
    v28[v29[12]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_100010CA0(9);
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100013D00(v18, v29[13]);
    sub_10000906C(10);
    *&v28[v29[14]] = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000906C(11);
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100013D00(v19, v29[15]);
    sub_10000906C(12);
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100013D00(v20, v29[16]);
    sub_10000906C(13);
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100013D00(v21, v29[17]);
    sub_100817ED0();
    sub_100016FB8();
    sub_10000463C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = &v28[v29[18]];
    *v22 = v30;
    v22[1] = v31;
    v22[2] = v32;
    sub_100817F24();
    sub_100016FB8();
    sub_10000463C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = sub_10007507C();
    v24(v23, v25);
    v28[v29[19]] = 4;
    sub_1000690C8(v28, a2);
    sub_100006F14(a1);
    sub_10006912C(v28);
  }
}

uint64_t sub_1008178D4@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A55570;
  sub_1000103C4();
  *(v4 + 32) = 0xD00000000000001CLL;
  *(v4 + 40) = v5;
  *(v4 + 48) = *v1;
  sub_1000103C4();
  *(v6 + 72) = &type metadata for Bool;
  *(v6 + 80) = 0xD000000000000015;
  *(v6 + 88) = v7;
  *(v6 + 96) = v1[1];
  sub_1000103C4();
  *(v8 + 120) = v9;
  *(v8 + 128) = 0xD00000000000001FLL;
  *(v8 + 136) = v10;
  *(v8 + 144) = v1[2];
  *(v8 + 168) = &type metadata for PredictedLocationsAuthorizationState;
  *(v8 + 176) = 0x6B726F7774656ELL;
  *(v8 + 184) = 0xE700000000000000;
  *(v8 + 192) = v1[3];
  *(v8 + 216) = &type metadata for NetworkState;
  *(v8 + 224) = 0x656C61636F6CLL;
  *(v8 + 232) = 0xE600000000000000;
  v11 = type metadata accessor for EnvironmentState();
  v12 = v11[8];
  v13 = type metadata accessor for Locale();
  *(inited + 264) = v13;
  v14 = sub_100042FB0((inited + 240));
  (*(*(v13 - 8) + 16))(v14, &v1[v12], v13);
  sub_1000103C4();
  *(inited + 272) = 0xD000000000000015;
  *(inited + 280) = v15;
  v16 = &v1[v11[9]];
  v17 = v16[1];
  *(inited + 288) = *v16;
  *(inited + 296) = v17;
  sub_1000103C4();
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0xD000000000000015;
  *(inited + 328) = v18;
  *(inited + 336) = v1[v11[10]];
  sub_1000103C4();
  *(inited + 360) = &type metadata for Bool;
  *(inited + 368) = 0xD000000000000016;
  *(inited + 376) = v19;
  *(inited + 384) = v1[v11[11]];
  sub_1000103C4();
  *(inited + 408) = &type metadata for Bool;
  *(inited + 416) = 0xD000000000000012;
  *(inited + 424) = v20;
  *(inited + 432) = v1[v11[12]];
  sub_1000103C4();
  *(inited + 456) = &type metadata for Bool;
  *(inited + 464) = 0xD000000000000021;
  *(inited + 472) = v21;
  *(inited + 480) = v1[v11[13]];
  sub_1000103C4();
  *(inited + 504) = &type metadata for Bool;
  *(inited + 512) = 0xD00000000000001BLL;
  *(inited + 520) = v22;
  LOBYTE(v22) = v1[v11[15]];
  *(inited + 552) = &type metadata for Bool;
  *(inited + 528) = v22;
  strcpy((inited + 560), "appLaunchCount");
  *(inited + 575) = -18;
  v23 = *&v1[v11[14]];
  *(inited + 600) = &type metadata for Int;
  *(inited + 576) = v23;
  sub_1000103C4();
  *(inited + 608) = 0xD000000000000014;
  *(inited + 616) = v24;
  LOBYTE(v24) = v1[v11[16]];
  *(inited + 648) = &type metadata for Bool;
  *(inited + 624) = v24;
  sub_1000103C4();
  *(inited + 656) = 0xD000000000000013;
  *(inited + 664) = v25;
  LOBYTE(v25) = v1[v11[17]];
  *(inited + 696) = &type metadata for Bool;
  *(inited + 672) = v25;
  sub_1000103C4();
  *(inited + 704) = 0xD000000000000010;
  *(inited + 712) = v26;
  LOBYTE(v26) = v1[v11[19]];
  *(inited + 744) = &type metadata for WindowFocusState;
  *(inited + 720) = v26;

  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CBCED8);
  a1[4] = sub_100056774();
  sub_100042FB0(a1);
  type metadata accessor for MainAction();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100817C80()
{
  sub_1008180C8(&qword_100CDBF88, type metadata accessor for EnvironmentState);

  return ShortDescribable.description.getter();
}

uint64_t sub_100817D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAA9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100817DD4()
{
  result = qword_100CDBF28;
  if (!qword_100CDBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBF28);
  }

  return result;
}

unint64_t sub_100817E28()
{
  result = qword_100CDBF30;
  if (!qword_100CDBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBF30);
  }

  return result;
}

unint64_t sub_100817E7C()
{
  result = qword_100CDBF38;
  if (!qword_100CDBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBF38);
  }

  return result;
}

unint64_t sub_100817ED0()
{
  result = qword_100CDBF48;
  if (!qword_100CDBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBF48);
  }

  return result;
}

unint64_t sub_100817F24()
{
  result = qword_100CDBF50;
  if (!qword_100CDBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBF50);
  }

  return result;
}

unint64_t sub_100817F78()
{
  result = qword_100CDBF60;
  if (!qword_100CDBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBF60);
  }

  return result;
}

unint64_t sub_100817FCC()
{
  result = qword_100CDBF68;
  if (!qword_100CDBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBF68);
  }

  return result;
}

unint64_t sub_100818020()
{
  result = qword_100CDBF78;
  if (!qword_100CDBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBF78);
  }

  return result;
}

unint64_t sub_100818074()
{
  result = qword_100CDBF80;
  if (!qword_100CDBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBF80);
  }

  return result;
}

uint64_t sub_1008180C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for EnvironmentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EnvironmentState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100818278()
{
  result = qword_100CDBF90;
  if (!qword_100CDBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBF90);
  }

  return result;
}

unint64_t sub_1008182D0()
{
  result = qword_100CDBF98;
  if (!qword_100CDBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBF98);
  }

  return result;
}

unint64_t sub_100818328()
{
  result = qword_100CDBFA0;
  if (!qword_100CDBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDBFA0);
  }

  return result;
}

uint64_t sub_10081837C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 120) = a4;
  v8 = type metadata accessor for Logger();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  sub_10022C350(&qword_100CD1720);
  *(v7 + 72) = swift_task_alloc();
  v9 = type metadata accessor for LocationDisplayContext();
  *(v7 + 80) = v9;
  *(v7 + 88) = *(v9 - 8);
  *(v7 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1008184D8, 0, 0);
}

uint64_t sub_1008184D8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[3];
  LocationDisplayContext.init(canActAsLocationOfInterest:)();
  sub_1000161C0((v5 + 72), *(v5 + 96));
  (*(v2 + 16))(v4, v1, v3);
  sub_10001B350(v4, 0, 1, v3);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1008185F0;
  sub_100008B5C();

  return dispatch thunk of SavedLocationsManagerType.addLocationWithChecks(_:locationDisplayContext:)();
}

uint64_t sub_1008185F0()
{
  sub_100003B08();
  sub_10000C7E4();
  v3 = *(v2 + 72);
  v4 = *v1;
  sub_100003AF8();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_1000180EC(v3, &qword_100CD1720);
  if (v0)
  {
    v7 = sub_100818804;
  }

  else
  {
    v7 = sub_100818720;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100818720()
{
  sub_100008188();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  sub_1000161C0((v0[3] + 32), *(v0[3] + 56));
  v5 = *(v4 + 64) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v6 = type metadata accessor for LocationsState();
  sub_1004C75B0(*(*(v5 + *(v6 + 20)) + 16));
  (*(v2 + 8))(v1, v3);

  sub_100003B14();

  return v7();
}

uint64_t sub_100818804()
{
  v18 = v0;
  (*(v0[11] + 8))(v0[12], v0[10]);
  static Logger.savedLocations.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[14];
    v4 = v0[7];
    v16 = v0[8];
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v0[2] = v3;
    swift_errorRetain();
    sub_10022C350(&qword_100CD8220);
    v8 = String.init<A>(describing:)();
    v10 = sub_100078694(v8, v9, &v17);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "addLocation: Could not add location with error: %{private,mask.hash}s", v6, 0x16u);
    sub_100006F14(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];

    (*(v12 + 8))(v11, v13);
  }

  sub_100003B14();

  return v14();
}

uint64_t sub_100818A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100818A4C, 0, 0);
}

uint64_t sub_100818A4C()
{
  sub_100013494();
  sub_10003C8D0(v2[2]);
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100197C14;
  v4 = v2[3];

  return dispatch thunk of SavedLocationsManagerType.removeLocation(at:)(v4, v0, v1);
}

uint64_t sub_100818AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100818B1C, 0, 0);
}

uint64_t sub_100818B1C()
{
  sub_100013494();
  sub_10003C8D0(v2[2]);
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_100818BC8;
  v5 = v2[3];
  v4 = v2[4];

  return dispatch thunk of SavedLocationsManagerType.moveLocation(from:to:)(v5, v4, v0, v1);
}

uint64_t sub_100818BC8()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  sub_100003B14();

  return v3();
}

uint64_t sub_100818CA8(void *a1)
{
  v90 = type metadata accessor for LocationsState();
  __chkstk_darwin(v90);
  v79 = v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v78 = v72 - v5;
  active = type metadata accessor for LocationViewerActiveLocationState();
  __chkstk_darwin(active - 8);
  v83 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = v72 - v9;
  v85 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v85);
  v86 = (v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v11 - 8);
  v87 = v72 - v12;
  v96 = type metadata accessor for Location.Identifier();
  v13 = *(v96 - 8);
  __chkstk_darwin(v96);
  v15 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v97 = v72 - v17;
  v18 = type metadata accessor for MainAction();
  v95 = *(v18 - 8);
  __chkstk_darwin(v18);
  v91 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = (v72 - v21);
  __chkstk_darwin(v23);
  v25 = v72 - v24;
  v26 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v26);
  v89 = v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v72 - v29;
  v88 = a1[8];
  sub_100050ED0(v88 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v72 - v29, type metadata accessor for ViewState);
  v84 = v26;
  v31 = *&v30[*(v26 + 36) + 8];
  result = sub_10004FBA0(v30, type metadata accessor for ViewState);
  if (v31 == 1)
  {
    return result;
  }

  v94 = a1[5];
  v93 = *(v94 + 16);
  if (!v93)
  {
    return result;
  }

  v33 = 0;
  v77 = 0;
  v92 = v94 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
  v72[0] = v88 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v76 = v89 + 8;
  v75 = (v13 + 32);
  v34 = (v13 + 8);
  v74 = v1;
  v73 = a1;
  v72[2] = v18;
  while (1)
  {
    if (v33 >= *(v94 + 16))
    {
      __break(1u);
      return result;
    }

    sub_100050ED0(v92 + *(v95 + 72) * v33, v25, type metadata accessor for MainAction);
    sub_100050ED0(v25, v22, type metadata accessor for MainAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v36 = type metadata accessor for MainAction;
    if (EnumCaseMultiPayload != 3)
    {
      break;
    }

    type metadata accessor for LocationsAction();
    v37 = swift_getEnumCaseMultiPayload();
    v36 = type metadata accessor for LocationsAction;
    if (v37 != 4)
    {
      break;
    }

    v38 = *v22;
    if ((sub_100819AF4(a1, *v22) & 1) == 0)
    {
      return sub_10004FBA0(v25, type metadata accessor for MainAction);
    }

    v39 = *(v90 + 20);
    if (v38 == *(*(a1[7] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + v39) + 16) - 1)
    {
      v38 = *(*(v72[0] + v39) + 16) - 1;
    }

    sub_10081A018(a1, v38);
    v40 = type metadata accessor for MainAction;
    v41 = v25;
LABEL_19:
    result = sub_10004FBA0(v41, v40);
LABEL_20:
    if (++v33 == v93)
    {
      return result;
    }
  }

  v42 = v91;
  sub_10004FBA0(v22, v36);
  sub_100050ED0(v25, v42, type metadata accessor for MainAction);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10004FBA0(v25, type metadata accessor for MainAction);
    v41 = v42;
    v40 = type metadata accessor for MainAction;
    goto LABEL_19;
  }

  type metadata accessor for LocationsAction();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10004FBA0(v25, type metadata accessor for MainAction);
    v40 = type metadata accessor for LocationsAction;
    v41 = v42;
    goto LABEL_19;
  }

  sub_10004FBA0(v42, type metadata accessor for LocationsAction);
  v43 = a1[7];
  v44 = v89;
  sub_100050ED0(v43 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v89, type metadata accessor for ViewState);
  v45 = v84;
  v46 = v44 + *(v84 + 20);
  v47 = v86;
  sub_100050ED0(v46, v86, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10004FBA0(v89, type metadata accessor for ViewState);
    sub_10004FBA0(v25, type metadata accessor for MainAction);
    sub_10004FBA0(v47, type metadata accessor for ViewState.SecondaryViewState);
    v71 = v87;
    v49 = v96;
    goto LABEL_37;
  }

  v81 = v43;
  v48 = *v47;
  v49 = v96;
  if (*(v76 + *(v45 + 36)) == 1)
  {
    v50 = [objc_opt_self() currentDevice];
    [v50 userInterfaceIdiom];

    LOBYTE(v50) = *(v89 + *(v45 + 28));
    sub_10004FBA0(v89, type metadata accessor for ViewState);
    if ((v50 & 1) == 0)
    {
      sub_10004FBA0(v25, type metadata accessor for MainAction);

      v71 = v87;
LABEL_37:
      sub_10001B350(v71, 1, 1, v49);
      return sub_1000180EC(v71, &qword_100CADBA0);
    }
  }

  else
  {
    sub_10004FBA0(v89, type metadata accessor for ViewState);
  }

  v51 = v82;
  sub_100050ED0(v48 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v82, type metadata accessor for LocationViewerActiveLocationState);

  v52 = v83;
  sub_100050ED0(v51, v83, type metadata accessor for LocationViewerActiveLocationState);
  if (sub_100024D10(v52, 1, v49) == 1)
  {
    v53 = v87;
    static CurrentLocation.placeholderIdentifier.getter();
    sub_10004FBA0(v51, type metadata accessor for LocationViewerActiveLocationState);
    v54 = v75;
  }

  else
  {
    sub_10004FBA0(v51, type metadata accessor for LocationViewerActiveLocationState);
    v54 = v75;
    v53 = v87;
    (*v75)(v87, v52, v49);
  }

  sub_10001B350(v53, 0, 1, v49);
  (*v54)(v97, v53, v49);
  v55 = *(v90 + 24);
  v80 = v88 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v56 = *(*(v88 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + v55) + 16);

  v57 = 0;
  while (v56 != v57)
  {
    type metadata accessor for LocationModel();
    LocationModel.identifier.getter();
    v58 = static Location.Identifier.== infix(_:_:)();
    (*v34)(v15, v96);
    ++v57;
    if (v58)
    {

      goto LABEL_32;
    }
  }

  v72[1] = v72;
  v60 = v81 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v61 = *(v81 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + *(v90 + 24));
  __chkstk_darwin(v59);
  v72[-2] = v97;

  v62 = v77;
  sub_100169CA4(sub_10081B230, &v72[-4], v61);
  v64 = v63;
  v77 = v62;

  if ((v64 & 1) == 0)
  {
    v65 = v78;
    sub_100050ED0(v80, v78, type metadata accessor for LocationsState);
    v66 = v79;
    sub_100050ED0(v60, v79, type metadata accessor for LocationsState);
    sub_1007BD690();
    v68 = v67;
    v70 = v69;
    sub_10004FBA0(v66, type metadata accessor for LocationsState);
    sub_10004FBA0(v65, type metadata accessor for LocationsState);
    if (v70)
    {
LABEL_32:
      a1 = v73;
    }

    else
    {
      a1 = v73;
      sub_10081A018(v73, v68);
    }

    sub_10004FBA0(v25, type metadata accessor for MainAction);
    result = (*v34)(v97, v96);
    goto LABEL_20;
  }

  sub_10004FBA0(v25, type metadata accessor for MainAction);
  return (*v34)(v97, v96);
}