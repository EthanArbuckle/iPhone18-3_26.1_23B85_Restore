uint64_t sub_1005BDD94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1005BDDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsOptInComponentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005BDE88(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NotificationsOptInComponentView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1005BDEFC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC8178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005BDF64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataRelevancy();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005BDFC8()
{
  result = qword_100CC8180;
  if (!qword_100CC8180)
  {
    type metadata accessor for Date.RelativeFormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8180);
  }

  return result;
}

uint64_t sub_1005BE020(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ScrollDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005BE158()
{
  result = qword_100CC8188;
  if (!qword_100CC8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8188);
  }

  return result;
}

uint64_t DynamicTypeSize.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_10022C350(&qword_100CC8190);
  sub_1000037C4();
  v20 = v5;
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  v18 = v10;
  __chkstk_darwin(v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1005BE3CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = v18;
    v14 = v19;
    sub_1005BE420();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v8, v4);
    (*(v15 + 104))(v13, **(&off_100C603E0 + v21), v9);
    (*(v15 + 32))(v14, v13, v9);
  }

  return sub_100006F14(a1);
}

unint64_t sub_1005BE3CC()
{
  result = qword_100CC8198;
  if (!qword_100CC8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8198);
  }

  return result;
}

unint64_t sub_1005BE420()
{
  result = qword_100CC81A0;
  if (!qword_100CC81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC81A0);
  }

  return result;
}

uint64_t DynamicTypeSize.encode(to:)(void *a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CC81A8);
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = v16 - v12;
  sub_1000161C0(a1, a1[3]);
  sub_1005BE3CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v4 + 16))(v7, v16[1], v2);
  v14 = (*(v4 + 88))(v7, v2);
  if (v14 == enum case for DynamicTypeSize.xSmall(_:))
  {
    v17 = 0;
    sub_1005BE8F8();
LABEL_5:
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v10 + 8))(v13, v8);
  }

  if (v14 == enum case for DynamicTypeSize.small(_:))
  {
    v18 = 1;
    sub_1005BE8F8();
    goto LABEL_5;
  }

  if (v14 == enum case for DynamicTypeSize.medium(_:))
  {
    v19 = 2;
    sub_1005BE8F8();
  }

  else if (v14 == enum case for DynamicTypeSize.large(_:))
  {
    v20 = 3;
    sub_1005BE8F8();
  }

  else if (v14 == enum case for DynamicTypeSize.xLarge(_:))
  {
    v21 = 4;
    sub_1005BE8F8();
  }

  else if (v14 == enum case for DynamicTypeSize.xxLarge(_:))
  {
    v22 = 5;
    sub_1005BE8F8();
  }

  else if (v14 == enum case for DynamicTypeSize.xxxLarge(_:))
  {
    v23 = 6;
    sub_1005BE8F8();
  }

  else if (v14 == enum case for DynamicTypeSize.accessibility1(_:))
  {
    v24 = 7;
    sub_1005BE8F8();
  }

  else if (v14 == enum case for DynamicTypeSize.accessibility2(_:))
  {
    v25 = 8;
    sub_1005BE8F8();
  }

  else if (v14 == enum case for DynamicTypeSize.accessibility3(_:))
  {
    v26 = 9;
    sub_1005BE8F8();
  }

  else if (v14 == enum case for DynamicTypeSize.accessibility4(_:))
  {
    v27 = 10;
    sub_1005BE8F8();
  }

  else
  {
    if (v14 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v28 = 11;
    sub_1005BE8F8();
  }

  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v10 + 8))(v13, v8);
}

unint64_t sub_1005BE8F8()
{
  result = qword_100CC81B0;
  if (!qword_100CC81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC81B0);
  }

  return result;
}

unint64_t sub_1005BE94C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C44848, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005BE998(char a1)
{
  result = 0x6C6C616D5378;
  switch(a1)
  {
    case 1:
      result = 0x6C6C616D73;
      break;
    case 2:
      result = 0x6D756964656DLL;
      break;
    case 3:
      result = 0x656772616CLL;
      break;
    case 4:
      result = 0x656772614C78;
      break;
    case 5:
      result = 0x656772614C7878;
      break;
    case 6:
      result = 0x656772614C787878;
      break;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      result = 0x6269737365636361;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1005BEAB8@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001FC044(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1005BEAEC@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001FC044(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005BEB18(uint64_t a1)
{
  v2 = sub_1005BE3CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005BEB54(uint64_t a1)
{
  v2 = sub_1005BE3CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1005BEBB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005BE94C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005BEBE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005BE998(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *_s10CodingTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1005BEE7C()
{
  result = qword_100CC81B8;
  if (!qword_100CC81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC81B8);
  }

  return result;
}

unint64_t sub_1005BEED4()
{
  result = qword_100CC81C0;
  if (!qword_100CC81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC81C0);
  }

  return result;
}

unint64_t sub_1005BEF2C()
{
  result = qword_100CC81C8;
  if (!qword_100CC81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC81C8);
  }

  return result;
}

unint64_t sub_1005BEF84()
{
  result = qword_100CC81D0;
  if (!qword_100CC81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC81D0);
  }

  return result;
}

unint64_t sub_1005BEFD8()
{
  result = qword_100CC81D8[0];
  if (!qword_100CC81D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC81D8);
  }

  return result;
}

uint64_t sub_1005BF02C(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA22B8 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA22C8 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA22C0 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA22B0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA22A8 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_1005BF198(char a1, char a2, uint64_t a3)
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
  v37 = sub_1005BF02C(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather14NhpNewsContent8_Storage_map;
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
  sub_10031694C(a3 + *(v39 + 20) + OBJC_IVAR____TtCV7Weather14NhpNewsContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
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

uint64_t sub_1005BF81C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v131 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather14NhpNewsContent8_Storage_map;
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
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather14NhpNewsContent8_Storage_newsArticle);
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
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather14NhpNewsContent8_Storage_airQuality);
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
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather14NhpNewsContent8_Storage_newsArticle);
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
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather14NhpNewsContent8_Storage_airQuality);
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

void sub_1005C00F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BBB0;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BBF0;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BC00;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC10;
  v36 = v11;
  v37 = &v10;
  sub_100017B38(a2, a3, a4, a5, a6, a7, a8, &v9, 0, 1, 10, 11, 0, 1, 12, 13, 0, 1, 9, 10);
  qword_100D904C8 = v8;
}

void sub_1005C021C()
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
  v7[0] = xmmword_100A3BB70;
  v7[1] = xmmword_100A3BBB0;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC00;
  v24 = v7;
  v25 = v6;
  v5[0] = xmmword_100A2C3F0;
  v5[1] = xmmword_100A3BC20;
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
  sub_1005541F4();
  qword_100D904D0 = v0;
}

void sub_1005C0340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = 2;
  v24[1] = 4;
  v25 = xmmword_100A3BC40;
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BC30;
  v26 = v24;
  v27 = v23;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBA0;
  v21[0] = xmmword_100A3BBD0;
  v21[1] = xmmword_100A3BB80;
  v28 = v22;
  v29 = v21;
  v19[0] = 0;
  v19[1] = 4;
  v20 = xmmword_100A3BBD0;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = xmmword_100A3BC30;
  v30 = v19;
  v31 = v18;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3BB80;
  v32 = v17;
  v33 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BBB0;
  v34 = v15;
  v35 = v14;
  v13[0] = xmmword_100A3BBD0;
  v13[1] = xmmword_100A3BC30;
  v12[0] = xmmword_100A3BC40;
  v12[1] = xmmword_100A3BB80;
  v36 = v13;
  v37 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC50;
  v38 = v11;
  v39 = &v10;
  sub_100017B38(a2, a3, a4, a5, a6, a7, a8, &v9, 2, 4, 4, 5, 1, 2, 7, 8, 2, 3, 5, 6);
  qword_100D904D8 = v8;
}

void sub_1005C0470()
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
  v7[0] = xmmword_100A3BB70;
  v7[1] = xmmword_100A3BBB0;
  v6[0] = xmmword_100A3BBD0;
  v6[1] = xmmword_100A3BB80;
  v26 = v7;
  v27 = v6;
  v5[0] = xmmword_100A3BC40;
  v5[1] = xmmword_100A3BC50;
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
  sub_1005541F4();
  qword_100D904E0 = v0;
}

void sub_1005C05A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BBB0;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A3BC60;
  v13[1] = xmmword_100A3BC60;
  v12[0] = xmmword_100A3BC50;
  v12[1] = xmmword_100A3BBD0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  v36 = v11;
  v37 = &v10;
  sub_100017B38(a2, a3, a4, a5, a6, a7, a8, &v9, 4, 5, 2, 3, 3, 4, 4, 5, 2, 3, 3, 4);
  qword_100D904E8 = v8;
}

uint64_t sub_1005C06C4(uint64_t a1, void (*a2)(char *))
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

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather28LocationNhpNewsConfiguration8_Storage_map, v21, type metadata accessor for LocationViewComponent);
  a2(v21);
  sub_100020648();
  sub_10001B350(v28, 0, 1, v35);
  sub_1000176E8(OBJC_IVAR____TtCV7Weather28LocationNhpNewsConfiguration8_Storage_airQuality);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather28LocationNhpNewsConfiguration8_Storage_newsArticle);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather28LocationNhpNewsConfiguration8_Storage_nextHourPrecipitation);
  a2(v21);
  sub_100020648();
  sub_100035AD0(v28, v25, &qword_100CA5008);
  sub_10031694C(v17, v36, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v14, v37, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v2, v38, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for NhpNewsContent._Storage(0);
  swift_allocObject();
  sub_1002D3414();
  v32 = v31;
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v17, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v28, &qword_100CA5008);
  return v32;
}

uint64_t sub_1005C0A58()
{

  return v0;
}

uint64_t sub_1005C0A80()
{
  sub_1005C0A58();

  return swift_deallocClassInstance();
}

uint64_t sub_1005C0AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAC408);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1005C0B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CAC408);

  return sub_10001B350(a1, a2, a3, v6);
}

uint64_t type metadata accessor for ChartDateStep()
{
  result = qword_100CC82E8;
  if (!qword_100CC82E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005C0BB8(uint64_t a1)
{
  sub_1005C0CD0();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    sub_10000BB3C();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v3 = type metadata accessor for TimeZone();
      if (v7 <= 0x3F)
      {
        swift_getTupleTypeLayout3();
        v3 = 0;
        *(*(a1 - 8) + 84) = v9;
      }
    }
  }

  return v3;
}

void sub_1005C0CD0()
{
  if (!qword_100CC82F8)
  {
    sub_10022E824(&unk_100CB2CF0);
    type metadata accessor for TimeZone();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100CC82F8);
    }
  }
}

uint64_t sub_1005C0D58(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for Date();
  sub_1000037C4();
  v52 = v4;
  __chkstk_darwin(v5);
  v51 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10022C350(qword_100CA4F80);
  __chkstk_darwin(v54);
  v55 = &v51 - v7;
  v58 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100003848();
  v57 = v11;
  __chkstk_darwin(v12);
  v60 = &v51 - v13;
  v14 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v14 - 8);
  sub_100003848();
  v53 = v15;
  v17 = __chkstk_darwin(v16);
  v19 = &v51 - v18;
  __chkstk_darwin(v17);
  v21 = &v51 - v20;
  v22 = sub_10022C350(&qword_100CC8320);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = (&v51 - v24);
  v26 = (&v51 + *(v23 + 56) - v24);
  sub_1005C1264(a1, &v51 - v24);
  sub_1005C1264(a2, v26);
  v27 = *v25;
  v28 = sub_10022C350(&qword_100CAC408);
  v29 = *(v28 + 48);
  v30 = *(v28 + 64);
  v31 = *v26;
  sub_100237E84(v25 + v29, v21);
  v59 = v9;
  v32 = *(v9 + 32);
  v33 = v25 + v30;
  v34 = v58;
  v32(v60, v33, v58);
  v35 = v26 + v29;
  v36 = v19;
  sub_100237E84(v35, v19);
  v37 = v26 + v30;
  v38 = v57;
  v32(v57, v37, v34);
  if (v27 == v31)
  {
    v39 = v55;
    v40 = *(v54 + 48);
    sub_1000D47CC(v21, v55);
    sub_1000D47CC(v19, v39 + v40);
    v41 = v56;
    if (sub_100024D10(v39, 1, v56) == 1)
    {
      if (sub_100024D10(v39 + v40, 1, v41) == 1)
      {
        v42 = v19;
        sub_10003FDF4(v39, &unk_100CB2CF0);
LABEL_12:
        v44 = static TimeZone.== infix(_:_:)();
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    v43 = v53;
    sub_1000D47CC(v39, v53);
    if (sub_100024D10(v39 + v40, 1, v41) == 1)
    {
      (*(v52 + 8))(v43, v41);
LABEL_8:
      v42 = v36;
      sub_10003FDF4(v39, qword_100CA4F80);
      goto LABEL_9;
    }

    v42 = v36;
    v47 = v52;
    v48 = v51;
    (*(v52 + 32))(v51, v39 + v40, v41);
    sub_1005C12C8();
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    v50 = *(v47 + 8);
    v50(v48, v41);
    v50(v53, v41);
    sub_10003FDF4(v39, &unk_100CB2CF0);
    if (v49)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v42 = v19;
  }

LABEL_9:
  v44 = 0;
LABEL_10:
  v45 = *(v59 + 8);
  v45(v38, v34);
  sub_10003FDF4(v42, &unk_100CB2CF0);
  v45(v60, v34);
  sub_10003FDF4(v21, &unk_100CB2CF0);
  return v44 & 1;
}

uint64_t sub_1005C1264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartDateStep();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005C12C8()
{
  result = qword_100CA39D0;
  if (!qword_100CA39D0)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA39D0);
  }

  return result;
}

uint64_t sub_1005C1320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NewsArticle();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  type metadata accessor for ArticleModel();
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = sub_10022C350(&qword_100CC0A50);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - v15;
  v17 = type metadata accessor for NewsArticleComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = (v20 - v19);
  sub_100006274();
  sub_1001D23F4(a1, v13, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100014A30();
    sub_1005C1D90(v13, v9, v23);
    v24 = *(v9 + 16);
    v51 = v16;
    v52 = v24;
    v25 = *(v9 + 24);
    v50 = a1;
    v26 = v5[6];
    v27 = type metadata accessor for NewsArticleComponentContentViewModel(0);
    sub_1005C1F54(v9 + v26, &v21[v27[5]], &qword_100CB3AB0);
    v49 = v17;
    v28 = v5[8];
    v29 = v9 + v5[9];
    v30 = *(v29 + 24);
    v46 = *(v29 + 16);
    v31 = v27[7];
    v47 = type metadata accessor for URL();
    sub_1000037E8();
    v48 = *(v32 + 16);
    v48(&v21[v31], v9 + v28);
    v33 = v27[8];

    sub_1005C1774(v9, &v21[v33]);
    v34 = *(v50 + *(type metadata accessor for NewsArticleComponent() + 20));
    *v21 = v52;
    *(v21 + 1) = v25;
    v16 = v51;
    v35 = &v21[v27[6]];
    *v35 = v46;
    *(v35 + 1) = v30;
    v21[v27[9]] = v34;
    swift_storeEnumTagMultiPayload();
    v36 = *(sub_10022C350(&qword_100CA6680) + 48);
    (v48)(v16, v9 + v28, v47);
    sub_100010490();
    sub_1005C1FB0(v9, v37);
    v16[v36] = 0;
    v38 = type metadata accessor for LocationComponentAction(0);
    swift_storeEnumTagMultiPayload();
    sub_10001B350(v16, 0, 1, v38);
  }

  else
  {
    *v21 = *(a1 + *(type metadata accessor for NewsArticleComponent() + 20));
    swift_storeEnumTagMultiPayload();
    v39 = type metadata accessor for LocationComponentAction(0);
    sub_10001B350(v16, 1, 1, v39);
    sub_1000089EC();
    sub_1005C1FB0(v13, v40);
  }

  v41 = *(v2 + 24);
  *a2 = *(v2 + 16);
  *(a2 + 8) = v41;
  *(a2 + 16) = 1937204590;
  *(a2 + 24) = 0xE400000000000000;
  *(a2 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v42 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1001D23F4(v21, a2 + v42[5], type metadata accessor for NewsArticleComponentViewModel);
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  sub_1005C1F54(v16, a2 + v42[8], &qword_100CC0A50);
  sub_10013D288();

  v43 = Dictionary.init(dictionaryLiteral:)();
  sub_1000180EC(v16, &qword_100CC0A50);
  result = sub_1005C1FB0(v21, type metadata accessor for NewsArticleComponentViewModel);
  *(a2 + v42[6]) = 256;
  *(a2 + v42[7]) = v43;
  return result;
}

uint64_t sub_1005C1774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_100CA25F0 != -1)
  {
    swift_once();
  }

  sub_1005C1DEC();
  Configurable.setting<A>(_:)();
  if (v8 == 1)
  {
    v4 = type metadata accessor for URL();
    return sub_10001B350(a2, 1, 1, v4);
  }

  else
  {
    v6 = a1 + *(type metadata accessor for NewsArticle() + 36);
    v7 = type metadata accessor for NewsChannel();
    return sub_1005C1F54(v6 + *(v7 + 24), a2, &qword_100CB3AB0);
  }
}

uint64_t sub_1005C188C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for NewsArticle();
  __chkstk_darwin(v3 - 8);
  sub_1000037D8();
  v34 = v5 - v4;
  v6 = sub_10022C350(&qword_100CC3458);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for ArticleModel();
  sub_1000037E8();
  v11 = __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  sub_10022C350(&qword_100CC3450);
  v16 = type metadata accessor for ArticlePlacementLocation();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100A2C3F0;
  (*(v17 + 16))(v19 + v18, a1, v16);
  sub_1009D76D8(v19);
  v21 = v20;
  swift_setDeallocating();
  sub_1001AED8C(&type metadata accessor for ArticlePlacementLocation);
  sub_1003DF960(v21, v8);

  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_1000180EC(v8, &qword_100CC3458);
    v22 = type metadata accessor for NewsArticleComponentViewModel(0);
    v23 = v35;
    v24 = 1;
  }

  else
  {
    v25 = v35;
    sub_1005C1D90(v8, v15, type metadata accessor for ArticleModel);
    sub_100006274();
    sub_1001D23F4(v15, v13, v26);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100014A30();
      v27 = v34;
      sub_1005C1D90(v13, v34, v28);
      sub_1005C1C04(v27, v25);
      sub_100010490();
      sub_1005C1FB0(v27, v29);
      sub_1000089EC();
      sub_1005C1FB0(v15, v30);
      v22 = type metadata accessor for NewsArticleComponentViewModel(0);
      v23 = v25;
      v24 = 0;
    }

    else
    {
      sub_1005C1FB0(v15, type metadata accessor for ArticleModel);
      sub_1005C1FB0(v13, type metadata accessor for ArticleModel);
      *v25 = 0;
      v31 = type metadata accessor for NewsArticleComponentViewModel(0);
      sub_100003940();
      swift_storeEnumTagMultiPayload();
      v23 = v25;
      v24 = 0;
      v22 = v31;
    }
  }

  return sub_10001B350(v23, v24, 1, v22);
}

uint64_t sub_1005C1C04@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = type metadata accessor for NewsArticle();
  v7 = v6[6];
  v8 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  sub_1005C1F54(a1 + v7, &a2[v8[5]], &qword_100CB3AB0);
  v9 = v6[8];
  v10 = a1 + v6[9];
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  v13 = v8[7];
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 16))(&a2[v13], a1 + v9, v14);
  v15 = v8[8];

  sub_1005C1774(a1, &a2[v15]);
  *a2 = v5;
  *(a2 + 1) = v4;
  v16 = &a2[v8[6]];
  *v16 = v12;
  *(v16 + 1) = v11;
  a2[v8[9]] = 0;
  type metadata accessor for NewsArticleComponentViewModel(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1005C1D30()
{

  sub_100018584();

  return swift_deallocClassInstance();
}

uint64_t sub_1005C1D90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

unint64_t sub_1005C1DEC()
{
  result = qword_100CC83C8;
  if (!qword_100CC83C8)
  {
    type metadata accessor for NewsArticleComponentViewModelFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC83C8);
  }

  return result;
}

