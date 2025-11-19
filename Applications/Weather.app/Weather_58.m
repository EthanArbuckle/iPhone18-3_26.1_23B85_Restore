unint64_t sub_1006442F4()
{
  result = qword_100CCDCF8;
  if (!qword_100CCDCF8)
  {
    sub_10022E824(&qword_100CCDD00);
    type metadata accessor for ChartPointMarkSeries();
    sub_1006446D8(&qword_100CCDD08, &type metadata accessor for ChartPointMarkSeries);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDCF8);
  }

  return result;
}

unint64_t sub_1006443D8()
{
  result = qword_100CCDD18;
  if (!qword_100CCDD18)
  {
    sub_10022E824(&qword_100CCDD10);
    sub_10022E824(&qword_100CCDD20);
    sub_100644498();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDD18);
  }

  return result;
}

unint64_t sub_100644498()
{
  result = qword_100CCDD28;
  if (!qword_100CCDD28)
  {
    sub_10022E824(&qword_100CCDD20);
    sub_10022E824(&qword_100CCDD30);
    sub_10022E824(&qword_100CCDD38);
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDD28);
  }

  return result;
}

unint64_t sub_1006445F4()
{
  result = qword_100CCDD60;
  if (!qword_100CCDD60)
  {
    sub_10022E824(&qword_100CCDD58);
    type metadata accessor for ChartAreaSeries();
    sub_1006446D8(&qword_100CCDD68, &type metadata accessor for ChartAreaSeries);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDD60);
  }

  return result;
}

uint64_t sub_1006446D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100644720()
{
  result = qword_100CCDD88;
  if (!qword_100CCDD88)
  {
    sub_10022E824(&qword_100CCDD80);
    sub_1006447A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDD88);
  }

  return result;
}

unint64_t sub_1006447A4()
{
  result = qword_100CCDD90;
  if (!qword_100CCDD90)
  {
    sub_10022E824(&qword_100CCDD98);
    sub_1006445F4();
    sub_1006446D8(&qword_100CCDD70, &type metadata accessor for ChartLineMark);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDD90);
  }

  return result;
}

Swift::Int sub_10064487C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  LocationSessionTrigger.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t sub_1006448D4()
{
  result = qword_100CCDDA0;
  if (!qword_100CCDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDDA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100644A74(uint64_t a1)
{
  type metadata accessor for AppConfiguration();
  sub_10000548C();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v1);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v4 + 32))(v10 + v9, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1);

  asyncMain(block:)();
}

uint64_t sub_100644BD4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MainAction();
  __chkstk_darwin(v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 16);

    v8 = type metadata accessor for AppConfiguration();
    (*(*(v8 - 8) + 16))(v5, a2, v8);
    swift_storeEnumTagMultiPayload();
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_10004F034(v5, v9, v7);

    sub_1000E17D8(v9);
    return sub_1000547B8(v5);
  }

  return result;
}

uint64_t sub_100644D1C()
{
  v1 = *(type metadata accessor for AppConfiguration() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100644BD4(v2, v3);
}

_BYTE *storeEnumTagSinglePayload for TimeAction(_BYTE *result, int a2, int a3)
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

unint64_t sub_100644E30()
{
  result = qword_100CCDE68;
  if (!qword_100CCDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCDE68);
  }

  return result;
}

uint64_t sub_100644E84(uint64_t a1)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for SelectedSearchResult();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = (v9 - v8);
  v11 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Location();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_1000037D8();
  v18 = v17 - v16;
  v19 = type metadata accessor for SearchLocation();
  sub_100645544(a1 + *(v19 + 32), v13);
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_1000180EC(v13, &qword_100CA65D8);
    v20 = *(v1 + 16);
    sub_1006455B4(a1, v6, type metadata accessor for SearchLocation);
    type metadata accessor for SearchViewAction();
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction();
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_10004F034(v6, &v28, v20);
    sub_1000180EC(&v28, &unk_100CD81B0);
    sub_10001F3B4();
    return sub_10004F9E8(v6, v21);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    *v10 = v23;
    v10[1] = v24;
    swift_storeEnumTagMultiPayload();
    v25 = *(v1 + 16);
    v26 = *(sub_10022C350(&qword_100CC7D10) + 48);
    (*(v15 + 16))(v6, v18, v14);
    sub_1006455B4(v10, v6 + v26, type metadata accessor for SelectedSearchResult);
    type metadata accessor for SearchViewAction();
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction();
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v30 = 0;
    v28 = 0u;
    v29 = 0u;

    sub_10004F034(v6, &v28, v25);
    sub_1000180EC(&v28, &unk_100CD81B0);
    sub_10001F3B4();
    sub_10004F9E8(v6, v27);
    sub_10004F9E8(v10, type metadata accessor for SelectedSearchResult);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_100645238(uint64_t a1)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = *(v1 + 16);
  type metadata accessor for LocationOfInterest();
  sub_1000037E8();
  (*(v8 + 16))(v6, a1);
  type metadata accessor for SearchViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_10004F034(v6, v11, v7);
  sub_1000180EC(v11, &unk_100CD81B0);
  sub_10001F3B4();
  return sub_10004F9E8(v6, v9);
}

uint64_t sub_100645360()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = *(v0 + 16);
  type metadata accessor for SearchViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10004F034(v4, v8, v5);
  sub_1000180EC(v8, &unk_100CD81B0);
  sub_10001F3B4();
  return sub_10004F9E8(v4, v6);
}

uint64_t sub_100645450()
{

  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 72);
  return v0;
}

uint64_t sub_100645480()
{
  sub_100645450();

  return swift_deallocClassInstance();
}

