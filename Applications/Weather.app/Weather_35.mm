uint64_t sub_1003A937C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003AA0A0(a1, __src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x48uLL);
  sub_1003AA0A0(a1, v7);
  v5 = swift_allocObject();
  memcpy(v5 + 16, v7, 0x48uLL);
  sub_1003A9460(4, sub_1003AAE18, v4, sub_1003AAC80, v5, a2);
}

uint64_t sub_1003A9460@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a5;
  v69 = a4;
  LODWORD(v70) = a1;
  v71 = a6;
  v8 = sub_10022C350(&qword_100CB2558);
  __chkstk_darwin(v8 - 8);
  v68 = &v66 - v9;
  v72 = type metadata accessor for Alert.Button();
  sub_100007FD0();
  v75 = v10;
  __chkstk_darwin(v11);
  v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = &v66 - v14;
  __chkstk_darwin(v15);
  v17 = &v66 - v16;
  __chkstk_darwin(v18);
  v20 = &v66 - v19;
  LocalizedStringKey.init(stringLiteral:)();
  sub_10000FDF8();
  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;

  v73 = v20;
  static Alert.Button.default(_:action:)();

  sub_10010CD64(v21, v23, v25 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v65) = 2;
  sub_10000FDF8();
  Text.init(_:tableName:bundle:comment:)();
  sub_1000059E8();
  v29 = swift_allocObject();
  *(v29 + 16) = v69;
  *(v29 + 24) = v74;

  v74 = v17;
  static Alert.Button.default(_:action:)();

  sub_10010CD64(a3, v25, v27 & 1);

  if (v70 >= 4u)
  {
    v31 = v66;
    if (v70 == 4)
    {
      v32 = objc_opt_self();
      v33 = [v32 mainBundle];
      v47 = sub_100008414(0xD000000000000084, 0x8000000100AC4490, v34, v35, v36, v37, v38, 0xD000000000000057);
      v49 = v39;

      v50 = [v32 mainBundle];
      v64 = 0x8000000100AC4450;
      v51 = 0x6E6F697461636F4CLL;
      v52 = 0xEF64656465654E20;
    }

    else
    {
      v40 = objc_opt_self();
      v41 = [v40 mainBundle];
      v47 = sub_100008414(0xD000000000000059, 0x8000000100AC4370, v42, v43, v44, v45, v46, 0xD00000000000005BLL);
      v49 = v48;

      v50 = [v40 mainBundle];
      v51 = 0xD000000000000015;
      v64 = 0x8000000100AC4450;
      v52 = 0x8000000100AC4430;
    }

    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    v54 = 0xD00000000000003DLL;
    v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v51, 0, v50, v53, *(&v64 - 1));
    v56 = v31;

    v76 = v55;
    sub_10002D5A4();
    v57 = Text.init<A>(_:)();
    v69 = v58;
    v70 = v57;
    v68 = v59;
    v76._countAndFlagsBits = v47;
    v76._object = v49;
    Text.init<A>(_:)();
    v60 = *(v75 + 16);
    v61 = v56;
    v30 = v72;
    v60(v61, v74, v72);
    v60(v67, v73, v30);
    Alert.init(title:message:primaryButton:secondaryButton:)();
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    sub_10000FDF8();
    Text.init(_:tableName:bundle:comment:)();
    sub_1000059E8();
    v30 = v72;
    sub_10001B350(v68, 1, 1, v72);
    sub_10000FDF8();
    Alert.init(title:message:dismissButton:)();
  }

  v62 = *(v75 + 8);
  v62(v74, v30);
  return (v62)(v73, v30);
}

uint64_t sub_1003A9A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003AA0A0(a1, __src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x48uLL);
  sub_1003AA0A0(a1, v7);
  v5 = swift_allocObject();
  memcpy(v5 + 16, v7, 0x48uLL);
  sub_1003A9460(5, sub_1003AACB0, v4, sub_1003AACCC, v5, a2);
}

uint64_t sub_1003A9BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FD0();
  v34 = v6;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  sub_100007FD0();
  v32 = v11;
  v33 = v10;
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v29 = v14;
  sub_100007FD0();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v27 - v21;
  sub_100040690();
  v27 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v28 = *(v16 + 8);
  v28(v19, v14);
  sub_1003AA0A0(a1, __src);
  v23 = swift_allocObject();
  memcpy((v23 + 16), __src, 0x48uLL);
  aBlock[4] = v30;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = v31;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  __src[0] = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680);
  sub_10023FBF4(&qword_100CD81D0, &qword_100CB4680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v27;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v24);

  (*(v34 + 8))(v9, v5);
  (*(v32 + 8))(v13, v33);
  return (v28)(v22, v29);
}

uint64_t sub_1003A9FA4(void *a1)
{
  v1 = a1[7];
  v2 = a1[8];
  sub_1000161C0(a1 + 4, v1);
  return (*(*(v2 + 8) + 16))(v1);
}

uint64_t sub_1003A9FF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1003AA034(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003AA0D8()
{
  result = qword_100CB25D8;
  if (!qword_100CB25D8)
  {
    sub_10022E824(&qword_100CB25C8);
    sub_1003AA164();
    sub_1003AA468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB25D8);
  }

  return result;
}

unint64_t sub_1003AA164()
{
  result = qword_100CB25E0;
  if (!qword_100CB25E0)
  {
    sub_10022E824(&qword_100CB25C0);
    sub_1003AA1F0();
    sub_1003AA2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB25E0);
  }

  return result;
}

unint64_t sub_1003AA1F0()
{
  result = qword_100CB25E8;
  if (!qword_100CB25E8)
  {
    sub_10022E824(&qword_100CB25F0);
    sub_10038FD4C();
    sub_1003AA27C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB25E8);
  }

  return result;
}

unint64_t sub_1003AA27C()
{
  result = qword_100CB25F8;
  if (!qword_100CB25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB25F8);
  }

  return result;
}

unint64_t sub_1003AA2D0()
{
  result = qword_100CB2600;
  if (!qword_100CB2600)
  {
    sub_10022E824(&qword_100CB25A0);
    sub_1003AA35C();
    sub_1003AA3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2600);
  }

  return result;
}

unint64_t sub_1003AA35C()
{
  result = qword_100CB2608;
  if (!qword_100CB2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2608);
  }

  return result;
}

unint64_t sub_1003AA3B0()
{
  result = qword_100CB2610;
  if (!qword_100CB2610)
  {
    sub_10022E824(&qword_100CB2590);
    sub_10038FD4C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2610);
  }

  return result;
}

unint64_t sub_1003AA468()
{
  result = qword_100CB2618;
  if (!qword_100CB2618)
  {
    sub_10022E824(&qword_100CB2580);
    sub_1003AA4F4();
    sub_1003AA79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2618);
  }

  return result;
}

unint64_t sub_1003AA4F4()
{
  result = qword_100CB2620;
  if (!qword_100CB2620)
  {
    sub_10022E824(&qword_100CB2578);
    sub_1003AA580();
    sub_1003AA638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2620);
  }

  return result;
}

unint64_t sub_1003AA580()
{
  result = qword_100CB2628;
  if (!qword_100CB2628)
  {
    sub_10022E824(&qword_100CB2588);
    sub_1003AA27C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2628);
  }

  return result;
}

unint64_t sub_1003AA638()
{
  result = qword_100CB2630;
  if (!qword_100CB2630)
  {
    sub_10022E824(&qword_100CB2638);
    sub_1003AA6F0(&qword_100CB2640, &unk_100CB2648, &unk_100A44990, sub_10038FD4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2630);
  }

  return result;
}

uint64_t sub_1003AA6F0(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    sub_10022E824(v7);
    a4();
    sub_10023FBF4(&qword_100CA6F10, &unk_100CA6F18);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003AA79C()
{
  result = qword_100CB2650;
  if (!qword_100CB2650)
  {
    sub_10022E824(&qword_100CB2658);
    sub_1003AA854();
    sub_1003AA6F0(&qword_100CB2680, &unk_100CB2688, &unk_100A449B8, sub_1003AA35C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2650);
  }

  return result;
}

unint64_t sub_1003AA854()
{
  result = qword_100CB2660;
  if (!qword_100CB2660)
  {
    sub_10022E824(&qword_100CB2668);
    sub_1003AA6F0(&qword_100CB2670, &unk_100CB2678, &unk_100A449B0, sub_1003AA27C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2660);
  }

  return result;
}

unint64_t sub_1003AA90C()
{
  result = qword_100CB2690;
  if (!qword_100CB2690)
  {
    sub_10022E824(&qword_100CB25D0);
    sub_10023FBF4(&qword_100CB2698, &unk_100CB26A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2690);
  }

  return result;
}

unint64_t sub_1003AACFC()
{
  result = qword_100CB26A8;
  if (!qword_100CB26A8)
  {
    sub_10022E824(&qword_100CB2560);
    sub_1003AAD88();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB26A8);
  }

  return result;
}

unint64_t sub_1003AAD88()
{
  result = qword_100CB26B0;
  if (!qword_100CB26B0)
  {
    sub_10022E824(&qword_100CB26B8);
    sub_1003AA0D8();
    sub_1003AA90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB26B0);
  }

  return result;
}

uint64_t NamespaceWrapper.namespace.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return Namespace.wrappedValue.getter();
  }

  return result;
}

uint64_t sub_1003AAEA8()
{
  HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return HourPrecipitationDetailView;
}

