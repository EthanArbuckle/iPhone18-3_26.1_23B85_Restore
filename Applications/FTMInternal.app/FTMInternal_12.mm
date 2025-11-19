uint64_t sub_1001BE748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = type metadata accessor for UUID();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1001A551C(&qword_100375B38, &qword_1002EFD20);
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v35);
  v11 = &v33 - v10;
  v37 = type metadata accessor for FTMCellMonitorHardwareDetailModel();
  v12 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v16 = a1[3];
  v15 = a1[4];
  v36 = a1;
  sub_1001A5610(a1, v16);
  sub_1001BEC34();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v17 = v4;
    v18 = v38;
    sub_1001A5654(v36);
    return (*(v18 + 8))(v14, v17);
  }

  else
  {
    v42 = 0;
    sub_1001BED48(&qword_100375B48);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v38 + 40))(v14, v7, v4);
    v41 = 1;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v37;
    v22 = &v14[*(v37 + 20)];
    *v22 = v20;
    v22[1] = v23;
    v40 = 2;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = &v14[*(v21 + 24)];
    *v25 = v24;
    v25[1] = v26;
    v39 = 3;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v28;
    v29 = v27;
    v30 = &v14[*(v21 + 28)];
    (*(v8 + 8))(v11, v35);
    v32 = v33;
    v31 = v34;
    *v30 = v29;
    *(v30 + 1) = v32;
    sub_1001BEC88(v14, v31);
    sub_1001A5654(v36);
    return sub_1001BECEC(v14);
  }
}

uint64_t sub_1001BEB68@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_1001BEC34()
{
  result = qword_100375B40;
  if (!qword_100375B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375B40);
  }

  return result;
}

uint64_t sub_1001BEC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMCellMonitorHardwareDetailModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BECEC(uint64_t a1)
{
  v2 = type metadata accessor for FTMCellMonitorHardwareDetailModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001BED48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001BEDA0()
{
  result = qword_100375B60;
  if (!qword_100375B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375B60);
  }

  return result;
}

unint64_t sub_1001BEDF8()
{
  result = qword_100375B68;
  if (!qword_100375B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375B68);
  }

  return result;
}

unint64_t sub_1001BEE50()
{
  result = qword_100375B70;
  if (!qword_100375B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375B70);
  }

  return result;
}

uint64_t sub_1001BEEA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70795465756C6176 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1001BF030@<X0>(uint64_t a1@<X8>)
{
  sub_1001A56A0();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001BF09C()
{
  v1 = sub_1001A551C(&qword_100375260, &qword_1002EF058);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13[-v4];
  v6 = *v0;
  v7 = v0[1];
  v9 = v0[2];
  v8 = v0[3];
  v14 = v6;
  v15 = v7;
  v16 = v9;
  v17 = v8;

  Button.init(action:label:)();
  v10 = static Color.green.getter();
  KeyPath = swift_getKeyPath();
  v18 = v10;
  v19 = KeyPath;
  v20 = 0;
  sub_1001AD0C8(&qword_100375270, &qword_100375260, &qword_1002EF058);
  sub_1001BFC60();
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v5, v1);
}

uint64_t sub_1001BF258@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1001BF030(a1);
}

double sub_1001BF264@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v80 = a4;
  v83 = a3;
  v76 = a2;
  v93 = a5;
  v91 = type metadata accessor for Color.RGBColorSpace();
  v90 = *(v91 - 8);
  v6 = *(v90 + 64);
  __chkstk_darwin(v91);
  v89 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for EnvironmentValues();
  v81 = *(v94 - 8);
  v8 = *(v81 + 64);
  __chkstk_darwin(v94);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001A551C(&qword_100375B80, &qword_1002EFFF0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v75 - v14;
  v16 = sub_1001A551C(&qword_100375B88, &qword_1002EFFF8);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v75 - v19;
  v79 = sub_1001A551C(&qword_100375B90, &qword_1002F0000);
  v21 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v23 = &v75 - v22;
  v78 = sub_1001A551C(&qword_100375B98, &qword_1002F0008);
  v24 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v26 = &v75 - v25;
  v77 = sub_1001A551C(&qword_100375BA0, &qword_1002F0010);
  v27 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v29 = &v75 - v28;
  v82 = sub_1001A551C(&qword_100375BA8, &qword_1002F0018);
  v30 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v85 = &v75 - v31;
  v84 = sub_1001A551C(&qword_100375BB0, &qword_1002F0020);
  v32 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v88 = &v75 - v33;
  v86 = sub_1001A551C(&qword_100375BB8, &qword_1002F0028);
  v34 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v87 = &v75 - v35;
  v92 = a1;
  ButtonStyleConfiguration.label.getter();
  v36 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v38 = &v15[*(v12 + 44)];
  *v38 = KeyPath;
  v38[1] = v36;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1001B603C(v15, v20, &qword_100375B80, &qword_1002EFFF0);
  v39 = &v20[*(v17 + 44)];
  v40 = v101;
  *(v39 + 4) = v100;
  *(v39 + 5) = v40;
  *(v39 + 6) = v102;
  v41 = v97;
  *v39 = v96;
  *(v39 + 1) = v41;
  v42 = v99;
  *(v39 + 2) = v98;
  *(v39 + 3) = v42;
  v43 = v80;
  if (v80)
  {
    v44 = v83;
    v45 = v81;
    if ((v83 & 1) == 0)
    {
LABEL_3:
      v46 = static Color.gray.getter();
      goto LABEL_6;
    }
  }

  else
  {
    v47 = v83;

    static os_log_type_t.fault.getter();
    v48 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1001BFE28(v47, 0);
    v45 = v81;
    (*(v81 + 8))(v10, v94);
    v44 = v47;
    if (v95 != 1)
    {
      goto LABEL_3;
    }
  }

  v46 = v76;

LABEL_6:
  v49 = static Edge.Set.all.getter();
  sub_1001B603C(v20, v23, &qword_100375B88, &qword_1002EFFF8);
  v50 = &v23[*(v79 + 36)];
  *v50 = v46;
  v50[8] = v49;
  v51 = static Color.white.getter();
  sub_1001B603C(v23, v26, &qword_100375B90, &qword_1002F0000);
  *&v26[*(v78 + 36)] = v51;
  sub_1001B603C(v26, v29, &qword_100375B98, &qword_1002F0008);
  *&v29[*(v77 + 36)] = 256;
  if (v43)
  {
    v52 = v44;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v53 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1001BFE28(v44, 0);
    (*(v45 + 8))(v10, v94);
    v52 = v95;
  }

  if (v52)
  {
    v54 = 4.0;
  }

  else
  {
    v54 = 0.0;
  }

  (*(v90 + 104))(v89, enum case for Color.RGBColorSpace.sRGBLinear(_:), v91);
  v55 = Color.init(_:white:opacity:)();
  v56 = v29;
  v57 = v85;
  sub_1001B603C(v56, v85, &qword_100375BA0, &qword_1002F0010);
  v58 = v57 + *(v82 + 36);
  *v58 = v55;
  *(v58 + 8) = v54;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  if (v43)
  {
    v59 = 1.0;
    if ((v44 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v60 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1001BFE28(v44, 0);
    (*(v45 + 8))(v10, v94);
    v59 = 1.0;
    if (v95 != 1)
    {
      goto LABEL_19;
    }
  }

  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v59 = 0.92;
  }

  else
  {
    v59 = 1.0;
  }

LABEL_19:
  static UnitPoint.center.getter();
  v62 = v61;
  v64 = v63;
  v65 = v88;
  sub_1001B603C(v57, v88, &qword_100375BA8, &qword_1002F0018);
  v66 = v65 + *(v84 + 36);
  *v66 = v59;
  *(v66 + 8) = v59;
  *(v66 + 16) = v62;
  *(v66 + 24) = v64;
  v67 = static Animation.easeInOut(duration:)();
  v68 = ButtonStyleConfiguration.isPressed.getter();
  v69 = v65;
  v70 = v87;
  sub_1001B603C(v69, v87, &qword_100375BB0, &qword_1002F0020);
  v71 = v70 + *(v86 + 36);
  *v71 = v67;
  *(v71 + 8) = v68 & 1;
  LOBYTE(v67) = static Edge.Set.all.getter();
  v72 = v93;
  sub_1001B603C(v70, v93, &qword_100375BB8, &qword_1002F0028);
  v73 = v72 + *(sub_1001A551C(&qword_100375BC0, &unk_1002F0060) + 36);
  *v73 = v67;
  result = 0.0;
  *(v73 + 8) = 0u;
  *(v73 + 24) = 0u;
  *(v73 + 40) = 1;
  return result;
}

uint64_t sub_1001BFC08@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1001BFC60()
{
  result = qword_100375B78;
  if (!qword_100375B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375B78);
  }

  return result;
}

uint64_t sub_1001BFCC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001BFD08(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1001BFD58()
{
  sub_1001A55C8(&qword_100375260, &qword_1002EF058);
  sub_1001AD0C8(&qword_100375270, &qword_100375260, &qword_1002EF058);
  sub_1001BFC60();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001BFE28(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1001BFE38()
{
  result = qword_100375BC8;
  if (!qword_100375BC8)
  {
    sub_1001A55C8(&qword_100375BC0, &unk_1002F0060);
    sub_1001BFEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BC8);
  }

  return result;
}

unint64_t sub_1001BFEC4()
{
  result = qword_100375BD0;
  if (!qword_100375BD0)
  {
    sub_1001A55C8(&qword_100375BB8, &qword_1002F0028);
    sub_1001BFF7C();
    sub_1001AD0C8(&qword_100375C48, &qword_100375C50, &qword_1002F0088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BD0);
  }

  return result;
}

unint64_t sub_1001BFF7C()
{
  result = qword_100375BD8;
  if (!qword_100375BD8)
  {
    sub_1001A55C8(&qword_100375BB0, &qword_1002F0020);
    sub_1001C0008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BD8);
  }

  return result;
}

unint64_t sub_1001C0008()
{
  result = qword_100375BE0;
  if (!qword_100375BE0)
  {
    sub_1001A55C8(&qword_100375BA8, &qword_1002F0018);
    sub_1001C0094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BE0);
  }

  return result;
}

unint64_t sub_1001C0094()
{
  result = qword_100375BE8;
  if (!qword_100375BE8)
  {
    sub_1001A55C8(&qword_100375BA0, &qword_1002F0010);
    sub_1001C014C();
    sub_1001AD0C8(&qword_100375C38, &qword_100375C40, &qword_1002F0080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BE8);
  }

  return result;
}

unint64_t sub_1001C014C()
{
  result = qword_100375BF0;
  if (!qword_100375BF0)
  {
    sub_1001A55C8(&qword_100375B98, &qword_1002F0008);
    sub_1001C0204();
    sub_1001AD0C8(&qword_100375C28, &qword_100375C30, &qword_1002F0078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BF0);
  }

  return result;
}

unint64_t sub_1001C0204()
{
  result = qword_100375BF8;
  if (!qword_100375BF8)
  {
    sub_1001A55C8(&qword_100375B90, &qword_1002F0000);
    sub_1001C02BC();
    sub_1001AD0C8(&qword_100375C18, &qword_100375C20, &qword_1002F0070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375BF8);
  }

  return result;
}

unint64_t sub_1001C02BC()
{
  result = qword_100375C00;
  if (!qword_100375C00)
  {
    sub_1001A55C8(&qword_100375B88, &qword_1002EFFF8);
    sub_1001C0348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375C00);
  }

  return result;
}

unint64_t sub_1001C0348()
{
  result = qword_100375C08;
  if (!qword_100375C08)
  {
    sub_1001A55C8(&qword_100375B80, &qword_1002EFFF0);
    sub_1001C0400();
    sub_1001AD0C8(&qword_1003759D0, &qword_1003759D8, &qword_1002EFAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375C08);
  }

  return result;
}

unint64_t sub_1001C0400()
{
  result = qword_100375C10;
  if (!qword_100375C10)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375C10);
  }

  return result;
}

uint64_t sub_1001C04D8()
{
  _StringGuts.grow(_:)(16);

  v1 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricTech);
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricTech + 8);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricName);
  v6 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricName + 8);

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_attributeName);
  v10 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_attributeName + 8);

  v11._countAndFlagsBits = v9;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricId);
  v14 = *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricId + 8);

  v15._countAndFlagsBits = v13;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return 40;
}

void sub_1001C0634(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricTech);
  v4 = *(v1 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricTech + 8);

  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricName);
  v8 = *(v1 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricName + 8);

  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_attributeName);
  v12 = *(v1 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_attributeName + 8);

  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v13 forKey:v14];

  v15 = v1 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricId;
  v16 = *(v1 + OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricId);
  v17 = *(v15 + 8);

  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v18 forKey:v19];
}