uint64_t sub_100645544(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006455B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_10064565C()
{
  sub_10013D8B4(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection);
  if (v0 <= 0x3F)
  {
    sub_10013D8B4(319, &qword_100CAD8E8, &type metadata accessor for ColorSchemeContrast);
    if (v1 <= 0x3F)
    {
      sub_100645788();
      if (v2 <= 0x3F)
      {
        type metadata accessor for DetailChartViewModel();
        if (v3 <= 0x3F)
        {
          sub_1001B2A10();
          if (v4 <= 0x3F)
          {
            sub_1004DCED0();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100645788()
{
  if (!qword_100CA3C60)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA3C60);
    }
  }
}

uint64_t sub_1006457F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA2D60);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_1000302D8(v2, &v16 - v11, &qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    return (*(v13 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_1006459D4()
{
  v24 = sub_10022C350(&qword_100CCDFC8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  v3 = &v22 - v2;
  sub_10022C350(&qword_100CCDFD0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0 + *(type metadata accessor for DetailChart(0) + 24);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    if ((v14 & 0x100) != 0)
    {
LABEL_3:
      *v6 = static HorizontalAlignment.leading.getter();
      *(v6 + 1) = 0;
      v6[16] = 1;
      v15 = &v6[*(sub_10022C350(&qword_100CCDFE0) + 44)];
      *v15 = static Alignment.topLeading.getter();
      v15[1] = v16;
      sub_10022C350(&qword_100CCDFE8);
      sub_100645D8C(v0);
      sub_1002030C8(v6, v3);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CBB278);
      sub_100008B68(&qword_100CCDFD8, &qword_100CCDFD0);
      sub_10045AF30();
      sub_10004E818();
      return sub_10020312C(v6);
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v22 = v7;
    v18 = static Log.runtimeIssuesLog.getter();
    v23 = v0;
    v19 = v18;
    os_log(_:dso:log:_:_:)();

    v0 = v23;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v14, 0);
    (*(v9 + 8))(v12, v22);
    if (BYTE1(v26) == 1)
    {
      goto LABEL_3;
    }
  }

  v20 = static Color.clear.getter();
  type metadata accessor for DetailChartViewModel();
  type metadata accessor for ChartViewModel(0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v25[6] = v26;
  *&v25[22] = v27;
  *&v25[38] = v28;
  v21 = *&v25[16];
  *(v3 + 10) = *v25;
  *v3 = v20;
  *(v3 + 4) = 256;
  *(v3 + 26) = v21;
  *(v3 + 42) = *&v25[32];
  *(v3 + 7) = *&v25[46];
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CBB278);
  sub_100008B68(&qword_100CCDFD8, &qword_100CCDFD0);
  sub_10045AF30();
  return sub_10004E818();
}

uint64_t sub_100645D8C(uint64_t a1)
{
  v2 = type metadata accessor for DetailChart(0);
  v3 = (v2 - 8);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_10022C350(&qword_100CCDFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v9 = v3[9];
  v10 = a1 + *(type metadata accessor for DetailChartViewModel() + 20) + v9;
  sub_10064AE50(v10, v8);
  v11 = v3[12];
  v12 = *(a1 + v3[13]);
  v13 = type metadata accessor for ChartView(0);
  sub_100035B30(a1 + v11, &v8[v13[7]]);
  *&v8[v13[10]] = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60);
  swift_storeEnumTagMultiPayload();
  v14 = &v8[v13[5]];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *&v8[v13[6]] = v12;
  v15 = &v8[v13[8]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v13[9];
  *&v8[v16] = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0);
  swift_storeEnumTagMultiPayload();
  Text.Measurements.init()();
  v17 = &v8[*(sub_10022C350(&qword_100CCDFF8) + 36)];
  *v17 = sub_10064C8EC;
  v17[1] = 0;
  type metadata accessor for ChartViewModel(0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v8[*(v6 + 36)];
  v19 = v23[1];
  *v18 = v23[0];
  *(v18 + 1) = v19;
  *(v18 + 2) = v23[2];
  static Alignment.topLeading.getter();
  sub_10064AE50(a1, v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_10064B24C(v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_10022C350(&qword_100CCE000);
  sub_10064AED4();
  sub_100006F64(&qword_100CCE020, &qword_100CCE000);
  View.chartOverlay<A>(alignment:content:)();

  return sub_100018144(v8, &qword_100CCDFF0);
}

uint64_t sub_100646148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.topLeading.getter();
  a3[1] = v6;
  v7 = sub_10022C350(&qword_100CCE028);
  return sub_1006461A8(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_1006461A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v372 = a2;
  v350 = a3;
  v346 = type metadata accessor for LocalCoordinateSpace();
  v345 = *(v346 - 8);
  __chkstk_darwin(v346);
  v344 = &v280 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetailChart(0);
  v6 = v5 - 8;
  v334 = *(v5 - 8);
  __chkstk_darwin(v5);
  v335 = v7;
  v360 = &v280 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = type metadata accessor for ChartDragGestureRecognizerRepresentable();
  v338 = *(v340 - 8);
  __chkstk_darwin(v340);
  v337 = &v280 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CCE030);
  v341 = *(v9 - 8);
  v342 = v9;
  __chkstk_darwin(v9);
  v361 = &v280 - v10;
  v349 = sub_10022C350(&qword_100CB5EE0);
  v348 = *(v349 - 8);
  __chkstk_darwin(v349);
  v347 = &v280 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v343 = &v280 - v13;
  v314 = type metadata accessor for DetailChart.LollipopOverlayView(0);
  __chkstk_darwin(v314);
  v313 = &v280 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = sub_10022C350(&qword_100CCE038);
  __chkstk_darwin(v353);
  v312 = &v280 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v311 = &v280 - v17;
  v333 = type metadata accessor for DetailChartLollipopPoint();
  v18 = *(v333 - 8);
  __chkstk_darwin(v333);
  v332 = &v280 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v330 = &v280 - v21;
  v22 = sub_10022C350(&qword_100CB5ED8);
  __chkstk_darwin(v22 - 8);
  v339 = &v280 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v359 = &v280 - v25;
  v26 = sub_10022C350(&qword_100CCE040);
  __chkstk_darwin(v26 - 8);
  v328 = &v280 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v358 = &v280 - v29;
  v351 = type metadata accessor for ChartProxy();
  v369 = *(v351 - 8);
  __chkstk_darwin(v351);
  v329 = &v280 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = v30;
  __chkstk_darwin(v31);
  v366 = &v280 - v32;
  v327 = sub_10022C350(&qword_100CCE048);
  __chkstk_darwin(v327);
  v319 = &v280 - v33;
  v34 = sub_10022C350(&qword_100CB5ED0);
  __chkstk_darwin(v34 - 8);
  v336 = &v280 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v357 = &v280 - v37;
  v310 = sub_10022C350(&qword_100CCE050);
  __chkstk_darwin(v310);
  v298 = &v280 - v38;
  v39 = type metadata accessor for IdentityTransition();
  v285 = *(v39 - 8);
  v286 = v39;
  __chkstk_darwin(v39);
  v283 = &v280 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v284 = &v280 - v42;
  v295 = sub_10022C350(&qword_100CCE058);
  __chkstk_darwin(v295);
  v287 = &v280 - v43;
  v44 = type metadata accessor for ChartKind();
  v292 = *(v44 - 8);
  v293 = v44;
  __chkstk_darwin(v44);
  v294 = &v280 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10022C350(&qword_100CCE060);
  __chkstk_darwin(v46 - 8);
  v297 = &v280 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v301 = &v280 - v49;
  v291 = sub_10022C350(&qword_100CCE068);
  __chkstk_darwin(v291);
  v296 = &v280 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v300 = &v280 - v52;
  v53 = type metadata accessor for ChartPastDataTreatment();
  v289 = *(v53 - 8);
  v290 = v53;
  __chkstk_darwin(v53);
  v288 = &v280 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = type metadata accessor for Date();
  v307 = *(v324 - 8);
  __chkstk_darwin(v324);
  v306 = &v280 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_10022C350(&qword_100CCE070);
  __chkstk_darwin(v326);
  v308 = &v280 - v56;
  v57 = sub_10022C350(&qword_100CAB930);
  __chkstk_darwin(v57 - 8);
  v323 = &v280 - v58;
  v352 = type metadata accessor for DetailChartDataElement();
  v325 = *(v352 - 8);
  __chkstk_darwin(v352);
  v318 = &v280 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10022C350(&qword_100CB5EC8);
  __chkstk_darwin(v60 - 8);
  v356 = &v280 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v368 = &v280 - v63;
  v316 = type metadata accessor for UnevenRoundedRectangle();
  __chkstk_darwin(v316);
  v282 = &v280 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v305 = &v280 - v66;
  v317 = sub_10022C350(&qword_100CCE078);
  __chkstk_darwin(v317);
  v281 = &v280 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v304 = &v280 - v69;
  v70 = type metadata accessor for ChartOcclusionHashView.Style();
  __chkstk_darwin(v70 - 8);
  v315 = &v280 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = sub_10022C350(&qword_100CCE080);
  __chkstk_darwin(v354);
  v280 = &v280 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v303 = &v280 - v74;
  __chkstk_darwin(v75);
  v302 = &v280 - v76;
  v77 = sub_10022C350(&qword_100CB5EC0);
  __chkstk_darwin(v77 - 8);
  v364 = &v280 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v299 = &v280 - v80;
  __chkstk_darwin(v81);
  v370 = &v280 - v82;
  v322 = sub_10022C350(&qword_100CCE088);
  __chkstk_darwin(v322);
  v84 = &v280 - v83;
  v85 = type metadata accessor for ChartDarkeningScrim();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v88 = &v280 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10022C350(&qword_100CB5EB0);
  __chkstk_darwin(v89 - 8);
  v355 = &v280 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v91);
  v367 = &v280 - v92;
  v93 = *(v6 + 36);
  v371 = a1;
  v94 = a1 + v93;
  v95 = *(type metadata accessor for DetailChartViewModel() + 20);
  v309 = v94;
  v96 = v94 + v95;
  v362 = type metadata accessor for ChartViewModel(0);
  v97 = v362[16];
  static ChartDarkeningScrim.dimmingEffect.getter();
  v98 = sub_10064B03C(&qword_100CCE090, &type metadata accessor for ChartDarkeningScrim);
  v363 = v96;
  v320 = v98;
  v321 = v97;
  LOBYTE(v96) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v99 = *(v86 + 8);
  v99(v88, v85);
  v331 = v18;
  if (v96)
  {
    static Color.black.getter();
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B6420();
    v100 = Color.opacity(_:)();

    v101 = *(sub_10022C350(&qword_100CCE0D0) + 36);
    v102 = enum case for BlendMode.destinationOut(_:);
    v103 = type metadata accessor for BlendMode();
    (*(*(v103 - 8) + 104))(&v84[v101], v102, v103);
    *v84 = v100;
    *(v84 + 4) = 256;
    v104 = v322;
    v84[*(v322 + 36)] = 0;
    v105 = v367;
    sub_10011C0F0(v84, v367, &qword_100CCE088);
    v106 = 0;
    v107 = v372;
  }

  else
  {
    v106 = 1;
    v105 = v367;
    v107 = v372;
    v104 = v322;
  }

  v108 = 1;
  sub_10001B350(v105, v106, 1, v104);
  static ChartDarkeningScrim.hashPatternEffect.getter();
  v109 = v363;
  v110 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v99(v88, v85);
  if (v110)
  {
    v111 = v362;
    v112 = COERCE_DOUBLE(ChartProxy.position<A>(forX:)());
    if (v113)
    {
      v112 = 0.0;
    }

    sub_100648B54(v112);
    ChartProxy.plotSize.getter();
    ChartProxy.plotSize.getter();
    static ChartOcclusionHashView.Style.default.getter();
    v114 = v303;
    ChartOcclusionHashView.init(width:height:style:)();
    v115 = static Alignment.topLeading.getter();
    v322 = v116;
    *v375 = *(v109 + v111[10]);
    ChartProxy.position<A>(forY:)();
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B5F4C();
    RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v125 = *(v316 + 20);
    v126 = enum case for RoundedCornerStyle.continuous(_:);
    v127 = type metadata accessor for RoundedCornerStyle();
    v128 = v305;
    (*(*(v127 - 8) + 104))(&v305[v125], v126, v127);
    *v128 = v118;
    v128[1] = v120;
    v128[2] = v122;
    v128[3] = v124;
    v129 = &v114[*(sub_10022C350(&qword_100CCE178) + 36)];
    v130 = *(sub_10022C350(&qword_100CCE180) + 36);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v131 = v304;
    sub_10064B24C(v128, v304);
    v132 = (v131 + *(v317 + 36));
    v133 = *(&v376[5] + 14);
    *v132 = *(&v376[4] + 14);
    v132[1] = v133;
    v132[2] = *(&v376[6] + 14);
    sub_10011C0F0(v131, v129 + v130, &qword_100CCE078);
    v134 = v322;
    *v129 = v115;
    v129[1] = v134;
    v114[*(v354 + 36)] = 0;
    v135 = v114;
    v136 = v302;
    sub_10011C0F0(v135, v302, &qword_100CCE080);
    sub_10011C0F0(v136, v370, &qword_100CCE080);
    v108 = 0;
    v107 = v372;
    v109 = v363;
  }

  sub_10001B350(v370, v108, 1, v354);
  v137 = v362;
  v138 = v323;
  sub_1000302D8(v109 + v362[21], v323, &qword_100CAB930);
  v139 = v352;
  if (sub_100024D10(v138, 1, v352) == 1)
  {
    sub_100018144(v138, &qword_100CAB930);
    v140 = 1;
    v141 = v351;
    v142 = v369;
    v143 = v368;
  }

  else
  {
    v144 = v318;
    (*(v325 + 32))(v318, v138, v139);
    v145 = v306;
    DetailChartDataElement.date.getter();
    v146 = v324;
    v147 = ChartProxy.position<A>(forX:)();
    v149 = v148;
    (*(v307 + 8))(v145, v146);
    v141 = v351;
    v142 = v369;
    if (v149 & 1) != 0 || (DetailChartDataElement.value.getter(), *v375 = v150, v151 = ChartProxy.position<A>(forY:)(), (v152))
    {
      (*(v325 + 8))(v144, v352);
      v153 = v308;
      sub_10001B350(v308, 1, 1, v310);
    }

    else
    {
      v324 = v151;
      v154 = sub_100648B54(*&v147);
      v156 = v288;
      v155 = v289;
      v157 = v290;
      (*(v289 + 104))(v288, enum case for ChartPastDataTreatment.hashed(_:), v290);
      v158 = static ChartPastDataTreatment.== infix(_:_:)();
      (*(v155 + 8))(v156, v157);
      if (v158)
      {
        ChartProxy.plotSize.getter();
        ChartProxy.plotSize.getter();
        static ChartOcclusionHashView.Style.default.getter();
        v159 = v280;
        ChartOcclusionHashView.init(width:height:style:)();
        v160 = static Alignment.topLeading.getter();
        v322 = v161;
        v323 = v160;
        *v375 = *(v109 + v137[10]);
        ChartProxy.position<A>(forY:)();
        v162 = v292;
        if (qword_100CA2198 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        sub_1004B5F4C();
        RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
        v164 = v163;
        v166 = v165;
        v168 = v167;
        v170 = v169;
        v171 = *(v316 + 20);
        v172 = enum case for RoundedCornerStyle.continuous(_:);
        v173 = type metadata accessor for RoundedCornerStyle();
        v174 = v282;
        (*(*(v173 - 8) + 104))(&v282[v171], v172, v173);
        *v174 = v164;
        v174[1] = v166;
        v174[2] = v168;
        v174[3] = v170;
        v175 = (v159 + *(sub_10022C350(&qword_100CCE178) + 36));
        v176 = *(sub_10022C350(&qword_100CCE180) + 36);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v177 = v281;
        sub_10064B24C(v174, v281);
        v178 = (v177 + *(v317 + 36));
        v179 = *(&v376[8] + 14);
        *v178 = *(&v376[7] + 14);
        v178[1] = v179;
        v178[2] = *(&v376[9] + 14);
        sub_10011C0F0(v177, v175 + v176, &qword_100CCE078);
        v180 = v322;
        *v175 = v323;
        v175[1] = v180;
        v181 = v354;
        *(v159 + *(v354 + 36)) = 0;
        v182 = v299;
        sub_10011C0F0(v159, v299, &qword_100CCE080);
        v183 = 0;
      }

      else
      {
        v183 = 1;
        v162 = v292;
        v182 = v299;
        v181 = v354;
      }

      sub_10001B350(v182, v183, 1, v181);
      static Color.black.getter();
      if (qword_100CA2198 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_1004B6420();
      v184 = Color.opacity(_:)();

      v185 = *(sub_10022C350(&qword_100CCE0D0) + 36);
      v186 = enum case for BlendMode.destinationOut(_:);
      v187 = type metadata accessor for BlendMode();
      v188 = v300;
      (*(*(v187 - 8) + 104))(v300 + v185, v186, v187);
      *v188 = v184;
      *(v188 + 8) = 256;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v189 = (v188 + *(sub_10022C350(&qword_100CCE0D8) + 36));
      v190 = *(&v376[11] + 14);
      *v189 = *(&v376[10] + 14);
      v189[1] = v190;
      v189[2] = *(&v376[12] + 14);
      *(v188 + *(v291 + 36)) = 0;
      v191 = [objc_opt_self() secondarySystemFillColor];
      v354 = Color.init(_:)();
      v192 = v362;
      v193 = v363;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *(v376 + 6) = *(&v376[13] + 14);
      *(&v376[1] + 6) = *(&v376[14] + 14);
      *(&v376[2] + 6) = *(&v376[15] + 14);
      v194 = v193 + v192[5];
      v195 = v293;
      v196 = v294;
      (*(v162 + 16))(v294, v194, v293);
      if ((*(v162 + 88))(v196, v195) == enum case for ChartKind.line(_:))
      {
        v197 = v324;
        v198 = *&v324;
        (*(v162 + 96))(v196, v195);
        v199 = sub_10022C350(&qword_100CAC400);
        sub_100018144(v196 + *(v199 + 48), &qword_100CAC3D8);
        sub_100018144(v196, &qword_100CAC3D8);
        sub_100648D38(v374);
        sub_1004B6290();
        sub_1004B6290();
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v200 = v154 - sub_1004B6290() * 0.5;
        v201 = v198 - sub_1004B6290() * 0.5;
        v202 = v284;
        IdentityTransition.init()();
        v204 = v285;
        v203 = v286;
        (*(v285 + 16))(v283, v202, v286);
        sub_10064B03C(&qword_100CCE0F0, &type metadata accessor for IdentityTransition);
        v205 = AnyTransition.init<A>(_:)();
        (*(v204 + 8))(v202, v203);
        memcpy(v373, v374, 0x70uLL);
        *&v373[14] = v200;
        *&v373[15] = v201;
        v373[16] = 0;
        v373[17] = v197;
        v373[18] = v205;
        LOBYTE(v373[19]) = 0;
        sub_10022C350(&qword_100CCE0F8);
        sub_10064B474();
        v206 = v287;
        View.accessibilityHidden(_:)();
        memcpy(v375, v373, sizeof(v375));
        sub_100018144(v375, &qword_100CCE0F8);
        v207 = v206;
        v208 = v301;
        sub_10011C0F0(v207, v301, &qword_100CCE058);
        v209 = v208;
        v210 = 0;
      }

      else
      {
        (*(v162 + 8))(v196, v195);
        v208 = v301;
        v209 = v301;
        v210 = 1;
      }

      sub_10001B350(v209, v210, 1, v295);
      v211 = v364;
      sub_1000302D8(v182, v364, &qword_100CB5EC0);
      v212 = v300;
      v213 = v296;
      sub_1000302D8(v300, v296, &qword_100CCE068);
      v214 = v208;
      v215 = v297;
      sub_1000302D8(v214, v297, &qword_100CCE060);
      v216 = v211;
      v217 = v298;
      sub_1000302D8(v216, v298, &qword_100CB5EC0);
      v218 = sub_10022C350(&qword_100CCE0E0);
      sub_1000302D8(v213, v217 + v218[12], &qword_100CCE068);
      v219 = v218[16];
      v220 = v354;
      v373[0] = v354;
      LOWORD(v373[1]) = 256;
      *(&v373[1] + 2) = v376[0];
      *(&v373[3] + 2) = v376[1];
      *(&v373[5] + 2) = v376[2];
      v373[7] = *(&v376[2] + 14);
      *&v373[8] = v154;
      v373[9] = 0;
      LOBYTE(v373[10]) = 0;
      memcpy((v217 + v219), v373, 0x51uLL);
      sub_1000302D8(v215, v217 + v218[20], &qword_100CCE060);
      sub_1000302D8(v373, v375, &qword_100CCE0E8);
      sub_100018144(v301, &qword_100CCE060);
      sub_100018144(v212, &qword_100CCE068);
      sub_100018144(v299, &qword_100CB5EC0);
      (*(v325 + 8))(v318, v352);
      sub_100018144(v215, &qword_100CCE060);
      *v375 = v220;
      *&v375[8] = 256;
      *&v375[10] = v376[0];
      *&v375[26] = v376[1];
      *&v375[42] = v376[2];
      *&v375[56] = *(&v376[2] + 14);
      *&v375[64] = v154;
      *&v375[72] = 0;
      v375[80] = 0;
      sub_100018144(v375, &qword_100CCE0E8);
      sub_100018144(v213, &qword_100CCE068);
      sub_100018144(v364, &qword_100CB5EC0);
      v153 = v308;
      sub_10011C0F0(v217, v308, &qword_100CCE050);
      sub_10001B350(v153, 0, 1, v310);
      v107 = v372;
      v141 = v351;
      v142 = v369;
      v109 = v363;
      v137 = v362;
    }

    v143 = v368;
    sub_10011C0F0(v153, v368, &qword_100CCE070);
    v140 = 0;
  }

  v221 = 1;
  sub_10001B350(v143, v140, 1, v326);
  v222 = v137[9];
  if (*(v109 + v222))
  {
    *v375 = *(v109 + v222);
    swift_getKeyPath();
    v223 = v366;
    (*(v142 + 16))(v366, v107, v141);
    v224 = (*(v142 + 80) + 16) & ~*(v142 + 80);
    v225 = swift_allocObject();
    (*(v142 + 32))(v225 + v224, v223, v141);

    sub_10022C350(&qword_100CBAE30);
    sub_10022C350(&qword_100CCE0B0);
    sub_100006F64(&qword_100CBAE40, &qword_100CBAE30);
    sub_10064B368();
    v226 = v319;
    v107 = v372;
    ForEach<>.init(_:id:content:)();
    *(v226 + *(sub_10022C350(&qword_100CCE0C8) + 36)) = 0;
    v227 = v327;
    v228 = (v226 + *(v327 + 36));
    *v228 = sub_10064C8EC;
    v228[1] = 0;
    v229 = v357;
    sub_10011C0F0(v226, v357, &qword_100CCE048);
    v221 = 0;
    v230 = v359;
    v231 = v353;
  }

  else
  {
    v230 = v359;
    v229 = v357;
    v231 = v353;
    v227 = v327;
  }

  sub_10001B350(v229, v221, 1, v227);
  v232 = v358;
  sub_100649004(v107, v358);
  v233 = v328;
  sub_1000302D8(v232, v328, &qword_100CCE040);
  v234 = v107;
  v235 = v333;
  if (sub_100024D10(v233, 1, v333) == 1)
  {
    sub_100018144(v233, &qword_100CCE040);
    v236 = 1;
  }

  else
  {
    v237 = v331;
    v238 = *(v331 + 32);
    v239 = v233;
    v240 = v330;
    v238(v330, v239, v235);
    (*(v237 + 16))(v332, v240, v235);
    (*(v142 + 16))(v329, v234, v141);
    if (*(v363 + v362[8]))
    {
      if (qword_100CA2198 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v241 = *&xmmword_100D90090 + *(&xmmword_100D90090 + 1) + *(&xmmword_100D90090 + 1);
    }

    else
    {
      v241 = 0.0;
    }

    (*(v331 + 8))(v330, v235);
    v242 = v314;
    v243 = v235;
    v244 = v313;
    sub_10064AE50(v309, &v313[*(v314 + 28)]);
    v238(v244, v332, v243);
    (*(v142 + 32))(v244 + v242[5], v329, v141);
    *(v244 + v242[6]) = v241;
    *(v244 + v242[8]) = 0x4034000000000000;
    *(v244 + v242[9]) = 0x4000000000000000;
    *(v244 + v242[10]) = 0x3FF0000000000000;
    v245 = v312;
    sub_10064B24C(v244, v312);
    v231 = v353;
    *(v245 + *(v353 + 36)) = 0;
    v246 = v245;
    v247 = v311;
    sub_10011C0F0(v246, v311, &qword_100CCE038);
    sub_10011C0F0(v247, v230, &qword_100CCE038);
    v236 = 0;
  }

  sub_10001B350(v230, v236, 1, v231);
  v363 = static Color.clear.getter();
  *v375 = v363;
  *&v375[8] = 256;
  v375[10] = 0;
  v362 = type metadata accessor for DetailChart;
  v248 = v360;
  sub_10064AE50(v371, v360);
  v354 = *(v142 + 16);
  v249 = v366;
  (v354)(v366, v372, v141);
  v250 = *(v334 + 80);
  v251 = *(v142 + 80);
  v252 = (v250 + 16) & ~v250;
  v352 = v252;
  v253 = (v335 + v251 + v252) & ~v251;
  v353 = v250 | v251;
  v254 = swift_allocObject();
  v351 = type metadata accessor for DetailChart;
  sub_10064B24C(v248, v254 + v252);
  v255 = *(v142 + 32);
  v369 = v142 + 32;
  v335 = v255;
  v255(v254 + v253, v249, v141);
  v256 = v337;
  ChartDragGestureRecognizerRepresentable.init(isRecognizedHandler:)();
  v334 = sub_10022C350(&qword_100CCE098);
  v257 = sub_10064B084();
  v258 = sub_10064B03C(&qword_100CCE0A8, &type metadata accessor for ChartDragGestureRecognizerRepresentable);
  v259 = v340;
  View.gesture<A>(_:)();
  (*(v338 + 8))(v256, v259);

  v260 = v360;
  sub_10064AE50(v371, v360);
  v261 = v366;
  (v354)(v366, v372, v141);
  v262 = swift_allocObject();
  sub_10064B24C(v260, v262 + v352);
  v335(v262 + v253, v261, v141);
  v263 = v344;
  static CoordinateSpaceProtocol<>.local.getter();
  *v375 = v334;
  *&v375[8] = v259;
  *&v375[16] = v257;
  *&v375[24] = v258;
  swift_getOpaqueTypeConformance2();
  v264 = v342;
  v265 = v343;
  v266 = v346;
  v267 = v361;
  View.onContinuousHover<A>(coordinateSpace:perform:)();

  (*(v345 + 8))(v263, v266);
  (*(v341 + 8))(v267, v264);
  v268 = v355;
  sub_1000302D8(v367, v355, &qword_100CB5EB0);
  *v375 = v268;
  v269 = v364;
  sub_1000302D8(v370, v364, &qword_100CB5EC0);
  *&v375[8] = v269;
  v270 = v356;
  sub_1000302D8(v368, v356, &qword_100CB5EC8);
  *&v375[16] = v270;
  v271 = v357;
  v272 = v336;
  sub_1000302D8(v357, v336, &qword_100CB5ED0);
  *&v375[24] = v272;
  v273 = v359;
  v274 = v339;
  sub_1000302D8(v359, v339, &qword_100CB5ED8);
  *&v375[32] = v274;
  v275 = v348;
  v276 = v347;
  v277 = v349;
  (*(v348 + 16))(v347, v265, v349);
  *&v375[40] = v276;
  sub_1003E9048(v375);
  v278 = *(v275 + 8);
  v278(v265, v277);
  sub_100018144(v273, &qword_100CB5ED8);
  sub_100018144(v358, &qword_100CCE040);
  sub_100018144(v271, &qword_100CB5ED0);
  sub_100018144(v368, &qword_100CB5EC8);
  sub_100018144(v370, &qword_100CB5EC0);
  sub_100018144(v367, &qword_100CB5EB0);
  v278(v276, v277);
  sub_100018144(v274, &qword_100CB5ED8);
  sub_100018144(v272, &qword_100CB5ED0);
  sub_100018144(v356, &qword_100CB5EC8);
  sub_100018144(v364, &qword_100CB5EC0);
  return sub_100018144(v355, &qword_100CB5EB0);
}

double sub_100648B54(double a1)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  sub_1006457F4(&v18 - v7);
  (*(v3 + 104))(v5, enum case for LayoutDirection.rightToLeft(_:), v2);
  v9 = static LayoutDirection.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    type metadata accessor for DetailChart(0);
    type metadata accessor for DetailChartViewModel();
    type metadata accessor for ChartViewModel(0);
    type metadata accessor for Date();
    v11 = ChartProxy.position<A>(forX:)();
    if ((v12 & 1) == 0)
    {
      v13 = *&v11;
      v14 = COERCE_DOUBLE(ChartProxy.position<A>(forX:)());
      if ((v15 & 1) == 0)
      {
        v16 = v13;
        if (v13 <= v14)
        {
          v16 = v14;
        }

        return v16 - a1;
      }
    }
  }

  return a1;
}

uint64_t sub_100648D38@<X0>(_OWORD *a1@<X8>)
{
  v2 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5F04();
  v4 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  *&v12 = KeyPath;
  *(&v12 + 1) = v2;
  LOBYTE(v13) = v4;
  *(&v13 + 1) = v5;
  *v14 = v6;
  *&v14[8] = v7;
  *&v14[16] = v8;
  v14[24] = 0;
  v9 = v13;
  *a1 = v12;
  a1[1] = v9;
  a1[2] = *v14;
  *(a1 + 41) = *&v14[9];
  v15[0] = KeyPath;
  v15[1] = v2;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v21 = 0;
  sub_1000302D8(&v12, v11, &qword_100CCE188);
  return sub_100018144(v15, &qword_100CCE188);
}

uint64_t sub_100648E6C(uint64_t a1)
{
  v2 = type metadata accessor for ScaleLabel(0);
  __chkstk_darwin(v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.value.getter();
  v12[1] = v5;
  v6 = COERCE_DOUBLE(ChartProxy.position<A>(forY:)());
  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  v9 = v2[5];
  v10 = type metadata accessor for DetailChartDataElement();
  (*(*(v10 - 8) + 16))(&v4[v9], a1, v10);
  *v4 = 0x4010000000000000;
  *&v4[v2[6]] = v8;
  v4[v2[7]] = 1;
  v4[v2[8]] = 0;
  sub_10064B03C(&qword_100CCE0C0, type metadata accessor for ScaleLabel);
  View.accessibilityHidden(_:)();
  return sub_10064C0F4(v4, type metadata accessor for ScaleLabel);
}

uint64_t sub_100649004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v5 = type metadata accessor for Calendar();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = &v43 - v13;
  v14 = sub_10022C350(&qword_100CBFE98);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = type metadata accessor for DetailChartDataPoint();
  v51 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for DetailChart(0);
  if (*(v3 + *(v23 + 32)))
  {
LABEL_9:
    v28 = 1;
    goto LABEL_10;
  }

  v44 = v9;
  v45 = v8;
  v46 = a2;
  v24 = *(v23 + 28);
  v43 = v3;
  v25 = v3 + v24;
  v26 = type metadata accessor for DetailChartViewModel();
  sub_1000302D8(v25 + *(v26 + 24), v16, &qword_100CBFE98);
  v27 = type metadata accessor for LollipopViewModel();
  if (sub_100024D10(v16, 1, v27) != 1)
  {
    v29 = *(v27 + 20);
    v30 = v51;
    v31 = v17;
    (*(v51 + 16))(v19, &v16[v29], v17);
    sub_10064C0F4(v16, type metadata accessor for LollipopViewModel);
    (*(v30 + 32))(v22, v19, v17);
    type metadata accessor for ChartViewModel(0);
    if (ChartKind.isBarChart.getter())
    {
      DetailChartDataPoint.date.getter();
      static Calendar.current.getter();
      v32 = v49;
      Date.wc_addMinutes(_:calendar:)();
      (*(v47 + 8))(v7, v48);
      v34 = v44;
      v33 = v45;
      (*(v44 + 8))(v11, v45);
      a2 = v46;
    }

    else
    {
      v32 = v49;
      DetailChartDataPoint.date.getter();
      v33 = v45;
      a2 = v46;
      v34 = v44;
    }

    v35 = ChartProxy.position<A>(forX:)();
    if ((v36 & 1) == 0)
    {
      v39 = *&v35;
      v40 = DetailChartDataPoint.value.getter();
      if ((v41 & 1) != 0 || (v52 = v40, ChartProxy.position<A>(forY:)(), (v42 & 1) == 0))
      {
        sub_100648B54(v39);
        DetailChartLollipopPoint.init(x:y:)();
        (*(v34 + 8))(v32, v33);
        (*(v51 + 8))(v22, v31);
        v28 = 0;
        goto LABEL_10;
      }
    }

    (*(v34 + 8))(v32, v33);
    (*(v51 + 8))(v22, v31);
    goto LABEL_9;
  }

  sub_100018144(v16, &qword_100CBFE98);
  v28 = 1;
  a2 = v46;
LABEL_10:
  v37 = type metadata accessor for DetailChartLollipopPoint();
  return sub_10001B350(a2, v28, 1, v37);
}

uint64_t sub_100649524(uint64_t a1, double a2)
{
  v3 = v2;
  v90 = type metadata accessor for DetailChartSelection();
  __chkstk_darwin(v90);
  v91 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CAB930);
  __chkstk_darwin(v7 - 8);
  v93 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = &v78 - v10;
  v99 = type metadata accessor for DetailChartDataElement();
  v96 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v12 - 8);
  v89 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v88 = &v78 - v15;
  __chkstk_darwin(v16);
  v97 = &v78 - v17;
  __chkstk_darwin(v18);
  v20 = &v78 - v19;
  v21 = type metadata accessor for Date();
  v101 = *(v21 - 8);
  __chkstk_darwin(v21);
  v92 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v100 = &v78 - v24;
  v25 = type metadata accessor for LayoutDirection();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v78 - v30;
  sub_1006457F4(&v78 - v30);
  v32 = *(v26 + 104);
  v86 = enum case for LayoutDirection.rightToLeft(_:);
  v87 = v26 + 104;
  v85 = v32;
  v32(v28);
  v33 = static LayoutDirection.== infix(_:_:)();
  v34 = *(v26 + 8);
  v34(v28, v25);
  v84 = v25;
  v34(v31, v25);
  v35 = 0.0;
  if (v33)
  {
    v36 = *(v3 + *(type metadata accessor for DetailChart(0) + 44));
    ChartProxy.plotSize.getter();
    v35 = v36 - v37;
  }

  v38 = a2 - v35;
  v95 = a1;
  ChartProxy.value<A>(atX:as:)();
  if (sub_100024D10(v20, 1, v21) == 1)
  {
    sub_100018144(v20, &unk_100CB2CF0);
    return sub_100649E7C();
  }

  v80 = v34;
  v40 = v100;
  v41 = v3;
  v42 = v101[4];
  v42(v100, v20, v21);
  v43 = type metadata accessor for DetailChart(0);
  v44 = *(v43 + 36);
  v45 = sub_10022C350(&qword_100CBB758);
  v83 = v41;
  v82 = v44;
  v46 = v97;
  v81 = v45;
  State.wrappedValue.getter();
  if (sub_100024D10(v46, 1, v21) == 1)
  {
    sub_100018144(v46, &unk_100CB2CF0);
  }

  else
  {
    v79 = v28;
    v47 = v40;
    v48 = v92;
    v42(v92, v46, v21);
    Date.timeIntervalSince(_:)();
    v50 = fabs(v49);
    v51 = v101[1];
    v52 = v48;
    v40 = v47;
    v28 = v79;
    v51(v52, v21);
    if (v50 < 60.0)
    {
      return (v51)(v40, v21);
    }
  }

  v97 = v43;
  v53 = v83;
  v54 = v83 + *(v43 + 28);
  v55 = (v54 + *(type metadata accessor for DetailChartViewModel() + 20));
  v92 = type metadata accessor for ChartViewModel(0);
  __chkstk_darwin(v92);
  *(&v78 - 2) = v40;
  v56 = v93;
  sub_1008EFB74();
  v57 = v94;
  sub_10011C0F0(v56, v94, &qword_100CAB930);
  v58 = v99;
  if (sub_100024D10(v57, 1, v99) == 1)
  {
    (v101[1])(v40, v21);
    return sub_100018144(v57, &qword_100CAB930);
  }

  else
  {
    (*(v96 + 32))(v98, v57, v58);
    *&v59 = COERCE_DOUBLE(sub_10064AB78(v53, v95));
    v60 = 0.0;
    if (v61)
    {
      goto LABEL_16;
    }

    v62 = *&v59;
    sub_1006457F4(v31);
    v63 = v84;
    v85(v28, v86, v84);
    v64 = static LayoutDirection.== infix(_:_:)();
    v65 = v80;
    v80(v28, v63);
    v65(v31, v63);
    v66 = v38 < v62;
    if (v64)
    {
      v66 = v38 > v62;
    }

    if (!v66)
    {
LABEL_16:
      LODWORD(v94) = 1;
    }

    else
    {
      v60 = sub_100648B54(v62);
      LODWORD(v94) = 0;
    }

    v68 = *v55;
    v67 = v55[1];
    v69 = v91;
    v70 = v90;
    v71 = v101[2];
    v71(&v91[*(v90 + 20)], v55 + *(v92 + 18), v21);
    v72 = v70[6];
    v71(&v69[v72], v100, v21);

    DetailChartDataElement.date.getter();
    v73 = v83;
    v74 = sub_100648B54(v38);
    *v69 = v68;
    *(v69 + 1) = v67;
    *&v69[v70[8]] = v74;
    v75 = &v69[v70[9]];
    *v75 = v60;
    *(v75 + 8) = v94;
    v76 = &v69[v72];
    v77 = v88;
    v71(v88, v76, v21);
    sub_10001B350(v77, 0, 1, v21);
    sub_1000302D8(v77, v89, &unk_100CB2CF0);
    State.wrappedValue.setter();
    sub_100018144(v77, &unk_100CB2CF0);
    sub_1000161C0((v73 + *(v97 + 10)), *(v73 + *(v97 + 10) + 24));
    sub_1003176D8(v69);
    sub_10064C0F4(v69, type metadata accessor for DetailChartSelection);
    (*(v96 + 8))(v98, v99);
    return (v101[1])(v100, v21);
  }
}

uint64_t sub_100649E7C()
{
  v1 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Date();
  sub_10001B350(v6, 1, 1, v7);
  v8 = type metadata accessor for DetailChart(0);
  sub_1000302D8(v6, v3, &unk_100CB2CF0);
  sub_10022C350(&qword_100CBB758);
  State.wrappedValue.setter();
  sub_100018144(v6, &unk_100CB2CF0);
  sub_1000161C0((v0 + *(v8 + 40)), *(v0 + *(v8 + 40) + 24));
  return sub_10031779C();
}

uint64_t sub_100649FBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return sub_100649E7C();
  }

  else
  {
    return sub_100649524(a5, *&a1);
  }
}

uint64_t sub_100649FF8(double a1)
{
  type metadata accessor for DetailChart.LollipopOverlayView(0);
  type metadata accessor for DetailChartViewModel();
  type metadata accessor for ChartViewModel(0);
  if (ChartKind.isBarChart.getter())
  {
    v2 = COERCE_DOUBLE(DetailChartLollipopPoint.y.getter());
    if (v3)
    {
      *&result = 0.0;
    }

    else
    {
      *&result = v2 + -1.0;
    }
  }

  else
  {
    *&result = a1;
  }

  return result;
}

uint64_t sub_10064A098@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CCE308);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v55 = sub_10022C350(&qword_100CCE310);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  v54 = &v48 - v9;
  v10 = sub_10022C350(&qword_100CCE318);
  __chkstk_darwin(v10 - 8);
  v57 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v56 = &v48 - v13;
  v14 = sub_10022C350(&qword_100CCE320);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v58 = &v48 - v16;
  v17 = type metadata accessor for DetailChart.LollipopOverlayView(0);
  v18 = v1 + v17[7];
  v19 = v18 + *(type metadata accessor for DetailChartViewModel() + 20);
  *v62 = *(v19 + *(type metadata accessor for ChartViewModel(0) + 40));
  v20 = ChartProxy.position<A>(forY:)();
  if (v21 & 1) != 0 || (v53 = v7, v22 = sub_100649FF8(*&v20), (v23))
  {
    v24 = 1;
  }

  else
  {
    v25 = *&v22;
    DetailChartLollipopPoint.x.getter();
    if (v25 <= 0.0)
    {
      v35 = v58;
      sub_10001B350(v58, 1, 1, v4);
    }

    else
    {
      v49 = v4;
      v50 = a1;
      v27 = v26 + *(v1 + v17[10]) * -0.5;
      v28 = [objc_opt_self() systemBackgroundColor];
      v52 = Color.init(_:)();
      if (qword_100CA2198 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_1004B6444();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v64[3] = *&v64[27];
      *&v64[11] = *&v64[35];
      *&v64[19] = *&v64[43];
      v29 = v27 - sub_1004B6444();
      v51 = static Color.white.getter();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *(v63 + 6) = *&v64[51];
      *(&v63[1] + 6) = *&v64[59];
      *(&v63[2] + 6) = *&v64[67];
      if (ChartKind.isBarChart.getter() & 1) != 0 || (v30 = DetailChartLollipopPoint.y.getter(), (v31))
      {
        v32 = v56;
        v33 = v56;
        v34 = 1;
      }

      else
      {
        v36 = *&v30;
        v37 = static Alignment.center.getter();
        v39 = v38;
        sub_10064A814(v62);
        memcpy(v60, v62, sizeof(v60));
        memcpy(v61, v62, sizeof(v61));
        sub_1000302D8(v60, v59, &qword_100CCE330);
        sub_100018144(v61, &qword_100CCE330);
        v40 = *(v2 + v17[8]) * 0.5;
        v41 = v27 - v40;
        v42 = v36 - v40;
        memcpy(&v59[2], v60, 0x70uLL);
        v59[0] = v37;
        v59[1] = v39;
        *&v59[16] = v41;
        *&v59[17] = v42;
        LOBYTE(v59[18]) = 0;
        sub_10022C350(&qword_100CCE338);
        sub_10064C3E4();
        v43 = v54;
        View.accessibilityHidden(_:)();
        memcpy(v62, v59, sizeof(v62));
        sub_100018144(v62, &qword_100CCE338);
        v32 = v56;
        sub_10011C0F0(v43, v56, &qword_100CCE310);
        v33 = v32;
        v34 = 0;
      }

      sub_10001B350(v33, v34, 1, v55);
      v44 = v57;
      sub_1000302D8(v32, v57, &qword_100CCE318);
      v45 = v53;
      v60[0] = v52;
      LOWORD(v60[1]) = 256;
      *(&v60[1] + 2) = *v64;
      *(&v60[3] + 2) = *&v64[8];
      *(&v60[5] + 2) = *&v64[16];
      v60[7] = *&v64[23];
      *&v60[8] = v29;
      v60[9] = 0;
      LOBYTE(v60[10]) = 0;
      memcpy(v53, v60, 0x51uLL);
      v61[0] = v51;
      LOWORD(v61[1]) = 256;
      *(&v61[1] + 2) = v63[0];
      *(&v61[3] + 2) = v63[1];
      *(&v61[5] + 2) = v63[2];
      v61[7] = *(&v63[2] + 14);
      *&v61[8] = v27;
      v61[9] = 0;
      LOBYTE(v61[10]) = 0;
      memcpy(v45 + 88, v61, 0x51uLL);
      v46 = sub_10022C350(&qword_100CCE328);
      sub_1000302D8(v44, &v45[*(v46 + 64)], &qword_100CCE318);
      sub_1000302D8(v60, v62, &qword_100CCE0E8);
      sub_1000302D8(v61, v62, &qword_100CCE0E8);
      sub_100018144(v32, &qword_100CCE318);
      sub_100018144(v44, &qword_100CCE318);
      v59[0] = v51;
      LOWORD(v59[1]) = 256;
      *(&v59[1] + 2) = v63[0];
      *(&v59[3] + 2) = v63[1];
      *(&v59[5] + 2) = v63[2];
      v59[7] = *(&v63[2] + 14);
      *&v59[8] = v27;
      v59[9] = 0;
      LOBYTE(v59[10]) = 0;
      sub_100018144(v59, &qword_100CCE0E8);
      *v62 = v52;
      *&v62[8] = 256;
      *&v62[10] = *v64;
      *&v62[26] = *&v64[8];
      *&v62[42] = *&v64[16];
      *&v62[56] = *&v64[23];
      *&v62[64] = v29;
      *&v62[72] = 0;
      v62[80] = 0;
      sub_100018144(v62, &qword_100CCE0E8);
      v35 = v58;
      sub_10011C0F0(v45, v58, &qword_100CCE308);
      sub_10001B350(v35, 0, 1, v49);
      a1 = v50;
    }

    sub_10011C0F0(v35, a1, &qword_100CCE320);
    v24 = 0;
  }

  return sub_10001B350(a1, v24, 1, v14);
}

uint64_t sub_10064A814@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DetailChart.LollipopOverlayView(0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v2 = v17;
  v3 = v18;
  v4 = v19;
  v5 = v20;
  v6 = v21;
  v7 = static Color.white.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v15[38] = v24;
  *&v15[22] = v23;
  *&v15[6] = v22;
  v14[72] = v17;
  v14[64] = v19;
  *v25 = v7;
  *&v25[8] = 256;
  v8 = *v15;
  *&v25[10] = *v15;
  *&v25[56] = *(&v24 + 1);
  v9 = *&v15[32];
  *&v25[42] = *&v15[32];
  v10 = *&v15[16];
  *&v25[26] = *&v15[16];
  *a1 = v16;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v11 = *&v25[48];
  *(a1 + 80) = *&v25[32];
  *(a1 + 96) = v11;
  v12 = *&v25[16];
  *(a1 + 48) = *v25;
  *(a1 + 64) = v12;
  v26 = v7;
  v27 = 256;
  *&v30[14] = *&v15[46];
  *v30 = v9;
  v29 = v10;
  v28 = v8;
  sub_1000302D8(v25, v14, &qword_100CBB260);
  return sub_100018144(&v26, &qword_100CBB260);
}

uint64_t sub_10064A9E8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemBackgroundColor];
  result = Color.init(_:)();
  *a1 = result;
  *(a1 + 8) = 256;
  return result;
}

BOOL sub_10064AA3C()
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

uint64_t sub_10064AB78(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = type metadata accessor for Date();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CAB930);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for DetailChartDataElement();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for DetailChart(0) + 28);
  v22[1] = a1;
  v14 = a1 + v13;
  v15 = *(type metadata accessor for DetailChartViewModel() + 20);
  v16 = type metadata accessor for ChartViewModel(0);
  sub_1000302D8(v14 + v15 + *(v16 + 84), v8, &qword_100CAB930);
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_100018144(v8, &qword_100CAB930);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  DetailChartDataElement.date.getter();
  v17 = ChartProxy.position<A>(forX:)();
  v19 = v18;
  (*(v23 + 8))(v5, v3);
  if (v19)
  {
    (*(v10 + 8))(v12, v9);
    return 0;
  }

  v21 = sub_100648B54(*&v17);
  (*(v10 + 8))(v12, v9);
  return *&v21;
}