void sub_1003AAF28()
{
  sub_1003AB004();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NextHourPrecipitationChartViewModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ConditionDetailMapViewModel();
      if (v2 <= 0x3F)
      {
        type metadata accessor for TimeZone();
        if (v3 <= 0x3F)
        {
          sub_100380F00();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1003AB004()
{
  if (!qword_100CB27C8)
  {
    type metadata accessor for ConditionDetailPlatterViewModel(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB27C8);
    }
  }
}

uint64_t sub_1003AB05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t *a4@<X8>)
{
  v66 = a3;
  v65 = a2;
  v6 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v67 = &v63 - v8;
  v69 = type metadata accessor for Date();
  sub_1000037C4();
  v70 = v9;
  __chkstk_darwin(v10);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = &v63 - v13;
  v14 = sub_10022C350(&qword_100CB2838);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  __chkstk_darwin(v21);
  v23 = &v63 - v22;
  HourPrecipitationChartView = type metadata accessor for NextHourPrecipitationChartViewModel.Point();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = v29 - v28;
  v71 = a1;
  sub_100035AD0(a1, v23, &qword_100CB2838);
  sub_1000038B4(v23, 1, HourPrecipitationChartView);
  if (v31)
  {
    sub_1000180EC(v23, &qword_100CB2838);
    v32 = v68;
  }

  else
  {
    (*(v26 + 32))(v30, v23, HourPrecipitationChartView);
    v32 = v68;
    if ((v66 & 1) == 0)
    {
      NextHourPrecipitationChartViewModel.Point.value.getter();
      v34 = sub_1003AB648(v33);
      if (v35)
      {
        v36 = v34;
        v71 = v35;
        active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
        v38 = a4 + *(active + 20);
        NextHourPrecipitationChartViewModel.Point.date.getter();
        NextHourPrecipitationChartViewModel.Point.value.getter();
        v40 = v39;
        v41 = type metadata accessor for LollipopMarkModel(0);
        *&v38[v41[5]] = v40;
        *&v38[v41[6]] = 0;
        *&v38[v41[7]] = 0;
        v42 = (a4 + *(active + 24));
        v43 = v64;
        NextHourPrecipitationChartViewModel.Point.date.getter();
        type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
        v44 = Date.formattedTime(timeZone:)();
        v46 = v45;
        (*(v70 + 8))(v43, v69);
        (*(v26 + 8))(v30, HourPrecipitationChartView);
        *v42 = v44;
        v42[1] = v46;
        v47 = v71;
        v42[2] = v36;
        v42[3] = v47;
        type metadata accessor for LollipopDetailViewModel(0);
        v42[4] = 0;
        v42[5] = 0;
        swift_storeEnumTagMultiPayload();
        *a4 = v65;
        goto LABEL_20;
      }
    }

    v48 = sub_100022A74();
    v49(v48);
  }

  sub_100035AD0(v71, v20, &qword_100CB2838);
  sub_1000038B4(v20, 1, HourPrecipitationChartView);
  v50 = v69;
  if (v31)
  {
    sub_1000180EC(v20, &qword_100CB2838);
    v51 = v67;
    sub_10001B350(v67, 1, 1, v50);
    static WeatherClock.date.getter();
    sub_1000038B4(v51, 1, v50);
    if (!v31)
    {
      sub_1000180EC(v51, &unk_100CB2CF0);
    }
  }

  else
  {
    v52 = v67;
    NextHourPrecipitationChartViewModel.Point.date.getter();
    (*(v26 + 8))(v20, HourPrecipitationChartView);
    sub_10001B350(v52, 0, 1, v50);
    (*(v70 + 32))(v32, v52, v50);
  }

  type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
  v53 = Date.formattedTime(timeZone:)();
  v55 = v54;
  (*(v70 + 8))(v32, v50);
  sub_100035AD0(v71, v17, &qword_100CB2838);
  sub_1000038B4(v17, 1, HourPrecipitationChartView);
  if (v31)
  {
    sub_1000180EC(v17, &qword_100CB2838);
    v57 = 0.0;
  }

  else
  {
    NextHourPrecipitationChartViewModel.Point.value.getter();
    v57 = v56;
    (*(v26 + 8))(v17, HourPrecipitationChartView);
  }

  v58 = sub_1003AB648(v57);
  v60 = 32;
  if (v59)
  {
    v60 = v58;
  }

  v61 = 0xE100000000000000;
  *a4 = v53;
  a4[1] = v55;
  if (v59)
  {
    v61 = v59;
  }

  a4[2] = v60;
  a4[3] = v61;
  type metadata accessor for LollipopDetailViewModel(0);
  a4[4] = 0;
  a4[5] = 0;
  swift_storeEnumTagMultiPayload();
LABEL_20:
  type metadata accessor for DetailHeroChartLollipopModel(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003AB648(double a1)
{
  v2 = type metadata accessor for ApparentPrecipitationIntensityCategory();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  if (a1 <= 0.0)
  {
    v21 = [objc_opt_self() mainBundle];
    v27._object = 0x8000000100AC45B0;
    v22._countAndFlagsBits = 1701736270;
    v22._object = 0xE400000000000000;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0xD000000000000062;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v27)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v9 = static ApparentPrecipitationIntensityCategory.allCases.getter();
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v12 < *(v10 + 16))
    {
      (*(v3 + 16))(v5, v13 + *(v3 + 72) * v12, v2);
      ApparentPrecipitationIntensityCategory.rangeValue.getter();
      if (v15 <= a1 && v14 > a1)
      {

        (*(v3 + 32))(v8, v5, v2);
        type metadata accessor for MinuteForecastStringBuilder();
        countAndFlagsBits = static MinuteForecastStringBuilder.buildIntensityString(for:)();
        (*(v3 + 8))(v8, v2);
        return countAndFlagsBits;
      }

      ++v12;
      (*(v3 + 8))(v5, v2);
      if (v11 == v12)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_11:

  if (qword_100CA2700 != -1)
  {
LABEL_18:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000703C(v17, qword_100D90B68);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to create intensity string for value:%f", v20, 0xCu);
  }

  return 0;
}

BOOL sub_1003AB970(uint64_t a1, uint64_t a2)
{
  HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  HourPrecipitationDetailViewModel = type metadata accessor for NextHourPrecipitationDetailViewModel(0);
  v10 = sub_100003810(HourPrecipitationDetailViewModel);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = (v12 - v11);
  v14 = sub_10022C350(&qword_100CB2818);
  sub_100003810(v14);
  sub_100003828();
  v16 = __chkstk_darwin(v15);
  v18 = &v23 - v17;
  v19 = *(v16 + 56);
  sub_1003AC070(a1, &v23 - v17);
  sub_1003AC070(a2, &v18[v19]);
  sub_1000038B4(v18, 1, HourPrecipitationDetailView);
  if (!v21)
  {
    sub_1003AC070(v18, v13);
    sub_1000038B4(&v18[v19], 1, HourPrecipitationDetailView);
    if (!v21)
    {
      sub_1003AC0D4(&v18[v19], v8);
      v20 = sub_1003ABB64(v13, v8);
      sub_1003AC138(v8, type metadata accessor for NextHourPrecipitationDetailViewModel.Model);
      sub_1003AC138(v13, type metadata accessor for NextHourPrecipitationDetailViewModel.Model);
      sub_10001C03C();
      return v20;
    }

    sub_1003AC138(v13, type metadata accessor for NextHourPrecipitationDetailViewModel.Model);
LABEL_9:
    sub_1000180EC(v18, &qword_100CB2818);
    return 0;
  }

  sub_1000038B4(&v18[v19], 1, HourPrecipitationDetailView);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_10001C03C();
  return 1;
}

BOOL sub_1003ABB64(void *a1, void *a2)
{
  v4 = sub_10022C350(&qword_100CAE8F0);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = var50 - v8;
  v10 = sub_10022C350(&qword_100CB0BA0);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = var50 - v12;
  v14 = sub_10022C350(&qword_100CB0D20);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v21 = var50 - v20;
  v22 = *a1 == *a2 && a1[1] == a2[1];
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v23 = a2[2];
  v24 = a2[3];
  v25 = a1[2] == v23 && a1[3] == v24;
  if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1009E99F0(a1[4], a2[4], v23, v24, v16, v17, v18, v19, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
  if ((static NextHourPrecipitationChartViewModel.== infix(_:_:)() & 1) == 0 || (sub_1007EDCA4((a1 + *(HourPrecipitationDetailView + 32)), (a2 + *(HourPrecipitationDetailView + 32))) & 1) == 0 || (static TimeZone.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v28 = *(HourPrecipitationDetailView + 40);
  v29 = *(v14 + 48);
  sub_100035AD0(a1 + v28, v21, &qword_100CB0BA0);
  sub_100035AD0(a2 + v28, &v21[v29], &qword_100CB0BA0);
  sub_1000038B4(v21, 1, v4);
  if (v22)
  {
    sub_1000038B4(&v21[v29], 1, v4);
    if (v22)
    {
      sub_1000180EC(v21, &qword_100CB0BA0);
      return 1;
    }

    goto LABEL_23;
  }

  sub_100035AD0(v21, v13, &qword_100CB0BA0);
  sub_1000038B4(&v21[v29], 1, v4);
  if (v30)
  {
    (*(v6 + 8))(v13, v4);
LABEL_23:
    sub_1000180EC(v21, &qword_100CB0D20);
    return 0;
  }

  (*(v6 + 32))(v9, &v21[v29], v4);
  sub_100006F64(&qword_100CB0D38, &qword_100CAE8F0);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v6 + 8);
  v33(v9, v4);
  v33(v13, v4);
  sub_1000180EC(v21, &qword_100CB0BA0);
  return (v32 & 1) != 0;
}

uint64_t sub_1003ABEE8@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CB2820);
  a1[4] = sub_100006F64(&qword_100CB2828, &qword_100CB2820);
  sub_100042FB0(a1);
  type metadata accessor for NextHourPrecipitationDetailViewModel(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1003ABFE4()
{
  sub_1003AC190(&qword_100CB2830);

  return ShortDescribable.description.getter();
}

uint64_t sub_1003AC070(uint64_t a1, uint64_t a2)
{
  HourPrecipitationDetailViewModel = type metadata accessor for NextHourPrecipitationDetailViewModel(0);
  (*(*(HourPrecipitationDetailViewModel - 8) + 16))(a2, a1, HourPrecipitationDetailViewModel);
  return a2;
}

uint64_t sub_1003AC0D4(uint64_t a1, uint64_t a2)
{
  HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
  (*(*(HourPrecipitationDetailView - 8) + 32))(a2, a1, HourPrecipitationDetailView);
  return a2;
}

uint64_t sub_1003AC138(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1003AC190(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NextHourPrecipitationDetailViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MonthlyAveragesChartModel()
{
  result = qword_100CB28B0;
  if (!qword_100CB28B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003AC248()
{
  v0 = type metadata accessor for ConditionDetailPlatterViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1003AC2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  __chkstk_darwin(v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MonthlyAveragesChartModel();
  __chkstk_darwin(v7 - 8);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10022C350(&qword_100CB28E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v14 = *(v13 + 56);
  sub_1003AC494(a1, &v18 - v11);
  sub_1003AC494(a2, &v12[v14]);
  sub_100005404(v12);
  if (!v16)
  {
    sub_1003AC494(v12, v9);
    sub_100005404(&v12[v14]);
    if (!v16)
    {
      sub_1003AC560(&v12[v14], v6);
      v15 = sub_100954420(v9, v6);
      sub_1003AC5C4(v6, type metadata accessor for ConditionDetailPlatterViewModel);
      sub_1003AC5C4(v9, type metadata accessor for ConditionDetailPlatterViewModel);
      sub_10001EA08();
      return v15 & 1;
    }

    sub_1003AC5C4(v9, type metadata accessor for ConditionDetailPlatterViewModel);
LABEL_9:
    sub_1003AC4F8(v12);
    v15 = 0;
    return v15 & 1;
  }

  sub_100005404(&v12[v14]);
  if (!v16)
  {
    goto LABEL_9;
  }

  sub_10001EA08();
  v15 = 1;
  return v15 & 1;
}

uint64_t sub_1003AC494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonthlyAveragesChartModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003AC4F8(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB28E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003AC560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003AC5C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003AC628@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = 1702521203;
  *(inited + 40) = 0xE400000000000000;
  type metadata accessor for CGSize(0);
  *(inited + 48) = *v1;
  *(inited + 72) = v4;
  strcpy((inited + 80), "safeAreaInsets");
  *(inited + 95) = -18;
  *(inited + 120) = &type metadata for EdgeInsets;
  v5 = swift_allocObject();
  *(inited + 96) = v5;
  v6 = v1[2];
  *(v5 + 16) = v1[1];
  *(v5 + 32) = v6;
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CB2928);
  a1[4] = sub_1003AC988();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1003AC780()
{
  sub_1003AC9EC();

  return ShortDescribable.description.getter();
}

double sub_1003AC7BC@<D0>(_OWORD *a1@<X8>)
{
  sub_1003ACA40();
  UITraitCollection.subscript.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1003AC860(__n128 *a1)
{
  sub_10001EA30(a1);
  sub_1003ACA40();
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

double sub_1003AC8BC@<D0>(_OWORD *a1@<X8>)
{
  sub_1003AC7BC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1003AC8FC(uint64_t a1, __n128 *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return sub_1003AC814(a1, v4);
}

unint64_t sub_1003AC934()
{
  result = qword_100CB2920;
  if (!qword_100CB2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2920);
  }

  return result;
}

unint64_t sub_1003AC988()
{
  result = qword_100CB2930;
  if (!qword_100CB2930)
  {
    sub_10022E824(&qword_100CB2928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2930);
  }

  return result;
}

unint64_t sub_1003AC9EC()
{
  result = qword_100CB2938;
  if (!qword_100CB2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2938);
  }

  return result;
}

unint64_t sub_1003ACA40()
{
  result = qword_100CB3D30;
  if (!qword_100CB3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3D30);
  }

  return result;
}

double sub_1003ACAB4@<D0>(_OWORD *a1@<X8>)
{
  v1 = unk_100D8FC60;
  *a1 = xmmword_100D8FC50;
  a1[1] = v1;
  result = *&xmmword_100D8FC70;
  a1[2] = xmmword_100D8FC70;
  return result;
}

double sub_1003ACAD0@<D0>(_OWORD *a1@<X8>)
{
  sub_1003ACAB4(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_1003ACB24()
{
  result = qword_100CB2948;
  if (!qword_100CB2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2948);
  }

  return result;
}

uint64_t sub_1003ACBA0()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003ACC0C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
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

uint64_t sub_1003ACCA0(void *a1)
{
  v2 = sub_10022C350(&qword_100CB29F0);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_1003AD128();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Location();
  sub_1003AD1E0(&qword_100CAFA08);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1003ACDF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for Location();
  sub_1000037C4();
  v21 = v4;
  __chkstk_darwin(v5);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB29E0);
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for NotificationsOptInComponent();
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1003AD128();
  v16 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v17 = v21;
    sub_1003AD1E0(&qword_100CAF9E0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v12, v7);
    (*(v17 + 32))(v15, v22, v3);
    sub_1003AD17C(v15, v20);
  }

  return sub_100006F14(a1);
}

uint64_t sub_1003AD050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003ACC0C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1003AD07C(uint64_t a1)
{
  v2 = sub_1003AD128();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003AD0B8(uint64_t a1)
{
  v2 = sub_1003AD128();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1003AD128()
{
  result = qword_100CB29E8;
  if (!qword_100CB29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB29E8);
  }

  return result;
}

uint64_t sub_1003AD17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsOptInComponent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003AD1E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Location();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationsOptInComponent.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1003AD2D4()
{
  result = qword_100CB29F8;
  if (!qword_100CB29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB29F8);
  }

  return result;
}

unint64_t sub_1003AD32C()
{
  result = qword_100CB2A00;
  if (!qword_100CB2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2A00);
  }

  return result;
}

unint64_t sub_1003AD384()
{
  result = qword_100CB2A08;
  if (!qword_100CB2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2A08);
  }

  return result;
}

uint64_t sub_1003AD3D8(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v70 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for EnvironmentState();
  __chkstk_darwin(v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  __chkstk_darwin(v17);
  v19 = &v52 - v18;
  v20 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  sub_1000690C8(a1 + v20, v16);
  sub_10001B350(v10, 1, 1, v2);
  v21 = v16[2];
  v66 = *v16;
  v67 = v21;
  sub_1003AD854(v10, v7);
  v22 = sub_100024D10(v7, 1, v2);
  v68 = v13;
  v69 = a1;
  v65 = v2;
  v57 = v3;
  if (v22 == 1)
  {
    (*(v3 + 16))(v70, &v16[v11[8]], v2);
    if (sub_100024D10(v7, 1, v2) != 1)
    {
      sub_1001235D8(v7);
    }
  }

  else
  {
    (*(v3 + 32))(v70, v7, v2);
  }

  v23 = v11[10];
  v24 = &v16[v11[9]];
  v25 = *(v24 + 1);
  v63 = *v24;
  v64 = v16[v23];
  LODWORD(v24) = v16[v11[12]];
  v61 = v16[v11[11]];
  v62 = v24;
  v26 = v16[v11[13]];
  v60 = *&v16[v11[14]];
  v27 = v16[v11[15]];
  v58 = v16[v11[16]];
  v59 = v26;
  v28 = v11[18];
  v54 = v16[v11[17]];
  v30 = *&v16[v28];
  v29 = *&v16[v28 + 8];
  v32 = *&v16[v28 + 16];
  v31 = *&v16[v28 + 24];
  v34 = *&v16[v28 + 32];
  v33 = *&v16[v28 + 40];
  v52 = v29;
  v53 = v33;
  v55 = v16[v11[19]];
  v56 = v27;
  v35 = v33;

  v36 = v30;
  v37 = v29;
  v38 = v32;
  v39 = v31;
  v40 = v34;
  sub_10006912C(v16);
  v41 = v67;
  *v19 = v66;
  v19[1] = 0;
  v19[2] = v41;
  v19[3] = 3;
  (*(v57 + 32))(&v19[v11[8]], v70, v65);
  v42 = &v19[v11[9]];
  *v42 = v63;
  *(v42 + 1) = v25;
  v19[v11[10]] = v64;
  v43 = v62;
  v19[v11[11]] = v61;
  v19[v11[12]] = v43;
  v19[v11[13]] = v59;
  *&v19[v11[14]] = v60;
  v19[v11[15]] = v56;
  v19[v11[16]] = v58;
  v19[v11[17]] = v54;
  v44 = &v19[v11[18]];
  v46 = v52;
  v45 = v53;
  *v44 = v30;
  *(v44 + 1) = v46;
  *(v44 + 2) = v32;
  *(v44 + 3) = v31;
  *(v44 + 4) = v34;
  *(v44 + 5) = v45;
  v19[v11[19]] = v55;
  v47 = v68;
  sub_1003AD8C4(v19, v68);
  v48 = v69;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v49 = sub_1002D061C();

    v48 = v49;
  }

  v50 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  sub_1003AD928(v47, v48 + v50);
  swift_endAccess();
  return v48;
}

uint64_t sub_1003AD854(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAA9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003AD8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003AD928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1003AD98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, __int128 *a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  sub_100013188(a7, (v8 + 8));
  sub_100013188(a8, (v8 + 13));
  return v8;
}

uint64_t sub_1003AD9D4()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = *(v0 + 48);
  *(v3 - v2) = 0;
  type metadata accessor for ModalViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10000FE08();
  sub_10004F034(v4, v6, v5);
  sub_1000180EC(v9, &unk_100CD81B0);
  sub_10001EA44();
  return sub_10004F624(v4, v7);
}

uint64_t sub_1003ADAA4()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = (v3 - v2);
  sub_1000161C0(v0 + 8, v0[11]);
  dispatch thunk of LocationManagerType.requestAlwaysAuthorization()();
  v5 = v0[6];
  *v4 = 2;
  type metadata accessor for ModalViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10004F034(v4, v8, v5);
  sub_1000180EC(v8, &unk_100CD81B0);
  sub_10001EA44();
  return sub_10004F624(v4, v6);
}

uint64_t sub_1003ADBB0()
{
  sub_1000161C0((v0 + 104), *(v0 + 128));
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of NotificationAuthorizationManagerType.requestAuthorization(_:)();
}

uint64_t sub_1003ADC50(uint64_t result)
{
  if (result)
  {

    asyncMain(block:)();
  }

  return result;
}

uint64_t sub_1003ADCB0()
{
  v0 = type metadata accessor for MainAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EnvironmentState();
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_10022C350(&qword_100CA3508);
    v10 = *(v1 + 72);
    v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v26 = v9;
    v25 = v11 + 2 * v10;
    v12 = swift_allocObject();
    v24 = xmmword_100A2D320;
    *(v12 + 16) = xmmword_100A2D320;
    v27 = v11;
    type metadata accessor for NotificationsOptInAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB1AB8);
    static NotificationSubscription.Location.current.getter();
    static NotificationSubscription.Kind.all.getter();
    type metadata accessor for NotificationsAction();
    swift_storeEnumTagMultiPayload();
    v13 = swift_storeEnumTagMultiPayload();
    v32 = v12;
    (*(v8 + 16))(v28, v13);
    v14 = v28[0];
    v15 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    sub_1000690C8(v14 + v15, v6);

    v16 = v6[2];
    sub_10004F624(v6, type metadata accessor for EnvironmentState);
    if (v16 > 3 || v16 == 2)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v24;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      static PredictedLocationsNotificationSubscription.Kind.severe.getter();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10018E468(v18);
    }

    *v3 = 3;
    type metadata accessor for ModalViewAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v19 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10004FF70();
      v19 = v22;
    }

    v20 = *(v19 + 16);
    if (v20 >= *(v19 + 24) >> 1)
    {
      sub_10004FF70();
      v19 = v23;
    }

    *(v19 + 16) = v20 + 1;
    sub_1000CA208(v3, v19 + v27 + v20 * v10);
    v21 = *(v8 + 48);
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_10006D53C(v30, v28);
    v28[5] = v19;
    v29 = 0;
    sub_10004F1B0(v28, v21);

    sub_1000180EC(v28, &qword_100CA3510);
    return sub_1000180EC(v30, &unk_100CD81B0);
  }

  return result;
}

uint64_t sub_1003AE0CC(char a1)
{
  if (a1 == 2)
  {
    sub_1000161C0(v1 + 13, v1[16]);
    dispatch thunk of NotificationAuthorizationManagerType.requestAuthorization()();
    v2 = v1[6];
    sub_10022C350(&qword_100CA3508);
    type metadata accessor for MainAction();
    sub_1000082C0();
    v4 = *(v3 + 72);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100A2D320;
    type metadata accessor for NotificationsOptInAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *(v7 + v6 + v4) = 0;
  }

  else
  {
    v2 = v1[6];
    sub_10022C350(&qword_100CA3508);
    type metadata accessor for MainAction();
    sub_1000082C0();
    v9 = *(v8 + 72);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100A3BBA0;
    type metadata accessor for NotificationsOptInAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CB1AB8);
    static NotificationSubscription.Location.current.getter();
    static NotificationSubscription.Kind.severe.getter();
    type metadata accessor for NotificationsAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *(v7 + v11 + 2 * v9) = 5;
  }

  type metadata accessor for ModalViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_10006D53C(v16, v13);
  v14 = v7;
  v15 = 0;
  sub_10004F1B0(v13, v2);
  sub_1000180EC(v13, &qword_100CA3510);
  return sub_1000180EC(v16, &unk_100CD81B0);
}

uint64_t sub_1003AE3B8()
{
  v34 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v37 = v1;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v33 = v4 - v3;
  type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v35 = v6;
  v36 = v5;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v32 = v8 - v7;
  v9 = type metadata accessor for DispatchTime();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v31 - v16;
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = *(v0 + 48);
  *(v20 - v19) = 0;
  type metadata accessor for ModalViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v40 = 0;
  aBlock = 0u;
  v39 = 0u;
  sub_10004F034(v21, &aBlock, v22);
  sub_1000180EC(&aBlock, &unk_100CD81B0);
  sub_10001EA44();
  sub_10004F624(v21, v23);
  sub_100040690();
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v11 + 8);
  v31[1] = v11 + 8;
  v25(v14, v9);
  v40 = sub_1003AEAD0;
  v41 = v0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v39 = sub_1000742F0;
  *(&v39 + 1) = &unk_100C528F8;
  v26 = _Block_copy(&aBlock);

  v27 = v32;
  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  v29 = v33;
  v28 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v37 + 8))(v29, v28);
  (*(v35 + 8))(v27, v36);
  return (v25)(v17, v9);
}

uint64_t sub_1003AE798(uint64_t a1)
{
  v2 = type metadata accessor for MainAction();
  __chkstk_darwin(v2);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 48);
  type metadata accessor for NotificationsOptInAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_10004F034(v4, v7, v5);
  sub_1000180EC(v7, &unk_100CD81B0);
  return sub_10004F624(v4, type metadata accessor for MainAction);
}

uint64_t sub_1003AE8A4(char a1)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = (v5 - v4);
  result = sub_1008CA570(a1);
  if (result)
  {
    v8 = *(v1 + 48);
    *v6 = 1;
    type metadata accessor for ModalViewAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10000FE08();
    sub_10004F034(v6, v9, v8);
    sub_1000180EC(v11, &unk_100CD81B0);
    sub_10001EA44();
    return sub_10004F624(v6, v10);
  }

  return result;
}

uint64_t sub_1003AE988()
{

  sub_100006F14(v0 + 64);
  sub_100006F14(v0 + 104);
  return v0;
}

uint64_t sub_1003AE9D4()
{
  sub_1003AE988();

  return swift_deallocClassInstance();
}

uint64_t sub_1003AEB1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v29 - v7);
  v9 = type metadata accessor for AccessibilityChildBehavior();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CB2B70);
  sub_1000037E8();
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = sub_10022C350(&qword_100CB2B78);
  sub_1003AEDE4(v2, &v16[*(v17 + 44)]);
  v18 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v19 = &v16[*(v13 + 36)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  static AccessibilityChildBehavior.contain.getter();
  sub_1003AFBB4();
  v24 = v30;
  View.accessibilityElement(children:)();
  (*(v10 + 8))(v12, v9);
  sub_1000180EC(v16, &qword_100CB2B70);
  v25 = v2[1];
  *v8 = *v2;
  v8[1] = v25;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1003AFC6C(v8, v5);
  v26 = v24 + *(sub_10022C350(&qword_100CB2B98) + 36);
  v27 = type metadata accessor for AutomationInfoProperty();
  sub_1003AFC6C(v5, v26 + *(v27 + 24));

  sub_1001C9E84(v5);
  sub_1001C9E84(v8);
  *v26 = 0;
  *(v26 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v26 + 16) = result;
  *(v26 + 24) = 0;
  return result;
}

uint64_t sub_1003AEDE4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v69 = sub_10022C350(&unk_100CE1680);
  __chkstk_darwin(v69);
  v91 = &v68 - v4;
  v5 = sub_10022C350(&qword_100CB2BA0);
  __chkstk_darwin(v5 - 8);
  v80 = &v68 - v6;
  HourPrecipitationChartViewModel = type metadata accessor for NextHourPrecipitationChartViewModel();
  v82 = *(HourPrecipitationChartViewModel - 8);
  v83 = HourPrecipitationChartViewModel;
  __chkstk_darwin(HourPrecipitationChartViewModel);
  v84 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  HourPrecipitationChartView = type metadata accessor for NextHourPrecipitationChartView();
  v70 = *(HourPrecipitationChartView - 8);
  v71 = HourPrecipitationChartView;
  __chkstk_darwin(HourPrecipitationChartView);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CB2BA8);
  v75 = *(v12 - 8);
  v76 = v12;
  __chkstk_darwin(v12);
  v86 = &v68 - v13;
  v72 = sub_10022C350(&qword_100CB2BB0);
  __chkstk_darwin(v72);
  v79 = &v68 - v14;
  v77 = sub_10022C350(&qword_100CB2BB8);
  __chkstk_darwin(v77);
  v78 = &v68 - v15;
  v93 = sub_10022C350(&qword_100CB2BC0);
  __chkstk_darwin(v93);
  v74 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v73 = &v68 - v18;
  v19 = sub_10022C350(&qword_100CB2BC8);
  __chkstk_darwin(v19 - 8);
  v89 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v92 = &v68 - v22;
  v23 = type metadata accessor for EnvironmentValues();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  HourPrecipitationComponentView = type metadata accessor for NextHourPrecipitationComponentView();
  v28 = a1 + *(HourPrecipitationComponentView + 20);
  v29 = *v28;
  LODWORD(v28) = v28[8];
  v85 = v11;
  v81 = v23;
  if (v28 == 1)
  {
    v109 = v29 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v29, 0);
    (*(v24 + 8))(v26, v23);
    v29 = v109;
  }

  v68 = v29;
  v90 = static VerticalAlignment.center.getter();
  v113[0] = 1;
  sub_1003AF9E0(a1, (v29 ^ 1) & 1, v95);
  memcpy(v105, v95, 0x41uLL);
  memcpy(v106, v95, sizeof(v106));
  sub_1000955E0(v105, v94, &qword_100CB2BD0);
  sub_1000180EC(v106, &qword_100CB2BD0);
  memcpy(&v104[7], v105, 0x41uLL);
  v87 = v113[0];
  v88 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = a1 + *(HourPrecipitationComponentView + 24);
  v40 = *v39;
  if (v39[8] == 1)
  {
    if ((v40 & 0x100) == 0)
    {
LABEL_6:
      v41 = 1;
LABEL_12:
      v62 = v92;
      sub_10001B350(v92, v41, 1, v93);
      v63 = v89;
      sub_1001E096C(v62, v89);
      v64 = v90;
      v94[0] = v90;
      v94[1] = 0;
      v65 = v87;
      LOBYTE(v94[2]) = v87;
      memcpy(&v94[2] + 1, v104, 0x48uLL);
      *(&v94[11] + 1) = *v108;
      HIDWORD(v94[11]) = *&v108[3];
      v66 = v88;
      LOBYTE(v94[12]) = v88;
      *(&v94[12] + 1) = *v107;
      HIDWORD(v94[12]) = *&v107[3];
      v94[13] = v32;
      v94[14] = v34;
      v94[15] = v36;
      v94[16] = v38;
      LOBYTE(v94[17]) = 0;
      memcpy(a2, v94, 0x89uLL);
      v67 = sub_10022C350(&qword_100CB2BD8);
      sub_1001E096C(v63, &a2[*(v67 + 48)]);
      sub_1000955E0(v94, v95, &qword_100CB2BE0);
      sub_1000180EC(v62, &qword_100CB2BC8);
      sub_1000180EC(v63, &qword_100CB2BC8);
      *v95 = v64;
      *&v95[8] = 0;
      v95[16] = v65;
      memcpy(&v95[17], v104, 0x48uLL);
      *v96 = *v108;
      *&v96[3] = *&v108[3];
      v97 = v66;
      *v98 = *v107;
      *&v98[3] = *&v107[3];
      v99 = v32;
      v100 = v34;
      v101 = v36;
      v102 = v38;
      v103 = 0;
      return sub_1000180EC(v95, &qword_100CB2BE0);
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v42 = a2;
    v43 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    a2 = v42;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v40, 0);
    (*(v24 + 8))(v26, v81);
    if (v95[1] != 1)
    {
      goto LABEL_6;
    }
  }

  v44 = *(type metadata accessor for NextHourPrecipitationComponentViewModel() + 20);
  v45 = v82[2];
  v82 = a1;
  v45(v84, a1 + v44, v83);
  v114 = 0u;
  v115 = 0u;
  v116 = 0;
  v46 = sub_10022C350(&qword_100CB2BE8);
  sub_10001B350(v80, 1, 1, v46);
  v47 = v85;
  NextHourPrecipitationChartView.init(model:lollipopPoint:selectedData:lollipopEnabled:)();
  v48 = enum case for DynamicTypeSize.xxxLarge(_:);
  v49 = type metadata accessor for DynamicTypeSize();
  (*(*(v49 - 8) + 104))(v91, v48, v49);
  sub_1003AFDC8(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v51 = v91;
    v84 = a2;
    sub_1003AFDC8(&qword_100CB2BF0, &type metadata accessor for NextHourPrecipitationChartView);
    sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
    v52 = v47;
    v53 = v71;
    View.dynamicTypeSize<A>(_:)();
    sub_1000180EC(v51, &unk_100CE1680);
    (*(v70 + 8))(v52, v53);
    if ((v68 & 1) == 0)
    {
      sub_10022C350(&qword_100CB2AC8);
      ScaledMetric.wrappedValue.getter();
    }

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v54 = v79;
    (*(v75 + 32))(v79, v86, v76);
    v55 = &v54[*(v72 + 36)];
    v56 = v111;
    *v55 = v110;
    *(v55 + 1) = v56;
    *(v55 + 2) = v112;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v57 = v54;
    v58 = v78;
    sub_10002F758(v57, v78, &qword_100CB2BB0);
    memcpy((v58 + *(v77 + 36)), v113, 0x70uLL);
    v59 = v74;
    sub_10002F758(v58, v74, &qword_100CB2BB8);
    *(v59 + *(v93 + 36)) = 0x3FF0000000000000;
    v60 = v59;
    v61 = v73;
    sub_10002F758(v60, v73, &qword_100CB2BC0);
    sub_10002F758(v61, v92, &qword_100CB2BC0);
    v41 = 0;
    a2 = v84;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003AF9E0@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  *&v28 = *a1;
  *(&v28 + 1) = v4;
  sub_10002D5A4();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.subheadline.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;
  v22 = v15;

  sub_10010CD64(v5, v7, v9 & 1);

  if (a2)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  KeyPath = swift_getKeyPath();
  v41 = v14 & 1;
  v39 = 0;
  *&v25 = v10;
  *(&v25 + 1) = v12;
  LOBYTE(v26) = v14 & 1;
  *(&v26 + 1) = *v40;
  DWORD1(v26) = *&v40[3];
  *(&v26 + 1) = v22;
  *v27 = KeyPath;
  *&v27[8] = v16;
  v27[16] = 0;
  *&v27[17] = 256;
  v18 = v25;
  *&v30[15] = *&v27[15];
  v29 = v26;
  *v30 = *v27;
  v28 = v25;
  v24[56] = 1;
  v19 = *v27;
  v20 = *&v30[16];
  *(a3 + 16) = v26;
  *(a3 + 32) = v19;
  *a3 = v18;
  *(a3 + 48) = v20;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  v31[0] = v10;
  v31[1] = v12;
  v32 = v14 & 1;
  *&v33[3] = *&v40[3];
  *v33 = *v40;
  v34 = v22;
  v35 = KeyPath;
  v36 = v16;
  v37 = 0;
  v38 = 256;
  sub_1000955E0(&v25, v24, &qword_100CACF40);
  return sub_1000180EC(v31, &qword_100CACF40);
}