id sub_1001C08A0(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 decodeObjectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {

LABEL_31:
    sub_1001C0DB0(&v30);
    goto LABEL_35;
  }

  if (swift_dynamicCast())
  {
    v4 = v27;
    v5 = String._bridgeToObjectiveC()();
    v6 = [a1 decodeObjectForKey:v5];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30 = v28;
    v31 = v29;
    if (*(&v29 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_34:

        goto LABEL_35;
      }

      v7 = v27;
      v8 = String._bridgeToObjectiveC()();
      v9 = [a1 decodeObjectForKey:v8];

      if (v9)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
      }

      v30 = v28;
      v31 = v29;
      if (*(&v29 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {

LABEL_33:

          goto LABEL_34;
        }

        v10 = v27;
        v23 = v26;
        v24 = v26;
        v11 = String._bridgeToObjectiveC()();
        v12 = [a1 decodeObjectForKey:v11];

        if (v12)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v28 = 0u;
          v29 = 0u;
        }

        v30 = v28;
        v31 = v29;
        if (*(&v29 + 1))
        {
          if (swift_dynamicCast())
          {
            v13 = v26;
            v14 = v27;
            v15 = type metadata accessor for DashboardItem();
            v16 = objc_allocWithZone(v15);
            v17 = &v16[OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricTech];
            *v17 = v26;
            *(v17 + 1) = v4;
            v18 = &v16[OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricName];
            *v18 = v24;
            *(v18 + 1) = v7;
            v19 = &v16[OBJC_IVAR____TtC11FTMInternal13DashboardItem_attributeName];
            *v19 = v23;
            *(v19 + 1) = v10;
            v20 = &v16[OBJC_IVAR____TtC11FTMInternal13DashboardItem_metricId];
            *v20 = v13;
            *(v20 + 1) = v14;
            v25.receiver = v16;
            v25.super_class = v15;
            v21 = objc_msgSendSuper2(&v25, "init");

            swift_getObjectType();
            swift_deallocPartialClassInstance();
            return v21;
          }

          goto LABEL_33;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    goto LABEL_31;
  }

LABEL_35:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1001C0CDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001C0DB0(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_100375D68, &unk_1002F2370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001C0E18()
{
  v1 = OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle;
  *&v0[v1] = [objc_allocWithZone(UIView) init];
  v2 = &v0[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint];
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC11FTMInternal18CircularTransition_circleColor;
  *&v0[v3] = [objc_opt_self() whiteColor];
  *&v0[OBJC_IVAR____TtC11FTMInternal18CircularTransition_duration] = 0x3FD3333333333333;
  v0[OBJC_IVAR____TtC11FTMInternal18CircularTransition_transitionMode] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CircularTransition();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1001C0EFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircularTransition();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001C0FB0(void *a1)
{
  v3 = [a1 containerView];
  v4 = &UITransitionContextToViewKey;
  v60 = v3;
  if (v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_transitionMode] != 2)
  {
    if (!v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_transitionMode])
    {
      v5 = [a1 viewForKey:UITransitionContextToViewKey];
      if (v5)
      {
        v6 = v5;
        [v5 center];
        v8 = v7;
        v10 = v9;
        [v6 frame];
        v58 = v12;
        v59 = v11;
        v13 = [objc_allocWithZone(UIView) init];
        v14 = OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle;
        v15 = *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle];
        *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle] = v13;
        v16 = v13;

        v17 = &v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint];
        v18.f64[0] = v59;
        v18.f64[1] = v58;
        v19 = vmaxnmq_f64(*&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint], vsubq_f64(v18, *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint]));
        v19.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v19, v19)));
        [v16 setFrame:{0.0, 0.0, v19.f64[0] + v19.f64[0], v19.f64[0] + v19.f64[0]}];

        v20 = [*&v1[v14] layer];
        [*&v1[v14] frame];
        [v20 setCornerRadius:v21 * 0.5];

        [*&v1[v14] setCenter:{*v17, v17[1]}];
        [*&v1[v14] setBackgroundColor:*&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_circleColor]];
        v22 = *&v1[v14];
        CGAffineTransformMakeScale(&aBlock, 0.001, 0.001);
        [v22 setTransform:&aBlock];
        [v60 addSubview:*&v1[v14]];
        [v6 setCenter:{*v17, v17[1]}];
        CGAffineTransformMakeScale(&aBlock, 0.001, 0.001);
        [v6 setTransform:&aBlock];
        [v6 setAlpha:0.0];
        [v60 addSubview:v6];
        v23 = objc_opt_self();
        v24 = *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_duration];
        v25 = swift_allocObject();
        v25[2] = v1;
        v25[3] = v6;
        v25[4] = v8;
        v25[5] = v10;
        *&aBlock.tx = sub_1001C1AD0;
        *&aBlock.ty = v25;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10020C96C;
        *&aBlock.d = &unk_10031D858;
        v26 = _Block_copy(&aBlock);
        v27 = v1;
        v28 = v6;

        v29 = swift_allocObject();
        *(v29 + 16) = a1;
        *&aBlock.tx = sub_1001C1B14;
        *&aBlock.ty = v29;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10023D490;
        *&aBlock.d = &unk_10031D8A8;
        v30 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        [v23 animateWithDuration:v26 animations:v30 completion:v24];

        _Block_release(v30);
        _Block_release(v26);

        return;
      }

      goto LABEL_9;
    }

    v4 = &UITransitionContextFromViewKey;
  }

  v31 = *v4;
  v32 = [a1 viewForKey:v31];
  if (v32)
  {
    v33 = v32;
    [v32 center];
    v35 = v34;
    v37 = v36;
    [v33 frame];
    v38 = OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle;
    v39 = &v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint];
    v41.f64[1] = v40;
    v42 = vmaxnmq_f64(*&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint], vsubq_f64(v41, *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint]));
    v42.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v42, v42)));
    v43 = v42.f64[0] + v42.f64[0];
    v44 = *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle];
    [v44 setFrame:{0.0, 0.0, v43, v43}];

    v45 = [*&v1[v38] layer];
    [*&v1[v38] frame];
    [v45 setCornerRadius:v46 * 0.5];

    [*&v1[v38] setCenter:{*v39, v39[1]}];
    v47 = objc_opt_self();
    v48 = *&v1[OBJC_IVAR____TtC11FTMInternal18CircularTransition_duration];
    v49 = swift_allocObject();
    v49[2] = v1;
    v49[3] = v33;
    v49[4] = v60;
    *&aBlock.tx = sub_1001C1994;
    *&aBlock.ty = v49;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_10020C96C;
    *&aBlock.d = &unk_10031D7B8;
    v50 = _Block_copy(&aBlock);
    v51 = v1;
    v52 = v33;
    v53 = v60;

    v54 = swift_allocObject();
    v54[2] = v52;
    v54[3] = v35;
    v54[4] = v37;
    v54[5] = v51;
    v54[6] = a1;
    *&aBlock.tx = sub_1001C1A00;
    *&aBlock.ty = v54;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_10023D490;
    *&aBlock.d = &unk_10031D808;
    v55 = _Block_copy(&aBlock);
    v56 = v51;
    swift_unknownObjectRetain();
    v57 = v52;

    [v47 animateWithDuration:v50 animations:v55 completion:v48];

    _Block_release(v55);
    _Block_release(v50);

    return;
  }

LABEL_9:
}

id sub_1001C1694(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle);
  v9 = 0x3FF0000000000000;
  v10 = 0;
  v11 = 0;
  v12 = 0x3FF0000000000000;
  v13 = 0;
  v14 = 0;
  [v7 setTransform:&v9];
  v9 = 0x3FF0000000000000;
  v10 = 0;
  v11 = 0;
  v12 = 0x3FF0000000000000;
  v13 = 0;
  v14 = 0;
  [a2 setTransform:&v9];
  [a2 setAlpha:1.0];
  return [a2 setCenter:{a3, a4}];
}

id sub_1001C1748(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle;
  v7 = *(a1 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle);
  CGAffineTransformMakeScale(&v9, 0.001, 0.001);
  [v7 setTransform:&v9];
  CGAffineTransformMakeScale(&v9, 0.001, 0.001);
  [a2 setTransform:&v9];
  [a2 setCenter:{*(a1 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint), *(a1 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint + 8)}];
  result = [a2 setAlpha:0.0];
  if (*(a1 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_transitionMode) == 2)
  {
    [a3 insertSubview:a2 belowSubview:a2];
    return [a3 insertSubview:*(a1 + v6) belowSubview:a2];
  }

  return result;
}

unint64_t sub_1001C18F8()
{
  result = qword_100375E20;
  if (!qword_100375E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375E20);
  }

  return result;
}

uint64_t sub_1001C194C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001C19A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C19B8()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

id sub_1001C1A00(char a1)
{
  v3 = *(v1 + 2);
  v4 = v1[3];
  v5 = v1[4];
  v7 = *(v1 + 5);
  v6 = *(v1 + 6);
  [v3 setCenter:{v4, v5}];
  [v3 removeFromSuperview];
  [*(v7 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle) removeFromSuperview];

  return [v6 completeTransition:a1 & 1];
}

uint64_t sub_1001C1A90()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001C1ADC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001C1B58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[7];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[10] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1001C1CA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[7];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t type metadata accessor for STransferMetrics()
{
  result = qword_100375EF0;
  if (!qword_100375EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001C1E28()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1001C1F1C();
    if (v1 <= 0x3F)
    {
      sub_1001C1F74();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C1F1C()
{
  if (!qword_100375F00)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100375F00);
    }
  }
}

void sub_1001C1F74()
{
  if (!qword_100375F08)
  {
    sub_1001A55C8(&unk_100375F10, &unk_1002F5C80);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100375F08);
    }
  }
}

uint64_t getEnumTagSinglePayload for STransferMetrics.SDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for STransferMetrics.SDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001C2134(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4B4E494C4E574F44;
  }

  else
  {
    v4 = 0x4B4E494C5055;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x4B4E494C4E574F44;
  }

  else
  {
    v6 = 0x4B4E494C5055;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1001C21D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C2258()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001C22C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C2340@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100319F78, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1001C23A0(uint64_t *a1@<X8>)
{
  v2 = 0x4B4E494C5055;
  if (*v1)
  {
    v2 = 0x4B4E494C4E574F44;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1001C23E0()
{
  result = qword_100375F70;
  if (!qword_100375F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375F70);
  }

  return result;
}

void sub_1001C2440()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setAllowedUnits:224];
  [v0 setZeroFormattingBehavior:0x10000];

  qword_100375E90 = v0;
}

double sub_1001C24B0()
{
  v1 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for STransferMetrics();
  v14 = v13;
  if (*(v0 + *(v13 + 68)) == 1)
  {
    sub_1001C2E78(v0 + *(v13 + 44), v4);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v12, v4, v5);
      v10 = v12;
      goto LABEL_6;
    }

    sub_1001C2EE8(v4);
  }

  static Date.now.getter();
LABEL_6:
  v15 = *(v14 + 28);
  Date.timeIntervalSince(_:)();
  v17 = v16;
  (*(v6 + 8))(v10, v5);
  return v17;
}

int *sub_1001C2690()
{
  result = type metadata accessor for STransferMetrics();
  v2 = *(v0 + result[15]);
  v3 = *(v0 + result[14]);
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v5)
  {
    return 0.0;
  }

  v6 = *(v0 + result[13]);
  v7 = *(v0 + result[12]);
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (v4)
  {
    goto LABEL_12;
  }

  v9 = v8 / v5 * 100.0;
  if (COERCE__INT64(fabs(v9)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v9 > -9.22337204e18)
    {
      if (v9 < 9.22337204e18)
      {
        return v9;
      }

      __break(1u);
      return 0.0;
    }

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1001C2C58()
{
  Hasher._combine(_:)(*v0);
  *(v0 + 8);
  *(v0 + 8);
  String.hash(into:)();

  Hasher._combine(_:)(qword_1002F0360[*(v0 + 9)]);
}

Swift::Int sub_1001C2CE8()
{
  Hasher.init(_seed:)();
  sub_1001C2C58();
  return Hasher._finalize()();
}

Swift::Int sub_1001C2D2C()
{
  Hasher.init(_seed:)();
  sub_1001C2C58();
  return Hasher._finalize()();
}

unint64_t sub_1001C2D70()
{
  result = qword_100375F78;
  if (!qword_100375F78)
  {
    type metadata accessor for STransferMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375F78);
  }

  return result;
}

unint64_t sub_1001C2DC8()
{
  result = qword_100375F88;
  if (!qword_100375F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100375F88);
  }

  return result;
}

unint64_t sub_1001C2E14()
{
  result = qword_100375F98;
  if (!qword_100375F98)
  {
    sub_1001A55C8(&qword_100375F80, &qword_1002F0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375F98);
  }

  return result;
}

uint64_t sub_1001C2E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C2EE8(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1001C2F50(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 8) == 0;
  if (*(a1 + 8))
  {
    v6 = 0x4B4E494C4E574F44;
  }

  else
  {
    v6 = 0x4B4E494C5055;
  }

  if (v5)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (*(a2 + 8))
  {
    v8 = 0x4B4E494C4E574F44;
  }

  else
  {
    v8 = 0x4B4E494C5055;
  }

  if (*(a2 + 8))
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v6 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return qword_1002F0360[*(a1 + 9)] == qword_1002F0360[*(a2 + 9)];
}