uint64_t sub_1005C1E94()
{
  swift_arrayDestroy();
  sub_100018584();

  return swift_deallocClassInstance();
}

uint64_t sub_1005C1EE4(uint64_t *a1)
{
  sub_10022C350(a1);
  sub_100022E60();
  sub_100018584();

  return swift_deallocClassInstance();
}

uint64_t sub_1005C1F54(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10022C350(a3);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1005C1FB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1005C2064()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);
  sub_100006F14(v0 + 96);
  sub_100006F14(v0 + 136);

  return v0;
}

uint64_t sub_1005C20BC()
{
  sub_1005C2064();

  return swift_deallocClassInstance();
}

uint64_t sub_1005C20F0()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1005C21D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000B025C();
  sub_1000C8EB0();
  sub_10001C6B4();
  sub_10004F998();
  sub_1000045E0();
  sub_1000C82A0();

  sub_100003B14();
  sub_1000D4258();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1005C22A8()
{
  sub_100008188();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_10002C8AC();
  v4(v3);
  v5 = sub_100003B2C();
  v6(v5);
  v7 = sub_100013484();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1005C243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000B025C();
  sub_1000C8EB0();
  sub_10000628C();
  sub_10004F998();
  sub_1000045E0();
  sub_1000C82A0();

  sub_100003B14();
  sub_1000D4258();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1005C2510()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1005C2610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  type metadata accessor for MainActor();
  *(v6 + 32) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_1005C26AC, v8, v7);
}

uint64_t sub_1005C26AC()
{
  sub_100003B08();
  v1 = *(*(v0 + 24) + 64);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1005C274C;
  v3 = *(v0 + 64);

  return sub_1005C28B8(v3, v1);
}

uint64_t sub_1005C274C()
{
  sub_100003B08();
  v1 = *v0;
  v2 = *v0;
  sub_100003AF8();
  *v3 = v2;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return _swift_task_switch(sub_1005C2860, v5, v4);
}

uint64_t sub_1005C2860()
{
  sub_100003B08();

  sub_100003B14();

  return v0();
}

uint64_t sub_1005C28B8(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 40) = a1;
  return _swift_task_switch(sub_1005C28DC, 0, 0);
}

uint64_t sub_1005C28DC()
{
  sub_100003B08();
  switch(*(v0 + 40))
  {
    case 1:
    case 3:
    case 4:
      sub_1005C5B28();
      sub_1005C5B84();
      goto LABEL_3;
    case 2:
      v3 = swift_task_alloc();
      *(v0 + 32) = v3;
      *v3 = v0;
      v3[1] = sub_100197C14;
      v4 = sub_1000116B0(*(v0 + 16));

      result = sub_100197634(v4);
      break;
    default:
LABEL_3:
      sub_100003B14();

      result = v1();
      break;
  }

  return result;
}

uint64_t sub_1005C29C4()
{
  sub_100003B08();

  sub_100003B14();

  return v0();
}

uint64_t sub_1005C2A1C()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1005C2B00()
{
  sub_10000EB1C();
  sub_100008188();
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = sub_1000139F8();
  v2(v1);
  sub_10003C62C();

  sub_100003B14();
  sub_10002C7FC();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1005C2BB0()
{
  sub_100013494();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_1000139F8();
  v4(v3);
  v5 = sub_100013484();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1005C2CE8()
{
  sub_10000EB1C();
  sub_100008188();
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = sub_1000139F8();
  v2(v1);
  sub_10003C62C();

  sub_100003B14();
  sub_10002C7FC();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1005C2D98()
{
  sub_100003B08();
  v1 = *v0;
  v2 = *v0;
  sub_100003AF8();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_1005C96E0, v5, v4);
}

uint64_t sub_1005C2EAC()
{
  sub_100013494();
  v1 = *(v0 + 48);
  sub_10003BAB4();
  sub_100050D50(v2, v1, v3);
  sub_100003B2C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + 48);
  switch(EnumCaseMultiPayload)
  {
    case 4:

      v16 = sub_10022C350(&qword_100CAC0C8);
      sub_10003BE74(*(v16 + 80));
      sub_10004F998();
      sub_10004F998();
      goto LABEL_2;
    case 5:

      v17 = sub_10022C350(&qword_100CAC0B8);
      sub_10003BE74(*(v17 + 48));
      goto LABEL_2;
    case 6:
      *(v0 + 56) = *(v5 + 8);
      *(v0 + 72) = *(sub_10022C350(&qword_100CAC0C0) + 48);
      v8 = swift_task_alloc();
      v9 = sub_100040F7C(v8);
      *v9 = v10;
      v9[1] = sub_1005C30DC;
      v11 = sub_10001920C();

      return sub_1005C5BE0(v11, v12, v13);
    case 8:

      v14 = *(sub_10022C350(&qword_100CAC0B0) + 48);
      type metadata accessor for WeatherStatisticsModel();
      sub_100003D98();
      (*(v15 + 8))(v5 + v14);
      goto LABEL_3;
    default:
LABEL_2:
      sub_10004F998();
LABEL_3:

      sub_100003B14();

      return v6();
  }
}

uint64_t sub_1005C30DC()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1005C31DC()
{
  sub_100003B08();
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  type metadata accessor for AvailableDataSets();
  sub_100003D98();
  (*(v3 + 8))(v2 + v1);

  sub_100003B14();

  return v4();
}

uint64_t sub_1005C3268()
{
  sub_100003B08();
  sub_10000C7E4();
  v3 = v2;
  sub_10000CCF8();
  *v4 = v3;
  v5 = *v1;
  sub_100003AF8();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (!v0)
  {
  }

  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1005C336C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100021DB0();
  sub_1000C8394();
  v13 = *(v12 + 152);
  if (sub_100192228(v13) == 1)
  {
    sub_100018144(v13, &qword_100CC84C8);
LABEL_3:
    v14 = *(v12 + 184);
    (*(*(v12 + 192) + 16))(*(v12 + 200), *(v12 + 208), v14);
    sub_100003934();
    sub_10001B350(v15, v16, v17, v14);
    NotificationSubscription.Location.init(location:locationOverride:)();
    if (qword_100CA1F90 != -1)
    {
      swift_once();
    }

    sub_1005C9628(&qword_100CC84D0, v18, type metadata accessor for NotificationsStoreObserver);
    Configurable.setting<A>(_:)();
    if (*(v12 + 288) == 1 && (sub_1000213E8((*(v12 + 80) + 16)), sub_10001920C(), (dispatch thunk of NotificationSubscriptionManagerType.resubscribedAfterDeviceRestoreOnce()() & 1) == 0))
    {
      sub_1000161C0((*(v12 + 80) + 16), *(*(v12 + 80) + 40));
      sub_10002C8AC();
      dispatch thunk of NotificationSubscriptionManagerType.setResubscribedAfterDeviceRestoreOnce()();
      static NotificationSubscription.Kind.all.getter();
      v19 = swift_task_alloc();
      *(v12 + 272) = v19;
      *v19 = v12;
      v20 = sub_1005C36AC;
    }

    else
    {
      static NotificationSubscription.Kind.precipitation.getter();
      v19 = swift_task_alloc();
      *(v12 + 280) = v19;
      *v19 = v12;
      v20 = sub_1005C38CC;
    }

    v19[1] = v20;
    sub_1000116B0(*(v12 + 144));
    sub_1000208FC();

    return sub_1005C545C(v37, v38);
  }

  v21 = sub_100021CEC();
  v22(v21);
  if (NotificationSubscription.precipitation.getter() == 2)
  {
    v23 = NotificationSubscription.severe.getter();
    v24 = sub_1000139F8();
    v25(v24);
    if (v23 == 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = sub_1000139F8();
    v27(v26);
  }

  (*(*(v12 + 192) + 8))(*(v12 + 208), *(v12 + 184));
  sub_10001C6B4();
  sub_10004F998();
  sub_1000248CC();

  sub_100003B14();
  sub_1000208FC();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_1005C36AC()
{
  sub_100013494();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_1000139F8();
  v4(v3);
  v5 = sub_100013484();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1005C37E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100021DB0();
  sub_1000C8394();
  (*(v12[17] + 8))(v12[18], v12[16]);
  v13 = sub_10001920C();
  v14(v13);
  sub_10001C6B4();
  sub_10004F998();
  sub_1000248CC();

  sub_100003B14();
  sub_1000208FC();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1005C38CC()
{
  sub_100013494();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_1000139F8();
  v4(v3);
  v5 = sub_100013484();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1005C3A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_1000B025C();
  a23 = v25;
  a24 = v26;
  sub_1000C8EB0();
  a22 = v24;

  if (qword_100CA26F0 != -1)
  {
    sub_10001F1FC();
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000703C(v27, qword_100D90B38);
  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v24[30];
  v32 = v24[26];
  v33 = v24[23];
  v34 = v24[24];
  if (v30)
  {
    v35 = sub_100011450();
    a12 = v32;
    v36 = sub_10002C894();
    v37 = sub_1000205BC();
    a13 = v37;
    *v35 = 136446466;
    swift_getErrorValue();
    a11 = v31;
    v38 = Error.logSafeDescription.getter();
    a10 = v33;
    v40 = sub_100078694(v38, v39, &a13);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2112;
    swift_errorRetain();
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 14) = v41;
    *v36 = v41;
    _os_log_impl(&_mh_execute_header, v28, v29, "Failed to determine current state of subscription with error: %{public}s %@", v35, 0x16u);
    sub_100018144(v36, &qword_100CBE0F8);
    sub_1000208F0();

    sub_100006F14(v37);
    sub_1000208F0();

    sub_1000208F0();

    (*(v34 + 8))(a12, a10);
  }

  else
  {

    (*(v34 + 8))(v32, v33);
  }

  sub_10001C6B4();
  sub_10004F998();
  sub_1000248CC();

  sub_100003B14();
  sub_1000D4258();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1005C3C84(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for Location.Identifier();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for NotificationSubscription.Kind();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005C3DA4, 0, 0);
}

uint64_t sub_1005C3DA4()
{
  sub_100013494();
  sub_1000213E8((v0[8] + 16));
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1005C3E54;
  v2 = sub_1000116B0(v0[7]);

  return dispatch thunk of NotificationSubscriptionManagerType.unsubscribe(from:for:)(v2);
}

uint64_t sub_1005C3E54()
{
  sub_100003B08();
  sub_10000C7E4();
  sub_10000CCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100003AF8();
  *v5 = v4;
  *(v6 + 128) = v0;

  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1005C4170(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_10022C350(&qword_100CA65D8);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for Location();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for NotificationSubscription();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for Location.Identifier();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for SavedLocation();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = type metadata accessor for NotificationSubscription.Kind();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_1005C43E4, 0, 0);
}

uint64_t sub_1005C43E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  sub_10002FDF4();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22;
  if (qword_100CA26F0 != -1)
  {
    sub_10001F1FC();
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v22[25] = sub_10000703C(v26, qword_100D90B38);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = sub_100011450();
    v30 = sub_1000205BC();
    a11 = v30;
    *v29 = 141558275;
    sub_1000182C4();
    *(v29 + 4) = v31;
    *(v29 + 12) = 2081;
    v32 = Array.description.getter();
    v34 = sub_100078694(v32, v33, &a11);

    *(v29 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "Synchronizing notification subscriptions with locations: %{private,mask.hash}s", v29, 0x16u);
    sub_100006F14(v30);
    sub_1000208F0();

    sub_1000208F0();
  }

  v35 = v22[6];
  v36 = *(v35 + 16);
  v37 = _swiftEmptyArrayStorage;
  if (v36)
  {
    v38 = v25[20];
    v39 = v25[17];
    a11 = _swiftEmptyArrayStorage;
    sub_10000369C(0, v36, 0);
    v37 = a11;
    v40 = v35 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v58 = (v39 + 8);
    v59 = *(v38 + 72);
    do
    {
      v41 = v25[21];
      v42 = v25[18];
      v43 = v25;
      v44 = v25[16];
      sub_100049A00();
      sub_100050D50(v40, v41, v45);
      SavedLocation.identifier.getter();
      v46 = Location.Identifier.id.getter();
      v48 = v47;
      (*v58)(v42, v44);
      sub_10000628C();
      sub_10004F998();
      a11 = v37;
      v50 = v37[2];
      v49 = v37[3];
      if (v50 >= v49 >> 1)
      {
        sub_10000369C((v49 > 1), v50 + 1, 1);
        v37 = a11;
      }

      v37[2] = v50 + 1;
      v51 = &v37[2 * v50];
      v51[4] = v46;
      v51[5] = v48;
      v40 += v59;
      --v36;
      v25 = v43;
    }

    while (v36);
  }

  v25[26] = v37;
  sub_1000437A0(v25[7]);
  static NotificationSubscription.Kind.all.getter();
  v52 = swift_task_alloc();
  v25[27] = v52;
  *v52 = v25;
  v52[1] = sub_1005C46D8;
  sub_1000116B0(v25[24]);
  sub_100031504();

  return dispatch thunk of NotificationSubscriptionManagerType.subscriptions(of:)(v53, v54, v55);
}

uint64_t sub_1005C46D8()
{
  sub_100003B08();
  sub_10000C7E4();
  v3 = v2;
  sub_10000CCF8();
  *v4 = v3;
  *v4 = *v1;
  v3[28] = v5;
  v3[29] = v0;

  (*(v3[23] + 8))(v3[24], v3[22]);
  if (v0)
  {
  }

  sub_10000E700();

  return _swift_task_switch(v6, v7, v8);
}

void sub_1005C4818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10009262C();
  v20 = 0;
  v21 = v19[29];
  sub_1000C9014();
  v22 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19[30] = v22;
    if (v18 == v20)
    {
      break;
    }

    if (v20 >= *(a14 + 16))
    {
      __break(1u);
      return;
    }

    v23 = v19[26];
    v24 = v19[15];
    v25 = v19[8];
    sub_1000523AC();
    v26(v24);
    sub_1005C7478(v23, v25);
    v27 = v21;
    v28 = v19[15];
    v29 = v19[13];
    if (v27)
    {

      v43 = sub_1000439EC();
      v44(v43);
      sub_1000865A0();

      return;
    }

    v31 = v19[8];
    v30 = v19[9];
    v32 = sub_1000439EC();
    v33(v32);
    if (sub_1000D3BF0(v31) == 1)
    {
      sub_100018144(v19[8], &qword_100CA65D8);
      v21 = 0;
      ++v20;
    }

    else
    {
      v34 = sub_1000C8A08();
      v30(v34);
      (v30)(a10, v28, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100025278();
        sub_10003C154();
        v22 = v38;
      }

      v35 = v22[2];
      if (v35 >= v22[3] >> 1)
      {
        sub_1000B0C98();
        sub_10003C154();
        v22 = v39;
      }

      ++v20;
      v22[2] = v35 + 1;
      sub_10002426C();
      v30(v36 + v37 * v35);
      v21 = 0;
    }
  }

  if (v22[2])
  {
    v40 = swift_task_alloc();
    v19[31] = v40;
    *v40 = v19;
    sub_1005C96FC(v40);
    sub_1000865A0();

    sub_1005C7710(v41);
  }

  else
  {

    sub_100038018();

    sub_100003B14();
    sub_1000865A0();

    v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1005C4AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100088884();
  sub_10003A0D8();
  v11 = *v10;
  sub_100003AF8();
  *v12 = v11;

  sub_100044D14();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1005C4CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1005C9710();
  a19 = v23;
  a20 = v24;
  sub_1000C8394();
  a18 = v20;
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000E173C();
  if (sub_100192338())
  {
    sub_100011450();
    v26 = sub_100071798();
    sub_1000205BC();
    sub_100040C04();
    *v21 = 136446466;
    sub_1001200A4();
    swift_getErrorValue();
    v27 = sub_1000B9164();
    sub_100078694(v27, v28, &a10);

    sub_1005C974C();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v29;
    *v26 = v29;
    sub_1000867E4();
    _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
    sub_100018144(v26, &qword_100CBE0F8);
    sub_1000208F0();

    sub_100006F14(v22);
    sub_1000208F0();

    sub_1000208F0();
  }

  else
  {
  }

  sub_100038018();

  sub_100003B14();
  sub_1000D3D88();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_1005C5120()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1005C5220()
{
  sub_100013494();
  sub_1005C5B28();
  sub_1005C5B84();
  sub_1000132AC();

  sub_100003B14();

  return v0();
}

uint64_t sub_1005C52A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1005C9710();
  a19 = v23;
  a20 = v24;
  sub_1000C8394();
  a18 = v20;
  if (qword_100CA26F0 != -1)
  {
    sub_10001F1FC();
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000703C(v25, qword_100D90B38);
  sub_1000E31FC();
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000E173C();
  if (sub_100192338())
  {
    sub_100011450();
    v27 = sub_100071798();
    sub_1000205BC();
    sub_100040C04();
    *v21 = 136446466;
    sub_1001200A4();
    swift_getErrorValue();
    v28 = sub_1000B9164();
    sub_100078694(v28, v29, &a10);

    sub_1005C974C();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v30;
    *v27 = v30;
    sub_1000867E4();
    _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
    sub_100018144(v27, &qword_100CBE0F8);
    sub_1000208F0();

    sub_100006F14(v22);
    sub_1000208F0();

    sub_1000208F0();
  }

  else
  {
  }

  sub_1000132AC();

  sub_100003B14();
  sub_1000D3D88();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_1005C545C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for NotificationSubscription.Location();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for NotificationSubscription.Kind();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005C557C, 0, 0);
}

uint64_t sub_1005C557C()
{
  sub_100013494();
  sub_1000213E8((v0[8] + 16));
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1005C562C;
  v2 = sub_1000116B0(v0[7]);

  return dispatch thunk of NotificationSubscriptionManagerType.subscribe(to:for:)(v2);
}

uint64_t sub_1005C562C()
{
  sub_100003B08();
  sub_10000C7E4();
  sub_10000CCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100003AF8();
  *v5 = v4;
  *(v6 + 128) = v0;

  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1005C5728()
{
  sub_10000EB1C();
  sub_100008188();
  v1 = *(v0 + 104);
  static NotificationSubscription.Kind.precipitation.getter();
  v2 = NotificationSubscription.Kind.containsAny(_:)();
  v3 = *(v1 + 8);
  v4 = sub_10001920C();
  v3(v4);
  if (v2)
  {
    sub_1005C5B28();
  }

  static NotificationSubscription.Kind.severe.getter();
  v5 = NotificationSubscription.Kind.containsAny(_:)();
  v6 = sub_10001920C();
  v3(v6);
  if (v5)
  {
    sub_1005C5B84();
  }

  sub_100003B14();
  sub_10002C7FC();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1005C5A30()
{
  sub_1000161C0((v0 + 16), *(v0 + 40));
  dispatch thunk of PredictedLocationsNotificationSubscriptionManagerType.subscribeToPredictedLocations(for:)();

  SettingProperty.wrappedValue.getter();

  sub_10017DF2C(v2);
  return sub_1005C5B84();
}

uint64_t sub_1005C5AB8()
{
  sub_1000161C0((v0 + 16), *(v0 + 40));
  dispatch thunk of PredictedLocationsNotificationSubscriptionManagerType.unsubscribeToPredictedLocations(for:)();
  sub_10017DF2C(0);

  return sub_1005C5B84();
}

uint64_t sub_1005C5B28()
{

  Debouncer.execute(_:)();
}

uint64_t sub_1005C5B84()
{

  Debouncer.execute(_:)();
}

uint64_t sub_1005C5BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for Location.Identifier();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  sub_10022C350(&qword_100CC84C8);
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for NotificationSubscription();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for NotificationSubscription.Kind();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_10022C350(&unk_100CE2F20);
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for LocationModel();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_1005C5E34, 0, 0);
}

uint64_t sub_1005C5E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10003A0D8();
  v14 = v12[22];
  v15 = v12[7];
  v16 = v12[6];
  v17 = v12[8] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v18 = *(v17 + *(type metadata accessor for LocationsState() + 40));

  sub_100879FB8(v16, v15, v18);

  v19 = sub_10000C834();
  if (sub_100024D10(v19, v20, v14) == 1)
  {
    sub_100018144(v12[21], &unk_100CE2F20);
    if (qword_100CA26F0 != -1)
    {
      sub_10001F1FC();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90B38);
    sub_1000E31FC();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_100011450();
      sub_1000205BC();
      sub_100040C04();
      *(v24 + 14) = sub_100042298(7.2225e-34, v25);
      sub_1000E0F5C(&_mh_execute_header, v26, v27, "Failed to obtain a Location instance of a location for which next hour forecasts are not available. locationID=%{private,mask.hash}s");
      sub_100006F14(v13);
      sub_1000208F0();

      sub_1000208F0();
    }

    goto LABEL_16;
  }

  (*(v12[23] + 32))(v12[24], v12[21], v12[22]);
  LocationModel.kind.getter();
  v28 = Location.Identifier.Kind.rawValue.getter();
  v30 = v29;
  if (v28 == Location.Identifier.Kind.rawValue.getter() && v30 == v31)
  {

    goto LABEL_15;
  }

  sub_100021CEC();
  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
LABEL_15:
    (*(v12[23] + 8))(v12[24], v12[22]);
    goto LABEL_16;
  }

  v34 = v12[18];
  sub_1005C7FD8(v12[20]);
  static NotificationSubscription.Kind.none.getter();
  sub_1005C9628(&qword_100CC84D8, 255, &type metadata accessor for NotificationSubscription.Kind);
  sub_100003B2C();
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v34 + 8);
  v12[25] = v36;
  v12[26] = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37 = sub_10001920C();
  v36(v37);
  if (v35)
  {
    (v36)(v12[20], v12[17]);
    v38 = sub_1000139F8();
    v39(v38);
LABEL_16:
    sub_100031E18();

    sub_100003B14();

    return v40();
  }

  sub_1000437A0(v12[9]);
  LocationModel.id.getter();
  v12[27] = v42;
  v43 = swift_task_alloc();
  v12[28] = v43;
  *v43 = v12;
  v43[1] = sub_1005C6210;
  sub_100032620();

  return dispatch thunk of NotificationSubscriptionManagerType.subscription(with:)(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

uint64_t sub_1005C6210()
{
  sub_100003B08();
  sub_10000C7E4();
  v3 = v2;
  sub_10000CCF8();
  *v4 = v3;
  v5 = *v1;
  sub_100003AF8();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (!v0)
  {
  }

  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1005C6314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1005C9710();
  sub_1000C8394();
  v14 = v12[13];
  v13 = v12[14];
  v15 = sub_100192228(v14);
  v16 = v12[25];
  if (v15 == 1)
  {
    v16(v12[20], v12[17]);
    v17 = sub_10001920C();
    v18(v17);
    sub_100018144(v14, &qword_100CC84C8);
LABEL_12:
    sub_100031E18();

    sub_100003B14();
    sub_1000D3D88();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }

  v19 = v12[19];
  v21 = v12[16];
  v20 = v12[17];
  (*(v12[15] + 32))(v21, v14, v13);
  NotificationSubscription.kind.getter();
  v22 = NotificationSubscription.Kind.containsAny(_:)();
  v16(v19, v20);
  if ((v22 & 1) == 0)
  {
    v35 = sub_100170734();
    v36(v35);
    v37 = sub_10002C8AC();
    v21(v37);
    v38 = sub_100003B2C();
    v39(v38);
    goto LABEL_12;
  }

  if (qword_100CA26F0 != -1)
  {
    sub_10001F1FC();
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000703C(v23, qword_100D90B38);
  sub_1000E31FC();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = sub_100011450();
    sub_1000205BC();
    sub_100040C04();
    *(v26 + 14) = sub_100042298(7.2225e-34, v27);
    sub_1000E0F5C(&_mh_execute_header, v28, v29, "A location was found for which the user had previously subscribed to recieve notifications, but which currently does not support this. Quitely unsubscribe on behalf of the user. locationID=%{private,mask.hash}s");
    sub_100006F14(v21);
    sub_1000208F0();

    sub_1000208F0();
  }

  LocationModel.identifier.getter();
  v30 = swift_task_alloc();
  v12[30] = v30;
  *v30 = v12;
  v30[1] = sub_1005C65C4;
  sub_1000116B0(v12[12]);
  sub_1000D3D88();

  return sub_1005C3C84(v31, v32);
}

uint64_t sub_1005C65C4()
{
  sub_100013494();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_1000139F8();
  v4(v3);
  v5 = sub_100013484();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1005C66FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100088884();
  sub_10003A0D8();
  v11 = sub_100170734();
  v12(v11);
  v13 = sub_10002C8AC();
  v10(v13);
  v14 = sub_100003B2C();
  v15(v14);
  sub_100031E18();

  sub_100003B14();
  sub_100044D14();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1005C67B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_10009262C();
  a25 = v27;
  a26 = v28;
  a24 = v26;

  if (qword_100CA26F0 != -1)
  {
    sub_10001F1FC();
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000703C(v29, qword_100D90B38);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  v32 = os_log_type_enabled(v30, v31);
  v34 = v26[25];
  v33 = v26[26];
  v36 = v26[23];
  v35 = v26[24];
  v37 = v26[22];
  v38 = v26[20];
  v58 = v26[17];
  if (v32)
  {
    a13 = v26[20];
    v39 = sub_100011450();
    a12 = v33;
    v40 = sub_10002C894();
    a11 = v37;
    v41 = sub_1000205BC();
    a15 = v41;
    *v39 = 136446466;
    sub_1001200A4();
    swift_getErrorValue();
    a10 = v35;
    v42 = sub_1000B9164();
    a9 = v34;
    v44 = sub_100078694(v42, v43, &a15);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2112;
    swift_errorRetain();
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 14) = v45;
    *v40 = v45;
    _os_log_impl(&_mh_execute_header, v30, v31, "Failed to determine current state of subscription with error: %{public}s %@", v39, 0x16u);
    sub_100018144(v40, &qword_100CBE0F8);
    sub_1000208F0();

    sub_100006F14(v41);
    sub_1000208F0();

    sub_1000208F0();

    a9(a13, v58);
    (*(v36 + 8))(v35, a11);
  }

  else
  {

    v34(v38, v58);
    v46 = sub_100003B2C();
    v48(v46, v47);
  }

  sub_100031E18();

  sub_100003B14();
  sub_1000865A0();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, v58, a15, a16, a17, a18);
}