unint64_t sub_1003AFBB4()
{
  result = qword_100CB2B80;
  if (!qword_100CB2B80)
  {
    sub_10022E824(&qword_100CB2B70);
    sub_100006F64(&qword_100CB2B88, &qword_100CB2B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2B80);
  }

  return result;
}

uint64_t sub_1003AFC6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomationInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003AFCD0()
{
  result = qword_100CB2BF8;
  if (!qword_100CB2BF8)
  {
    sub_10022E824(&qword_100CB2B98);
    sub_10022E824(&qword_100CB2B70);
    sub_1003AFBB4();
    swift_getOpaqueTypeConformance2();
    sub_1003AFDC8(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2BF8);
  }

  return result;
}

uint64_t sub_1003AFDC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003AFE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xEA00000000004449;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  Dictionary.init(dictionaryLiteral:)();
  a3[3] = sub_10022C350(&qword_100CB2C08);
  a3[4] = sub_1003AFFC4();
  sub_100042FB0(a3);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1003AFF30()
{
  sub_1003B0028();

  return ShortDescribable.description.getter();
}

unint64_t sub_1003AFF70()
{
  result = qword_100CB2C00;
  if (!qword_100CB2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2C00);
  }

  return result;
}

unint64_t sub_1003AFFC4()
{
  result = qword_100CB2C10;
  if (!qword_100CB2C10)
  {
    sub_10022E824(&qword_100CB2C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2C10);
  }

  return result;
}

unint64_t sub_1003B0028()
{
  result = qword_100CB2C18;
  if (!qword_100CB2C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2C18);
  }

  return result;
}

