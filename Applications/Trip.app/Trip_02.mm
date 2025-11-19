__n128 sub_100035D10@<Q0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for MeasurementStack(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_100003090(&qword_10005C860, &qword_100041ED8);
  v7 = *(v6 - 8);
  v33 = v6 - 8;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v32 - v9;
  v11 = sub_100003090(&qword_10005C868, &qword_100041EE0);
  v12 = *(v11 - 8);
  v35 = v11 - 8;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v34 = &v32 - v14;
  *v10 = static Alignment.center.getter();
  *(v10 + 1) = v15;
  *(v10 + 2) = 0x4024000000000000;
  v10[24] = 0;
  *(v10 + 4) = 0;
  v10[40] = 1;
  v16 = &v10[*(sub_100003090(&qword_10005C870, &qword_100041EE8) + 44)];
  *v16 = 0;
  v16[8] = 1;
  v32 = *(sub_100003090(&qword_10005C878, &qword_100041EF0) + 36);
  *&v44 = *(v1 + *(v3 + 28));
  sub_1000365D4(v1, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MeasurementStack);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_10003656C(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for MeasurementStack);

  sub_100003090(&qword_10005BA28, &qword_1000413F0);
  type metadata accessor for UUID();
  sub_100003090(&qword_10005C880, &qword_100041EF8);
  sub_100003894(&qword_10005BA30, &qword_10005BA28, &qword_1000413F0);
  sub_100036878();
  sub_100036524(&qword_10005BA50, type metadata accessor for CardCellConfiguration);
  ForEach<>.init(_:content:)();
  *&v10[*(v33 + 44)] = static HorizontalAlignment.center.getter();
  v19 = (v1 + *(v3 + 36));
  v30 = *v19;
  v31 = v19[1];
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v20 = v34;
  sub_100008944(v10, v34, &qword_10005C860, &qword_100041ED8);
  v21 = (v20 + *(v35 + 44));
  v22 = v42;
  v21[4] = v41;
  v21[5] = v22;
  v21[6] = v43;
  v23 = v38;
  *v21 = v37;
  v21[1] = v23;
  v24 = v40;
  v21[2] = v39;
  v21[3] = v24;
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v25 = v36;
  sub_100008944(v20, v36, &qword_10005C868, &qword_100041EE0);
  v26 = v25 + *(sub_100003090(&qword_10005C8A0, &qword_100041F08) + 36);
  v27 = v49;
  *(v26 + 64) = v48;
  *(v26 + 80) = v27;
  *(v26 + 96) = v50;
  v28 = v45;
  *v26 = v44;
  *(v26 + 16) = v28;
  result = v47;
  *(v26 + 32) = v46;
  *(v26 + 48) = result;
  return result;
}

double sub_1000361E4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for MeasurementStack(0);
  v7 = *(a2 + *(v6 + 24));
  *a3 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig();
  sub_100036524(&qword_10005A6E0, type metadata accessor for TripAppConfig);

  v8 = EnvironmentObject.init()();
  v10 = v9;
  v11 = type metadata accessor for TripMeasurementView();
  v12 = (a3 + v11[5]);
  *v12 = v8;
  v12[1] = v10;
  v13 = (a3 + v11[6]);
  type metadata accessor for CardCellConfiguration(0);
  sub_100036524(&unk_10005B688, type metadata accessor for CardCellConfiguration);
  *v13 = ObservedObject.init(wrappedValue:)();
  v13[1] = v14;
  *(a3 + v11[7]) = v7;
  *(a3 + v11[8]) = 0x3FF8000000000000;
  v15 = (a3 + *(sub_100003090(&qword_10005C898, &qword_100041F00) + 36));
  *v15 = v5;
  v15[1] = 0xD000000000000012;
  v15[2] = 0x8000000100042830;
  v16 = (a2 + *(v6 + 28));
  v17 = *v16;
  v18 = v16[1];

  _FrameLayout.init(width:height:alignment:)();
  v19 = (a3 + *(sub_100003090(&qword_10005C880, &qword_100041EF8) + 36));
  *v19 = v21;
  v19[1] = v22;
  result = *&v23;
  v19[2] = v23;
  return result;
}

unint64_t sub_100036464()
{
  result = qword_10005C848;
  if (!qword_10005C848)
  {
    sub_1000036BC(&qword_10005C840, &unk_100041E90);
    sub_100029A94();
    sub_100003894(&qword_10005C850, &qword_10005C858, &qword_100041EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C848);
  }

  return result;
}

uint64_t sub_100036524(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003656C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000365D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100036654(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = (v1 + v4);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v7 - 8) + 8))(v1 + v4, v7);
    v8 = type metadata accessor for LayoutConfiguration(0);
    v9 = (v6 + *(v8 + 20));
    v10 = *v9;

    v11 = v9[1];

    sub_1000085F8((v6 + *(v8 + 24)));
  }

  else
  {
    v12 = *v6;
  }

  v13 = *(v6 + *(v2 + 20));

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_1000367E0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_100036878()
{
  result = qword_10005C888;
  if (!qword_10005C888)
  {
    sub_1000036BC(&qword_10005C880, &qword_100041EF8);
    sub_100036904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C888);
  }

  return result;
}

unint64_t sub_100036904()
{
  result = qword_10005C890;
  if (!qword_10005C890)
  {
    sub_1000036BC(&qword_10005C898, &qword_100041F00);
    sub_100036524(&qword_10005BA48, type metadata accessor for TripMeasurementView);
    sub_100003894(&qword_10005C850, &qword_10005C858, &qword_100041EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C890);
  }

  return result;
}