uint64_t sub_10064AE50(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

unint64_t sub_10064AED4()
{
  result = qword_100CCE008;
  if (!qword_100CCE008)
  {
    sub_10022E824(&qword_100CCDFF0);
    sub_10064AF60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE008);
  }

  return result;
}

unint64_t sub_10064AF60()
{
  result = qword_100CCE010;
  if (!qword_100CCE010)
  {
    sub_10022E824(&qword_100CCDFF8);
    sub_10064B03C(&qword_100CCE018, type metadata accessor for ChartView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE010);
  }

  return result;
}

uint64_t sub_10064B03C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10064B084()
{
  result = qword_100CCE0A0;
  if (!qword_100CCE0A0)
  {
    sub_10022E824(&qword_100CCE098);
    sub_100006F64(&qword_100CBB280, &qword_100CBB288);
    sub_100006F64(&qword_100CBDD58, &qword_100CBDD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE0A0);
  }

  return result;
}

uint64_t sub_10064B16C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for DetailChart(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for ChartProxy() - 8);
  return sub_100649FBC(a1, a2, a3 & 1, v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)));
}

uint64_t sub_10064B24C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10064B2D0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_10064B368()
{
  result = qword_100CCE0B8;
  if (!qword_100CCE0B8)
  {
    sub_10022E824(&qword_100CCE0B0);
    sub_10064B03C(&qword_100CCE0C0, type metadata accessor for ScaleLabel);
    sub_10064B03C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE0B8);
  }

  return result;
}

unint64_t sub_10064B474()
{
  result = qword_100CCE100;
  if (!qword_100CCE100)
  {
    sub_10022E824(&qword_100CCE0F8);
    sub_10064B500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE100);
  }

  return result;
}

unint64_t sub_10064B500()
{
  result = qword_100CCE108;
  if (!qword_100CCE108)
  {
    sub_10022E824(&qword_100CCE110);
    sub_10064B5B8();
    sub_100006F64(&qword_100CA4620, &qword_100CA4628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE108);
  }

  return result;
}

unint64_t sub_10064B5B8()
{
  result = qword_100CCE118;
  if (!qword_100CCE118)
  {
    sub_10022E824(&qword_100CCE120);
    sub_10064B670();
    sub_100006F64(&qword_100CCE168, &qword_100CCE170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE118);
  }

  return result;
}

unint64_t sub_10064B670()
{
  result = qword_100CCE128;
  if (!qword_100CCE128)
  {
    sub_10022E824(&qword_100CCE130);
    sub_10064B6FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE128);
  }

  return result;
}

unint64_t sub_10064B6FC()
{
  result = qword_100CCE138;
  if (!qword_100CCE138)
  {
    sub_10022E824(&qword_100CCE140);
    sub_10064B788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE138);
  }

  return result;
}

unint64_t sub_10064B788()
{
  result = qword_100CCE148;
  if (!qword_100CCE148)
  {
    sub_10022E824(&qword_100CCE150);
    sub_100006F64(&qword_100CCE158, &qword_100CCE160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE148);
  }

  return result;
}

uint64_t sub_10064B838@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v2 = type metadata accessor for BlendMode();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin(v2);
  v90 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v85);
  v86 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10022C350(&qword_100CBDCE8);
  __chkstk_darwin(v87);
  v88 = &v75 - v5;
  v80 = type metadata accessor for DynamicTypeSize();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DetailChartDataElement.ValueLabel();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10022C350(&qword_100CCE2E8);
  __chkstk_darwin(v76);
  v77 = &v75 - v15;
  v81 = sub_10022C350(&qword_100CCE2F0);
  __chkstk_darwin(v81);
  v83 = &v75 - v16;
  v82 = sub_10022C350(&qword_100CCE2F8);
  __chkstk_darwin(v82);
  v84 = &v75 - v17;
  v75 = type metadata accessor for ScaleLabel(0);
  v89 = v1;
  DetailChartDataElement.valueLabel.getter();
  v18 = static ChartValueLabel.with(label:)();
  v20 = v19;
  v22 = v21;
  (*(v12 + 8))(v14, v11);
  (*(v8 + 104))(v10, enum case for Font.TextStyle.caption2(_:), v7);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v8 + 8))(v10, v7);
  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;

  sub_10010CD64(v18, v20, v22 & 1);

  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B6228();
  swift_endAccess();
  v28 = Text.foregroundColor(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_10010CD64(v23, v25, v27 & 1);

  v94 = v28;
  v95 = v30;
  v35 = v32 & 1;
  v96 = v32 & 1;
  v97 = v34;
  v36 = v79;
  v37 = v78;
  v38 = v80;
  (*(v79 + 104))(v78, enum case for DynamicTypeSize.medium(_:), v80);
  v39 = v77;
  View.dynamicTypeSize(_:)();
  (*(v36 + 8))(v37, v38);
  sub_10010CD64(v28, v30, v35);

  v40 = static Edge.Set.all.getter();
  v41 = v39 + *(v76 + 36);
  *v41 = v40;
  *(v41 + 8) = xmmword_100A6ECD0;
  *(v41 + 24) = xmmword_100A6ECD0;
  *(v41 + 40) = 0;
  v42 = *(v85 + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = type metadata accessor for RoundedCornerStyle();
  v45 = v86;
  (*(*(v44 - 8) + 104))(&v86[v42], v43, v44);
  __asm { FMOV            V0.2D, #4.0 }

  *v45 = _Q0;
  v51 = v75;
  v52 = v89;
  if (*(v89 + *(v75 + 28)) == 1)
  {
    v53 = [objc_opt_self() systemBackgroundColor];
    v54 = Color.init(_:)();
  }

  else
  {
    v54 = static Color.clear.getter();
  }

  v55 = v54;
  v56 = v88;
  sub_10064B24C(v45, v88);
  v57 = v87;
  *(v56 + *(v87 + 52)) = v55;
  *(v56 + *(v57 + 56)) = 256;
  v58 = static Alignment.center.getter();
  v60 = v59;
  v61 = v83;
  v62 = &v83[*(v81 + 36)];
  sub_10011C0F0(v56, v62, &qword_100CBDCE8);
  v63 = (v62 + *(sub_10022C350(&qword_100CBDD10) + 36));
  *v63 = v58;
  v63[1] = v60;
  sub_10011C0F0(v39, v61, &qword_100CCE2E8);
  v64 = *v52;
  v65 = *(v52 + *(v51 + 24)) + 1.0;
  v66 = v84;
  sub_10011C0F0(v61, v84, &qword_100CCE2F0);
  v67 = v66 + *(v82 + 36);
  *v67 = v64;
  *(v67 + 8) = v65;
  LODWORD(v67) = *(v52 + *(v51 + 32));
  v69 = v90;
  v68 = v91;
  if (v67)
  {
    v70 = &enum case for BlendMode.destinationOut(_:);
  }

  else
  {
    v70 = &enum case for BlendMode.normal(_:);
  }

  v71 = v92;
  (*(v91 + 104))(v90, *v70, v92);
  v72 = sub_10022C350(&qword_100CCE300);
  v73 = v93;
  (*(v68 + 32))(v93 + *(v72 + 36), v69, v71);
  return sub_10011C0F0(v66, v73, &qword_100CCE2F8);
}

uint64_t sub_10064C0F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10064C170()
{
  result = type metadata accessor for DetailChartLollipopPoint();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ChartProxy();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DetailChartViewModel();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10064C240()
{
  result = type metadata accessor for DetailChartDataElement();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10064C2D8()
{
  result = qword_100CCE2D8;
  if (!qword_100CCE2D8)
  {
    sub_10022E824(&qword_100CCE2E0);
    sub_100006F64(&qword_100CCDFD8, &qword_100CCDFD0);
    sub_10045AF30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE2D8);
  }

  return result;
}

unint64_t sub_10064C3E4()
{
  result = qword_100CCE340;
  if (!qword_100CCE340)
  {
    sub_10022E824(&qword_100CCE338);
    sub_10064C470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE340);
  }

  return result;
}

unint64_t sub_10064C470()
{
  result = qword_100CCE348;
  if (!qword_100CCE348)
  {
    sub_10022E824(&qword_100CCE350);
    sub_100006F64(&qword_100CCE358, &qword_100CCE360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE348);
  }

  return result;
}

unint64_t sub_10064C528()
{
  result = qword_100CCE368;
  if (!qword_100CCE368)
  {
    sub_10022E824(&qword_100CCE300);
    sub_10064C5B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE368);
  }

  return result;
}

unint64_t sub_10064C5B4()
{
  result = qword_100CCE370;
  if (!qword_100CCE370)
  {
    sub_10022E824(&qword_100CCE2F8);
    sub_10064C640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE370);
  }

  return result;
}