uint64_t sub_1003B008C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10022C350(&qword_100CB2D18);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100109514(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100166170(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100166170(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100166170(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_100166170(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1003B0370()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  IncomingMessageEntity.userInfo.getter();
  dispatch thunk of Column.value.getter();

  v4 = v18;
  if (v18 >= 2)
  {
    v5 = v17;
    static String.Encoding.utf8.getter();
    v6 = String.data(using:allowLossyConversion:)();
    v8 = v7;
    sub_1000885AC(v5, v4);
    (*(v1 + 8))(v3, v0);
    if (v8 >> 60 != 15)
    {
      v11 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v17 = 0;
      v13 = [v11 propertyListWithData:isa options:0 format:0 error:&v17];

      if (v13)
      {
        v14 = v17;
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_10022C350(&qword_100CB2D20);
        if (swift_dynamicCast())
        {
          sub_1003B3404(v6, v8);
          return v16[1];
        }
      }

      else
      {
        v15 = v17;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v9 = Dictionary.init(dictionaryLiteral:)();
      sub_1003B3404(v6, v8);
      return v9;
    }
  }

  return Dictionary.init(dictionaryLiteral:)();
}

void *sub_1003B064C()
{
  v0 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_10022C350(&qword_100CB2D10);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v20 = type metadata accessor for SevereMessage();
  __chkstk_darwin(v20);
  v18 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  IncomingMessageEntity.id.getter();
  dispatch thunk of Column.value.getter();

  v8 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v23;
  IncomingMessageEntity.channel.getter();
  dispatch thunk of Column.value.getter();

  v10 = v21;
  v9 = v22;
  v11 = sub_1003B0350();
  sub_1003B008C(v11);
  IncomingMessageEntity.date.getter();
  dispatch thunk of Column.value.getter();

  v12 = type metadata accessor for Date();
  result = sub_100024D10(v2, 1, v12);
  if (result == 1)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v9 == 1)
  {
    v13 = 0xE700000000000000;
  }

  else
  {
    v13 = v9;
  }

  if (v9 == 1)
  {
    v14 = 0x6E776F6E6B6E55;
  }

  else
  {
    v14 = v10;
  }

  sub_1008784C8(v19, v8, v14, v13, v2, v5);
  if (sub_100024D10(v5, 1, v20) == 1)
  {
    sub_10002C4AC(v5, &qword_100CB2D10);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v16 = v18;
    sub_1003B3344(v5, v18);
    v15 = *(v16 + 32);

    sub_1003B33A8(v16);
  }

  return v15;
}

uint64_t sub_1003B08EC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_1003B0954()
{
  v0 = sub_10022C350(&qword_100CB2D08);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for Expression();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  NotificationStore.severeNotifications.getter();
  dispatch thunk of Table.query.getter();

  IncomingMessageEntity.messageID.getter();
  dispatch thunk of Column.value.getter();

  if (v11)
  {
    v12[3] = &type metadata for String;
    v12[4] = &protocol witness table for String;
    v12[0] = v10;
    v12[1] = v11;
    == infix(_:_:)();
    sub_100006F14(v12);
    v8 = type metadata accessor for OrderBy();
    sub_10001B350(v2, 1, 1, v8);
    v9 = dispatch thunk of Query.where(_:orderBy:limit:)();

    sub_10002C4AC(v2, &qword_100CB2D08);
    (*(v4 + 8))(v6, v3);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003B0BCC()
{
  v1 = OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController____lazy_storage___dateFormatter);
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

char *sub_1003B0C68(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController____lazy_storage___userInfo] = 0;
  *&v2[OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController____lazy_storage___events] = 0;
  *&v2[OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController____lazy_storage___notifications] = 0;
  *&v2[OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController____lazy_storage___dateFormatter] = 0;
  v5 = OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController_mapView;
  *&v2[v5] = [objc_allocWithZone(MKMapView) init];
  *&v2[OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController_notificationStore] = a1;
  v6 = OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController_message;
  v7 = type metadata accessor for IncomingMessageEntity();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a2, v7);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for DebugIncomingMessageViewController();

  v9 = objc_msgSendSuper2(&v14, "initWithStyle:", 2);
  v10 = OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController_mapView;
  v11 = *&v9[OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController_mapView];
  v12 = v9;
  [v11 setDelegate:{v12, v14.receiver, v14.super_class}];
  [*&v9[v10] setScrollEnabled:0];
  [*&v9[v10] setZoomEnabled:0];

  (*(v8 + 8))(a2, v7);
  return v12;
}

void sub_1003B0E0C()
{
  *(v0 + OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController____lazy_storage___userInfo) = 0;
  *(v0 + OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController____lazy_storage___events) = 0;
  *(v0 + OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController____lazy_storage___notifications) = 0;
  *(v0 + OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController____lazy_storage___dateFormatter) = 0;
  v1 = OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController_mapView;
  *(v0 + v1) = [objc_allocWithZone(MKMapView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1003B0ED4()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for DebugIncomingMessageViewController();
  objc_msgSendSuper2(&v30, "viewDidLoad");
  result = [v0 tableView];
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v2 = result;
  sub_1003B3418();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = String._bridgeToObjectiveC()();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  sub_1003C1790(0xD000000000000010, 0x8000000100AC4850, v0);
  v5 = sub_1003B062C();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5;
    v8 = *&v0[OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController_mapView];
    result = objc_opt_self();
    v9 = result;
    v10 = v7 + 64;
    v11 = 90.0;
    v12 = -90.0;
    v13 = 180.0;
    v14 = -180.0;
    while (1)
    {
      v15 = *v10;
      v16 = *(*v10 + 16);
      if (!v16)
      {
        break;
      }

      if (v16 == 1)
      {
        goto LABEL_21;
      }

      if (v16 < 3)
      {
        goto LABEL_22;
      }

      if (v16 == 3)
      {
        goto LABEL_23;
      }

      v17 = *(v15 + 32);
      v26[0] = *(v15 + 40);
      v26[1] = v17;
      v18 = *(v15 + 48);
      v26[2] = v26[0];
      v27 = v18;
      v28 = v18;
      v29 = v17;

      v19 = [v9 polygonWithCoordinates:v26 count:4];
      [v8 addOverlay:v19];

      Array<A>.minLatitude.getter();
      if (v11 >= v20)
      {
        v11 = v20;
      }

      Array<A>.maxLatitude.getter();
      if (v21 > v12)
      {
        v12 = v21;
      }

      Array<A>.minLongitude.getter();
      if (v13 >= v22)
      {
        v13 = v22;
      }

      Array<A>.maxLongitude.getter();
      v24 = v23;

      if (v24 > v14)
      {
        v14 = v24;
      }

      v10 += 40;
      if (!--v6)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = 90.0;
  v12 = -90.0;
  v13 = 180.0;
  v14 = -180.0;
LABEL_19:

  v25 = CLLocationCoordinate2DMake(v11 + (v12 - v11) * 0.5, v13 + (v14 - v13) * 0.5);
  return [*&v0[OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController_mapView] setRegion:0 animated:{v25.latitude, v25.longitude, (v12 - v11) * 1.5, (v14 - v13) * 1.5}];
}

uint64_t sub_1003B11C4(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return 4;
    case 2:
      v2 = sub_1003B062C();
      break;
    case 1:
      v2 = sub_1003B08CC();
      break;
    default:
      return 1;
  }

  v3 = *(v2 + 16);

  return v3;
}

CGFloat sub_1003B1270()
{
  v0 = IndexPath.section.getter();
  result = UITableViewAutomaticDimension;
  if (v0 == 3)
  {
    return 400.0;
  }

  return result;
}

uint64_t sub_1003B13B8(void *a1)
{
  v2 = type metadata accessor for SevereNotificationEntity();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [a1 dequeueReusableCellWithIdentifier:v8 forIndexPath:isa];

  [v10 setAccessoryType:0];
  if (!IndexPath.section.getter())
  {
    if (IndexPath.row.getter())
    {
      if (IndexPath.row.getter() == 1)
      {
        sub_100004060();
        sub_1003B2340();
      }

      else if (IndexPath.row.getter() == 2)
      {
        sub_100004060();
        sub_1003B2474();
      }

      else if (IndexPath.row.getter() == 3)
      {
        v21 = sub_100004060();
        sub_1003B25C4(v21);
      }
    }

    else
    {
      sub_100004060();
      sub_1003B2208();
    }

    return v10;
  }

  if (IndexPath.section.getter() == 1)
  {
    v11 = IndexPath.row.getter();
    result = sub_1003B08CC();
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *(result + 16))
    {
      (*(v4 + 16))(v7, result + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v2);

      sub_1003B2AD4(v10);
      (*(v4 + 8))(v7, v2);
      return v10;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (IndexPath.section.getter() != 2)
  {
    if (IndexPath.section.getter() == 3)
    {
      v20 = sub_100004060();
      sub_1003B2E74(v20);
    }

    return v10;
  }

  v13 = IndexPath.row.getter();
  result = sub_1003B062C();
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 < *(result + 16))
  {
    v14 = (result + 40 * v13);
    v16 = v14[4];
    v15 = v14[5];
    v18 = v14[6];
    v17 = v14[7];
    v19 = v14[8];

    v23[0] = v16;
    v23[1] = v15;
    v23[2] = v18;
    v23[3] = v17;
    v23[4] = v19;
    sub_1003B2804(v10, v23);

    return v10;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1003B1798(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return *&aNotificaalerts[8 * a2 - 8];
  }
}

unint64_t sub_1003B17E4(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    return 0xD000000000000059;
  }

  else
  {
    return 0;
  }
}

id sub_1003B1824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  a5(a1, a4);
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1003B1880()
{
  v1 = sub_10022C350(&qword_100CB2D08);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_100003C38();
  v72 = v3 - v4;
  __chkstk_darwin(v5);
  v7 = &v67 - v6;
  type metadata accessor for Expression();
  sub_1000037C4();
  v77 = v8;
  v78 = v9;
  __chkstk_darwin(v8);
  sub_100003C38();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  v16 = sub_10022C350(&qword_100CB2D28);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  v79 = type metadata accessor for WeatherAlertEntity();
  sub_1000037C4();
  v76 = v20;
  __chkstk_darwin(v21);
  sub_100003C38();
  v74 = v22 - v23;
  __chkstk_darwin(v24);
  v75 = &v67 - v25;
  v26 = type metadata accessor for SevereNotificationEntity();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_100003C38();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = &v67 - v34;
  if (IndexPath.section.getter() != 1)
  {
    v73 = v0;
    if (IndexPath.section.getter() != 2)
    {
      return;
    }

    v43 = IndexPath.row.getter();
    v44 = sub_1003B062C();
    if ((v43 & 0x8000000000000000) == 0)
    {
      if (v43 < *(v44 + 16))
      {
        v45 = (v44 + 40 * v43);
        v46 = v45[5];
        v71 = v45[4];
        v47 = v45[7];
        v48 = v45[8];

        v49 = *&v73[OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController_notificationStore];
        NotificationStore.weatherAlerts.getter();
        v68 = v49;
        v69 = v48;
        v70 = v47;
        dispatch thunk of Table.query.getter();

        v84 = &type metadata for String;
        v85 = &protocol witness table for String;
        v82 = v71;
        v83 = v46;

        == infix(_:_:)();
        sub_100006F14(&v82);
        v50 = type metadata accessor for OrderBy();
        sub_10001B350(v7, 1, 1, v50);
        dispatch thunk of Query.first(_:orderBy:)();
        v67 = v50;
        v71 = v46;

        sub_10002C4AC(v7, &qword_100CB2D08);
        v51 = v78 + 8;
        v52 = *(v78 + 8);
        v52(v15, v77);
        v53 = v79;
        v54 = sub_100024D10(v19, 1, v79);
        if (v54 == 1)
        {

          sub_10002C4AC(v19, &qword_100CB2D28);
          return;
        }

        v78 = v51;
        v55 = v75;
        (*(v76 + 32))(v75, v19, v53);
        NotificationStore.severeNotifications.getter();
        v68 = dispatch thunk of Table.query.getter();

        WeatherAlertEntity.alertIdentifier.getter();
        dispatch thunk of Column.value.getter();

        v56 = v81;
        if (v81)
        {
          v57 = v55;
          v58 = v80;

          v84 = &type metadata for String;
          v85 = &protocol witness table for String;
          v82 = v58;
          v83 = v56;
          == infix(_:_:)();
          sub_100006F14(&v82);
          v59 = v72;
          sub_10001B350(v72, 1, 1, v67);
          v60 = dispatch thunk of Query.where(_:orderBy:limit:)();

          sub_10002C4AC(v59, &qword_100CB2D08);
          v52(v12, v77);
          v61 = v79;
          v62 = v76;
          v63 = v74;
          (*(v76 + 16))(v74, v57, v79);
          v64 = objc_allocWithZone(type metadata accessor for DebugIncomingWeatherAlertViewController());
          v40 = sub_100622928(v63, v60);
          v65 = [v73 navigationController];
          if (v65)
          {
            v66 = v65;
            [v65 pushViewController:v40 animated:1];

            (*(v62 + 8))(v57, v61);
            return;
          }

          (*(v62 + 8))(v57, v61);
          goto LABEL_11;
        }

LABEL_23:
        __break(1u);
        return;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = IndexPath.row.getter();
  v37 = sub_1003B08CC();
  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v36 >= *(v37 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = *(v28 + 16);
  v38(v35, v37 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v36, v26);

  v38(v32, v35, v26);
  v39 = objc_allocWithZone(type metadata accessor for DebugSevereNotificationViewController());
  v40 = sub_1004932D4(v32);
  v41 = [v0 navigationController];
  if (v41)
  {
    v42 = v41;
    [v41 pushViewController:v40 animated:1];

    (*(v28 + 8))(v35, v26);
    return;
  }

  (*(v28 + 8))(v35, v26);
LABEL_11:
}

uint64_t sub_1003B2208()
{
  v1 = sub_1000195C4();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_10001EA5C();
  static UIListContentConfiguration.valueCell()();
  UIListContentConfiguration.text.setter();
  IncomingMessageEntity.id.getter();
  dispatch thunk of Column.value.getter();

  UIListContentConfiguration.secondaryText.setter();
  v7[3] = v1;
  v7[4] = &protocol witness table for UIListContentConfiguration;
  sub_100042FB0(v7);
  sub_10000FE1C();
  v3();
  UITableViewCell.contentConfiguration.setter();
  [v0 setSelectionStyle:0];
  v4 = sub_100008438();
  return v5(v4);
}

uint64_t sub_1003B2340()
{
  v1 = sub_1000195C4();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_10001EA5C();
  static UIListContentConfiguration.valueCell()();
  UIListContentConfiguration.text.setter();
  IncomingMessageEntity.messageID.getter();
  dispatch thunk of Column.value.getter();

  UIListContentConfiguration.secondaryText.setter();
  v7[3] = v1;
  v7[4] = &protocol witness table for UIListContentConfiguration;
  sub_100042FB0(v7);
  sub_10000FE1C();
  v3();
  UITableViewCell.contentConfiguration.setter();
  [v0 setSelectionStyle:0];
  v4 = sub_100008438();
  return v5(v4);
}

uint64_t sub_1003B2474()
{
  v1 = sub_1000195C4();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_10001EA5C();
  static UIListContentConfiguration.valueCell()();
  UIListContentConfiguration.text.setter();
  IncomingMessageEntity.channel.getter();
  dispatch thunk of Column.value.getter();

  UIListContentConfiguration.secondaryText.setter();
  v7[3] = v1;
  v7[4] = &protocol witness table for UIListContentConfiguration;
  sub_100042FB0(v7);
  sub_10000FE1C();
  v3();
  UITableViewCell.contentConfiguration.setter();
  [v0 setSelectionStyle:0];
  v4 = sub_100008438();
  return v5(v4);
}

uint64_t sub_1003B25C4(void *a1)
{
  v3 = sub_10022C350(&unk_100CB2CF0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  v6 = &v19[-1] - v5;
  v7 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10001EA5C();
  static UIListContentConfiguration.valueCell()();
  UIListContentConfiguration.text.setter();
  v11 = sub_1003B0BCC();
  IncomingMessageEntity.date.getter();
  dispatch thunk of Column.value.getter();
  v12 = type metadata accessor for Date();
  result = sub_100024D10(v6, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_100003B20();
    (*(v15 + 8))(v6, v12);
    v16 = [v11 stringFromDate:isa];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    UIListContentConfiguration.secondaryText.setter();
    v19[3] = v7;
    v19[4] = &protocol witness table for UIListContentConfiguration;
    sub_100042FB0(v19);
    sub_1000144D0();
    v17();
    UITableViewCell.contentConfiguration.setter();
    [a1 setSelectionStyle:0];
    return (*(v9 + 8))(v1, v7);
  }

  return result;
}

uint64_t sub_1003B2804(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10001EA5C();
  static UIListContentConfiguration.subtitleCell()();

  UIListContentConfiguration.text.setter();
  v9 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v9(v29, 0);
  v10 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontSizeToFitWidth.setter();
  v10(v29, 0);
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v29, "Bounding Box: ");
  HIBYTE(v29[1]) = -18;
  v11 = *(a2 + 32);
  v12 = *(v11 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v27 = a1;
    v28 = v5;
    v30 = _swiftEmptyArrayStorage;
    sub_10000369C(0, v12, 0);
    v13 = v30;
    v14 = v11 + 32;
    do
    {
      v15 = Double.description.getter();
      v17 = v16;
      v30 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        sub_10000369C((v18 > 1), v19 + 1, 1);
        v13 = v30;
      }

      v13[2] = v19 + 1;
      v20 = &v13[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      v14 += 8;
      --v12;
    }

    while (v12);
    a1 = v27;
    v5 = v28;
  }

  v30 = v13;
  sub_10022C350(&qword_100CCC930);
  sub_1001141C8();
  v21 = BidirectionalCollection<>.joined(separator:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  UIListContentConfiguration.secondaryText.setter();
  v29[3] = v5;
  v29[4] = &protocol witness table for UIListContentConfiguration;
  sub_100042FB0(v29);
  sub_1000144D0();
  v25();
  UITableViewCell.contentConfiguration.setter();
  [a1 setAccessoryType:1];
  return (*(v7 + 8))(v2, v5);
}

uint64_t sub_1003B2AD4(void *a1)
{
  v3 = sub_10022C350(&unk_100CB2CF0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  v7 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10001EA5C();
  static UIListContentConfiguration.subtitleCell()();
  SevereNotificationEntity.id.getter();
  dispatch thunk of Column.value.getter();

  UIListContentConfiguration.text.setter();
  v11 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontSizeToFitWidth.setter();
  v11(&v30, 0);
  v12 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v12(&v30, 0);
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v30 = 0x203A65746144;
  v31 = 0xE600000000000000;
  v13 = sub_1003B0BCC();
  SevereNotificationEntity.date.getter();
  dispatch thunk of Column.value.getter();
  v14 = type metadata accessor for Date();
  result = sub_100024D10(v6, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_100003B20();
    (*(v17 + 8))(v6, v14);
    v18 = [v13 stringFromDate:isa];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23._object = 0x8000000100AC4760;
    v23._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v23);
    SevereNotificationEntity.subscription.getter();
    dispatch thunk of Column.value.getter();

    if (v35)
    {
      v24 = v34;
    }

    else
    {
      v24 = 0xD000000000000014;
    }

    if (v35)
    {
      v25 = v35;
    }

    else
    {
      v25 = 0x8000000100ABCAE0;
    }

    v26 = v25;
    String.append(_:)(*&v24);

    UIListContentConfiguration.secondaryText.setter();
    v27 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.numberOfLines.setter();
    v27(&v30, 0);
    v32 = v7;
    v33 = &protocol witness table for UIListContentConfiguration;
    sub_100042FB0(&v30);
    sub_1000144D0();
    v28();
    UITableViewCell.contentConfiguration.setter();
    [a1 setAccessoryType:1];
    return (*(v9 + 8))(v1, v7);
  }

  return result;
}

void sub_1003B2E74(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Weather34DebugIncomingMessageViewController_mapView);
  [a1 bounds];
  [v3 setFrame:{0.0, 0.0}];
  v4 = [a1 contentView];
  [v4 addSubview:v3];
}

id sub_1003B2FAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugIncomingMessageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DebugIncomingMessageViewController()
{
  result = qword_100CB2C80;
  if (!qword_100CB2C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003B3100()
{
  result = type metadata accessor for IncomingMessageEntity();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1003B31BC(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MKPolygonRenderer) initWithOverlay:a2];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 grayColor];
  [v4 setStrokeColor:v5];

  v6 = [v4 strokeColor];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 colorWithAlphaComponent:0.2];
  }

  else
  {
    v8 = 0;
  }

  [v4 setFillColor:v8];

  [v4 setLineWidth:1.0];
  return v4;
}

uint64_t sub_1003B3344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SevereMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B33A8(uint64_t a1)
{
  v2 = type metadata accessor for SevereMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B3404(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10030F778(a1, a2);
  }

  return a1;
}

unint64_t sub_1003B3418()
{
  result = qword_100CB2D30;
  if (!qword_100CB2D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB2D30);
  }

  return result;
}

uint64_t sub_1003B349C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1003B34DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003B3584(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1003B35C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003B3618(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a2 + 32);
  if (*(a1 + 32) == 255)
  {
    if (v7 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == 255)
    {
      return 0;
    }

    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    sub_1002EE904(v8, v9, *(a2 + 32));
    v10 = static TemporalString.== infix(_:_:)();
    sub_1003B3CD0(v8, v9, v7);
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1009EC980();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = type metadata accessor for MoonComponentViewModel();
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v13 = v12[8];
  v14 = *(a2 + v13);
  if (*(a1 + v13) != 8)
  {
    if (v14 != 8)
    {
      v15 = MoonPhase.rawValue.getter();
      v17 = v16;
      if (v15 == MoonPhase.rawValue.getter() && v17 == v18)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_28;
    }

    return 0;
  }

  if (v14 != 8)
  {
    return 0;
  }

LABEL_28:
  if (*(a1 + v12[9]) != *(a2 + v12[9]))
  {
    return 0;
  }

  v21 = v12[10];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if (v22 == *v24 && v23 == v24[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1003B3828(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static TemporalString.== infix(_:_:)();
}

uint64_t sub_1003B38A8@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  v4 = inited;
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = 0x6C64616568627573;
  *(inited + 40) = 0xEB00000000656E69;
  v5 = *v1;
  v6 = v1[1];
  if (!v6)
  {
    v5 = 0x3E6C696E3CLL;
  }

  v7 = 0xE500000000000000;
  if (v6)
  {
    v7 = v1[1];
  }

  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 1937207154;
  *(inited + 88) = 0xE400000000000000;
  v8 = v1[5];
  *(inited + 120) = sub_10022C350(&qword_100CB2E20);
  *(v4 + 96) = v8;

  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CB2E28);
  a1[4] = sub_10012EF24(&qword_100CB2E30, &qword_100CB2E28);
  sub_100042FB0(a1);
  type metadata accessor for MoonComponentViewModel();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1003B3A38()
{
  sub_1003B3CE4(&qword_100CB2E38);

  return ShortDescribable.description.getter();
}

uint64_t sub_1003B3A90@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v4 = v1[1];
  v10 = *v1;
  *(inited + 48) = v10;
  *(inited + 32) = 0x6C6562616CLL;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x65756C6176;
  *(inited + 88) = 0xE500000000000000;
  v9 = *(v1 + 32);
  v5 = v9;
  v8 = v4;
  *(inited + 120) = &type metadata for TemporalString;
  *(inited + 112) = v5;
  *(inited + 96) = v4;
  sub_100358150(&v10, v7);
  sub_1003B3D28(&v8, v7);
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CB2E40);
  a1[4] = sub_10012EF24(&qword_100CB2E48, &qword_100CB2E40);
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1003B3C08()
{
  sub_1003B3D84();

  return ShortDescribable.description.getter();
}

unint64_t sub_1003B3C48()
{
  result = qword_100CB2E10;
  if (!qword_100CB2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2E10);
  }

  return result;
}

uint64_t sub_1003B3CD0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1002773E8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1003B3CE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MoonComponentViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003B3D84()
{
  result = qword_100CB2E50;
  if (!qword_100CB2E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2E50);
  }

  return result;
}

uint64_t AppLaunchCountMonitor.deinit()
{

  sub_100006F14(v0 + 32);
  return v0;
}

uint64_t sub_1003B3E10()
{
  v0 = type metadata accessor for MainAction();
  __chkstk_darwin(v0);
  v2 = (v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    sub_1000161C0(v4 + 4, v4[7]);
    v5 = dispatch thunk of AppLaunchCountManagerType.appLaunchCount.getter();
    result = swift_endAccess();
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      sub_10002D7F8((v4 + 4), v4[7]);
      dispatch thunk of AppLaunchCountManagerType.appLaunchCount.setter();
      swift_endAccess();
      v7 = v4[2];
      *v2 = v6;
      type metadata accessor for EnvironmentAction();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_10004F034(v2, v8, v7);

      sub_1000E17D8(v8);
      return sub_1000547B8(v2);
    }
  }

  return result;
}

uint64_t sub_1003B3FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1003B3FE0, 0, 0);
}

uint64_t sub_1003B3FE0()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003B4074, v2, v1);
}

uint64_t sub_1003B4074()
{
  v1 = v0[4];
  v2 = v0[2];

  sub_1003B40F0(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003B40F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CB2FD8);
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    return sub_100013188(&v5, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003B4188()
{
  sub_100006F14(v0 + 16);
  v1 = OBJC_IVAR____TtC7Weather31AppIntentsDependencyStartupTask_executionPhase;
  v2 = type metadata accessor for StartupTaskExecutionPhase();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1003B4238(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000926F8;

  return sub_1003B3FBC(a1, v4, v1 + 24);
}

uint64_t sub_1003B42E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1003B4354@<X0>(uint64_t a1@<X8>)
{
  sub_100035B30(v1 + 16, a1 + 48);
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 40) = 0;

  sub_10022C350(&qword_100CA4948);
  sub_1003B4410();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_1003B4410()
{
  result = qword_100CA4950;
  if (!qword_100CA4950)
  {
    sub_10022E824(&qword_100CA4948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4950);
  }

  return result;
}

uint64_t property wrapper backing initializer of Debounced._value(uint64_t a1, uint64_t a2)
{
  sub_100007FD0();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, a2, v7);
  sub_10029C560(v9, a2);
  return (*(v5 + 8))(a1, a2);
}

uint64_t sub_1003B4560()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001C080();
}

uint64_t Debounced.wrappedValue.setter(uint64_t a1)
{
  CurrentValueSubject.send(_:)();
  sub_100003B20();
  v3 = *(v2 + 8);

  return v3(a1);
}

void (*Debounced.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10023FBC0(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v3[1] = *(*v1 + 80);
  sub_100007FD0();
  *(v4 + 16) = v5;
  v7 = *(v6 + 64);
  v3[3] = sub_10023FBC0(v7);
  v3[4] = sub_10023FBC0(v7);
  Debounced.wrappedValue.getter();
  return sub_1003B4774;
}

void sub_1003B4774(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    Debounced.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Debounced.wrappedValue.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Debounced.__allocating_init<A>(wrappedValue:dueTime:scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  Debounced.init<A>(wrappedValue:dueTime:scheduler:)(a1, a2, a3, a4, a5);
  return v10;
}

void *Debounced.init<A>(wrappedValue:dueTime:scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v61 = a3;
  v64 = a2;
  v8 = *v5;
  v52 = a5;
  v53 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = type metadata accessor for Optional();
  sub_100007FD0();
  v58 = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  v51 = &v46 - v13;
  v14 = v8[10];
  v15 = type metadata accessor for CurrentValueSubject();
  v49 = v15;
  WitnessTable = swift_getWitnessTable();
  v65 = v15;
  v66 = a4;
  v67 = WitnessTable;
  v68 = a5;
  v16 = type metadata accessor for Publishers.Debounce();
  sub_100007FD0();
  v55 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v50 = swift_getWitnessTable();
  v57 = type metadata accessor for Publishers.Drop();
  sub_100007FD0();
  v59 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  v48 = &v46 - v23;
  v24 = v14;
  sub_100007FD0();
  v26 = v25;
  v63 = v25;
  sub_100003828();
  v28 = __chkstk_darwin(v27);
  v30 = &v46 - v29;
  *(v6 + v8[14]) = &_swiftEmptySetSingleton;
  v31 = *(v26 + 16);
  v62 = a1;
  v31(&v46 - v29, a1, v24, v28);
  swift_beginAccess();
  v47 = v8[11];
  v46 = v24;
  property wrapper backing initializer of Debounced._value(v30, v24);
  swift_endAccess();
  (v31)(v30, a1, v24);
  v32 = CurrentValueSubject.__allocating_init(_:)();
  *(v6 + *(*v6 + 104)) = v32;
  v65 = v32;
  v33 = v51;
  sub_10001B350(v51, 1, 1, AssociatedTypeWitness);

  v34 = v61;
  v35 = v53;
  v36 = v52;
  Publisher.debounce<A>(for:scheduler:options:)();
  (*(v58 + 8))(v33, v60);

  v37 = v48;
  Publisher.dropFirst(_:)();
  (*(v55 + 8))(v20, v16);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  v40 = v46;
  v39[2] = v46;
  v39[3] = v35;
  v41 = v35;
  v39[4] = v47;
  v39[5] = v36;
  v39[6] = v38;

  v42 = v57;
  swift_getWitnessTable();
  Publisher<>.sink(receiveValue:)();

  (*(v59 + 8))(v37, v42);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_100003B20();
  (*(v43 + 8))(v34, v41);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_100003B20();
  (*(v44 + 8))(v64);
  (*(v63 + 8))(v62, v40);
  return v6;
}

uint64_t sub_1003B4EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);
    *(&v16 - 2) = a3;
    *(&v16 - 1) = a5;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v16 - 2) = a3;
    *(&v16 - 1) = a5;
    swift_getKeyPath();
    static Published.subscript.getter();

    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v14 = (*(v8 + 8))(v10, a3);
    if (v13)
    {
    }

    else
    {
      __chkstk_darwin(v14);
      *(&v16 - 2) = a3;
      *(&v16 - 1) = a5;
      v15 = swift_getKeyPath();
      __chkstk_darwin(v15);
      *(&v16 - 2) = a3;
      *(&v16 - 1) = a5;
      swift_getKeyPath();
      (*(v8 + 16))(v10, a1, a3);
      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t Debounced.deinit()
{
  v1 = *(*v0 + 96);
  type metadata accessor for Published();
  sub_100003B20();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t Debounced.__deallocating_deinit()
{
  Debounced.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1003B526C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001C080();
}

uint64_t sub_1003B52F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  sub_100007FD0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = v17 - v13;
  v15 = *(v7 + 16);
  v15(v17 - v13, v12);
  v17[2] = v4;
  v17[3] = v5;
  swift_getKeyPath();
  v17[0] = v4;
  v17[1] = v5;
  swift_getKeyPath();
  (v15)(v10, v14, v4);

  static Published.subscript.setter();
  return (*(v7 + 8))(v14, v4);
}

uint64_t sub_1003B5478(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a2;
  type metadata accessor for WireframeScrollInterestView();
  if (v4 != 1)
  {
    return sub_1003B564C();
  }

  sub_10022C350(&qword_100CB31A0);
  State.wrappedValue.getter();
  if (v11)
  {

    if (qword_100CA26B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000703C(v5, qword_100D90A90);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Should not have token when starting to scroll", v8, 2u);
    }

    sub_1003B564C();
  }

  v9 = *(a3 + 16);
  String.append(_:)(*a3);
  sub_1008673F0(v9, 0x2D6C6C6F726373, 0xE700000000000000);

  return State.wrappedValue.setter();
}

uint64_t sub_1003B564C()
{
  sub_10022C350(&qword_100CB31A0);
  State.wrappedValue.getter();
  if (v1)
  {
    sub_10095D7E8();
  }

  return State.wrappedValue.setter();
}

uint64_t sub_1003B5704(uint64_t a1, unsigned __int8 *a2)
{
  sub_100005A18();
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1003B5478(a1, a2, v6);
}

uint64_t sub_1003B5788()
{
  type metadata accessor for WireframeScrollInterestView();

  return sub_1003B56D8();
}

uint64_t sub_1003B580C(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100CA26A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000703C(v6, qword_100D90A48);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Initializing Search module", v9, 2u);
  }

  sub_100013188(a1, v3 + 16);
  *(v3 + 56) = a2;
  return v3;
}

uint64_t sub_1003B590C@<X0>(uint64_t *a1@<X8>)
{
  sub_100035B30(v1 + 16, (a1 + 2));
  KeyPath = swift_getKeyPath();
  v4 = type metadata accessor for SearchView();
  *(a1 + *(v4 + 24)) = KeyPath;
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();

  sub_10022C350(&qword_100CA4C78);
  sub_1003B5A28();
  *a1 = ObservedObject.init(wrappedValue:)();
  a1[1] = v5;
  v6 = a1 + *(v4 + 28);
  result = State.init(wrappedValue:)();
  *v6 = v8;
  *(v6 + 1) = v9;
  return result;
}

unint64_t sub_1003B5A28()
{
  result = qword_100CA4C80;
  if (!qword_100CA4C80)
  {
    sub_10022E824(&qword_100CA4C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4C80);
  }

  return result;
}

uint64_t sub_1003B5A8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1003B5ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003B5B1C(char a1)
{
  v3 = a1 & 1;
  v4 = swift_allocObject();
  sub_10004E4E0(v4);
  sub_100137240();
  sub_10013726C(*(*v1 + 16));
  sub_100049770();
  *(v5 + 32) = sub_1003BA38C;
  *(v5 + 40) = v2;
  *v1 = v6;
  v10 = &type metadata for LocationViewPresentationKind;
  v9[0] = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v11 = sub_1003BA398;
  v12 = v7;
  return sub_100137374(v9, &type metadata for LocationViewPresentationKind);
}

unint64_t sub_1003B5C18(char a1)
{
  v3 = a1 & 1;
  v4 = swift_allocObject();
  sub_10004E4E0(v4);
  sub_100137240();
  sub_10013726C(*(*v1 + 16));
  sub_100049770();
  *(v5 + 32) = sub_1003B9FE0;
  *(v5 + 40) = v2;
  *v1 = v6;
  v10 = &type metadata for InteractiveMapPresentationContext;
  v9[0] = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v11 = sub_1003BA014;
  v12 = v7;
  return sub_100137374(v9, &type metadata for InteractiveMapPresentationContext);
}

uint64_t sub_1003B5D14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a2 & 0xC0;
  type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer(0);
  sub_10022C350(&qword_100CA5A80);
  result = State.wrappedValue.getter();
  if ((v4 == 64) != v7)
  {
    sub_1001009A8(v2, v3);
    v6 = Transaction.disablesAnimations.setter();
    __chkstk_darwin(v6);
    withTransaction<A>(_:_:)();
  }

  return result;
}

uint64_t sub_1003B5E34()
{
  type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer(0);
  sub_10022C350(&qword_100CA5A80);
  return State.wrappedValue.setter();
}

_BYTE *sub_1003B5EB8(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  if ((*a2 & 1) == 0)
  {
    if (*result)
    {
      sub_1000161C0((a3 + 32), *(a3 + 56));
      return sub_10056950C();
    }
  }

  return result;
}

uint64_t sub_1003B5EFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ZoomNavigationTransition();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB3688);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = sub_10022C350(&unk_100CE1860);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  sub_100035B30((a1 + 4), &v40 - v12);
  v14 = type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer(0);
  v15 = type metadata accessor for FullscreenMapView(0);
  sub_1000FC9C8();
  v16 = a1 + *(v14 + 48);
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v52) = v17;
  v53 = v18;
  sub_10022C350(&qword_100CB3360);
  State.projectedValue.getter();
  v19 = v50;
  v20 = v51;
  v21 = &v13[v15[6]];
  *v21 = v49;
  *(v21 + 1) = v19;
  v21[16] = v20;
  v22 = v15[7];
  *&v13[v22] = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v23 = &v13[v15[8]];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 33) = 0u;
  v24 = static SafeAreaRegions.all.getter();
  LOBYTE(v15) = static Edge.Set.all.getter();
  v25 = &v13[*(sub_10022C350(&qword_100CB3690) + 36)];
  *v25 = v24;
  v25[8] = v15;
  sub_10022C350(&qword_100CB3698);
  v26 = type metadata accessor for ColorScheme();
  sub_10001B350(v10, 1, 1, v26);
  sub_100095588();
  State.init(wrappedValue:)();
  sub_1000180EC(v10, &qword_100CB3688);
  v45 = v11;
  v27 = &v13[*(v11 + 36)];
  sub_100035B30((a1 + 4), (v27 + 2));
  v28 = a1[9];

  sub_10022C350(&unk_100CE0F40);
  sub_100006F64(&qword_100CA4CD0, &unk_100CE0F40);
  *v27 = ObservedObject.init(wrappedValue:)();
  v27[1] = v29;
  v27[7] = v28;
  type metadata accessor for ObservableResolver();
  sub_100007A54(&qword_100CB0468, &type metadata accessor for ObservableResolver);
  v27[8] = EnvironmentObject.init()();
  v27[9] = v30;
  v31 = a1[2];
  v49 = a1[1];
  v50 = v31;
  v32 = a1 + *(v14 + 40);
  v33 = *v32;
  v34 = v32[8];
  LODWORD(v15) = v32[9];

  if (v15 == 1)
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1003BA654(v33, v34, 0);
  static os_log_type_t.fault.getter();
  v35 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  v36 = v41;
  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100109A3C(v33, v34, 0);
  (*(v42 + 8))(v36, v43);
  if (v53 == 1)
  {
LABEL_5:
    Namespace.wrappedValue.getter();
  }