unint64_t sub_1000369F0()
{
  result = qword_10005C8A8;
  if (!qword_10005C8A8)
  {
    sub_1000036BC(&qword_10005C830, &qword_100041E80);
    sub_100036A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C8A8);
  }

  return result;
}

unint64_t sub_100036A7C()
{
  result = qword_10005C8B0;
  if (!qword_10005C8B0)
  {
    sub_1000036BC(&qword_10005C818, &qword_100041E70);
    sub_100003894(&qword_10005C8B8, &qword_10005C810, &qword_100041E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C8B0);
  }

  return result;
}

unint64_t sub_100036B38()
{
  result = qword_10005C8C0;
  if (!qword_10005C8C0)
  {
    sub_1000036BC(&qword_10005C8A0, &qword_100041F08);
    sub_100036BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C8C0);
  }

  return result;
}

unint64_t sub_100036BC4()
{
  result = qword_10005C8C8;
  if (!qword_10005C8C8)
  {
    sub_1000036BC(&qword_10005C868, &qword_100041EE0);
    sub_100036C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C8C8);
  }

  return result;
}

unint64_t sub_100036C50()
{
  result = qword_10005C8D0;
  if (!qword_10005C8D0)
  {
    sub_1000036BC(&qword_10005C860, &qword_100041ED8);
    sub_100003894(&qword_10005C8D8, &qword_10005C8E0, &unk_100041F10);
    sub_100036D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C8D0);
  }

  return result;
}

unint64_t sub_100036D08()
{
  result = qword_10005C8E8;
  if (!qword_10005C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C8E8);
  }

  return result;
}

uint64_t sub_100036D98()
{
  *(v0 + 16) = xmmword_100041F20;
  *(v0 + 32) = xmmword_100041F30;
  *(v0 + 48) = xmmword_100041F40;
  *(v0 + 64) = xmmword_100041F50;
  *(v0 + 80) = static Color.primary.getter();
  *(v0 + 88) = 0x4038000000000000;
  v1 = objc_opt_self();
  v2 = [v1 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v3 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v4 = [v3 scaledFontForFont:v2];

  *(v0 + 96) = Font.init(_:)();
  v5 = [v1 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v6 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v7 = [v6 scaledFontForFont:v5];

  *(v0 + 104) = Font.init(_:)();
  v8 = [v1 systemFontOfSize:20.0 weight:UIFontWeightMedium];
  v9 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v10 = [v9 scaledFontForFont:v8];

  *(v0 + 112) = Font.init(_:)();
  *(v0 + 120) = static Color.primary.getter();
  v11 = [v1 systemFontOfSize:14.0 weight:UIFontWeightRegular];
  v12 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCaption1];
  v13 = [v12 scaledFontForFont:v11];

  *(v0 + 128) = Font.init(_:)();
  v14 = [objc_opt_self() systemGrayColor];
  *(v0 + 136) = Color.init(uiColor:)();
  *(v0 + 144) = 0x4000000000000000;
  return v0;
}

uint64_t sub_10003707C()
{
  v1 = sub_100003090(&qword_10005A870, &qword_100040B80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v13 - v3;
  *(v0 + 16) = xmmword_100041F60;
  *(v0 + 32) = xmmword_100041F70;
  *(v0 + 48) = xmmword_100041F80;
  *(v0 + 64) = xmmword_100041F90;
  *(v0 + 80) = static Color.primary.getter();
  *(v0 + 88) = 0x4034000000000000;
  static Font.Weight.bold.getter();
  v5 = type metadata accessor for Font.Design();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = static Font.system(size:weight:design:)();
  sub_100037844(v4);
  *(v0 + 96) = v7;
  static Font.Weight.bold.getter();
  v6(v4, 1, 1, v5);
  v8 = static Font.system(size:weight:design:)();
  sub_100037844(v4);
  *(v0 + 104) = v8;
  static Font.Weight.bold.getter();
  v6(v4, 1, 1, v5);
  v9 = static Font.system(size:weight:design:)();
  sub_100037844(v4);
  *(v0 + 112) = v9;
  *(v0 + 120) = static Color.primary.getter();
  static Font.Weight.regular.getter();
  v6(v4, 1, 1, v5);
  v10 = static Font.system(size:weight:design:)();
  sub_100037844(v4);
  *(v0 + 128) = v10;
  v11 = [objc_opt_self() systemGrayColor];
  *(v0 + 136) = Color.init(uiColor:)();
  *(v0 + 144) = 0x4000000000000000;
  return v0;
}

double sub_1000372F4()
{
  result = *(*v0 + 40);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 64);
  return result;
}

void sub_100037304(double a1, double a2, double a3, double a4)
{
  v5 = *v4;
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = a3;
  v5[8] = a4;
}

uint64_t sub_100037340(uint64_t a1)
{
  v2 = *(*v1 + 104);
  *(*v1 + 104) = a1;
}

uint64_t sub_100037360(uint64_t a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 112) = a1;
}

uint64_t sub_100037380(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 120) = a1;
}

uint64_t sub_1000373A0(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 128) = a1;
}

void *sub_100037414()
{
  v1 = v0[10];

  v2 = v0[12];

  v3 = v0[13];

  v4 = v0[14];

  v5 = v0[15];

  v6 = v0[16];

  v7 = v0[17];

  return v0;
}

uint64_t sub_100037464()
{
  sub_100037414();

  return _swift_deallocClassInstance(v0, 152, 7);
}