unint64_t sub_10064C640()
{
  result = qword_100CCE378;
  if (!qword_100CCE378)
  {
    sub_10022E824(&qword_100CCE2F0);
    sub_10064C6F8();
    sub_100006F64(&qword_100CBDD50, &qword_100CBDD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE378);
  }

  return result;
}

unint64_t sub_10064C6F8()
{
  result = qword_100CCE380;
  if (!qword_100CCE380)
  {
    sub_10022E824(&qword_100CCE2E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE380);
  }

  return result;
}

unint64_t sub_10064C7B4()
{
  result = qword_100CCE388;
  if (!qword_100CCE388)
  {
    sub_10022E824(&qword_100CCE390);
    sub_10064C838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE388);
  }

  return result;
}

unint64_t sub_10064C838()
{
  result = qword_100CCE398;
  if (!qword_100CCE398)
  {
    sub_10022E824(&qword_100CCE320);
    sub_100006F64(&qword_100CCE3A0, &qword_100CCE308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE398);
  }

  return result;
}

uint64_t sub_10064C8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a1;
  v77 = a3;
  v78 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v8 = sub_100011330();
  *&v85 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_100003C38();
  v12 = (v10 - v11);
  v14 = __chkstk_darwin(v13);
  v16 = (&v72 - v15);
  v17 = __chkstk_darwin(v14);
  v19 = (&v72 - v18);
  __chkstk_darwin(v17);
  v21 = (&v72 - v20);
  type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  sub_1000037C4();
  __chkstk_darwin(v22);
  sub_100003C38();
  v84 = v23 - v24;
  v26 = __chkstk_darwin(v25);
  v80 = &v72 - v27;
  v28 = __chkstk_darwin(v26);
  v29 = __chkstk_darwin(v28);
  v31 = &v72 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v72 - v33;
  __chkstk_darwin(v32);
  v83 = *(a2 + 16);
  if (v83)
  {
    v73 = v36;
    v74 = &v72 - v35;
    v75 = a4;
    v79 = a2;
    sub_100014BA4();
    v81 = v37;
    v82 = v38;
    result = sub_10064F07C();
    for (i = 1; v83 != i; ++i)
    {
      if (i >= *(v79 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      sub_100014BA4();
      sub_10064F07C();
      sub_10001F3CC();
      sub_10064F07C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v41 = *v21;
      }

      else
      {
        sub_100010664();
        sub_10064F0D4();
        sub_10022C350(&qword_100CA53F8);
        Measurement.value.getter();
        v41 = v42;
        sub_10001C8D8();
        sub_10064D69C(v4, v43);
      }

      sub_10001F3CC();
      sub_10064F07C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = *v19;
      }

      else
      {
        sub_100010664();
        sub_10064F0D4();
        sub_10022C350(&qword_100CA53F8);
        Measurement.value.getter();
        v44 = v45;
        sub_10001C8D8();
        sub_10064D69C(v4, v46);
      }

      sub_100006400();
      if (v41 >= v44)
      {
        result = sub_10064D69C(v31, v47);
      }

      else
      {
        sub_10064D69C(v34, v47);
        sub_100004774();
        sub_1000046B4();
        result = sub_10064F0D4();
      }
    }

    sub_100004774();
    v48 = v74;
    sub_10064F0D4();
    *&v49 = sub_10064D730();
    v72 = v49;
    sub_100006400();
    sub_10064D69C(v48, v50);
    sub_100014BA4();
    result = sub_10064F07C();
    v51 = 1;
    a4 = v75;
    v52 = v79;
    while (v83 != v51)
    {
      if (v51 >= *(v52 + 16))
      {
        goto LABEL_32;
      }

      sub_100014BA4();
      sub_10064F07C();
      sub_10001F3CC();
      sub_10064F07C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v53 = *v16;
        v54 = v16[1];

        v55 = v53 + v54;
      }

      else
      {
        sub_100010664();
        sub_10064F0D4();
        v56 = sub_10001920C();
        sub_10022C350(v56);
        Measurement.value.getter();
        v55 = v57;
        sub_10001C8D8();
        sub_10064D69C(v4, v58);
      }

      sub_10001F3CC();
      sub_10064F07C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v59 = *v12;
        v60 = v12[1];

        v61 = v59 + v60;
      }

      else
      {
        sub_100010664();
        sub_10064F0D4();
        v62 = sub_10001920C();
        sub_10022C350(v62);
        Measurement.value.getter();
        v61 = v63;
        sub_10001C8D8();
        sub_10064D69C(v4, v64);
      }

      sub_100006400();
      if (v55 >= v61)
      {
        result = sub_10064D69C(v84, v65);
      }

      else
      {
        sub_10064D69C(v80, v65);
        sub_100004774();
        result = sub_10064F0D4();
      }

      ++v51;
    }

    sub_100004774();
    v66 = v73;
    sub_10064F0D4();
    *&v67 = sub_10064D858();
    v85 = v67;
    sub_100006400();
    result = sub_10064D69C(v66, v68);
    v69 = v77;
    v70 = v76;
    *&v71 = v72;
    *(&v71 + 1) = v85;
  }

  else
  {

    v70 = 0;
    v52 = 0;
    v69 = 0;
    v71 = 0uLL;
  }

  *a4 = v70;
  *(a4 + 8) = v52;
  *(a4 + 16) = v69;
  *(a4 + 24) = v71;
  return result;
}

uint64_t sub_10064CF20()
{
  sub_100003A00();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[3];
  v5 = v0[3];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = v1[2] == v0[2] && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = v1[5];
  v8 = v0[5];
  if (v7)
  {
    if (v8)
    {
      v9 = v1[4] == v0[4] && v7 == v8;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

void sub_10064CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v30 = v29;
  sub_100003828();
  __chkstk_darwin(v31);
  sub_10000C8C8();
  v32 = sub_10022C350(qword_100CA5418);
  sub_100003810(v32);
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = &a9 - v34;
  v36 = sub_10022C350(&qword_100CCE3A8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v37);
  sub_100019530();
  sub_10000C70C(0, &qword_100CA51B0);
  if (static Measurement.== infix<A, B>(_:_:)())
  {
    v38 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
    if (static Measurement.== infix<A, B>(_:_:)())
    {
      v39 = *(v38 + 24);
      v40 = *(v36 + 48);
      sub_100272EE8(v27 + v39, v21);
      sub_100272EE8(v25 + v39, v21 + v40);
      sub_100003A40(v21);
      if (!v41)
      {
        sub_100272EE8(v21, v35);
        sub_100003A40(v21 + v40);
        if (!v41)
        {
          (*(v30 + 32))(v20, v21 + v40, v28);
          sub_100006F64(&qword_100CCE3B0, &qword_100CA53F8);
          sub_1000046B4();
          dispatch thunk of static Equatable.== infix(_:_:)();
          v42 = *(v30 + 8);
          v43 = sub_100003940();
          v42(v43);
          (v42)(v35, v28);
          sub_1000180EC(v21, qword_100CA5418);
          goto LABEL_12;
        }

        (*(v30 + 8))(v35, v28);
LABEL_11:
        sub_1000180EC(v21, &qword_100CCE3A8);
        goto LABEL_12;
      }

      sub_100003A40(v21 + v40);
      if (!v41)
      {
        goto LABEL_11;
      }

      sub_1000180EC(v21, qword_100CA5418);
    }
  }

LABEL_12:
  sub_10000536C();
}

uint64_t sub_10064D2B8(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_100003A00();
  if (*(v4 + 8) != *(v5 + 8))
  {
    return 0;
  }

  v6 = v3[3];
  v7 = v2[3];
  if (v6)
  {
    if (v7)
    {
      v8 = v3[2] == v2[2] && v6 == v7;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_10:
  if (v3[4] == v2[4] && v3[5] == v2[5])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10064D38C()
{
  sub_10000C778();
  v1 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003C38();
  v9 = (v7 - v8);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = sub_10022C350(&qword_100CCE3B8);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_10000C8C8();
  v16 = (v0 + *(v15 + 56));
  sub_10064F07C();
  sub_10064F07C();
  sub_10001920C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001F3CC();
    sub_10064F07C();
    v17 = v9[1];
    v27 = *v9;
    v28 = v17;
    v29 = v9[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = v16[1];
      v30 = *v16;
      v31 = v18;
      v32 = v16[2];
      sub_10064D2B8(&v27, &v30);
      v35 = v28;
      sub_1000180EC(&v35, &qword_100CA6078);
      v36 = v29;
      sub_1002ED110(&v36);
      v33 = v31;
      sub_1000180EC(&v33, &qword_100CA6078);
      v34 = v32;
      sub_1002ED110(&v34);
LABEL_9:
      sub_100028880();
      sub_10064D69C(v0, v26);
      goto LABEL_10;
    }

    v36 = v9[1];
    sub_1000180EC(&v36, &qword_100CA6078);
    v30 = v29;
    sub_1002ED110(&v30);
  }

  else
  {
    sub_10001F3CC();
    sub_10064F07C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100010664();
      sub_10064F0D4();
      sub_10064CFDC(v12, v5, v20, v21, v22, v23, v24, v25, v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1));
      sub_10064D69C(v5, type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature);
      sub_10064D69C(v12, type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature);
      goto LABEL_9;
    }

    sub_10001C8D8();
    sub_10064D69C(v12, v19);
  }

  sub_1000180EC(v0, &qword_100CCE3B8);
LABEL_10:
  sub_10000536C();
}

uint64_t sub_10064D69C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_10064D730()
{
  v1 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_100019530();
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = (v5 - v4);
  type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  sub_10001F3CC();
  sub_10064F07C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
  }

  else
  {
    sub_100010664();
    sub_10001920C();
    sub_10064F0D4();
    sub_10022C350(&qword_100CA53F8);
    Measurement.value.getter();
    v7 = v8;
    sub_10001C8D8();
    sub_10064D69C(v0, v9);
  }

  return v7;
}

double sub_10064D858()
{
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100019530();
  type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  sub_10001F3CC();
  sub_10064F07C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v0;
    v7 = v0[1];

    return v6 + v7;
  }

  else
  {
    sub_100010664();
    sub_10064F0D4();
    sub_10022C350(&qword_100CA53F8);
    Measurement.value.getter();
    v8 = v9;
    sub_10001C8D8();
    sub_10064D69C(v4, v10);
  }

  return v8;
}

void sub_10064D998()
{
  sub_10000C778();
  v2 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100022E2C();
  v6 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_1000037D8();
  v15 = sub_1000115E8();
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v17 = sub_100011330();
  type metadata accessor for ComparisonCapsuleViewModel.Row(v17);
  sub_10001F3CC();
  sub_10064F07C();
  sub_10002FDB4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_100010664();
    sub_10064F0D4();
    static WeatherFormatStyle<>.weather.getter();
    (*(v4 + 104))(v0, enum case for WeatherFormatPlaceholder.none(_:), v2);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_10022C350(&qword_100CA53F8);
    sub_100114168();
    Measurement.formatted<A>(_:placeholder:unitManager:)();

    v18 = sub_1000046B4();
    v19(v18);
    (*(v8 + 8))(v12, v6);
    sub_10001C8D8();
    sub_10064D69C(v1, v20);
  }

  sub_10000536C();
}

void sub_10064DC10()
{
  sub_10000C778();
  v2 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100022E2C();
  v6 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v18 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v13 = sub_1000115E8();
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(v13);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  sub_10001F3CC();
  sub_10064F07C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_100010664();
    sub_10064F0D4();
    static WeatherFormatStyle<>.weather.getter();
    (*(v4 + 104))(v0, enum case for WeatherFormatPlaceholder.none(_:), v2);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_10022C350(&qword_100CA53F8);
    sub_100114168();
    Measurement.formatted<A>(_:placeholder:unitManager:)();

    v15 = sub_1000046B4();
    v16(v15);
    (*(v18 + 8))(v11, v6);
    sub_10001C8D8();
    sub_10064D69C(v1, v17);
  }

  sub_10000536C();
}

void sub_10064DEA4()
{
  sub_10000C778();
  type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v111 = v4;
  v112 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v109 = v6 - v5;
  v110 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v108 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v107 = v10 - v9;
  v11 = sub_10022C350(qword_100CA5418);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_10000C8C8();
  *&v116 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v113 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  v115 = v105 - v15;
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v17 = sub_1000115E8();
  v18 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(v17);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  v20 = v1[5];
  v117 = v1;
  v114 = v22 - v21;
  if (v20)
  {
    v23 = v1[4];
    v24 = v20;
  }

  else
  {
    if (v1[3])
    {
      v23 = v1[2];
      v24 = v1[3];
    }

    else
    {
      v23 = *v1;
      v24 = v1[1];
    }
  }

  sub_100109810();
  v26 = v25;
  v28 = *(v25 + 16);
  v27 = *(v25 + 24);
  if (v28 >= v27 >> 1)
  {
    sub_100031C84(v27);
    sub_1000252AC();
    v26 = v101;
  }

  *(v26 + 16) = v28 + 1;
  v29 = v26 + 16 * v28;
  *(v29 + 32) = v23;
  *(v29 + 40) = v24;
  v30 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  sub_10001F3CC();
  v31 = v117;
  sub_10064F07C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100028880();
    sub_10064D69C(v2, v32);
  }

  else
  {
    sub_100010664();
    v33 = v114;
    sub_10064F0D4();
    sub_100272EE8(v33 + *(v18 + 24), v0);
    v34 = v116;
    if (sub_100024D10(v0, 1, v116) == 1)
    {
      sub_10001C8D8();
      sub_10064D69C(v33, v35);
      sub_1000180EC(v0, qword_100CA5418);
    }

    else
    {
      v106 = v30;
      (*(v113 + 32))(v115, v0, v34);
      v36 = [objc_opt_self() mainBundle];
      v119._object = 0x8000000100AD9B90;
      sub_100003CD0();
      sub_100003F1C();
      v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v39, v40, v119);
      v105[0] = v41._object;
      v105[1] = v41._countAndFlagsBits;

      sub_10022C350(&qword_100CA40C8);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_100A2C3F0;
      v43 = v107;
      static WeatherFormatStyle<>.weather.getter();
      v45 = v111;
      v44 = v112;
      v46 = v109;
      (*(v111 + 104))(v109, enum case for WeatherFormatPlaceholder.none(_:), v112);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100114168();
      v47 = v110;
      v48 = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v50 = v49;

      (*(v45 + 8))(v46, v44);
      (*(v108 + 8))(v43, v47);
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = sub_100035744();
      *(v42 + 32) = v48;
      *(v42 + 40) = v50;
      v51 = String.init(format:_:)();
      v53 = v52;

      v55 = *(v26 + 16);
      v54 = *(v26 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_100031C84(v54);
        sub_1000252AC();
        v26 = v104;
      }

      v31 = v117;
      v56 = v114;
      (*(v113 + 8))(v115, v116);
      sub_10001C8D8();
      sub_10064D69C(v56, v57);
      *(v26 + 16) = v55 + 1;
      v58 = v26 + 16 * v55;
      *(v58 + 32) = v51;
      *(v58 + 40) = v53;
      v30 = v106;
    }
  }

  if (*(v31 + *(v30 + 24)) > 2u)
  {
    sub_10064D998();
    if (!v86)
    {
      goto LABEL_26;
    }

    v60 = v85;
    v87 = v86;
    v88 = [objc_opt_self() mainBundle];
    v122._object = 0x8000000100AD9A40;
    sub_100003CD0();
    sub_100003F1C();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v89, v90, v91, v92, v122);

    sub_10022C350(&qword_100CA40C8);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_100A2D320;
    *(v93 + 56) = &type metadata for String;
    v94 = sub_100035744();
    *(v93 + 64) = v94;
    *(v93 + 32) = v60;
    *(v93 + 40) = v87;
    sub_10064DC10();
    *(v93 + 96) = &type metadata for String;
    *(v93 + 104) = v94;
    *(v93 + 72) = v95;
    *(v93 + 80) = v96;
    String.init(format:_:)();
    sub_100017750();
    goto LABEL_23;
  }

  v59 = objc_opt_self();
  v60 = [v59 mainBundle];
  v120._object = 0x8000000100AD9A90;
  sub_100003CD0();
  sub_100003F1C();
  NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v63, v64, v120);

  sub_10022C350(&qword_100CA40C8);
  v65 = swift_allocObject();
  v116 = xmmword_100A2C3F0;
  *(v65 + 16) = xmmword_100A2C3F0;
  sub_10064DC10();
  v67 = v66;
  v69 = v68;
  *(v65 + 56) = &type metadata for String;
  v70 = sub_100035744();
  *(v65 + 64) = v70;
  *(v65 + 32) = v67;
  *(v65 + 40) = v69;
  sub_10002FDB4();
  v71 = String.init(format:_:)();
  v73 = v72;

  v75 = *(v26 + 16);
  v74 = *(v26 + 24);
  if (v75 >= v74 >> 1)
  {
    sub_100031C84(v74);
    sub_1000252AC();
    v26 = v103;
  }

  *(v26 + 16) = v75 + 1;
  v76 = v26 + 16 * v75;
  *(v76 + 32) = v71;
  *(v76 + 40) = v73;
  v31 = v117;
  sub_10064D998();
  if (v77)
  {
    sub_100017750();
    v79 = [v59 *(v78 + 3744)];
    v121._object = 0x8000000100AD9B10;
    sub_100003CD0();
    sub_100003F1C();
    v121._countAndFlagsBits = 0x1000000000000077;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v81, v82, v83, v121);

    v84 = swift_allocObject();
    *(v84 + 16) = v116;
    *(v84 + 56) = &type metadata for String;
    *(v84 + 64) = v70;
    *(v84 + 32) = v60;
    *(v84 + 40) = v31;
    sub_10002FDB4();
    String.init(format:_:)();
    sub_100017750();
LABEL_23:

    v98 = *(v26 + 16);
    v97 = *(v26 + 24);
    if (v98 >= v97 >> 1)
    {
      sub_100031C84(v97);
      sub_1000252AC();
      v26 = v102;
    }

    *(v26 + 16) = v98 + 1;
    v99 = v26 + 16 * v98;
    *(v99 + 32) = v60;
    *(v99 + 40) = v31;
  }

LABEL_26:
  v118 = v26;
  v100 = sub_100003940();
  sub_10022C350(v100);
  sub_100006F64(&qword_100CB2D00, &qword_100CCC930);
  BidirectionalCollection<>.joined(separator:)();
  sub_100017750();

  sub_100003940();
  sub_10000536C();
}

void sub_10064E7C8()
{
  sub_10000C778();
  sub_100003A00();
  v3 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v8 = v0[2];
  v7 = v0[3];
  v10 = v0[4];
  v9 = v0[5];
  v11 = *v2 == *v0 && v1[1] == v0[1];
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!v5)
  {
    if (v7)
    {
      goto LABEL_25;
    }

LABEL_15:
    if (v6)
    {
      if (!v9)
      {
        goto LABEL_25;
      }

      v13 = v4 == v10 && v6 == v9;
      if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v9)
    {
      goto LABEL_25;
    }

    type metadata accessor for ComparisonCapsuleViewModel.Row(0);
    sub_10064D38C();
    goto LABEL_25;
  }

  if (v7)
  {
    if (v3 == v8 && v5 == v7)
    {
      goto LABEL_15;
    }

    sub_10002FDB4();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  sub_10000536C();
}