LABEL_6:
  v37 = v44;
  static NavigationTransition<>.zoom<A>(sourceID:in:)();

  sub_1000EC0DC();
  v38 = v47;
  View.navigationTransition<A>(_:)();
  (*(v46 + 8))(v37, v38);
  return sub_1000180EC(v13, &unk_100CE1860);
}

uint64_t sub_1003B64EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for AccessibilityTraits();
  v8 = *(v65 - 8);
  __chkstk_darwin(v65);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FullscreenMapView(0);
  __chkstk_darwin(v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10022C350(&qword_100CB3348);
  __chkstk_darwin(v64);
  v67 = &v56 - v14;
  v66 = sub_10022C350(&qword_100CB3350);
  __chkstk_darwin(v66);
  v16 = &v56 - v15;
  v17 = sub_10022C350(&qword_100CB3358);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  if (*v2 == 1)
  {
    v59 = &v56 - v20;
    v60 = v21;
    v61 = v16;
    v62 = v19;
    v56 = v7;
    v57 = v5;
    v58 = v4;
    v63 = a1;
    v22 = (v2 + *(type metadata accessor for FullscreenMapTransitionContainer(0) + 36));
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v68) = *v22;
    v69 = v24;
    sub_10022C350(&qword_100CB3360);
    State.wrappedValue.getter();
    v25 = 16.0;
    if (v71 == 4)
    {
      if (qword_100CA21B8 != -1)
      {
        swift_once();
      }

      v25 = *&qword_100D90340;
    }

    sub_100035B30(v2 + 24, v13);
    sub_1000FC9C8();
    LOBYTE(v71) = v23;
    v72 = v24;
    State.projectedValue.getter();
    v26 = v69;
    v27 = v70;
    v28 = &v13[v11[6]];
    *v28 = v68;
    *(v28 + 1) = v26;
    v28[16] = v27;
    v29 = v11[7];
    *&v13[v29] = swift_getKeyPath();
    sub_10022C350(&qword_100CA62E0);
    swift_storeEnumTagMultiPayload();
    v30 = &v13[v11[8]];
    *v30 = swift_getKeyPath();
    *(v30 + 8) = 0u;
    *(v30 + 24) = 0u;
    *(v30 + 33) = 0u;
    sub_10022C350(&unk_100CE17E0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100A2C3F0;
    static AccessibilityTraits.isModal.getter();
    v68 = *&v31;
    sub_100007A54(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0);
    sub_100006F64(&qword_100CB3370, &unk_100CE17F0);
    v32 = v65;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100007A54(&unk_100CE1890, type metadata accessor for FullscreenMapView);
    v33 = v67;
    View.accessibilityAddTraits(_:)();
    (*(v8 + 8))(v10, v32);
    sub_1003B94E0(v13);
    sub_1003B6CB0();
    v68 = v25;
    v71 = 0;
    sub_1003B953C();
    static AnyTransition.modifier<A>(active:identity:)();
    v34 = AnyTransition.combined(with:)();

    *&v33[*(v64 + 36)] = v34;
    v36 = *(v2 + 8);
    v35 = *(v2 + 16);
    v38 = *(v2 + 64);
    v37 = *(v2 + 72);
    v39 = *(v2 + 80);

    if (v39 == 1)
    {
      v40 = v61;
      if ((v37 & 1) == 0)
      {
LABEL_8:
        v41 = 0;
LABEL_14:
        static UnitPoint.center.getter();
        v46 = v45;
        v48 = v47;
        sub_100051BBC();
        v49 = &v40[*(v66 + 36)];
        *v49 = v36;
        *(v49 + 1) = v35;
        *(v49 + 2) = v38;
        *(v49 + 6) = v41;
        *(v49 + 4) = v46;
        *(v49 + 5) = v48;
        v49[48] = 1;
        v50 = static SafeAreaRegions.all.getter();
        v51 = static Edge.Set.all.getter();
        v52 = v60;
        sub_100051BBC();
        v53 = v62;
        v54 = v52 + *(v62 + 36);
        *v54 = v50;
        *(v54 + 8) = v51;
        sub_100051BBC();
        v55 = v63;
        sub_100051BBC();
        return sub_10001B350(v55, 0, 1, v53);
      }
    }

    else
    {
      sub_10022BF9C(v37, 0);
      static os_log_type_t.fault.getter();
      v43 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v44 = v56;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v37, 0);
      (*(v57 + 8))(v44, v58);
      v40 = v61;
      if (LOBYTE(v68) != 1)
      {
        goto LABEL_8;
      }
    }

    v41 = static MatchedGeometryProperties.frame.getter();
    goto LABEL_14;
  }

  return sub_10001B350(a1, 1, 1, v19);
}

uint64_t sub_1003B6CB0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 72);
  if (*(v0 + 80) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v9[15] != 1)
    {
      return static AnyTransition.move(edge:)();
    }

LABEL_5:
    static UnitPoint.center.getter();
    static AnyTransition.scale(scale:anchor:)();
    static UnitPoint.center.getter();
    static AnyTransition.scale(scale:anchor:)();
    v6 = static AnyTransition.asymmetric(insertion:removal:)();

    return v6;
  }

  if (v5)
  {
    goto LABEL_5;
  }

  return static AnyTransition.move(edge:)();
}

float64x2_t sub_1003B6E98@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v27 = type metadata accessor for EnvironmentValues();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35.i64[0] = type metadata accessor for AccessibilityActionKind();
  v34.f64[0] = *(v35.i64[0] - 8);
  __chkstk_darwin(v35.i64[0]);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37.f64[0] = type metadata accessor for FullscreenMapView(0) - 8;
  __chkstk_darwin(*&v37.f64[0]);
  v5 = static Alignment.center.getter();
  v7 = v6;
  v31 = v2;
  v33 = type metadata accessor for FullscreenMapView;
  sub_1000A3CC8();
  v8 = swift_allocObject();
  v28 = v8;
  v32 = type metadata accessor for FullscreenMapView;
  sub_1000EBDC8();
  KeyPath = swift_getKeyPath();
  *&v38.f64[0] = v5;
  v38.f64[1] = v7;
  *&v39.f64[0] = KeyPath;
  LOBYTE(v39.f64[1]) = 0;
  *&v40.f64[0] = sub_1003B9A54;
  *&v40.f64[1] = v8;
  v41 = 0;
  v9 = v29;
  static AccessibilityActionKind.escape.getter();
  sub_1000A3CC8();
  swift_allocObject();
  sub_1000EBDC8();
  sub_10022C350(&qword_100CB3470);
  sub_1003B9DD0();
  v10 = v36;
  View.accessibilityAction(_:_:)();

  (*(*&v34.f64[0] + 8))(v9, v35.i64[0]);

  *(v10 + *(sub_10022C350(&qword_100CB3490) + 36)) = 0x3FF0000000000000;
  v11 = v31;
  sub_1000A3CC8();
  v12 = swift_allocObject();
  sub_1000EBDC8();
  v13 = (v10 + *(sub_10022C350(&qword_100CB3498) + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_1003B9E88;
  v13[3] = v12;
  v14 = swift_getKeyPath();
  v15 = v11 + *(*&v37.f64[0] + 40);
  v16 = *v15;
  v17 = *(v15 + 16);
  v18 = *(v15 + 32);
  LODWORD(v15) = *(v15 + 48);
  v37 = v16;
  if (v15 != 1)
  {
    v19 = *&v16.f64[0];
    v34 = v17;
    v35 = v18;

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v21 = v25;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100109A54(v19, *&v37.f64[1], *&v34.f64[0], *&v34.f64[1], v35.i64[0], v35.i64[1], 0);
    (*(v26 + 8))(v21, v27);
    v17 = v39;
    v37 = v38;
    v18 = v40;
  }

  v35 = vaddq_f64(v17, v18);
  v22 = v10 + *(sub_10022C350(&qword_100CB34A0) + 36);
  *v22 = v14;
  result = vaddq_f64(v37, vextq_s8(v35, v35, 8uLL));
  *(v22 + 8) = result;
  *(v22 + 24) = 0;
  return result;
}

uint64_t sub_1003B73B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v25 = a1;
  v27 = a2;
  v4 = sub_10022C350(&qword_100CB34B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v26 = sub_10022C350(&qword_100CB34B8);
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = &v24 - v9;
  v11 = sub_10022C350(&qword_100CB34C0);
  *&__src[80] = sub_10071E934;
  *&__src[88] = 0;
  __src[96] = 0;
  *__src = v11;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_100095588();
  if (*&__dst[24])
  {
    sub_100013188(__dst, &__src[24]);
    *&__src[8] = sub_1003B7854;
    *&__src[16] = 0;
    v13 = Dictionary.init(dictionaryLiteral:)();
    *__dst = _swiftEmptyArrayStorage;
    *&__dst[8] = v13;
    sub_1003B5C18(0);
    *&__src[64] = *__dst;
    memcpy(__dst, __src, sizeof(__dst));
    v14 = sub_10022C350(&qword_100CB34C8);
    v15 = sub_100006F64(&qword_100CB34D0, &qword_100CB34C8);
    View.systemColorScheme()();
    sub_1000180EC(__dst, &qword_100CB34C8);
    if (qword_100CA28C8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for WeatherMapDisplayMode();
    v17 = sub_10000703C(v16, qword_100D90EF8);
    __chkstk_darwin(v17);
    *(&v24 - 2) = v25;
    *__dst = v14;
    *&__dst[8] = v15;
    swift_getOpaqueTypeConformance2();
    View.buttons(_:buttons:)();
    (*(v5 + 8))(v7, v4);
    v18 = sub_10022C350(&qword_100CB34D8);
    v19 = v27;
    v20 = (v27 + *(v18 + 36));
    v21 = *(type metadata accessor for RoundedRectangle() + 20);
    v22 = enum case for RoundedCornerStyle.continuous(_:);
    v23 = type metadata accessor for RoundedCornerStyle();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = a3;
    v20[1] = a3;
    *(v20 + *(sub_10022C350(&qword_100CB34E0) + 36)) = 256;
    return (*(v8 + 32))(v19, v10, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003B7854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  if (qword_100CA28C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for WeatherMapDisplayMode();
  v4 = sub_10000703C(v3, qword_100D90EF8);
  return sub_1008364CC(v4, 0xD00000000000001ELL, 0x8000000100AC4AE0, a2);
}

uint64_t sub_1003B78E8(uint64_t a1)
{
  v65 = a1;
  v1 = type metadata accessor for ButtonGroup.Alignment();
  v56 = *(v1 - 8);
  v57 = v1;
  __chkstk_darwin(v1);
  v58 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ButtonGroup();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FullscreenMapView(0);
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v6 = type metadata accessor for ButtonGroup.Button.Content();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ButtonGroup.Button();
  v63 = *(v10 - 8);
  v64 = v10;
  __chkstk_darwin(v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = &v54 - v14;
  if (static Solarium.isEnabled.getter())
  {
    v15 = &enum case for ButtonGroup.Button.Content.image(_:);
    object = 0xE500000000000000;
    countAndFlagsBits = 0x6B72616D78;
  }

  else
  {
    v18 = [objc_opt_self() mainBundle];
    v66._object = 0x8000000100AC49E0;
    v19._countAndFlagsBits = 1701736260;
    v19._object = 0xE400000000000000;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v66._countAndFlagsBits = 0xD000000000000022;
    v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v66);
    countAndFlagsBits = v21._countAndFlagsBits;
    object = v21._object;

    v15 = &enum case for ButtonGroup.Button.Content.title(_:);
  }

  *v9 = countAndFlagsBits;
  v9[1] = object;
  (*(v7 + 104))(v9, *v15, v6);
  sub_1000A3CC8();
  swift_allocObject();
  sub_1000EBDC8();
  static ButtonGroup.Button.dismiss(_:identifier:handler:)();

  (*(v7 + 8))(v9, v6);
  v22 = [objc_opt_self() mainBundle];
  v67._object = 0x8000000100AC4A10;
  v67._countAndFlagsBits = 0xD00000000000003BLL;
  v23._countAndFlagsBits = 1701736260;
  v23._object = 0xE400000000000000;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v67);

  v25 = v62;
  ButtonGroup.Button.accessibilityLabel(_:)();

  v26 = v64;
  v27 = *(v63 + 8);
  v27(v12, v64);
  v28 = *(v55 + 20);
  if (qword_100CA24D0 != -1)
  {
    swift_once();
  }

  v29 = v57;
  if (byte_100D90788 == 1 && (v30 = v65 + v28, *(v30 + 8) != 1) && (type metadata accessor for DisplayMetrics(), (DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0) && (byte_100D90788 == 1 && (DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0 && sub_10029C3DC(*v30) && *(v30 + 17) == 1 || (sub_1004B5750() & 1) != 0))
  {
    v31 = (*(v56 + 104))(v58, enum case for ButtonGroup.Alignment.leading(_:), v29);
    __chkstk_darwin(v31);
    v32 = v59;
    ButtonGroup.init(alignment:buttons:)();
    v33 = static ButtonGroupsBuilder.buildExpression(_:)();
    (*(v60 + 8))(v32, v61);
    sub_10022C350(&qword_100CB34E8);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100A2C3F0;
    *(v34 + 32) = v33;
    static ButtonGroupsBuilder.buildBlock(_:)();

    v35 = static ButtonGroupsBuilder.buildEither(first:)();
  }

  else
  {
    v36 = static Solarium.isEnabled.getter();
    v37 = v56;
    v38 = v58;
    v39 = (*(v56 + 104))(v58, enum case for ButtonGroup.Alignment.leading(_:), v29);
    __chkstk_darwin(v39);
    if (v36)
    {
      v40 = v37;
      v41 = v59;
      static ButtonGroup.singleRoundButton(alignment:button:)();
      (*(v40 + 8))(v38, v29);
      v42 = static ButtonGroupsBuilder.buildExpression(_:)();
      (*(v60 + 8))(v41, v61);
      sub_10022C350(&qword_100CB34E8);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_100A2C3F0;
      *(v43 + 32) = v42;
      static ButtonGroupsBuilder.buildBlock(_:)();

      v44 = static ButtonGroupsBuilder.buildEither(first:)();
    }

    else
    {
      v45 = v59;
      ButtonGroup.init(alignment:buttons:)();
      v46 = static ButtonGroupsBuilder.buildExpression(_:)();
      (*(v60 + 8))(v45, v61);
      sub_10022C350(&qword_100CB34E8);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_100A2C3F0;
      *(v47 + 32) = v46;
      static ButtonGroupsBuilder.buildBlock(_:)();

      v44 = static ButtonGroupsBuilder.buildEither(second:)();
    }

    v48 = v44;

    sub_10022C350(&qword_100CB34E8);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_100A2C3F0;
    *(v49 + 32) = v48;
    static ButtonGroupsBuilder.buildBlock(_:)();

    v35 = static ButtonGroupsBuilder.buildEither(second:)();
  }

  v50 = v35;

  sub_10022C350(&qword_100CB34E8);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100A2C3F0;
  *(v51 + 32) = v50;
  v52 = static ButtonGroupsBuilder.buildBlock(_:)();

  v27(v25, v26);
  return v52;
}

uint64_t sub_1003B81DC(uint64_t a1)
{
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FullscreenMapView(0);
  v7 = v6 - 8;
  v24[1] = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchTime();
  v26 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v24 - v13;
  v15 = a1 + *(v7 + 32);
  v16 = *v15;
  v17 = *(v15 + 8);
  LOBYTE(v15) = *(v15 + 16);
  aBlock = v16;
  v33 = v17;
  LOBYTE(v34) = v15;
  v38 = 4;
  sub_10022C350(&qword_100CB34A8);
  Binding.wrappedValue.setter();
  sub_100040690();
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v9 + 8);
  v25(v11, v8);
  sub_1000A3CC8();
  v19 = swift_allocObject();
  sub_1000EBDC8();
  v36 = sub_1003B9DB8;
  v37 = v19;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1000742F0;
  v35 = &unk_100C532A8;
  v20 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100007A54(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
  v22 = v27;
  v21 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v31 + 8))(v22, v21);
  (*(v29 + 8))(v5, v30);
  return (v25)(v14, v26);
}

uint64_t sub_1003B86AC(uint64_t a1, uint64_t a2)
{
  v22[2] = a2;
  v2 = type metadata accessor for FullscreenMapView(0);
  v22[1] = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for ButtonGroup.Button.Content();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ButtonGroup.Button();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  v23 = static ButtonsBuilder.buildExpression(_:)();
  *v6 = 0xD000000000000022;
  v6[1] = 0x8000000100AC4A50;
  (*(v4 + 104))(v6, enum case for ButtonGroup.Button.Content.image(_:), v3);
  sub_1000A3CC8();
  swift_allocObject();
  sub_1000EBDC8();
  ButtonGroup.Button.init(_:identifier:handler:endHandler:)();
  v14 = [objc_opt_self() mainBundle];
  v24._object = 0x8000000100AC4AA0;
  v15._object = 0x8000000100AC4A80;
  v24._countAndFlagsBits = 0xD000000000000038;
  v15._countAndFlagsBits = 0xD000000000000015;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v24);

  ButtonGroup.Button.accessibilityLabel(_:)();

  v17 = *(v8 + 8);
  v17(v10, v7);
  v18 = static ButtonsBuilder.buildExpression(_:)();
  v17(v13, v7);
  sub_10022C350(&qword_100CB34F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100A2D320;
  *(v19 + 32) = v23;
  *(v19 + 40) = v18;
  v20 = static ButtonsBuilder.buildBlock(_:)();

  return v20;
}

uint64_t sub_1003B8A7C(uint64_t a1)
{
  v57 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v54 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FullscreenMapView(0);
  v46 = *(v5 - 8);
  __chkstk_darwin(v5);
  v47 = v6;
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchTime();
  v50 = *(v58 - 8);
  __chkstk_darwin(v58);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v43 - v9;
  v10 = type metadata accessor for UserInterfaceSizeClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v43 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CA64E8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v43 - v15;
  v17 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v17 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  __chkstk_darwin(v23);
  v25 = &v43 - v24;
  v44 = v5;
  sub_10009D114();
  (*(v11 + 104))(v22, enum case for UserInterfaceSizeClass.compact(_:), v10);
  sub_10001B350(v22, 0, 1, v10);
  v26 = *(v14 + 56);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v16, 1, v10) == 1)
  {
    sub_1000180EC(v22, &qword_100CA6028);
    sub_1000180EC(v25, &qword_100CA6028);
    if (sub_100024D10(&v16[v26], 1, v10) == 1)
    {
      sub_1000180EC(v16, &qword_100CA6028);
      v27 = 4;
      goto LABEL_10;
    }

LABEL_6:
    sub_1000180EC(v16, &qword_100CA64E8);
    v27 = 5;
    goto LABEL_10;
  }

  sub_100095588();
  if (sub_100024D10(&v16[v26], 1, v10) == 1)
  {
    sub_1000180EC(v22, &qword_100CA6028);
    sub_1000180EC(v25, &qword_100CA6028);
    (*(v11 + 8))(v19, v10);
    goto LABEL_6;
  }

  v28 = v43;
  (*(v11 + 32))(v43, &v16[v26], v10);
  sub_100007A54(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v11 + 8);
  v30(v28, v10);
  sub_1000180EC(v22, &qword_100CA6028);
  sub_1000180EC(v25, &qword_100CA6028);
  v30(v19, v10);
  sub_1000180EC(v16, &qword_100CA6028);
  if (v29)
  {
    v27 = 4;
  }

  else
  {
    v27 = 5;
  }

LABEL_10:
  v31 = v57 + *(v44 + 24);
  v32 = *v31;
  v33 = *(v31 + 8);
  LOBYTE(v31) = *(v31 + 16);
  aBlock = v32;
  v60 = v33;
  LOBYTE(v61) = v31;
  v65 = v27;
  sub_10022C350(&qword_100CB34A8);
  Binding.wrappedValue.setter();
  sub_100040690();
  v34 = static OS_dispatch_queue.main.getter();
  v35 = v45;
  static DispatchTime.now()();
  v36 = v49;
  + infix(_:_:)();
  v50 = *(v50 + 8);
  (v50)(v35, v58);
  sub_1000A3CC8();
  v37 = swift_allocObject();
  sub_1000EBDC8();
  v63 = sub_1003B9F58;
  v64 = v37;
  aBlock = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_1000742F0;
  v62 = &unk_100C53258;
  v38 = _Block_copy(&aBlock);

  v39 = v51;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100007A54(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
  v40 = v54;
  v41 = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v38);

  (*(v55 + 8))(v40, v41);
  (*(v52 + 8))(v39, v53);
  return (v50)(v36, v58);
}

uint64_t sub_1003B9394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ButtonGroup.Button();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1003B9400()
{
  v0 = static ButtonsBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CB34F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A2C3F0;
  *(v1 + 32) = v0;
  v2 = static ButtonsBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_1003B946C()
{
  type metadata accessor for FullscreenMapView(0);
  sub_10022C350(&qword_100CB34A8);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1003B94E0(uint64_t a1)
{
  v2 = type metadata accessor for FullscreenMapView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003B953C()
{
  result = qword_100CB3378;
  if (!qword_100CB3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3378);
  }

  return result;
}

uint64_t sub_1003B9594(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1003B95D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003B9620(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1003B9660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003B96CC()
{
  result = qword_100CB3428;
  if (!qword_100CB3428)
  {
    sub_10022E824(&qword_100CB3430);
    sub_1003B9750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3428);
  }

  return result;
}

unint64_t sub_1003B9750()
{
  result = qword_100CB3438;
  if (!qword_100CB3438)
  {
    sub_10022E824(&qword_100CB3358);
    sub_1003B97DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3438);
  }

  return result;
}

unint64_t sub_1003B97DC()
{
  result = qword_100CB3440;
  if (!qword_100CB3440)
  {
    sub_10022E824(&qword_100CB3350);
    sub_1003B9894();
    sub_100006F64(&qword_100CB3460, &qword_100CB3468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3440);
  }

  return result;
}

unint64_t sub_1003B9894()
{
  result = qword_100CB3448;
  if (!qword_100CB3448)
  {
    sub_10022E824(&qword_100CB3348);
    sub_1003B994C();
    sub_100006F64(&qword_100CA4620, &qword_100CA4628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3448);
  }

  return result;
}

unint64_t sub_1003B994C()
{
  result = qword_100CB3450;
  if (!qword_100CB3450)
  {
    sub_10022E824(&qword_100CB3458);
    sub_100007A54(&unk_100CE1890, type metadata accessor for FullscreenMapView);
    sub_100007A54(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3450);
  }

  return result;
}

uint64_t sub_1003B9A54@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = type metadata accessor for FullscreenMapView(0);
  sub_100003810(v4);
  v6 = sub_1000055BC(*(v5 + 80));

  return sub_1003B73B0(v6, a1, a2);
}

uint64_t sub_1003B9C10()
{
  type metadata accessor for FullscreenMapView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_100006F14(v3);
  v4 = v0[5];
  v5 = v4 + *(type metadata accessor for DisplayMetrics() + 36);
  type metadata accessor for DynamicTypeSize();
  sub_1000037E8();
  (*(v6 + 8))(v3 + v5);

  v7 = v0[7];
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v3 + v7, 1, v8))
    {
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
    }
  }

  else
  {
  }

  v9 = v3 + v0[8];
  sub_100109A54(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48));

  return swift_deallocObject();
}