uint64_t sub_1000374BC()
{
  *(v0 + 16) = xmmword_100041FA0;
  *(v0 + 32) = xmmword_100041F30;
  *(v0 + 48) = xmmword_100041FB0;
  *(v0 + 64) = xmmword_100041FA0;
  *(v0 + 80) = static Color.primary.getter();
  *(v0 + 88) = 0x4038000000000000;
  v1 = objc_opt_self();
  v2 = [v1 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v3 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v4 = [v3 scaledFontForFont:v2];

  *(v0 + 96) = Font.init(_:)();
  v5 = [v1 systemFontOfSize:16.0 weight:UIFontWeightSemibold];
  v6 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v7 = [v6 scaledFontForFont:v5];

  *(v0 + 104) = Font.init(_:)();
  v8 = [v1 systemFontOfSize:16.0 weight:UIFontWeightSemibold];
  v9 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v10 = [v9 scaledFontForFont:v8];

  *(v0 + 112) = Font.init(_:)();
  *(v0 + 120) = static Color.primary.getter();
  v11 = [v1 systemFontOfSize:16.0 weight:UIFontWeightSemibold];
  v12 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCaption1];
  v13 = [v12 scaledFontForFont:v11];

  *(v0 + 128) = Font.init(_:)();
  v14 = [objc_opt_self() systemGrayColor];
  *(v0 + 136) = Color.init(uiColor:)();
  *(v0 + 144) = 0x4010000000000000;
  return v0;
}

uint64_t sub_100037758(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_100003090(&qword_10005A870, &qword_100040B80);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v12 - v7;
  a3(v6);
  v9 = type metadata accessor for Font.Design();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = static Font.system(size:weight:design:)();
  sub_100037844(v8);
  return v10;
}