uint64_t sub_1005C6A1C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v91 = a3;
  v5 = type metadata accessor for LocationCoordinate();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v81 = &v70 - v8;
  v9 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v9 - 8);
  v11 = &v70 - v10;
  v12 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v12 - 8);
  v73 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v72 = &v70 - v15;
  __chkstk_darwin(v16);
  v18 = &v70 - v17;
  __chkstk_darwin(v19);
  v79 = &v70 - v20;
  v82 = type metadata accessor for Location();
  v84 = *(v82 - 8);
  __chkstk_darwin(v82);
  v71 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v74 = &v70 - v23;
  __chkstk_darwin(v24);
  v80 = &v70 - v25;
  v26 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v26 - 8);
  v28 = &v70 - v27;
  v90 = type metadata accessor for LocationModel();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v85 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for NotificationSubscription.Location();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v78 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v70 - v34;
  __chkstk_darwin(v36);
  v38 = &v70 - v37;
  if ((NotificationSubscription.precipitationEnabled.getter() & 1) == 0 && (NotificationSubscription.severeEnabled.getter() & 1) == 0)
  {
    return sub_10001B350(v91, 1, 1, v30);
  }

  v89 = v3;
  v83 = a1;
  NotificationSubscription.location.getter();
  NotificationSubscription.Location.kind.getter();
  v86 = *(v31 + 8);
  v86(v38, v30);
  v39 = Location.Identifier.Kind.rawValue.getter();
  v41 = v40;
  if (v39 == Location.Identifier.Kind.rawValue.getter() && v41 == v42)
  {

LABEL_10:
    NotificationSubscription.location.getter();
    v47 = NotificationSubscription.Location.id.getter();
    v49 = v48;
    v86(v35, v30);
    sub_100879FB8(v47, v49, v87);

    v50 = v90;
    if (sub_100024D10(v28, 1, v90) == 1)
    {
      sub_100018144(v28, &unk_100CE2F20);
    }

    else
    {
      v51 = v85;
      (*(v88 + 32))(v85, v28, v50);
      LocationModel.locationOfInterest.getter();
      v52 = type metadata accessor for LocationOfInterest();
      if (sub_100024D10(v11, 1, v52) == 1)
      {
        sub_100018144(v11, &qword_100CA3588);
        v53 = v82;
        sub_10001B350(v18, 1, 1, v82);
        v54 = v79;
        LocationModel.location.getter();
        if (sub_100024D10(v18, 1, v53) != 1)
        {
          sub_100018144(v18, &qword_100CA65D8);
        }
      }

      else
      {
        LocationOfInterest.location.getter();
        (*(*(v52 - 8) + 8))(v11, v52);
        v53 = v82;
        sub_10001B350(v18, 0, 1, v82);
        v54 = v79;
        (*(v84 + 32))(v79, v18, v53);
        sub_10001B350(v54, 0, 1, v53);
      }

      if (sub_100024D10(v54, 1, v53) == 1)
      {
        (*(v88 + 8))(v51, v50);
        sub_100018144(v54, &qword_100CA65D8);
      }

      else
      {
        v56 = v84;
        v57 = *(v84 + 32);
        v82 = v84 + 32;
        v79 = v57;
        (v57)(v80, v54, v53);
        Location.coordinate.getter();
        LocationCoordinate.init(_:)();
        v58 = v78;
        NotificationSubscription.location.getter();
        v59 = v74;
        NotificationSubscription.Location.locationOverride.getter();
        v86(v58, v30);
        Location.coordinate.getter();
        v87 = *(v56 + 8);
        v87(v59, v53);
        v60 = v75;
        LocationCoordinate.init(_:)();
        sub_1005C9628(&qword_100CAAA28, 255, &type metadata accessor for LocationCoordinate);
        v61 = v77;
        LOBYTE(v59) = dispatch thunk of static Equatable.== infix(_:_:)();
        v62 = *(v76 + 8);
        v62(v60, v61);
        v62(v81, v61);
        if ((v59 & 1) == 0)
        {
          v63 = v72;
          v64 = v85;
          LocationModel.location.getter();
          if (sub_100024D10(v63, 1, v53) == 1)
          {
            v65 = v78;
            NotificationSubscription.location.getter();
            NotificationSubscription.Location.location.getter();
            v86(v65, v30);
            v66 = sub_100024D10(v63, 1, v53);
            v67 = v80;
            if (v66 != 1)
            {
              sub_100018144(v63, &qword_100CA65D8);
            }
          }

          else
          {
            (v79)(v71, v63, v53);
            v67 = v80;
          }

          v68 = v73;
          (*(v84 + 16))(v73, v67, v53);
          sub_10001B350(v68, 0, 1, v53);
          v69 = v91;
          NotificationSubscription.Location.init(location:locationOverride:)();
          v87(v67, v53);
          (*(v88 + 8))(v64, v90);
          v45 = v69;
          v46 = 0;
          return sub_10001B350(v45, v46, 1, v30);
        }

        v87(v80, v53);
        (*(v88 + 8))(v85, v90);
      }
    }

    return sub_10001B350(v91, 1, 1, v30);
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v44)
  {
    goto LABEL_10;
  }

  v45 = v91;
  v46 = 1;
  return sub_10001B350(v45, v46, 1, v30);
}

uint64_t sub_1005C7478@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  v2 = type metadata accessor for NotificationSubscription.Location();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  NotificationSubscription.location.getter();
  NotificationSubscription.Location.kind.getter();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = Location.Identifier.Kind.rawValue.getter();
  v12 = v11;
  if (v10 == Location.Identifier.Kind.rawValue.getter() && v12 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  NotificationSubscription.location.getter();
  v16 = NotificationSubscription.Location.id.getter();
  v18 = v17;
  v19 = (v9)(v5, v2);
  v26[0] = v16;
  v26[1] = v18;
  __chkstk_darwin(v19);
  *(&v24 - 2) = v26;
  LOBYTE(v16) = sub_100745860(sub_10031EF08, (&v24 - 4), v25);

  if (v16 & 1) == 0 && ((NotificationSubscription.precipitationEnabled.getter() & 1) != 0 || (NotificationSubscription.severeEnabled.getter()))
  {
    NotificationSubscription.location.getter();
    v21 = v27;
    NotificationSubscription.Location.location.getter();
    v9(v5, v2);
    v20 = 0;
    goto LABEL_13;
  }

LABEL_9:
  v20 = 1;
  v21 = v27;
LABEL_13:
  v22 = type metadata accessor for Location();
  return sub_10001B350(v21, v20, 1, v22);
}

uint64_t sub_1005C7710(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Location.Identifier();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for NotificationSubscription.Kind();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for Location();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1005C7894, 0, 0);
}

uint64_t sub_1005C7894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100088884();
  sub_10003A0D8();
  v11 = v10[15];
  v12 = v10[6];
  v13 = v10[7];
  v14 = *(v12 + 16);
  v10[18] = v14;
  v10[19] = 0;
  if (v14)
  {
    v15 = v10[17];
    v16 = v10[14];
    v18 = *(v11 + 16);
    v17 = v11 + 16;
    v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v10[20] = v18;
    v10[21] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v15, v12 + v19, v16);
    sub_1000161C0((v13 + 16), *(v13 + 40));
    static NotificationSubscription.Kind.all.getter();
    Location.identifier.getter();
    v20 = swift_task_alloc();
    v10[22] = v20;
    *v20 = v10;
    v20[1] = sub_1005C7A08;
    sub_1000116B0(v10[13]);
    sub_100044D14();

    return dispatch thunk of NotificationSubscriptionManagerType.unsubscribe(from:for:)(v21);
  }

  else
  {
    sub_1005C5B28();
    sub_1005C5B84();
    sub_1000A405C();

    sub_100003B14();
    sub_100044D14();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

uint64_t sub_1005C7A08()
{
  sub_100008188();
  v2 = *v1;
  sub_10000CCF8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 184) = v0;

  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[11];
  (*(v2[9] + 8))(v2[10], v2[8]);
  (*(v6 + 8))(v5, v7);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1005C7BC0()
{
  sub_100008188();
  (*(v0[15] + 8))(v0[17], v0[14]);
  v1 = v0[18];
  v2 = v0[19] + 1;
  v0[19] = v2;
  if (v2 == v1)
  {
    sub_1005C5B28();
    sub_1005C5B84();
    sub_1000A405C();

    sub_100003B14();

    return v3();
  }

  else
  {
    v5 = v0[17];
    v6 = v0[14];
    v7 = v0[15];
    v8 = v0[7];
    v9 = *(v7 + 16);
    v7 += 16;
    v10 = v0[6] + ((*(v7 + 64) + 32) & ~*(v7 + 64)) + *(v7 + 56) * v2;
    v0[20] = v9;
    v0[21] = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v5, v10, v6);
    sub_1000161C0((v8 + 16), *(v8 + 40));
    static NotificationSubscription.Kind.all.getter();
    Location.identifier.getter();
    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    v11[1] = sub_1005C7A08;
    v12 = sub_1000116B0(v0[13]);

    return dispatch thunk of NotificationSubscriptionManagerType.unsubscribe(from:for:)(v12);
  }
}

uint64_t sub_1005C7FD8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NotificationSubscription.Kind();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CC84E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v16 = _swiftEmptyArrayStorage;
  sub_1005C9628(&qword_100CC5230, 255, &type metadata accessor for NotificationSubscription.Kind);
  sub_10022C350(&qword_100CC84E8);
  sub_1005C9670();
  v15 = a1;
  dispatch thunk of SetAlgebra.init<A>(_:)();

  sub_100141E5C();
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    static NotificationSubscription.Kind.precipitation.getter();
    sub_1005C82D8(v4, v7);
    (*(v14 + 8))(v4, v2);
    sub_100018144(v7, &qword_100CC84E0);
  }

  sub_100141E74();
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    static NotificationSubscription.Kind.severe.getter();
    sub_1005C82D8(v4, v7);
    (*(v14 + 8))(v4, v2);
    return sub_100018144(v7, &qword_100CC84E0);
  }

  return result;
}

uint64_t sub_1005C82D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for NotificationSubscription.Kind();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  v14 = *(v7 + 16);
  v14(v9, v3, v6, v11);
  sub_1005C9628(&qword_100CC5230, 255, &type metadata accessor for NotificationSubscription.Kind);
  dispatch thunk of SetAlgebra.intersection(_:)();
  (v14)(v9, a1, v6);
  dispatch thunk of SetAlgebra.formUnion(_:)();
  if (dispatch thunk of SetAlgebra.isEmpty.getter())
  {
    (*(v7 + 8))(v13, v6);
    v15 = 1;
  }

  else
  {
    (*(v7 + 32))(a2, v13, v6);
    v15 = 0;
  }

  return sub_10001B350(a2, v15, 1, v6);
}

void sub_1005C84BC()
{
  sub_10022C350(&unk_100CB2CF0);
  firstly<A>(closure:)();
  v0 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  v1 = zalgo.getter();
  Promise.error(on:closure:)();
}

void sub_1005C85AC(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  if (qword_100CA26F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000703C(v5, qword_100D90B38);
  sub_1005C1F54(a1, v4, &unk_100CB2CF0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = sub_100278530();
    v12 = v11;
    sub_100018144(v4, &unk_100CB2CF0);
    v13 = sub_100078694(v10, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Next fetch attempt scheduled for: %{public}s", v8, 0xCu);
    sub_100006F14(v9);
  }

  else
  {

    sub_100018144(v4, &unk_100CB2CF0);
  }
}

uint64_t sub_1005C87BC(uint64_t a1, char a2)
{
  v4 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.predictedLocations.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Requesting rescheduling of predicted location refreshes", v13, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v14 = type metadata accessor for TaskPriority();
  sub_10001B350(v6, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2 & 1;

  sub_1006C0138();
}

uint64_t sub_1005C89CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 16) = a4;
  v6 = type metadata accessor for Logger();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_1005C8A90, 0, 0);
}