unint64_t sub_1003B9DD0()
{
  result = qword_100CB3478;
  if (!qword_100CB3478)
  {
    sub_10022E824(&qword_100CB3470);
    sub_100006F64(&qword_100CB3480, &qword_100CB3488);
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3478);
  }

  return result;
}

uint64_t sub_1003B9EA0(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for FullscreenMapView(0);
  sub_100003810(v1);
  v3 = sub_1000055BC(*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1003BA01C()
{
  result = qword_100CB35F0;
  if (!qword_100CB35F0)
  {
    sub_10022E824(&qword_100CB34A0);
    sub_1003BA0D4();
    sub_100006F64(&qword_100CB3620, &qword_100CB3628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB35F0);
  }

  return result;
}

unint64_t sub_1003BA0D4()
{
  result = qword_100CB35F8;
  if (!qword_100CB35F8)
  {
    sub_10022E824(&qword_100CB3498);
    sub_1003BA160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB35F8);
  }

  return result;
}

unint64_t sub_1003BA160()
{
  result = qword_100CB3600;
  if (!qword_100CB3600)
  {
    sub_10022E824(&qword_100CB3490);
    sub_1003BA218();
    sub_100006F64(&unk_100CE1820, &qword_100CB3618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3600);
  }

  return result;
}

unint64_t sub_1003BA218()
{
  result = qword_100CB3608;
  if (!qword_100CB3608)
  {
    sub_10022E824(&qword_100CB3610);
    sub_1003B9DD0();
    sub_100007A54(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3608);
  }

  return result;
}

unint64_t sub_1003BA2D4()
{
  result = qword_100CB3630;
  if (!qword_100CB3630)
  {
    sub_10022E824(&qword_100CB3508);
    sub_1000E99D4();
    sub_100006F64(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3630);
  }

  return result;
}

uint64_t sub_1003BA3B8()
{
  type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_100006F14(v3 + 32);

  v4 = v3 + v0[8];
  sub_10022C350(&qword_100CB3278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(type metadata accessor for DisplayMetrics() + 36);
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  sub_1000EBD74(*(v3 + v0[9]), *(v3 + v0[9] + 8));
  sub_100109A3C(*(v3 + v0[10]), *(v3 + v0[10] + 8), *(v3 + v0[10] + 9));

  return swift_deallocObject();
}

uint64_t sub_1003BA560(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer(0);
  sub_100003810(v6);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a3(a1, a2, v8);
}

uint64_t sub_1003BA5F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer(0);
  sub_100003810(v2);
  v4 = sub_1000055BC(*(v3 + 80));

  return sub_1003B5EFC(v4, a1);
}

uint64_t sub_1003BA654(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t ResettingBool.__allocating_init(wrappedValue:interval:)(char a1, double a2)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 16) = a2;
  return result;
}

void sub_1003BA6D4()
{
  sub_10001EA90();
  if (*(v0 + 32) == 1)
  {
    sub_1003BA704();
  }
}

void sub_1003BA704()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = objc_opt_self();
  v3 = *(v0 + 16);
  v7[4] = sub_1003BA9A0;
  v7[5] = v0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10030DC80;
  v7[3] = &unk_100C53488;
  v4 = _Block_copy(v7);

  v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:v3];
  _Block_release(v4);
  v6 = *(v0 + 24);
  *(v0 + 24) = v5;
}

void ResettingBool.wrappedValue.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  sub_1003BA6D4();
}

void (*ResettingBool.wrappedValue.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003BA8D0;
}

void sub_1003BA8D0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1003BA6D4();
  }
}

uint64_t sub_1003BA904(uint64_t a1, uint64_t a2)
{
  v3 = swift_beginAccess();
  *(a2 + 32) = 0;
  return sub_1003BA6D4(v3);
}

uint64_t ResettingBool.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1003BA9A8(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v162 = a7;
  v178 = a6;
  v176 = a5;
  v151 = a4;
  ObjectType = swift_getObjectType();
  v160 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v172 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v159 = v14 - v13;
  v158 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  v157 = v17 - v16;
  v18 = sub_10022C350(&qword_100CA37B0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v146 - v22;
  type metadata accessor for LocationModel();
  sub_1000037C4();
  v179 = v25;
  v180 = v24;
  v26 = __chkstk_darwin(v24);
  v175 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v27;
  __chkstk_darwin(v26);
  v29 = &v146 - v28;
  v150 = type metadata accessor for Date();
  sub_1000037C4();
  v149 = v30;
  __chkstk_darwin(v31);
  sub_1000037D8();
  v163 = v33 - v32;
  v34 = type metadata accessor for AppConfigurationState();
  __chkstk_darwin(v34 - 8);
  sub_1000037D8();
  v37 = v36 - v35;
  v148 = type metadata accessor for WeatherDataConfiguration();
  sub_1000037C4();
  v147 = v38;
  __chkstk_darwin(v39);
  sub_1000037D8();
  v42 = v41 - v40;
  *&v7[OBJC_IVAR____TtC7Weather26DebugOfflineViewController_sections] = _swiftEmptyArrayStorage;
  v187.receiver = v7;
  v187.super_class = ObjectType;
  v177 = objc_msgSendSuper2(&v187, "initWithStyle:", 2);
  v152 = a2;
  a1(&v184);
  v153 = v184;
  sub_100066B98(v184 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v37, type metadata accessor for AppConfigurationState);
  AppConfiguration.weatherData.getter();
  type metadata accessor for AppConfiguration();
  sub_1000037E8();
  (*(v43 + 8))(v37);
  v161 = v42;
  v44 = sub_1003BB5D8();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_100004078();
  sub_10069F3B0();
  v53 = *(v51 + 16);
  v52 = *(v51 + 24);
  v183 = v51;
  if (v53 >= v52 >> 1)
  {
    sub_1000144E0(v52);
    sub_10069F3B0();
    v183 = v145;
  }

  v54 = v183;
  *(v183 + 16) = v53 + 1;
  v55 = v54 + 32 * v53;
  *(v55 + 32) = v44;
  *(v55 + 40) = v46;
  *(v55 + 48) = v48;
  *(v55 + 56) = v50 & 1;
  static WeatherClock.date.getter();
  v56 = v153;
  v57 = v153 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v58 = *(v57 + *(type metadata accessor for LocationsState() + 24));
  v59 = *(v58 + 16);
  if (!v59)
  {

    goto LABEL_43;
  }

  v182 = v23;
  v174 = v21;
  v173 = v56 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
  v60 = v179 + 16;
  v181 = *(v179 + 16);
  v61 = *(v179 + 80);
  v62 = v58 + ((v61 + 32) & ~v61);
  v171 = *(v179 + 72);
  v156 = (v172 + 8);
  v164 = 0x8000000100AC4C80;
  v172 = v61;
  v170 = (v61 + 16) & ~v61;
  v169 = (v169 + v170 + 7) & 0xFFFFFFFFFFFFFFF8;
  v168 = (v169 + 23) & 0xFFFFFFFFFFFFFFF8;
  v167 = (v179 + 32);
  v166 = (v179 + 8);
  v146 = v58;

  v165 = xmmword_100A3A770;
  v155 = xmmword_100A46220;
  v154 = xmmword_100A46210;
  v63 = v180;
  v179 = v60;
  do
  {
    v181(v29, v62, v63);
    v64 = *(v173 + 16);

    LocationModel.id.getter();
    if (*(v64 + 16))
    {
      v65 = sub_100031B34();
      v67 = v66;

      if (v67)
      {
        v68 = *(v64 + 56);
        v69 = type metadata accessor for LocationWeatherDataState(0);
        sub_1000037E8();
        v71 = v68 + *(v70 + 72) * v65;
        v72 = v182;
        sub_100066B98(v71, v182, type metadata accessor for LocationWeatherDataState);

        v73 = v72;
        v74 = 0;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v69 = type metadata accessor for LocationWeatherDataState(0);
    v72 = v182;
    v73 = v182;
    v74 = 1;
LABEL_10:
    sub_10001B350(v73, v74, 1, v69);
    v186 = _swiftEmptyArrayStorage;
    v75 = v174;
    sub_100106A9C(v72, v174);
    type metadata accessor for LocationWeatherDataState(0);
    if (sub_100024D10(v75, 1, v69) == 1)
    {
      v76 = sub_100004078();
      sub_10069F394(v76, v77, v78, _swiftEmptyArrayStorage);
      sub_100008448();
      if (v84)
      {
        sub_1000195E0(v82, v83);
        v82 = v79;
      }

      sub_10002835C(v79, v80, v81, v82);
      *(v86 + 32) = 0xD000000000000011;
      *(v86 + 40) = v164;
LABEL_14:
      *(v86 + 48) = v165;
LABEL_15:
      *(v86 + 64) = 0;
      v186 = v85;
    }

    else
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v107 = sub_10022C350(&qword_100CA75D8);
          v108 = *(v107 + 48);
          v109 = *(v107 + 64);
          v110 = v157;
          sub_1003BD374(v75, v157);
          v111 = v159;
          WeatherDataModel.currentWeather.getter();
          sub_1003BB7D0(v111, v29, &v186, v161, v163, v162);
          v112 = v111;
          v63 = v180;
          (*v156)(v112, v160);
          sub_100105EE0(v110, type metadata accessor for WeatherData);
          sub_100105EE0(v75 + v109, type metadata accessor for NewsDataModel);
          v87 = type metadata accessor for PreprocessedWeatherData;
          v88 = v75 + v108;
          break;
        case 2u:
          v89 = *v75;
          v90 = v75[1];
          sub_10031EF8C(v75[2], v75[3]);
          v91 = sub_100004078();
          sub_10069F394(v91, v92, v93, _swiftEmptyArrayStorage);
          sub_100008448();
          if (v84)
          {
            sub_1000195E0(v97, v98);
            v97 = v94;
          }

          sub_10002835C(v94, v95, v96, v97);
          *(v86 + 32) = v155;
          *(v86 + 48) = v89;
          *(v86 + 56) = v90;
          goto LABEL_15;
        case 3u:
          v99 = sub_100004078();
          sub_10069F394(v99, v100, v101, _swiftEmptyArrayStorage);
          sub_100008448();
          if (v84)
          {
            sub_1000195E0(v105, v106);
            v105 = v102;
          }

          sub_10002835C(v102, v103, v104, v105);
          *(v86 + 32) = v154;
          goto LABEL_14;
        default:
          v87 = type metadata accessor for LocationWeatherDataState;
          v88 = v75;
          break;
      }

      sub_100105EE0(v88, v87);
    }

    v184 = LocationModel.name.getter();
    v185 = v113;
    LocationModel.kind.getter();
    v114 = Location.Identifier.Kind.rawValue.getter();
    v116 = v115;
    if (v114 == Location.Identifier.Kind.rawValue.getter() && v116 == v117)
    {

LABEL_33:
      v120._countAndFlagsBits = 0x6E65727275432820;
      v120._object = 0xEA00000000002974;
      String.append(_:)(v120);
      goto LABEL_34;
    }

    v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v119)
    {
      goto LABEL_33;
    }

LABEL_34:
    v121 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v122 = v175;
    v181(v175, v29, v63);
    v123 = v168;
    v124 = swift_allocObject();
    (*v167)(v124 + v170, v122, v63);
    v125 = (v124 + v169);
    v126 = v178;
    *v125 = v176;
    v125[1] = v126;
    *(v124 + v123) = v121;
    v127 = v186;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10069F394(0, v127[2] + 1, 1, v127);
      v127 = v137;
    }

    v129 = v127[2];
    v128 = v127[3];
    if (v129 >= v128 >> 1)
    {
      v138 = sub_1000144E0(v128);
      sub_10069F394(v138, v139, v140, v127);
      v127 = v141;
    }

    v127[2] = v129 + 1;
    v130 = &v127[5 * v129];
    v130[4] = sub_1003BD2D8;
    v130[5] = v124;
    v130[6] = 0;
    v130[7] = 0;
    *(v130 + 64) = 1;
    v132 = v184;
    v131 = v185;
    v134 = *(v183 + 16);
    v133 = *(v183 + 24);
    if (v134 >= v133 >> 1)
    {
      sub_1000144E0(v133);
      sub_10069F3B0();
      v183 = v142;
    }

    sub_1000180EC(v182, &qword_100CA37B0);
    v63 = v180;
    (*v166)(v29, v180);
    v135 = v183;
    *(v183 + 16) = v134 + 1;
    v136 = v135 + 32 * v134;
    *(v136 + 32) = v132;
    *(v136 + 40) = v131;
    *(v136 + 48) = v127;
    *(v136 + 56) = 1;
    v62 += v171;
    --v59;
  }

  while (v59);

LABEL_43:
  sub_100006F14(v162);
  (*(v149 + 8))(v163, v150);
  (*(v147 + 8))(v161, v148);
  v143 = v177;
  *&v177[OBJC_IVAR____TtC7Weather26DebugOfflineViewController_sections] = v183;

  return v143;
}

void *sub_1003BB5D8()
{
  WeatherDataConfiguration.offlineDataFreshnessInterval.getter();
  Double.write<A>(to:)();
  sub_10069F394(0, 1, 1, _swiftEmptyArrayStorage);
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];
  if (v3 >= v2 >> 1)
  {
    sub_10069F394(v2 > 1, v3 + 1, 1, v0);
    v1 = v12;
  }

  v1[2] = v3 + 1;
  v4 = &v1[5 * v3];
  v4[4] = 0xD00000000000001FLL;
  v4[5] = 0x8000000100AC4D00;
  v4[6] = 0;
  v4[7] = 0xE000000000000000;
  *(v4 + 64) = 0;
  WeatherDataConfiguration.extendedRefreshHintInterval.getter();
  Double.write<A>(to:)();
  v6 = v1[2];
  v5 = v1[3];
  if (v6 >= v5 >> 1)
  {
    sub_10069F394(v5 > 1, v6 + 1, 1, v1);
    v1 = v13;
  }

  v1[2] = v6 + 1;
  v7 = &v1[5 * v6];
  v7[4] = 0xD00000000000001ELL;
  v7[5] = 0x8000000100AC4D20;
  v7[6] = 0;
  v7[7] = 0xE000000000000000;
  *(v7 + 64) = 0;
  WeatherDataConfiguration.currentLocationCertaintyRadius.getter();
  Double.write<A>(to:)();
  v9 = v1[2];
  v8 = v1[3];
  if (v9 >= v8 >> 1)
  {
    sub_10069F394(v8 > 1, v9 + 1, 1, v1);
    v1 = v14;
  }

  v1[2] = v9 + 1;
  v10 = &v1[5 * v9];
  v10[4] = 0xD000000000000021;
  v10[5] = 0x8000000100AC4D40;
  v10[6] = 0;
  v10[7] = 0xE000000000000000;
  *(v10 + 64) = 0;
  return v1;
}

uint64_t sub_1003BB7D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v83 = a6;
  v84 = a2;
  v8 = type metadata accessor for Date();
  v86 = *(v8 - 8);
  v87 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v82 - v12;
  CurrentWeather.date.getter();
  v82 = a4;
  WeatherDataConfiguration.offlineDataFreshnessInterval.getter();
  Date.addingTimeInterval(_:)();
  v14 = static Date.< infix(_:_:)();
  v15 = objc_opt_self();
  v85 = v13;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v17 = [v15 localizedStringFromDate:isa dateStyle:1 timeStyle:3];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  sub_10051A9A8();
  v21 = *(*a3 + 16);
  sub_100278A48(v21);
  v22 = *a3;
  *(v22 + 16) = v21 + 1;
  v23 = v22 + 40 * v21;
  *(v23 + 32) = xmmword_100A46230;
  *(v23 + 48) = v18;
  *(v23 + 56) = v20;
  *(v23 + 64) = 0;
  *a3 = v22;
  sub_10051A9A8();
  v24 = *(*a3 + 16);
  sub_100278A48(v24);
  v25 = (v14 & 1) == 0;
  v26 = 28494;
  if (v14)
  {
    v26 = 7562585;
  }

  v27 = 0xE200000000000000;
  v28 = *a3;
  *(v28 + 16) = v24 + 1;
  v29 = v28 + 40 * v24;
  *(v29 + 32) = xmmword_100A46240;
  if (v14)
  {
    v27 = 0xE300000000000000;
  }

  *(v29 + 48) = v26;
  *(v29 + 56) = v27;
  *(v29 + 64) = 0;
  *a3 = v28;
  if (v14)
  {
    v30 = 0x5320656D61636542;
  }

  else
  {
    v30 = 0x2073656D6F636542;
  }

  if (v25)
  {
    v31 = 0xED0000656C617453;
  }

  else
  {
    v31 = 0xEC000000656C6174;
  }

  v32 = Date._bridgeToObjectiveC()().super.isa;
  v33 = [v15 localizedStringFromDate:v32 dateStyle:1 timeStyle:3];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  sub_10051A9A8();
  v37 = *(*a3 + 16);
  sub_100278A48(v37);
  v38 = *a3;
  *(v38 + 16) = v37 + 1;
  v39 = v38 + 40 * v37;
  *(v39 + 32) = v30;
  *(v39 + 40) = v31;
  *(v39 + 48) = v34;
  *(v39 + 56) = v36;
  *(v39 + 64) = 0;
  *a3 = v38;
  LocationModel.kind.getter();
  v40 = Location.Identifier.Kind.rawValue.getter();
  v42 = v41;
  if (v40 == Location.Identifier.Kind.rawValue.getter() && v42 == v43)
  {
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v45 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  LocationModel.coordinate.getter();
  v47 = v46;
  LocationModel.coordinate.getter();
  v49 = v48;
  v88 = 0;
  v89 = 0xE000000000000000;
  Double.write<A>(to:)();
  v50 = v88;
  v51 = v89;
  sub_10051A9A8();
  v52 = *(*a3 + 16);
  sub_100278A48(v52);
  v53 = *a3;
  *(v53 + 16) = v52 + 1;
  v54 = v53 + 40 * v52;
  *(v54 + 32) = xmmword_100A46250;
  *(v54 + 48) = v50;
  *(v54 + 56) = v51;
  *(v54 + 64) = 0;
  *a3 = v53;
  v88 = 0;
  v89 = 0xE000000000000000;
  Double.write<A>(to:)();
  v55 = v88;
  v56 = v89;
  sub_10051A9A8();
  v57 = *(*a3 + 16);
  sub_100278A48(v57);
  v58 = *a3;
  *(v58 + 16) = v57 + 1;
  v59 = v58 + 40 * v57;
  *(v59 + 32) = xmmword_100A46260;
  *(v59 + 48) = v55;
  *(v59 + 56) = v56;
  *(v59 + 64) = 0;
  *a3 = v58;
  sub_1000161C0(v83, v83[3]);
  v60 = dispatch thunk of LocationManagerType.currentCLLocation.getter();
  if (!v60)
  {
LABEL_26:
    v80 = v87;
    v81 = *(v86 + 8);
    v81(v11, v87);
    return (v81)(v85, v80);
  }

  v61 = v60;
  v62 = [objc_allocWithZone(CLLocation) initWithLatitude:v47 longitude:v49];
  [v61 distanceFromLocation:v62];
  v64 = v63;
  v88 = 0;
  v89 = 0xE000000000000000;
  Double.write<A>(to:)();
  v65 = v88;
  v66 = v89;
  sub_10051A9A8();
  v67 = *(*a3 + 16);
  sub_100278A48(v67);
  v68 = *a3;
  *(v68 + 16) = v67 + 1;
  v69 = v68 + 40 * v67;
  *(v69 + 32) = xmmword_100A46270;
  *(v69 + 48) = v65;
  *(v69 + 56) = v66;
  *(v69 + 64) = 0;
  *a3 = v68;
  WeatherDataConfiguration.currentLocationCertaintyRadius.getter();
  if (v70 >= v64)
  {
    v71 = 28494;
  }

  else
  {
    v71 = 7562585;
  }

  if (v70 >= v64)
  {
    v72 = 0xE200000000000000;
  }

  else
  {
    v72 = 0xE300000000000000;
  }

  sub_10051A9A8();
  v73 = *(*a3 + 16);
  sub_100278A48(v73);

  v74 = *(v86 + 8);
  v75 = v11;
  v76 = v87;
  v74(v75, v87);
  result = (v74)(v85, v76);
  v78 = *a3;
  *(v78 + 16) = v73 + 1;
  v79 = v78 + 40 * v73;
  *(v79 + 32) = xmmword_100A46280;
  *(v79 + 48) = v71;
  *(v79 + 56) = v72;
  *(v79 + 64) = 0;
  *a3 = v78;
  return result;
}