uint64_t sub_10064E8F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10064D704();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_10064E920@<X0>(uint64_t *a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      result = static Color.primary.getter();
      v4 = &unk_100C78E28;
      v5 = &off_100C78FA8;
      goto LABEL_7;
    case 2:
      result = static Color.cyan.getter();
      v4 = &unk_100C78E50;
      v5 = &off_100C79018;
LABEL_7:
      a1[3] = v4;
      a1[4] = v5;
      *a1 = result;
      return result;
    case 3:
      sub_1009A97F4(__src);
      a1[3] = &unk_100C78ED0;
      a1[4] = &off_100C79088;
      goto LABEL_5;
    default:
      sub_1009A9714(__src);
      a1[3] = &unk_100C78DD0;
      a1[4] = &off_100C78F38;
LABEL_5:
      v6 = swift_allocObject();
      *a1 = v6;
      return memcpy((v6 + 16), __src, 0x61uLL);
  }
}

BOOL sub_10064EA10(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_100003A00();
  return (sub_1009EBF3C(*(v4 + 8), *(v5 + 8)) & 1) != 0 && (sub_1001D222C(*(v3 + 16), *(v2 + 16)) & 1) != 0 && *(v3 + 24) == *(v2 + 24) && *(v3 + 32) == *(v2 + 32);
}

void sub_10064EA98()
{
  sub_10000C778();
  v35 = v0;
  type metadata accessor for TimeStyle();
  sub_1000037C4();
  v33 = v4;
  v34 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v32 = v6 - v5;
  v7 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  sub_100011330();
  v11 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v24 = sub_100022E2C();
  type metadata accessor for ComparisonCapsuleViewModel.Row(v24);
  sub_10001F3CC();
  sub_10064F07C();
  sub_1000046B4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *(v1 + 16);
    v26 = *(v1 + 24);

    if (!v26)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_100010664();
    sub_10064F0D4();
    static WeatherFormatStyle<>.weather.getter();
    (*(v9 + 104))(v2, enum case for WeatherFormatPlaceholder.none(_:), v7);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_10022C350(&qword_100CA53F8);
    sub_100114168();
    v25 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v27 = v13;
    v26 = v28;

    (*(v9 + 8))(v2, v7);
    (*(v27 + 8))(v17, v11);
    sub_10001C8D8();
    sub_10064D69C(v22, v29);
  }

  if (*v35 == 3)
  {
    type metadata accessor for Style();
    static Style.componentTime.getter();
    sub_10000C70C(0, &qword_100CA53F0);
    static NSDateFormatter.prevailingPeriodSymbols.getter();
    sub_10064E920(v36);
    v30 = v37;
    v31 = v38;
    sub_1000161C0(v36, v37);
    (*(v31 + 40))(v30, v31);
    TimeStyle.formatTime(_:periodSymbols:font:)();
    sub_100017750();

    (*(v33 + 8))(v32, v34);
    sub_100006F14(v36);
  }

  else
  {
    v36[0] = v25;
    v36[1] = v26;
    sub_10002D5A4();
    Text.init<A>(_:)();
    sub_100017750();
  }

LABEL_8:
  sub_100003940();
  sub_10000536C();
}

void sub_10064EEBC()
{
  sub_10000C778();
  v2 = type metadata accessor for TimeStyle();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100019530();
  if (*v0 == 3)
  {
    type metadata accessor for Style();
    static Style.componentTime.getter();
    sub_10064DC10();
    sub_10000C70C(0, &qword_100CA53F0);
    static NSDateFormatter.prevailingPeriodSymbols.getter();
    sub_10064E920(v10);
    v6 = v11;
    v7 = v12;
    sub_1000161C0(v10, v11);
    (*(v7 + 48))(v6, v7);
    TimeStyle.formatTime(_:periodSymbols:font:)();
    sub_100037C04();

    (*(v4 + 8))(v1, v2);
    sub_100006F14(v10);
  }

  else
  {
    sub_10064DC10();
    v10[0] = v8;
    v10[1] = v9;
    sub_10002D5A4();
    Text.init<A>(_:)();
    sub_100037C04();
  }

  sub_10000536C();
}

uint64_t sub_10064F07C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10064F0D4()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10064F164()
{
  result = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ComparisonCapsuleViewModel.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10064F2D4()
{
  result = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10064F33C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_10064F37C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10064F400()
{
  sub_10064F484();
  if (v0 <= 0x3F)
  {
    sub_10064F4EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10064F484()
{
  if (!qword_100CBB7C8)
  {
    sub_10000C70C(255, &qword_100CA51B0);
    v0 = type metadata accessor for Measurement();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBB7C8);
    }
  }
}

void sub_10064F4EC()
{
  if (!qword_100CBB7D0)
  {
    sub_10022E824(&qword_100CA53F8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBB7D0);
    }
  }
}

unint64_t sub_10064F554()
{
  result = qword_100CCE598;
  if (!qword_100CCE598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE598);
  }

  return result;
}

uint64_t sub_10064F61C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_10064F628(uint64_t a1, uint64_t a2, int a3)
{
  v54 = a1;
  v50 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  v10 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainAction();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v46 - v21;
  v51 = a3;
  v52 = v23;
  if (a3)
  {
    v24 = _swiftEmptyArrayStorage;
    (*(v6 + 16))(v18, v54, v50, v20);
  }

  else
  {
    v49 = v15;
    v25 = v12;
    v26 = *&a2;
    LocationModel.identifier.getter();
    type metadata accessor for ListViewAction();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10004FF70();
    v24 = v27;
    v28 = v27[2];
    if (v28 >= v27[3] >> 1)
    {
      sub_10000CD44();
      v24 = v45;
    }

    v24[2] = v28 + 1;
    sub_1000CA208(v22, v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v28);
    v47 = objc_opt_self();
    v48 = *(v6 + 16);
    v29 = v50;
    v48(&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v50);
    v30 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v53;
    (*(v6 + 32))(v31 + v30, v10, v29);
    aBlock[4] = sub_1006514F4;
    v56 = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10030DC80;
    aBlock[3] = &unk_100C646C0;
    v32 = _Block_copy(aBlock);

    v12 = v25;

    v33 = [v47 scheduledTimerWithTimeInterval:0 repeats:v32 block:v26];
    _Block_release(v32);

    v15 = v49;
    (v48)(v18, v54, v29, v34);
  }

  v35 = (v51 & 1) == 0;
  v18[*(sub_10022C350(&qword_100CBBE20) + 48)] = v35;
  type metadata accessor for ListViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10000CD44();
    v24 = v42;
  }

  v36 = v24[2];
  v37 = v36 + 1;
  if (v36 >= v24[3] >> 1)
  {
    sub_10000CD44();
    v24 = v43;
  }

  v24[2] = v37;
  v38 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v39 = *(v12 + 72);
  sub_1000CA208(v18, v24 + v38 + v39 * v36);
  type metadata accessor for SearchViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if ((v36 + 2) > v24[3] >> 1)
  {
    sub_10000CD44();
    v24 = v44;
  }

  v24[2] = v36 + 2;
  sub_1000CA208(v15, v24 + v38 + v39 * v37);
  v40 = *(v53 + 16);
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  sub_10006D53C(v58, aBlock);
  v56 = v24;
  v57 = 0;
  sub_10004F1B0(aBlock, v40);
  sub_1000180EC(aBlock, &qword_100CA3510);
  return sub_1000180EC(v58, &unk_100CD81B0);
}

uint64_t sub_10064FB94(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MainAction();
  __chkstk_darwin(v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  LocationModel.identifier.getter();
  type metadata accessor for LocationViewerViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10004F034(v5, v8, v6);
  sub_1000180EC(v8, &unk_100CD81B0);
  return sub_1000547B8(v5);
}

uint64_t sub_10064FCB0()
{
  sub_10022C350(&qword_100CA3508);
  sub_100024924();
  sub_100003DDC();
  v0 = sub_10000478C();
  sub_100016C88(v0, xmmword_100A2D320);
  sub_100022CAC();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  sub_100022CAC();
  swift_storeEnumTagMultiPayload();
  sub_1000062B8();
  type metadata accessor for NotificationsOptInAction();
  swift_storeEnumTagMultiPayload();
  v1 = swift_storeEnumTagMultiPayload();
  v9 = sub_1000087C0(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20[0], v21, v22, v23, v24, v25, v26, v27[0], v27[1], v28);
  sub_100028614(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20[0], v21, v22, v23, v24, v0, v26);
  sub_1000180EC(v20, &qword_100CA3510);
  return sub_1000180EC(v27, &unk_100CD81B0);
}

uint64_t sub_10064FE64()
{
  sub_10022C350(&qword_100CA3508);
  sub_100024924();
  sub_100003DDC();
  v0 = sub_10000478C();
  sub_100016C88(v0, xmmword_100A2D320);
  sub_100022CAC();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  sub_100022CAC();
  swift_storeEnumTagMultiPayload();
  sub_1000062B8();
  type metadata accessor for NotificationsOptInAction();
  swift_storeEnumTagMultiPayload();
  v1 = swift_storeEnumTagMultiPayload();
  v9 = sub_1000087C0(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20[0], v21, v22, v23, v24, v25, v26, v27[0], v27[1], v28);
  sub_100028614(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20[0], v21, v22, v23, v24, v0, v26);
  sub_1000180EC(v20, &qword_100CA3510);
  return sub_1000180EC(v27, &unk_100CD81B0);
}

void sub_10064FF90(char a1)
{
  type metadata accessor for MainAction();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
      v9 = *(v1 + 16);
      sub_10022C350(&qword_100CA3508);
      sub_100019C1C();
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100A2C3F0;
      type metadata accessor for ListViewAction();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ViewAction();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_100014BBC();
      sub_10006D53C(v15, v11);
      v13 = v10;
      v14 = 0;
      sub_10004F1B0(v11, v9);
      sub_1000180EC(v11, &qword_100CA3510);
      sub_1000180EC(v15, &unk_100CD81B0);
      break;
    case 2:
      v7 = 3;
      goto LABEL_4;
    case 5:
    case 6:
      return;
    default:
      v7 = 1;
LABEL_4:
      if (sub_1008CA570(v7))
      {
        v8 = *(v1 + 16);
        type metadata accessor for ListViewAction();
        swift_storeEnumTagMultiPayload();
        type metadata accessor for ViewAction();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        sub_10004F034(v6, v11, v8);
        sub_1000180EC(v11, &unk_100CD81B0);
        sub_1000547B8(v6);
      }

      break;
  }
}

void sub_10065020C(char a1)
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

uint64_t sub_100650310()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10000CC9C();
  v3 = *(v0 + 16);
  type metadata accessor for ListViewAction();
  sub_100017BC0();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  sub_100017BC0();
  swift_storeEnumTagMultiPayload();
  sub_1000062B8();
  sub_100014BBC();
  sub_10004F034(v1, v5, v3);
  sub_1000180EC(v5, &unk_100CD81B0);
  return sub_1000547B8(v1);
}

uint64_t sub_1006503EC()
{
  result = sub_1008CA570(6);
  if (result)
  {
    sub_10022C350(&qword_100CA3508);
    type metadata accessor for MainAction();
    sub_100003DDC();
    sub_100019C1C();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100A2C3F0;
    type metadata accessor for ListViewAction();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction();
    swift_storeEnumTagMultiPayload();
    v2 = swift_storeEnumTagMultiPayload();
    v10 = sub_1000087C0(v2, v3, v4, v5, v6, v7, v8, v9, v18, v20[0], v21, v22, v23, v24, v25, v26, v27[0], v27[1], v28);
    sub_100028614(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20[0], v21, v22, v23, v24, v1, v26);
    sub_1000180EC(v20, &qword_100CA3510);
    return sub_1000180EC(v27, &unk_100CD81B0);
  }

  return result;
}

uint64_t sub_100650528(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  v9 = *(v2 + 16);
  *v8 = a1;
  v8[1] = a2;
  type metadata accessor for LocationsAction();
  sub_100022CAC();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_100014BBC();
  sub_10004F034(v8, v11, v9);
  sub_1000180EC(v11, &unk_100CD81B0);
  return sub_1000547B8(v8);
}

uint64_t sub_100650604()
{
  v2 = type metadata accessor for IndexSet.Index();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_10000CC9C();
  IndexSet.startIndex.getter();
  v6 = IndexSet.subscript.getter();
  (*(v4 + 8))(v1, v2);
  v7 = *(v0 + 16);
  sub_10022C350(&qword_100CA3508);
  sub_100024924();
  sub_100003DDC();
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100A2D320;
  *(v10 + v9) = v6;
  type metadata accessor for LocationsAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SearchViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  sub_1000062B8();
  v11 = sub_100013A8C();
  sub_10006D53C(v11, v13);
  v14 = v10;
  v15 = 0;
  sub_10004F1B0(v13, v7);
  sub_1000180EC(v13, &qword_100CA3510);
  return sub_1000180EC(v16, &unk_100CD81B0);
}

uint64_t sub_100650814(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v31 = *(v2 + 16);
  sub_10022C350(&qword_100CA3508);
  type metadata accessor for MainAction();
  sub_100003DDC();
  v7 = *(v6 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100A2D320;
  type metadata accessor for ListViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  sub_10004E840();
  v11 = (v10 + v9 + v7);
  if (v5)
  {
    *v11 = a1;
    v11[1] = a2;
    type metadata accessor for SearchViewAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v12 = sub_10004E840();
    sub_1000087C0(v12, v13, v14, v15, v16, v17, v18, v19, v31, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    v39 = v10;
    LOBYTE(v40) = 0;

    sub_10004F1B0(&v34, v32);
    sub_1000180EC(&v34, &qword_100CA3510);
    sub_1000180EC(&v41, &unk_100CD81B0);
    swift_beginAccess();
    sub_100035B30(v2 + 72, &v34);
    v20 = v37;
    v21 = v38;
    sub_1000161C0(&v34, v37);
    (*(v21 + 40))(a1, a2, v20, v21);
    return sub_100006F14(&v34);
  }

  else
  {
    type metadata accessor for SearchViewAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v23 = sub_10004E840();
    sub_1000087C0(v23, v24, v25, v26, v27, v28, v29, v30, v31, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    v39 = v10;
    LOBYTE(v40) = 0;
    sub_10004F1B0(&v34, v33);
    sub_1000180EC(&v34, &qword_100CA3510);
    return sub_1000180EC(&v41, &unk_100CD81B0);
  }
}

uint64_t sub_100650AA4(char a1)
{
  type metadata accessor for MainAction();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_10000CC9C();
  v7 = *(v1 + 16);
  if (a1)
  {
    *v2 = 1;
    type metadata accessor for ListViewAction();
    sub_100017BC0();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction();
    sub_100017BC0();
    swift_storeEnumTagMultiPayload();
    sub_1000062B8();
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_10004F034(v2, v12, v7);
    sub_1000180EC(v12, &unk_100CD81B0);
    return sub_1000547B8(v2);
  }

  else
  {
    sub_10022C350(&qword_100CA3508);
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100A2D320;
    *(v10 + v9) = 0;
    type metadata accessor for ListViewAction();
    sub_100022CAC();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction();
    swift_storeEnumTagMultiPayload();
    sub_1000062B8();
    type metadata accessor for SearchViewAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1000062B8();
    v11 = sub_100013A8C();
    sub_10006D53C(v11, v12);
    v14 = v10;
    v15 = 0;
    sub_10004F1B0(v12, v7);
    sub_1000180EC(v12, &qword_100CA3510);
    return sub_1000180EC(v16, &unk_100CD81B0);
  }
}

uint64_t sub_100650CCC(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = result;
    swift_beginAccess();
    sub_100035B30(v2 + 72, v8);
    v6 = v9;
    v7 = v10;
    sub_1000161C0(v8, v9);
    (*(v7 + 40))(v5, a2, v6, v7);
    return sub_100006F14(v8);
  }

  return result;
}

uint64_t sub_100650D84()
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v20 = v3;
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_10000CC9C();
  v19 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = *(v0 + 16);
  *(v13 - v12) = 1;
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v23 = 0;
  aBlock = 0u;
  v22 = 0u;
  sub_10004F034(v14, &aBlock, v15);
  sub_1000180EC(&aBlock, &unk_100CD81B0);
  sub_1000547B8(v14);
  sub_100040690();
  v16 = static OS_dispatch_queue.main.getter();
  v23 = sub_1006514EC;
  v24 = v0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_1000742F0;
  *(&v22 + 1) = &unk_100C64670;
  v17 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v20 + 8))(v1, v2);
  return (*(v6 + 8))(v10, v19);
}

uint64_t sub_10065107C(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_10022C350(&qword_100CA3508);
  v2 = *(type metadata accessor for MainAction() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2D320;
  *(v4 + v3) = 1;
  type metadata accessor for ListViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10006D53C(v9, v6);
  v7 = v4;
  v8 = 0;
  sub_10004F1B0(v6, v1);
  sub_1000180EC(v6, &qword_100CA3510);
  return sub_1000180EC(v9, &unk_100CD81B0);
}

uint64_t sub_100651234()
{

  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 72);
  sub_100006F14(v0 + 112);

  return v0;
}

uint64_t sub_100651274()
{
  sub_100651234();

  return swift_deallocClassInstance();
}

void sub_1006512D0(uint64_t a1)
{
  sub_1000161C0((v1 + 32), *(v1 + 56));

  sub_1003C17F4(a1);
}

uint64_t sub_100651314(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  *(v5 - v4) = a2;
  type metadata accessor for SearchViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_100014BBC();

  sub_1000047B4();
  sub_1000180EC(v8, &unk_100CD81B0);
  return sub_1000547B8(v6);
}

uint64_t sub_1006513F8()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_1000037D8();
  v3 = v2 - v1;
  swift_errorRetain();
  CodableError.init(_:)();
  type metadata accessor for SearchViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_100014BBC();
  sub_1000047B4();
  sub_1000180EC(v5, &unk_100CD81B0);
  return sub_1000547B8(v3);
}

uint64_t sub_1006514F4(uint64_t a1)
{
  type metadata accessor for LocationModel();
  v3 = *(v1 + 16);

  return sub_10064FB94(a1, v3);
}

uint64_t sub_1006515A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 210))
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

uint64_t sub_1006515E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 210) = 1;
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

    *(result + 210) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100651688@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_opt_self() mainBundle];
  v18._object = 0x8000000100AD9CE0;
  v7._object = 0x8000000100AD9CC0;
  v18._countAndFlagsBits = 0xD000000000000053;
  v7._countAndFlagsBits = 0xD000000000000012;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v18);

  v15 = v9;
  v16 = 0;
  v17 = 0;
  v14 = v1;
  sub_10022C350(&qword_100CCE738);
  sub_10051106C();
  sub_100006F64(&qword_100CCE740, &qword_100CCE738);
  Section<>.init(header:content:)();
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = a1 + *(sub_10022C350(&qword_100CCE748) + 36);
  v11 = type metadata accessor for AutomationInfoProperty();
  sub_1003AFC6C(v5, v10 + *(v11 + 24));
  sub_1001C9E84(v5);
  *v10 = 0;
  *(v10 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v10 + 16) = result;
  *(v10 + 24) = 0;
  return result;
}