uint64_t sub_1005C8A90()
{
  sub_100013494();
  sub_1000213E8((*(v0 + 16) + 96));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1005C8B38;
  v2 = sub_10001920C();

  return dispatch thunk of PredictedLocationsServiceProxyType.reschedulePredictedLocationsRefreshForNotifications()(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1005C8B38()
{
  sub_100003B08();
  sub_10000C7E4();
  sub_10000CCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100003AF8();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1005C8C34()
{
  sub_100013494();
  if (*(v0 + 80) == 1)
  {
    sub_1000213E8((*(v0 + 16) + 96));
    v1 = swift_task_alloc();
    v2 = sub_100040F7C(v1);
    *v2 = v3;
    v2[1] = sub_1005C8D1C;
    v4 = sub_10001920C();

    return dispatch thunk of PredictedLocationsServiceProxyType.demoSendNotificationsForPredictedLocationsAfterFeatureEnablement()(v4);
  }

  else
  {

    sub_100003B14();

    return v5();
  }
}

uint64_t sub_1005C8D1C()
{
  sub_100003B08();
  sub_10000C7E4();
  v3 = v2;
  sub_10000CCF8();
  *v4 = v3;
  v5 = *v1;
  sub_100003AF8();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_10000E700();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_100003B14();

    return v10();
  }
}

uint64_t sub_1005C8E3C()
{
  sub_10000EB1C();
  sub_100008188();
  static Logger.predictedLocations.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    swift_slowAlloc();
    v4 = sub_100071798();
    *v1 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v5;
    *v4 = v5;
    sub_1001AD00C(&_mh_execute_header, v6, v7, "Failed to reschedule predicted location refreshes, error: %{public}@");
    sub_100018144(v4, &qword_100CBE0F8);
    sub_1000208F0();

    sub_1000208F0();
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  sub_100003B14();
  sub_10002C7FC();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1005C8F8C()
{
  sub_10000EB1C();
  sub_100008188();
  static Logger.predictedLocations.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    swift_slowAlloc();
    v4 = sub_100071798();
    *v1 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v5;
    *v4 = v5;
    sub_1001AD00C(&_mh_execute_header, v6, v7, "Failed to reschedule predicted location refreshes, error: %{public}@");
    sub_100018144(v4, &qword_100CBE0F8);
    sub_1000208F0();

    sub_1000208F0();
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  sub_100003B14();
  sub_10002C7FC();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

void sub_1005C90DC()
{
  firstly<A>(closure:)();
  v0 = zalgo.getter();
  Promise.error(on:closure:)();
}

uint64_t sub_1005C9170(void *a1, const char *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_100CA26F0 != -1)
  {
    sub_10001F1FC();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000703C(v6, qword_100D90B38);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 2u);
    sub_1000208F0();
  }

  v10 = a1[10];
  v11 = a1[11];
  sub_1000161C0(a1 + 7, v10);
  return a3(v10, v11);
}

void sub_1005C9288(uint64_t a1, const char *a2)
{
  if (qword_100CA26F0 != -1)
  {
    sub_10001F1FC();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000703C(v3, qword_100D90B38);
  sub_1000E31FC();
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = sub_100011450();
    v6 = sub_10002C894();
    v7 = sub_1000205BC();
    v13 = v7;
    *v5 = 136446466;
    swift_getErrorValue();
    v8 = Error.logSafeDescription.getter();
    v10 = sub_100078694(v8, v9, &v13);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v11;
    *v6 = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 0x16u);
    sub_100018144(v6, &qword_100CBE0F8);
    sub_1000208F0();

    sub_100006F14(v7);
    sub_1000208F0();

    sub_1000208F0();
  }

  else
  {
  }
}

uint64_t sub_1005C9450()
{
  sub_100008188();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = sub_100007F54(v2);
  *v3 = v4;
  v3[1] = sub_1000D8400;
  v5 = sub_100074CA4();

  return sub_1005C2610(v5, v6, v7, v8, v1, v9);
}

uint64_t sub_1005C9588()
{
  sub_10000EB1C();
  sub_100008188();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v1[1] = sub_10006D0B0;
  sub_100074CA4();
  sub_10002C7FC();

  return sub_1005C89CC(v3, v4, v5, v6, v7);
}

uint64_t sub_1005C9628(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1005C9670()
{
  result = qword_100CC84F0;
  if (!qword_100CC84F0)
  {
    sub_10022E824(&qword_100CC84E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC84F0);
  }

  return result;
}

uint64_t sub_1005C96E4()
{
}

uint64_t sub_1005C972C()
{
  *(v0 + 24) = v1;
  *(v0 + 32) = 2112;

  return swift_errorRetain();
}

uint64_t sub_1005C974C()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;

  return swift_errorRetain();
}

void *sub_1005C976C(void *a1)
{

  return memcpy(a1, (v1 - 160), 0x48uLL);
}

uint64_t type metadata accessor for DetailComponentHeaderView()
{
  result = qword_100CC8550;
  if (!qword_100CC8550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005C97F8()
{
  sub_1000077F0();
  if (v0 <= 0x3F)
  {
    sub_10013BCD0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1005C98B0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA71B0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DetailComponentHeaderView();
  sub_1000955E0(v1 + *(v10 + 32), v9, &qword_100CA71B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    return (*(v11 + 32))(a1, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1005C9AA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10022C350(&qword_100CC8598);
  return sub_1005C9AFC(v1, a1 + *(v3 + 44));
}

uint64_t sub_1005C9AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v61 = a2;
  v2 = type metadata accessor for EnvironmentValues();
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v58 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ColorSchemeContrast();
  v4 = *(v51 - 8);
  __chkstk_darwin(v51);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = sub_10022C350(&qword_100CC85A0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v52 = sub_10022C350(&qword_100CC85A8);
  __chkstk_darwin(v52);
  v53 = &v49 - v14;
  v55 = sub_10022C350(&qword_100CC85B0);
  __chkstk_darwin(v55);
  v54 = &v49 - v15;
  v16 = sub_10022C350(&qword_100CC85B8);
  __chkstk_darwin(v16 - 8);
  v57 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v56 = &v49 - v19;
  v50 = static VerticalAlignment.center.getter();
  v65 = 0;
  sub_1005CA2DC(v63);
  memcpy(v66, v63, 0x71uLL);
  memcpy(__dst, v63, 0x71uLL);
  sub_1000955E0(v66, &v62, &qword_100CC85C0);
  sub_1000180EC(__dst, &qword_100CC85C0);
  memcpy(&v64[7], v66, 0x71uLL);
  v20 = v65;
  v21 = &v13[*(v11 + 44)];
  v22 = *(sub_10022C350(&qword_100CA5510) + 28);
  v23 = enum case for Text.Case.uppercase(_:);
  v24 = type metadata accessor for Text.Case();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  sub_10001B350(v21 + v22, 0, 1, v24);
  *v21 = swift_getKeyPath();
  v25 = v49;
  *v13 = v50;
  *(v13 + 1) = 0x4010000000000000;
  v13[16] = v20;
  memcpy(v13 + 17, v64, 0x78uLL);
  sub_1005C98B0(v9);
  v26 = v51;
  (*(v4 + 104))(v6, enum case for ColorSchemeContrast.increased(_:), v51);
  LOBYTE(v21) = static ColorSchemeContrast.== infix(_:_:)();
  v27 = *(v4 + 8);
  v27(v6, v26);
  v27(v9, v26);
  if (v21)
  {
    goto LABEL_2;
  }

  v29 = *(v25 + 64);
  if (*(v25 + 72) == 1)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_2:
    v28 = static HierarchicalShapeStyle.primary.getter();
    goto LABEL_8;
  }

  static os_log_type_t.fault.getter();
  v30 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  v31 = v58;
  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000E4DF8(v29, 0);
  (*(v59 + 8))(v31, v60);
  if (v63[0] == 1)
  {
    goto LABEL_2;
  }

LABEL_7:
  v28 = static HierarchicalShapeStyle.tertiary.getter();
LABEL_8:
  v32 = v28;
  v33 = v53;
  sub_10002F758(v13, v53, &qword_100CC85A0);
  *(v33 + *(v52 + 36)) = v32;
  v34 = *(v55 + 36);
  v35 = enum case for BlendMode.plusLighter(_:);
  v36 = type metadata accessor for BlendMode();
  v37 = v54;
  (*(*(v36 - 8) + 104))(&v54[v34], v35, v36);
  sub_10002F758(v33, v37, &qword_100CC85A8);
  v38 = *(v25 + 32);
  if (*(v25 + 40) == 1)
  {
    if (v38)
    {
      goto LABEL_14;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v40 = v58;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v38, 0);
    (*(v59 + 8))(v40, v60);
    if (v63[0])
    {
      goto LABEL_14;
    }
  }

  v41 = *(v25 + 48);
  if (*(v25 + 56) != 1)
  {

    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v43 = v58;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v41, 0);
    (*(v59 + 8))(v43, v60);
  }

LABEL_14:
  sub_1005CA690();
  v44 = v56;
  View.accessibilityHidden(_:)();
  sub_1000180EC(v37, &qword_100CC85B0);
  v45 = v57;
  sub_1000955E0(v44, v57, &qword_100CC85B8);
  v46 = v61;
  sub_1000955E0(v45, v61, &qword_100CC85B8);
  v47 = v46 + *(sub_10022C350(&qword_100CC85F0) + 48);
  *v47 = 0;
  *(v47 + 8) = 0;
  sub_1000180EC(v44, &qword_100CC85B8);
  return sub_1000180EC(v45, &qword_100CC85B8);
}

uint64_t sub_1005CA2DC@<X0>(uint64_t a1@<X8>)
{

  v19 = Image.init(_internalSystemName:)();
  static Font.footnote.getter();
  static Font.Weight.medium.getter();
  v18 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  sub_10002D5A4();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.footnote.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10010CD64(v2, v4, v6 & 1);

  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  __src[0] = v7;
  __src[1] = v9;
  LOBYTE(__src[2]) = v11 & 1;
  *(&__src[2] + 1) = *v22;
  HIDWORD(__src[2]) = *&v22[3];
  __src[3] = v13;
  __src[4] = v14;
  __src[5] = 1;
  LOBYTE(__src[6]) = 0;
  HIDWORD(__src[6]) = *&v21[3];
  *(&__src[6] + 1) = *v21;
  __src[7] = v15;
  __src[8] = 0x3FE0000000000000;
  LOWORD(__src[9]) = 256;
  v20[80] = 0;
  *a1 = v19;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v18;
  memcpy((a1 + 24), __src, 0x4AuLL);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v24[0] = v7;
  v24[1] = v9;
  v25 = v11 & 1;
  *v26 = *v22;
  *&v26[3] = *&v22[3];
  v27 = v13;
  v28 = v14;
  v29 = 1;
  v30 = 0;
  *v31 = *v21;
  *&v31[3] = *&v21[3];
  v32 = v15;
  v33 = 0x3FE0000000000000;
  v34 = 256;

  sub_1000955E0(__src, v20, &qword_100CB5E18);
  sub_1000180EC(v24, &qword_100CB5E18);
}

uint64_t sub_1005CA570@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1005CA5E8(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC85F8);
  __chkstk_darwin(v2 - 8);
  sub_1000955E0(a1, &v5 - v3, &qword_100CC85F8);
  return EnvironmentValues.textCase.setter();
}

unint64_t sub_1005CA690()
{
  result = qword_100CC85C8;
  if (!qword_100CC85C8)
  {
    sub_10022E824(&qword_100CC85B0);
    sub_1005CA71C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC85C8);
  }

  return result;
}

unint64_t sub_1005CA71C()
{
  result = qword_100CC85D0;
  if (!qword_100CC85D0)
  {
    sub_10022E824(&qword_100CC85A8);
    sub_1005CA7D4();
    sub_100006F64(&qword_100CA3ED0, &qword_100CA3ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC85D0);
  }

  return result;
}

unint64_t sub_1005CA7D4()
{
  result = qword_100CC85D8;
  if (!qword_100CC85D8)
  {
    sub_10022E824(&qword_100CC85A0);
    sub_100006F64(&qword_100CC85E0, &qword_100CC85E8);
    sub_100006F64(&qword_100CA5508, &qword_100CA5510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC85D8);
  }

  return result;
}

uint64_t sub_1005CA908()
{
  type metadata accessor for LocationPreviewModalViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = type metadata accessor for LocationPreviewViewContentModel(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for LocationPreviewViewModel(0);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  sub_100004604();
  sub_1005CBCF8(v0, v14, v15);
  if (sub_100024D10(v14, 1, v5) == 1)
  {
    return 0;
  }

  sub_100014A48();
  sub_1005CBD54(v14, v9, v17);
  sub_1000104A8();
  sub_1005CBCF8(v9 + v18, v4, v19);
  sub_10001F210();
  sub_1005CBCA0(v9, v20);
  sub_100003940();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_10001C6CC();
      sub_1005CBCA0(v4, v23);
      goto LABEL_4;
    case 2:
      return result;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
LABEL_4:
      result = 1;
      break;
    default:
      sub_10001C6CC();
      sub_1005CBCA0(v4, v22);
      return 0;
  }

  return result;
}

uint64_t sub_1005CAAA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationPreviewViewContentModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for LocationPreviewViewModel(0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = sub_10022C350(&qword_100CC8810);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v19 = *(v18 + 56);
  sub_1005CBCF8(a1, &v33 - v16, type metadata accessor for LocationPreviewViewModel);
  sub_1005CBCF8(a2, &v17[v19], type metadata accessor for LocationPreviewViewModel);
  sub_100005404(v17);
  if (v24)
  {
    sub_100005404(&v17[v19]);
    if (v24)
    {
LABEL_5:
      sub_100019B30();
      return 1;
    }

    goto LABEL_9;
  }

  sub_100004604();
  v21 = sub_100003940();
  sub_1005CBCF8(v21, v22, v23);
  sub_100005404(&v17[v19]);
  if (v24)
  {
    sub_10001F210();
    sub_1005CBCA0(v13, v25);
LABEL_9:
    sub_1000180EC(v17, &qword_100CC8810);
    return 0;
  }

  sub_100014A48();
  sub_1005CBD54(&v17[v19], v8, v26);
  sub_1006E6E98();
  if (v27 & 1) != 0 && (sub_100074CBC(), v24) && (sub_100074CBC(), v24) && (sub_100074CBC(), v24) && (static WeatherConditionBackgroundModel.== infix(_:_:)())
  {
    v28 = sub_1005CAD8C(v13 + *(v4 + 36), v8 + *(v4 + 36));
    sub_10001F210();
    sub_1005CBCA0(v8, v29);
    if (v28)
    {
      sub_10001F210();
      sub_1005CBCA0(v13, v30);
      goto LABEL_5;
    }
  }

  else
  {
    sub_10001F210();
    sub_1005CBCA0(v8, v31);
  }

  sub_10001F210();
  sub_1005CBCA0(v13, v32);
  sub_100019B30();
  return 0;
}

uint64_t sub_1005CACE4(uint64_t a1, uint64_t a2)
{
  sub_1006E6E98();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LocationPreviewViewContentModel(0);
  sub_100003CE8();
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  sub_100003CE8();
  if (!v6)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v6 || (static WeatherConditionBackgroundModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v7 + 36);

  return sub_1005CAD8C(a1 + v8, a2 + v8);
}

uint64_t sub_1005CAD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticle();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v36 = (v7 - v6);
  v8 = type metadata accessor for URL();
  sub_1000037C4();
  v37 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for LocationPreviewModalViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  v20 = sub_10022C350(&qword_100CC8818);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  v23 = &v36 - v22;
  v25 = *(v24 + 56);
  sub_1005CBCF8(a1, &v36 - v22, type metadata accessor for LocationPreviewModalViewModel);
  sub_1005CBCF8(a2, &v23[v25], type metadata accessor for LocationPreviewModalViewModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000104A8();
      sub_1005CBCF8(v23, v16, v27);
      if (sub_100022E80() == 1)
      {
        v28 = &v23[v25];
        v29 = v36;
        sub_1005CBD54(v28, v36, type metadata accessor for NewsArticle);
        v30 = sub_1008BE2A4(v16, v29);
        sub_1005CBCA0(v29, type metadata accessor for NewsArticle);
        sub_1005CBCA0(v16, type metadata accessor for NewsArticle);
        goto LABEL_26;
      }

      sub_1005CBCA0(v16, type metadata accessor for NewsArticle);
      goto LABEL_23;
    case 2u:
      if (sub_100022E80() != 2)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 3u:
      if (sub_100022E80() != 3)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 4u:
      if (sub_100022E80() != 4)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 5u:
      if (sub_100022E80() != 5)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 6u:
      if (sub_100022E80() != 6)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 7u:
      if (sub_100022E80() != 7)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 8u:
      if (sub_100022E80() == 8)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    case 9u:
      if (sub_100022E80() != 9)
      {
        goto LABEL_23;
      }

LABEL_21:
      sub_10001C6CC();
      sub_1005CBCA0(v23, v31);
      v30 = 1;
      break;
    default:
      sub_1000104A8();
      sub_1005CBCF8(v23, v19, v26);
      if (sub_100022E80())
      {
        (*(v37 + 8))(v19, v8);
LABEL_23:
        sub_1000180EC(v23, &qword_100CC8818);
        v30 = 0;
      }

      else
      {
        v33 = v37;
        (*(v37 + 32))(v13, &v23[v25], v8);
        v30 = static URL.== infix(_:_:)();
        v34 = *(v33 + 8);
        v34(v13, v8);
        v34(v19, v8);
LABEL_26:
        sub_10001C6CC();
        sub_1005CBCA0(v23, v35);
      }

      break;
  }

  return v30 & 1;
}

uint64_t sub_1005CB18C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LocationPreviewViewContentModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  type metadata accessor for LocationPreviewViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  sub_100004604();
  sub_1005CBCF8(v2, v12, v13);
  if (sub_100024D10(v12, 1, v4) == 1)
  {
    v14 = 0xED0000676E697765;
    v15 = 0x6976657250746F6ELL;
  }

  else
  {
    sub_100014A48();
    sub_1005CBD54(v12, v8, v16);
    sub_1005CBC10(&qword_100CC8830, type metadata accessor for LocationPreviewViewContentModel);
    v15 = ShortDescribable.description.getter();
    v14 = v17;
    sub_10001F210();
    sub_1005CBCA0(v8, v18);
  }

  sub_10022C350(&qword_100CA36F8);
  *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
  sub_1000103C4();
  v19[4] = 0xD000000000000018;
  v19[5] = v20;
  v19[9] = &type metadata for String;
  v19[6] = v15;
  v19[7] = v14;
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CC8820);
  a1[4] = sub_10012EF24(&qword_100CC8828, &qword_100CC8820);
  sub_100043010(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1005CB3D0()
{
  sub_1005CBC10(&qword_100CC8838, type metadata accessor for LocationPreviewViewModel);

  return ShortDescribable.description.getter();
}

uint64_t sub_1005CB43C@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3B030;
  *(inited + 32) = 0x4C77656976657270;
  *(inited + 40) = 0xEF6E6F697461636FLL;
  *(inited + 72) = type metadata accessor for PreviewLocation();
  v4 = sub_100043010((inited + 48));
  sub_1005CBCF8(v1, v4, type metadata accessor for PreviewLocation);
  sub_1000103C4();
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = v5;
  *(inited + 96) = *(v1 + *(type metadata accessor for LocationPreviewViewContentModel(0) + 20));
  sub_1000103C4();
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000021;
  *(inited + 136) = v7;
  *(inited + 144) = *(v1 + *(v8 + 28));
  sub_1000103C4();
  *(inited + 168) = v9;
  *(inited + 176) = 0xD00000000000001ALL;
  *(inited + 184) = v10;
  v12 = *(v11 + 32);
  v13 = type metadata accessor for WeatherConditionBackgroundModel();
  *(inited + 216) = v13;
  v14 = sub_100043010((inited + 192));
  (*(*(v13 - 8) + 16))(v14, v1 + v12, v13);
  strcpy((inited + 224), "modalViewModel");
  *(inited + 239) = -18;
  type metadata accessor for LocationPreviewModalViewModel(0);
  sub_1005CBC10(&qword_100CC8840, type metadata accessor for LocationPreviewModalViewModel);
  v15 = ShortDescribable.description.getter();
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = v15;
  *(inited + 248) = v16;
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CC8848);
  a1[4] = sub_10012EF24(&qword_100CC8850, &qword_100CC8848);
  sub_100043010(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1005CB6DC()
{
  sub_1005CBC10(&qword_100CC8830, type metadata accessor for LocationPreviewViewContentModel);

  return ShortDescribable.description.getter();
}

uint64_t sub_1005CB748@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for LocationPreviewModalViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  sub_1000104A8();
  sub_1005CBCF8(v2, v14, v15);
  v16 = 0xE400000000000000;
  v17 = 1701736302;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10001C6CC();
      sub_1005CBCA0(v14, v20);
      v16 = 0xE700000000000000;
      v17 = 0x656C6369747261;
      break;
    case 2u:
      break;
    case 3u:
      v16 = 0xEF6C69617465446ELL;
      v17 = 0x6F697469646E6F63;
      break;
    case 4u:
      sub_1000176DC();
      v17 = 0xD000000000000010;
      break;
    case 5u:
      sub_1000176DC();
      v17 = 0xD00000000000001BLL;
      break;
    case 6u:
      sub_1000176DC();
      v17 = 0xD000000000000013;
      break;
    case 7u:
      v16 = 0xEA00000000006C69;
      v17 = 0x617465446E6F6F6DLL;
      break;
    case 8u:
      v16 = 0xEE006C6961746544;
      v17 = 0x7365676172657661;
      break;
    case 9u:
      sub_1000176DC();
      v17 = 0xD000000000000015;
      break;
    default:
      (*(v6 + 32))(v10, v14, v4);
      _StringGuts.grow(_:)(16);

      strcpy(v23, "callToAction(");
      HIWORD(v23[1]) = -4864;
      sub_1005CBC10(&qword_100CA5728, &type metadata accessor for URL);
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 41;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v17 = v23[0];
      v16 = v23[1];
      (*(v6 + 8))(v10, v4);
      break;
  }

  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0x657669746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v17;
  *(inited + 56) = v16;
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CC8858);
  a1[4] = sub_10012EF24(&qword_100CC8860, &qword_100CC8858);
  sub_100043010(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1005CBB14()
{
  sub_1005CBC10(&qword_100CC8840, type metadata accessor for LocationPreviewModalViewModel);

  return ShortDescribable.description.getter();
}

uint64_t sub_1005CBC10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005CBCA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1005CBCF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1005CBD54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1005CBDB0@<X0>(uint64_t *a1@<X8>)
{
  sub_100035B30(v1 + 16, (a1 + 2));

  sub_10022C350(&qword_100CA48C8);
  sub_1005CBE44();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1005CBE44()
{
  result = qword_100CA48F8;
  if (!qword_100CA48F8)
  {
    sub_10022E824(&qword_100CA48C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA48F8);
  }

  return result;
}

uint64_t sub_1005CBEA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v77 = v9 - v8;
  v10 = sub_10022C350(&qword_100CADBA0);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v78 = &v73 - v12;
  v79 = sub_10022C350(&qword_100CADD58);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v80 = &v73 - v14;
  v15 = type metadata accessor for Location();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v73 - v24;
  v26 = sub_10022C350(&qword_100CAEE78);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v73 - v28;
  sub_1000BC008();
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

  v73 = v6;
  v74 = v4;
  v31 = type metadata accessor for WeatherMenuInput();
  v32 = *(v31 + 20);
  v33 = *(v26 + 48);
  v75 = v31;
  v76 = a1;
  sub_1000302D8(a1 + v32, v29, &qword_100CA65D8);
  v34 = a2 + v32;
  v35 = a2;
  sub_1000302D8(v34, &v29[v33], &qword_100CA65D8);
  sub_1000038B4(v29, 1, v15);
  if (v36)
  {
    sub_1000038B4(&v29[v33], 1, v15);
    if (v36)
    {
      sub_1000180EC(v29, &qword_100CA65D8);
      goto LABEL_12;
    }

LABEL_10:
    v39 = &qword_100CAEE78;
    v40 = v29;
LABEL_21:
    sub_1000180EC(v40, v39);
    goto LABEL_22;
  }

  sub_1000302D8(v29, v25, &qword_100CA65D8);
  sub_1000038B4(&v29[v33], 1, v15);
  if (v36)
  {
    v37 = sub_100003940();
    v38(v37);
    goto LABEL_10;
  }

  (*(v17 + 32))(v21, &v29[v33], v15);
  sub_1005CCAD0(&qword_100CA3A00, &type metadata accessor for Location);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v17 + 8);
  v42(v21, v15);
  v43 = sub_100003940();
  (v42)(v43);
  sub_1000180EC(v29, &qword_100CA65D8);
  if ((v41 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v45 = v75;
  v44 = v76;
  v46 = v75[6];
  v47 = v80;
  v48 = *(v79 + 48);
  sub_1000302D8(v76 + v46, v80, &qword_100CADBA0);
  sub_1000302D8(v35 + v46, v47 + v48, &qword_100CADBA0);
  v49 = v74;
  sub_1000038B4(v47, 1, v74);
  if (!v36)
  {
    v50 = v78;
    sub_1000302D8(v47, v78, &qword_100CADBA0);
    sub_1000038B4(v47 + v48, 1, v49);
    if (!v51)
    {
      v54 = v73;
      v55 = v47 + v48;
      v56 = v77;
      (*(v73 + 32))(v77, v55, v49);
      sub_1005CCAD0(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
      v57 = dispatch thunk of static Equatable.== infix(_:_:)();
      v58 = *(v54 + 8);
      v58(v56, v49);
      v58(v50, v49);
      sub_1000180EC(v47, &qword_100CADBA0);
      if ((v57 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    (*(v73 + 8))(v50, v49);
    goto LABEL_20;
  }

  sub_1000038B4(v47 + v48, 1, v49);
  if (!v36)
  {
LABEL_20:
    v39 = &qword_100CADD58;
    v40 = v47;
    goto LABEL_21;
  }

  sub_1000180EC(v47, &qword_100CADBA0);
LABEL_25:
  if ((sub_1001009A8(*(v44 + v45[7]), *(v35 + v45[7])) & 1) == 0 || (static WeatherMapOverlayKind.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_22;
  }

  v59 = v45[9];
  v60 = *(v44 + v59);
  v61 = *(v44 + v59 + 8);
  v62 = (v35 + v59);
  v63 = v60 == *v62 && v61 == v62[1];
  if (!v63 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1000BCFBC();
  if ((v64 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_100003940();
  sub_1000BD330();
  if ((v65 & 1) == 0)
  {
    goto LABEL_22;
  }

  v66 = v45[10];
  v67 = *(v44 + v66);
  v68 = *(v35 + v66);
  if (v67)
  {
    if (!v68)
    {
      goto LABEL_22;
    }

    sub_1000B8CA8();
    v69 = v68;
    v70 = v67;
    v71 = static NSObject.== infix(_:_:)();

    if ((v71 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v68)
  {
    goto LABEL_22;
  }

  sub_1000B9424();
  if ((v72 & 1) != 0 && *(v44 + v45[12]) == *(v35 + v45[12]))
  {
    v52 = *(v44 + v45[13]) ^ *(v35 + v45[13]) ^ 1;
    return v52 & 1;
  }

LABEL_22:
  v52 = 0;
  return v52 & 1;
}

uint64_t sub_1005CC564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CADBA0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v8 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  v12 = sub_10022C350(&qword_100CA65D8);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = type metadata accessor for ModalViewState(0);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = sub_10022C350(&qword_100CB0F88);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v53 - v26;
  sub_100962FAC(0, &v53 - v26);
  v58 = v20;
  sub_1005CCB18(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v20);
  v57 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  sub_1000302D8(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v11, &unk_100CE49F0);
  v28 = type metadata accessor for CurrentLocation();
  sub_1000038B4(v11, 1, v28);
  if (v29)
  {
    sub_1000180EC(v11, &unk_100CE49F0);
    v30 = type metadata accessor for Location();
    sub_10001B350(v15, 1, 1, v30);
  }

  else
  {
    CurrentLocation.location.getter();
    sub_1005CCBE0(v11, &type metadata accessor for CurrentLocation);
  }

  sub_10011C0F0(v27, v24, &qword_100CB0F88);
  v31 = type metadata accessor for PresentedLocation();
  sub_1000038B4(v24, 1, v31);
  v59 = v15;
  v56 = v7;
  if (v29)
  {
    sub_1000180EC(v24, &qword_100CB0F88);
    v36 = type metadata accessor for Location.Identifier();
    v34 = v7;
    v35 = 1;
  }

  else
  {
    v32 = type metadata accessor for Location.Identifier();
    sub_1000037E8();
    (*(v33 + 16))(v7, v24, v32);
    sub_1005CCBE0(v24, type metadata accessor for PresentedLocation);
    v34 = v7;
    v35 = 0;
    v36 = v32;
  }

  sub_10001B350(v34, v35, 1, v36);
  v37 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  v38 = type metadata accessor for ViewState(0);
  v39 = v37 + *(v38 + 40);
  v55 = *(v39 + 1);
  v40 = *(type metadata accessor for WeatherMapPresentationState(0) + 24);
  v41 = type metadata accessor for WeatherMenuInput();
  v42 = v41[8];
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  (*(v43 + 16))(a2 + v42, v39 + v40);
  v44 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v54 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v46 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v45 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v47 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v48 = *(v47 + *(type metadata accessor for EnvironmentState() + 72) + 16);
  v49 = *(v57 + *(type metadata accessor for LocationsState() + 28));
  LOBYTE(v47) = *(v47 + 3) == 4;
  LOBYTE(v38) = *(v37 + *(v38 + 44));
  sub_1005CCB7C(v58, a2);
  sub_10011C0F0(v59, a2 + v41[5], &qword_100CA65D8);
  sub_10011C0F0(v56, a2 + v41[6], &qword_100CADBA0);
  *(a2 + v41[7]) = v55;
  v50 = (a2 + v41[9]);
  *v50 = v54;
  v50[1] = v44;
  v50[2] = v46;
  v50[3] = v45;
  *(a2 + v41[10]) = v48;
  *(a2 + v41[11]) = v49;
  *(a2 + v41[12]) = v47;
  *(a2 + v41[13]) = v38;
  sub_10001B350(a2, 0, 1, v41);
  v51 = v48;
}

uint64_t sub_1005CCAD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005CCB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalViewState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005CCB7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalViewState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005CCBE0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_1005CCC5C(void *result)
{
  v3 = result[2];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 == 3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = v1;
  v11 = v2;
  v4 = result[4];
  v6[0] = result[5];
  v6[1] = v4;
  v6[2] = v6[0];
  v8 = *(result + 3);
  v7 = v8;
  v9 = v4;
  v5 = [objc_opt_self() polygonWithCoordinates:v6 count:4];

  return v5;
}

uint64_t sub_1005CCD08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 194))
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

uint64_t sub_1005CCD48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 194) = 1;
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

    *(result + 194) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005CCDCC(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_35;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_35;
  }

  if ((*(a1 + 32) ^ *(a2 + 32)))
  {
    goto LABEL_35;
  }

  v6 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_35;
  }

  v7 = *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_35;
  }

  if (((*(a1 + 72) ^ *(a2 + 72)) & 1) != 0 || (sub_100749BD4() & 1) == 0)
  {
    goto LABEL_35;
  }

  v8 = *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_35;
  }

  v9 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(a1 + 112) ^ *(a2 + 112)) & 1) != 0)
  {
    goto LABEL_35;
  }

  v12 = *(a2 + 113);
  v13 = sub_1005428F4(*(a1 + 113));
  v15 = v14;
  if (v13 == sub_1005428F4(v12) && v15 == v16)
  {
  }

  else
  {
    v18 = sub_10001F23C();

    if ((v18 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v19 = *(a1 + 120) == *(a2 + 120) && *(a1 + 128) == *(a2 + 128);
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_35;
  }

  v20 = *(a1 + 136) == *(a2 + 136) && *(a1 + 144) == *(a2 + 144);
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(a1 + 152) ^ *(a2 + 152)) & 1) != 0)
  {
    goto LABEL_35;
  }

  v21 = *(a2 + 153);
  v22 = sub_1005428F4(*(a1 + 153));
  v24 = v23;
  if (v22 == sub_1005428F4(v21) && v24 == v25)
  {

    goto LABEL_62;
  }

  v27 = sub_10001F23C();

  if ((v27 & 1) == 0)
  {
LABEL_35:
    v10 = 0;
    return v10 & 1;
  }

LABEL_62:
  v28 = *(a1 + 160) == *(a2 + 160) && *(a1 + 168) == *(a2 + 168);
  if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_35;
  }

  v29 = *(a1 + 176) == *(a2 + 176) && *(a1 + 184) == *(a2 + 184);
  if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(a1 + 192) ^ *(a2 + 192)) & 1) != 0)
  {
    goto LABEL_35;
  }

  v30 = *(a2 + 193);
  v31 = sub_1005428F4(*(a1 + 193));
  v33 = v32;
  if (v31 == sub_1005428F4(v30) && v33 == v34)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_1005CD0D0(uint64_t result)
{
  *(v1 + 72) = result;
  if ((result & 1) == 0)
  {
    *(v1 + 73) = 0;
  }

  return result;
}