uint64_t getEnumTagSinglePayload for FTMRATCategories(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FTMRATCategories(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_1001C31A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C32B8()
{
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1001C33AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C36D8(*a1);
  *a2 = result;
  return result;
}

void sub_1001C33DC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000534D53;
  v4 = 0x2026206563696F56;
  v5 = 5459283;
  v6 = 0xE300000000000000;
  v7 = 0xE300000000000000;
  v8 = 5456722;
  if (v2 != 4)
  {
    v8 = 0x6E776F6E6B6E55;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x6563696F56;
    v3 = 0xE500000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001002B92A0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1001C34B0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1001C359C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C3724(*a1);
  *a2 = result;
  return result;
}

void sub_1001C35CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x41534E20524ELL;
  v5 = 0xE300000000000000;
  v6 = 5067591;
  if (v2 != 5)
  {
    v6 = 0x6E776F6E6B6E55;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1398033749;
  if (v2 != 3)
  {
    v8 = 0x4E41525455;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 21070;
  if (v2 != 1)
  {
    v10 = 4543564;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1001C3684()
{
  result = qword_100375FA0;
  if (!qword_100375FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FA0);
  }

  return result;
}

unint64_t sub_1001C36D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100319FC8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001C3724(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10031A078, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for FTMIMSRegistrationCategories(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FTMIMSRegistrationCategories(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001C38C4()
{
  result = qword_100375FA8;
  if (!qword_100375FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FA8);
  }

  return result;
}

__n128 sub_1001C3918(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1001C393C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C3984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001C39F0()
{
  result = qword_100375FB0;
  if (!qword_100375FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FB0);
  }

  return result;
}

uint64_t sub_1001C3A44(uint64_t result, unsigned __int8 a2)
{
  v2 = a2;
  if (a2 > 1u)
  {
    v3 = *&result;
    if (a2 == 2)
    {
      goto LABEL_13;
    }

    if (a2 != 3)
    {
      goto LABEL_17;
    }

    v3 = *&result * 1024.0 * 1024.0 * 1024.0;
    if (COERCE_UNSIGNED_INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v3 <= -9.22337204e18)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v2 = 0;
    if (v3 < 9.22337204e18)
    {
      return v3;
    }

    __break(1u);
  }

  if (!v2)
  {
    return result;
  }

  v3 = *&result * 1024.0;
  if (COERCE__INT64(fabs(*&result * 1024.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

  __break(1u);
LABEL_13:
  v3 = v3 * 1024.0 * 1024.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v3 >= 9.22337204e18)
  {
    __break(1u);
LABEL_17:
    v3 = v3 * 1024.0 * 1024.0 * 1024.0 * 1024.0;
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v3 > -9.22337204e18)
      {
        if (v3 < 9.22337204e18)
        {
          return v3;
        }

LABEL_30:
        __break(1u);
        return result;
      }

      goto LABEL_28;
    }

    goto LABEL_24;
  }

  return v3;
}

Swift::Int sub_1001C3C00()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001C3CF8(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1002F1090[a2]);
  return Hasher._finalize()();
}

Swift::Int sub_1001C3D48()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C3E9C(uint64_t a1)
{
  v2 = sub_1001C8218();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C3ED8(uint64_t a1)
{
  v2 = sub_1001C8218();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C3F14()
{
  v1 = *v0;
  v2 = 0x7365747962;
  v3 = 0x657479626167656DLL;
  v4 = 0x6579746261676967;
  if (v1 != 3)
  {
    v4 = 0x6574796261726574;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657479626F6C696BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001C3FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C70B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001C3FF0(uint64_t a1)
{
  v2 = sub_1001C8074();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C402C(uint64_t a1)
{
  v2 = sub_1001C8074();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C4068(uint64_t a1)
{
  v2 = sub_1001C811C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C40A4(uint64_t a1)
{
  v2 = sub_1001C811C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C40E0(uint64_t a1)
{
  v2 = sub_1001C81C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C411C(uint64_t a1)
{
  v2 = sub_1001C81C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C4158(uint64_t a1)
{
  v2 = sub_1001C8170();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C4194(uint64_t a1)
{
  v2 = sub_1001C8170();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C41D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001C4250(uint64_t a1)
{
  v2 = sub_1001C80C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C428C(uint64_t a1)
{
  v2 = sub_1001C80C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001C42C8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1001C430C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1001C4370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72546F5461746164 && a2 == 0xEE00726566736E61)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001C4400(uint64_t a1)
{
  v2 = sub_1001C76FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C443C(uint64_t a1)
{
  v2 = sub_1001C76FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001C4478()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v15 = v0[2];
  v16 = v0[3];
  v17 = v0[4];
  v18 = *(v0 + 40);
  v13 = *v0;
  v14 = v0[1];
  sub_1001C6F1C();
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v8;

  static String.Encoding.utf8.getter();
  v10 = String.init(data:encoding:)();
  v12 = v11;
  sub_1001A5474(v7, v9);
  if (v12)
  {
    return v10;
  }

  else
  {
    return 32123;
  }
}

double sub_1001C45B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1001C7270(v8);
  v5 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v5;
  *(a2 + 64) = v8[4];
  *(a2 + 80) = v9;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_1001C4610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001C4478();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001C4638()
{
  v0 = sub_1001C4478();
  v2 = v1;
  if (v0 == sub_1001C4478() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

Swift::Int sub_1001C46C4()
{
  Hasher.init(_seed:)();
  sub_1001C4478();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C4720()
{
  sub_1001C4478();
  String.hash(into:)();
}

Swift::Int sub_1001C4770()
{
  Hasher.init(_seed:)();
  sub_1001C4478();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001C4878(void *a1, uint64_t a2, char a3)
{
  v6 = sub_1001A551C(&qword_100376000, &qword_1002F07E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_1001A5610(a1, a1[3]);
  sub_1001C76FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v14 = a3;
  sub_1001C77A4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v10, v6);
}

void *sub_1001C49D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001C7584(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1001C4A20(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (*(a1 + 8))
    {
      v13 = *a1;
      v14 = *a2;
      if (v5 != 1 || v2 != v4)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 8))
      {
        v9 = 0;
      }

      else
      {
        v9 = *&v2 == *&v4;
      }

      if (!v9)
      {
        return 0;
      }
    }

    return 1;
  }

  v6 = *a1;
  v7 = *a2;
  if (v3 == 2)
  {
    return v5 == 2 && v2 == v4;
  }

  if (v3 != 3)
  {
    return v5 == 4 && v2 == v4;
  }

  return v5 == 3 && v2 == v4;
}

uint64_t sub_1001C4AB4(void *a1, uint64_t a2, int a3)
{
  v44 = a3;
  v45 = a2;
  v4 = sub_1001A551C(&qword_100376078, &qword_1002F0828);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v40 = &v34 - v6;
  v7 = sub_1001A551C(&qword_100376080, &qword_1002F0830);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v37 = &v34 - v9;
  v10 = sub_1001A551C(&qword_100376088, &qword_1002F0838);
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  __chkstk_darwin(v10);
  v34 = &v34 - v12;
  v13 = sub_1001A551C(&qword_100376090, &qword_1002F0840);
  v43 = *(v13 - 8);
  v14 = *(v43 + 64);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = sub_1001A551C(&qword_100376098, &qword_1002F0848);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v22 = sub_1001A551C(&qword_1003760A0, &unk_1002F0850);
  v46 = *(v22 - 8);
  v47 = v22;
  v23 = *(v46 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = a1[4];
  sub_1001A5610(a1, a1[3]);
  sub_1001C8074();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v44 <= 1u)
  {
    v31 = v13;
    v32 = v43;
    if (v44)
    {
      v49 = 1;
      sub_1001C81C4();
      v28 = v47;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v32 + 8))(v16, v31);
    }

    else
    {
      v48 = 0;
      sub_1001C8218();
      v28 = v47;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v18 + 8))(v21, v17);
    }
  }

  else
  {
    if (v44 == 2)
    {
      v50 = 2;
      sub_1001C8170();
      v27 = v34;
      v28 = v47;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v29 = v36;
      KeyedEncodingContainer.encode(_:forKey:)();
      v30 = v35;
    }

    else if (v44 == 3)
    {
      v51 = 3;
      sub_1001C811C();
      v27 = v37;
      v28 = v47;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v29 = v39;
      KeyedEncodingContainer.encode(_:forKey:)();
      v30 = v38;
    }

    else
    {
      v52 = 4;
      sub_1001C80C8();
      v27 = v40;
      v28 = v47;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v29 = v42;
      KeyedEncodingContainer.encode(_:forKey:)();
      v30 = v41;
    }

    (*(v30 + 8))(v27, v29);
  }

  return (*(v46 + 8))(v25, v28);
}

void sub_1001C5090(uint64_t a1, Swift::UInt64 a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      Hasher._combine(_:)(0);
      goto LABEL_12;
    }

    v4 = 1;
  }

  else if (a3 == 2)
  {
    v4 = 2;
  }

  else if (a3 == 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  Hasher._combine(_:)(v4);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    a2 = 0;
  }

LABEL_12:
  Hasher._combine(_:)(a2);
}

uint64_t sub_1001C5110@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001C77F8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

Swift::Int sub_1001C517C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_1001C5090(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1001C51DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_1001C5090(v4, v1, v2);
  return Hasher._finalize()();
}

unint64_t sub_1001C522C()
{
  result = qword_100375FB8;
  if (!qword_100375FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FB8);
  }

  return result;
}

unint64_t sub_1001C5284()
{
  result = qword_100375FC0;
  if (!qword_100375FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FC0);
  }

  return result;
}

uint64_t sub_1001C52D8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C530C(_BYTE *a1, Swift::Int a2)
{
  v3 = a2;
  v5 = *v2;
  v6 = sub_1001C3CF8(*(*v2 + 40), a2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (qword_1002F1090[*(*(v5 + 48) + v8)] != qword_1002F1090[v3])
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v3) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1001C5E14(v3, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1001C5404(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1001C5F48(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1001C5554(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_17:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1001C60C8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_1001C56DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001A551C(&qword_100375FC8, &qword_1002F07D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_1002F1090[v18]);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1001C5938(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001A551C(&qword_100376160, &unk_1002F1080);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1001C5B98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001A551C(&qword_1003760B0, &qword_1002F0860);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v20)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1001C5E14(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001C56DC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1001C6284();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001C6678(v5 + 1);
  }

  v8 = *v3;
  result = sub_1001C3CF8(*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (qword_1002F1090[*(*(v8 + 48) + a2)] != qword_1002F1090[v4])
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1001C5F48(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1001C5938(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1001C63C4();
      goto LABEL_16;
    }

    sub_1001C68A4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1001C60C8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    sub_1001C5B98(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1001C6520();
      goto LABEL_23;
    }

    sub_1001C6ADC(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
LABEL_22:
            sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

void *sub_1001C6284()
{
  v1 = v0;
  sub_1001A551C(&qword_100375FC8, &qword_1002F07D8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1001C63C4()
{
  v1 = v0;
  sub_1001A551C(&qword_100376160, &unk_1002F1080);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1001C6520()
{
  v1 = v0;
  sub_1001A551C(&qword_1003760B0, &qword_1002F0860);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001C6678(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001A551C(&qword_100375FC8, &qword_1002F07D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_1002F1090[v17]);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1001C68A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001A551C(&qword_100376160, &unk_1002F1080);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1001C6ADC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001A551C(&qword_1003760B0, &qword_1002F0860);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v19)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_31;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1001C6D30(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 <= 1u)
  {
    if (a4)
    {
      v8 = 0;
    }

    else
    {
      v8 = a1 == a3;
    }

    v9 = v8;
    v10 = a4 == 1 && *&a1 == *&a3;
    if (a2)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v4 = *&a1 == *&a3;
    if (a4 != 2)
    {
      v4 = 0;
    }

    v5 = *&a1 == *&a3;
    if (a4 != 3)
    {
      v5 = 0;
    }

    v6 = a4 == 4 && *&a1 == *&a3;
    if (a2 == 3)
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      return v4;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1001C6DD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1001C6EC8();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1001C530C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1001C6E44@<X0>(uint64_t a1@<X8>)
{
  result = sub_1001C6DD0(&off_100319F50);
  *a1 = 1;
  *(a1 + 8) = 0xD000000000000013;
  *(a1 + 16) = 0x80000001002BAD40;
  *(a1 + 24) = -25535;
  *(a1 + 26) = 0;
  *(a1 + 32) = result;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = 257;
  *(a1 + 56) = 0x4059000000000000;
  *(a1 + 64) = 2;
  *(a1 + 72) = 0x4059000000000000;
  *(a1 + 80) = 2;
  return result;
}

unint64_t sub_1001C6EC8()
{
  result = qword_100378810;
  if (!qword_100378810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378810);
  }

  return result;
}

unint64_t sub_1001C6F1C()
{
  result = qword_100375FD0;
  if (!qword_100375FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FD0);
  }

  return result;
}

uint64_t sub_1001C6F70(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1001C5404(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1001C7008(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
  sub_1001C826C();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1001C5554(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1001C70B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365747962 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657479626F6C696BLL && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657479626167656DLL && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6579746261676967 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574796261726574 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1001C7270@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C6DD0(&off_10031A140);
  v27[0] = 1;
  v28 = 0xD000000000000013;
  v29 = 0x80000001002BAD40;
  v30 = -25535;
  v31 = 0;
  v32 = v7;
  v33 = 0x3FF0000000000000;
  v34 = 257;
  v35 = 0x4059000000000000;
  v36 = 2;
  v37 = 0x4059000000000000;
  v38 = 2;
  sub_1001AC6D0(v27);
  static String.Encoding.utf8.getter();
  v8 = String.data(using:allowLossyConversion:)();
  v10 = v9;

  (*(v3 + 8))(v6, v2);
  if (v10 >> 60 == 15)
  {
    v17 = 0;
    v19 = 0;
    v14 = 0;
    v15 = 0;
    v21 = 0;
    v24 = 0;
    v16 = 0;
    v18 = 0;
    v20 = 0;
    v22 = 0;
    result = 0;
  }

  else
  {
    v11 = type metadata accessor for JSONDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_1001C74C8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1001C751C(v8, v10);

    v14 = v25[6];
    v15 = v25[7];
    v16 = v26;
    v18 = v25[2];
    v17 = v25[3];
    v19 = v25[4];
    v20 = v25[5];
    v22 = v25[8];
    v21 = v25[9];
    result = v25[10];
    v24 = v25[11];
  }

  *a1 = v18;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19;
  *(a1 + 24) = v20;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = v22;
  *(a1 + 56) = v21;
  *(a1 + 64) = result;
  *(a1 + 72) = v24;
  *(a1 + 80) = v16;
  return result;
}

unint64_t sub_1001C74C8()
{
  result = qword_100375FD8;
  if (!qword_100375FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FD8);
  }

  return result;
}

uint64_t sub_1001C751C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001A5474(a1, a2);
  }

  return a1;
}

unint64_t sub_1001C7530()
{
  result = qword_100375FE0;
  if (!qword_100375FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FE0);
  }

  return result;
}

void *sub_1001C7584(uint64_t *a1)
{
  v3 = sub_1001A551C(&qword_100375FE8, &qword_1002F07E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1001A5610(a1, a1[3]);
  sub_1001C76FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1001A5654(a1);
  }

  else
  {
    sub_1001C7750();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_1001A5654(a1);
  }

  return v9;
}

unint64_t sub_1001C76FC()
{
  result = qword_100375FF0;
  if (!qword_100375FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FF0);
  }

  return result;
}

unint64_t sub_1001C7750()
{
  result = qword_100375FF8;
  if (!qword_100375FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375FF8);
  }

  return result;
}

unint64_t sub_1001C77A4()
{
  result = qword_100376008;
  if (!qword_100376008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376008);
  }

  return result;
}

uint64_t sub_1001C77F8(uint64_t *a1)
{
  v2 = sub_1001A551C(&qword_100376010, &qword_1002F07F0);
  v3 = *(v2 - 8);
  v68 = v2;
  v69 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v71 = v59 - v5;
  v6 = sub_1001A551C(&qword_100376018, &qword_1002F07F8);
  v7 = *(v6 - 8);
  v66 = v6;
  v67 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v70 = v59 - v9;
  v10 = sub_1001A551C(&qword_100376020, &qword_1002F0800);
  v11 = *(v10 - 8);
  v64 = v10;
  v65 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v72 = v59 - v13;
  v14 = sub_1001A551C(&qword_100376028, &qword_1002F0808);
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = *(v62 + 64);
  __chkstk_darwin(v14);
  v17 = v59 - v16;
  v18 = sub_1001A551C(&qword_100376030, &qword_1002F0810);
  v61 = *(v18 - 8);
  v19 = *(v61 + 64);
  __chkstk_darwin(v18);
  v21 = v59 - v20;
  v22 = sub_1001A551C(&qword_100376038, &qword_1002F0818);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = v59 - v25;
  v28 = a1[3];
  v27 = a1[4];
  v74 = a1;
  sub_1001A5610(a1, v28);
  sub_1001C8074();
  v29 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v29)
  {
    v60 = v18;
    v30 = v72;
    v73 = v26;
    v31 = KeyedDecodingContainer.allKeys.getter();
    v32 = *(v31 + 16);
    if (!v32 || ((v33 = *(v31 + 32), v32 == 1) ? (v34 = v33 == 5) : (v34 = 1), v34))
    {
      v35 = v22;
      v22 = type metadata accessor for DecodingError();
      swift_allocError();
      v37 = v36;
      v38 = *(sub_1001A551C(&qword_100376048, &qword_1002F0820) + 48);
      *v37 = &type metadata for SDataTransferProperties.SDataSize;
      v39 = v73;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v37, enum case for DecodingError.typeMismatch(_:), v22);
      swift_willThrow();
      (*(v23 + 8))(v39, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      v59[1] = v31;
      if (v33 <= 1)
      {
        if (v33)
        {
          v76 = 1;
          sub_1001C81C4();
          v50 = v73;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v52 = v63;
          KeyedDecodingContainer.decode(_:forKey:)();
          v54 = v53;
          (*(v62 + 8))(v17, v52);
          (*(v23 + 8))(v50, v22);
          swift_unknownObjectRelease();
          v22 = v54;
        }

        else
        {
          v75 = 0;
          sub_1001C8218();
          v43 = v21;
          v44 = v73;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v45 = v60;
          v46 = v22;
          v22 = KeyedDecodingContainer.decode(_:forKey:)();
          (*(v61 + 8))(v43, v45);
          (*(v23 + 8))(v44, v46);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v33 == 2)
        {
          v77 = 2;
          sub_1001C8170();
          v40 = v73;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v47 = v64;
          KeyedDecodingContainer.decode(_:forKey:)();
          v57 = v55;
          (*(v65 + 8))(v30, v47);
        }

        else
        {
          v40 = v73;
          if (v33 == 3)
          {
            v78 = 3;
            sub_1001C811C();
            v41 = v70;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v42 = v66;
            KeyedDecodingContainer.decode(_:forKey:)();
            v57 = v56;
            (*(v67 + 8))(v41, v42);
          }

          else
          {
            v79 = 4;
            sub_1001C80C8();
            v48 = v71;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v51 = v68;
            KeyedDecodingContainer.decode(_:forKey:)();
            v57 = v58;
            (*(v69 + 8))(v48, v51);
          }
        }

        (*(v23 + 8))(v40, v22);
        swift_unknownObjectRelease();
        v22 = v57;
      }
    }
  }

  sub_1001A5654(v74);
  return v22;
}

unint64_t sub_1001C8074()
{
  result = qword_100376040;
  if (!qword_100376040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376040);
  }

  return result;
}

unint64_t sub_1001C80C8()
{
  result = qword_100376050;
  if (!qword_100376050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376050);
  }

  return result;
}

unint64_t sub_1001C811C()
{
  result = qword_100376058;
  if (!qword_100376058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376058);
  }

  return result;
}

unint64_t sub_1001C8170()
{
  result = qword_100376060;
  if (!qword_100376060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376060);
  }

  return result;
}

unint64_t sub_1001C81C4()
{
  result = qword_100376068;
  if (!qword_100376068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376068);
  }

  return result;
}

unint64_t sub_1001C8218()
{
  result = qword_100376070;
  if (!qword_100376070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376070);
  }

  return result;
}

unint64_t sub_1001C826C()
{
  result = qword_1003760A8;
  if (!qword_1003760A8)
  {
    sub_1001A55C8(&qword_1003751D0, &qword_1002EEF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SDataTransferProperties.SDataSize.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SDataTransferProperties.SDataSize.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Database(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Database(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SDataTransferProperties.SDataSize(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1001C85B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001C85FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

unint64_t sub_1001C8654()
{
  result = qword_1003760B8;
  if (!qword_1003760B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760B8);
  }

  return result;
}

unint64_t sub_1001C86AC()
{
  result = qword_1003760C0;
  if (!qword_1003760C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760C0);
  }

  return result;
}

unint64_t sub_1001C8704()
{
  result = qword_1003760C8;
  if (!qword_1003760C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760C8);
  }

  return result;
}

unint64_t sub_1001C875C()
{
  result = qword_1003760D0;
  if (!qword_1003760D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760D0);
  }

  return result;
}

unint64_t sub_1001C87B4()
{
  result = qword_1003760D8;
  if (!qword_1003760D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760D8);
  }

  return result;
}

unint64_t sub_1001C880C()
{
  result = qword_1003760E0;
  if (!qword_1003760E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760E0);
  }

  return result;
}

unint64_t sub_1001C8864()
{
  result = qword_1003760E8;
  if (!qword_1003760E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760E8);
  }

  return result;
}

unint64_t sub_1001C88BC()
{
  result = qword_1003760F0;
  if (!qword_1003760F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760F0);
  }

  return result;
}

unint64_t sub_1001C8914()
{
  result = qword_1003760F8;
  if (!qword_1003760F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003760F8);
  }

  return result;
}

unint64_t sub_1001C896C()
{
  result = qword_100376100;
  if (!qword_100376100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376100);
  }

  return result;
}

unint64_t sub_1001C89C4()
{
  result = qword_100376108;
  if (!qword_100376108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376108);
  }

  return result;
}

unint64_t sub_1001C8A1C()
{
  result = qword_100376110;
  if (!qword_100376110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376110);
  }

  return result;
}

unint64_t sub_1001C8A74()
{
  result = qword_100376118;
  if (!qword_100376118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376118);
  }

  return result;
}

unint64_t sub_1001C8ACC()
{
  result = qword_100376120;
  if (!qword_100376120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376120);
  }

  return result;
}

unint64_t sub_1001C8B24()
{
  result = qword_100376128;
  if (!qword_100376128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376128);
  }

  return result;
}

unint64_t sub_1001C8B7C()
{
  result = qword_100376130;
  if (!qword_100376130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376130);
  }

  return result;
}

unint64_t sub_1001C8BD4()
{
  result = qword_100376138;
  if (!qword_100376138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376138);
  }

  return result;
}

unint64_t sub_1001C8C2C()
{
  result = qword_100376140;
  if (!qword_100376140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376140);
  }

  return result;
}

unint64_t sub_1001C8C84()
{
  result = qword_100376148;
  if (!qword_100376148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376148);
  }

  return result;
}