uint64_t sub_1003BBDA8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_10022C350(&qword_100CA3508);
  v3 = *(type metadata accessor for MainAction() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  v6 = v5 + v4;
  *v6 = LocationModel.id.getter();
  *(v6 + 8) = v7;
  *(v6 + 16) = xmmword_100A3A770;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  type metadata accessor for WeatherDataAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = v5;
  v18 = 0;
  sub_10004F1B0(v15, a2);
  sub_10000C70C(0, &qword_100CAC5F8);
  strcpy(v14, "Invalidated ");
  BYTE5(v14[1]) = 0;
  HIWORD(v14[1]) = -5120;
  v8._countAndFlagsBits = LocationModel.name.getter();
  String.append(_:)(v8);

  v9 = sub_100604878(v14[0], v14[1], 0xD00000000000005BLL, 0x8000000100AC4CA0, 1);
  sub_10000C70C(0, &qword_100CAC600);
  v10 = sub_100604930(19279, 0xE200000000000000, 1, 0, 0);
  [v9 addAction:v10];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong presentViewController:v9 animated:1 completion:0];

    v9 = v12;
  }

  return sub_1000180EC(v15, &qword_100CA3510);
}

void sub_1003BC020()
{
  *(v0 + OBJC_IVAR____TtC7Weather26DebugOfflineViewController_sections) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003BC0A8()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  sub_1003C1790(0x656E696C66664FLL, 0xE700000000000000, v0);
  v2 = [v0 tableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  type metadata accessor for OfflineDebuggingKeyValueTableViewCell();
  UITableView.register<A>(cell:name:)();

  v4 = [v1 tableView];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  type metadata accessor for InvalidateLocationTableViewCell();
  UITableView.register<A>(cell:name:)();

  v6 = [v1 tableView];
  if (v6)
  {
    v7 = v6;
    [v6 reloadData];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1003BC2AC()
{
  if (v0[4])
  {
    type metadata accessor for InvalidateLocationTableViewCell();
    return UITableView.dequeue<A>(cell:at:name:)();
  }

  else
  {
    v3 = v0[2];
    v2 = v0[3];
    v5 = *v0;
    v4 = v0[1];
    type metadata accessor for OfflineDebuggingKeyValueTableViewCell();

    v6 = UITableView.dequeue<A>(cell:at:name:)();
    v7 = (v6 + OBJC_IVAR____TtC7WeatherP33_D4FFFB6012F8B51FB9CF4963F7B8688937OfflineDebuggingKeyValueTableViewCell_semanticValueDescription);
    *v7 = v5;
    v7[1] = v4;

    sub_1003BCBD4();
    v8 = (v6 + OBJC_IVAR____TtC7WeatherP33_D4FFFB6012F8B51FB9CF4963F7B8688937OfflineDebuggingKeyValueTableViewCell_formattedValue);
    *v8 = v3;
    v8[1] = v2;

    sub_1003BCC64();
    return v6;
  }
}

uint64_t sub_1003BC394(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(v2 + OBJC_IVAR____TtC7Weather26DebugOfflineViewController_sections);
  if (*(v3 + 16) <= a2)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = v3 + 32 * a2;
  if (*(v4 + 56) != 1)
  {
    return 0x72756769666E6F43;
  }

  v5 = *(v4 + 32);

  return v5;
}

unint64_t sub_1003BC434(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(v2 + OBJC_IVAR____TtC7Weather26DebugOfflineViewController_sections);
  if (*(v3 + 16) <= a2)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (*(v3 + 32 * a2 + 56))
  {
    return 0;
  }

  else
  {
    return 0xD000000000000056;
  }
}

id sub_1003BC4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1003BC538(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*(v2 + OBJC_IVAR____TtC7Weather26DebugOfflineViewController_sections) + 16) > a2)
  {
    sub_100022A9C();

    return;
  }

  __break(1u);
}

unint64_t sub_1003BC5F0()
{
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(*(v0 + OBJC_IVAR____TtC7Weather26DebugOfflineViewController_sections) + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100022A9C();
  if (v4)
  {
    v3 = 0;
  }

  v5 = *(v2 + v3 + 32);

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if (result < *(v5 + 16))
  {
    v6 = v5 + 40 * result;
    v7 = *(v6 + 32);
    v8 = *(v6 + 48);
    v12 = *(v6 + 64);
    v11[0] = v7;
    v11[1] = v8;
    sub_1003BD4D8(v11, v10);

    v9 = sub_1003BC2AC();
    sub_1003BD510(v11);
    return v9;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1003BC7F0(void *a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];

  v5 = IndexPath.section.getter();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v5 >= *(*&v1[OBJC_IVAR____TtC7Weather26DebugOfflineViewController_sections] + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100022A9C();
  if (v8)
  {
    v7 = 0;
  }

  v9 = *(v6 + v7 + 32);

  v10 = IndexPath.row.getter();
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_18:
    __break(1u);
    return;
  }

  v11 = v9 + 40 * v10;
  v12 = *(v11 + 32);
  v13 = *(v11 + 48);
  v14 = *(v11 + 56);
  v15 = *(v11 + 64);
  v16 = sub_10001EAB0();
  sub_1003BD3D8(v16, v17, v18, v19, v15);

  if (v15)
  {

    v12(v20);
    v21 = sub_10001EAB0();
    sub_1003BD428(v21, v22, v23, v24, 1);
    v25 = sub_10001EAB0();

    sub_1003BD428(v25, v26, v27, v28, 1);
  }

  else
  {
    sub_10000C70C(0, &qword_100CAC5F8);
    swift_bridgeObjectRetain_n();

    v29 = sub_10001EAB0();
    v40 = sub_100604878(v29, v30, v31, v32, 1);
    sub_10000C70C(0, &qword_100CAC600);
    v33 = swift_allocObject();
    *(v33 + 16) = v13;
    *(v33 + 24) = v14;
    v34 = sub_100604930(2037411651, 0xE400000000000000, 0, sub_1003BD478, v33);
    [v40 addAction:v34];

    v35 = sub_100604930(19279, 0xE200000000000000, 1, 0, 0);
    [v40 addAction:v35];

    [v2 presentViewController:v40 animated:1 completion:0];
    v36 = sub_10001EAB0();
    sub_1003BD428(v36, v37, v38, v39, 0);
  }
}

void sub_1003BCA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() generalPasteboard];
  sub_1003BD480(a2, a3, v5);
}

void sub_1003BCBD4()
{
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC7WeatherP33_D4FFFB6012F8B51FB9CF4963F7B8688937OfflineDebuggingKeyValueTableViewCell_semanticValueDescription];
    v3 = *&v0[OBJC_IVAR____TtC7WeatherP33_D4FFFB6012F8B51FB9CF4963F7B8688937OfflineDebuggingKeyValueTableViewCell_semanticValueDescription + 8];
    v4 = v1;

    sub_10030F7D8(v2, v3, v4);
  }
}

void sub_1003BCC64()
{
  v1 = [v0 detailTextLabel];
  if (v1)
  {
    v2 = v1;
    if (*&v0[OBJC_IVAR____TtC7WeatherP33_D4FFFB6012F8B51FB9CF4963F7B8688937OfflineDebuggingKeyValueTableViewCell_formattedValue + 8])
    {

      v3 = String._bridgeToObjectiveC()();
    }

    else
    {
      v3 = 0;
    }

    [v2 setText:v3];
  }
}

id sub_1003BCD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = &v3[OBJC_IVAR____TtC7WeatherP33_D4FFFB6012F8B51FB9CF4963F7B8688937OfflineDebuggingKeyValueTableViewCell_semanticValueDescription];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v7 = &v3[OBJC_IVAR____TtC7WeatherP33_D4FFFB6012F8B51FB9CF4963F7B8688937OfflineDebuggingKeyValueTableViewCell_formattedValue];
  *v7 = 0;
  *(v7 + 1) = 0;
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", 1, v8);

  return v9;
}

void sub_1003BCDF8()
{
  v1 = (v0 + OBJC_IVAR____TtC7WeatherP33_D4FFFB6012F8B51FB9CF4963F7B8688937OfflineDebuggingKeyValueTableViewCell_semanticValueDescription);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC7WeatherP33_D4FFFB6012F8B51FB9CF4963F7B8688937OfflineDebuggingKeyValueTableViewCell_formattedValue);
  *v2 = 0;
  v2[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1003BCF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v19.receiver = v3;
  v19.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v19, "initWithStyle:reuseIdentifier:", 0, v6);

  v8 = v7;
  v9 = [v8 textLabel];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightMedium];
    [v10 setFont:v11];
  }

  v12 = [v8 textLabel];
  if (v12)
  {
    v13 = v12;
    sub_10030F7D8(0x6164696C61766E49, 0xEF61746144206574, v12);
  }

  v14 = [v8 textLabel];
  if (v14)
  {
    v15 = v14;
    [v14 setTextAlignment:1];
  }

  v16 = [v8 textLabel];

  if (v16)
  {
    v17 = [objc_opt_self() redColor];
    [v16 setTextColor:v17];
  }

  return v8;
}

uint64_t sub_1003BD120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1003BD240(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
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

uint64_t sub_1003BD280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003BD2D8()
{
  v1 = *(type metadata accessor for LocationModel() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003BBDA8(v0 + v2, v3);
}

uint64_t sub_1003BD374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003BD3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_1003BD428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

void sub_1003BD480(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setString:v4];
}

uint64_t sub_1003BD54C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
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

uint64_t sub_1003BD58C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003BD5F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_1006A794C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1002AADD8(v4, v12);
      v5 = v12[7];
      sub_1002AAE34(v12);
      v13 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_1006A794C((v6 > 1), v7 + 1, 1);
        v2 = v13;
      }

      v2[2] = v7 + 1;
      v2[v7 + 4] = v5;
      v4 += 104;
      --v1;
    }

    while (v1);
  }

  v8 = sub_10087B508(v2);
  v10 = v9;

  if (v10)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

void *sub_1003BD724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __chkstk_darwin(a1);
  v16 = &__src[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v19, v14);
  sub_1003BD95C(v16, *(*v7 + 16), a1, a2, a3, a4, a6, a7, __src);
  sub_10051A978();
  v20 = *(*v7 + 16);
  sub_100278A18(v20);
  v21 = *v7;
  *(v21 + 16) = v20 + 1;
  result = memcpy((v21 + 104 * v20 + 32), __src, 0x68uLL);
  *v7 = v21;
  return result;
}

BOOL sub_1003BD868(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v4 != v5 || a1[3] != a2[3])
  {
    return 0;
  }

  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  v14 = a2[7];

  return sub_1004992B8(v7, v8, v9, v10, v11, v12, v13, v14);
}

BOOL sub_1003BD908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_1003BD95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  *a9 = sub_1003BDA1C();
  a9[1] = v18;
  a9[4] = a3;
  a9[5] = a4;
  a9[6] = a5;
  a9[7] = a6;
  a9[2] = v19;
  a9[3] = a2;
  a9[11] = a7;
  a9[12] = a8;
  v20 = sub_100042FB0(a9 + 8);
  v21 = *(*(a7 - 8) + 32);

  return v21(v20, a1, a7);
}

uint64_t sub_1003BDA1C()
{
  swift_getMetatypeMetadata();
  v0 = String.init<A>(describing:)();
  ObjectIdentifier.hashValue.getter();
  return v0;
}

uint64_t sub_1003BDA84@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_1003BDAA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1003BDAE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003BDB64()
{
  result = qword_100CB3808;
  if (!qword_100CB3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3808);
  }

  return result;
}

unint64_t sub_1003BDBBC()
{
  result = qword_100CB3810[0];
  if (!qword_100CB3810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CB3810);
  }

  return result;
}