uint64_t sub_1005CD0E8(uint64_t result)
{
  *(v1 + 112) = result;
  if ((result & 1) == 0)
  {
    *(v1 + 113) = 0;
  }

  return result;
}

uint64_t sub_1005CD100(uint64_t result)
{
  *(v1 + 152) = result;
  if ((result & 1) == 0)
  {
    *(v1 + 153) = 0;
  }

  return result;
}

uint64_t sub_1005CD118(uint64_t result)
{
  *(v1 + 192) = result;
  if ((result & 1) == 0)
  {
    *(v1 + 193) = 0;
  }

  return result;
}

uint64_t sub_1005CD128(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000100AD6640 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x8000000100AD6660 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000100AD6680 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000100AD66A0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x8000000100AD66C0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x8000000100AD66E0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x8000000100AD6700 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x8000000100AD6720 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x8000000100AD6740 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x8000000100AD6760 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000015 && 0x8000000100AD6780 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000013 && 0x8000000100AD67A0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000016 && 0x8000000100AD67C0 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000015 && 0x8000000100AD67E0 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000016 && 0x8000000100AD6800 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000012 && 0x8000000100AD6820 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000015 && 0x8000000100AD6840 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000014 && 0x8000000100AD6860 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0xD000000000000015 && 0x8000000100AD6880 == a2)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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
    }
  }
}