unint64_t sub_1001C8CDC()
{
  result = qword_100376150;
  if (!qword_100376150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376150);
  }

  return result;
}

unint64_t sub_1001C8D34()
{
  result = qword_100376158;
  if (!qword_100376158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376158);
  }

  return result;
}

uint64_t sub_1001C8DB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void (*sub_1001C8E2C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_1001C8ED0;
}

void sub_1001C8ED0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1001C8F38()
{
  v0 = type metadata accessor for STransferMetrics();
  v28 = *(v0 - 8);
  v1 = *(v28 + 64);
  __chkstk_darwin(v0 - 8);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = 0;
  v11 = v29;
  v12 = v29 + 8;
  v13 = 1 << *(v29 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v29[8];
  v16 = (v13 + 63) >> 6;
  v17 = _swiftEmptyArrayStorage;
  while (1)
  {
    v18 = v10;
    if (!v15)
    {
      break;
    }

LABEL_8:
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v20 = *(v28 + 72);
    sub_1001CB9FC(v11[7] + v20 * (v19 | (v10 << 6)), v5);
    sub_1001CB8D4(v5, v8);
    if (v8[8])
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_12;
      }

      result = sub_1001CBA60(v8);
    }

    else
    {

LABEL_12:
      sub_1001CB8D4(v8, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001F547C(0, v17[2] + 1, 1);
        v17 = v29;
      }

      v24 = v17[2];
      v23 = v17[3];
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = v24 + 1;
        sub_1001F547C(v23 > 1, v24 + 1, 1);
        v25 = v26;
        v17 = v29;
      }

      v17[2] = v25;
      result = sub_1001CB8D4(v27, v17 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + v24 * v20);
    }
  }

  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v16)
    {

      return v17;
    }

    v15 = v12[v10];
    ++v18;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C9214()
{
  v0 = type metadata accessor for STransferMetrics();
  v28 = *(v0 - 8);
  v1 = *(v28 + 64);
  __chkstk_darwin(v0 - 8);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = 0;
  v11 = v29;
  v12 = v29 + 8;
  v13 = 1 << *(v29 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v29[8];
  v16 = (v13 + 63) >> 6;
  v17 = _swiftEmptyArrayStorage;
  while (1)
  {
    v18 = v10;
    if (!v15)
    {
      break;
    }

LABEL_8:
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v20 = *(v28 + 72);
    sub_1001CB9FC(v11[7] + v20 * (v19 | (v10 << 6)), v5);
    sub_1001CB8D4(v5, v8);
    if (v8[8] == 1)
    {

LABEL_12:
      sub_1001CB8D4(v8, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001F547C(0, v17[2] + 1, 1);
        v17 = v29;
      }

      v24 = v17[2];
      v23 = v17[3];
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = v24 + 1;
        sub_1001F547C(v23 > 1, v24 + 1, 1);
        v25 = v26;
        v17 = v29;
      }

      v17[2] = v25;
      result = sub_1001CB8D4(v27, v17 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + v24 * v20);
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_12;
      }

      result = sub_1001CBA60(v8);
    }
  }

  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v16)
    {

      return v17;
    }

    v15 = v12[v10];
    ++v18;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C9524(uint64_t (*a1)(__n128))
{
  v3 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v46 = v40 - v5;
  v52 = type metadata accessor for Date();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v52);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = v40 - v11;
  v12 = type metadata accessor for STransferMetrics();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1(v15);
  v19 = *(v18 + 16);
  if (!v19)
  {

    v37 = (a1)(v38);
LABEL_13:
    v39 = *(v37 + 16);
  }

  v40[1] = v1;
  v41 = a1;
  v20 = v12[12];
  v50 = v12[13];
  v51 = v20;
  v21 = v12[17];
  v22 = v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v45 = (v6 + 48);
  v48 = *(v13 + 72);
  v49 = v21;
  v42 = v18;
  v43 = (v6 + 32);
  v47 = (v6 + 8);
  v23 = 0.0;
  while (1)
  {
    result = sub_1001CB9FC(v22, v17);
    v29 = *&v17[v50];
    v30 = *&v17[v51];
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    if ((v31 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_15;
    }

    if (v17[v49] == 1)
    {
      v32 = v46;
      sub_1001AC934(&v17[v12[11]], v46, &qword_100375738, &qword_1002EF900);
      if ((*v45)(v32, 1, v52) != 1)
      {
        v33 = v12;
        v34 = v9;
        v35 = v44;
        (*v43)(v44, v32, v52);
        v24 = v35;
        v9 = v34;
        v12 = v33;
        goto LABEL_5;
      }

      sub_1001AC99C(v32, &qword_100375738, &qword_1002EF900);
    }

    static Date.now.getter();
    v24 = v9;
LABEL_5:
    v25 = v12[7];
    Date.timeIntervalSince(_:)();
    v27 = v26;
    (*v47)(v24, v52);
    sub_1001CBA60(v17);
    v23 = v23 + (8 * v31) / v27 / 1000000.0;
    v22 += v48;
    if (!--v19)
    {

      v37 = (v41)(v36);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1001C98D0()
{
  v0 = type metadata accessor for STransferMetrics();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v19;
  v6 = v19 + 64;
  v7 = 1 << *(v19 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v19 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = 0;
  while (v9)
  {
    v14 = v12;
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_1001CB9FC(*(v5 + 56) + *(v1 + 72) * (v15 | (v14 << 6)), v4);
    v16 = *&v4[*(v0 + 52)];
    result = sub_1001CBA60(v4);
    v17 = __OFADD__(v13, v16);
    v13 += v16;
    if (v17)
    {
      __break(1u);
LABEL_13:

      return v13;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_13;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C9AA4()
{
  v0 = type metadata accessor for STransferMetrics();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v19;
  v6 = v19 + 64;
  v7 = 1 << *(v19 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v19 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = 0;
  while (v9)
  {
    v14 = v12;
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_1001CB9FC(*(v5 + 56) + *(v1 + 72) * (v15 | (v14 << 6)), v4);
    v16 = *&v4[*(v0 + 48)];
    result = sub_1001CBA60(v4);
    v17 = __OFADD__(v13, v16);
    v13 += v16;
    if (v17)
    {
      __break(1u);
LABEL_13:

      return v13;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_13;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1001C9C78(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v82 = a4;
  v78 = a3;
  v83 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_1001A551C(&qword_100377210, &qword_1002F1158);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v78 - v10;
  v12 = type metadata accessor for STransferMetrics();
  v84 = *(v12 - 1);
  v13 = *(v84 + 64);
  __chkstk_darwin(v12);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001A551C(&qword_1003761D0, &qword_1002F11A8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v78 - v21;
  v85 = OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore_lock;
  [*(v5 + OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore_lock) lock];
  v86 = a1;
  v23 = [a1 taskDescription];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = HIBYTE(v27) & 0xF;
  v29 = v25 & 0xFFFFFFFFFFFFLL;
  if ((v27 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v27) & 0xF;
  }

  else
  {
    v30 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {

    goto LABEL_67;
  }

  if ((v27 & 0x1000000000000000) == 0)
  {
    if ((v27 & 0x2000000000000000) != 0)
    {
      v87[0] = v25;
      v87[1] = v27 & 0xFFFFFFFFFFFFFFLL;
      if (v25 == 43)
      {
        if (v28)
        {
          if (--v28)
          {
            v33 = 0;
            v43 = v87 + 1;
            while (1)
            {
              v44 = *v43 - 48;
              if (v44 > 9)
              {
                break;
              }

              v45 = 10 * v33;
              if ((v33 * 10) >> 64 != (10 * v33) >> 63)
              {
                break;
              }

              v33 = v45 + v44;
              if (__OFADD__(v45, v44))
              {
                break;
              }

              ++v43;
              if (!--v28)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_87:
        __break(1u);
        return;
      }

      if (v25 != 45)
      {
        if (v28)
        {
          v33 = 0;
          v48 = v87;
          while (1)
          {
            v49 = *v48 - 48;
            if (v49 > 9)
            {
              break;
            }

            v50 = 10 * v33;
            if ((v33 * 10) >> 64 != (10 * v33) >> 63)
            {
              break;
            }

            v33 = v50 + v49;
            if (__OFADD__(v50, v49))
            {
              break;
            }

            ++v48;
            if (!--v28)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v28)
      {
        if (--v28)
        {
          v33 = 0;
          v37 = v87 + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v33;
            if ((v33 * 10) >> 64 != (10 * v33) >> 63)
            {
              break;
            }

            v33 = v39 - v38;
            if (__OFSUB__(v39, v38))
            {
              break;
            }

            ++v37;
            if (!--v28)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v25 & 0x1000000000000000) != 0)
      {
        v31 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v31 = _StringObject.sharedUTF8.getter();
      }

      v32 = *v31;
      if (v32 == 43)
      {
        if (v29 >= 1)
        {
          v28 = v29 - 1;
          if (v29 != 1)
          {
            v33 = 0;
            if (v31)
            {
              v40 = v31 + 1;
              while (1)
              {
                v41 = *v40 - 48;
                if (v41 > 9)
                {
                  goto LABEL_64;
                }

                v42 = 10 * v33;
                if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                {
                  goto LABEL_64;
                }

                v33 = v42 + v41;
                if (__OFADD__(v42, v41))
                {
                  goto LABEL_64;
                }

                ++v40;
                if (!--v28)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_86;
      }

      if (v32 != 45)
      {
        if (v29)
        {
          v33 = 0;
          if (v31)
          {
            while (1)
            {
              v46 = *v31 - 48;
              if (v46 > 9)
              {
                goto LABEL_64;
              }

              v47 = 10 * v33;
              if ((v33 * 10) >> 64 != (10 * v33) >> 63)
              {
                goto LABEL_64;
              }

              v33 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                goto LABEL_64;
              }

              ++v31;
              if (!--v29)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v33 = 0;
        LOBYTE(v28) = 1;
        goto LABEL_65;
      }

      if (v29 >= 1)
      {
        v28 = v29 - 1;
        if (v29 != 1)
        {
          v33 = 0;
          if (v31)
          {
            v34 = v31 + 1;
            while (1)
            {
              v35 = *v34 - 48;
              if (v35 > 9)
              {
                goto LABEL_64;
              }

              v36 = 10 * v33;
              if ((v33 * 10) >> 64 != (10 * v33) >> 63)
              {
                goto LABEL_64;
              }

              v33 = v36 - v35;
              if (__OFSUB__(v36, v35))
              {
                goto LABEL_64;
              }

              ++v34;
              if (!--v28)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v28) = 0;
LABEL_65:
          v88 = v28;
          v51 = v28;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v88 = 0;
  v33 = sub_1001A5A78(v25, v27, 10);
  v51 = v77;
LABEL_66:

  if (v51)
  {
LABEL_67:
    v33 = 0;
  }

  v52 = v5;
  sub_1001CB940();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = v86;
  v79 = [v86 isKindOfClass:ObjCClassFromMetadata];
  v55 = [v54 originalRequest];
  v81 = ObjectType;
  v56 = v11;
  if (v55)
  {
    v57 = v55;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v80 = v33;
  v59 = type metadata accessor for URLRequest();
  v60 = *(v59 - 8);
  (*(v60 + 56))(v20, v58, 1, v59);
  sub_1001CB98C(v20, v22);
  if ((*(v60 + 48))(v22, 1, v59) == 1)
  {
    sub_1001AC99C(v22, &qword_1003761D0, &qword_1002F11A8);
    v61 = 0;
  }

  else
  {
    v62 = URLRequest.networkServiceType.getter();
    (*(v60 + 8))(v22, v59);
    v61 = v62;
  }

  v63 = v56;
  v64 = v82;
  v65 = sub_10026F454(v61);
  v66 = [v86 taskIdentifier];
  v67 = v52;
  if (v64)
  {
    v68 = v64;
    v69 = v78;
  }

  else
  {
    v69 = *aPdpIp0;
    v68 = unk_100378060;
  }

  if (v65 == 9)
  {
    v70 = 0;
  }

  else
  {
    v70 = v65;
  }

  v71 = v12[11];
  v72 = type metadata accessor for Date();
  (*(*(v72 - 8) + 56))(&v15[v71], 1, 1, v72);
  *v15 = v66;
  v15[8] = v79;
  v15[9] = v70;
  v73 = v12[7];

  static Date.now.getter();
  v74 = v80;
  *&v15[v12[8]] = v80;
  v15[v12[9]] = v83 & 1;
  v75 = &v15[v12[10]];
  *v75 = v69;
  *(v75 + 1) = v68;
  *&v15[v12[12]] = 0;
  *&v15[v12[13]] = 0;
  *&v15[v12[14]] = 0;
  *&v15[v12[15]] = 0;
  *&v15[v12[16]] = 0;
  v15[v12[17]] = 0;
  sub_1001CB248();
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1001CB9FC(v15, v63);
  (*(v84 + 56))(v63, 0, 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  v76 = static Published.subscript.modify();
  sub_1001E278C(v63, v74);
  v76(v87, 0);

  sub_1001CBA60(v15);
  [*(v67 + v85) unlock];
}

uint64_t sub_1001CA488(uint64_t a1)
{
  v20 = a1;
  v1 = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (&v20 - v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v21;
  v6 = v21 + 64;
  v7 = 1 << *(v21 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v21 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(v5 + 56);
    v17 = *(*(v5 + 48) + 8 * v15);
    v18 = type metadata accessor for STransferMetrics();
    sub_1001CB9FC(v16 + *(*(v18 - 8) + 72) * v15, v4 + *(v1 + 48));
    *v4 = v17;
    result = sub_1001AC99C(v4, &qword_1003772A0, &qword_1002F11B0);
    if (v17 == v20)
    {
      v19 = 1;
LABEL_13:

      return v19;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v19 = 0;
      goto LABEL_13;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void (*sub_1001CA668(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1001CB310(v4, a2);
  return sub_1001CA6E0;
}

void sub_1001CA6E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_1001CA72C(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v7 = *(*(v6 - 8) + 64);
  *&v8 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v10 = v53 - v9;
  v11 = OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore_lock;
  [*(v2 + OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore_lock) lock];
  v12 = [a1 taskDescription];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = HIBYTE(v16) & 0xF;
  v18 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v19 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    goto LABEL_66;
  }

  if ((v16 & 0x1000000000000000) != 0)
  {
    LOBYTE(v53[0]) = 0;
    v22 = sub_1001A5A78(v14, v16, 10);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {
    v54[0] = v14;
    v54[1] = v16 & 0xFFFFFFFFFFFFFFLL;
    if (v14 == 43)
    {
      if (v17)
      {
        if (--v17)
        {
          v22 = 0;
          v32 = v54 + 1;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            ++v32;
            if (!--v17)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_80:
      __break(1u);
      return;
    }

    if (v14 != 45)
    {
      if (v17)
      {
        v22 = 0;
        v37 = v54;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          v37 = (v37 + 1);
          if (!--v17)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v17)
    {
      if (--v17)
      {
        v22 = 0;
        v26 = v54 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v17)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_78;
  }

  if ((v14 & 0x1000000000000000) != 0)
  {
    v20 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v20 = _StringObject.sharedUTF8.getter();
  }

  v21 = *v20;
  if (v21 == 43)
  {
    if (v18 >= 1)
    {
      v17 = v18 - 1;
      if (v18 != 1)
      {
        v22 = 0;
        if (v20)
        {
          v29 = v20 + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              goto LABEL_64;
            }

            v31 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_64;
            }

            v22 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_64;
            }

            ++v29;
            if (!--v17)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_56;
      }

      goto LABEL_64;
    }

    goto LABEL_79;
  }

  if (v21 == 45)
  {
    if (v18 >= 1)
    {
      v17 = v18 - 1;
      if (v18 != 1)
      {
        v22 = 0;
        if (v20)
        {
          v23 = v20 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_64;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_64;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_64;
            }

            ++v23;
            if (!--v17)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v17) = 0;
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v18)
  {
    v22 = 0;
    if (v20)
    {
      while (1)
      {
        v35 = *v20 - 48;
        if (v35 > 9)
        {
          goto LABEL_64;
        }

        v36 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          goto LABEL_64;
        }

        v22 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          goto LABEL_64;
        }

        ++v20;
        if (!--v18)
        {
          goto LABEL_56;
        }
      }
    }

    goto LABEL_56;
  }

LABEL_64:
  v22 = 0;
  LOBYTE(v17) = 1;
LABEL_65:
  LOBYTE(v53[0]) = v17;
  v40 = v17;

  if (v40)
  {
LABEL_66:
    v22 = 0;
  }

LABEL_67:
  if (sub_1001CA488(v22))
  {
    sub_1001CB248();
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    v41 = sub_1001C8E2C(v54);
    v42 = sub_1001CA668(v53, v22);
    v44 = v43;
    v45 = type metadata accessor for STransferMetrics();
    if (!(*(*(v45 - 1) + 48))(v44, 1, v45))
    {
      static Date.now.getter();
      v46 = type metadata accessor for Date();
      (*(*(v46 - 8) + 56))(v10, 0, 1, v46);
      sub_1001CB2A0(v10, v44 + v45[11]);
      *(v44 + v45[17]) = 1;
      v47 = v45[16];
      v48 = *(v44 + v47);
      *(v44 + v47) = a2;
      swift_errorRetain();
    }

    (v42)(v53, 0);
    (v41)(v54, 0);
  }

  else
  {
    v49 = *aPdpIp0;
    v50 = unk_100378060;

    sub_1001C9C78(a1, 0, v49, v50);

    sub_1001CA72C(a1, a2);
  }

  [*(v3 + v11) unlock];
}

id sub_1001CAED4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for STransferMetricsStore()
{
  result = qword_1003761A8;
  if (!qword_1003761A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CAFF8()
{
  sub_1001CB0A0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001CB0A0()
{
  if (!qword_1003761B8)
  {
    sub_1001A55C8(&qword_1003761C0, &qword_1002F10F8);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1003761B8);
    }
  }
}

uint64_t sub_1001CB110@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001CB150@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1001CB1D0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

unint64_t sub_1001CB248()
{
  result = qword_1003761C8;
  if (!qword_1003761C8)
  {
    type metadata accessor for STransferMetricsStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003761C8);
  }

  return result;
}

uint64_t sub_1001CB2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*sub_1001CB310(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1001CB8A0(v6);
  v6[9] = sub_1001CB414(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1001CB3B4;
}

void sub_1001CB3B4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1001CB414(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = type metadata accessor for STransferMetrics();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[3] = v11;
  v13 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[4] = swift_coroFrameAlloc();
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v9[5] = malloc(v13);
    v14 = malloc(v13);
  }

  v9[6] = v14;
  v15 = *(*(sub_1001A551C(&qword_100377210, &qword_1002F1158) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(v15);
    v9[8] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v9[9] = v16;
  v18 = *v4;
  v19 = sub_1001F6730(a2);
  *(v9 + 88) = v20 & 1;
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_22;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a3 & 1) == 0)
  {
    if (v26 >= v24 && (a3 & 1) == 0)
    {
      v27 = v19;
      sub_1001F95A0();
      v19 = v27;
      goto LABEL_17;
    }

    sub_1001F6AEC(v24, a3 & 1);
    v28 = *v4;
    v19 = sub_1001F6730(a2);
    if ((v25 & 1) == (v29 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_17:
  v9[10] = v19;
  if (v25)
  {
    sub_1001CB8D4(*(*v4 + 56) + *(v12 + 72) * v19, v17);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v12 + 56))(v17, v30, 1, v10);
  return sub_1001CB6B8;
}

void sub_1001CB6B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = (*(*a1 + 24) + 48);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 7);
    sub_1001AC934(v5, v6, &qword_100377210, &qword_1002F1158);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 7);
    if (v7 != 1)
    {
      v10 = *(v2 + 1);
      sub_1001CB8D4(v9, *(v2 + 5));
      v11 = *v10;
      v12 = *(v2 + 10);
      v13 = *(v2 + 5);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 4);
        v15 = *v2;
        sub_1001CB8D4(v13, v14);
        sub_1001F9364(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 8);
    sub_1001AC934(v5, v16, &qword_100377210, &qword_1002F1158);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 8);
    if (v17 != 1)
    {
      v18 = *(v2 + 1);
      sub_1001CB8D4(v9, *(v2 + 6));
      v11 = *v18;
      v12 = *(v2 + 10);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1001CB8D4(v13, v11[7] + *(*(v2 + 3) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_1001AC99C(v9, &qword_100377210, &qword_1002F1158);
  if (v8)
  {
    sub_1001F8270(*(v2 + 10), **(v2 + 1));
  }

LABEL_10:
  v19 = *(v2 + 8);
  v20 = *(v2 + 9);
  v22 = *(v2 + 6);
  v21 = *(v2 + 7);
  v24 = *(v2 + 4);
  v23 = *(v2 + 5);
  sub_1001AC99C(v20, &qword_100377210, &qword_1002F1158);
  free(v20);
  free(v19);
  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t (*sub_1001CB8A0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1001CB8C8;
}

uint64_t sub_1001CB8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STransferMetrics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001CB940()
{
  result = qword_1003761D8;
  if (!qword_1003761D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003761D8);
  }

  return result;
}

uint64_t sub_1001CB98C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_1003761D0, &qword_1002F11A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CB9FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STransferMetrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CBA60(uint64_t a1)
{
  v2 = type metadata accessor for STransferMetrics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001CBABC(void *a1, uint64_t a2, unint64_t a3)
{
  v69 = a2;
  swift_getObjectType();
  v6 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v67 - v8;
  v10 = OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore_lock;
  [*(v3 + OBJC_IVAR____TtC11FTMInternal21STransferMetricsStore_lock) lock];
  v11 = [a1 taskDescription];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = HIBYTE(v15) & 0xF;
  v17 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  v70 = a3;
  v71 = v10;
  v68 = v9;
  if (!v18)
  {

    goto LABEL_66;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    LOBYTE(v73[0]) = 0;
    v21 = sub_1001A5A78(v13, v15, 10);
    v66 = v65;

    if ((v66 & 1) == 0)
    {
LABEL_67:
      v40 = [a1 countOfBytesSent];
      v41 = [a1 countOfBytesReceived];
      v42 = [a1 countOfBytesExpectedToSend];
      v43 = [a1 countOfBytesExpectedToReceive];
      if ((sub_1001CA488(v21) & 1) == 0)
      {
        v49 = *aPdpIp0;
        v50 = unk_100378060;

        sub_1001C9C78(a1, 0, v49, v50);

LABEL_84:
        [*(v72 + v71) unlock];
        return;
      }

      sub_1001CB248();
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      v44 = sub_1001C8E2C(v74);
      v45 = sub_1001CA668(v73, v21);
      v47 = v46;
      v48 = type metadata accessor for STransferMetrics();
      v67 = *(*(v48 - 1) + 48);
      if (!v67(v47, 1, v48))
      {
        v51 = v48[17];
        if ((*(v47 + v51) & 1) == 0)
        {
          *(v47 + v48[12]) = v41;
          *(v47 + v48[13]) = v40;
          *(v47 + v48[14]) = v43;
          *(v47 + v48[15]) = v42;
          if (*(v47 + 8))
          {
            if (v41 != v43)
            {
              goto LABEL_77;
            }
          }

          else if (v40 != v42)
          {
            goto LABEL_77;
          }

          v52 = v68;
          v53 = v51;
          static Date.now.getter();
          v54 = type metadata accessor for Date();
          (*(*(v54 - 8) + 56))(v52, 0, 1, v54);
          sub_1001CB2A0(v52, v47 + v48[11]);
          *(v47 + v53) = 1;
          v55 = v48[16];
          v56 = *(v47 + v55);
          *(v47 + v55) = 0;
        }
      }

LABEL_77:
      (v45)(v73, 0);
      (v44)(v74, 0);
      v57 = v70;
      if (v70)
      {
        v58 = HIBYTE(v70) & 0xF;
        if ((v70 & 0x2000000000000000) == 0)
        {
          v58 = v69 & 0xFFFFFFFFFFFFLL;
        }

        if (v58)
        {

          v59 = sub_1001C8E2C(v74);
          v60 = sub_1001CA668(v73, v21);
          v62 = v61;
          if (!v67(v61, 1, v48))
          {
            v63 = (v62 + v48[10]);
            v64 = v63[1];
            *v63 = v69;
            v63[1] = v57;
          }

          (v60)(v73, 0);
          (v59)(v74, 0);
        }
      }

      goto LABEL_84;
    }

LABEL_66:
    v21 = 0;
    goto LABEL_67;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    if ((v13 & 0x1000000000000000) != 0)
    {
      v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v19 = _StringObject.sharedUTF8.getter();
    }

    v20 = *v19;
    if (v20 == 43)
    {
      if (v17 >= 1)
      {
        v16 = v17 - 1;
        if (v17 != 1)
        {
          v21 = 0;
          if (v19)
          {
            v28 = v19 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_64;
              }

              v30 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_64;
              }

              v21 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_64;
              }

              ++v28;
              if (!--v16)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_91;
    }

    if (v20 != 45)
    {
      if (v17)
      {
        v21 = 0;
        if (v19)
        {
          while (1)
          {
            v34 = *v19 - 48;
            if (v34 > 9)
            {
              goto LABEL_64;
            }

            v35 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_64;
            }

            v21 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              goto LABEL_64;
            }

            ++v19;
            if (!--v17)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      v21 = 0;
      LOBYTE(v16) = 1;
LABEL_65:
      LOBYTE(v73[0]) = v16;
      v39 = v16;

      if ((v39 & 1) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    if (v17 >= 1)
    {
      v16 = v17 - 1;
      if (v17 != 1)
      {
        v21 = 0;
        if (v19)
        {
          v22 = v19 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_64;
            }

            v24 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_64;
            }

            v21 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              goto LABEL_64;
            }

            ++v22;
            if (!--v16)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v16) = 0;
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v74[0] = v13;
  v74[1] = v15 & 0xFFFFFFFFFFFFFFLL;
  if (v13 != 43)
  {
    if (v13 != 45)
    {
      if (v16)
      {
        v21 = 0;
        v36 = v74;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            break;
          }

          v36 = (v36 + 1);
          if (!--v16)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v16)
    {
      if (--v16)
      {
        v21 = 0;
        v25 = v74 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v16)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_90;
  }

  if (v16)
  {
    if (--v16)
    {
      v21 = 0;
      v31 = v74 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          break;
        }

        v21 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v16)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_92:
  __break(1u);
}

unint64_t sub_1001CC1CC()
{
  result = qword_1003761E8;
  if (!qword_1003761E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003761E8);
  }

  return result;
}

uint64_t sub_1001CC220(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001CC27C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001CC2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v18 = sub_1001A551C(&qword_1003761F0, &qword_1002F12D0);
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v18);
  v12 = &v17 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  Button.init(action:label:)();
  v20 = a3;
  v21 = a4;
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.projectedValue.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;

  sub_1001A551C(&qword_1003761F8, &qword_1002F12D8);
  sub_1001AD0C8(&qword_100376200, &qword_1003761F0, &qword_1002F12D0);
  sub_1001CC9F4();
  v15 = v18;
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v9 + 8))(v12, v15);
}

uint64_t sub_1001CC580()
{

  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_1001CC618@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1001CC660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FTMCellMonitorBookmarkedSheetView();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1001A551C(&qword_100376218, &qword_1002F12E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  if (a1)
  {
    v26 = a2;
    v16 = qword_100375020;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricSheetData);
    *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricSheetData) = a1;

    type metadata accessor for FTMAllMetricsModel();
    sub_1001CCB60(&qword_100375508, type metadata accessor for FTMAllMetricsModel);
    *v7 = EnvironmentObject.init()();
    v7[1] = v18;
    v19 = *(v4 + 20);
    *(v7 + v19) = swift_getKeyPath();
    sub_1001A551C(&qword_1003755D0, &qword_1002F44C0);
    swift_storeEnumTagMultiPayload();
    v20 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricSheetData);
    if (v20)
    {

      v21 = static ObservableObject.environmentStore.getter();

      sub_1001B5228(v7, v13);
      v22 = &v13[*(v8 + 36)];
      *v22 = v21;
      v22[1] = v20;
      sub_1001CCBAC(v13, v15);
      v23 = v26;
      sub_1001CCBAC(v15, v26);
      return (*(v9 + 56))(v23, 0, 1, v8);
    }

    __break(1u);
  }

  type metadata accessor for FTMAllMetricsModel();
  sub_1001CCB60(&qword_100375508, type metadata accessor for FTMAllMetricsModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001CC994()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_1001CC580();
}

uint64_t sub_1001CC9A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001CC9E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_1001CC660(*(v1 + 16), a1);
}

unint64_t sub_1001CC9F4()
{
  result = qword_100376208;
  if (!qword_100376208)
  {
    sub_1001A55C8(&qword_1003761F8, &qword_1002F12D8);
    sub_1001CCA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376208);
  }

  return result;
}

unint64_t sub_1001CCA78()
{
  result = qword_100376210;
  if (!qword_100376210)
  {
    sub_1001A55C8(&qword_100376218, &qword_1002F12E0);
    sub_1001CCB60(&qword_100376220, type metadata accessor for FTMCellMonitorBookmarkedSheetView);
    sub_1001AD0C8(&qword_100376228, &qword_100376230, &qword_1002F12E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376210);
  }

  return result;
}

uint64_t sub_1001CCB60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CCBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100376218, &qword_1002F12E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CCC1C()
{
  sub_1001A55C8(&qword_1003761F0, &qword_1002F12D0);
  sub_1001A55C8(&qword_1003761F8, &qword_1002F12D8);
  sub_1001AD0C8(&qword_100376200, &qword_1003761F0, &qword_1002F12D0);
  sub_1001CC9F4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001CCCDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001CCD50()
{
  v1 = OBJC_IVAR____TtC11FTMInternal22FTMPrimaryStateChanged__stateChanged;
  v2 = sub_1001A551C(&qword_100376320, &qword_1002F4310);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FTMPrimaryStateChanged()
{
  result = qword_100376268;
  if (!qword_100376268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CCE4C()
{
  sub_1001CCEDC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001CCEDC()
{
  if (!qword_100376DE0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100376DE0);
    }
  }
}

uint64_t sub_1001CCF34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 289))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001CCF90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 289) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 289) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

uint64_t sub_1001CD044@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FTMPrimaryStateChanged();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001CD08C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1001CD104()
{
  v1 = OBJC_IVAR____TtC11FTMInternal24MetricDetailViewDelegate__metric;
  v2 = sub_1001A551C(&qword_100376420, &qword_1002F14A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MetricDetailViewDelegate()
{
  result = qword_100376358;
  if (!qword_100376358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CD200()
{
  sub_1001CD290();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001CD290()
{
  if (!qword_100376368)
  {
    sub_1001A55C8(&unk_100376370, qword_1002F1420);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100376368);
    }
  }
}

uint64_t sub_1001CD2F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MetricDetailViewDelegate();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001CD334(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1001CD3B4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1001A551C(&unk_100376370, qword_1002F1420);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_1001CD4C0(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1001CD4C0(v10, v8);

  static Published.subscript.setter();
  return sub_1001CD530(v10);
}

uint64_t sub_1001CD4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&unk_100376370, qword_1002F1420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CD530(uint64_t a1)
{
  v2 = sub_1001A551C(&unk_100376370, qword_1002F1420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001CD5AC()
{
  result = qword_100376428;
  if (!qword_100376428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376428);
  }

  return result;
}

id sub_1001CD600()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1];

  [v0 setBackgroundColor:v3];
  v4 = [v0 layer];
  v5 = [v2 blackColor];
  v6 = [v5 CGColor];

  [v4 setShadowColor:v6];
  v7 = [v0 layer];
  [v7 setCornerRadius:8.0];

  v8 = [v0 layer];
  LODWORD(v9) = 1050253722;
  [v8 setShadowOpacity:v9];

  v10 = [v0 layer];
  [v10 setShadowRadius:8.0];

  v11 = [v0 layer];
  [v11 setShadowOffset:{0.0, 2.0}];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_1001CD810()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() colorNamed:v2];

  [v0 setTextColor:v3];
  [v0 setTextAlignment:0];
  v4 = [objc_opt_self() systemFontOfSize:14.0 weight:UIFontWeightMedium];
  [v0 setFont:v4];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_1001CD96C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1001CD9CC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() colorNamed:v2];

  [v0 setTextColor:v3];
  [v0 setTextAlignment:0];
  v4 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightMedium];
  [v0 setFont:v4];

  v5 = v0;
  [v5 setHidden:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v5;
}

id sub_1001CDB44()
{
  v0 = [objc_allocWithZone(UIButton) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  [v0 setImage:v2 forState:0];
  v3 = [v0 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemFontOfSize:35.0 weight:UIFontWeightBold];
    [v4 setFont:v5];
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() colorNamed:v6];

  [v0 setTintColor:v7];
  v8 = v0;
  [v8 setUserInteractionEnabled:0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v8;
}

id sub_1001CDD1C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  [v0 setTextAlignment:0];
  v2 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightLight];
  [v0 setFont:v2];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() colorNamed:v3];

  [v0 setTextColor:v4];
  return v0;
}

char *sub_1001CDE58(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_container;
  *&v4[v9] = sub_1001CD600();
  *&v4[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricNameLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricAvailabilityLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___activityIndicatorButton] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___bottomLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampHiddenConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampVisibleConstraint] = 0;
  v91.receiver = v4;
  v91.super_class = type metadata accessor for AllMetricsViewCell();
  v10 = objc_msgSendSuper2(&v91, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_container;
  v12 = *&v10[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_container];
  v13 = v10;
  v14 = v12;
  v15 = sub_1001CD7F0();
  [v14 addSubview:v15];

  v16 = *&v10[v11];
  v17 = sub_1001CD94C();
  [v16 addSubview:v17];

  v18 = *&v10[v11];
  v19 = sub_1001CDCFC();
  [v18 addSubview:v19];

  v20 = *&v10[v11];
  v21 = sub_1001CDB24();
  [v20 addSubview:v21];

  v22 = [v13 contentView];
  [v22 addSubview:*&v10[v11]];

  v89 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1002EF930;
  v24 = [*&v10[v11] bottomAnchor];
  v25 = [v13 contentView];
  v26 = [v25 bottomAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  *(v23 + 32) = v27;
  v28 = [*&v10[v11] leftAnchor];
  v29 = [v13 contentView];
  v30 = [v29 leftAnchor];

  v31 = [v28 constraintEqualToAnchor:v30];
  *(v23 + 40) = v31;
  v32 = [*&v10[v11] rightAnchor];
  v33 = [v13 contentView];
  v34 = [v33 rightAnchor];

  v35 = [v32 constraintEqualToAnchor:v34];
  *(v23 + 48) = v35;
  v36 = [*&v10[v11] topAnchor];
  v37 = [v13 contentView];
  v38 = [v37 topAnchor];

  v39 = [v36 constraintEqualToAnchor:v38];
  *(v23 + 56) = v39;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints:isa];

  v41 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricNameLabel;
  v42 = [*&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricNameLabel] centerYAnchor];
  v43 = [*&v10[v11] centerYAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  v45 = *&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampHiddenConstraint];
  *&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampHiddenConstraint] = v44;

  v46 = [*&v13[v41] centerYAnchor];
  v47 = [*&v10[v11] centerYAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-10.0];

  v49 = *&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampVisibleConstraint];
  *&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampVisibleConstraint] = v48;

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1002F1530;
  v51 = [*&v13[v41] leftAnchor];
  v52 = [*&v10[v11] leftAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:10.0];

  *(v50 + 32) = v53;
  v54 = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints:v54];

  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1002EF640;
  v56 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricAvailabilityLabel;
  v57 = [*&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricAvailabilityLabel] centerYAnchor];
  v90 = v41;
  v58 = [*&v13[v41] centerYAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v55 + 32) = v59;
  v60 = [*&v13[v56] leftAnchor];
  v61 = [v13 centerXAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:10.0];

  *(v55 + 40) = v62;
  v63 = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints:v63];

  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1002EF640;
  v65 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___activityIndicatorButton;
  v66 = [*&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___activityIndicatorButton] rightAnchor];
  v67 = [v13 rightAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:-15.0];

  *(v64 + 32) = v68;
  v69 = [*&v13[v65] centerYAnchor];
  v70 = [v13 centerYAnchor];

  v71 = [v69 constraintEqualToAnchor:v70];
  *(v64 + 40) = v71;
  v72 = v89;
  v73 = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints:v73];

  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 32) == 0x656E6F685069 && *(qword_100382500 + 40) == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1002F1530;
    v75 = [*&v13[v56] rightAnchor];
    v76 = [*&v13[v65] leftAnchor];
    v77 = [v75 constraintGreaterThanOrEqualToAnchor:v76 constant:5.0];

    *(v74 + 32) = v77;
    v72 = v89;
    v78 = Array._bridgeToObjectiveC()().super.isa;

    [v89 activateConstraints:v78];
  }

  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1002EF640;
  v80 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___bottomLabel;
  v81 = [*&v13[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___bottomLabel] leftAnchor];
  v82 = [*&v13[v90] leftAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  *(v79 + 32) = v83;
  v84 = [*&v13[v80] topAnchor];
  v85 = [*&v13[v90] bottomAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:5.0];

  *(v79 + 40) = v86;
  v87 = Array._bridgeToObjectiveC()().super.isa;

  [v72 activateConstraints:v87];

  return v13;
}

void sub_1001CE920()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for AllMetricsViewCell();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v1 = [v0 layer];
  [v1 setCornerRadius:10.0];

  v2 = [v0 layer];
  v3 = [objc_opt_self() clearColor];
  v4 = [v3 CGColor];

  [v2 setBorderColor:v4];
  v5 = [v0 layer];
  [v5 setMasksToBounds:1];

  v6 = *&v0[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampHiddenConstraint];
  if (v6)
  {
    v7 = *&v0[OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampVisibleConstraint];
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = sub_1001CDCFC();
      v11 = [v10 text];

      if (!v11)
      {
        goto LABEL_7;
      }

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      v16 = v9;
      v17 = v8;
      if (v15)
      {
LABEL_7:
        v16 = v8;
        v17 = v9;
      }

      [v16 setActive:1];
      [v17 setActive:0];
    }
  }
}

char *sub_1001CED94(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11FTMInternal13TopHeaderView____lazy_storage___separatorView] = 0;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for TopHeaderView();
  v9 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  v10 = sub_1001CED88();
  [v9 addSubview:v10];

  v11 = OBJC_IVAR____TtC11FTMInternal13TopHeaderView____lazy_storage___separatorView;
  [*&v9[OBJC_IVAR____TtC11FTMInternal13TopHeaderView____lazy_storage___separatorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1002EF930;
  v14 = [*&v9[v11] centerXAnchor];
  v15 = [v9 centerXAnchor];

  v16 = [v14 constraintEqualToAnchor:v15];
  *(v13 + 32) = v16;
  v17 = [*&v9[v11] heightAnchor];
  v18 = [v17 constraintEqualToConstant:1.0];

  *(v13 + 40) = v18;
  v19 = [*&v9[v11] widthAnchor];
  v20 = [v9 widthAnchor];

  v21 = [v19 constraintEqualToAnchor:v20];
  *(v13 + 48) = v21;
  v22 = [*&v9[v11] bottomAnchor];
  v23 = [v9 bottomAnchor];

  v24 = [v22 constraintEqualToAnchor:v23 constant:1.0];
  *(v13 + 56) = v24;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:isa];

  return v9;
}

id sub_1001CF148(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_1001CF1B4(a2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1001CF1B4(double a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() colorNamed:v3];

  [v2 setTextColor:v4];
  v5 = [objc_opt_self() systemFontOfSize:a1 weight:UIFontWeightBold];
  [v2 setFont:v5];

  [v2 setTextAlignment:0];
  return v2;
}

char *sub_1001CF2C0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11FTMInternal32CollectionHeaderSuplementaryCell____lazy_storage___headerLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal32CollectionHeaderSuplementaryCell____lazy_storage___subHeaderLabel] = 0;
  v34.receiver = v4;
  v34.super_class = type metadata accessor for CollectionHeaderSuplementaryCell();
  v9 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  v10 = sub_1001CF138();
  [v9 addSubview:v10];

  v11 = sub_1001CF1A4();
  [v9 addSubview:v11];

  v12 = OBJC_IVAR____TtC11FTMInternal32CollectionHeaderSuplementaryCell____lazy_storage___headerLabel;
  [*&v9[OBJC_IVAR____TtC11FTMInternal32CollectionHeaderSuplementaryCell____lazy_storage___headerLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = OBJC_IVAR____TtC11FTMInternal32CollectionHeaderSuplementaryCell____lazy_storage___subHeaderLabel;
  [*&v9[OBJC_IVAR____TtC11FTMInternal32CollectionHeaderSuplementaryCell____lazy_storage___subHeaderLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002F1540;
  v15 = [*&v9[v12] topAnchor];
  v16 = [v9 topAnchor];

  v17 = [v15 constraintEqualToAnchor:v16 constant:10.0];
  *(v14 + 32) = v17;
  v18 = [*&v9[v12] leftAnchor];
  v19 = [v9 leftAnchor];

  v20 = [v18 constraintEqualToAnchor:v19 constant:20.0];
  *(v14 + 40) = v20;
  v21 = [*&v9[v12] heightAnchor];
  v22 = [v21 constraintEqualToConstant:21.0];

  *(v14 + 48) = v22;
  v23 = [*&v9[v13] topAnchor];
  v24 = [v9 topAnchor];

  v25 = [v23 constraintEqualToAnchor:v24 constant:10.0];
  *(v14 + 56) = v25;
  v26 = [*&v9[v13] leftAnchor];
  v27 = [v9 centerXAnchor];

  v28 = [v26 constraintEqualToAnchor:v27 constant:10.0];
  *(v14 + 64) = v28;
  v29 = [*&v9[v12] heightAnchor];
  v30 = [v29 constraintEqualToConstant:17.0];

  *(v14 + 72) = v30;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v33 activateConstraints:isa];

  return v9;
}

id sub_1001CF818(uint64_t *a1, uint64_t a2, uint64_t a3, double *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = sub_1001D1F80(2, a2, a3, a4);
    v9 = *(v4 + v5);
    *(v4 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

char *sub_1001CF890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___subtitleLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___valueLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___activityIndicator] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___separatorView] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v77.receiver = v3;
  v77.super_class = type metadata accessor for FavoritesTableCellV2();
  v6 = objc_msgSendSuper2(&v77, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = v6;
  v8 = [v7 contentView];
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() colorNamed:v9];

  [v8 setBackgroundColor:v10];
  [v7 setSelectionStyle:0];
  v11 = [v7 contentView];
  v12 = sub_1001CF7C4();
  [v11 addSubview:v12];

  v13 = [v7 contentView];
  v14 = sub_1001CF7DC();
  [v13 addSubview:v14];

  v15 = [v7 contentView];
  v16 = sub_1001CF7F4();
  [v15 addSubview:v16];

  v17 = [v7 contentView];
  v18 = sub_1001CF878();
  [v17 addSubview:v18];

  v19 = v7;
  v20 = [v19 contentView];
  v21 = sub_1001CF884();
  [v20 addSubview:v21];

  v22 = OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___titleLabel;
  [*&v19[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___subtitleLabel;
  [*&v19[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___subtitleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v74 = OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___valueLabel;
  [*&v19[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___valueLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v75 = OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___activityIndicator;
  [*&v19[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___activityIndicator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___separatorView;
  v73 = OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___separatorView;
  [*&v19[OBJC_IVAR____TtC11FTMInternal20FavoritesTableCellV2____lazy_storage___separatorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v76 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1002EF640;
  v26 = [*&v19[v22] topAnchor];
  v27 = [v19 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:5.0];

  *(v25 + 32) = v28;
  v29 = [*&v19[v22] leftAnchor];
  v30 = [*&v19[v24] leftAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v25 + 40) = v31;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:isa];

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1002EF640;
  v34 = [*&v19[v23] leftAnchor];
  v35 = [*&v19[v22] leftAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v33 + 32) = v36;
  v37 = [*&v19[v23] topAnchor];
  v38 = [*&v19[v22] bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:5.0];

  *(v33 + 40) = v39;
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v40];

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1002EF640;
  v42 = [*&v19[v74] centerYAnchor];
  v43 = [*&v19[v23] centerYAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v41 + 32) = v44;
  v45 = [*&v19[v74] rightAnchor];
  v46 = [*&v19[v73] rightAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v41 + 40) = v47;
  v48 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v48];

  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1002EF640;
  v50 = [*&v19[v75] centerYAnchor];
  v51 = [v19 contentView];
  v52 = [v51 centerYAnchor];

  v53 = [v50 constraintEqualToAnchor:v52];
  *(v49 + 32) = v53;
  v54 = [*&v19[v75] rightAnchor];
  v55 = [*&v19[v73] rightAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v49 + 40) = v56;
  v57 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v57];

  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1002EF930;
  v59 = [*&v19[v73] centerXAnchor];
  v60 = [v19 centerXAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v58 + 32) = v61;
  v62 = [*&v19[v73] heightAnchor];
  v63 = [v62 constraintEqualToConstant:1.0];

  *(v58 + 40) = v63;
  v64 = [*&v19[v73] widthAnchor];
  v65 = [v19 widthAnchor];

  v66 = [v64 constraintEqualToAnchor:v65 constant:-40.0];
  *(v58 + 48) = v66;
  v67 = [*&v19[v73] bottomAnchor];
  v68 = [v19 contentView];

  v69 = [v68 bottomAnchor];
  v70 = [v67 constraintEqualToAnchor:v69 constant:-5.0];

  *(v58 + 56) = v70;
  v71 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v71];

  return v19;
}

void sub_1001D031C(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(id))
{
  v7.receiver = a1;
  v7.super_class = a3();
  v5 = v7.receiver;
  v6 = objc_msgSendSuper2(&v7, "prepareForReuse");
  a4(v6);
}

void sub_1001D03C4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = a1();
  v6 = String._bridgeToObjectiveC()();
  [v5 setText:v6];

  v7 = a2();
  v8 = String._bridgeToObjectiveC()();
  [v7 setText:v8];

  v9 = a3();
  v10 = String._bridgeToObjectiveC()();
  [v9 setText:v10];
}

id sub_1001D05B8()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  [v0 setTextAlignment:0];
  v2 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightLight];
  [v0 setFont:v2];

  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() colorNamed:v3];

  [v0 setTextColor:v4];
  return v0;
}

id sub_1001D0710(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() colorNamed:v6];

    [v5 setColor:v7];
    [v5 setHidesWhenStopped:1];
    v8 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

char *sub_1001D080C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___subtitleLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___bottomLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___valueLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___activityIndicator] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___separatorView] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v87.receiver = v3;
  v87.super_class = type metadata accessor for DashboardCell();
  v6 = objc_msgSendSuper2(&v87, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = v6;
  v8 = [v7 contentView];
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() colorNamed:v9];

  [v8 setBackgroundColor:v10];
  [v7 setSelectionStyle:0];
  v11 = [v7 contentView];
  v12 = sub_1001D0568();
  [v11 addSubview:v12];

  v13 = [v7 contentView];
  v14 = sub_1001D0580();
  [v13 addSubview:v14];

  v15 = [v7 contentView];
  v16 = sub_1001D0598();
  [v15 addSubview:v16];

  v17 = [v7 contentView];
  v18 = sub_1001D06E0();
  [v17 addSubview:v18];

  v19 = [v7 contentView];
  v20 = sub_1001D0704();
  [v19 addSubview:v20];

  v21 = v7;
  v22 = [v21 contentView];
  v23 = sub_1001D0800();
  [v22 addSubview:v23];

  v24 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___titleLabel;
  [*&v21[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v86 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___subtitleLabel;
  [*&v21[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___subtitleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v82 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___bottomLabel;
  [*&v21[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___bottomLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v84 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___valueLabel;
  [*&v21[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___valueLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v85 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___activityIndicator;
  [*&v21[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___activityIndicator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___separatorView;
  v83 = OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___separatorView;
  [*&v21[OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___separatorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v81 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1002EF640;
  v27 = [*&v21[v24] topAnchor];
  v28 = [v21 topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:5.0];

  *(v26 + 32) = v29;
  v30 = [*&v21[v24] leftAnchor];
  v31 = [*&v21[v25] leftAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v26 + 40) = v32;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:isa];

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1002EF640;
  v35 = [*&v21[v86] leftAnchor];
  v36 = [*&v21[v24] leftAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v34 + 32) = v37;
  v38 = [*&v21[v86] topAnchor];
  v39 = [*&v21[v24] bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:5.0];

  *(v34 + 40) = v40;
  v41 = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:v41];

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1002EF640;
  v43 = [*&v21[v82] leftAnchor];
  v44 = [*&v21[v86] leftAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v42 + 32) = v45;
  v46 = [*&v21[v82] topAnchor];
  v47 = [*&v21[v86] bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:5.0];

  *(v42 + 40) = v48;
  v49 = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:v49];

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1002EF640;
  v51 = [*&v21[v84] centerYAnchor];
  v52 = [*&v21[v86] centerYAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v50 + 32) = v53;
  v54 = [*&v21[v84] rightAnchor];
  v55 = [*&v21[v83] rightAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v50 + 40) = v56;
  v57 = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:v57];

  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1002EF640;
  v59 = [*&v21[v85] centerYAnchor];
  v60 = [*&v21[v86] centerYAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v58 + 32) = v61;
  v62 = [*&v21[v85] rightAnchor];
  v63 = [*&v21[v83] rightAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v58 + 40) = v64;
  v65 = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:v65];

  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1002EF930;
  v67 = [*&v21[v83] centerXAnchor];
  v68 = [v21 centerXAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v66 + 32) = v69;
  v70 = [*&v21[v83] heightAnchor];
  v71 = [v70 constraintEqualToConstant:1.0];

  *(v66 + 40) = v71;
  v72 = [*&v21[v83] widthAnchor];
  v73 = [v21 widthAnchor];

  v74 = [v72 constraintEqualToAnchor:v73 constant:-40.0];
  *(v66 + 48) = v74;
  v75 = [*&v21[v83] bottomAnchor];
  v76 = [v21 contentView];

  v77 = [v76 bottomAnchor];
  v78 = [v75 constraintEqualToAnchor:v77 constant:-5.0];

  *(v66 + 56) = v78;
  v79 = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:v79];

  return v21;
}

void sub_1001D13A8()
{
  v0 = sub_1001D0568();
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  v2 = sub_1001D0580();
  v3 = String._bridgeToObjectiveC()();
  [v2 setText:v3];

  v4 = sub_1001D0598();
  v5 = String._bridgeToObjectiveC()();
  [v4 setText:v5];

  v6 = sub_1001D06E0();
  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];
}

id sub_1001D1588(uint64_t *a1, double *a2, double a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = [objc_allocWithZone(UILabel) init];
    v10 = String._bridgeToObjectiveC()();
    [v9 setText:v10];

    [v9 setTextAlignment:0];
    v11 = [objc_opt_self() systemFontOfSize:a3 weight:*a2];
    [v9 setFont:v11];

    v12 = *(v3 + v4);
    *(v3 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

id sub_1001D16A0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(UIView) init];
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() colorNamed:v6];

    [v5 setBackgroundColor:v7];
    v8 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

char *sub_1001D1784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11FTMInternal23MultiSelectionModalCell____lazy_storage___titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC11FTMInternal23MultiSelectionModalCell____lazy_storage___separatorView] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v42.receiver = v3;
  v42.super_class = type metadata accessor for MultiSelectionModalCell();
  v6 = objc_msgSendSuper2(&v42, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = v6;
  v8 = [v7 contentView];
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() colorNamed:v9];

  [v8 setBackgroundColor:v10];
  [v7 setSelectionStyle:0];
  v11 = [v7 contentView];
  v12 = sub_1001D1570();
  [v11 addSubview:v12];

  v13 = v7;
  v14 = [v13 contentView];
  v15 = sub_1001D1694();
  [v14 addSubview:v15];

  v16 = OBJC_IVAR____TtC11FTMInternal23MultiSelectionModalCell____lazy_storage___titleLabel;
  [*&v13[OBJC_IVAR____TtC11FTMInternal23MultiSelectionModalCell____lazy_storage___titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = OBJC_IVAR____TtC11FTMInternal23MultiSelectionModalCell____lazy_storage___separatorView;
  [*&v13[OBJC_IVAR____TtC11FTMInternal23MultiSelectionModalCell____lazy_storage___separatorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002EF640;
  v20 = [*&v13[v16] centerXAnchor];
  v21 = [v13 centerXAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v19 + 32) = v22;
  v23 = [*&v13[v16] centerYAnchor];
  v24 = [v13 centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v19 + 40) = v25;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1002EF930;
  v28 = [*&v13[v17] centerXAnchor];
  v29 = [v13 centerXAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v27 + 32) = v30;
  v31 = [*&v13[v17] heightAnchor];
  v32 = [v31 constraintEqualToConstant:1.0];

  *(v27 + 40) = v32;
  v33 = [*&v13[v17] widthAnchor];
  v34 = [v13 widthAnchor];

  v35 = [v33 constraintEqualToAnchor:v34 constant:-40.0];
  *(v27 + 48) = v35;
  v36 = [*&v13[v17] bottomAnchor];
  v37 = [v13 contentView];

  v38 = [v37 bottomAnchor];
  v39 = [v36 constraintEqualToAnchor:v38 constant:-5.0];

  *(v27 + 56) = v39;
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:v40];

  return v13;
}

uint64_t sub_1001D1CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a5(a3, a4, v8);
}

void sub_1001D1DB0(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(id))
{
  v9.receiver = a1;
  v9.super_class = a3();
  v5 = v9.receiver;
  v6 = objc_msgSendSuper2(&v9, "prepareForReuse");
  v7 = a4(v6);
  v8 = String._bridgeToObjectiveC()();
  [v7 setText:{v8, v9.receiver, v9.super_class}];
}

id sub_1001D1ED0()
{
  v1 = OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel);
  }

  else
  {
    v4 = sub_1001D1F80(0, 0x656C746954, 0xE500000000000000, &UIFontWeightLight);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1001D1F80(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v6 = [objc_allocWithZone(UILabel) init];
  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];

  [v6 setTextAlignment:a1];
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() colorNamed:v8];

  [v6 setTextColor:v9];
  v10 = [objc_opt_self() systemFontOfSize:13.0 weight:*a4];
  [v6 setFont:v10];

  return v6;
}

id sub_1001D20B0()
{
  v1 = OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() colorNamed:v5];

    [v4 setBackgroundColor:v6];
    [v4 setHidden:1];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_1001D21B0(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC11FTMInternal12SecondVCCell_metricFavorited] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___rightLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___separatorView] = 0;
  v58.receiver = v4;
  v58.super_class = type metadata accessor for SecondVCCell();
  v9 = objc_msgSendSuper2(&v58, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 contentView];
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() colorNamed:v11];

  [v10 setBackgroundColor:v12];
  v13 = [v9 contentView];
  v14 = sub_1001D1ED0();
  [v13 addSubview:v14];

  v15 = [v9 contentView];
  v16 = sub_1001D1F4C();
  [v15 addSubview:v16];

  v17 = v9;
  v18 = [v17 contentView];
  v19 = sub_1001D20B0();
  [v18 addSubview:v19];

  v20 = OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel;
  [*&v17[OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___leftLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___rightLabel;
  [*&v17[OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___rightLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___separatorView;
  [*&v17[OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___separatorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v57 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1002EF640;
  v24 = [*&v17[v20] bottomAnchor];
  v25 = [*&v17[v22] topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-5.0];

  *(v23 + 32) = v26;
  v27 = [*&v17[v20] leftAnchor];
  v28 = [*&v17[v22] leftAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v23 + 40) = v29;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v57 activateConstraints:isa];

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1002F1550;
  v32 = [*&v17[v21] centerYAnchor];
  v33 = [*&v17[v20] centerYAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v31 + 32) = v34;
  v35 = [*&v17[v21] rightAnchor];
  v36 = [*&v17[v22] rightAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v31 + 40) = v37;
  v38 = [*&v17[v21] leftAnchor];
  v39 = [*&v17[v20] rightAnchor];
  v40 = [v38 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v39 multiplier:1.0];

  *(v31 + 48) = v40;
  v41 = Array._bridgeToObjectiveC()().super.isa;

  [v57 activateConstraints:v41];

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1002EF930;
  v43 = [*&v17[v22] centerXAnchor];
  v44 = [v17 centerXAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v42 + 32) = v45;
  v46 = [*&v17[v22] heightAnchor];
  v47 = [v46 constraintEqualToConstant:1.0];

  *(v42 + 40) = v47;
  v48 = [*&v17[v22] widthAnchor];
  v49 = [v17 widthAnchor];

  v50 = [v48 constraintEqualToAnchor:v49 constant:-40.0];
  *(v42 + 48) = v50;
  v51 = [*&v17[v22] bottomAnchor];
  v52 = [v17 contentView];

  v53 = [v52 bottomAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:-5.0];

  *(v42 + 56) = v54;
  v55 = Array._bridgeToObjectiveC()().super.isa;

  [v57 activateConstraints:v55];

  return v17;
}