Swift::Int sub_1003BDC40(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

uint64_t LocationSearchEntity.id.getter()
{
  v1 = *v0;

  return v1;
}

Swift::Int sub_1003BDCF0()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1003BDD78()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1003BDDF0(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_100024D10(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_100024D10(result, v5, v4);
}

void sub_1003BDEF4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_10001B350(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1003BE0CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E657274 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x727453646E657274 && a2 == 0xEB00000000676E69;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72745365756C6176 && a2 == 0xEB00000000676E69;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6972745374696E75 && a2 == 0xEA0000000000676ELL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C676E61 && a2 == 0xE500000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000018 && 0x8000000100AC4E30 == a2)
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

uint64_t sub_1003BE2C8(char a1)
{
  result = 0x646E657274;
  switch(a1)
  {
    case 1:
      v3 = 0x53646E657274;
      goto LABEL_5;
    case 2:
      v3 = 0x5365756C6176;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7274000000000000;
      break;
    case 3:
      result = 0x6972745374696E75;
      break;
    case 4:
      result = 0x656C676E61;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1003BE378(uint64_t a1, uint64_t a2)
{
  if ((sub_10074757C(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PressureComponentPreprocessedDataModel();
  sub_100005824(v4[5]);
  v7 = v7 && v5 == v6;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_100005824(v4[6]);
  v10 = v7 && v8 == v9;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_100005824(v4[7]);
  v13 = v7 && v11 == v12;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  sub_100005824(v4[9]);
  if (v7 && v14 == v15)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1003BE460(void *a1)
{
  v3 = sub_10022C350(&qword_100CB3950);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1003BEBD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for PressureTrend();
  sub_1003BECEC(&qword_100CB3958);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = type metadata accessor for PressureComponentPreprocessedDataModel();
    sub_1000144F4(v9[5]);
    v11[14] = 1;
    sub_10000845C();
    sub_1000144F4(v9[6]);
    v11[13] = 2;
    sub_10000845C();
    sub_1000144F4(v9[7]);
    v11[12] = 3;
    sub_10000845C();
    v11[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000144F4(v9[9]);
    v11[10] = 5;
    sub_10000845C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1003BE67C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for PressureTrend();
  sub_1000037C4();
  v40 = v5;
  __chkstk_darwin(v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10022C350(&qword_100CB3938);
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  v39 = type metadata accessor for PressureComponentPreprocessedDataModel();
  __chkstk_darwin(v39);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v41 = a1;
  sub_1000161C0(a1, v14);
  sub_1003BEBD8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(v41);
  }

  v36 = v10;
  v47 = 0;
  sub_1003BECEC(&qword_100CB3948);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v4;
  v16 = v13;
  (*(v40 + 32))(v13, v8, v15);
  v46 = 1;
  sub_10000FE58();
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v39;
  v19 = &v13[*(v39 + 20)];
  *v19 = v17;
  v19[1] = v20;
  v45 = 2;
  sub_10000FE58();
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = &v13[v18[6]];
  *v22 = v21;
  v22[1] = v23;
  v44 = 3;
  sub_10000FE58();
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = &v13[v18[7]];
  *v25 = v24;
  v25[1] = v26;
  v43 = 4;
  sub_10000FE58();
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v13[v18[8]] = v27;
  v42 = 5;
  sub_10000FE58();
  v28 = v18;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v30;
  v32 = sub_10001C0A4();
  v33(v32);
  v34 = (v16 + v28[9]);
  *v34 = v29;
  v34[1] = v31;
  sub_1003BEC2C(v16, v37);
  sub_100006F14(v41);
  return sub_1003BEC90(v16);
}

uint64_t sub_1003BEB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003BE0CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003BEB2C(uint64_t a1)
{
  v2 = sub_1003BEBD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003BEB68(uint64_t a1)
{
  v2 = sub_1003BEBD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1003BEBD8()
{
  result = qword_100CB3940;
  if (!qword_100CB3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3940);
  }

  return result;
}

uint64_t sub_1003BEC2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PressureComponentPreprocessedDataModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003BEC90(uint64_t a1)
{
  v2 = type metadata accessor for PressureComponentPreprocessedDataModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003BECEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PressureTrend();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PressureComponentPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003BEE10()
{
  result = qword_100CB3960;
  if (!qword_100CB3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3960);
  }

  return result;
}

unint64_t sub_1003BEE68()
{
  result = qword_100CB3968;
  if (!qword_100CB3968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3968);
  }

  return result;
}

unint64_t sub_1003BEEC0()
{
  result = qword_100CB3970;
  if (!qword_100CB3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3970);
  }

  return result;
}

void sub_1003BEF14()
{
  v1 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_initialURL;
  v2 = type metadata accessor for URL();
  sub_10001B350(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_safariViewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1003BEFDC(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t sub_1003BF078()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_10022C350(&unk_100CB3AA0);
    Binding.wrappedValue.setter();
  }

  return result;
}

void sub_1003BF134()
{
  sub_10022C350(&unk_100CB3AA0);
  Binding.wrappedValue.setter();
  v1 = *(v0 + OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_safariViewController);
  *(v0 + OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_safariViewController) = 0;
}

unint64_t sub_1003BF2FC()
{
  result = qword_100CB3AB8;
  if (!qword_100CB3AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB3AB8);
  }

  return result;
}

uint64_t sub_1003BF368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009C3C8(&unk_100CB3C50);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003BF3E8()
{
  sub_10009C3C8(&unk_100CB3C50);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1003BF45C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___continueUserActivityHandlerManager;
  swift_beginAccess();
  sub_1000955E0(v1 + v3, &v7, &qword_100CB3D70);
  if (v8)
  {
    return sub_100013188(&v7, a1);
  }

  sub_1000180EC(&v7, &qword_100CB3D70);
  sub_1000A677C(&v7);
  sub_1000161C0(&v7, v8);
  sub_10022C350(&qword_100CB3D78);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_100013188(&v5, a1);
    sub_100006F14(&v7);
    sub_100035B30(a1, &v7);
    swift_beginAccess();
    sub_100035B94(&v7, v1 + v3, &qword_100CB3D70);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BF5AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___stateManager;
  swift_beginAccess();
  sub_1000955E0(v1 + v3, &v7, &qword_100CB3D60);
  if (v8)
  {
    return sub_100013188(&v7, a1);
  }

  sub_1000180EC(&v7, &qword_100CB3D60);
  sub_1000A677C(&v7);
  sub_1000161C0(&v7, v8);
  sub_10022C350(&qword_100CB3D68);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_100013188(&v5, a1);
    sub_100006F14(&v7);
    sub_100035B30(a1, &v7);
    swift_beginAccess();
    sub_100035B94(&v7, v1 + v3, &qword_100CB3D60);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BF6FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___windowFocusManager;
  swift_beginAccess();
  sub_1000955E0(v1 + v3, &v7, &unk_100CB3D50);
  if (v8)
  {
    return sub_100013188(&v7, a1);
  }

  sub_1000180EC(&v7, &unk_100CB3D50);
  sub_1000A677C(&v7);
  sub_1000161C0(&v7, v8);
  sub_10022C350(&qword_100CAF430);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_100013188(&v5, a1);
    sub_100006F14(&v7);
    sub_100035B30(a1, &v7);
    swift_beginAccess();
    sub_100035B94(&v7, v1 + v3, &unk_100CB3D50);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BF84C(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = a1;
    sub_1003BF6FC(v9);
    v5 = v10;
    v6 = v11;
    sub_1000161C0(v9, v10);
    v7 = [v3 traitCollection];
    v8 = [v7 activeAppearance];

    (*(v6 + 16))(v8, v5, v6);
    return sub_100006F14(v9);
  }

  return result;
}

uint64_t sub_1003BF924(void *a1)
{
  v2 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v2);
  UIView.traitOverrides.getter();
  sub_1003C0CB0();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIView.traitOverrides.setter();
  UIView.traitOverrides.getter();
  sub_1003C0D58();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIView.traitOverrides.setter();
  [a1 safeAreaInsets];
  UIView.traitOverrides.getter();
  sub_1003C0D04();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIView.traitOverrides.setter();
  [a1 interfaceOrientation];
  UIView.traitOverrides.getter();
  sub_1003C0DAC();
  sub_1003C0E00();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIView.traitOverrides.setter();
  UIView.traitOverrides.getter();
  sub_1003ACA40();
  dispatch thunk of UIMutableTraits.subscript.setter();
  return UIView.traitOverrides.setter();
}

uint64_t sub_1003BFB70(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 windows];
    sub_10000C70C(0, &qword_100CB3D80);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (sub_100073CDC(v6))
    {
      sub_1000A7560(0, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v6 + 32);
      }

      v8 = v7;

      sub_1003BFCB4(v8, v3);

      v4 = v8;
    }

    else
    {
    }
  }

  sub_1003BF5AC(v10);
  sub_1000161C0(v10, v10[3]);
  dispatch thunk of SceneStateManagerType.didBecomeActive()();
  return sub_100006F14(v10);
}

uint64_t sub_1003BFCB4(void *a1, void *a2)
{
  v4 = type metadata accessor for UITraitOverrides();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 effectiveGeometry];
  v10 = [v9 isInteractivelyResizing];

  v21 = 0;
  Transaction.animation.setter();
  v11 = 1;
  Transaction.disablesAnimations.setter();
  if ((v10 & 1) == 0)
  {
    UIView.traitOverrides.getter();
    sub_1003ACA40();
    dispatch thunk of UIMutableTraits.subscript.getter();
    (*(v5 + 8))(v8, v4);
    v12 = v19;
    v13 = v20;
    [a1 bounds];
    v11 = v13 != v15 || v12 != v14;
  }

  LOBYTE(v19) = v11;
  sub_1003C0C40();
  v16 = Transaction.subscript.setter();
  __chkstk_darwin(v16);
  *(&v18 - 2) = a1;
  *(&v18 - 1) = a2;
  withTransaction<A>(_:_:)();
}

uint64_t sub_1003BFEC4()
{
  sub_1003BF5AC(v1);
  sub_1000161C0(v1, v1[3]);
  dispatch thunk of SceneStateManagerType.willResignActive()();
  return sub_100006F14(v1);
}

uint64_t sub_1003BFF80(uint64_t a1, void *a2)
{
  if (qword_100CA26C8 != -1)
  {
    sub_10001EAC4();
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_100019600(v3, qword_100D90AC0);
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_10000389C();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Scene is handling a user activity while entering foreground", v6, 2u);
    sub_100003884();
  }

  sub_1003BF45C(v8);
  sub_1000161C0(v8, v8[3]);
  sub_100568640(a2);
  sub_100006F14(v8);
  sub_1000A730C(&OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___sessionObserver, type metadata accessor for SessionEventsAndDataCoordinator);
  SessionEventsAndDataCoordinator.handleActivity(_:)(a2);
}

void sub_1003C0120(uint64_t a1, UIApplicationShortcutItem a2, uint64_t a3, void (**a4)(void, void))
{
  sub_1000A730C(&OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___shortcutItemHandlerManager, &type metadata accessor for ShortcutItemHandlerManager);
  LOBYTE(a2.super.isa) = ShortcutItemHandlerManager.handle(shortcutItem:)(a2);

  a4[2](a4, a2.super.isa & 1);

  _Block_release(a4);
}

void sub_1003C033C(void *a1, void *a2)
{
  v4 = v2;
  v7 = [a1 keyWindow];
  if (v7)
  {
    v8 = v7;
    v9 = [a1 effectiveGeometry];
    v10 = [v9 isInteractivelyResizing];

    v11 = [a2 isInteractivelyResizing];
    v12 = v11;
    if (v10)
    {
      if (v11)
      {
LABEL_19:
        v22 = objc_opt_self();
        v23 = swift_allocObject();
        *(v23 + 16) = v4;
        *(v23 + 24) = v8;
        *(v23 + 32) = a1;
        *(v23 + 40) = v12;
        *(v23 + 41) = v10;
        v28[4] = sub_1003C0C2C;
        v28[5] = v23;
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 1107296256;
        v28[2] = sub_1000742F0;
        v28[3] = &unk_100C538D8;
        v24 = _Block_copy(v28);
        v25 = v4;
        v26 = v8;
        v27 = a1;

        [v22 setCompletionBlock:v24];
        _Block_release(v24);

        return;
      }

      if (qword_100CA26A8 != -1)
      {
        sub_10001C0B8();
      }

      v13 = type metadata accessor for Logger();
      v14 = sub_100019600(v13, qword_100D90A60);
      v15 = static os_log_type_t.default.getter();
      if (!sub_100005A44(v15))
      {
LABEL_18:

        goto LABEL_19;
      }

      v16 = sub_10000389C();
      *v16 = 0;
      v17 = "Interactive window resize started - updating environment to reduce expensive work.";
    }

    else if (v11)
    {
      if (qword_100CA26A8 != -1)
      {
        sub_10001C0B8();
      }

      v18 = type metadata accessor for Logger();
      v14 = sub_100019600(v18, qword_100D90A60);
      v19 = static os_log_type_t.default.getter();
      if (!sub_100005A44(v19))
      {
        goto LABEL_18;
      }

      v16 = sub_10000389C();
      *v16 = 0;
      v17 = "Interactive window resize stopped - updating environment to resume expensive work.";
    }

    else
    {
      if (qword_100CA26A8 != -1)
      {
        sub_10001C0B8();
      }

      v20 = type metadata accessor for Logger();
      v14 = sub_100019600(v20, qword_100D90A60);
      v21 = static os_log_type_t.default.getter();
      if (!sub_100005A44(v21))
      {
        goto LABEL_18;
      }

      v16 = sub_10000389C();
      *v16 = 0;
      v17 = "Window geometry updated through zoom action.";
    }

    _os_log_impl(&_mh_execute_header, v14, v3, v17, v16, 2u);
    sub_100003884();
    goto LABEL_18;
  }
}

void sub_1003C05FC(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  v8 = a5 & 1;
  v9 = a4 & 1;
  sub_1003BFCB4(a2, a3);
  if (v9 != v8)
  {
    sub_1000A730C(&OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___displayMetricsMonitor, type metadata accessor for DisplayMetricsMonitor);
    if ((a5 & 1) == 0)
    {
      sub_1000A7728();
    }
  }

  if (*(a1 + OBJC_IVAR____TtC7Weather13SceneDelegate_sceneResizeMonitor))
  {

    v10 = [a3 effectiveGeometry];
    sub_1006E5008();
  }
}

void sub_1003C077C(void *a1, void *a2)
{
  v4 = type metadata accessor for UITraitOverrides();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = v46 - v8;
  v47 = a2;
  v10 = [a2 effectiveGeometry];
  [a1 bounds];
  v12 = v11;
  v14 = v13;
  v15 = [v10 isInteractivelyResizing];

  UIView.traitOverrides.getter();
  v46[1] = sub_1003C0CB0();
  dispatch thunk of UIMutableTraits.subscript.getter();
  v16 = *(v5 + 8);
  v48 = v4;
  v16(v9, v4);
  v17 = &v50;
  if (v56 < 0)
  {
    v17 = &v52;
  }

  v18 = *v17;
  v58 = v51;
  if (v56 < 0)
  {
    v19 = (*(&v51 + 1) << 8) | ((*(&v51 + 5) | (HIBYTE(v51) << 16)) << 40) | v51;
  }

  else
  {
    v19 = v49;
  }

  v57 = v53;
  if (v15)
  {
    v20 = &v57;
    if (v56 >= 0)
    {
      v20 = &v58;
    }

    LOBYTE(v15) = *v20 | 0x80;
    v21 = 1;
    v22 = v19;
    v23 = v18;
  }

  else
  {
    v21 = 0;
    v22 = v12;
    v23 = v14;
    v12 = 0;
  }

  UIView.traitOverrides.getter();
  v49 = v22;
  v50 = v23;
  v51 = v12;
  v52 = v14;
  v53 = v21;
  v54 = v19;
  v55 = v18;
  v56 = v15;
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIView.traitOverrides.setter();
  v24 = [v47 effectiveGeometry];
  v25 = [v24 isInteractivelyResizing];

  if ((v25 & 1) == 0)
  {
    [a1 safeAreaInsets];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    UIView.traitOverrides.getter();
    v49 = v27;
    v50 = v29;
    v51 = v31;
    v52 = v33;
    sub_1003C0D04();
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIView.traitOverrides.setter();
    [a1 bounds];
    v35 = v34;
    v37 = v36;
    [a1 safeAreaInsets];
    v39 = v38;
    [a1 safeAreaInsets];
    v41 = v40;
    [a1 safeAreaInsets];
    v43 = v42;
    [a1 safeAreaInsets];
    v45 = v44;
    UIView.traitOverrides.getter();
    v49 = v35;
    v50 = v37;
    v51 = v39;
    v52 = v41;
    v53 = v43;
    v54 = v45;
    sub_1003ACA40();
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIView.traitOverrides.setter();
  }
}

unint64_t sub_1003C0C40()
{
  result = qword_100CB3D38;
  if (!qword_100CB3D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3D38);
  }

  return result;
}

unint64_t sub_1003C0CB0()
{
  result = qword_100CB3D40;
  if (!qword_100CB3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3D40);
  }

  return result;
}

unint64_t sub_1003C0D04()
{
  result = qword_100CB3D48;
  if (!qword_100CB3D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3D48);
  }

  return result;
}

unint64_t sub_1003C0D58()
{
  result = qword_100CB3DA0;
  if (!qword_100CB3DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3DA0);
  }

  return result;
}

unint64_t sub_1003C0DAC()
{
  result = qword_100CB3DA8;
  if (!qword_100CB3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3DA8);
  }

  return result;
}

unint64_t sub_1003C0E00()
{
  result = qword_100CB3DB0;
  if (!qword_100CB3DB0)
  {
    type metadata accessor for UIInterfaceOrientation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3DB0);
  }

  return result;
}

uint64_t sub_1003C0E58()
{
  v1 = v0;
  v2 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for WeatherActivity();
  __chkstk_darwin(v9 - 8);
  sub_1000037D8();
  v12 = v11 - v10;
  sub_100165ECC(v1, v11 - v10);
  if (sub_100024D10(v12, 2, v2))
  {
    sub_1003C11D8(v12);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    sub_1003C1738();
    v13 = ShortDescribable.description.getter();
    (*(v4 + 8))(v8, v2);
  }

  return v13;
}

uint64_t sub_1003C0FB8()
{
  v1 = type metadata accessor for WeatherActivity();
  __chkstk_darwin(v1 - 8);
  sub_1000037D8();
  v4 = v3 - v2;
  sub_100165ECC(v0, v3 - v2);
  v5 = type metadata accessor for Location.Identifier();
  v6 = sub_100024D10(v4, 2, v5);
  if (v6)
  {
    if (v6 == 1)
    {
      return 1953720684;
    }

    else
    {
      return 0x4C746E6572727563;
    }
  }

  else
  {
    sub_1003C11D8(v4);
    return 0x636F4C6465766173;
  }
}

unint64_t sub_1003C10A0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C438A8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003C10EC(char a1)
{
  result = 0x7765695674736564;
  switch(a1)
  {
    case 1:
      result = 0x656D614E79746963;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 7627116;
      break;
    case 4:
      result = 1735290732;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1003C1180(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C43858, v2);

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

uint64_t sub_1003C11D8(uint64_t a1)
{
  v2 = type metadata accessor for WeatherActivity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003C1258@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003C10A0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003C1288@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003C10EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1003C12B4()
{
  if (!sub_100166104(v0))
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_6;
  }

  sub_100019628();
  AnyHashable.init<A>(_:)();
  sub_100879F04();

  sub_100166478(&v2);
  if (!*(&v4 + 1))
  {
LABEL_6:
    sub_1003C1574(&v3);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return sub_1003C1180(v2);
  }

  return 2;
}

uint64_t sub_1003C13B8()
{
  if (!sub_10001372C())
  {
    sub_10003C3F4();
    goto LABEL_8;
  }

  v4[0] = v1;
  v4[1] = v0;
  AnyHashable.init<A>(_:)();
  sub_100879F04();

  sub_100166478(&v3);
  if (!v4[3])
  {
LABEL_8:
    sub_1003C1574(v4);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003C14A4()
{
  if (!sub_10001372C())
  {
    v2 = 0u;
    v3 = 0u;
    goto LABEL_6;
  }

  AnyHashable.init<A>(_:)();
  sub_100879F04();

  sub_100166478(v1);
  if (!*(&v3 + 1))
  {
LABEL_6:
    sub_1003C1574(&v2);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return sub_10022F9A0(v1[0], v1[1]);
  }

  return 0;
}

uint64_t sub_1003C1574(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE2F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ActivityUserInfoKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003C16E4()
{
  result = qword_100CB3EC0;
  if (!qword_100CB3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3EC0);
  }

  return result;
}

unint64_t sub_1003C1738()
{
  result = qword_100CADBA8;
  if (!qword_100CADBA8)
  {
    type metadata accessor for Location.Identifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CADBA8);
  }

  return result;
}

void sub_1003C1790(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setTitle:v4];
}

void sub_1003C17F4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = URL.host.getter();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    Tracker.transaction(block:)();
    sub_10000536C();
  }

  else
  {
    if (qword_100CA26A0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000703C(v15, qword_100D90A48);
    (*(v4 + 16))(v8, a1, v2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      sub_100171D14(&qword_100CA5728, &type metadata accessor for URL);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v4 + 8))(v8, v2);
      v23 = sub_100078694(v20, v22, &v24);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Attempted to track provider tap but the provider URL has no host. URL=%s", v18, 0xCu);
      sub_100006F14(v19);
    }

    else
    {

      (*(v4 + 8))(v8, v2);
    }

    sub_10000536C();
  }
}

uint64_t sub_1003C1AC4()
{
  v0 = type metadata accessor for LinkType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URLData();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for LinkType.provider(_:), v0, v6);

  URLData.init(url:linkType:)();
  sub_100171D14(&qword_100CB3EC8, &type metadata accessor for URLData);
  AccessTracker.push<A>(data:traits:file:line:)();
  (*(v5 + 8))(v8, v4);
  type metadata accessor for LinkTapEvent();
  sub_100171D14(&qword_100CB3ED0, &type metadata accessor for LinkTapEvent);
  memset(v10, 0, sizeof(v10));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_1003C1574(v10);
}

void sub_1003C1D34(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v75 = type metadata accessor for TemperatureScaleData();
  sub_1000037C4();
  v73 = v3;
  v74 = *(v4 + 64);
  __chkstk_darwin(v5);
  v72 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v60 - v8;
  sub_1000038CC();
  v71 = type metadata accessor for TemperatureScale();
  sub_1000037C4();
  v79 = v9;
  __chkstk_darwin(v10);
  v70 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v78 = &v60 - v13;
  sub_1000038CC();
  v67 = type metadata accessor for ViewType();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v62 = v18 - v17;
  sub_1000038CC();
  v61 = type metadata accessor for UUID();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  type metadata accessor for ViewData();
  sub_1000037C4();
  v68 = v26;
  v69 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  v66 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v77 = &v60 - v30;
  sub_1000038CC();
  v31 = type metadata accessor for ViewAction();
  sub_1000037C4();
  v33 = v32;
  __chkstk_darwin(v34);
  v36 = &v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v60 - v38;
  v40 = *(a1 + *(type metadata accessor for ListViewModel() + 72));
  v65 = v33;
  v41 = *(v33 + 104);
  if (v40)
  {
    v42 = &enum case for ViewAction.userNavigation(_:);
  }

  else
  {
    v42 = &enum case for ViewAction.appLaunch(_:);
  }

  v43 = *v42;
  v63 = v31;
  v64 = v39;
  v41(v39, v43, v31);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v20 + 8))(v24, v61);
  (*(v15 + 104))(v62, enum case for ViewType.list(_:), v67);
  (*(v33 + 16))(v36, v39, v31);
  v44 = v77;
  ViewData.init(viewSessionID:viewType:viewAction:)();
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v45 = UnitManager.temperature.getter();

  v46 = v78;
  sub_1009D072C(v45, v78);
  v47 = v71;
  (*(v79 + 16))(v70, v46, v71);
  v48 = v80;
  TemperatureScaleData.init(temperatureScale:)();
  v49 = v68;
  v50 = v66;
  v51 = v44;
  v52 = v69;
  (*(v68 + 16))(v66, v51, v69);
  v54 = v72;
  v53 = v73;
  v55 = v75;
  (*(v73 + 16))(v72, v48, v75);
  v56 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v57 = v53;
  v58 = (v28 + *(v53 + 80) + v56) & ~*(v53 + 80);
  v59 = swift_allocObject();
  (*(v49 + 32))(v59 + v56, v50, v52);
  (*(v57 + 32))(v59 + v58, v54, v55);
  Tracker.transaction(block:)();

  (*(v57 + 8))(v80, v55);
  (*(v79 + 8))(v78, v47);
  (*(v49 + 8))(v77, v52);
  (*(v65 + 8))(v64, v63);
  sub_10000536C();
}

uint64_t sub_1003C231C()
{
  type metadata accessor for ViewData();
  sub_100171D14(&qword_100CB3EE0, &type metadata accessor for ViewData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for TemperatureScaleData();
  sub_100171D14(&qword_100CB3EE8, &type metadata accessor for TemperatureScaleData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for ListViewEvent();
  sub_100171D14(&qword_100CB3ED8, &type metadata accessor for ListViewEvent);
  return AccessTracker.time<A>(_:submitAndRestartWithSession:)();
}

uint64_t sub_1003C2484()
{
  type metadata accessor for ListViewEvent();
  sub_100171D14(&qword_100CB3ED8, &type metadata accessor for ListViewEvent);
  memset(v1, 0, sizeof(v1));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_1003C1574(v1);
}

uint64_t sub_1003C2534()
{
  type metadata accessor for ViewData();
  type metadata accessor for TemperatureScaleData();

  return sub_1003C231C();
}

uint64_t sub_1003C2608()
{
  sub_100003B08();
  v0[10] = v1;
  v0[11] = v2;
  v0[12] = type metadata accessor for MainActor();
  v0[13] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[14] = v4;
  v0[15] = v3;

  return _swift_task_switch(sub_1003C26A0, v4, v3);
}

uint64_t sub_1003C26A0()
{
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Scroll instruction", v4, 2u);
  }

  v5 = static MainActor.shared.getter();
  *(v0 + 128) = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_1003C27F0, v6, v8);
}

uint64_t sub_1003C27F0()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[3] = sub_1003C28A0;
  v2 = swift_continuation_init();
  sub_1003C2A04(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003C28A0()
{
  sub_100003B08();
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);

  return _swift_task_switch(sub_1003C29A4, v2, v1);
}

uint64_t sub_1003C29A4()
{
  sub_100003B08();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003C2A04(uint64_t a1, uint64_t (*a2)(uint64_t, double, double, double, double))
{
  v4 = objc_opt_self();
  v5 = [v4 sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v41, v42);
  dispatch thunk of WindowType.bounds.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_100006F14(v41);
  v15 = a2(v14, v7, v9, v11, v13);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + 32;
    do
    {
      sub_100035B30(v17, v41);
      v18 = v42;
      v19 = v43;
      sub_1000161C0(v41, v42);
      v20 = (*(v19 + 16))(v18, v19);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = v42;
      v28 = v43;
      sub_1000161C0(v41, v42);
      v29 = (*(v28 + 24))(v27, v28);
      v30 = v42;
      v31 = v43;
      sub_1000161C0(v41, v42);
      v32 = qword_100A46C48[(*(v31 + 8))(v30, v31)];
      v33 = objc_allocWithZone(RPTScrollViewTestParameters);
      v34 = sub_1007B9B14(v20, v22, v24, v26, v29, 0, 0, v32, 0, 0);
      v35 = [v4 sharedApplication];
      v36 = UIApplication.maybeWindow.getter();

      if (v36)
      {
        v37 = [objc_opt_self() converterFromWindow:v36];
        [v34 setConversion:v37];
      }

      sub_100006F14(v41);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 += 40;
      --v16;
    }

    while (v16);
  }

  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  v39 = objc_allocWithZone(type metadata accessor for GroupTestParameters());
  v40 = sub_1003C2EFC(_swiftEmptyArrayStorage, sub_1003C30B8, v38);
  [objc_opt_self() runTestWithParameters:v40];
}