unint64_t sub_1005CD6D0(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
    case 4:
    case 6:
    case 12:
    case 14:
      result = 0xD000000000000016;
      break;
    case 2:
    case 5:
    case 8:
    case 10:
    case 13:
    case 16:
    case 18:
      result = 0xD000000000000015;
      break;
    case 7:
    case 15:
      result = 0xD000000000000012;
      break;
    case 9:
    case 17:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005CD814(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CC8B20);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1005CE5A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  sub_100004630();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    sub_10001C6E4(1);
    sub_100014A60(2);
    sub_10001C6E4(3);
    sub_10001C6E4(4);
    sub_100014A60(5);
    v14 = v3[73];
    v13 = 6;
    sub_1005CE69C();
    sub_100074CCC();
    sub_100004630();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001C6E4(7);
    sub_10001C6E4(8);
    sub_100014A60(9);
    v14 = v3[113];
    v13 = 10;
    sub_1005CE6F0();
    sub_100074CCC();
    sub_100004630();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001C6E4(11);
    sub_10001C6E4(12);
    sub_100014A60(13);
    v14 = v3[153];
    v13 = 14;
    sub_100074CCC();
    sub_100004630();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001C6E4(15);
    sub_10001C6E4(16);
    sub_100014A60(17);
    v14 = v3[193];
    v13 = 18;
    sub_100074CCC();
    sub_100004630();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_1005CDB24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CC8B00);
  sub_1000037C4();
  __chkstk_darwin(v5);
  v7 = &v57 - v6;
  v8 = a1[3];
  v83 = a1;
  sub_1000161C0(a1, v8);
  sub_1005CE5A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v128 = v2;
    v9 = 0;
    v10 = 0;
    LODWORD(v7) = 0;
    v11 = 0;
    LODWORD(v12) = 0;
    *v84 = 0;
    *&v84[4] = 0;
    v13 = 0;
  }

  else
  {
    *&v84[4] = a2;
    LOBYTE(v86[0]) = 0;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v82 = v17;
    sub_10001F228(1);
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v81 = v19;
    sub_10001F228(2);
    *v84 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10001F228(3);
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v80 = v21;
    sub_10001F228(4);
    v72 = KeyedDecodingContainer.decode(_:forKey:)();
    v73 = v20;
    v79 = v22;
    sub_10001F228(5);
    v71 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v85[0]) = 6;
    sub_1005CE5F4();
    sub_1000287A8();
    v11 = v7;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = LOBYTE(v86[0]);
    sub_10001F228(7);
    v70 = KeyedDecodingContainer.decode(_:forKey:)();
    v78 = v24;
    sub_10001F228(8);
    v69 = KeyedDecodingContainer.decode(_:forKey:)();
    v128 = 0;
    v10 = v23;
    v77 = v25;
    sub_10001F228(9);
    v26 = v128;
    v68 = KeyedDecodingContainer.decode(_:forKey:)();
    v128 = v26;
    if (v26 || (LOBYTE(v85[0]) = 10, sub_1005CE648(), sub_1000287A8(), v67 = v27, v11 = v7, v28 = v128, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v128 = v28) != 0) || (v66 = LOBYTE(v86[0]), sub_10001F228(11), v29 = v128, v65 = KeyedDecodingContainer.decode(_:forKey:)(), v76 = v30, (v128 = v29) != 0))
    {
      v31 = sub_100008A04();
      v32(v31);
      v13 = 0;
      v9 = 1;
      sub_1000104C0();
      *v84 = 1;
    }

    else
    {
      sub_10001F228(12);
      v33 = v128;
      v64 = KeyedDecodingContainer.decode(_:forKey:)();
      v75 = v34;
      v128 = v33;
      if (v33)
      {
        v35 = sub_100008A04();
        v36(v35);
        v13 = 0;
        v9 = 1;
        sub_1000104C0();
        *v84 = 1;
        *&v84[4] = 1;
      }

      else
      {
        sub_10001F228(13);
        v37 = v128;
        v63 = KeyedDecodingContainer.decode(_:forKey:)();
        v128 = v37;
        if (!v37)
        {
          LOBYTE(v85[0]) = 14;
          sub_1000287A8();
          v11 = v7;
          v38 = v128;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v128 = v38;
          if (!v38)
          {
            v61 = LOBYTE(v86[0]);
            sub_10001F228(15);
            v41 = v128;
            v60 = KeyedDecodingContainer.decode(_:forKey:)();
            v62 = v42;
            v15 = v41 == 0;
            v128 = v41;
            if (v41 || (sub_10001F228(16), v43 = v128, v59 = KeyedDecodingContainer.decode(_:forKey:)(), v74 = v44, (v128 = v43) != 0))
            {
              v45 = sub_100008A04();
              v46(v45);
              v16 = 0;
            }

            else
            {
              sub_10001F228(17);
              v47 = v128;
              v58 = KeyedDecodingContainer.decode(_:forKey:)();
              v128 = v47;
              if (!v47)
              {
                v119 = 18;
                KeyedDecodingContainer.decode<A>(_:forKey:)();
                v128 = 0;
                v57 = v84[0] & 1;
                LODWORD(v67) = v71 & 1;
                v68 &= 1u;
                v71 = v63 & 1;
                *v84 = v58 & 1;
                v50 = sub_100008A04();
                v51(v50);
                *(&v85[9] + 2) = v125;
                HIWORD(v85[9]) = v126;
                HIWORD(v85[14]) = v124;
                *(&v85[14] + 2) = v123;
                HIWORD(v85[19]) = v122;
                *(&v85[19] + 2) = v121;
                v63 = v120;
                v52 = v81;
                v53 = v82;
                v85[0] = v12;
                v85[1] = v82;
                v85[2] = v18;
                v85[3] = v81;
                v54 = v57;
                LOBYTE(v85[4]) = v57;
                v55 = v72;
                v56 = v80;
                v85[5] = v73;
                v85[6] = v80;
                v85[7] = v72;
                v85[8] = v79;
                LOBYTE(v85[9]) = v67;
                BYTE1(v85[9]) = v10;
                v85[10] = v70;
                v85[11] = v78;
                v85[12] = v69;
                v85[13] = v77;
                LOBYTE(v85[14]) = v68;
                BYTE1(v85[14]) = v66;
                v85[15] = v65;
                v85[16] = v76;
                v85[17] = v64;
                v85[18] = v75;
                LOBYTE(v85[19]) = v71;
                BYTE1(v85[19]) = v61;
                v85[20] = v60;
                v85[21] = v62;
                v85[22] = v59;
                v85[23] = v74;
                LOBYTE(v85[24]) = v84[0];
                BYTE1(v85[24]) = v120;
                sub_1002DD184(v85, v86);
                sub_100006F14(v83);
                v86[0] = v12;
                v86[1] = v53;
                v86[2] = v18;
                v86[3] = v52;
                v87 = v54;
                *v88 = v127[0];
                *&v88[3] = *(v127 + 3);
                v89 = v73;
                v90 = v56;
                v91 = v55;
                v92 = v79;
                v93 = v67;
                v94 = v10;
                v95 = v125;
                v96 = v126;
                v97 = v70;
                v98 = v78;
                v99 = v69;
                v100 = v77;
                v101 = v68;
                v102 = v66;
                v103 = v123;
                v104 = v124;
                v105 = v65;
                v106 = v76;
                v107 = v64;
                v108 = v75;
                v109 = v71;
                v110 = v61;
                v112 = v122;
                v111 = v121;
                v113 = v60;
                v114 = v62;
                v115 = v59;
                v116 = v74;
                v117 = v84[0];
                v118 = v63;
                sub_1002DD1E0(v86);
                return memcpy(*&v84[4], v85, 0xC2uLL);
              }

              v48 = sub_100008A04();
              v49(v48);
              v16 = 1;
            }

            sub_100006F14(v83);
            sub_1000104C0();
            *v84 = 1;
            *&v84[4] = 1;
            v13 = 1;
LABEL_6:

            if (v10)
            {
              goto LABEL_7;
            }

            goto LABEL_17;
          }
        }

        v39 = sub_100008A04();
        v40(v39);
        v9 = 1;
        sub_1000104C0();
        *v84 = 1;
        *&v84[4] = 1;
        v13 = 1;
      }
    }
  }

  result = sub_100006F14(v83);
  if (v9)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_6;
  }

  v16 = 0;
  v15 = 0;
  if (v10)
  {
LABEL_7:

    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  if (!v7)
  {
LABEL_8:
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:

  if (v11)
  {
LABEL_9:

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (!v12)
  {
LABEL_10:
    if (*v84)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:

  if (v84[0])
  {
LABEL_11:

    if ((v84[4] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (!*&v84[4])
  {
LABEL_12:
    if (v13)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:

  if (v13)
  {
LABEL_13:

    if (!v15)
    {
      goto LABEL_14;
    }

LABEL_24:

    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

LABEL_23:
  if (v15)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (!v16)
  {
    return result;
  }
}

uint64_t sub_1005CE3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005CD128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005CE3F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1005CD6C8();
  *a1 = result;
  return result;
}

uint64_t sub_1005CE420(uint64_t a1)
{
  v2 = sub_1005CE5A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005CE45C(uint64_t a1)
{
  v2 = sub_1005CE5A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1005CE49C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1005CDB24(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xC2uLL);
  }

  return result;
}

void *sub_1005CE500@<X0>(void *a1@<X8>)
{
  result = sub_100758A40(__src);
  if (!v1)
  {
    return memcpy(a1, __src, 0xC2uLL);
  }

  return result;
}

unint64_t sub_1005CE5A0()
{
  result = qword_100CC8B08;
  if (!qword_100CC8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8B08);
  }

  return result;
}

unint64_t sub_1005CE5F4()
{
  result = qword_100CC8B10;
  if (!qword_100CC8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8B10);
  }

  return result;
}

unint64_t sub_1005CE648()
{
  result = qword_100CC8B18;
  if (!qword_100CC8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8B18);
  }

  return result;
}

unint64_t sub_1005CE69C()
{
  result = qword_100CC8B28;
  if (!qword_100CC8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8B28);
  }

  return result;
}

unint64_t sub_1005CE6F0()
{
  result = qword_100CC8B30;
  if (!qword_100CC8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8B30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReportWeatherConditionsViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherConditionsViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1005CE8AC()
{
  result = qword_100CC8B38;
  if (!qword_100CC8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8B38);
  }

  return result;
}

unint64_t sub_1005CE904()
{
  result = qword_100CC8B40;
  if (!qword_100CC8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8B40);
  }

  return result;
}

unint64_t sub_1005CE95C()
{
  result = qword_100CC8B48;
  if (!qword_100CC8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8B48);
  }

  return result;
}

uint64_t sub_1005CE9D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000100AD68A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x8000000100AD68C0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x706D655468676968 && a2 == 0xEF65727574617265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001ALL && 0x8000000100AD6570 == a2)
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

unint64_t sub_1005CEB90(char a1)
{
  result = 0x706D655468676968;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      return result;
    case 3:
      result = 0x65706D6554776F6CLL;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

BOOL sub_1005CEC58(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && v5 == v6;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v8 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for ListPreprocessedDataModel() + 32);

  return sub_1001D3794(a1 + v10, a2 + v10);
}

uint64_t sub_1005CED4C(void *a1)
{
  v3 = sub_10022C350(&qword_100CC8C08);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1005CF3DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_100018594();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    sub_100018594();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[13] = 2;
    sub_100018594();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    sub_100018594();
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for ListPreprocessedDataModel();
    v10[11] = 4;
    type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel();
    sub_1005CF554(&qword_100CC8C10);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1005CEF3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel();
  __chkstk_darwin(v21);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CC8BF0);
  sub_1000037C4();
  v20 = v5;
  __chkstk_darwin(v6);
  v7 = type metadata accessor for ListPreprocessedDataModel();
  __chkstk_darwin(v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000161C0(a1, a1[3]);
  sub_1005CF3DC();
  v10 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    return sub_100006F14(a1);
  }

  v18 = v7;
  v23 = a1;
  v28 = 0;
  *v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v9[1] = v11;
  v27 = 1;
  v9[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v9[3] = v12;
  v26 = 2;
  v9[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v9[5] = v13;
  v25 = 3;
  v9[6] = KeyedDecodingContainer.decode(_:forKey:)();
  v9[7] = v14;
  v24 = 4;
  sub_1005CF554(&qword_100CC8C00);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = sub_10001F260();
  v16(v15);
  sub_1005CF430(v4, v9 + *(v18 + 32));
  sub_1005CF494(v9, v19);
  sub_100006F14(v23);
  return sub_1005CF4F8(v9);
}

uint64_t sub_1005CF308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005CE9D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005CF330(uint64_t a1)
{
  v2 = sub_1005CF3DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005CF36C(uint64_t a1)
{
  v2 = sub_1005CF3DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1005CF3DC()
{
  result = qword_100CC8BF8;
  if (!qword_100CC8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8BF8);
  }

  return result;
}

uint64_t sub_1005CF430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005CF494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListPreprocessedDataModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005CF4F8(uint64_t a1)
{
  v2 = type metadata accessor for ListPreprocessedDataModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005CF554(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ListPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005CF678()
{
  result = qword_100CC8C18;
  if (!qword_100CC8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8C18);
  }

  return result;
}

unint64_t sub_1005CF6D0()
{
  result = qword_100CC8C20;
  if (!qword_100CC8C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8C20);
  }

  return result;
}

unint64_t sub_1005CF728()
{
  result = qword_100CC8C28;
  if (!qword_100CC8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8C28);
  }

  return result;
}

void sub_1005CF77C(uint64_t a1, int a2)
{
  LODWORD(v77) = a2;
  v75 = type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v79 = type metadata accessor for MainAction();
  sub_1000037C4();
  v76 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v12 - 8);
  v78 = &v69 - v13;
  v74 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for LocationPreviewViewState(0);
  __chkstk_darwin(v18 - 8);
  sub_1000037D8();
  v73 = v20 - v19;
  v21 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  v26 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v26 - 8);
  v28 = &v69 - v27;
  v29 = type metadata accessor for Location();
  sub_1000037C4();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_1000037D8();
  v35 = v34 - v33;
  sub_1006E6234(v28);
  if (sub_100024D10(v28, 1, v29) == 1)
  {
    sub_1000180EC(v28, &qword_100CA65D8);
    if (qword_100CA26D8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000703C(v36, qword_100D90AF0);
    sub_1005D0284(a1, v6, type metadata accessor for PreviewLocation);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v81[0] = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      sub_1005D022C();
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      sub_1000104D4();
      v44 = sub_100078694(v41, v43, v81);

      *(v39 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to get location instance for preview location=%{private,mask.hash}s", v39, 0x16u);
      sub_100006F14(v40);
    }

    else
    {

      sub_1000104D4();
    }
  }

  else
  {
    v45 = (*(v31 + 32))(v35, v28, v29);
    v46 = *(v80 + 4);
    v46(v81, v45);
    sub_1005D0284(*&v81[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v25, type metadata accessor for LocationsState);

    v47 = *(*(v25 + *(v21 + 24)) + 16);
    type metadata accessor for SavedLocationsManager();
    v48 = static SavedLocationsManager.maxAllowedLocationsCount.getter();
    v49 = sub_100141A8C(v25, type metadata accessor for LocationsState);
    if (v47 >= v48)
    {
      v53 = *(v80 + 2);
      type metadata accessor for SearchViewAction();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ViewAction();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v82 = 0;
      memset(v81, 0, sizeof(v81));
      sub_10004F034(v11, v81, v53);
      sub_1000180EC(v81, &unk_100CD81B0);
      sub_100141A8C(v11, type metadata accessor for MainAction);
      (*(v31 + 8))(v35, v29);
    }

    else
    {
      v50 = v80;
      v51 = v35;
      v46(v81, v49);
      sub_1005D0284(*&v81[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v17, type metadata accessor for ModalViewState);

      if (swift_getEnumCaseMultiPayload())
      {
        v52 = type metadata accessor for ModalViewState;
      }

      else
      {
        v54 = v17;
        v17 = v73;
        sub_1005D02E4(v54, v73);
        sub_1000161C0(v50 + 8, *(v50 + 11));
        sub_1006E6430();
        sub_1004052A0();

        v52 = type metadata accessor for LocationPreviewViewState;
      }

      sub_100141A8C(v17, v52);
      v55 = v31;
      v56 = *(v50 + 3);
      v80 = *(v50 + 2);
      v75 = v56;
      sub_10022C350(&qword_100CA3508);
      v57 = *(v76 + 72);
      v58 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v59 = swift_allocObject();
      v76 = v59;
      *(v59 + 16) = xmmword_100A3C3F0;
      v60 = v59 + v58;
      v61 = *(sub_10022C350(&qword_100CC8CE8) + 48);
      v72 = v55;
      v74 = *(v55 + 16);
      v74(v60, v51, v29);
      LOBYTE(v55) = v77 & 1;
      *(v60 + v61) = v77 & 1;
      type metadata accessor for LocationsAction();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      *(v60 + v57) = v55;
      type metadata accessor for LocationPreviewViewAction();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ModalViewAction();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for SearchViewAction();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ViewAction();
      swift_storeEnumTagMultiPayload();
      sub_100008A14();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_100008A14();
      v62 = v29;
      v71 = v29;
      v70 = v51;
      v77 = *(sub_10022C350(&qword_100CBBE20) + 48);
      sub_10022C350(&qword_100CA38B8);
      v63 = v74;
      v74(v60 + 4 * v57, v51, v62);
      type metadata accessor for SavedLocation();
      swift_storeEnumTagMultiPayload();
      v64 = type metadata accessor for LocationOfInterest();
      sub_10001B350(v78, 1, 1, v64);
      LocationModelData.init(locationOfInterest:isPredictedLocation:)();
      v65 = enum case for LocationModel.saved(_:);
      type metadata accessor for LocationModel();
      sub_1000037E8();
      (*(v66 + 104))(v60 + 4 * v57, v65);
      *(v60 + 4 * v57 + v77) = 0;
      type metadata accessor for ListViewAction();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_100008A14();
      v67 = v70;
      v68 = v71;
      v63(v60 + 5 * v57, v70, v71);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_100008A14();
      v86 = 0;
      memset(v85, 0, sizeof(v85));
      sub_10006D53C(v85, v81);
      v83 = v76;
      v84 = 0;
      sub_10004F1B0(v81, v80);
      sub_1000180EC(v81, &qword_100CA3510);
      sub_1000180EC(v85, &unk_100CD81B0);
      (*(v72 + 8))(v67, v68);
    }
  }
}

uint64_t sub_1005D0190()
{

  sub_100006F14(v0 + 64);
  return v0;
}

uint64_t sub_1005D01D4()
{
  sub_1005D0190();

  return swift_deallocClassInstance();
}

unint64_t sub_1005D022C()
{
  result = qword_100CC8CE0;
  if (!qword_100CC8CE0)
  {
    type metadata accessor for PreviewLocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8CE0);
  }

  return result;
}

uint64_t sub_1005D0284(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1005D02E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationPreviewViewState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005D0348(uint64_t a1)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = *(v1 + 16);
  type metadata accessor for LocationModel();
  sub_1000037E8();
  (*(v8 + 16))(v6, a1);
  type metadata accessor for LocationViewerViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  sub_1000062B8();
  sub_1000082D8();
  sub_10004F034(v6, v9, v7);
  sub_1000180EC(v11, &unk_100CD81B0);
  return sub_1000547B8(v6);
}

uint64_t sub_1005D0468()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = *(v0 + 16);
  type metadata accessor for LocationViewerViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  sub_1000062B8();
  sub_1000082D8();
  sub_10004F034(v4, v6, v5);
  sub_1000180EC(v8, &unk_100CD81B0);
  return sub_1000547B8(v4);
}

uint64_t sub_1005D056C()
{
  v1 = *(v0 + 16);
  sub_10022C350(&qword_100CA3508);
  type metadata accessor for MainAction();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100A2D320;
  type metadata accessor for SearchViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  sub_1000062B8();
  swift_storeEnumTagMultiPayload();
  sub_1000062B8();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_100035AD0(v7, v4, &unk_100CD81B0);
  v5 = v2;
  v6 = 0;
  sub_10004F1B0(v4, v1);
  sub_1000180EC(v4, &qword_100CA3510);
  return sub_1000180EC(v7, &unk_100CD81B0);
}

void sub_1005D0708(char a1)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = a1;
    }

    else
    {
      v7 = 3;
    }

    if (sub_1008CA570(v7))
    {
      v8 = *(v1 + 16);
      type metadata accessor for LocationViewerViewAction();
      sub_100003E0C();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ViewAction();
      sub_100003E0C();
      swift_storeEnumTagMultiPayload();
      sub_1000062B8();
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      sub_10004F034(v6, v9, v8);
      sub_1000180EC(v9, &unk_100CD81B0);
      sub_1000547B8(v6);
    }
  }
}

uint64_t sub_1005D080C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = *(v3 + 16);
  v12 = (v9 - v8 + *(sub_10022C350(&qword_100CB0A38) + 48));
  sub_100035AD0(a1, v10, &qword_100CA2CD8);
  *v12 = a2;
  v12[1] = a3;
  type metadata accessor for DebugAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v15 = 0;
  memset(v14, 0, sizeof(v14));

  sub_10004F034(v10, v14, v11);
  sub_1000180EC(v14, &unk_100CD81B0);
  return sub_1000547B8(v10);
}

uint64_t sub_1005D095C(void (*a1)(void))
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = *(v1 + 16);
  a1(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v6, v9, v7);
  sub_1000180EC(v9, &unk_100CD81B0);
  return sub_1000547B8(v6);
}

uint64_t sub_1005D0A58()
{
  sub_1005D1BA4(v0, &v8);
  type metadata accessor for MainActor();
  v1 = static MainActor.shared.getter();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = &protocol witness table for MainActor;
  v3 = v9;
  *(v2 + 32) = v8;
  *(v2 + 48) = v3;
  *(v2 + 64) = v10;
  *(v2 + 80) = v11;
  sub_1005D1BA4(v0, &v8);
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  v6 = v9;
  *(v5 + 32) = v8;
  *(v5 + 48) = v6;
  *(v5 + 64) = v10;
  *(v5 + 80) = v11;
  Binding.init(get:set:)();
  return v8;
}

uint64_t sub_1005D0B80@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for AveragesDetailViewModel();
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100989EF8();
  v5 = sub_100516D7C();
  result = sub_1005D4C58(v4, type metadata accessor for AveragesDetailViewModel);
  *a1 = v5 & 1;
  return result;
}

uint64_t sub_1005D0C30(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Location();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AveragesDetailViewModel();
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  sub_1000161C0((a4 + 16), *(a4 + 40));
  sub_100989EF8();
  sub_100516F00(v9);
  sub_1005D4C58(v12, type metadata accessor for AveragesDetailViewModel);
  sub_100639704(a1, v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1005D0D9C@<X0>(uint64_t a1@<X8>)
{
  sub_100989EF8();
  sub_1005D1BA4(v1, v13);
  v3 = swift_allocObject();
  v4 = v13[1];
  *(v3 + 16) = v13[0];
  *(v3 + 32) = v4;
  *(v3 + 48) = v13[2];
  *(v3 + 64) = v14;
  v5 = sub_10022C350(&qword_100CC8DA0);
  v6 = (a1 + *(v5 + 56));
  sub_10022C350(&qword_100CC8DA8);
  v7 = swift_allocObject();
  v8 = *(*v7 + 96);
  v9 = type metadata accessor for AveragesDetailViewModel();
  sub_10001B350(v7 + v8, 1, 1, v9);
  ObservationRegistrar.init()();
  result = State.init(wrappedValue:)();
  v11 = *(&v13[0] + 1);
  *v6 = *&v13[0];
  v6[1] = v11;
  v12 = (a1 + *(v5 + 52));
  *v12 = sub_1005D1BDC;
  v12[1] = v3;
  return result;
}

uint64_t sub_1005D0EF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for AveragesDetailViewModel();
  __chkstk_darwin(v6 - 8);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetailViewVisibilityTrackerModel();
  __chkstk_darwin(v9 - 8);
  v11 = &v26[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005D4BF8(a1, v8, type metadata accessor for AveragesDetailViewModel);
  sub_10051707C(v8, v11);
  v12 = a2[5];
  v13 = a2[6];
  v14 = sub_1000161C0(a2 + 2, v12);
  v26[3] = v12;
  v26[4] = *(v13 + 8);
  v15 = sub_100042FB0(v26);
  (*(*(v12 - 8) + 16))(v15, v14, v12);
  v16 = sub_100516CBC();
  v18 = v17;
  *a3 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0);
  swift_storeEnumTagMultiPayload();
  v19 = sub_10022C350(&qword_100CC8DB0);
  sub_1005D4BF8(v11, a3 + v19[9], type metadata accessor for DetailViewVisibilityTrackerModel);
  sub_100035B30(v26, a3 + v19[10]);
  v20 = (a3 + v19[11]);
  *v20 = v16;
  v20[1] = v18;
  v21 = (a3 + v19[12]);
  *v21 = 0xD000000000000019;
  v21[1] = 0x8000000100ACA850;
  *(a3 + v19[13]) = 0;
  v22 = (a3 + v19[14]);
  *v22 = 0;
  v22[1] = 0;
  *(a3 + v19[15]) = 1;
  v23 = a3 + v19[16];
  *v23 = static HorizontalAlignment.center.getter();
  *(v23 + 1) = 0;
  v23[16] = 1;
  sub_1005D116C(a1, a2);
  sub_1005D4C58(v11, type metadata accessor for DetailViewVisibilityTrackerModel);
  return sub_100006F14(v26);
}

uint64_t sub_1005D116C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AveragesDetailViewModel();
  __chkstk_darwin(v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1005D4BF8(a1, v6, type metadata accessor for AveragesDetailViewModel);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v7 = v6 + *(sub_10022C350(&qword_100CC3388) + 48);
      *&v26[0] = sub_1005D0A58();
      *(&v26[0] + 1) = v21;
      *&v26[1] = v20 & 1;
      *(&v26[1] + 1) = sub_1005D1818;
      *&v26[2] = 0;
      BYTE8(v26[2]) = 1;

      sub_10022C350(&qword_100CC8DF0);
      sub_10023FBF4(&qword_100CC8DE8, &qword_100CC8DF0);
      _ConditionalContent<>.init(storage:)();
      v32[73] = 0;
      sub_10022C350(&qword_100CC8DD8);
      sub_10022C350(&qword_100CC8DD0);
      sub_1005D4820();
      sub_1005D48D8();
      _ConditionalContent<>.init(storage:)();

      break;
    case 2u:
      v8 = *v6;
      v7 = v6 + *(sub_10022C350(&qword_100CC3380) + 48);
      v9 = sub_1005D0A58();
      v11 = v10;
      v13 = v12;
      sub_100035B30(a2 + 16, v31);
      v29[0] = v9;
      v29[1] = v11;
      v30 = v13 & 1;
      v31[5] = v8;
      sub_1005D4794(v29, v32);
      v32[72] = 1;
      sub_10022C350(&qword_100CC8DB8);
      sub_10023FBF4(&qword_100CC8DC0, &qword_100CC8DB8);
      sub_1005D47CC();
      _ConditionalContent<>.init(storage:)();
      sub_100035AD0(v26, v32, &qword_100CC8DD0);
      v32[73] = 1;
      sub_10022C350(&qword_100CC8DD8);
      sub_10022C350(&qword_100CC8DD0);
      sub_1005D4820();
      sub_1005D48D8();
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v26, &qword_100CC8DD0);
      sub_1005D4990(v29);
      break;
    case 3u:
      memcpy(v32, v6, 0x60uLL);
      v25 = v6 + *(sub_10022C350(&qword_100CC3378) + 64);
      v14 = sub_1005D0A58();
      v16 = v15;
      v18 = v17;
      v19 = swift_allocObject();
      memcpy((v19 + 16), v32, 0x60uLL);
      *&v26[0] = v14;
      *(&v26[0] + 1) = v16;
      LOBYTE(v26[1]) = v18 & 1;
      *(&v26[1] + 1) = sub_1005D49C0;
      *&v26[2] = v19;
      v27 = 0;

      sub_10022C350(&qword_100CC8DB8);
      sub_10023FBF4(&qword_100CC8DC0, &qword_100CC8DB8);
      sub_1005D47CC();
      _ConditionalContent<>.init(storage:)();
      sub_100035AD0(v29, v26, &qword_100CC8DD0);
      v28 = 1;
      sub_10022C350(&qword_100CC8DD8);
      sub_10022C350(&qword_100CC8DD0);
      sub_1005D4820();
      sub_1005D48D8();
      v7 = v25;
      _ConditionalContent<>.init(storage:)();

      sub_10003FDA0(v29, &qword_100CC8DD0);
      break;
    default:
      v7 = v6 + *(sub_10022C350(&qword_100CC3388) + 48);
      memset(v26, 0, 41);
      sub_10022C350(&qword_100CC8DF0);
      sub_10023FBF4(&qword_100CC8DE8, &qword_100CC8DF0);
      _ConditionalContent<>.init(storage:)();
      v32[73] = 0;
      sub_10022C350(&qword_100CC8DD8);
      sub_10022C350(&qword_100CC8DD0);
      sub_1005D4820();
      sub_1005D48D8();
      _ConditionalContent<>.init(storage:)();
      break;
  }

  v22 = type metadata accessor for Location();
  return (*(*(v22 - 8) + 8))(v7, v22);
}