uint64_t sub_1006518B0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v51 = v3;
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v128, v2, 0xD2uLL);
  sub_10022C350(qword_100CCE750);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  memcpy(v128, __src, 0xD2uLL);
  Binding.subscript.getter();

  sub_10003FDF4(__src, qword_100CCE750);
  v49 = v122[1];
  v50 = v122[0];
  v48 = v122[2];
  memcpy(v123, v2, 0xD2uLL);
  Binding.wrappedValue.getter();
  v46 = v126[0];
  v47 = v126[1];

  sub_1002DD1E0(v126);
  memcpy(v123, v2, 0xD2uLL);
  Binding.wrappedValue.getter();
  v44 = v127[2];
  v45 = v127[3];

  sub_1002DD1E0(v127);
  memcpy(v123, v2, 0xD2uLL);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  memcpy(v123, v128, 0xD2uLL);
  Binding.subscript.getter();

  sub_10003FDF4(v128, qword_100CCE750);
  v42 = v114[1];
  v43 = v114[0];
  v41 = v114[2];
  memcpy(v122, v2, 0xD2uLL);
  Binding.wrappedValue.getter();
  v39 = v129[5];
  v40 = v129[6];

  sub_1002DD1E0(v129);
  memcpy(v122, v2, 0xD2uLL);
  Binding.wrappedValue.getter();
  v37 = v130[7];
  v38 = v130[8];

  sub_1002DD1E0(v130);
  memcpy(v123, v2, 0xD2uLL);
  Binding.wrappedValue.getter();
  memcpy(v131, v122, 0xC2uLL);
  sub_1002DD1E0(v131);
  if (v131[72] == 1)
  {
    memcpy(v122, v2, 0xD2uLL);
    Binding.projectedValue.getter();
    swift_getKeyPath();
    memcpy(v122, v123, 0xD2uLL);
    Binding.subscript.getter();

    sub_10003FDF4(v123, qword_100CCE750);
    v54 = LOBYTE(v114[2]);
    v56 = v114[0];

    v52 = v114[1];

    v53 = &off_100C441B8;
  }

  else
  {
    v56 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
  }

  memcpy(v122, __dst, 0xD2uLL);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  memcpy(v122, v123, 0xD2uLL);
  Binding.subscript.getter();

  sub_10003FDF4(v123, qword_100CCE750);
  v35 = v106[1];
  v36 = v106[0];
  v34 = v106[2];
  memcpy(v114, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  v32 = v116;
  v33 = v117;

  sub_1002DD1E0(v115);
  memcpy(v114, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  v30 = v119;
  v31 = v120;

  sub_1002DD1E0(v118);
  memcpy(v122, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  memcpy(v121, v114, 0xC2uLL);
  sub_1002DD1E0(v121);
  if (v121[112] == 1)
  {
    memcpy(v114, __dst, 0xD2uLL);
    Binding.projectedValue.getter();
    swift_getKeyPath();
    memcpy(v114, v122, 0xD2uLL);
    Binding.subscript.getter();

    sub_10003FDF4(v122, qword_100CCE750);
    v29 = LOBYTE(v106[2]);
    v55 = v106[0];

    v4 = v106[1];

    v5 = &off_100C44260;
  }

  else
  {
    v55 = 0;
    v4 = 0;
    v29 = 0;
    v5 = 0;
  }

  memcpy(v114, __dst, 0xD2uLL);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  memcpy(v114, v122, 0xD2uLL);
  Binding.subscript.getter();

  sub_10003FDF4(v122, qword_100CCE750);
  v27 = v98[1];
  v28 = v98[0];
  v26 = v98[2];
  memcpy(v106, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  v24 = v108;
  v25 = v109;

  sub_1002DD1E0(v107);
  memcpy(v106, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  v22 = v111;
  v23 = v112;

  sub_1002DD1E0(v110);
  memcpy(v114, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  memcpy(v113, v106, 0xC2uLL);
  sub_1002DD1E0(v113);
  if (v113[152] == 1)
  {
    memcpy(v106, __dst, 0xD2uLL);
    Binding.projectedValue.getter();
    swift_getKeyPath();
    memcpy(v106, v114, 0xD2uLL);
    Binding.subscript.getter();

    sub_10003FDF4(v114, qword_100CCE750);
    v6 = LOBYTE(v98[2]);
    v21 = v98[0];

    v20 = v98[1];

    v7 = &off_100C44288;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v6 = 0;
    v7 = 0;
  }

  memcpy(v106, __dst, 0xD2uLL);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  memcpy(v106, v114, 0xD2uLL);
  Binding.subscript.getter();

  sub_10003FDF4(v114, qword_100CCE750);
  v18 = v105[1];
  v19 = v105[0];
  v17 = v105[2];
  memcpy(v98, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  v15 = v100;
  v16 = v101;

  sub_1002DD1E0(v99);
  memcpy(v98, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  v13 = v103;
  v14 = v104;

  sub_1002DD1E0(v102);
  memcpy(v106, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  memcpy(v105, v98, 0xC2uLL);
  sub_1002DD1E0(v105);
  if (LOBYTE(v105[24]) == 1)
  {
    memcpy(v98, __dst, 0xD2uLL);
    Binding.projectedValue.getter();
    swift_getKeyPath();
    memcpy(v98, v106, 0xD2uLL);
    Binding.subscript.getter();

    sub_10003FDF4(v106, qword_100CCE750);
    v8 = v93;
    v9 = v91;

    v10 = v92;

    v11 = &off_100C442B0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    v11 = 0;
  }

  v98[0] = v50;
  v98[1] = v49;
  LOBYTE(v98[2]) = v48;
  v98[3] = v46;
  v98[4] = v47;
  v98[5] = v44;
  v98[6] = v45;
  v91 = v43;
  v92 = v42;
  v93 = v41;
  v94 = v39;
  v95 = v40;
  v96 = v37;
  v97 = v38;
  v106[0] = v98;
  v106[1] = &v91;
  v87 = v56;
  v88 = v52;
  v89 = v54;
  v90 = v53;
  v81[0] = v36;
  v81[1] = v35;
  v82 = v34;
  v83 = v32;
  v84 = v33;
  v85 = v30;
  v86 = v31;
  v106[2] = &v87;
  v106[3] = v81;
  v77 = v55;
  v78 = v4;
  v79 = v29;
  v80 = v5;
  v71[0] = v28;
  v71[1] = v27;
  v72 = v26;
  v73 = v24;
  v74 = v25;
  v75 = v22;
  v76 = v23;
  v106[4] = &v77;
  v106[5] = v71;
  v67 = v21;
  v68 = v20;
  v69 = v6;
  v70 = v7;
  v61[0] = v19;
  v61[1] = v18;
  v62 = v17;
  v63 = v15;
  v64 = v16;
  v65 = v13;
  v66 = v14;
  v106[6] = &v67;
  v106[7] = v61;
  v57 = v9;
  v58 = v10;
  v59 = v8;
  v60 = v11;
  v106[8] = &v57;
  sub_1003E915C(v106, v51);
  sub_100652540(v21, v20);
  sub_100652540(v55, v4);
  sub_100652540(v56, v52);
  sub_100652540(v9, v10);
  sub_100652540(v57, v58);

  sub_100652540(v67, v68);

  sub_100652540(v77, v78);

  sub_100652540(v87, v88);
}

uint64_t sub_100652540(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100652590()
{
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Array();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100652620(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    v17 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      return sub_100024D10((v17 + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_100652770(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v8 & 0x80000000) != 0)
          {

            sub_10001B350((v18 + v10 + 8) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *v18 = v19;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_10065297C()
{
  result = qword_100CCE7D8;
  if (!qword_100CCE7D8)
  {
    sub_10022E824(&qword_100CCE748);
    sub_100652A08();
    sub_100652ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE7D8);
  }

  return result;
}

unint64_t sub_100652A08()
{
  result = qword_100CCE7E0;
  if (!qword_100CCE7E0)
  {
    sub_10022E824(&qword_100CCE7E8);
    sub_10051106C();
    sub_100006F64(&qword_100CCE740, &qword_100CCE738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE7E0);
  }

  return result;
}

unint64_t sub_100652ACC()
{
  result = qword_100CA3F68;
  if (!qword_100CA3F68)
  {
    type metadata accessor for AutomationInfoViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3F68);
  }

  return result;
}

uint64_t sub_100652B40()
{
  sub_10022C350(&unk_100CB3AA0);
  Binding.projectedValue.getter();
  sub_10022C350(&qword_100CA2CF0);
  sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
  return Toggle.init(isOn:label:)();
}

uint64_t sub_100652CB4@<X0>(uint64_t a1@<X8>)
{
  sub_10002D5A4();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100652D20@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CBB908);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;

  Image.init(systemName:)();
  static Image.TemplateRenderingMode.macSafeOriginal.getter();
  v5 = type metadata accessor for Image.TemplateRenderingMode();
  sub_10001B350(v4, 0, 1, v5);
  v6 = Image.renderingMode(_:)();

  result = sub_10003FDF4(v4, &qword_100CBB908);
  *a1 = v6;
  return result;
}

uint64_t sub_100652E18()
{
  type metadata accessor for Binding();

  return Binding.projectedValue.getter();
}

uint64_t sub_100652EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for InlinePickerStyle();
  v71 = *(v3 - 8);
  __chkstk_darwin(v3);
  v70 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Binding();
  __chkstk_darwin(v6 - 8);
  v68 = &v47 - v7;
  v8 = type metadata accessor for Array();
  v9 = *(a1 + 32);
  v81 = &type metadata for Text;
  v82 = v5;
  v83 = &protocol witness table for Text;
  v84 = v9;
  v10 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v81 = v8;
  v82 = v5;
  v83 = OpaqueTypeMetadata2;
  v84 = WitnessTable;
  v61 = v10;
  v85 = v10;
  v13 = type metadata accessor for ForEach();
  v65 = v13;
  v81 = &type metadata for Text;
  v82 = v5;
  v83 = &protocol witness table for Text;
  v84 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = swift_getWitnessTable();
  v81 = &type metadata for Text;
  v82 = v5;
  v83 = v13;
  v84 = &protocol witness table for Text;
  v85 = v10;
  v86 = v63;
  v14 = type metadata accessor for Picker();
  v67 = *(v14 - 8);
  __chkstk_darwin(v14);
  v60 = &v47 - v15;
  v16 = swift_getWitnessTable();
  v81 = v14;
  v82 = v3;
  v51 = v3;
  v83 = v16;
  v84 = &protocol witness table for InlinePickerStyle;
  v17 = v16;
  v52 = v16;
  v18 = swift_getOpaqueTypeMetadata2();
  v56 = v18;
  v62 = *(v18 - 8);
  __chkstk_darwin(v18);
  v50 = &v47 - v19;
  v81 = v14;
  v82 = v3;
  v83 = v17;
  v84 = &protocol witness table for InlinePickerStyle;
  v55 = swift_getOpaqueTypeConformance2();
  v81 = v18;
  v82 = v55;
  v57 = &opaque type descriptor for <<opaque return type of View.labelsHidden()>>;
  v54 = swift_getOpaqueTypeMetadata2();
  v59 = *(v54 - 8);
  __chkstk_darwin(v54);
  v47 = &v47 - v20;
  v53 = type metadata accessor for ModifiedContent();
  v64 = *(v53 - 8);
  __chkstk_darwin(v53);
  v48 = &v47 - v21;
  sub_10022E824(&qword_100CA5110);
  v22 = type metadata accessor for ModifiedContent();
  v66 = *(v22 - 8);
  __chkstk_darwin(v22);
  v49 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v58 = &v47 - v25;
  LocalizedStringKey.init(stringLiteral:)();
  v26 = a1;
  v27 = v69;
  sub_100652E18();
  v28 = *(v26 + 24);
  v73 = v5;
  v74 = v28;
  v75 = v61;
  v76 = v27;
  v29 = v60;
  Picker<>.init(_:selection:content:)();
  v30 = v70;
  InlinePickerStyle.init()();
  v31 = v50;
  v32 = v51;
  View.pickerStyle<A>(_:)();
  (*(v71 + 8))(v30, v32);
  (*(v67 + 8))(v29, v14);
  v33 = v47;
  v34 = v56;
  v35 = v55;
  View.labelsHidden()();
  (*(v62 + 8))(v31, v34);
  static Edge.Set.leading.getter();
  v81 = v34;
  v82 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v48;
  v38 = v54;
  View.padding(_:_:)();
  (*(v59 + 8))(v33, v38);
  static Color.blue.getter();
  v79 = v36;
  v80 = &protocol witness table for _PaddingLayout;
  v39 = v53;
  v40 = swift_getWitnessTable();
  v41 = v49;
  View.accentColor(_:)();

  (*(v64 + 8))(v37, v39);
  v42 = sub_100006F64(&qword_100CE0FF0, &qword_100CA5110);
  v77 = v40;
  v78 = v42;
  v43 = swift_getWitnessTable();
  v44 = v58;
  sub_1000833D8(v41, v22, v43);
  v45 = *(v66 + 8);
  v45(v41, v22);
  sub_1000833D8(v44, v22, v43);
  return (v45)(v44, v22);
}

uint64_t sub_1006537B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v24 = type metadata accessor for Array();
  v21[1] = &unk_100AEBB48;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v31 = v24;
  v32 = a2;
  v33 = OpaqueTypeMetadata2;
  v34 = WitnessTable;
  v35 = a4;
  v9 = type metadata accessor for ForEach();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v30 = *(a1 + *(type metadata accessor for ConditionPicker() + 44));
  v26 = a2;
  v27 = a3;
  v28 = a4;
  swift_getKeyPath();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;

  v31 = &type metadata for Text;
  v32 = a2;
  v33 = &protocol witness table for Text;
  v34 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  v29 = OpaqueTypeConformance2;
  v17 = swift_getWitnessTable();
  sub_1000833D8(v12, v9, v17);
  v18 = *(v10 + 8);
  v18(v12, v9);
  sub_1000833D8(v15, v9, v17);
  return (v18)(v15, v9);
}

uint64_t sub_100653A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v29 = a4;
  v31 = a2;
  v30 = &type metadata for Text;
  v32 = &protocol witness table for Text;
  v33 = a3;
  v26 = &unk_100AEBB48;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  v27 = OpaqueTypeMetadata2;
  v28 = v7;
  __chkstk_darwin(OpaqueTypeMetadata2);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v25 = &v24 - v11;
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v31 = v12;
  sub_10002D5A4();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v30 = v13;
  v31 = v14;
  v17 = v16 & 1;
  LOBYTE(v32) = v16 & 1;
  v33 = v18;
  j___s7Weather38LocationSearchEntityFromStringResolverV23__derived_struct_equalsySbAC_ACtFZ();
  sub_10022C398();
  sub_10010CD64(v13, v15, v17);

  v30 = &type metadata for Text;
  v31 = a2;
  v32 = &protocol witness table for Text;
  v33 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v25;
  v21 = v27;
  sub_1000833D8(v9, v27, OpaqueTypeConformance2);
  v22 = *(v28 + 8);
  v22(v9, v21);
  sub_1000833D8(v20, v21, OpaqueTypeConformance2);
  return (v22)(v20, v21);
}

uint64_t sub_100653CE8(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA23E0 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA23F0 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA23E8 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA23D8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA23D0 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_100653E54(char a1, char a2, uint64_t a3)
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
  v37 = sub_100653CE8(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_map;
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
  sub_10031694C(a3 + *(v39 + 20) + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
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

uint64_t sub_1006544D8(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v131 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_map;
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
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_nextHourPrecipitation);
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
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_airQuality);
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
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_nextHourPrecipitation);
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
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_airQuality);
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

void sub_100654DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  qword_100D90660 = v8;
}

void sub_100654ED8()
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
  qword_100D90668 = v0;
}

void sub_100654FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC30;
  v34 = v15;
  v35 = v14;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BB80;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v36 = v13;
  v37 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC50;
  v38 = v11;
  v39 = &v10;
  sub_1000177F4(a2, a3, a4, a5, a6, a7, a8, &v9, 2, 4, 4, 5, 1, 2, 7, 8, 2, 3, 5, 6);
  qword_100D90670 = v8;
}

void sub_10065512C()
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
  qword_100D90678 = v0;
}

void sub_100655260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  qword_100D90680 = v8;
}

uint64_t sub_100655380(uint64_t a1, void (*a2)(char *))
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

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather33LocationSevereNhpAqiConfiguration8_Storage_map, v21, type metadata accessor for LocationViewComponent);
  a2(v21);
  sub_100020648();
  sub_10001B350(v28, 0, 1, v35);
  sub_1000176E8(OBJC_IVAR____TtCV7Weather33LocationSevereNhpAqiConfiguration8_Storage_airQuality);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather33LocationSevereNhpAqiConfiguration8_Storage_nextHourPrecipitation);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather33LocationSevereNhpAqiConfiguration8_Storage_severeAlert);
  a2(v21);
  sub_100020648();
  sub_100035AD0(v28, v25, &qword_100CA5008);
  sub_10031694C(v17, v36, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v14, v37, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v2, v38, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for SevereNhpAqiContent._Storage(0);
  swift_allocObject();
  sub_1002D9758();
  v32 = v31;
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v17, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v28, &qword_100CA5008);
  return v32;
}

uint64_t sub_100655714(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  sub_10022C350(&qword_100CA3508);
  v6 = *(type metadata accessor for MainAction() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100A2D320;
  v10 = v9 + v8;
  sub_1006559C8(a1, v10);
  type metadata accessor for MoonDetailViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v10 + v7) = a2;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_10006D53C(v15, v12);
  v13 = v9;
  v14 = 0;
  sub_10004F1B0(v12, v5);
  sub_10003FDF4(v12, &qword_100CA3510);
  return sub_10003FDF4(v15, &unk_100CD81B0);
}