uint64_t sub_100037844(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005A870, &qword_100040B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000378FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_100008DD0(v2, &v16 - v11, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10003A310(v12, a1, type metadata accessor for LayoutConfiguration);
  }

  v14 = *v12;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100037AE0()
{
  if (qword_10005A3B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100037B3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003090(&qword_10005CEF8, &qword_1000421F0);
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  __chkstk_darwin(v3);
  v63 = &v61 - v5;
  v77 = sub_100003090(&qword_10005CF00, &qword_1000421F8);
  v6 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v69 = &v61 - v7;
  v78 = sub_100003090(&qword_10005CF08, &qword_100042200);
  v8 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v79 = &v61 - v9;
  v72 = sub_100003090(&qword_10005CF10, &qword_100042208);
  v10 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v73 = &v61 - v11;
  v75 = sub_100003090(&qword_10005CF18, &qword_100042210);
  v12 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v76 = &v61 - v13;
  v74 = sub_100003090(&qword_10005CF20, &qword_100042218);
  v66 = *(v74 - 8);
  v14 = *(v66 + 64);
  __chkstk_darwin(v74);
  v65 = &v61 - v15;
  v16 = type metadata accessor for CAFUIAppPresentationMode();
  v70 = *(v16 - 8);
  v17 = *(v70 + 64);
  v18 = __chkstk_darwin(v16);
  v62 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v61 - v20;
  v22 = type metadata accessor for LayoutConfiguration(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v61 - v27;
  v29 = sub_100003090(&qword_10005CF28, &qword_100042220);
  v80 = *(v29 - 8);
  v81 = v29;
  v30 = *(v80 + 64);
  __chkstk_darwin(v29);
  v71 = &v61 - v31;
  v32 = type metadata accessor for TripsTabView();
  v33 = v1;
  v34 = *(v1 + *(v32 + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v84 >> 62))
  {
    v35 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v35)
    {
      goto LABEL_3;
    }

LABEL_14:
    v55 = 1;
    return (*(v80 + 56))(a1, v55, 1, v81);
  }

  v56 = _CocoaArrayWrapper.endIndex.getter();

  if (!v56)
  {
    goto LABEL_14;
  }

LABEL_3:
  v61 = v26;
  v64 = a1;
  sub_1000378FC(v28);
  v36 = v70;
  v37 = *(v70 + 16);
  v37(v21, v28, v16);
  sub_10003A098(v28, type metadata accessor for LayoutConfiguration);
  v38 = (*(v36 + 88))(v21, v16);
  if (v38 == enum case for CAFUIAppPresentationMode.console(_:))
  {
    v39 = (v33 + *(v32 + 24));
    v40 = *v39;
    v41 = v39[1];
    v42 = *(v39 + 16);
    type metadata accessor for TripEnvironment(0);
    sub_10003A048(&unk_10005CEC0, type metadata accessor for TripEnvironment);
    StateObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v82 = v84;
    v83 = v85;
    __chkstk_darwin(v43);
    sub_100003090(&qword_10005CF58, &qword_1000422E0);
    sub_100039B5C();
    v44 = v65;
    TabView.init(selection:content:)();
    v45 = v66;
    v46 = v74;
    (*(v66 + 16))(v73, v44, v74);
    swift_storeEnumTagMultiPayload();
    sub_100003894(&qword_10005CF30, &qword_10005CF20, &qword_100042218);
    sub_1000398A4();
    v47 = v76;
    _ConditionalContent<>.init(storage:)();
    sub_100039954(v47, v79);
    swift_storeEnumTagMultiPayload();
    sub_1000399C4();
    v48 = v71;
    _ConditionalContent<>.init(storage:)();
    sub_100039A7C(v47);
    (*(v45 + 8))(v44, v46);
LABEL_12:
    a1 = v64;
    sub_100008944(v48, v64, &qword_10005CF28, &qword_100042220);
    v55 = 0;
    return (*(v80 + 56))(a1, v55, 1, v81);
  }

  if (v38 == enum case for CAFUIAppPresentationMode.clusterDCA(_:) || v38 == enum case for CAFUIAppPresentationMode.clusterPopover(_:) || v38 == enum case for CAFUIAppPresentationMode.widget(_:))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v49 = v69;
    if (v84)
    {
      type metadata accessor for TripView();
      sub_10003A048(&qword_10005CF50, type metadata accessor for TripView);
      v50 = v63;
      Carousel.init(model:content:)();
      v52 = v67;
      v51 = v68;
      (*(v67 + 32))(v49, v50, v68);
      v53 = 0;
      v48 = v71;
    }

    else
    {
      v53 = 1;
      v48 = v71;
      v52 = v67;
      v51 = v68;
    }

    (*(v52 + 56))(v49, v53, 1, v51);
    sub_100008DD0(v49, v73, &qword_10005CF00, &qword_1000421F8);
    swift_storeEnumTagMultiPayload();
    sub_100003894(&qword_10005CF30, &qword_10005CF20, &qword_100042218);
    sub_1000398A4();
    v54 = v76;
    _ConditionalContent<>.init(storage:)();
    sub_100039954(v54, v79);
    swift_storeEnumTagMultiPayload();
    sub_1000399C4();
    _ConditionalContent<>.init(storage:)();
    sub_100039A7C(v54);
    sub_100039AE4(v49);
    goto LABEL_12;
  }

  *&v84 = 0;
  *(&v84 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v58._object = 0x8000000100043690;
  v58._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v58);
  v59 = v61;
  sub_1000378FC(v61);
  v60 = v62;
  v37(v62, v59, v16);
  sub_10003A098(v59, type metadata accessor for LayoutConfiguration);
  _print_unlocked<A, B>(_:_:)();
  (*(v70 + 8))(v60, v16);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100038678(uint64_t a1)
{
  v2 = type metadata accessor for TripsTabView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(a1 + *(__chkstk_darwin(v2 - 8) + 28) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100039DEC(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_10003A310(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TripsTabView);
  sub_100003090(&qword_10005B4B0, &qword_100040C28);
  type metadata accessor for UUID();
  sub_100003090(&qword_10005CF70, &qword_1000422E8);
  sub_100003894(&qword_10005CF90, &qword_10005B4B0, &qword_100040C28);
  sub_100039BE0();
  sub_10003A048(&qword_10005CF98, type metadata accessor for CardModel);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000388C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = type metadata accessor for TripsTabView();
  v6 = *(v5 - 8);
  v65 = v5 - 8;
  v62 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v61 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TripView();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100003090(&qword_10005CF78, &qword_1000422F0);
  v13 = *(v12 - 8);
  v63 = v12;
  v64 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v60 = &v52 - v15;
  v55 = sub_100003090(&qword_10005A3D8, &qword_10003FAA8);
  v53 = *(v55 - 8);
  v16 = *(v53 + 64);
  __chkstk_darwin(v55);
  v66 = &v52 - v17;
  v18 = sub_100003090(&qword_10005CFA0, &qword_100042300);
  v57 = *(v18 - 8);
  v58 = v18;
  v19 = *(v57 + 64);
  __chkstk_darwin(v18);
  v56 = &v52 - v20;
  v54 = sub_100003090(&qword_10005CF70, &qword_1000422E8);
  v21 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v52 = &v52 - v22;
  v23 = *a1;
  *v11 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig();
  sub_10003A048(&qword_10005A6E0, type metadata accessor for TripAppConfig);

  v24 = EnvironmentObject.init()();
  v25 = (v11 + *(v8 + 20));
  *v25 = v24;
  v25[1] = v26;
  v27 = (v11 + *(v8 + 24));
  type metadata accessor for CardModel(0);
  sub_10003A048(&qword_10005A6D0, type metadata accessor for CardModel);
  *v27 = ObservedObject.init(wrappedValue:)();
  v27[1] = v28;
  v29 = sub_100003090(&qword_10005CF80, &qword_1000422F8);
  v30 = sub_10003A048(&qword_10005CF50, type metadata accessor for TripView);
  v31 = sub_100003894(&qword_10005CF88, &qword_10005CF80, &qword_1000422F8);
  View.tabItem<A>(_:)();
  sub_10003A098(v11, type metadata accessor for TripView);
  v32 = v61;
  sub_100039DEC(a2, v61);
  v33 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v34 = (v7 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_10003A310(v32, v35 + v33, type metadata accessor for TripsTabView);
  *(v35 + v34) = v23;

  v67 = v8;
  v68 = v29;
  v69 = v30;
  v70 = v31;
  swift_getOpaqueTypeConformance2();
  v36 = v63;
  v37 = v60;
  View.onTapGesture(count:perform:)();

  (*(v64 + 8))(v37, v36);
  v38 = *(a2 + *(v65 + 28) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v39 = v67;
  if (v67 >> 62)
  {
LABEL_19:
    v40 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v40 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = 0;
  while (v40 != v41)
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v42 = *(v39 + 8 * v41 + 32);
    }

    v43 = static UUID.== infix(_:_:)();

    if (v43)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v41++, 1))
    {
      goto LABEL_18;
    }
  }

  v41 = 0;
LABEL_14:

  v45 = v56;
  (*(v53 + 32))(v56, v66, v55);
  v46 = &v45[*(sub_100003090(&qword_10005A3E0, &qword_10003FAB0) + 36)];
  *v46 = v41;
  v46[8] = 1;
  if (qword_10005A3B8 != -1)
  {
    swift_once();
  }

  v47 = qword_10005D638;
  v48 = static Edge.Set.all.getter();
  v49 = v52;
  (*(v57 + 32))(v52, v45, v58);
  v50 = v49 + *(v54 + 36);
  *v50 = v47;
  *(v50 + 8) = v48;
  sub_100008944(v49, v59, &qword_10005CF70, &qword_1000422E8);
}

uint64_t sub_100039058@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000089B4();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_100025318(v3, v5, v7);

  sub_100008AB0(v3, v5, v7);
}

uint64_t sub_100039174(uint64_t a1)
{
  v2 = type metadata accessor for TripsTabView();
  v3 = (a1 + *(v2 + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for TripEnvironment(0);
  sub_10003A048(&unk_10005CEC0, type metadata accessor for TripEnvironment);
  StateObject.wrappedValue.getter();
  v7 = *(a1 + *(v2 + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v14 >> 62)
  {
LABEL_16:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (v8 != v9)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v10 = *(v14 + 8 * v9 + 32);
    }

    v11 = static UUID.== infix(_:_:)();

    if (v11)
    {
      break;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_15;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t sub_100039378@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig();
  sub_10003A048(&qword_10005A6E0, type metadata accessor for TripAppConfig);

  v4 = EnvironmentObject.init()();
  v6 = v5;
  v7 = type metadata accessor for TripView();
  v8 = (a2 + *(v7 + 20));
  *v8 = v4;
  v8[1] = v6;
  v9 = (a2 + *(v7 + 24));
  type metadata accessor for CardModel(0);
  sub_10003A048(&qword_10005A6D0, type metadata accessor for CardModel);
  result = ObservedObject.init(wrappedValue:)();
  *v9 = result;
  v9[1] = v11;
  return result;
}

uint64_t sub_1000394C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000395A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TripsTabView()
{
  result = qword_10005CEA0;
  if (!qword_10005CEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000396B4()
{
  sub_100003DC4();
  if (v0 <= 0x3F)
  {
    sub_100039750();
    if (v1 <= 0x3F)
    {
      sub_1000397E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100039750()
{
  if (!qword_10005CEB0)
  {
    type metadata accessor for TripModel();
    sub_10003A048(&qword_10005AEA0, type metadata accessor for TripModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10005CEB0);
    }
  }
}

void sub_1000397E4()
{
  if (!qword_10005CEB8)
  {
    type metadata accessor for TripEnvironment(255);
    sub_10003A048(&unk_10005CEC0, type metadata accessor for TripEnvironment);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10005CEB8);
    }
  }
}

unint64_t sub_1000398A4()
{
  result = qword_10005CF38;
  if (!qword_10005CF38)
  {
    sub_1000036BC(&qword_10005CF00, &qword_1000421F8);
    sub_100003894(&qword_10005CF40, &qword_10005CEF8, &qword_1000421F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CF38);
  }

  return result;
}

uint64_t sub_100039954(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003090(&qword_10005CF18, &qword_100042210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000399C4()
{
  result = qword_10005CF48;
  if (!qword_10005CF48)
  {
    sub_1000036BC(&qword_10005CF18, &qword_100042210);
    sub_100003894(&qword_10005CF30, &qword_10005CF20, &qword_100042218);
    sub_1000398A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CF48);
  }

  return result;
}

uint64_t sub_100039A7C(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005CF18, &qword_100042210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039AE4(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005CF00, &qword_1000421F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100039B5C()
{
  result = qword_10005CF60;
  if (!qword_10005CF60)
  {
    sub_1000036BC(&qword_10005CF58, &qword_1000422E0);
    sub_100039BE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CF60);
  }

  return result;
}

unint64_t sub_100039BE0()
{
  result = qword_10005CF68;
  if (!qword_10005CF68)
  {
    sub_1000036BC(&qword_10005CF70, &qword_1000422E8);
    sub_1000036BC(&qword_10005A3D8, &qword_10003FAA8);
    sub_1000036BC(&qword_10005CF78, &qword_1000422F0);
    type metadata accessor for TripView();
    sub_1000036BC(&qword_10005CF80, &qword_1000422F8);
    sub_10003A048(&qword_10005CF50, type metadata accessor for TripView);
    sub_100003894(&qword_10005CF88, &qword_10005CF80, &qword_1000422F8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100003894(&qword_10005AB38, &qword_10005AB40, &qword_100040790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CF68);
  }

  return result;
}

uint64_t sub_100039DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripsTabView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039E50()
{
  v1 = type metadata accessor for TripsTabView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = type metadata accessor for LayoutConfiguration(0);
    v8 = (v5 + *(v7 + 20));
    v9 = *v8;

    v10 = v8[1];

    sub_1000085F8((v5 + *(v7 + 24)));
  }

  else
  {
    v11 = *v5;
  }

  v12 = v5 + *(v1 + 24);
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = v12[16];
  sub_100011184();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100039FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TripsTabView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000388C0(a1, v6, a2);
}

uint64_t sub_10003A048(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003A098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003A0F8()
{
  v1 = type metadata accessor for TripsTabView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = type metadata accessor for LayoutConfiguration(0);
    v8 = (v5 + *(v7 + 20));
    v9 = *v8;

    v10 = v8[1];

    sub_1000085F8((v5 + *(v7 + 24)));
  }

  else
  {
    v11 = *v5;
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v13 = v5 + *(v1 + 24);
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = v13[16];
  sub_100011184();
  v17 = *(v0 + v12);

  return _swift_deallocObject(v0, v12 + 8, v2 | 7);
}

uint64_t sub_10003A27C()
{
  v1 = *(type metadata accessor for TripsTabView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100039174(v0 + v2);
}

uint64_t sub_10003A310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003A37C()
{
  result = qword_10005CFA8;
  if (!qword_10005CFA8)
  {
    sub_1000036BC(&qword_10005CFB0, &qword_100042398);
    sub_10003A400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CFA8);
  }

  return result;
}

unint64_t sub_10003A400()
{
  result = qword_10005CFB8;
  if (!qword_10005CFB8)
  {
    sub_1000036BC(&qword_10005CF28, &qword_100042220);
    sub_1000399C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CFB8);
  }

  return result;
}

uint64_t sub_10003A48C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746E6F7A69726F68;
  v4 = 0xEF6B636174536C61;
  if (v2 != 1)
  {
    v3 = 0x6C61636974726576;
    v4 = 0xED00006B63617453;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1953720684;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x746E6F7A69726F68;
  v8 = 0xEF6B636174536C61;
  if (*a2 != 1)
  {
    v7 = 0x6C61636974726576;
    v8 = 0xED00006B63617453;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1953720684;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10003A5B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003A66C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10003A70C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003A7BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

unint64_t sub_10003A830@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003B53C(*a1);
  *a2 = result;
  return result;
}

void sub_10003A860(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF6B636174536C61;
  v5 = 0x746E6F7A69726F68;
  if (v2 != 1)
  {
    v5 = 0x6C61636974726576;
    v4 = 0xED00006B63617453;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953720684;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10003A91C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10003A988(uint64_t a1)
{
  v3 = sub_100003090(&qword_10005C388, &qword_100041B78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22[-v6];
  v8 = sub_100003090(&qword_10005D1B0, &qword_100042618);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22[-v11];
  v13 = OBJC_IVAR____TtC4Trip13TripAppConfig__layoutName;
  v22[15] = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(v1 + v13, v12, v8);
  v14 = OBJC_IVAR____TtC4Trip13TripAppConfig__infoCardHidden;
  v22[14] = 0;
  Published.init(initialValue:)();
  v15 = *(v4 + 32);
  v15(v1 + v14, v7, v3);
  v16 = OBJC_IVAR____TtC4Trip13TripAppConfig__measureLabelsHidden;
  v22[13] = 0;
  Published.init(initialValue:)();
  v15(v1 + v16, v7, v3);
  v17 = OBJC_IVAR____TtC4Trip13TripAppConfig__educationTextHidden;
  v22[12] = 1;
  Published.init(initialValue:)();
  v15(v1 + v17, v7, v3);
  *(v1 + OBJC_IVAR____TtC4Trip13TripAppConfig_dateFormatter) = 0;
  v18 = OBJC_IVAR____TtC4Trip13TripAppConfig_configuration;
  v19 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v1 + v18, a1, v19);
  sub_10003AC40();
  (*(v20 + 8))(a1, v19);
  return v1;
}

void sub_10003AC40()
{
  v1 = v0;
  v2 = type metadata accessor for CAUAppUIConfiguration.Element();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for CAUAppUIConfiguration.ElementData();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = CAUAppUIConfiguration.Configuration.elementData.getter();
  (*(v3 + 104))(v6, enum case for CAUAppUIConfiguration.Element.trip_horizontalStack(_:), v2);
  if (*(v12 + 16) && (v13 = sub_10000E2CC(v6), (v14 & 1) != 0))
  {
    (*(v8 + 16))(v11, *(v12 + 56) + *(v8 + 72) * v13, v7);
    (*(v3 + 8))(v6, v2);

    CAUAppUIConfiguration.ElementData.stringValue.getter();
    v16 = v15;
    (*(v8 + 8))(v11, v7);
    if (v16)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      v19[15] = 1;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      v19[14] = 1;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      v19[13] = 1;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      v19[12] = 0;

      static Published.subscript.setter();
      v17 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      [v17 setUnitsStyle:1];
      [v17 setAllowedUnits:224];
      v18 = *(v1 + OBJC_IVAR____TtC4Trip13TripAppConfig_dateFormatter);
      *(v1 + OBJC_IVAR____TtC4Trip13TripAppConfig_dateFormatter) = v17;
    }
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_10003AFB4()
{
  v1 = OBJC_IVAR____TtC4Trip13TripAppConfig_configuration;
  v2 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Trip13TripAppConfig__layoutName;
  v4 = sub_100003090(&qword_10005D1B0, &qword_100042618);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC4Trip13TripAppConfig__infoCardHidden;
  v6 = sub_100003090(&qword_10005C388, &qword_100041B78);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC4Trip13TripAppConfig__measureLabelsHidden, v6);
  v7(v0 + OBJC_IVAR____TtC4Trip13TripAppConfig__educationTextHidden, v6);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v8, v9);
}

uint64_t type metadata accessor for TripAppConfig()
{
  result = qword_10005D008;
  if (!qword_10005D008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B198()
{
  v0 = type metadata accessor for CAUAppUIConfiguration.Configuration();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10002F478(319, &unk_10005D018);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10002F478(319, &unk_10005BCB8);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_10003B2DC()
{
  result = qword_10005D198;
  if (!qword_10005D198)
  {
    sub_1000036BC(&qword_10005D1A0, qword_1000423E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D198);
  }

  return result;
}

unint64_t sub_10003B344()
{
  result = qword_10005D1A8;
  if (!qword_10005D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D1A8);
  }

  return result;
}

uint64_t sub_10003B398@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TripAppConfig();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003B43C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10003B4CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_10003B53C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100055D20, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003B680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for CAFUIAppPresentationMode();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v13 + 16);
  v17(a4, a1, v12);
  v18 = type metadata accessor for LayoutConfiguration(0);
  v19 = a4 + *(v18 + 20);
  *v19 = a2;
  *(v19 + 8) = a3;
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  v17(v16, a1, v12);
  v20 = (*(v13 + 88))(v16, v12);
  if (v20 == enum case for CAFUIAppPresentationMode.console(_:))
  {
    v21 = type metadata accessor for ConsoleMetrics();
    swift_allocObject();
    v22 = sub_100036D98();
    v23 = &off_100056D40;
LABEL_8:
    v24 = (a4 + *(v18 + 24));
    v24[3] = v21;
    v24[4] = v23;
    *v24 = v22;
    return (*(v13 + 8))(a1, v12);
  }

  if (v20 == enum case for CAFUIAppPresentationMode.clusterDCA(_:) || v20 == enum case for CAFUIAppPresentationMode.clusterPopover(_:))
  {
    v21 = type metadata accessor for ClusterMetrics();
    swift_allocObject();
    v22 = sub_10003707C();
    v23 = &off_100056C28;
    goto LABEL_8;
  }

  if (v20 == enum case for CAFUIAppPresentationMode.widget(_:))
  {
    v21 = type metadata accessor for WidgetMetrics();
    swift_allocObject();
    v22 = sub_1000374BC();
    v23 = &off_100056B10;
    goto LABEL_8;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10003B914@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10003B994(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10003BA08()
{
  v0 = type metadata accessor for TripEnvironment(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = Published.init(initialValue:)();
  qword_10005D630 = v3;
  return result;
}

uint64_t sub_10003BA6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10003BAE0()
{
  v1 = OBJC_IVAR____TtC4Trip15TripEnvironment__selectedTripIndex;
  v2 = sub_100003090(&qword_10005D350, &qword_1000426D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void sub_10003BBB0()
{
  sub_10003BC40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10003BC40()
{
  if (!qword_10005D1F8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10005D1F8);
    }
  }
}

uint64_t sub_10003BCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CAFUIAppPresentationMode();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003BD78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CAFUIAppPresentationMode();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10003BE54()
{
  type metadata accessor for CAFUIAppPresentationMode();
  if (v0 <= 0x3F)
  {
    sub_10003BEF0();
    if (v1 <= 0x3F)
    {
      sub_10003BF48();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003BEF0()
{
  if (!qword_10005D310)
  {
    type metadata accessor for CGSize(255);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_10005D310);
    }
  }
}

unint64_t sub_10003BF48()
{
  result = qword_10005D318;
  if (!qword_10005D318)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10005D318);
  }

  return result;
}

uint64_t sub_10003BFAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TripEnvironment(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t *NSNotificationName.ClusterEvent.unsafeMutableAddressor()
{
  if (qword_10005A3C8 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.ClusterEvent;
}

uint64_t sub_10003C044()
{
  v0 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  result = Color.init(_:)();
  qword_10005D638 = result;
  return result;
}

uint64_t sub_10003C084()
{
  v0 = type metadata accessor for CAFUIAppPresentationMode();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LayoutConfiguration(0);
  sub_10003C3BC(v5, qword_10005D358);
  v6 = sub_10003C384(v5, qword_10005D358);
  (*(v1 + 104))(v4, enum case for CAFUIAppPresentationMode.clusterDCA(_:), v0);
  type metadata accessor for CGSize(0);
  v8[0] = 0;
  v8[1] = 0;
  static Binding.constant(_:)();
  return sub_10003B680(v4, v8[2], v8[3], v6, *&v8[4], *&v8[5]);
}

uint64_t sub_10003C1B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10005A3C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = sub_10003C384(v2, qword_10005D358);

  return sub_10000ECD0(v3, a1);
}

uint64_t sub_10003C22C()
{
  sub_10000ED34();

  return EnvironmentValues.subscript.getter();
}

NSString sub_10003C274()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.ClusterEvent = result;
  return result;
}

id static NSNotificationName.ClusterEvent.getter()
{
  if (qword_10005A3C8 != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.ClusterEvent;

  return v1;
}

unint64_t sub_10003C330()
{
  result = qword_10005D370;
  if (!qword_10005D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D370);
  }

  return result;
}

uint64_t sub_10003C384(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10003C3BC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10003C420()
{
  sub_10003D3A0();
  result = NSString.init(stringLiteral:)();
  qword_10005D648 = result;
  return result;
}

void sub_10003C4F8(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v10 = a1;
    v5 = [v4 _FBSScene];
    v6 = [v5 settings];

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();

    if (v7)
    {
      v8 = *(v1 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_clusterWindowManager);
      *(v1 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_clusterWindowManager) = 0;

      if (qword_10005A3D0 != -1)
      {
        swift_once();
      }

      [v4 _unregisterSceneActionsHandlerArray:qword_10005D648];
    }

    else
    {
      v9 = *(v1 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_consoleWindowManager);
      *(v1 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_consoleWindowManager) = 0;
    }

    if (qword_10005A3D0 != -1)
    {
      swift_once();
    }

    [v10 _unregisterSceneActionsHandlerArray:qword_10005D648];
  }
}

id sub_10003C7D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TripSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10003C87C(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CAFUIAppPresentationMode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  CAFSignpostEmit_Scene();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
LABEL_8:

    sub_100034D00(0xD000000000000024, 0x8000000100043990, 0xD00000000000001FLL, 0x80000001000439C0, 24);
    return;
  }

  v12 = v11;
  v13 = a1;
  v14 = [a2 role];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  v21 = [v12 _FBSScene];
  v22 = [v21 settings];

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();

  v24 = *(v7 + 104);
  if (v23)
  {
    v24(v10, enum case for CAFUIAppPresentationMode.clusterDCA(_:), v6);
    v25 = objc_allocWithZone(type metadata accessor for TripWindowManager());
    v26 = v13;
    v27 = sub_100011E3C(v12, v10);

    v28 = *(v3 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_clusterWindowManager);
    *(v3 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_clusterWindowManager) = v27;

    sub_100003090(&qword_10005D490, &unk_1000404E0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100040BE0;
    *(v29 + 32) = [objc_allocWithZone(CRSUIClusterPressBSActionsHandler) initWithDelegate:v3];
    sub_100003090(&qword_10005D498, &qword_1000427F8);
    v30.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (qword_10005A3D0 != -1)
    {
      swift_once();
    }

    [v12 _registerSceneActionsHandlerArray:v30.super.isa forKey:qword_10005D648];
  }

  else
  {
    v24(v10, enum case for CAFUIAppPresentationMode.console(_:), v6);
    objc_allocWithZone(type metadata accessor for TripWindowManager());
    v31 = v13;
    v32 = sub_100011E3C(v12, v10);

    v30.super.isa = *(v3 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_consoleWindowManager);
    *(v3 + OBJC_IVAR____TtC4Trip17TripSceneDelegate_consoleWindowManager) = v32;
  }

  sub_100003090(&qword_10005D490, &unk_1000404E0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100040BE0;
  *(v33 + 32) = [objc_allocWithZone(CRSUIClusterPressBSActionsHandler) initWithDelegate:v3];
  sub_100003090(&qword_10005D498, &qword_1000427F8);
  v34.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (qword_10005A3D0 != -1)
  {
    swift_once();
  }

  [v13 _registerSceneActionsHandlerArray:v34.super.isa forKey:qword_10005D648];
}

void sub_10003CD24(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      sub_100034D00(0xD000000000000020, 0x8000000100043960, 0xD00000000000001ALL, 0x8000000100043890, 62);
      v1 = [objc_opt_self() defaultCenter];
      if (qword_10005A3C8 != -1)
      {
        swift_once();
      }

      v2 = static NSNotificationName.ClusterEvent;
      sub_100003090(&qword_10005A950, &qword_100040048);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10003FA90;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for ClusterEventType;
      *(inited + 72) = 0;
      goto LABEL_22;
    }

    if (a1 == 2)
    {
      sub_100034D00(0xD00000000000001ELL, 0x8000000100043940, 0xD00000000000001ALL, 0x8000000100043890, 66);
      v1 = [objc_opt_self() defaultCenter];
      if (qword_10005A3C8 != -1)
      {
        swift_once();
      }

      v2 = static NSNotificationName.ClusterEvent;
      sub_100003090(&qword_10005A950, &qword_100040048);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10003FA90;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for ClusterEventType;
      *(inited + 72) = 1;
      goto LABEL_22;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        sub_100034D00(0xD000000000000022, 0x8000000100043910, 0xD00000000000001ALL, 0x8000000100043890, 70);
        v1 = [objc_opt_self() defaultCenter];
        if (qword_10005A3C8 != -1)
        {
          swift_once();
        }

        v2 = static NSNotificationName.ClusterEvent;
        sub_100003090(&qword_10005A950, &qword_100040048);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10003FA90;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for ClusterEventType;
        *(inited + 72) = 2;
        goto LABEL_22;
      case 4:
        sub_100034D00(0xD000000000000024, 0x80000001000438E0, 0xD00000000000001ALL, 0x8000000100043890, 74);
        v1 = [objc_opt_self() defaultCenter];
        if (qword_10005A3C8 != -1)
        {
          swift_once();
        }

        v2 = static NSNotificationName.ClusterEvent;
        sub_100003090(&qword_10005A950, &qword_100040048);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10003FA90;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for ClusterEventType;
        *(inited + 72) = 3;
        goto LABEL_22;
      case 5:
        sub_100034D00(0xD000000000000022, 0x80000001000438B0, 0xD00000000000001ALL, 0x8000000100043890, 78);
        v1 = [objc_opt_self() defaultCenter];
        if (qword_10005A3C8 != -1)
        {
          swift_once();
        }

        v2 = static NSNotificationName.ClusterEvent;
        sub_100003090(&qword_10005A950, &qword_100040048);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10003FA90;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for ClusterEventType;
        *(inited + 72) = 4;
LABEL_22:
        sub_10000EDF0(inited);
        swift_setDeallocating();
        sub_100009C64(inited + 32);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v1 postNotificationName:v2 object:0 userInfo:isa];

        return;
    }
  }

  sub_100034D00(0xD000000000000021, 0x8000000100043860, 0xD00000000000001ALL, 0x8000000100043890, 82);
}

unint64_t sub_10003D3A0()
{
  result = qword_10005D488;
  if (!qword_10005D488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005D488);
  }

  return result;
}

uint64_t sub_10003D428(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_10005EF98 == -1)
  {
    if (qword_10005EFA0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10003D8F0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10005EFA0)
    {
      return _availability_version_check();
    }
  }

  if (qword_10005EF90 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10003D908();
    a3 = v10;
    a4 = v9;
    v8 = dword_10005EF80 < v11;
    if (dword_10005EF80 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10005EF84 > a3)
      {
        return 1;
      }

      if (dword_10005EF84 >= a3)
      {
        return dword_10005EF88 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10005EF80 < a2;
  if (dword_10005EF80 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10003D5BC(uint64_t result)
{
  v1 = qword_10005EFA0;
  if (qword_10005EFA0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_10005EFA0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_10005EF80, &dword_10005EF84, &dword_10005EF88);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}