uint64_t sub_1005D183C@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_1005D187C(a1, a2 + 24);
}

uint64_t sub_1005D187C@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  memcpy((v4 + 16), a1, 0x60uLL);
  __src[10] = sub_10071E894;
  __src[11] = 0;
  LOBYTE(__src[12]) = 0;
  __src[0] = sub_10022C350(&qword_100CA6F50);
  sub_1002B094C(a1, __dst);
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_100035AD0(&xmmword_100D8FB90, __dst, &unk_100CAF270);
  if (*&__dst[24])
  {
    sub_100013188(__dst, &__src[3]);
    __src[1] = sub_1002B08C4;
    __src[2] = v4;
    v6 = Dictionary.init(dictionaryLiteral:)();
    __src[8] = _swiftEmptyArrayStorage;
    __src[9] = v6;
    memcpy(__dst, __src, sizeof(__dst));
    sub_100035AD0(__dst, __src, &qword_100CA6E88);
    *a2 = 0;
    *(a2 + 8) = 1;
    sub_100035AD0(__src, a2 + 16, &qword_100CA6E88);
    *(a2 + 120) = 0;
    *(a2 + 128) = 1;
    *(a2 + 136) = 0;
    *(a2 + 144) = 1;
    sub_10003FDA0(__dst, &qword_100CA6E88);
    return sub_10003FDA0(__src, &qword_100CA6E88);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005D1A68@<X0>(_BYTE *a1@<X8>)
{
  sub_10022C350(&qword_100CC3388);
  *a1 = 0;
  static Location.current.getter();
  type metadata accessor for AveragesDetailViewModel();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1005D1AD0()
{
  sub_10022C350(&qword_100CC8E90);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_1005D1B30(uint64_t a1)
{
  result = sub_1005D4CB0(&qword_100CC8D98, type metadata accessor for AveragesDetailViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005D1BE4(uint64_t a1)
{
  sub_10022E824(&qword_100CB5B20);
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for VStack();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = *(a1 + 24);
  v16 = v3;
  v17 = v11;
  v18 = v1;
  j___s7SwiftUI19HorizontalAlignmentV6centerACvgZ();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_1000833D8(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_1005D1DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = v42[3];
  v23 = v44;
  v25 = v46;
  v24 = v47;
  v50 = 1;
  v49 = v43;
  v48 = v45;
  v14 = a3;
  v26 = a3;
  type metadata accessor for AveragesContentView();
  v15 = sub_1005D1AD0();
  v17 = v16;
  v19 = v18;
  (*(a1 + 24))();
  sub_1000833D8(v9, a2, v14);
  v20 = *(v7 + 8);
  v20(v9, a2);
  v34 = 0;
  v35 = v50;
  v36 = v13;
  v37 = v49;
  v38 = v23;
  v39 = v48;
  v40 = v25;
  v41 = v24;
  v32[0] = v15;
  v32[1] = v17;
  v33 = v19 & 1;
  v42[0] = &v34;
  v42[1] = v32;
  (*(v7 + 16))(v9, v12, a2);
  v42[2] = v9;

  v31[0] = sub_10022C350(&qword_100CB5B20);
  v31[1] = &type metadata for AveragesDetailPickerView;
  v31[2] = a2;
  v28 = sub_10014D3D8();
  v29 = sub_1005D4B7C();
  v30 = v26;
  sub_10012E24C(v42, 3, v31);

  v20(v12, a2);
  v20(v9, a2);
}

double sub_1005D2144@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v25 = type metadata accessor for SegmentedPickerStyle();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC8F40);
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = v24 - v16;
  v18 = LocalizedStringKey.init(stringLiteral:)();
  v24[0] = v19;
  v24[1] = v18;
  v30 = a1;
  v31 = a2;
  v32 = a3 & 1;
  sub_10022C350(&qword_100CC8E90);
  Binding.projectedValue.getter();
  v30 = v27;
  v31 = v28;
  v32 = v29;
  sub_10022C350(&qword_100CC8F48);
  sub_1005D4EC0();
  sub_1005D4F14();
  Picker<>.init(_:selection:content:)();
  SegmentedPickerStyle.init()();
  sub_10023FBF4(&qword_100CC8F60, &qword_100CC8F40);
  v20 = v25;
  v21 = v26;
  View.pickerStyle<A>(_:)();
  (*(v8 + 8))(v11, v20);
  (*(v14 + 8))(v17, v12);
  LOBYTE(v20) = static Edge.Set.horizontal.getter();
  v22 = v21 + *(sub_10022C350(&qword_100CC8F68) + 36);
  *v22 = v20;
  result = 0.0;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  *(v22 + 40) = 1;
  return result;
}

uint64_t sub_1005D2410()
{
  swift_getKeyPath();
  sub_10022C350(&qword_100CC8F70);
  sub_10023FBF4(&qword_100CC8F78, &qword_100CC8F70);
  sub_1005D4EC0();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1005D24FC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1009CD4F8(*a1);
  sub_10002D5A4();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1005D2564@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v14 = type metadata accessor for ScrollIndicatorVisibility();
  v2 = *(v14 - 8);
  __chkstk_darwin(v14);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CC8E98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  static Axis.Set.vertical.getter();
  v15 = v1;
  sub_10022C350(&qword_100CC8EA0);
  sub_10023FBF4(&qword_100CC8EA8, &qword_100CC8EA0);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.never.getter();
  sub_10022C350(&qword_100CB59A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v10 = static Axis.Set.vertical.getter();
  *(inited + 32) = v10;
  v11 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v11;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v10)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v11)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_10023FBF4(&qword_100CC8EB0, &qword_100CC8E98);
  View.scrollIndicators(_:axes:)();
  (*(v2 + 8))(v4, v14);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005D2850(uint64_t a1)
{
  sub_1005D4794(a1, __src);
  v1 = swift_allocObject();
  memcpy((v1 + 16), __src, 0x48uLL);
  sub_10022C350(&qword_100CC8EB8);
  sub_10022E824(&qword_100CC8EC0);
  sub_10023FBF4(&qword_100CC8EC8, &qword_100CC8EC0);
  swift_getOpaqueTypeConformance2();
  return ScrollEventStateReader.init(content:)();
}

uint64_t sub_1005D2978(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  __src[0] = *a2;
  __src[1] = v3;
  LOBYTE(__src[2]) = v4;
  sub_10022C350(&qword_100CC8E90);
  Binding.projectedValue.getter();
  sub_1005D4794(a2, __src);
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0x48uLL);
  ScrollEventState.isScrolling.getter();
  sub_1005D4794(a2, __src);
  v6 = swift_allocObject();
  memcpy((v6 + 16), __src, 0x48uLL);
  sub_10022C350(&qword_100CC8EC0);
  sub_10023FBF4(&qword_100CC8EC8, &qword_100CC8EC0);
  View.onChange<A>(of:initial:_:)();
}

uint64_t sub_1005D2B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100035B30(a1 + 24, a2);
  *(a2 + 40) = *(a1 + 64);
}

uint64_t sub_1005D2B84(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    sub_1000161C0((a3 + 24), *(a3 + 48));
    return sub_100639B28();
  }

  return result;
}

uint64_t sub_1005D2BC8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_10022C350(&qword_100CC8F80);
  __chkstk_darwin(v2);
  v4 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v5);
  v7 = &v35[-v6 - 8];
  v8 = v1[5];
  sub_100035B30(v1, &v38);
  if (v8 < 0)
  {
    v37 = v8 & 0x7FFFFFFFFFFFFFFFLL;
    sub_1005D4F90(&v37, v35);
    v36 = 1;
    sub_1005D4FEC();
    sub_1005D5040();

    _ConditionalContent<>.init(storage:)();
    sub_1005D5094(&v37);
  }

  else
  {
    v37 = v8;
    sub_1005D50E8(&v37, v35);
    v36 = 0;
    sub_1005D4FEC();
    sub_1005D5040();

    _ConditionalContent<>.init(storage:)();
    sub_1005D5144(&v37);
  }

  v9 = [objc_opt_self() mainBundle];
  v40._object = 0x8000000100AD6A00;
  v10._countAndFlagsBits = 0x736E6F6974704FLL;
  v11._object = 0x8000000100AD69E0;
  v40._countAndFlagsBits = 0xD000000000000051;
  v11._countAndFlagsBits = 0xD000000000000017;
  v10._object = 0xE700000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v9, v10, v40);

  v13 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v14 = v13[6];
  v15 = type metadata accessor for WeatherDescription();
  sub_10001B350(&v7[v14], 1, 1, v15);
  type metadata accessor for ConditionDetailDynamicContentIdentifier();
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(&v7[v13[8]], 1, 1, v16);
  *v7 = xmmword_100A66B00;
  v7[16] = 1;
  *(v7 + 24) = v12;
  v7[v13[9]] = 0;
  v7[v13[10]] = 0;
  v18 = v1[3];
  v17 = v1[4];
  v19 = sub_1000161C0(v1, v18);
  v20 = sub_10022C350(&qword_100CC8F98);
  v21 = &v7[v20[10]];
  v21[3] = v18;
  v21[4] = *(v17 + 8);
  v22 = sub_100042FB0(v21);
  (*(*(v18 - 8) + 16))(v22, v19, v18);
  v7[v20[9]] = 0;
  v23 = &v7[v20[11]];
  *v23 = sub_1005D30C0;
  v23[1] = 0;
  v24 = v20[12];
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&v7[v24] = sub_1004BA278();
  swift_endAccess();
  v25 = static Edge.Set.bottom.getter();
  swift_beginAccess();
  sub_1004BA570();
  swift_endAccess();
  EdgeInsets.init(_all:)();
  v26 = &v7[*(v2 + 36)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_100035AD0(v39, v35, &qword_100CC8FA0);
  sub_100035AD0(v7, v4, &qword_100CC8F80);
  v31 = v34;
  sub_100035AD0(v35, v34, &qword_100CC8FA0);
  v32 = sub_10022C350(&qword_100CC8FA8);
  sub_100035AD0(v4, v31 + *(v32 + 48), &qword_100CC8F80);
  sub_10003FDA0(v7, &qword_100CC8F80);
  sub_10003FDA0(v39, &qword_100CC8FA0);
  sub_10003FDA0(v4, &qword_100CC8F80);
  return sub_10003FDA0(v35, &qword_100CC8FA0);
}

uint64_t sub_1005D30C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CB19E8);
  *(a1 + 80) = sub_10071E948;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *a1 = v2;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_100035AD0(&xmmword_100D8FB90, &v4, &unk_100CAF270);
  if (v5)
  {
    sub_100013188(&v4, a1 + 24);
    *(a1 + 8) = sub_1005D31D8;
    *(a1 + 16) = 0;
    result = Dictionary.init(dictionaryLiteral:)();
    *(a1 + 64) = _swiftEmptyArrayStorage;
    *(a1 + 72) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1005D3210(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v3 = type metadata accessor for ConditionDetailLegend(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = _swiftEmptyArrayStorage;
  sub_1006A8144();
  v7 = v23;
  v8 = objc_opt_self();
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = v9;
    v22 = v10;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v15 = *(v3 + 24);

    v16 = [v8 quaternaryLabelColor];
    *(v6 + v15) = Color.init(uiColor:)();
    type metadata accessor for ConditionDetailLegendForeground(0);
    swift_storeEnumTagMultiPayload();
    *v6 = v12;
    v6[1] = v14;
    v6[2] = v21;
    v6[3] = a2;
    v17 = (v6 + *(v3 + 28));
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    v23 = v7;
    v18 = v7[2];
    if (v18 >= v7[3] >> 1)
    {
      sub_1006A8144();
      v7 = v23;
    }

    v7[2] = v18 + 1;
    sub_1005D4CF8(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18);
    v9 = 1;
    v10 = 1;
  }

  while ((v11 & 1) == 0);
  return v7;
}

uint64_t sub_1005D3404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollIndicatorVisibility();
  v17 = *(v4 - 8);
  v18 = v4;
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CC8ED0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  static Axis.Set.vertical.getter();
  v19 = a1;
  v20 = a2;
  sub_10022C350(&qword_100CC8ED8);
  v11 = sub_10022E824(&qword_100CC8EE0);
  v12 = sub_10023FBF4(&qword_100CC8EE8, &qword_100CC8EE0);
  v21 = v11;
  v22 = v12;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.never.getter();
  sub_10022C350(&qword_100CB59A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v14 = static Axis.Set.vertical.getter();
  *(inited + 32) = v14;
  v15 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v15;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v14)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v15)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_10023FBF4(&qword_100CC8EF0, &qword_100CC8ED0);
  View.scrollIndicators(_:axes:)();
  (*(v17 + 8))(v6, v18);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1005D3730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedactionReasons();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CC8EE0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = sub_10022C350(&qword_100CC8EF8);
  sub_1005D38F4(a1, a2, &v10[*(v11 + 44)]);
  static RedactionReasons.placeholder.getter();
  sub_10023FBF4(&qword_100CC8EE8, &qword_100CC8EE0);
  View.redacted(reason:)();
  (*(v5 + 8))(v7, v4);
  return sub_10003FDA0(v10, &qword_100CC8EE0);
}

uint64_t sub_1005D38F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v122 = a2;
  v123 = a1;
  v115 = a3;
  v113 = sub_10022C350(&qword_100CBAB80);
  __chkstk_darwin(v113);
  v116 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v114 = &v98 - v5;
  v106 = type metadata accessor for CircularProgressViewStyle();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10022C350(&qword_100CAD1A8);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v98 - v7;
  v99 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v99);
  v100 = (&v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = sub_10022C350(&qword_100CC8F00);
  __chkstk_darwin(v107);
  v112 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v111 = &v98 - v11;
  v98 = sub_10022C350(&unk_100CE1680);
  __chkstk_darwin(v98);
  v13 = &v98 - v12;
  v121 = type metadata accessor for TimeZone();
  v14 = *(v121 - 8);
  __chkstk_darwin(v121);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Date();
  v17 = *(v120 - 8);
  __chkstk_darwin(v120);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DetailHeroChartHeaderView();
  v117 = v20;
  __chkstk_darwin(v20);
  v22 = (&v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = sub_10022C350(&qword_100CC8F08);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v124 = &v98 - v25;
  v26 = [objc_opt_self() mainBundle];
  v131._object = 0x8000000100AD6970;
  v27._countAndFlagsBits = 0x76412065766F6241;
  v27._object = 0xED00006567617265;
  v28._object = 0x8000000100AD6940;
  v131._countAndFlagsBits = 0xD000000000000060;
  v28._countAndFlagsBits = 0xD000000000000025;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v26, v27, v131);
  countAndFlagsBits = v29._countAndFlagsBits;
  object = v29._object;

  v30 = (v22 + *(v20 + 20));
  v31 = v122;
  swift_bridgeObjectRetain_n();
  static WeatherClock.date.getter();
  static TimeZone.current.getter();
  v32 = Date.formattedShortMonthAndDay(timeZone:)();
  v34 = v33;
  v35 = v16;
  v36 = v123;
  (*(v14 + 8))(v35, v121);
  (*(v17 + 8))(v19, v120);
  v37 = type metadata accessor for TitleAndDetailLollipopDetailViewModel(0);
  AttributedString.init(stringLiteral:)();
  *v30 = v32;
  v30[1] = v34;
  *(v30 + v37[6]) = xmmword_100A3A770;
  v38 = (v30 + v37[7]);
  *v38 = 0;
  v38[1] = 0xE000000000000000;
  v39 = (v30 + v37[8]);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v30 + v37[9]);
  *v40 = 8224;
  v40[1] = 0xE200000000000000;
  *(v30 + v37[10]) = xmmword_100A3A770;
  *(v30 + v37[11]) = 0;
  type metadata accessor for LollipopDetailViewModel(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DetailHeroChartLollipopModel(0);
  swift_storeEnumTagMultiPayload();
  v41 = object;
  *v22 = countAndFlagsBits;
  v22[1] = v41;
  v22[2] = 0;
  v22[3] = 0xE000000000000000;
  v22[4] = v36;
  v22[5] = v31;
  v22[6] = v36;
  v22[7] = v31;
  *&v128 = 0x3FF0000000000000;
  sub_10014AB54();
  ScaledMetric.init(wrappedValue:)();
  v42 = enum case for DynamicTypeSize.accessibility1(_:);
  v43 = type metadata accessor for DynamicTypeSize();
  (*(*(v43 - 8) + 104))(v13, v42, v43);
  sub_1005D4CB0(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    sub_1005D4CB0(&qword_100CC8F10, type metadata accessor for DetailHeroChartHeaderView);
    sub_10023FBF4(&qword_100CA53C8, &unk_100CE1680);
    View.dynamicTypeSize<A>(_:)();
    sub_10003FDA0(v13, &unk_100CE1680);
    sub_1005D4C58(v22, type metadata accessor for DetailHeroChartHeaderView);
    if (qword_100CA2198 == -1)
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
  swift_beginAccess();
  v44 = sub_1004B5F4C();
  v45 = *(v99 + 20);
  v46 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = type metadata accessor for RoundedCornerStyle();
  v48 = v100;
  (*(*(v47 - 8) + 104))(v100 + v45, v46, v47);
  *v48 = v44;
  v48[1] = v44;
  v49 = sub_1004B5F70();
  swift_endAccess();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v50 = v111;
  sub_1005D4BF8(v48, v111, &type metadata accessor for RoundedRectangle);
  v51 = v50 + *(sub_10022C350(&qword_100CBACF8) + 36);
  v52 = v126;
  *v51 = v125;
  *(v51 + 16) = v52;
  *(v51 + 32) = v127;
  v53 = sub_10022C350(&qword_100CBAD00);
  *(v50 + *(v53 + 52)) = v49;
  *(v50 + *(v53 + 56)) = 256;
  v54 = static Alignment.center.getter();
  v56 = v55;
  sub_1005D4C58(v48, &type metadata accessor for RoundedRectangle);
  v57 = (v50 + *(sub_10022C350(&qword_100CBAD08) + 36));
  *v57 = v54;
  v57[1] = v56;
  sub_1004B5F28();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v58 = (v50 + *(sub_10022C350(&qword_100CC8F18) + 36));
  v59 = v129;
  *v58 = v128;
  v58[1] = v59;
  v58[2] = v130;
  v60 = static Alignment.center.getter();
  v62 = v61;
  v63 = v50 + *(sub_10022C350(&qword_100CC8F20) + 36);
  v64 = v101;
  ProgressView<>.init<>()();
  v65 = v104;
  CircularProgressViewStyle.init()();
  sub_10023FBF4(&qword_100CAD270, &qword_100CAD1A8);
  sub_1005D4CB0(&qword_100CC8F28, &type metadata accessor for CircularProgressViewStyle);
  v66 = v103;
  v67 = v106;
  View.progressViewStyle<A>(_:)();
  (*(v105 + 8))(v65, v67);
  (*(v102 + 8))(v64, v66);
  v68 = (v63 + *(sub_10022C350(&qword_100CC8F30) + 36));
  *v68 = v60;
  v68[1] = v62;
  v69 = static Edge.Set.horizontal.getter();
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004BA278();
  swift_endAccess();
  EdgeInsets.init(_all:)();
  v70 = v50 + *(v107 + 36);
  *v70 = v69;
  *(v70 + 8) = v71;
  *(v70 + 16) = v72;
  *(v70 + 24) = v73;
  *(v70 + 32) = v74;
  *(v70 + 40) = 0;
  v75 = sub_1005D3210(v123, v31);
  type metadata accessor for ConditionDetailLegendView(0);
  v76 = v114;
  Text.Measurements.init()();
  *v76 = v75;
  *(v76 + 8) = 0;
  *(v76 + 16) = 0xE000000000000000;
  *(v76 + 24) = 1;
  swift_beginAccess();
  sub_1004B5FD8();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  swift_endAccess();
  v85 = static Edge.Set.all.getter();
  v86 = v76 + *(v113 + 36);
  *v86 = v85;
  *(v86 + 8) = v78;
  *(v86 + 16) = v80;
  *(v86 + 24) = v82;
  *(v86 + 32) = v84;
  *(v86 + 40) = 0;
  v87 = v109;
  v88 = *(v109 + 16);
  v89 = v108;
  v90 = v110;
  v88(v108, v124, v110);
  v91 = v112;
  sub_1001FCC18(v50, v112);
  v92 = v116;
  sub_100035AD0(v76, v116, &qword_100CBAB80);
  v93 = v115;
  v88(v115, v89, v90);
  v94 = sub_10022C350(&qword_100CC8F38);
  sub_1001FCC18(v91, &v93[v94[12]]);
  sub_100035AD0(v92, &v93[v94[16]], &qword_100CBAB80);
  v95 = &v93[v94[20]];
  *v95 = 0;
  v95[8] = 1;
  *(v95 + 2) = 0x3FF0000000000000;
  sub_10003FDA0(v76, &qword_100CBAB80);
  sub_10003FDA0(v50, &qword_100CC8F00);
  v96 = *(v87 + 8);
  v96(v124, v90);
  sub_10003FDA0(v92, &qword_100CBAB80);
  sub_10003FDA0(v91, &qword_100CC8F00);
  return (v96)(v89, v90);
}

unint64_t sub_1005D47CC()
{
  result = qword_100CC8DC8;
  if (!qword_100CC8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8DC8);
  }

  return result;
}