uint64_t sub_1006558B0(char a1)
{
  v3 = type metadata accessor for MainAction();
  __chkstk_darwin(v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  *v5 = a1;
  type metadata accessor for MoonDetailViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10004F034(v5, v8, v6);
  sub_10003FDF4(v8, &unk_100CD81B0);
  return sub_1000547B8(v5);
}

uint64_t sub_1006559C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonDetailSelectedDate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100655A2C()
{
  static AnyTransition.opacity.getter();
  if (qword_100CA2068 != -1)
  {
    swift_once();
  }

  v0 = AnyTransition.animation(_:)();

  qword_100D90688 = v0;
  return result;
}

double sub_100655ABC()
{
  v0 = type metadata accessor for LocationComponentBackgroundConfiguration(0);
  sub_100007074(v0, qword_100D90690);
  v1 = sub_10000703C(v0, qword_100D90690);
  sub_100655B24(v1);
  v2 = &v1[*(v0 + 20)];
  result = 0.0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  return result;
}

uint64_t sub_100655B24@<X0>(char *a1@<X8>)
{
  v2 = sub_10022C350(qword_100CCEA00);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = v9[13];
  v16(&v25 - v14, enum case for DynamicTypeSize.small(_:), v8, v13);
  (v16)(v11, enum case for DynamicTypeSize.accessibility5(_:), v8);
  sub_10001F3EC();
  sub_1006560F4(v17, v18);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v20 = v9[4];
    v20(v7, v15, v8);
    v20(&v7[*(v2 + 48)], v11, v8);
    sub_100656210(v7, v4);
    v21 = *(v2 + 48);
    v20(a1, v4, v8);
    v22 = v9[1];
    v22(&v4[v21], v8);
    sub_100656280(v7, v4);
    v23 = *(v2 + 48);
    v24 = sub_10022C350(&qword_100CB7090);
    v20(&a1[*(v24 + 36)], &v4[v23], v8);
    return (v22)(v4, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100655DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1006560F4(&qword_100CCE9D8, type metadata accessor for LocationComponentBackgroundConfiguration);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100655E64()
{
  v0 = type metadata accessor for LocationComponentBackgroundConfiguration(0);
  sub_100007074(v0, qword_100CCE898);
  v1 = sub_10000703C(v0, qword_100CCE898);
  if (qword_100CA2400 != -1)
  {
    swift_once();
  }

  v2 = sub_10000703C(v0, qword_100D90690);

  return sub_1001A0ED4(v2, v1);
}

uint64_t sub_100655F00@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2408 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocationComponentBackgroundConfiguration(0);
  v3 = sub_10000703C(v2, qword_100CCE898);

  return sub_1001A0ED4(v3, a1);
}

BOOL sub_100655F7C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DynamicTypeSize();
  sub_10001F3EC();
  sub_1006560F4(v4, v5);
  if ((sub_10001C8F0() & 1) == 0)
  {
    return 0;
  }

  sub_10022C350(&qword_100CB7090);
  if ((sub_10001067C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for LocationComponentBackgroundConfiguration(0) + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 32);
  v9 = a2 + v6;
  if ((v8 & 1) == 0)
  {
    return (*(v9 + 32) & 1) == 0 && CGRectEqualToRect(*v7, *v9);
  }

  return (*(v9 + 32) & 1) != 0;
}

BOOL sub_10065604C()
{
  type metadata accessor for DynamicTypeSize();
  sub_10001F3EC();
  sub_1006560F4(v0, v1);
  result = 0;
  if (sub_10001C8F0())
  {
    sub_10022C350(&qword_100CB7090);
    if (sub_10001067C())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1006560F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100656194(uint64_t a1)
{
  result = sub_1006561BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1006561BC()
{
  result = qword_100CCE9F8;
  if (!qword_100CCE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCE9F8);
  }

  return result;
}

uint64_t sub_100656210(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(qword_100CCEA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100656280(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(qword_100CCEA00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006562F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_100024D10((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_100656470(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
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
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 16] & ~v10;

            sub_10001B350(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
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
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1006566BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SlowDeviceGridView();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  v20[0] = *(a1 + 8);
  v15 = type metadata accessor for LocationGridDeterminationView();
  (*(v5 + 16))(v7, a1 + *(v15 + 36), a2);
  v16 = swift_unknownObjectRetain();
  sub_1006568E0(v16, v20[0], v7, a2, v11);
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v11, v8, WitnessTable);
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_1000833D8(v14, v8, WitnessTable);
  return (v18)(v14, v8);
}

uint64_t sub_1006568E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for SlowDeviceGridView();
  (*(*(a4 - 8) + 32))(&a5[v8[9]], a3, a4);
  v9 = v8[10];
  memset(__src, 0, sizeof(__src));
  v14 = 255;
  v15 = 0u;
  v16 = 0u;
  sub_100656ACC(__src, v12);
  memcpy(&a5[v9], v12, 0x50uLL);
  v10 = &a5[v8[11]];
  result = swift_getKeyPath();
  *v10 = result;
  v10[72] = 0;
  return result;
}

uint64_t sub_1006569D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationGridDeterminationView();
  sub_1000833D8(a1 + *(v9 + 36), a2, a3);
  sub_1000833D8(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

void *sub_100656ACC@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_10022C350(qword_100CCEA90);
  State.init(wrappedValue:)();
  return memcpy(a2, __srca, 0x50uLL);
}

unint64_t sub_100656B50()
{
  result = qword_100CCEA88;
  if (!qword_100CCEA88)
  {
    type metadata accessor for IsDeviceVerySlowViewInputPredicate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCEA88);
  }

  return result;
}

uint64_t sub_100656BA8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return sub_100024D10((result + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 73;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_100656D10(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 73;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 16] & ~v10;

            sub_10001B350(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_100656F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v71 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v50 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 - 8);
  v74 = *(v5 + 64);
  __chkstk_darwin(v6);
  v75 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  type metadata accessor for Optional();
  v83 = *(a1 + 24);
  v9 = v83;
  v73 = v83;
  swift_getWitnessTable();
  v10 = type metadata accessor for ZStack();
  v59 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  v54 = v10;
  v13 = type metadata accessor for ModifiedContent();
  v67 = *(v13 - 8);
  __chkstk_darwin(v13);
  v72 = &v50 - v14;
  WitnessTable = swift_getWitnessTable();
  v81 = WitnessTable;
  v82 = &protocol witness table for _AppearanceActionModifier;
  v15 = swift_getWitnessTable();
  v16 = sub_10016AE88();
  v68 = v13;
  __dst[0] = v13;
  __dst[1] = &unk_100C730C0;
  v63 = v16;
  v64 = v15;
  __dst[2] = v15;
  __dst[3] = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  v66 = OpaqueTypeMetadata2;
  __chkstk_darwin(OpaqueTypeMetadata2);
  v61 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v62 = &v50 - v20;
  v21 = v8;
  v76 = v8;
  v77 = v9;
  v22 = v60;
  v78 = v60;
  j___s7SwiftUI9AlignmentV6centerACvgZ();
  v23 = v12;
  ZStack.init(alignment:content:)();
  v24 = v5;
  v25 = v75;
  v26 = v58;
  v55 = *(v5 + 16);
  v56 = v5 + 16;
  v55(v75, v22, v58);
  v27 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v28 = swift_allocObject();
  v29 = v73;
  *(v28 + 16) = v21;
  *(v28 + 24) = v29;
  v30 = v24 + 32;
  v31 = *(v24 + 32);
  v57 = v27;
  v69 = v21;
  v70 = v30;
  v31(v28 + v27, v25, v26);
  v32 = v54;
  View.onAppear(perform:)();

  (*(v59 + 8))(v23, v32);
  v33 = *(v26 + 44);
  memcpy(__dst, (v22 + v33), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v80, (v22 + v33), sizeof(v80));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v35 = v50;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003FDF4(__dst, &qword_100CB71A8);
    (*(v51 + 8))(v35, v52);
  }

  memcpy(v79, v80, sizeof(v79));
  v36 = v75;
  v55(v75, v22, v26);
  v37 = v57;
  v38 = swift_allocObject();
  v39 = v73;
  *(v38 + 16) = v69;
  *(v38 + 24) = v39;
  v31(v38 + v37, v36, v26);
  v40 = v68;
  v42 = v63;
  v41 = v64;
  static VerticalSizingBehaviorKey.defaultValue.getter();
  v43 = v61;
  v44 = v72;
  View.onChange<A>(of:initial:_:)();

  (*(v67 + 8))(v44, v40);
  v79[0] = v40;
  v79[1] = &unk_100C730C0;
  v79[2] = v41;
  v79[3] = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v62;
  v47 = v66;
  sub_1000833D8(v43, v66, OpaqueTypeConformance2);
  v48 = *(v65 + 8);
  v48(v43, v47);
  sub_1000833D8(v46, v47, OpaqueTypeConformance2);
  return (v48)(v46, v47);
}

uint64_t sub_100657680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v26 = *(a2 - 8);
  __chkstk_darwin(a1);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v18 = type metadata accessor for SlowDeviceGridView();
  memcpy(__dst, (a1 + *(v18 + 40)), sizeof(__dst));
  sub_10022C350(&qword_100CCEB20);
  State.wrappedValue.getter();
  if (v29 == 0xFF)
  {
    v19 = 1;
  }

  else
  {
    sub_1000833D8(a1 + *(v18 + 36), a2, a3);
    v20 = v25;
    sub_1000833D8(v10, a2, a3);
    v21 = v26;
    (*(v26 + 8))(v10, a2);
    (*(v21 + 32))(v14, v20, a2);
    v19 = 0;
  }

  sub_10001B350(v14, v19, 1, a2);
  sub_1003E7FD4(v14, v17);
  v22 = *(v12 + 8);
  v22(v14, v11);
  v28 = a3;
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v17, v11, WitnessTable);
  return (v22)(v17, v11);
}

uint64_t sub_100657968(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SlowDeviceGridView();
  v7 = *(v6 + 44);
  memcpy(__dst, (a1 + v7), 0x49uLL);
  if (__dst[9])
  {
    memcpy(__src, (a1 + v7), sizeof(__src));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003FDF4(__dst, &qword_100CB71A8);
    (*(v3 + 8))(v5, v2);
  }

  v9 = *(v6 + 40);
  memcpy(v13, (a1 + v9), sizeof(v13));
  memcpy(v12, (a1 + v9), sizeof(v12));
  memcpy(v11, __src, sizeof(v11));
  sub_100657DB0(v13, v14);
  sub_10022C350(&qword_100CCEB20);
  State.wrappedValue.setter();
  memcpy(v14, v12, sizeof(v14));
  return sub_10003FDF4(v14, &qword_100CCEB20);
}

uint64_t sub_100657B98(uint64_t a1, const void *a2, uint64_t a3)
{
  sub_10078E3B8();
  v5 = *(type metadata accessor for SlowDeviceGridView() + 40);
  memcpy(__dst, (a3 + v5), sizeof(__dst));
  memcpy(__src, (a3 + v5), sizeof(__src));
  memcpy(v7, a2, sizeof(v7));
  sub_100657DB0(__dst, v10);
  sub_10022C350(&qword_100CCEB20);
  State.wrappedValue.setter();
  memcpy(v10, __src, sizeof(v10));
  return sub_10003FDF4(v10, &qword_100CCEB20);
}

uint64_t sub_100657C90()
{
  v1 = *(type metadata accessor for SlowDeviceGridView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100657968(v2);
}

uint64_t sub_100657D14(uint64_t a1, const void *a2)
{
  v5 = *(type metadata accessor for SlowDeviceGridView() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_100657B98(a1, a2, v6);
}

uint64_t sub_100657DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCEB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100657E48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497472616863 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574614479656BLL && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F697463656C6573 && a2 == 0xED0000657461446ELL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000100AD9D70 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F697469736F5078 && a2 == 0xE90000000000006ELL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000012 && 0x8000000100AD9D90 == a2)
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

uint64_t sub_10065804C(char a1)
{
  result = 0x44497472616863;
  switch(a1)
  {
    case 1:
      result = 0x6574614479656BLL;
      break;
    case 2:
      v3 = 0x7463656C6573;
      goto LABEL_5;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      v3 = 0x7469736F5078;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F69000000000000;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100658114(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for DetailChartSelection();
  if ((static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || *(a1 + *(v5 + 32)) != *(a2 + *(v5 + 32)))
  {
    return 0;
  }

  v6 = *(v5 + 36);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1006581FC(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CCEBE0);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_100658A80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v16 = *v3;
  v17 = v11;
  v18 = 0;
  sub_100658B28();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for DetailChartSelection();
    LOBYTE(v16) = 1;
    type metadata accessor for Date();
    sub_10005B714(&qword_100CA39B8);
    sub_10001C92C();
    LOBYTE(v16) = 2;
    sub_10001C92C();
    LOBYTE(v16) = 3;
    sub_10001C92C();
    v16 = *(v3 + *(v12 + 32));
    v18 = 4;
    sub_10048F96C();
    sub_100014BCC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3 + *(v12 + 36);
    v14 = *v13;
    LOBYTE(v13) = v13[8];
    v16 = v14;
    LOBYTE(v17) = v13;
    v18 = 5;
    sub_100014BCC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100658448@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v36 = type metadata accessor for Date();
  sub_1000037C4();
  v34 = v4;
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v33 = sub_10022C350(&qword_100CCEBC8);
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v38 = type metadata accessor for DetailChartSelection();
  __chkstk_darwin(v38);
  v35 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v37 = a1;
  sub_1000161C0(a1, v14);
  sub_100658A80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(v37);
  }

  v30 = v7;
  v31 = v11;
  v41 = 0;
  sub_100658AD4();
  sub_100008080();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v40;
  v16 = v35;
  *v35 = v39;
  *(v16 + 8) = v15;
  LOBYTE(v39) = 1;
  sub_10005B714(&qword_100CA3998);
  sub_100019C30();
  sub_100008080();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = sub_1000047D4(v38[5]);
  v28 = v19;
  v29 = v18;
  v19(v17);
  LOBYTE(v39) = 2;
  sub_100019C30();
  sub_100008080();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = sub_1000047D4(v38[6]);
  v28(v20);
  LOBYTE(v39) = 3;
  sub_100019C30();
  sub_100008080();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = sub_1000047D4(v38[7]);
  v28(v21);
  v41 = 4;
  sub_10048F8C0();
  sub_100006418();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v16 + v38[8]) = v39;
  v41 = 5;
  sub_100006418();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = sub_10001F41C();
  v23(v22);
  v24 = v40;
  v25 = v16 + v38[9];
  *v25 = v39;
  *(v25 + 8) = v24;
  sub_100317AB8(v16, v32);
  sub_100006F14(v37);
  return sub_100544998(v16);
}

uint64_t sub_10065897C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100657E48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006589A4(uint64_t a1)
{
  v2 = sub_100658A80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006589E0(uint64_t a1)
{
  v2 = sub_100658A80();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100658A80()
{
  result = qword_100CCEBD0;
  if (!qword_100CCEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCEBD0);
  }

  return result;
}

unint64_t sub_100658AD4()
{
  result = qword_100CCEBD8;
  if (!qword_100CCEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCEBD8);
  }

  return result;
}

unint64_t sub_100658B28()
{
  result = qword_100CCEBE8;
  if (!qword_100CCEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCEBE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetailChartSelection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100658C5C()
{
  result = qword_100CCEBF0;
  if (!qword_100CCEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCEBF0);
  }

  return result;
}

unint64_t sub_100658CB4()
{
  result = qword_100CCEBF8;
  if (!qword_100CCEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCEBF8);
  }

  return result;
}

unint64_t sub_100658D0C()
{
  result = qword_100CCEC00;
  if (!qword_100CCEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCEC00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationViewComponent.ComponentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocationViewComponent.ComponentType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100658EC4()
{
  result = type metadata accessor for AirQualityComponent();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DailyForecastComponent();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FeelsLikeComponent();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for HourlyForecastComponent();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for HumidityComponent();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for MapComponent();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for MoonComponent();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for NewsArticleComponent();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for NextHourPrecipitationComponent();
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for NotificationsOptInComponent();
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for PressureComponent();
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for SevereAlertComponent();
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for SunriseSunsetModel();
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for AveragesComponent();
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for UVIndexComponent();
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for VisibilityComponent();
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for WindComponent();
                                  if (v17 <= 0x3F)
                                  {
                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

uint64_t sub_100659078(uint64_t a1, uint64_t a2)
{
  v248 = a2;
  v249 = a1;
  v214 = type metadata accessor for WindComponent();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v232 = v6;
  sub_1000038CC();
  v7 = type metadata accessor for VisibilityComponent();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000038E4();
  v231 = v9;
  sub_1000038CC();
  v10 = type metadata accessor for UVIndexComponent();
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000038E4();
  v230 = v12;
  sub_1000038CC();
  v13 = type metadata accessor for AveragesComponent();
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_1000038E4();
  v229 = v15;
  sub_1000038CC();
  type metadata accessor for SunriseSunsetModel();
  sub_1000037C4();
  v245 = v17;
  v246 = v16;
  __chkstk_darwin(v16);
  sub_1000038E4();
  v227 = v18;
  sub_1000038CC();
  v209 = type metadata accessor for SevereAlertComponent();
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v228 = v20;
  sub_1000038CC();
  v213 = type metadata accessor for PressureComponent();
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000038E4();
  v225 = v22;
  sub_1000038CC();
  v23 = type metadata accessor for NotificationsOptInComponent();
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000038E4();
  v224 = v25;
  sub_1000038CC();
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent();
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000038E4();
  v226 = v27;
  sub_1000038CC();
  v212 = type metadata accessor for NewsArticleComponent();
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_1000038E4();
  v223 = v29;
  sub_1000038CC();
  v30 = type metadata accessor for MoonComponent();
  v31 = sub_100003810(v30);
  __chkstk_darwin(v31);
  sub_1000038E4();
  v222 = v32;
  sub_1000038CC();
  v211 = type metadata accessor for MapComponent();
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_1000038E4();
  v221 = v34;
  sub_1000038CC();
  v35 = type metadata accessor for HumidityComponent();
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_1000038E4();
  v220 = v37;
  sub_1000038CC();
  v38 = type metadata accessor for HourlyForecastComponent();
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_1000038E4();
  v219 = v40;
  sub_1000038CC();
  v41 = type metadata accessor for FeelsLikeComponent();
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_1000038E4();
  v218 = v43;
  sub_1000038CC();
  v210 = type metadata accessor for DailyForecastComponent();
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_1000038E4();
  v217 = v45;
  sub_1000038CC();
  v46 = type metadata accessor for AirQualityComponent();
  v47 = sub_100003810(v46);
  __chkstk_darwin(v47);
  sub_1000038E4();
  v215 = v48;
  sub_1000038CC();
  v49 = type metadata accessor for LocationViewComponent();
  sub_1000037E8();
  __chkstk_darwin(v50);
  sub_100003848();
  v244 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v243 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v241 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v240 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v238 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v242 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v234 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v233 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v239 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  sub_100003878();
  v236 = v69;
  sub_10000386C();
  __chkstk_darwin(v70);
  sub_100003878();
  v247 = v71;
  sub_10000386C();
  __chkstk_darwin(v72);
  sub_100003878();
  v237 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  sub_10003A2D4();
  __chkstk_darwin(v75);
  sub_100003878();
  v235 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100013628();
  __chkstk_darwin(v78);
  sub_10002137C();
  __chkstk_darwin(v79);
  v81 = (&v209 - v80);
  __chkstk_darwin(v82);
  v84 = &v209 - v83;
  __chkstk_darwin(v85);
  v87 = (&v209 - v86);
  v88 = sub_10022C350(&qword_100CCECC0);
  v89 = sub_100003810(v88);
  __chkstk_darwin(v89);
  v91 = &v209 - v90;
  v93 = *(v92 + 56);
  sub_1001AB2F0(v249, &v209 - v90);
  v249 = v93;
  sub_1001AB2F0(v248, v91 + v93);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v148 = sub_100017BCC();
      sub_1001AB2F0(v148, v84);
      if (sub_10004E85C() != 1)
      {
        v199 = type metadata accessor for DailyForecastComponent;
        goto LABEL_85;
      }

      v149 = sub_10003C6B4();
      v150 = v217;
      sub_1001B29B0(v149, v217, v151);
      if (static CurrentWeather.== infix(_:_:)())
      {
        sub_1009ED6CC(*&v84[*(v210 + 20)], *(v150 + *(v210 + 20)), v152, v153, v154, v155, v156, v157, v209, v210, v211, v212, v213, v214, v215, HourPrecipitationComponent, v217, v218, v219, v220);
        if (v158)
        {
          sub_10002493C();
          sub_1001B331C(v150, v159);
          v147 = v84;
          goto LABEL_52;
        }
      }

      sub_10002493C();
      sub_1001B331C(v150, v202);
      v203 = v84;
      goto LABEL_93;
    case 2u:
      v123 = sub_100017BCC();
      sub_1001AB2F0(v123, v81);
      if (sub_10004E85C() == 2)
      {
        v124 = sub_10003C6B4();
        v125 = v218;
        sub_1001B29B0(v124, v218, v126);
        v102 = sub_100735648(v81, v125);
        v115 = type metadata accessor for FeelsLikeComponent;
        sub_1001B331C(v125, type metadata accessor for FeelsLikeComponent);
        v116 = v81;
        goto LABEL_44;
      }

      v96 = type metadata accessor for FeelsLikeComponent;
      v97 = v81;
      goto LABEL_86;
    case 3u:
      v132 = sub_100017BCC();
      sub_1001AB2F0(v132, v4);
      if (sub_10004E85C() == 3)
      {
        v133 = sub_10003C6B4();
        v134 = v219;
        sub_1001B29B0(v133, v219, v135);
        v102 = sub_1007C8CEC(v4, v134);
        v115 = type metadata accessor for HourlyForecastComponent;
        sub_1001B331C(v134, type metadata accessor for HourlyForecastComponent);
        v116 = v4;
        goto LABEL_44;
      }

      v96 = type metadata accessor for HourlyForecastComponent;
      v97 = v4;
      goto LABEL_86;
    case 4u:
      v111 = sub_100017BCC();
      sub_1001AB2F0(v111, v2);
      if (sub_10004E85C() == 4)
      {
        v112 = sub_10003C6B4();
        v113 = v220;
        sub_1001B29B0(v112, v220, v114);
        v102 = static CurrentWeather.== infix(_:_:)();
        v115 = type metadata accessor for HumidityComponent;
        sub_1001B331C(v113, type metadata accessor for HumidityComponent);
        v116 = v2;
        goto LABEL_44;
      }

      v198 = type metadata accessor for HumidityComponent;
      goto LABEL_83;
    case 5u:
      v165 = sub_100017BCC();
      v2 = v235;
      sub_1001AB2F0(v165, v235);
      if (sub_10004E85C() != 5)
      {
        v198 = type metadata accessor for MapComponent;
        goto LABEL_83;
      }

      v166 = sub_10003C6B4();
      v167 = v221;
      sub_1001B29B0(v166, v221, v168);
      if (static WeatherMapOverlayKind.== infix(_:_:)())
      {
        v169 = sub_100883064((v2 + *(v211 + 20)), (v167 + *(v211 + 20)));
        sub_10002C8E4();
        if (v169)
        {
          v170 = type metadata accessor for MapComponent;
          goto LABEL_57;
        }
      }

      else
      {
        sub_10002C8E4();
      }

      v207 = type metadata accessor for MapComponent;
      goto LABEL_102;
    case 6u:
      v177 = sub_100017BCC();
      sub_1001AB2F0(v177, v3);
      if (sub_10004E85C() == 6)
      {
        v178 = sub_10003C6B4();
        v100 = v222;
        sub_1001B29B0(v178, v222, v179);
        v180 = sub_100014268();
        v102 = sub_100883064(v180, v181);
        v103 = type metadata accessor for MoonComponent;
        goto LABEL_43;
      }

      v197 = type metadata accessor for MoonComponent;
      goto LABEL_80;
    case 7u:
      v136 = sub_100017BCC();
      v3 = v237;
      sub_1001AB2F0(v136, v237);
      if (sub_10004E85C() != 7)
      {
        v197 = type metadata accessor for NewsArticleComponent;
        goto LABEL_80;
      }

      v137 = sub_10003C6B4();
      v138 = v223;
      sub_1001B29B0(v137, v223, v139);
      v140 = sub_100014268();
      if (sub_1005A80A4(v140, v141))
      {
        v142 = *(v212 + 20);
        v143 = *(v3 + v142);
        v144 = *(v138 + v142);
        sub_100008B8C();
        sub_1001B331C(v138, v145);
        if (v143 == v144)
        {
          sub_100008B8C();
          v147 = v3;
          goto LABEL_58;
        }
      }

      else
      {
        sub_100008B8C();
        sub_1001B331C(v138, v206);
      }

      sub_100008B8C();
      v203 = v3;
      goto LABEL_103;
    case 8u:
      v191 = sub_100017BCC();
      v84 = v247;
      sub_1001AB2F0(v191, v247);
      if (sub_10004E85C() != 8)
      {
        v199 = type metadata accessor for NextHourPrecipitationComponent;
LABEL_85:
        v96 = v199;
        v97 = v84;
        goto LABEL_86;
      }

      v192 = sub_10003C6B4();
      v193 = v226;
      sub_1001B29B0(v192, v226, v194);
      if (static CurrentWeather.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
      {
        type metadata accessor for MinuteWeather();
        sub_10065B62C(&qword_100CB1738, &type metadata accessor for MinuteWeather);
        sub_10065B62C(&qword_100CB1740, &type metadata accessor for MinuteWeather);
        v84 = v247;
        sub_10065B62C(&unk_100CB1748, &type metadata accessor for MinuteWeather);
        v195 = static Forecast.== infix(_:_:)();
        sub_100006438();
        sub_1001B331C(v193, v196);
        if (v195)
        {
          sub_100006438();
          v147 = v84;
          goto LABEL_58;
        }
      }

      else
      {
        sub_100006438();
        sub_1001B331C(v193, v205);
      }

      sub_100006438();
      v203 = v84;
      goto LABEL_103;
    case 9u:
      v120 = sub_100017BCC();
      v3 = v236;
      sub_1001AB2F0(v120, v236);
      if (sub_10004E85C() == 9)
      {
        v121 = sub_10003C6B4();
        v100 = v224;
        sub_1001B29B0(v121, v224, v122);
        sub_100014268();
        v102 = static Location.== infix(_:_:)();
        v103 = type metadata accessor for NotificationsOptInComponent;
        goto LABEL_43;
      }

      v197 = type metadata accessor for NotificationsOptInComponent;
      goto LABEL_80;
    case 0xAu:
      v186 = sub_100017BCC();
      v2 = v239;
      sub_1001AB2F0(v186, v239);
      if (sub_10004E85C() != 10)
      {
        v198 = type metadata accessor for PressureComponent;
        goto LABEL_83;
      }

      v187 = sub_10003C6B4();
      v188 = v225;
      sub_1001B29B0(v187, v225, v189);
      if (static CurrentWeather.== infix(_:_:)())
      {
        v190 = sub_1003BE378(v2 + *(v213 + 20), v188 + *(v213 + 20));
        sub_10000EC28();
        if (v190)
        {
          v170 = type metadata accessor for PressureComponent;
LABEL_57:
          v146 = v170;
          v147 = v2;
          goto LABEL_58;
        }
      }

      else
      {
        sub_10000EC28();
      }

      v207 = type metadata accessor for PressureComponent;
LABEL_102:
      v204 = v207;
      v203 = v2;
      goto LABEL_103;
    case 0xBu:
      v110 = v233;
      sub_1001AB2F0(v91, v233);
      v49 = v91;
      memcpy(v250, v110, 0x80uLL);
      if (sub_10004E85C() == 11)
      {
        memcpy(v251, v87 + v91, 0x80uLL);
        v102 = sub_1007AC22C(v250, v251);
        sub_1004031BC(v250);
        sub_1004031BC(v251);
        goto LABEL_46;
      }

      sub_1004031BC(v250);
      goto LABEL_87;
    case 0xCu:
      v117 = sub_100017BCC();
      v118 = v234;
      sub_1001AB2F0(v117, v234);
      if (sub_10004E85C() != 12)
      {
        goto LABEL_87;
      }

      v119 = *v118 ^ *(v87 + v49);
      sub_100014BE8();
      v102 = v119 ^ 1;
      return v102 & 1;
    case 0xDu:
      v171 = sub_100017BCC();
      v2 = v242;
      sub_1001AB2F0(v171, v242);
      if (sub_10004E85C() != 13)
      {
        v198 = type metadata accessor for SevereAlertComponent;
        goto LABEL_83;
      }

      v172 = sub_10003C6B4();
      v173 = v228;
      sub_1001B29B0(v172, v228, v174);
      sub_1009ED720();
      if (v175 & 1) != 0 && *(v2 + 8) == *(v173 + 8) && (static Date.== infix(_:_:)())
      {
        v176 = type metadata accessor for SevereAlertComponent;
        goto LABEL_51;
      }

      v200 = type metadata accessor for SevereAlertComponent;
      goto LABEL_92;
    case 0xEu:
      v104 = sub_100017BCC();
      v105 = v238;
      sub_1001AB2F0(v104, v238);
      if (sub_10004E85C() == 14)
      {
        v107 = v245;
        v106 = v246;
        v108 = v227;
        (*(v245 + 32))(v227, v87 + v49, v246);
        v102 = static SunriseSunsetModel.== infix(_:_:)();
        v109 = *(v107 + 8);
        v109(v108, v106);
        v109(v105, v106);
        goto LABEL_46;
      }

      (*(v245 + 8))(v105, v246);
      goto LABEL_87;
    case 0xFu:
      v127 = sub_100017BCC();
      v3 = v240;
      sub_1001AB2F0(v127, v240);
      if (sub_10004E85C() == 15)
      {
        v128 = sub_10003C6B4();
        v100 = v229;
        sub_1001B29B0(v128, v229, v129);
        v130 = sub_100014268();
        v102 = sub_100897190(v130, v131);
        v103 = type metadata accessor for AveragesComponent;
        goto LABEL_43;
      }

      v197 = type metadata accessor for AveragesComponent;
      goto LABEL_80;
    case 0x10u:
      v98 = sub_100017BCC();
      v3 = v241;
      sub_1001AB2F0(v98, v241);
      if (sub_10004E85C() == 16)
      {
        v99 = sub_10003C6B4();
        v100 = v230;
        sub_1001B29B0(v99, v230, v101);
        sub_100014268();
        v102 = sub_100928C04();
        v103 = type metadata accessor for UVIndexComponent;
        goto LABEL_43;
      }

      v197 = type metadata accessor for UVIndexComponent;
      goto LABEL_80;
    case 0x11u:
      v160 = sub_100017BCC();
      v3 = v243;
      sub_1001AB2F0(v160, v243);
      if (sub_10004E85C() == 17)
      {
        v161 = sub_10003C6B4();
        v100 = v231;
        sub_1001B29B0(v161, v231, v162);
        v163 = sub_100014268();
        v102 = sub_1004491CC(v163, v164);
        v103 = type metadata accessor for VisibilityComponent;
LABEL_43:
        v115 = v103;
        sub_1001B331C(v100, v103);
        v116 = v3;
LABEL_44:
        v182 = v115;
        goto LABEL_45;
      }

      v197 = type metadata accessor for VisibilityComponent;
LABEL_80:
      v96 = v197;
      v97 = v3;
      goto LABEL_86;
    case 0x12u:
      v183 = sub_100017BCC();
      v2 = v244;
      sub_1001AB2F0(v183, v244);
      if (sub_10004E85C() != 18)
      {
        v198 = type metadata accessor for WindComponent;
LABEL_83:
        v96 = v198;
        v97 = v2;
        goto LABEL_86;
      }

      v184 = sub_10003C6B4();
      v173 = v232;
      sub_1001B29B0(v184, v232, v185);
      if (static CurrentWeather.== infix(_:_:)())
      {
        memcpy(v250, (v2 + *(v214 + 20)), sizeof(v250));
        memcpy(v251, (v173 + *(v214 + 20)), 0xE8uLL);
        if (sub_1008A1E20(v250, v251))
        {
          v176 = type metadata accessor for WindComponent;
LABEL_51:
          v87 = v176;
          sub_1001B331C(v173, v176);
          v147 = v2;
LABEL_52:
          v146 = v87;
LABEL_58:
          sub_1001B331C(v147, v146);
LABEL_65:
          sub_100014BE8();
          v102 = 1;
          return v102 & 1;
        }
      }

      v200 = type metadata accessor for WindComponent;
LABEL_92:
      v87 = v200;
      sub_1001B331C(v173, v200);
      v203 = v2;
LABEL_93:
      v204 = v87;
LABEL_103:
      sub_1001B331C(v203, v204);
      sub_100014BE8();
      goto LABEL_104;
    case 0x13u:
      v49 = v91;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_65;
      }

      goto LABEL_87;
    default:
      v94 = sub_100017BCC();
      sub_1001AB2F0(v94, v87);
      v95 = v249;
      if (swift_getEnumCaseMultiPayload())
      {
        v96 = type metadata accessor for AirQualityComponent;
        v97 = v87;
LABEL_86:
        sub_1001B331C(v97, v96);
LABEL_87:
        sub_10065B4B8(v49);
LABEL_104:
        v102 = 0;
      }

      else
      {
        v201 = v215;
        sub_1001B29B0(v49 + v95, v215, type metadata accessor for AirQualityComponent);
        v102 = static AirQuality.== infix(_:_:)();
        sub_1001B331C(v201, type metadata accessor for AirQualityComponent);
        v116 = v87;
        v182 = type metadata accessor for AirQualityComponent;
LABEL_45:
        sub_1001B331C(v116, v182);
LABEL_46:
        sub_100014BE8();
      }

      return v102 & 1;
  }
}

uint64_t sub_10065A328()
{
  type metadata accessor for LocationViewComponent();
  sub_1000037E8();
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AB2F0(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 10;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 1;
      break;
    case 2:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 2;
      break;
    case 3:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 3;
      break;
    case 4:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 4;
      break;
    case 5:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 5;
      break;
    case 6:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 6;
      break;
    case 7:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 7;
      break;
    case 8:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 8;
      break;
    case 9:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 9;
      break;
    case 10:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 11;
      break;
    case 11:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 12;
      break;
    case 12:
      result = 13;
      break;
    case 13:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 14;
      break;
    case 14:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 15;
      break;
    case 15:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 16;
      break;
    case 16:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 17;
      break;
    case 17:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 18;
      break;
    case 18:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 19;
      break;
    case 19:
      return result;
    default:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_10065A664()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

BOOL sub_10065A6B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C44C80, v2);

  return v3 != 0;
}

uint64_t sub_10065A728@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10065A664();
  *a1 = result;
  return result;
}

unint64_t sub_10065A758@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001AC9D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10065A7E8()
{
  result = qword_100CCECB0;
  if (!qword_100CCECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCECB0);
  }

  return result;
}

BOOL sub_10065A848@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10065A6B8(*a1);
  *a2 = result;
  return result;
}

BOOL sub_10065A890@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10065A6B8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10065A8BC(uint64_t a1)
{
  v2 = sub_10065B520();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10065A8F8(uint64_t a1)
{
  v2 = sub_10065B520();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10065A934@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v130 = sub_10022C350(&qword_100CCECC8);
  sub_1000037C4();
  v128 = v6;
  __chkstk_darwin(v7);
  v135 = v121 - v8;
  sub_1000038CC();
  v124 = type metadata accessor for LocationViewComponent();
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v23);
  v25 = v121 - v24;
  __chkstk_darwin(v26);
  sub_10002137C();
  __chkstk_darwin(v27);
  v29 = v121 - v28;
  __chkstk_darwin(v30);
  sub_10003A2D4();
  __chkstk_darwin(v31);
  sub_100013628();
  __chkstk_darwin(v32);
  v34 = v121 - v33;
  v35 = *(a1 + 3);
  v131 = a1;
  sub_1000161C0(a1, v35);
  sub_10065B520();
  v36 = v132;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v36)
  {
    v43 = v131;
  }

  else
  {
    v121[1] = v2;
    v121[2] = v3;
    v121[3] = v29;
    v121[4] = v4;
    v121[5] = v25;
    v37 = v125;
    v38 = v126;
    v39 = v127;
    v40 = v128;
    v132 = v34;
    v41 = v129;
    sub_10065B574();
    v42 = v135;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    switch(LOBYTE(v133[0]))
    {
      case 1:
        sub_100049A54(v131);
        sub_100037C18();
        sub_100579A94(v81, v82);
        v83 = sub_100028898();
        v84(v83);
        sub_10003A2C8();
        goto LABEL_18;
      case 2:
        sub_100049A54(v131);
        sub_100037C18();
        sub_10086750C(v69, v70);
        v71 = sub_100028898();
        v72(v71);
        sub_10003A2C8();
        goto LABEL_18;
      case 3:
        sub_100049A54(v131);
        sub_100037C18();
        sub_1007C918C(v73, v74);
        v75 = sub_100028898();
        v76(v75);
        sub_10003A2C8();
        goto LABEL_18;
      case 4:
        v3 = v41;
        sub_100049A54(v131);
        sub_100031E74();
        sub_10087FAD0(v59, v60);
        sub_10001C954();
        v61 = sub_1000116F8();
        v62(v61);
        sub_100027E24();
        goto LABEL_22;
      case 5:
        v3 = v41;
        sub_100049A54(v131);
        sub_100031E74();
        sub_1008573D8(v92, v93);
        sub_10001C954();
        v94 = sub_1000116F8();
        v95(v94);
        sub_100027E24();
        goto LABEL_22;
      case 6:
        sub_100049A54(v131);
        sub_10035C284(v133, v37);
        sub_10001C954();
        v114 = sub_1000116F8();
        v115(v114);
        sub_100027E24();
        swift_storeEnumTagMultiPayload();
        sub_10001F42C();
        sub_1000252C4(v37, v116, v117);
        break;
      case 7:
        v3 = v41;
        sub_100049A54(v131);
        sub_100031E74();
        sub_1005A7024(v77, v78);
        sub_10001C954();
        v79 = sub_1000116F8();
        v80(v79);
        sub_100027E24();
LABEL_22:
        swift_storeEnumTagMultiPayload();
        sub_10001F42C();
        v98 = v37;
        goto LABEL_31;
      case 8:
        sub_100022F54(v131);
        sub_100074D24();
        sub_100673F20(v107, v108);
        sub_10001C954();
        v109 = sub_100020980();
        v110(v109);
        sub_100031474();
        goto LABEL_30;
      case 9:
        sub_100022F54(v131);
        sub_100074D24();
        sub_1003ACDF8(v65, v66);
        sub_10001C954();
        v67 = sub_100020980();
        v68(v67);
        sub_100031474();
        goto LABEL_30;
      case 0xA:
        v34 = v131;
        v105 = sub_100028898();
        v106(v105);
        v40 = v132;
        sub_10003A2C8();
        swift_storeEnumTagMultiPayload();
        break;
      case 0xB:
        sub_100022F54(v131);
        sub_100074D24();
        sub_10068D194(v55, v56);
        sub_10001C954();
        v57 = sub_100020980();
        v58(v57);
        sub_100031474();
        goto LABEL_30;
      case 0xC:
        v3 = v41;
        sub_100049A54(v131);
        sub_1007AC420(v133, __src);
        sub_10001C954();
        v63 = sub_1000116F8();
        v64(v63);
        v40 = v123;
        memcpy(v123, __src, 0x80uLL);
        goto LABEL_24;
      case 0xD:
        sub_100022F54(v131);
        sub_100545BE0(v133);
        sub_10001C954();
        v100 = v99;
        v101 = sub_100020980();
        v102(v101);
        v40 = v122;
        *v122 = v100 & 1;
LABEL_24:
        swift_storeEnumTagMultiPayload();
        sub_10001F42C();
        v98 = v40;
        goto LABEL_31;
      case 0xE:
        sub_100022F54(v131);
        sub_100074D24();
        sub_1003CAAF4(v51, v52);
        sub_10001C954();
        v53 = sub_100020980();
        v54(v53);
        sub_100031474();
        goto LABEL_30;
      case 0xF:
        v3 = v41;
        sub_100049A54(v131);
        sub_100074D24();
        SunriseSunsetModel.init(from:)();
        sub_10001C954();
        v113 = v40[1];
        ++v40;
        v113(v42);
        sub_100031474();
        goto LABEL_30;
      case 0x10:
        sub_100022F54(v131);
        v41 = v38;
        sub_100897408(v133, v38);
        sub_10001C954();
        v49 = sub_100020980();
        v50(v49);
        sub_100031474();
        goto LABEL_30;
      case 0x11:
        sub_100022F54(v131);
        sub_100074D24();
        sub_100928DFC(v88, v89);
        sub_10001C954();
        v90 = sub_100020980();
        v91(v90);
        sub_100031474();
        goto LABEL_30;
      case 0x12:
        sub_100049A54(v131);
        sub_10044946C(v133, v39);
        sub_10001C954();
        v103 = sub_100020980();
        v104(v103);
        swift_storeEnumTagMultiPayload();
        sub_10001F42C();
        v87 = v39;
        goto LABEL_19;
      case 0x13:
        sub_100022F54(v131);
        sub_100074D24();
        sub_1009CBC60(v111, v112);
        sub_10001C954();
        v118 = sub_100020980();
        v119(v118);
        sub_100031474();
LABEL_30:
        swift_storeEnumTagMultiPayload();
        sub_10001F42C();
        v98 = v41;
LABEL_31:
        sub_1000252C4(v98, v96, v97);
        v41 = v3;
        break;
      default:
        sub_100049A54(v131);
        sub_100037C18();
        sub_100449ED4(v45, v46);
        v47 = sub_100028898();
        v48(v47);
        sub_10003A2C8();
LABEL_18:
        swift_storeEnumTagMultiPayload();
        sub_10001F42C();
        v87 = v3;
LABEL_19:
        sub_1000252C4(v87, v85, v86);
        break;
    }

    sub_10001F42C();
    sub_1001B29B0(v40, v41, v120);
    v43 = v34;
  }

  return sub_100006F14(v43);
}

uint64_t sub_10065B2FC@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v3 = sub_10065A328();
  *(inited + 72) = &type metadata for LocationViewComponent.ComponentType;
  *(inited + 48) = v3;
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CCECE0);
  a1[4] = sub_10065B5C8();
  sub_100042FB0(a1);
  type metadata accessor for LocationViewComponent();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10065B404()
{
  sub_10065B62C(&qword_100CCECF0, type metadata accessor for LocationViewComponent);

  return ShortDescribable.description.getter();
}

uint64_t sub_10065B4B8(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CCECC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10065B520()
{
  result = qword_100CCECD0;
  if (!qword_100CCECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCECD0);
  }

  return result;
}

unint64_t sub_10065B574()
{
  result = qword_100CCECD8;
  if (!qword_100CCECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCECD8);
  }

  return result;
}

unint64_t sub_10065B5C8()
{
  result = qword_100CCECE8;
  if (!qword_100CCECE8)
  {
    sub_10022E824(&qword_100CCECE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCECE8);
  }

  return result;
}

uint64_t sub_10065B62C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10065B674()
{
  result = qword_100CCECF8;
  if (!qword_100CCECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCECF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewComponent.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_10065B778()
{
  result = qword_100CCED00;
  if (!qword_100CCED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCED00);
  }

  return result;
}

unint64_t sub_10065B7D0()
{
  result = qword_100CCED08;
  if (!qword_100CCED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCED08);
  }

  return result;
}

unint64_t sub_10065B828()
{
  result = qword_100CCED10;
  if (!qword_100CCED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCED10);
  }

  return result;
}

uint64_t type metadata accessor for AirQualityComponentViewModel()
{
  result = qword_100CCED70;
  if (!qword_100CCED70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10065B8F0()
{
  sub_10062FF08();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_10013CA90(319, &qword_100CA45C0, &type metadata for String, &type metadata accessor for Optional);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_10013CA90(319, &unk_100CCD480, &type metadata for Gradient.Stop, &type metadata accessor for Array);
      if (v6 > 0x3F)
      {
        return v5;
      }

      v5 = type metadata accessor for AttributedString();
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}