unint64_t sub_1005D4820()
{
  result = qword_100CC8DE0;
  if (!qword_100CC8DE0)
  {
    sub_10022E824(&qword_100CC8DD8);
    sub_10023FBF4(&qword_100CC8DE8, &unk_100CC8DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8DE0);
  }

  return result;
}

unint64_t sub_1005D48D8()
{
  result = qword_100CC8DF8[0];
  if (!qword_100CC8DF8[0])
  {
    sub_10022E824(&qword_100CC8DD0);
    sub_10023FBF4(&qword_100CC8DC0, &unk_100CC8DB8);
    sub_1005D47CC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CC8DF8);
  }

  return result;
}

uint64_t sub_1005D49C8()
{

  return swift_deallocObject();
}

uint64_t sub_1005D4A2C()
{
  swift_unknownObjectRelease();

  sub_100006F14(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1005D4AA0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1005D4B7C()
{
  result = qword_100CC8E88;
  if (!qword_100CC8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8E88);
  }

  return result;
}

uint64_t sub_1005D4BF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1005D4C58(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1005D4CB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005D4CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailLegend(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005D4D5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1005D4D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005D4DFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = sub_100003A24(a1, a2);
  sub_10022E824(v6);
  sub_10023FBF4(a4, a2);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1005D4EC0()
{
  result = qword_100CC8F50;
  if (!qword_100CC8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8F50);
  }

  return result;
}

unint64_t sub_1005D4F14()
{
  result = qword_100CC8F58;
  if (!qword_100CC8F58)
  {
    sub_10022E824(&qword_100CC8F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8F58);
  }

  return result;
}

unint64_t sub_1005D4FEC()
{
  result = qword_100CC8F88;
  if (!qword_100CC8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8F88);
  }

  return result;
}

unint64_t sub_1005D5040()
{
  result = qword_100CC8F90;
  if (!qword_100CC8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8F90);
  }

  return result;
}

unint64_t sub_1005D5198()
{
  result = qword_100CC8FB0;
  if (!qword_100CC8FB0)
  {
    sub_10022E824(&qword_100CC8F68);
    sub_10022E824(&qword_100CC8F40);
    type metadata accessor for SegmentedPickerStyle();
    sub_10023FBF4(&qword_100CC8F60, &qword_100CC8F40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC8FB0);
  }

  return result;
}

uint64_t sub_1005D530C(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA22E0 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA22F0 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA22E8 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA22D8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA22D0 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_1005D5478(char a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v79 = &v74 - v10;
  v11 = sub_10022C350(&qword_100CA5008);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v74 - v13;
  v15 = type metadata accessor for LocationComponentViewModel();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  __chkstk_darwin(v24);
  v26 = &v74 - v25;
  v27 = sub_10022C350(&qword_100CAC7F8);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  v32 = &v74 - v31;
  __chkstk_darwin(v33);
  v35 = &v74 - v34;
  v36 = sub_1005D530C(a1, a2);
  v37 = OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v37, v14, &qword_100CA5008);
  v38 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v14, 1, v38) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v39], v23, v40);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v23, v26, v41);
    sub_100566A5C(v36, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v26, v32, v43);
      v42 = 0;
      v44 = &v32[*(v6 + 20)];
      v45 = v82[1];
      *v44 = v82[0];
      *(v44 + 1) = v45;
      goto LABEL_7;
    }

    sub_1003169AC(v26, type metadata accessor for LocationComponentViewModel);
  }

  v42 = 1;
LABEL_7:
  v46 = v76;
  sub_10001B350(v32, v42, 1, v6);
  sub_1003168DC(v32, v35);
  sub_10001B350(v46, 1, 1, v6);
  sub_10001BD64();
  sub_10031694C(v47 + v48, v20, v49);
  sub_100566A94(v36, v84);
  v50 = v77;
  if (v85 & 1) != 0 || (sub_100011474(), v51 = v79, sub_1001B6FB0(v20, v79, v52), v53 = (v51 + *(v6 + 20)), v54 = v84[1], *v53 = v84[0], v53[1] = v54, sub_100035AD0(v35, v50, &qword_100CAC7F8), sub_10001BD64(), v57 = v75, sub_10031694C(v55 + v56, v75, v58), sub_100566AB0(v36, v86), v59 = v80, (v87))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v57, v59, v60);
    v61 = (v59 + *(v6 + 20));
    v62 = v86[1];
    *v61 = v86[0];
    v61[1] = v62;
    sub_10001BD64();
    v65 = v78;
    sub_10031694C(v63 + v64, v78, v66);
    sub_100566AE8(v36, v88);
    if ((v89 & 1) == 0)
    {

      sub_100011474();
      v67 = v65;
      v68 = v81;
      sub_1001B6FB0(v67, v81, v69);
      v70 = (v68 + *(v6 + 20));
      v71 = v88[1];
      *v70 = v88[0];
      v70[1] = v71;
      v72 = sub_100924C14(v46, v51, v50, v59, v68);
      sub_1000180EC(v35, &qword_100CAC7F8);
      return v72;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005D5A88(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v131 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_map;
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
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_nextHourPrecipitation);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_newsArticle);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v30 = sub_100013600();
    sub_100003E18(v30);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
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
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_nextHourPrecipitation);
    *(v12 + 56) = sub_1001B38A0(v75);
    *(v12 + 64) = v81;
    *(v12 + 72) = v82;
    sub_1000167B0();
    v83 = swift_allocObject();
    sub_1000056EC(v83);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_newsArticle);
    *(v12 + 80) = sub_1001B38A0(v75);
    *(v12 + 88) = v84;
    *(v12 + 96) = v85;
    sub_1000167B0();
    v86 = swift_allocObject();
    sub_1000056EC(v86);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 104) = sub_1001B38A0(v75);
    *(v12 + 112) = v87;
    *(v12 + 120) = v88;
    sub_1000167B0();
    v89 = swift_allocObject();
    sub_1000056EC(v89);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
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

void sub_1005D6360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A2C3F0;
  v23[1] = xmmword_100A3BB90;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A63E10;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BBB0;
  v21[1] = xmmword_100A3BBC0;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3BC40;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A2C3F0;
  v19[1] = xmmword_100A3BBC0;
  v18[0] = xmmword_100A3BB70;
  v18[1] = xmmword_100A3BBE0;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BBB0;
  v17[1] = xmmword_100A3BB90;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3BBD0;
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
  sub_100017B54(a2, a3, a4, a5, a6, a7, a8, &v9, 0, 1, 10, 11, 0, 1, 12, 13, 0, 1, 9, 10);
  qword_100D904F0 = v8;
}

void sub_1005D6488()
{
  v15[0] = xmmword_100A2C3F0;
  v15[1] = xmmword_100A3BBC0;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A63E10;
  v16 = v15;
  v17 = v14;
  v13[0] = xmmword_100A3BBB0;
  v13[1] = xmmword_100A3BC10;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BC40;
  v18 = v13;
  v19 = v12;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC10;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BBC0;
  v20 = v11;
  v21 = v10;
  v9[0] = xmmword_100A3BB70;
  v9[1] = xmmword_100A3BBD0;
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
  sub_10055B290();
  qword_100D904F8 = v0;
}

void sub_1005D65AC()
{
  v46[0] = xmmword_100A3BC40;
  v46[1] = xmmword_100A3BC30;
  v45[0] = xmmword_100A3BB70;
  v45[1] = xmmword_100A3BBA0;
  v47 = v46;
  v48 = v45;
  v44[0] = xmmword_100A3BBD0;
  v44[1] = xmmword_100A3BB80;
  v42[0] = 0;
  v42[1] = 4;
  v43 = xmmword_100A3BBD0;
  v49 = v44;
  v50 = v42;
  v41[0] = xmmword_100A3BBB0;
  v41[1] = xmmword_100A3BC30;
  v38 = 2;
  v39 = xmmword_100A3F980;
  v40 = 2;
  v51 = v41;
  v52 = &v38;
  v37[0] = xmmword_100A3BB70;
  v37[1] = xmmword_100A3BB80;
  v35[0] = 2;
  v35[1] = 4;
  v36 = xmmword_100A3BC40;
  v53 = v37;
  v54 = v35;
  v34[0] = xmmword_100A3BB70;
  v34[1] = xmmword_100A2C3F0;
  *(&v32 + 1) = 3;
  v33 = xmmword_100A3BC30;
  sub_10003C654(v34, v18, v19, v20, v21, v22[0], v22[1], v22[2], v22[3], v23[0], v23[1], v23[2], v23[3], v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29, v30, v31, 2);
  v26 = v0;
  v27 = v1;
  v55 = v2;
  v56 = &v26;
  v24 = v3;
  v25 = xmmword_100A3BC50;
  v57 = &v24;
  v58 = v23;
  sub_100017B54(v4, v5, v6, v7, v8, v9, v10, v22, 2, 4, 4, 5, v15, v16, v11, v12, v13, v14, 5, 6);
  qword_100D90500 = v17;
}

void sub_1005D66E4()
{
  v17[0] = xmmword_100A3BC40;
  v17[1] = xmmword_100A3BB80;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3AEB0;
  v18 = v17;
  v19 = v16;
  v15[0] = xmmword_100A3BBD0;
  v15[1] = xmmword_100A3BC50;
  v12 = 0;
  v13 = xmmword_100A3BC70;
  v14 = 2;
  v20 = v15;
  v21 = &v12;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BB80;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A3BC50;
  v22 = v11;
  v23 = v10;
  v9[0] = xmmword_100A2D320;
  v9[1] = xmmword_100A3BBD0;
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
  sub_10055B290();
  qword_100D90508 = v0;
}

void sub_1005D6818()
{
  v40[0] = xmmword_100A3BC50;
  v40[1] = xmmword_100A3BC60;
  v39[0] = xmmword_100A3BB70;
  v39[1] = xmmword_100A3AEB0;
  v41 = v40;
  v42 = v39;
  v38[0] = xmmword_100A3BC60;
  v38[1] = xmmword_100A3BC40;
  v37[0] = xmmword_100A3BC80;
  v37[1] = xmmword_100A2C3F0;
  v43 = v38;
  v44 = v37;
  v36[0] = xmmword_100A3BC50;
  v36[1] = xmmword_100A3BC40;
  v35[0] = xmmword_100A3BC90;
  v35[1] = xmmword_100A3BB70;
  v45 = v36;
  v46 = v35;
  v34[0] = xmmword_100A3BBD0;
  v34[1] = xmmword_100A3BC60;
  v33[0] = xmmword_100A2D320;
  v33[1] = xmmword_100A3BBD0;
  v47 = v34;
  v48 = v33;
  v32[0] = xmmword_100A2D320;
  v32[1] = xmmword_100A3BBB0;
  *(&v30 + 1) = 5;
  v31 = xmmword_100A3BC60;
  sub_10003C654(v32, v16, v17, v18, v19, v20[0], v20[1], v20[2], v20[3], v21[0], v21[1], v21[2], v21[3], v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, v27, v28, v29, 4);
  v24 = v0;
  v25 = v1;
  v49 = v2;
  v50 = &v24;
  v22 = v3;
  v23 = v3;
  v51 = &v22;
  v52 = v21;
  sub_100017B54(v4, v5, v6, v7, v8, v9, v10, v20, v11, v12, v13, v14, v3, *(&v3 + 1), v11, v12, v13, v14, v3, *(&v3 + 1));
  qword_100D90510 = v15;
}

uint64_t sub_1005D692C(uint64_t a1, void (*a2)(char *))
{
  v36 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100003848();
  v39 = v5;
  __chkstk_darwin(v6);
  sub_100003878();
  v38 = v7;
  __chkstk_darwin(v8);
  sub_100003878();
  v37 = v9;
  __chkstk_darwin(v10);
  v12 = v35 - v11;
  __chkstk_darwin(v13);
  v15 = v35 - v14;
  __chkstk_darwin(v16);
  v18 = v35 - v17;
  v19 = type metadata accessor for LocationViewComponent();
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CA5008);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  v26 = v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v35 - v28;

  sub_1005D71C4(v30, a2);
  v35[1] = v31;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather39LocationNoAqiSevereNhpNewsConfiguration8_Storage_map, v22, type metadata accessor for LocationViewComponent);
  a2(v22);
  sub_100020648();
  sub_10001B350(v29, 0, 1, v36);
  sub_1000176E8(OBJC_IVAR____TtCV7Weather39LocationNoAqiSevereNhpNewsConfiguration8_Storage_newsArticle);
  a2(v22);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather39LocationNoAqiSevereNhpNewsConfiguration8_Storage_nextHourPrecipitation);
  a2(v22);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather39LocationNoAqiSevereNhpNewsConfiguration8_Storage_severeAlert);
  a2(v22);
  sub_100020648();
  sub_100035AD0(v29, v26, &qword_100CA5008);
  sub_10031694C(v18, v37, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v15, v38, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v12, v39, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for NoAqiSevereNhpNewsContent._Storage(0);
  swift_allocObject();
  sub_1002D4644();
  v33 = v32;
  sub_1003169AC(v12, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v15, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v18, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v29, &qword_100CA5008);
  return v33;
}

uint64_t sub_1005D6CCC(void *a1)
{
  v3 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v5 = v4;
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtCV7Weather25LocationViewerPageControl11Coordinator_pages;
  v11 = *(*(v1 + OBJC_IVAR____TtCV7Weather25LocationViewerPageControl11Coordinator_pages) + 16);
  result = [a1 currentPage];
  if (result < 0 || result >= v11)
  {
    return result;
  }

  result = [a1 currentPage];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = *(v1 + v10);
  if (result >= *(v13 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v9, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * result, v3);
  v14 = [a1 interactionState];
  if (v14 != 2)
  {
    v14 = static Animation.default.getter();
  }

  __chkstk_darwin(v14);
  *&v15[-16] = v1;
  *&v15[-8] = v9;
  withAnimation<A>(_:_:)();

  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_1005D6EA0(uint64_t a1)
{
  v2 = type metadata accessor for Location.Identifier();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CC9118);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtCV7Weather25LocationViewerPageControl11Coordinator_selection;
  swift_beginAccess();
  sub_1005D712C(a1 + v6, v5);
  LocationModel.identifier.getter();
  Binding.wrappedValue.setter();
  return sub_1000180EC(v5, &qword_100CC9118);
}

uint64_t sub_1005D7034()
{
  sub_1000180EC(v0 + OBJC_IVAR____TtCV7Weather25LocationViewerPageControl11Coordinator_selection, &qword_100CC9118);

  return swift_deallocClassInstance();
}

void sub_1005D70CC()
{
  sub_10012E5EC(&qword_100CC91C8);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1005D712C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC9118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1005D71C4(uint64_t a1, void (*a2)(char *))
{
  v3 = type metadata accessor for LocationViewComponent();
  __chkstk_darwin(v3 - 8);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v6 - 8);
  v27[7] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_100003878();
  v27[6] = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  sub_100003878();
  v27[5] = v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  sub_100003878();
  v27[4] = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v27[9] = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  sub_100003878();
  v27[8] = v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  v27[1] = v27 - v19;
  __chkstk_darwin(v20);
  v27[2] = v27 - v21;
  __chkstk_darwin(v22);
  v27[3] = v27 - v23;
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  sub_10001F270(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_hourlyForecast);
  a2(v5);
  sub_1001AC2E8(v5);
  sub_10001F270(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_dailyForecast);
  a2(v5);
  sub_1001AC2E8(v5);
  sub_10001F270(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_uvIndex);
  a2(v5);
  sub_1001AC2E8(v5);
  sub_10001F270(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_sunriseSunset);
  a2(v5);
  sub_1001AC2E8(v5);
  sub_10001F270(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_wind);
  a2(v5);
  sub_1001AC2E8(v5);
  sub_10001F270(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_precipitationTotal);
  a2(v5);
  sub_1001AC2E8(v5);
  sub_10001F270(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_feelsLike);
  a2(v5);
  sub_1001AC2E8(v5);
  sub_10001F270(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_humidity);
  a2(v5);
  sub_1001AC2E8(v5);
  sub_10001F270(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_visibility);
  a2(v5);
  sub_1001AC2E8(v5);
  sub_10001F270(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_pressure);
  a2(v5);
  sub_1001AC2E8(v5);
  sub_10001F270(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_averages);
  a2(v5);
  sub_1001AC2E8(v5);
  sub_10001F270(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_moon);
  a2(v5);
  sub_1001AC2E8(v5);
  type metadata accessor for LocationCommonViewComponents._Storage(0);
  swift_allocObject();
  sub_1002C18FC();
}

uint64_t sub_1005D7628(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x8000000100AD6C40 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000100AD6C60 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5364657265746E65 && a2 == 0xEF73676E69747465;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000100AD6C80 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000022 && 0x8000000100AD6CA0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001ALL && 0x8000000100AD6CD0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001ELL && 0x8000000100AD6CF0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x8000000100AD6D10 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x8000000100AD6D30 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001ELL && 0x8000000100AD6D50 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000019 && 0x8000000100AD6D70 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001CLL && 0x8000000100AD6D90 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001BLL && 0x8000000100AD6DB0 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001FLL && 0x8000000100AD6DD0 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000014 && 0x8000000100AC0090 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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