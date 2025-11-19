__n128 sub_1008B0758()
{
  v0 = type metadata accessor for Location();
  sub_100003AE8(v0);
  sub_100049E3C();
  sub_1008A852C();
  return result;
}

uint64_t sub_1008B07E4()
{
  v2 = type metadata accessor for WeatherData(0);
  sub_100003AE8(v2);
  v3 = type metadata accessor for Location();
  sub_100003AE8(v3);
  v4 = type metadata accessor for NewsDataModel();
  sub_100003810(v4);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000FDB98;
  sub_1000A7D8C();

  return sub_1008A7838(v7, v8, v9, v10, v5, v11, v12, v13);
}

uint64_t sub_1008B098C()
{
  v0 = type metadata accessor for WeatherData(0);
  sub_100003AE8(v0);
  v1 = type metadata accessor for PreprocessedWeatherData();
  sub_100003AE8(v1);
  v2 = type metadata accessor for NewsDataModel();
  sub_100003AE8(v2);
  v3 = type metadata accessor for Location();
  sub_100003AE8(v3);
  sub_100049E3C();
  sub_1000A40A4();

  return sub_1008A7F84(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1008B0B20()
{
  sub_100071630();
  v0 = type metadata accessor for Location();
  sub_100003AE8(v0);
  v1 = sub_10001339C();
  return sub_1008A65D8(v1, v2, v3, v4);
}

uint64_t sub_1008B0BB0()
{
  sub_100071630();
  v0 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v0);
  v1 = type metadata accessor for Location();
  sub_100003AE8(v1);
  v2 = sub_1000AF69C();
  sub_100003AE8(v2);
  v3 = sub_10001339C();
  return sub_1008A9C2C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1008B0CF0()
{
  sub_100017580();
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for AppConfiguration();
  sub_100003AE8(v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + ((v4 + v6 + *(v8 + 80)) & ~*(v8 + 80));
  v13 = *(v12 + *(v9 + 64));

  return sub_1008AAA44(v0, v10, v11, v1 + v4, v12, v13);
}

void sub_1008B0DD4()
{
  sub_100017580();
  v3 = type metadata accessor for Location();
  sub_100003AE8(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  sub_1000203C4();
  v6 = type metadata accessor for OSSignpostID();
  sub_100003810(v6);
  v8 = *(v1 + v2);
  v9 = *(v1 + 16);
  v10 = v1 + ((v2 + *(v7 + 80) + 8) & ~*(v7 + 80));

  sub_1008AAB6C(v0, v9, v1 + v5, v8, v10);
}

uint64_t sub_1008B0EA4()
{
  v1 = type metadata accessor for Location();
  sub_100003AE8(v1);
  sub_100049E3C();
  v3 = *(v0 + 16);
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1008AB5CC(v3, v0 + v2, v5, v6);
}

uint64_t sub_1008B0F30()
{
  v1 = type metadata accessor for Location();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = type metadata accessor for WeatherStatisticsModel();
  sub_100003AE8(v4);
  sub_100049E3C();
  v6 = *(v0 + 16);
  v8 = *(v0 + v7);

  return sub_1008AB494(v6, v0 + v3, v0 + v5, v8);
}

uint64_t sub_1008B1014()
{
  v1 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = type metadata accessor for Location();
  sub_100003810(v6);
  v7 = sub_1000C8B74();
  v9 = *(v0 + v5);
  v10 = *(v0 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_1008AB8F4(v7, v0 + v3, v9, v10, v0 + v8);
}

void sub_1008B1104()
{
  sub_100017580();
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1000203C4();
  v5 = type metadata accessor for AppConfiguration();
  sub_100003AE8(v5);
  sub_10019258C();
  sub_1008ABFC8(v0, v7, v8, v1 + v4, v9, v10, v11, v12, v13, *(v13 + v6));
}

void sub_1008B11EC()
{
  sub_100017580();
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1000203C4();
  v5 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v5);
  sub_100049E3C();
  sub_10019258C();
  sub_1008AC0EC(v0, v7, v8, v1 + v4, v9, v10, v11, v12, v13, *(v1 + v6), *(v1 + v6 + 8));
}

uint64_t sub_1008B12DC()
{
  type metadata accessor for Location();
  sub_10000548C();
  sub_100069BF8();

  v0 = sub_1000751C4();
  v1(v0);

  sub_100036F2C();

  return swift_deallocObject();
}

uint64_t sub_1008B13B0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  sub_100049E3C();
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v7 = *&v1[v6];
  v8 = *(v1 + 4);

  return a1(v4, v5, v8, &v1[v3], v7);
}

void sub_1008B1448()
{
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_10017080C();
  v5 = (v1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v7);
  v10 = (*(v8 + 80) + v6 + 8) & ~*(v8 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = type metadata accessor for AvailableDataSets();
  sub_100003810(v12);
  sub_1008AC91C((v0 + v4), *(v0 + v1), *(v0 + v1 + 8), *(v0 + v1 + 16), *(v0 + v1 + 24), *(v0 + v5), *(v0 + v6), v0 + v10, *(v0 + v11), *(v0 + v11 + 8), v0 + ((*(v13 + 80) + v11 + 16) & ~*(v13 + 80)));
}

uint64_t sub_1008B16A0()
{

  return type metadata accessor for WeatherDataModel();
}

uint64_t sub_1008B16C0()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Domain();
  __chkstk_darwin(v7 - 8);
  sub_1000101A4();
  v8 = type metadata accessor for FeatureState();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  sub_10022C350(&qword_100CC74A0);
  (*(v10 + 104))(v14, enum case for FeatureState.default(_:), v8);
  static Domain.weatherInternal.getter();
  (*(v2 + 104))(v6, enum case for Access.protected(_:), v0);
  result = Setting<>.init(_:defaultValue:domain:access:)();
  qword_100D91230 = result;
  return result;
}

uint64_t sub_1008B1898()
{
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100006738();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000101A4();
  (*(v3 + 104))(v0, enum case for Domain.standard(_:));
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  result = sub_100005908();
  qword_100D91240 = result;
  return result;
}

uint64_t sub_1008B1A00()
{
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100006738();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000101A4();
  (*(v3 + 104))(v0, enum case for Domain.standard(_:));
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  result = sub_100005908();
  qword_100D91248 = result;
  return result;
}

uint64_t sub_1008B1B68()
{
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100006738();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000101A4();
  (*(v3 + 104))(v0, enum case for Domain.standard(_:));
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD0);
  sub_100003B6C();
  result = sub_100005908();
  qword_100D91250 = result;
  return result;
}

uint64_t sub_1008B1CD4()
{
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory____lazy_storage___locationAnimationKind, &qword_100CC3788);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory____lazy_storage___animationKind, &qword_100CE2C00);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_weatherConditionBackgroundTimeDataFactory);
  return v0;
}

uint64_t sub_1008B1D3C()
{
  sub_1008B1CD4();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for WeatherConditionBackgroundModelInputFactory.BackgroundViewType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1008B1E7C()
{
  result = qword_100CE2BF8;
  if (!qword_100CE2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2BF8);
  }

  return result;
}

void sub_1008B1ED0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v128 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v120 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v109 - v5;
  v7 = type metadata accessor for WeatherCondition();
  __chkstk_darwin(v7 - 8);
  sub_1000037D8();
  sub_100003918(v9 - v8);
  v119 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v118 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_100003918(v13 - v12);
  v14 = type metadata accessor for Condition();
  sub_1000037C4();
  v127 = v15;
  __chkstk_darwin(v16);
  sub_100003848();
  v121 = v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  sub_100003918(&v109 - v19);
  v143 = type metadata accessor for Date();
  sub_1000037C4();
  v136 = v20;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v142 = v23 - v22;
  v141 = type metadata accessor for Calendar();
  sub_1000037C4();
  v132 = v24;
  __chkstk_darwin(v25);
  sub_1000037D8();
  v140 = v27 - v26;
  v138 = sub_10022C350(&qword_100CA7008);
  sub_100003828();
  __chkstk_darwin(v28);
  v124 = &v109 - v29;
  v30 = sub_10022C350(&qword_100CA7000);
  sub_1000037C4();
  v123 = v31;
  __chkstk_darwin(v32);
  sub_100003848();
  v137 = v33;
  sub_10000386C();
  __chkstk_darwin(v34);
  v36 = &v109 - v35;
  sub_10022C350(&qword_100CAB9B0);
  sub_100003828();
  __chkstk_darwin(v37);
  sub_100003918(&v109 - v38);
  v129 = type metadata accessor for DayWeather();
  sub_1000037C4();
  v40 = v39;
  __chkstk_darwin(v41);
  sub_100003848();
  v125 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  v139 = &v109 - v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  v130 = &v109 - v46;
  sub_10022C350(&qword_100CB1288);
  sub_100003828();
  __chkstk_darwin(v47);
  v49 = &v109 - v48;
  v50 = type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v52 = v51;
  __chkstk_darwin(v53);
  sub_1000037D8();
  v56 = v55 - v54;
  sub_100727E74(a1, v49);
  if (sub_100024D10(v49, 1, v50) == 1)
  {
    sub_10003FDF4(a1, &qword_100CB1288);
    v57 = v49;
    v58 = &qword_100CB1288;
LABEL_12:
    sub_10003FDF4(v57, v58);
    v82 = 1;
    v83 = v131;
LABEL_26:
    v108 = type metadata accessor for LocationConditionData();
    sub_10001B350(v83, v82, 1, v108);
    return;
  }

  v110 = v14;
  v113 = v6;
  v115 = a1;
  v111 = v52;
  (*(v52 + 32))(v56, v49, v50);
  v112 = v56;
  WeatherDataModel.dailyForecast.getter();
  v59 = v123;
  (*(v123 + 16))(v137, v36, v30);
  sub_1008B2B34(&qword_100CA7010);
  v60 = v124;
  dispatch thunk of Sequence.makeIterator()();
  v137 = *(v138 + 36);
  v61 = sub_1008B2B34(&qword_100CA7018);
  v138 = v40 + 32;
  v133 = v136 + 1;
  v134 = (v40 + 16);
  ++v132;
  v136 = (v40 + 8);
  v62 = v129;
  v114 = v50;
  v63 = v36;
  v64 = v60;
  v65 = v125;
  v135 = v36;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v64 + v137) == v144)
    {
      sub_10003FDF4(v64, &qword_100CA7008);
      (*(v59 + 8))(v63, v30);
      v76 = 1;
      v77 = v126;
      goto LABEL_9;
    }

    v66 = dispatch thunk of Collection.subscript.read();
    v67 = v61;
    v68 = v139;
    (*v134)(v139);
    v66(&v144, 0);
    v69 = v64;
    v70 = v30;
    v71 = v67;
    dispatch thunk of Collection.formIndex(after:)();
    v72 = *v138;
    (*v138)(v65, v68, v62);
    v73 = v140;
    static Calendar.current.getter();
    v74 = v142;
    DayWeather.date.getter();
    v75 = Calendar.isDateInToday(_:)();
    (*v133)(v74, v143);
    (*v132)(v73, v141);
    if (v75)
    {
      break;
    }

    (*v136)(v65, v62);
    v30 = v70;
    v63 = v135;
    v64 = v69;
    v61 = v71;
  }

  sub_10003FDF4(v69, &qword_100CA7008);
  (*(v59 + 8))(v135, v70);
  v77 = v126;
  v72(v126, v65, v62);
  v76 = 0;
LABEL_9:
  v78 = v114;
  sub_10001B350(v77, v76, 1, v62);
  v101 = sub_100024D10(v77, 1, v62) == 1;
  v79 = v128;
  v80 = v113;
  v81 = v127;
  if (v101)
  {
    sub_10003FDF4(v115, &qword_100CB1288);
    (*(v111 + 8))(v112, v78);
    v58 = &qword_100CAB9B0;
    v57 = v77;
    goto LABEL_12;
  }

  (*v138)(v130, v77, v62);
  v84 = v116;
  v85 = v112;
  WeatherDataModel.currentWeather.getter();
  v86 = v117;
  CurrentWeather.condition.getter();
  v87 = *(v118 + 8);
  v88 = v119;
  v87(v84, v119);
  v89 = v122;
  v90 = v86;
  v91 = v85;
  v92 = v81;
  sub_1008B2B84(v90, v122);
  v93 = *(v81 + 16);
  v94 = v110;
  v93(v121, v89, v110);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.temperature.getter();
  v95 = v88;
  v96 = v120;
  v87(v84, v95);
  Measurement.value.getter();
  v98 = v97;
  v99 = *(v96 + 8);
  v99(v80, v79);
  v100 = round(v98);
  sub_1000091D0();
  if (!(v102 ^ v103 | v101))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v100 <= -2147483650.0)
  {
    goto LABEL_27;
  }

  if (v100 >= 2147483650.0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  DayWeather.highTemperature.getter();
  Measurement.value.getter();
  v105 = v104;
  v99(v80, v79);
  v106 = round(v105);
  sub_1000091D0();
  if (!(v102 ^ v103 | v101))
  {
    goto LABEL_29;
  }

  if (v106 <= -2147483650.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v106 >= 2147483650.0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  DayWeather.lowTemperature.getter();
  Measurement.value.getter();
  v99(v80, v79);
  sub_1000091D0();
  if (!(v102 ^ v103 | v101))
  {
    goto LABEL_32;
  }

  if (v107 <= -2147483650.0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v107 < 2147483650.0)
  {
    v83 = v131;
    LocationConditionData.init(locationCondition:temperature:temperatureHigh:temperatureLow:)();
    sub_10003FDF4(v115, &qword_100CB1288);
    (*(v92 + 8))(v122, v94);
    (*v136)(v130, v129);
    (*(v111 + 8))(v91, v114);
    v82 = 0;
    goto LABEL_26;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1008B2B34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CA7000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1008B2B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for Condition();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  (*(v6 + 16))(v10, a1, v4);
  v18 = (*(v6 + 88))(v10, v4);
  if (v18 == enum case for WeatherCondition.blizzard(_:))
  {
    v19 = &enum case for Condition.blizzard(_:);
LABEL_67:
    v20 = *v19;
    v21 = *(v13 + 104);
    goto LABEL_68;
  }

  if (v18 == enum case for WeatherCondition.blowingDust(_:))
  {
    v19 = &enum case for Condition.dust(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.blowingSnow(_:))
  {
    v19 = &enum case for Condition.blowingSnow(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.breezy(_:))
  {
    v19 = &enum case for Condition.breezy(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.clear(_:))
  {
    v19 = &enum case for Condition.clear(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.cloudy(_:))
  {
    v19 = &enum case for Condition.cloudy(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.drizzle(_:))
  {
    v19 = &enum case for Condition.drizzle(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.flurries(_:))
  {
    v19 = &enum case for Condition.flurries(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.foggy(_:))
  {
    v19 = &enum case for Condition.fog(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.freezingDrizzle(_:))
  {
    v19 = &enum case for Condition.freezingDrizzle(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.freezingRain(_:))
  {
    v19 = &enum case for Condition.freezingRain(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.frigid(_:))
  {
    v19 = &enum case for Condition.frigid(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.hail(_:))
  {
    v19 = &enum case for Condition.hail(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.haze(_:))
  {
    v19 = &enum case for Condition.haze(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.heavyRain(_:))
  {
    v19 = &enum case for Condition.heavyRain(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.heavySnow(_:))
  {
    v19 = &enum case for Condition.heavySnow(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.hot(_:))
  {
    v19 = &enum case for Condition.hot(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.hurricane(_:))
  {
    v19 = &enum case for Condition.hurricane(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.isolatedThunderstorms(_:))
  {
    v19 = &enum case for Condition.isolatedThunderstorms(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.mostlyClear(_:))
  {
    v19 = &enum case for Condition.mostlyClear(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.mostlyCloudy(_:))
  {
    v19 = &enum case for Condition.mostlyCloudy(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.partlyCloudy(_:))
  {
    v19 = &enum case for Condition.partlyCloudy(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.rain(_:))
  {
    v19 = &enum case for Condition.rain(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.scatteredThunderstorms(_:))
  {
    v19 = &enum case for Condition.scatteredThunderstorms(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.sleet(_:))
  {
    v19 = &enum case for Condition.sleet(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.smoky(_:))
  {
    v19 = &enum case for Condition.smoke(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.snow(_:))
  {
    v19 = &enum case for Condition.snow(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.strongStorms(_:))
  {
    v19 = &enum case for Condition.severeThunderstorm(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.sunFlurries(_:))
  {
    v19 = &enum case for Condition.snowShowers(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.sunShowers(_:))
  {
    v19 = &enum case for Condition.showers(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.thunderstorms(_:))
  {
    v19 = &enum case for Condition.thunderstorm(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.tropicalStorm(_:))
  {
    v19 = &enum case for Condition.tropicalStorm(_:);
    goto LABEL_67;
  }

  if (v18 == enum case for WeatherCondition.windy(_:))
  {
    v19 = &enum case for Condition.windy(_:);
    goto LABEL_67;
  }

  v21 = *(v13 + 104);
  if (v18 != enum case for WeatherCondition.wintryMix(_:))
  {
    v21(v17, enum case for Condition.notAvailable(_:), v11);
    (*(v6 + 8))(v10, v4);
    goto LABEL_69;
  }

  v20 = enum case for Condition.mixedRainAndSnow(_:);
LABEL_68:
  v21(v17, v20, v11);
LABEL_69:
  (*(v13 + 32))(a2, v17, v11);
  return (*(v6 + 8))(a1, v4);
}

uint64_t sub_1008B31A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1008B323C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566A24(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_severeAlert, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566BC8(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_newsArticle, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather22NoAqiSevereNewsContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v366[32])
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v367);
  if (v367[32])
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v368);
  if (v368[32])
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v369);
  if (v369[32])
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v370);
  if (v370[32])
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v371);
  if (v371[32])
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v372);
  if (v372[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v373);
  if ((v374 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v375);
    if ((v376 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v377);
      if ((v378 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v379);
        if ((v380 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v379[0], v379[1], v379[2], v379[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable();
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MonthlyAveragesChartInput()
{
  result = qword_100CE2CE8;
  if (!qword_100CE2CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008B4AD4()
{
  type metadata accessor for Calendar();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TemperatureScaleConfiguration();
      if (v2 <= 0x3F)
      {
        sub_1008B4BB8();
        if (v3 <= 0x3F)
        {
          sub_1008B4CBC();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Locale();
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

void sub_1008B4BB8()
{
  if (!qword_100CE2CF8)
  {
    type metadata accessor for MonthTemperatureStatistics();
    sub_1008B4DC0(&qword_100CD6890, &type metadata accessor for MonthTemperatureStatistics);
    sub_1008B4DC0(&qword_100CD6898, &type metadata accessor for MonthTemperatureStatistics);
    sub_1008B4DC0(&qword_100CD68A0, &type metadata accessor for MonthTemperatureStatistics);
    v0 = type metadata accessor for MonthlyWeatherStatistics();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE2CF8);
    }
  }
}

void sub_1008B4CBC()
{
  if (!qword_100CE2D00)
  {
    type metadata accessor for MonthPrecipitationStatistics();
    sub_1008B4DC0(&qword_100CD6878, &type metadata accessor for MonthPrecipitationStatistics);
    sub_1008B4DC0(&qword_100CD6880, &type metadata accessor for MonthPrecipitationStatistics);
    sub_1008B4DC0(&qword_100CD6888, &type metadata accessor for MonthPrecipitationStatistics);
    v0 = type metadata accessor for MonthlyWeatherStatistics();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE2D00);
    }
  }
}

uint64_t sub_1008B4DC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008B4E08()
{
  if ((static Calendar.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MonthlyAveragesChartInput();
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static TemperatureScaleConfiguration.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MonthTemperatureStatistics();
  sub_1008B4DC0(&qword_100CD6890, &type metadata accessor for MonthTemperatureStatistics);
  sub_100010ED8(&qword_100CD6898);
  v0 = sub_100010ED8(&qword_100CD68A0);
  if ((sub_10001D0C8(v0) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MonthPrecipitationStatistics();
  sub_1008B4DC0(&qword_100CD6878, &type metadata accessor for MonthPrecipitationStatistics);
  sub_100010ED8(&qword_100CD6880);
  v1 = sub_100010ED8(&qword_100CD6888);
  if ((sub_10001D0C8(v1) & 1) == 0)
  {
    return 0;
  }

  return static Locale.== infix(_:_:)();
}

uint64_t type metadata accessor for DetailChartsViewModel()
{
  result = qword_100CE2D98;
  if (!qword_100CE2D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008B5060()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1008B50E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1008B50E4()
{
  if (!qword_100CE2DA8)
  {
    type metadata accessor for DetailChartViewModel();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE2DA8);
    }
  }
}

void sub_1008B513C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (static Date.== infix(_:_:)())
  {
    v28 = *(type metadata accessor for DetailChartsViewModel() + 20);
    v29 = *(a1 + v28);
    v30 = *(a2 + v28);

    sub_1009EBD44(v29, v30, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_1008B51D4(uint64_t a1, uint64_t a2)
{
  if ((sub_10074757C(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PressureComponentViewModel();
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

uint64_t sub_1008B52C0()
{
  v1 = type metadata accessor for ChartDarkeningScrim();
  sub_1008B9FA8(&unk_100CE3010, &type metadata accessor for ChartDarkeningScrim);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(*(v1 - 8) + 8))(v0, v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_1008B9FA8(&qword_100CAC3F0, &type metadata accessor for ChartDarkeningScrim);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_1008B53E0(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v29 = sub_10022C350(&unk_100CE3020);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100003848();
  v30 = v5;
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = *(v11 + 16);
  v28 = v2;
  v18(v15, v2, v9);
  v26 = sub_1008B9FA8(&qword_100CB9BD0, &type metadata accessor for PredictedLocationsNotificationSubscription.Kind);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v19 = v29;
  sub_1008B9FA8(&qword_100CE3030, &type metadata accessor for PredictedLocationsNotificationSubscription.Kind);
  v27 = a2;
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v19 + 48);
  *v8 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v11 + 32))(&v8[v21], v17, v9);
  }

  else
  {
    (*(v11 + 8))(v17, v9);
    v22 = v27;
    v18(&v8[v21], v27, v9);
    v18(v15, v22, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v23 = v30;
  sub_1008B9F38(v8, v30);
  v24 = *v23;
  (*(v11 + 32))(v31, &v23[*(v19 + 48)], v9);
  return v24;
}

void sub_1008B5770()
{
  swift_getObjectType();

  ApplicationStateMonitor.applicationDidEnterBackground()();
}

void sub_1008B57AC(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void))
{
  v226 = a4;
  v6 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v6 - 8);
  v204 = &v193 - v7;
  v203 = type metadata accessor for Location.Identifier();
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v201 = &v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for LocationsState();
  __chkstk_darwin(v200);
  v199 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for LocationModel();
  v198 = *(v207 - 8);
  __chkstk_darwin(v207);
  v197 = &v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CA6890);
  __chkstk_darwin(v11 - 8);
  v209 = &v193 - v12;
  v208 = type metadata accessor for SavedLocation();
  __chkstk_darwin(v208);
  v196 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v206 = &v193 - v15;
  v16 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v16 - 8);
  v210 = &v193 - v17;
  v212 = type metadata accessor for Location();
  v211 = *(v212 - 8);
  __chkstk_darwin(v212);
  v217 = &v193 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v19 - 8);
  v213 = &v193 - v20;
  v218 = type metadata accessor for TimeZone();
  v216 = *(v218 - 8);
  __chkstk_darwin(v218);
  v214 = &v193 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v215 = &v193 - v23;
  v222 = type metadata accessor for MainAction();
  __chkstk_darwin(v222);
  v25 = &v193 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for NotificationLocation();
  __chkstk_darwin(v224);
  v221 = &v193 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&unk_100CE2F30);
  __chkstk_darwin(v27 - 8);
  v223 = &v193 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v193 - v30;
  v32 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v32 - 8);
  v205 = &v193 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v193 - v35;
  if (qword_100CA26F0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_10000703C(v37, qword_100D90B38);
  v39 = a2;
  v225 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v219 = v25;
    v220 = a3;
    v44 = v36;
    v45 = v31;
    v46 = v43;
    *v42 = 138543362;
    v47 = [v39 notification];
    v48 = [v47 request];

    v49 = [v48 content];
    *(v42 + 4) = v49;
    *v46 = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "Received notification with content: %{public}@", v42, 0xCu);
    sub_1000180EC(v46, &qword_100CBE0F8);
    v31 = v45;
    v36 = v44;
    v25 = v219;
    a3 = v220;
  }

  v50 = [v39 notification];
  v51 = [v50 request];

  v52 = [v51 content];
  v53 = [v52 userInfo];

  v54 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = sub_1008B913C(v54);

  if (v55)
  {
    sub_100879D00();
    if (*(&v228 + 1))
    {
      v56 = v39;
      if (swift_dynamicCast())
      {
        v58 = v230;
        v57 = v231;
        sub_1008B93F4(v55, v36);
        v195 = v58;
        sub_1008B94B8(v58, v57, v39, v31);
        v59 = v223;
        sub_1005C1F54(v31, v223, &unk_100CE2F30);
        if (sub_100024D10(v59, 1, v224) != 1)
        {

          v93 = v221;
          sub_10003D708(v59, v221, type metadata accessor for NotificationLocation);
          v94 = *(a3 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
          v95 = *(sub_10022C350(&qword_100CB1AC0) + 48);
          sub_1008B9EDC(v93, v25, type metadata accessor for NotificationLocation);
          sub_1005C1F54(v36, &v25[v95], &qword_100CB3AB0);
          type metadata accessor for NotificationsAction();
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v229 = 0;
          v227 = 0u;
          v228 = 0u;
          sub_10004F034(v25, &v227, v94);
          sub_1000180EC(&v227, &unk_100CD81B0);
          sub_10004FCA8(v25, type metadata accessor for MainAction);
          sub_10004FCA8(v93, type metadata accessor for NotificationLocation);
          v60 = v226;
LABEL_30:
          v60[2](v60);
          v96 = v31;
LABEL_41:
          sub_1000180EC(v96, &unk_100CE2F30);
          sub_1000180EC(v36, &qword_100CB3AB0);
          v92 = v60;
LABEL_42:
          _Block_release(v92);
          return;
        }

        sub_1000180EC(v59, &unk_100CE2F30);
        sub_100879D00();
        v194 = v31;
        if (*(&v228 + 1))
        {
          if (swift_dynamicCast())
          {
            v219 = v25;
            v220 = a3;
            v223 = v36;
            v60 = v226;
            sub_100879D00();
            if (*(&v228 + 1))
            {
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_36;
              }

              sub_100879D00();
              if (*(&v228 + 1))
              {
                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_36;
                }

                sub_100879D00();
                if (*(&v228 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v61 = v213;
                    TimeZone.init(identifier:)();

                    v62 = v218;
                    if (sub_100024D10(v61, 1, v218) == 1)
                    {

                      v63 = &qword_100CACE08;
                      v64 = v61;
LABEL_35:
                      sub_1000180EC(v64, v63);
LABEL_37:
                      v36 = v223;
                      goto LABEL_38;
                    }

                    v109 = v216;
                    v110 = v61;
                    v111 = v215;
                    (*(v216 + 32))(v215, v110, v62);
                    (*(v109 + 16))(v214, v111, v62);
                    v112 = type metadata accessor for Date();
                    sub_10001B350(v210, 1, 1, v112);

                    v221 = v57;
                    Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
                    v113 = (v220 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder);
                    sub_1000161C0((v220 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder), *(v220 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder + 24));
                    Location.coordinate.getter();
                    sub_100589768();
                    if (v114)
                    {

                      v115 = v39;
                      v116 = v221;

                      v117 = Logger.logObject.getter();
                      v118 = static os_log_type_t.default.getter();

                      if (os_log_type_enabled(v117, v118))
                      {
                        v119 = swift_slowAlloc();
                        *&v227 = swift_slowAlloc();
                        *v119 = 141558531;
                        *(v119 + 4) = 1752392040;
                        *(v119 + 12) = 2081;
                        v120 = sub_100078694(v195, v116, &v227);

                        *(v119 + 14) = v120;
                        *(v119 + 22) = 2082;
                        v121 = [v115 notification];
                        v122 = [v121 request];

                        v123 = [v122 identifier];
                        v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v126 = v125;

                        v127 = sub_100078694(v124, v126, &v227);

                        *(v119 + 24) = v127;
                        _os_log_impl(&_mh_execute_header, v117, v118, "Dispatching action to route to current location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s", v119, 0x20u);
                        swift_arrayDestroy();
                      }

                      else
                      {
                      }

                      v36 = v223;
                      v131 = *(v220 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
                      v132 = *(sub_10022C350(&qword_100CB1AC0) + 48);
                      v133 = v219;
                      swift_storeEnumTagMultiPayload();
                      sub_1005C1F54(v36, v133 + v132, &qword_100CB3AB0);
                      type metadata accessor for NotificationsAction();
                      swift_storeEnumTagMultiPayload();
                      swift_storeEnumTagMultiPayload();
                      v229 = 0;
                      v227 = 0u;
                      v228 = 0u;
                      sub_10004F034(v133, &v227, v131);
                      sub_1000180EC(&v227, &unk_100CD81B0);
                      v134 = type metadata accessor for MainAction;
                      v135 = v133;
LABEL_50:
                      sub_10004FCA8(v135, v134);
                      (*(v211 + 8))(v217, v212);
                      (*(v216 + 8))(v215, v218);
                      v31 = v194;
                      goto LABEL_30;
                    }

                    sub_1000161C0(v113, v113[3]);
                    Location.coordinate.getter();
                    v128 = v209;
                    sub_1001A34D0();

                    if (sub_100024D10(v128, 1, v208) == 1)
                    {
                      v129 = &qword_100CA6890;
                      v130 = v128;
                    }

                    else
                    {
                      v136 = v206;
                      sub_10003D708(v128, v206, &type metadata accessor for SavedLocation);
                      v137 = sub_1000668DC();
                      v138 = v199;
                      sub_1008B9EDC(v137 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v199, type metadata accessor for LocationsState);

                      v139 = *(v138 + *(v200 + 40));

                      sub_10004FCA8(v138, type metadata accessor for LocationsState);
                      v140 = v201;
                      SavedLocation.identifier.getter();
                      v141 = Location.Identifier.id.getter();
                      v143 = v142;
                      (*(v202 + 8))(v140, v203);
                      v144 = v204;
                      sub_100879FB8(v141, v143, v139);

                      v145 = v207;
                      if (sub_100024D10(v144, 1, v207) != 1)
                      {

                        (*(v198 + 32))(v197, v144, v145);
                        sub_1008B9EDC(v136, v196, &type metadata accessor for SavedLocation);
                        v171 = v39;
                        v172 = Logger.logObject.getter();
                        v173 = static os_log_type_t.default.getter();

                        if (os_log_type_enabled(v172, v173))
                        {
                          v174 = swift_slowAlloc();
                          *&v227 = swift_slowAlloc();
                          *v174 = 141558531;
                          *(v174 + 4) = 1752392040;
                          *(v174 + 12) = 2081;
                          v175 = v196;
                          v176 = SavedLocation.id.getter();
                          v178 = v177;
                          sub_10004FCA8(v175, &type metadata accessor for SavedLocation);
                          v179 = sub_100078694(v176, v178, &v227);

                          *(v174 + 14) = v179;
                          *(v174 + 22) = 2082;
                          v180 = [v171 notification];
                          v181 = [v180 request];

                          v182 = [v181 identifier];
                          v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v185 = v184;

                          v186 = sub_100078694(v183, v185, &v227);

                          *(v174 + 24) = v186;
                          _os_log_impl(&_mh_execute_header, v172, v173, "Dispatching action to route to location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s", v174, 0x20u);
                          swift_arrayDestroy();
                        }

                        else
                        {

                          sub_10004FCA8(v196, &type metadata accessor for SavedLocation);
                        }

                        v187 = *(v220 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
                        v188 = *(sub_10022C350(&qword_100CB1AC0) + 48);
                        v189 = v198;
                        v190 = v219;
                        v191 = v197;
                        v192 = v207;
                        (*(v198 + 16))(v219, v197, v207);
                        swift_storeEnumTagMultiPayload();
                        v36 = v223;
                        sub_1005C1F54(v223, v190 + v188, &qword_100CB3AB0);
                        type metadata accessor for NotificationsAction();
                        swift_storeEnumTagMultiPayload();
                        swift_storeEnumTagMultiPayload();
                        v229 = 0;
                        v227 = 0u;
                        v228 = 0u;
                        sub_10004F034(v190, &v227, v187);
                        sub_1000180EC(&v227, &unk_100CD81B0);
                        sub_10004FCA8(v190, type metadata accessor for MainAction);
                        (*(v189 + 8))(v191, v192);
                        v134 = &type metadata accessor for SavedLocation;
                        v135 = v206;
                        goto LABEL_50;
                      }

                      sub_10004FCA8(v136, &type metadata accessor for SavedLocation);
                      v129 = &unk_100CE2F20;
                      v130 = v144;
                    }

                    sub_1000180EC(v130, v129);
                    sub_100879D00();

                    if (*(&v228 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v146 = v230;
LABEL_58:
                        v147 = v39;

                        v148 = Logger.logObject.getter();
                        v149 = static os_log_type_t.default.getter();

                        if (os_log_type_enabled(v148, v149))
                        {
                          v150 = swift_slowAlloc();
                          *&v227 = swift_slowAlloc();
                          *v150 = 141558787;
                          *(v150 + 4) = 1752392040;
                          *(v150 + 12) = 2081;
                          v151 = sub_100078694(v195, v57, &v227);

                          *(v150 + 14) = v151;
                          *(v150 + 22) = 2082;
                          v152 = [v147 notification];
                          v153 = [v152 request];

                          v154 = [v153 identifier];
                          v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v157 = v156;

                          v158 = sub_100078694(v155, v157, &v227);

                          *(v150 + 24) = v158;
                          *(v150 + 32) = 1024;
                          v159 = v146;
                          *(v150 + 34) = v146;
                          _os_log_impl(&_mh_execute_header, v148, v149, "Dispatching action to route to preview location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s, isPredictedLocation=%{BOOL}d", v150, 0x26u);
                          swift_arrayDestroy();
                        }

                        else
                        {

                          v159 = v146;
                        }

                        v160 = v217;
                        v162 = v219;
                        v161 = v220;
                        v163 = v205;
                        if (v159)
                        {
                          v164 = type metadata accessor for URL();
                          sub_10001B350(v163, 1, 1, v164);
                        }

                        else
                        {
                          sub_1005C1F54(v223, v205, &qword_100CB3AB0);
                        }

                        v165 = *(v161 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
                        v166 = *(sub_10022C350(&qword_100CB1AC0) + 48);
                        v167 = *(sub_10022C350(&unk_100CE2F60) + 48);
                        v168 = v211;
                        v169 = v160;
                        v170 = v212;
                        (*(v211 + 16))(v162, v169, v212);
                        *(v162 + v167) = v159;
                        swift_storeEnumTagMultiPayload();
                        sub_1005C1F54(v163, v162 + v166, &qword_100CB3AB0);
                        type metadata accessor for NotificationsAction();
                        swift_storeEnumTagMultiPayload();
                        swift_storeEnumTagMultiPayload();
                        v229 = 0;
                        v227 = 0u;
                        v228 = 0u;
                        sub_10004F034(v162, &v227, v165);
                        sub_1000180EC(&v227, &unk_100CD81B0);
                        sub_10004FCA8(v162, type metadata accessor for MainAction);
                        sub_1000180EC(v163, &qword_100CB3AB0);
                        (*(v168 + 8))(v217, v170);
                        (*(v216 + 8))(v215, v218);
                        v31 = v194;
                        v36 = v223;
                        goto LABEL_30;
                      }
                    }

                    else
                    {
                      sub_1000180EC(&v227, &qword_100CE2F40);
                    }

                    v146 = 0;
                    goto LABEL_58;
                  }

LABEL_36:

                  goto LABEL_37;
                }
              }
            }

            v63 = &qword_100CE2F40;
            v64 = &v227;
            goto LABEL_35;
          }
        }

        else
        {

          sub_1000180EC(&v227, &qword_100CE2F40);
        }

        v60 = v226;
LABEL_38:
        v97 = v39;
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          *&v227 = v101;
          *v100 = 136446210;
          v102 = [v97 notification];
          v103 = [v102 request];

          v104 = [v103 identifier];
          v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v107 = v106;

          v108 = sub_100078694(v105, v107, &v227);

          *(v100 + 4) = v108;
          _os_log_impl(&_mh_execute_header, v98, v99, "Unable to find saved location or preview location for notification: %{public}s", v100, 0xCu);
          sub_100006F14(v101);
        }

        v60[2](v60);
        v96 = v194;
        goto LABEL_41;
      }
    }

    else
    {

      sub_1000180EC(&v227, &qword_100CE2F40);
      v56 = v39;
    }

    v78 = v56;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    v81 = os_log_type_enabled(v79, v80);
    v82 = v226;
    if (v81)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v227 = v84;
      *v83 = 136446210;
      v85 = [v78 notification];
      v86 = [v85 request];

      v87 = [v86 identifier];
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;

      v91 = sub_100078694(v88, v90, &v227);

      *(v83 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v79, v80, "Missing location identifier for notification: %{public}s", v83, 0xCu);
      sub_100006F14(v84);
    }

    v82[2](v82);
    v92 = v82;
    goto LABEL_42;
  }

  v65 = v39;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v227 = v69;
    *v68 = 136446210;
    v70 = [v65 notification];
    v71 = [v70 request];

    v72 = [v71 identifier];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    v76 = sub_100078694(v73, v75, &v227);

    *(v68 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v66, v67, "Received unexpected notification user info values for notification: %{public}s", v68, 0xCu);
    sub_100006F14(v69);
  }

  v77 = v226;
  v226[2](v226);

  _Block_release(v77);
}

uint64_t UserNotificationMonitor.userNotificationCenter(_:didReceive:withCompletionHandler:)(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v233 = a4;
  v8 = sub_10022C350(&unk_100CE2F20);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  sub_100003918(v10);
  v209 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v208 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  sub_100003918(v14 - v13);
  v206 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  sub_100003918(v17 - v16);
  v213 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v204 = v18;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v203 = v21 - v20;
  v22 = sub_10022C350(&qword_100CA6890);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  sub_1000039BC();
  sub_100003918(v24);
  v214 = type metadata accessor for SavedLocation();
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v26);
  v212 = v201 - v27;
  v28 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v28);
  sub_100003828();
  __chkstk_darwin(v29);
  sub_1000039BC();
  sub_100003918(v30);
  v219 = type metadata accessor for Location();
  sub_1000037C4();
  v218 = v31;
  __chkstk_darwin(v32);
  sub_1000037D8();
  v220 = v34 - v33;
  v35 = sub_10022C350(&qword_100CACE08);
  sub_100003810(v35);
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  sub_100003918(v37);
  v225 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v223 = v38;
  __chkstk_darwin(v39);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v40);
  v222 = v201 - v41;
  v228 = type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v42);
  sub_1000037D8();
  v45 = v44 - v43;
  v230 = type metadata accessor for NotificationLocation();
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_1000037D8();
  v227 = (v48 - v47);
  v49 = sub_10022C350(&unk_100CE2F30);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_100003848();
  v229 = v51;
  __chkstk_darwin(v52);
  v54 = v201 - v53;
  v55 = sub_10022C350(&qword_100CB3AB0);
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v57);
  v59 = (v201 - v58);
  if (qword_100CA26F0 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  v61 = sub_10000703C(v60, qword_100D90B38);
  v62 = a2;
  v232 = v61;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = sub_100018264();
    v224 = v5;
    v226 = v45;
    v66 = v59;
    v67 = v54;
    v68 = v65;
    v69 = v62;
    v70 = swift_slowAlloc();
    *v68 = 138543362;
    v71 = a3;
    v72 = [v69 notification];
    v73 = [v72 request];

    v74 = [v73 content];
    *(v68 + 4) = v74;
    *v70 = v74;
    a3 = v71;
    _os_log_impl(&_mh_execute_header, v63, v64, "Received notification with content: %{public}@", v68, 0xCu);
    sub_1000180EC(v70, &qword_100CBE0F8);
    v62 = v69;
    sub_100003884();
    v54 = v67;
    v59 = v66;
    v45 = v226;
    v5 = v224;
    sub_100003884();
  }

  v75 = [v62 notification];
  v76 = v62;
  v77 = [v75 request];

  v78 = [v77 content];
  v79 = [v78 userInfo];

  v80 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = sub_1008B913C(v80);

  if (!v81)
  {
    v91 = v76;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v92, v93))
    {
      sub_100018264();
      v94 = sub_10000C940();
      sub_100017F9C(v94);
      *v79 = 136446210;
      v95 = [v91 notification];
      v96 = [v95 request];

      v97 = [v96 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100016DAC();

      sub_1000751D4();
      sub_100020C58();
      *(v79 + 1) = v97;
      v100 = "Received unexpected notification user info values for notification: %{public}s";
LABEL_25:
      sub_1000318C8(&_mh_execute_header, v98, v99, v100);
      sub_100006F14(a3);
      a3 = v59;
      sub_100003884();
      sub_100007E54();
    }

LABEL_26:

    return a3();
  }

  v231 = v76;
  sub_100879D00();
  if (!v235)
  {

    sub_1000180EC(&v234, &qword_100CE2F40);
    v83 = v231;
    goto LABEL_23;
  }

  v82 = swift_dynamicCast();
  v83 = v231;
  if ((v82 & 1) == 0)
  {

LABEL_23:
    v101 = v83;
    v92 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v92, v102))
    {
      sub_100018264();
      v103 = sub_10000C940();
      sub_100017F9C(v103);
      *v83 = 136446210;
      v104 = [v101 notification];
      v105 = [v104 request];

      v106 = [v105 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100016DAC();

      sub_1000751D4();
      sub_100020C58();
      *(v83 + 1) = v106;
      v100 = "Missing location identifier for notification: %{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v85 = v236;
  v84 = v237;
  sub_1008B93F4(v81, v59);
  v201[1] = v85;
  sub_1008B94B8(v85, v84, v83, v54);
  v86 = v229;
  sub_1005C1F54(v54, v229, &unk_100CE2F30);
  if (sub_100024D10(v86, 1, v230) == 1)
  {
    sub_1000180EC(v86, &unk_100CE2F30);
    sub_100879D00();
    v201[0] = v54;
    if (v235)
    {
      if (swift_dynamicCast())
      {
        v226 = v45;
        v229 = v59;
        sub_10000EE68();
        sub_100879D00();
        if (v235)
        {
          if ((sub_100049E4C() & 1) == 0)
          {
            goto LABEL_33;
          }

          sub_10000EE68();
          sub_100879D00();
          if (v235)
          {
            if ((sub_100049E4C() & 1) == 0)
            {
              goto LABEL_33;
            }

            sub_10000EE68();
            sub_100879D00();
            if (v235)
            {
              if (sub_100049E4C())
              {
                v87 = v221;
                TimeZone.init(identifier:)();

                v88 = v225;
                if (sub_100024D10(v87, 1, v225) == 1)
                {

                  v89 = &qword_100CACE08;
                  v90 = v87;
LABEL_32:
                  sub_1000180EC(v90, v89);
LABEL_34:
                  v59 = v229;
                  goto LABEL_35;
                }

                v227 = a3;
                v125 = v222;
                v124 = v223;
                (*(v223 + 32))(v222, v87, v88);
                (*(v124 + 16))(v216, v125, v88);
                v126 = type metadata accessor for Date();
                sub_10001B350(v217, 1, 1, v126);

                v127 = v220;
                Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
                v224 = v5;
                v128 = v5 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder;
                sub_1000161C0((v224 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder), *(v224 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_locationFinder + 24));
                Location.coordinate.getter();
                sub_100589768();
                if (v129)
                {

                  v130 = v231;

                  v131 = Logger.logObject.getter();
                  v132 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v131, v132))
                  {
                    swift_slowAlloc();
                    v234 = sub_1000248B0();
                    sub_10000CB2C(7.2226e-34);
                    v133 = sub_10001882C();

                    *(v128 + 14) = v133;
                    *(v128 + 22) = 2082;
                    v134 = [v130 notification];
                    v135 = [v134 request];

                    v136 = [v135 identifier];
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    sub_100016DAC();

                    v127 = v220;
                    sub_100078694(v135, v81, &v234);
                    sub_100020C58();
                    *(v128 + 24) = v136;
                    _os_log_impl(&_mh_execute_header, v131, v132, "Dispatching action to route to current location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s", v128, 0x20u);
                    swift_arrayDestroy();
                    sub_100003884();
                    sub_100007E54();
                  }

                  else
                  {
                  }

                  v59 = v229;
                  v140 = v226;
                  v141 = *(v224 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
                  v142 = *(sub_10022C350(&qword_100CB1AC0) + 48);
                  swift_storeEnumTagMultiPayload();
                  sub_1005C1F54(v59, v140 + v142, &qword_100CB3AB0);
                  type metadata accessor for NotificationsAction();
                  swift_storeEnumTagMultiPayload();
                  sub_10001161C();
                  sub_10001997C();
                  sub_10004F034(v140, v143, v141);
                  sub_1000180EC(&v234, &unk_100CD81B0);
                  sub_10001FBB0();
                  sub_10004FCA8(v140, v144);
                  (*(v218 + 8))(v127, v219);
LABEL_46:
                  v145 = (*(v223 + 8))(v222, v225);
                  v54 = v201[0];
                  (v227)(v145);
                  goto LABEL_28;
                }

                sub_1000161C0(v128, *(v128 + 24));
                Location.coordinate.getter();
                v137 = v215;
                sub_1001A34D0();

                if (sub_100024D10(v137, 1, v214) == 1)
                {
                  v138 = &qword_100CA6890;
                  v139 = v137;
                }

                else
                {
                  v146 = v212;
                  sub_10003D708(v137, v212, &type metadata accessor for SavedLocation);
                  v147 = sub_1000668DC();
                  v148 = v205;
                  sub_1008B9EDC(v147 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v205, type metadata accessor for LocationsState);

                  v137 = *(v148 + *(v206 + 40));

                  sub_10004FCA8(v148, type metadata accessor for LocationsState);
                  v149 = v207;
                  SavedLocation.identifier.getter();
                  v150 = Location.Identifier.id.getter();
                  v152 = v151;
                  (*(v208 + 8))(v149, v209);
                  v153 = v210;
                  sub_100879FB8(v150, v152, v137);

                  v154 = v213;
                  if (sub_100024D10(v153, 1, v213) != 1)
                  {

                    (*(v204 + 32))(v203, v153, v154);
                    sub_1008B9EDC(v146, v202, &type metadata accessor for SavedLocation);
                    v178 = v231;
                    v179 = Logger.logObject.getter();
                    v180 = static os_log_type_t.default.getter();

                    if (os_log_type_enabled(v179, v180))
                    {
                      swift_slowAlloc();
                      v234 = sub_1000248B0();
                      sub_10000CB2C(7.2226e-34);
                      v181 = v202;
                      v182 = SavedLocation.id.getter();
                      v184 = v183;
                      sub_10001D0F0();
                      sub_10004FCA8(v181, v185);
                      v186 = sub_100078694(v182, v184, &v234);

                      *(v137 + 14) = v186;
                      *(v137 + 22) = 2082;
                      v187 = [v178 notification];
                      v188 = [v187 request];

                      v189 = [v188 identifier];
                      static String._unconditionallyBridgeFromObjectiveC(_:)();
                      sub_100016DAC();

                      v190 = sub_1000751D4();

                      *(v137 + 24) = v190;
                      _os_log_impl(&_mh_execute_header, v179, v180, "Dispatching action to route to location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s", v137, 0x20u);
                      swift_arrayDestroy();
                      sub_100003884();
                      sub_100007E54();
                    }

                    else
                    {

                      sub_10001D0F0();
                      sub_10004FCA8(v202, v191);
                    }

                    v192 = *(v224 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
                    v193 = *(sub_10022C350(&qword_100CB1AC0) + 48);
                    v194 = v204;
                    v195 = v226;
                    v196 = v203;
                    v197 = v213;
                    (*(v204 + 16))(v226, v203, v213);
                    swift_storeEnumTagMultiPayload();
                    v59 = v229;
                    sub_1005C1F54(v229, v195 + v193, &qword_100CB3AB0);
                    type metadata accessor for NotificationsAction();
                    swift_storeEnumTagMultiPayload();
                    sub_10001161C();
                    sub_10001997C();
                    sub_10004F034(v195, v198, v192);
                    sub_1000180EC(&v234, &unk_100CD81B0);
                    sub_10001FBB0();
                    sub_10004FCA8(v195, v199);
                    (*(v194 + 8))(v196, v197);
                    sub_10001D0F0();
                    sub_10004FCA8(v212, v200);
                    (*(v218 + 8))(v220, v219);
                    goto LABEL_46;
                  }

                  sub_10001D0F0();
                  sub_10004FCA8(v146, v155);
                  v138 = &unk_100CE2F20;
                  v139 = v153;
                }

                sub_1000180EC(v139, v138);
                sub_10000EE68();
                sub_100879D00();

                if (v235)
                {
                  if (swift_dynamicCast())
                  {
                    v156 = v236;
LABEL_54:
                    v157 = v231;

                    v158 = Logger.logObject.getter();
                    v159 = static os_log_type_t.default.getter();

                    if (os_log_type_enabled(v158, v159))
                    {
                      swift_slowAlloc();
                      v234 = sub_1000248B0();
                      sub_10000CB2C(7.2227e-34);
                      v160 = sub_10001882C();

                      *(v137 + 14) = v160;
                      *(v137 + 22) = 2082;
                      v161 = [v157 notification];
                      v162 = [v161 request];

                      v163 = [v162 identifier];
                      static String._unconditionallyBridgeFromObjectiveC(_:)();
                      sub_100016DAC();

                      sub_1000751D4();
                      sub_100020C58();
                      *(v137 + 24) = v163;
                      *(v137 + 32) = 1024;
                      v164 = v156;
                      *(v137 + 34) = v156;
                      _os_log_impl(&_mh_execute_header, v158, v159, "Dispatching action to route to preview location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s, isPredictedLocation=%{BOOL}d", v137, 0x26u);
                      swift_arrayDestroy();
                      sub_100003884();
                      sub_100007E54();
                    }

                    else
                    {

                      v164 = v156;
                    }

                    v165 = v226;
                    v166 = v224;
                    v167 = v211;
                    if (v164)
                    {
                      v168 = type metadata accessor for URL();
                      sub_10001B350(v167, 1, 1, v168);
                    }

                    else
                    {
                      sub_1005C1F54(v229, v211, &qword_100CB3AB0);
                    }

                    v169 = *(v166 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
                    v170 = *(sub_10022C350(&qword_100CB1AC0) + 48);
                    v171 = *(sub_10022C350(&unk_100CE2F60) + 48);
                    v172 = v218;
                    v173 = v220;
                    v174 = v219;
                    (*(v218 + 16))(v165, v220, v219);
                    *(v165 + v171) = v164;
                    swift_storeEnumTagMultiPayload();
                    sub_1005C1F54(v167, v165 + v170, &qword_100CB3AB0);
                    type metadata accessor for NotificationsAction();
                    swift_storeEnumTagMultiPayload();
                    sub_10001161C();
                    sub_10001997C();
                    sub_10004F034(v165, v175, v169);
                    sub_1000180EC(&v234, &unk_100CD81B0);
                    sub_10001FBB0();
                    sub_10004FCA8(v165, v176);
                    sub_1000180EC(v167, &qword_100CB3AB0);
                    (*(v172 + 8))(v173, v174);
                    v177 = (*(v223 + 8))(v222, v225);
                    v54 = v201[0];
                    v59 = v229;
                    (v227)(v177);
                    goto LABEL_28;
                  }
                }

                else
                {
                  sub_1000180EC(&v234, &qword_100CE2F40);
                }

                v156 = 0;
                goto LABEL_54;
              }

LABEL_33:

              goto LABEL_34;
            }
          }
        }

        v89 = &qword_100CE2F40;
        v90 = &v234;
        goto LABEL_32;
      }
    }

    else
    {

      sub_1000180EC(&v234, &qword_100CE2F40);
    }

LABEL_35:
    v115 = v83;
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v116, v117))
    {
      sub_100018264();
      v118 = sub_10000C940();
      sub_100017F9C(v118);
      *v83 = 136446210;
      v119 = [v115 notification];
      v120 = [v119 request];

      v121 = [v120 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100016DAC();

      sub_1000751D4();
      sub_100020C58();
      *(v83 + 1) = v121;
      sub_1000318C8(&_mh_execute_header, v122, v123, "Unable to find saved location or preview location for notification: %{public}s");
      sub_100006F14(a3);
      a3 = v59;
      sub_100003884();
      sub_100007E54();
    }

    a3();
    v114 = v201[0];
    goto LABEL_38;
  }

  v108 = v227;
  sub_10003D708(v86, v227, type metadata accessor for NotificationLocation);
  v109 = *(v5 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
  v110 = *(sub_10022C350(&qword_100CB1AC0) + 48);
  sub_1008B9EDC(v108, v45, type metadata accessor for NotificationLocation);
  sub_1005C1F54(v59, v45 + v110, &qword_100CB3AB0);
  type metadata accessor for NotificationsAction();
  swift_storeEnumTagMultiPayload();
  sub_10001161C();
  sub_10001997C();
  sub_10004F034(v45, v111, v109);
  sub_1000180EC(&v234, &unk_100CD81B0);
  sub_10001FBB0();
  sub_10004FCA8(v45, v112);
  v113 = sub_10004FCA8(v108, type metadata accessor for NotificationLocation);
  (a3)(v113);
LABEL_28:
  v114 = v54;
LABEL_38:
  sub_1000180EC(v114, &unk_100CE2F30);
  return sub_1000180EC(v59, &qword_100CB3AB0);
}

unint64_t sub_1008B913C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10022C350(&qword_100CE3040);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1001663A0(*(a1 + 48) + 40 * v10, __src);
    sub_100109514(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001663A0(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_100109514(&__dst[40], v20);
    sub_1000180EC(__dst, &qword_100CE3048);
    v21 = v18;
    sub_100166170(v20, v22);
    v11 = v21;
    sub_100166170(v22, v23);
    sub_100166170(v23, &v21);
    result = sub_100031B34();
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      sub_100006F14(v14);
      result = sub_100166170(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_100166170(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_1000180EC(__dst, &qword_100CE3048);

  return 0;
}

uint64_t sub_1008B93F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_100031B34(), (v5 & 1) != 0) && (sub_100109514(*(a1 + 56) + 32 * v4, v8), (swift_dynamicCast() & 1) != 0))
  {
    URL.init(string:)();
  }

  else
  {
    v7 = type metadata accessor for URL();
    return sub_10001B350(a2, 1, 1, v7);
  }
}

uint64_t sub_1008B94B8@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v60 = a3;
  v61 = a4;
  v6 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v6 - 8);
  v8 = &v58[-v7];
  v9 = type metadata accessor for LocationsState();
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for LocationModel();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v58[-v18];
  v20 = sub_1000668DC();
  sub_1008B9EDC(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v12, type metadata accessor for LocationsState);

  v21 = *&v12[*(v10 + 48)];

  sub_10004FCA8(v12, type metadata accessor for LocationsState);
  sub_100879FB8(a1, a2, v21);

  if (sub_100024D10(v8, 1, v13) != 1)
  {
    v28 = *(v14 + 32);
    v28(v19, v8, v13);
    if (qword_100CA26F0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000703C(v29, qword_100D90B38);
    (*(v14 + 16))(v16, v19, v13);
    v30 = v60;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63 = v60;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      sub_1008B9FA8(&qword_100CE3038, &type metadata accessor for LocationModel);
      v59 = v32;
      dispatch thunk of Identifiable.id.getter();
      (*(v14 + 8))(v16, v13);
      v34 = v28;
      v35 = sub_100078694(v62[0], v62[1], &v63);

      *(v33 + 14) = v35;
      *(v33 + 22) = 2082;
      v36 = [v30 notification];
      v37 = [v36 request];

      v38 = [v37 identifier];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_100078694(v39, v41, &v63);

      *(v33 + 24) = v42;
      v28 = v34;
      _os_log_impl(&_mh_execute_header, v31, v59, "Dispatching action to route to location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s", v33, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    v56 = v61;
    v28(v61, v19, v13);
    v55 = type metadata accessor for NotificationLocation();
    goto LABEL_20;
  }

  sub_1000180EC(v8, &unk_100CE2F20);
  if (static Location.currentLocationID.getter() == a1 && v22 == a2)
  {

    goto LABEL_13;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
LABEL_13:
    if (qword_100CA26F0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000703C(v43, qword_100D90B38);
    v44 = v60;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v47 = 141558531;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      *(v47 + 14) = sub_100078694(a1, a2, v62);
      *(v47 + 22) = 2082;
      v48 = [v44 notification];
      v49 = [v48 request];

      v50 = [v49 identifier];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_100078694(v51, v53, v62);

      *(v47 + 24) = v54;
      _os_log_impl(&_mh_execute_header, v45, v46, "Dispatching action to route to current location; notificationLocation=%{private,mask.hash}s, notificationIdentifier=%{public}s", v47, 0x20u);
      swift_arrayDestroy();
    }

    v55 = type metadata accessor for NotificationLocation();
    v56 = v61;
LABEL_20:
    swift_storeEnumTagMultiPayload();
    v26 = v56;
    v27 = 0;
    v25 = v55;
    return sub_10001B350(v26, v27, 1, v25);
  }

  v25 = type metadata accessor for NotificationLocation();
  v26 = v61;
  v27 = 1;
  return sub_10001B350(v26, v27, 1, v25);
}

void sub_1008B9C54(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  a4[2](a4, 26);

  _Block_release(a4);
}

void sub_1008B9CE0(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, v12, v13, v10);
  _Block_release(v10);
}

Swift::Void __swiftcall UserNotificationMonitor.userNotificationCenter(_:openSettingsFor:)(UNUserNotificationCenter _, UNNotification_optional openSettingsFor)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = *(v2 + OBJC_IVAR____TtC7Weather23UserNotificationMonitor_dispatcher);
  type metadata accessor for NotificationsAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v6, v9, v7);
  sub_1000180EC(v9, &unk_100CD81B0);
  sub_10001FBB0();
  sub_10004FCA8(v6, v8);
}

uint64_t sub_1008B9EDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1008B9F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CE3020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008B9FA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008BA000@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v23[1] = a2;
  v23[2] = a1;
  v4 = sub_10022C350(&qword_100CC62B8);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = type metadata accessor for AirQuality();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = (v12 - v11);
  if (qword_100CA2A00 != -1)
  {
    swift_once();
  }

  sub_10001D108();
  sub_1008BB548(v14, v15, v16);
  Configurable.setting<A>(_:)();
  if (v25 == 1)
  {
    goto LABEL_4;
  }

  if (qword_100CA29F0 != -1)
  {
    swift_once();
  }

  Configurable.setting<A>(_:)();
  if (v24 != 1)
  {
    type metadata accessor for WeatherData(0);
    WeatherDataModel.airQuality.getter();
    if (sub_100024D10(v6, 1, v7) != 1)
    {
      v22 = *(v9 + 32);
      v22(v13, v6, v7);
      v22(a3, v13, v7);
      type metadata accessor for LocationViewComponent();
      swift_storeEnumTagMultiPayload();
      sub_100006AA0();
      return sub_10001B350(v17, v18, v19, v20);
    }

    sub_100018144(v6, &qword_100CC62B8);
LABEL_4:
    type metadata accessor for LocationViewComponent();
    v17 = sub_100007E1C();
    return sub_10001B350(v17, v18, v19, v20);
  }

  return sub_1008BA2CC(a3);
}

uint64_t sub_1008BA2CC@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for Location();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_10022C350(&qword_100CC62B8);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for AirQuality();
  v34 = *(v14 - 8);
  __chkstk_darwin(v14);
  v33 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2AA8 != -1)
  {
    swift_once();
  }

  v16 = qword_100D91388;
  static Location.cupertino.getter();
  v17 = Location.id.getter();
  v19 = v18;
  (*(v2 + 8))(v4, v1);
  sub_1000864C0(v17, v19, v16);

  v20 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v7, 1, v20) == 1)
  {
    v21 = &qword_100CA37B0;
    v22 = v7;
LABEL_7:
    sub_100018144(v22, v21);
    sub_10001B350(v13, 1, 1, v14);
    goto LABEL_8;
  }

  sub_1001A0D3C();
  sub_10010603C(v7, type metadata accessor for LocationWeatherDataState);
  v23 = type metadata accessor for WeatherData(0);
  if (sub_100024D10(v10, 1, v23) == 1)
  {
    v21 = &qword_100CA3898;
    v22 = v10;
    goto LABEL_7;
  }

  WeatherDataModel.airQuality.getter();
  sub_10010603C(v10, type metadata accessor for WeatherData);
  if (sub_100024D10(v13, 1, v14) != 1)
  {
    v28 = v33;
    v29 = *(v34 + 32);
    v29(v33, v13, v14);
    v30 = v35;
    v29(v35, v28, v14);
    v31 = type metadata accessor for LocationViewComponent();
    swift_storeEnumTagMultiPayload();
    v25 = v30;
    v26 = 0;
    v24 = v31;
    return sub_10001B350(v25, v26, 1, v24);
  }

LABEL_8:
  sub_100018144(v13, &qword_100CC62B8);
  v24 = type metadata accessor for LocationViewComponent();
  v25 = v35;
  v26 = 1;
  return sub_10001B350(v25, v26, 1, v24);
}

uint64_t sub_1008BA700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_10022C350(&qword_100CB0BA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_10022C350(&qword_100CAE8F0);
  sub_1000037C4();
  v38 = v7;
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for PrecipitationRelevancyWindow();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = (v16 - v15);
  if (qword_100CA2A08 != -1)
  {
    swift_once();
  }

  sub_10001D108();
  sub_1008BB548(v18, v19, v20);
  Configurable.setting<A>(_:)();
  if (v40 == 1)
  {
    v21 = v39;
    sub_1008BAAF8(a1, v39);
    v22 = type metadata accessor for LocationViewComponent();
    v23 = v21;
    v24 = 0;
LABEL_14:
    v33 = 1;
    return sub_10001B350(v23, v24, v33, v22);
  }

  if (*(a1 + *(type metadata accessor for NextHourPrecipitationComponentParameters() + 28)) == 1)
  {
    *v17 = vdupq_n_s64(0x40AC200000000000uLL);
    v25 = &enum case for PrecipitationRelevancyWindow.window(_:);
  }

  else
  {
    v25 = &enum case for PrecipitationRelevancyWindow.default(_:);
  }

  v26 = v38;
  (*(v13 + 104))(v17, *v25, v11);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.minuteForecast.getter();
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    v27 = sub_100010EF0();
    v28(v27);
    sub_100018144(v5, &qword_100CB0BA0);
LABEL_13:
    v22 = type metadata accessor for LocationViewComponent();
    v23 = v39;
    v24 = 1;
    goto LABEL_14;
  }

  v37 = *(v26 + 32);
  v38 = v6;
  v37(v10, v5);
  if ((Forecast<>.isRelevant(in:)() & 1) == 0)
  {
    (*(v26 + 8))(v10, v38);
    v34 = sub_100010EF0();
    v35(v34);
    goto LABEL_13;
  }

  v29 = v39;
  WeatherDataModel.currentWeather.getter();
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent();
  static WeatherClock.date.getter();
  v31 = sub_100010EF0();
  v32(v31);
  (v37)(v29 + *(HourPrecipitationComponent + 24), v10, v38);
  type metadata accessor for LocationViewComponent();
  swift_storeEnumTagMultiPayload();
  sub_100006AA0();
  return sub_10001B350(v23, v24, v33, v22);
}

uint64_t sub_1008BAAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v66 = a2;
  v2 = sub_10022C350(&qword_100CAE8F0);
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v64 = &v47 - v3;
  v4 = type metadata accessor for Location();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v47 - v7;
  v8 = type metadata accessor for WeatherMetadata();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v61 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v47 - v11;
  v12 = type metadata accessor for ApparentPrecipitationIntensityCategory();
  v54 = *(v12 - 8);
  v55 = v12;
  __chkstk_darwin(v12);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ApparentPrecipitationIntensity();
  __chkstk_darwin(v14 - 8);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CACCC8);
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for Precipitation();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Date();
  v21 = *(v50 - 8);
  __chkstk_darwin(v50);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v49 = &v47 - v25;
  __chkstk_darwin(v26);
  v53 = type metadata accessor for MinuteWeather();
  v69 = *(v53 - 8);
  __chkstk_darwin(v53);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WeatherClock.date.getter();
  (*(v18 + 104))(v20, enum case for Precipitation.rain(_:), v17);
  v29 = [objc_opt_self() metersPerSecond];
  sub_10031AE5C();
  Measurement.init(value:unit:)();
  (*(v54 + 104))(v52, enum case for ApparentPrecipitationIntensityCategory.light(_:), v55);
  ApparentPrecipitationIntensity.init(value:category:)();
  v48 = v28;
  MinuteWeather.init(date:precipitation:precipitationChance:precipitationIntensity:apparentPrecipitationIntensity:)();
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  Date.addingTimeInterval(_:)();
  (*(v21 + 8))(v23, v50);
  v30 = v56;
  static Location.cupertino.getter();
  Location.coordinate.getter();
  v31 = *(v59 + 8);
  v32 = v30;
  v33 = v60;
  v31(v32, v60);
  v34 = v58;
  static Location.cupertino.getter();
  Location.coordinate.getter();
  v31(v34, v33);
  v35 = v57;
  WeatherMetadata.init(date:expirationDate:latitude:longitude:)();
  sub_10022C350(&qword_100CE30F8);
  v36 = v69;
  v37 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100A2C3F0;
  v39 = v53;
  (*(v36 + 16))(v38 + v37, v28, v53);
  v40 = v62;
  v41 = v35;
  v42 = v63;
  (*(v62 + 16))(v61, v35, v63);
  sub_1008BB548(&qword_100CB1738, 255, &type metadata accessor for MinuteWeather);
  sub_1008BB548(&qword_100CB1740, 255, &type metadata accessor for MinuteWeather);
  sub_1008BB548(&unk_100CB1748, 255, &type metadata accessor for MinuteWeather);
  v43 = v64;
  Forecast.init(_:metadata:)();
  type metadata accessor for NextHourPrecipitationComponentParameters();
  type metadata accessor for WeatherData(0);
  v44 = v66;
  WeatherDataModel.currentWeather.getter();
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent();
  static WeatherClock.date.getter();
  (*(v40 + 8))(v41, v42);
  (*(v69 + 8))(v48, v39);
  (*(v67 + 32))(v44 + *(HourPrecipitationComponent + 24), v43, v68);
  type metadata accessor for LocationViewComponent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1008BB370@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = Array<A>.alerts(prominence:)();
  if (*(v9 + 16))
  {
    v10 = *(Array<A>.originalAlerts(prominence:)() + 16);

    type metadata accessor for WeatherData(0);
    WeatherDataModel.currentWeather.getter();
    type metadata accessor for SevereAlertComponent();
    CurrentWeather.date.getter();
    (*(v4 + 8))(v8, v2);
    *a1 = v9;
    a1[1] = v10;
    type metadata accessor for LocationViewComponent();
    swift_storeEnumTagMultiPayload();
    sub_100006AA0();
    return sub_10001B350(v11, v12, v13, v14);
  }

  else
  {
    type metadata accessor for LocationViewComponent();
    v16 = sub_100007E1C();
    sub_10001B350(v16, v17, v18, v19);
  }
}

uint64_t type metadata accessor for NextHourPrecipitationComponentParameters()
{
  result = qword_100CE3158;
  if (!qword_100CE3158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008BB548(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1008BB5B8()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeatherData(319);
    if (v1 <= 0x3F)
    {
      sub_1003CA6A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1008BB65C(uint64_t a1)
{
  v3 = v1;
  type metadata accessor for Location();
  sub_1000037C4();
  v56 = v6;
  v57 = v5;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v55 = v8 - v7;
  type metadata accessor for Logger();
  sub_1000037C4();
  v59 = v10;
  v60 = v9;
  __chkstk_darwin(v9);
  sub_1000088C0();
  __chkstk_darwin(v11);
  sub_100003C54(v12, v13, v14, v15, v16, v17, v18, v19, v54);
  v20 = sub_10022C350(&qword_100CA6890);
  __chkstk_darwin(v20 - 8);
  v22 = &v54 - v21;
  v23 = type metadata accessor for LocationsState();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  v27 = *(v1 + 16);
  v27(&v61);
  sub_1001A0BE0(v61 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v26);

  v28 = *(*(v26 + *(v23 + 24)) + 16);
  type metadata accessor for SavedLocationsManager();
  v29 = static SavedLocationsManager.maxAllowedLocationsCount.getter();
  sub_1001A0C44(v26);
  if (v28 >= v29)
  {
    static Logger.map.getter();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134349056;
      v27(&v61);
      sub_1001A0BE0(v61 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v26);

      v49 = *(v26 + *(v23 + 36));

      sub_1001A0C44(v26);
      v50 = *(v49 + 16);

      *(v48 + 4) = v50;

      _os_log_impl(&_mh_execute_header, v46, v47, "Returning that we cannot add location via map interaction because user has reached the maximum locations, locationsCount=%{public}ld", v48, 0xCu);
      sub_100003884();
    }

    else
    {
    }

    sub_100014484();
    v52 = v2;
    goto LABEL_11;
  }

  sub_1000161C0((v3 + 48), *(v3 + 72));
  Location.coordinate.getter();
  Location.name.getter();
  sub_1001A34D0();

  v30 = type metadata accessor for SavedLocation();
  v31 = 1;
  v32 = sub_100024D10(v22, 1, v30);
  sub_1008BC194(v22);
  if (v32 != 1)
  {
    v33 = v58;
    static Logger.map.getter();
    v35 = v55;
    v34 = v56;
    v36 = a1;
    v37 = v57;
    (*(v56 + 16))(v55, v36, v57);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = v41;
      *v40 = 141558275;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;
      sub_1002F33A8();
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v34 + 8))(v35, v37);
      v45 = sub_100078694(v42, v44, &v61);

      *(v40 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "Returning that we cannot add location via map interaction because user already has the location in their saved locations, location=%{private,mask.hash}s", v40, 0x16u);
      sub_100006F14(v41);
      sub_100003884();
      sub_100003884();
    }

    else
    {

      (*(v34 + 8))(v35, v37);
    }

    sub_100014484();
    v52 = v33;
LABEL_11:
    v51(v52, v60);
    return 0;
  }

  return v31;
}

uint64_t sub_1008BBB5C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Location();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000088C0();
  __chkstk_darwin(v9);
  sub_100003C54(v10, v11, v12, v13, v14, v15, v16, v17, v51[0]);
  type metadata accessor for Logger();
  sub_1000037C4();
  v51[1] = v19;
  v52 = v18;
  __chkstk_darwin(v18);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v51 - v23;
  sub_1000161C0((v1 + 48), *(v1 + 72));
  Location.coordinate.getter();
  Location.name.getter();
  sub_10058A3B8();
  v26 = v25;

  if (v26)
  {
    static Logger.map.getter();
    (*(v7 + 16))(v2, a1, v5);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = v5;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v53 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      sub_1002F33A8();
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v7 + 8))(v2, v29);
      v35 = sub_100078694(v32, v34, &v53);

      *(v30 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Returning that we cannot view a location via map interaction because user has already selected it, location=%{private,mask.hash}s", v30, 0x16u);
      sub_100006F14(v31);
      sub_100003884();
      sub_100003884();
    }

    else
    {

      (*(v7 + 8))(v2, v5);
    }

    sub_100014484();
    v49 = v21;
  }

  else
  {
    sub_1000161C0((v3 + 48), *(v3 + 72));
    Location.coordinate.getter();
    Location.name.getter();
    sub_10058A09C();
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      return 1;
    }

    v38 = v24;
    static Logger.map.getter();
    v39 = v51[0];
    (*(v7 + 16))(v51[0], a1, v5);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v53 = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      sub_1002F33A8();
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v7 + 8))(v39, v5);
      v47 = sub_100078694(v44, v46, &v53);

      *(v42 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "Returning that we cannot view a location via map interaction because user is previewing it, location=%{private,mask.hash}s", v42, 0x16u);
      sub_100006F14(v43);
      sub_100003884();
      sub_100003884();
    }

    else
    {

      (*(v7 + 8))(v39, v5);
    }

    sub_100014484();
    v49 = v38;
  }

  v48(v49, v52);
  return 0;
}

uint64_t sub_1008BC004(uint64_t a1)
{
  v3 = type metadata accessor for LocationsState();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  sub_1000161C0((v1 + 88), *(v1 + 112));
  (*(v1 + 16))(&v8);
  sub_1001A0BE0(v8 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v6);

  sub_1001A0C44(v6);
  LOBYTE(a1) = sub_100496284(a1);

  return a1 & 1;
}

uint64_t sub_1008BC0F8()
{

  sub_100006F14(v0 + 48);
  sub_100006F14(v0 + 88);
  return v0;
}

uint64_t sub_1008BC13C()
{
  sub_1008BC0F8();

  return swift_deallocClassInstance();
}

uint64_t sub_1008BC194(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA6890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008BC228@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_10022C350(&qword_100CE3248);
  return sub_1008BC278(v1, a1 + *(v3 + 44));
}

uint64_t sub_1008BC278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v99 = type metadata accessor for DetailNewsComponentView();
  __chkstk_darwin(v99);
  v94 = (&v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10022C350(&qword_100CA7188);
  __chkstk_darwin(v4 - 8);
  v97 = &v92 - v5;
  v96 = type metadata accessor for DetailComponentContainerViewModel();
  __chkstk_darwin(v96);
  v93 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA7190);
  __chkstk_darwin(v7 - 8);
  v100 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v92 - v10;
  v95 = type metadata accessor for MonthlyAveragesChart();
  __chkstk_darwin(v95);
  v103 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v108 = &v92 - v13;
  v14 = sub_10022C350(&qword_100CA7198);
  __chkstk_darwin(v14);
  v102 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v92 - v17;
  v19 = sub_10022C350(&qword_100CA71A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v92 - v20;
  v22 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  __chkstk_darwin(v22);
  v105 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v98 = (&v92 - v25);
  v26 = sub_10022C350(&qword_100CA71A8);
  __chkstk_darwin(v26 - 8);
  v101 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v109 = &v92 - v29;
  v30 = type metadata accessor for PrecipitationAveragesHeroChartView();
  v31 = v30 - 8;
  __chkstk_darwin(v30);
  v107 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v92 - v34;
  v37 = a1[4];
  v36 = a1[5];
  v38 = sub_1000161C0(a1 + 1, v37);
  *(v35 + 5) = v37;
  *(v35 + 6) = *(v36 + 16);
  v39 = sub_100042FB0(v35 + 2);
  (*(*(v37 - 8) + 16))(v39, v38, v37);
  v40 = *a1;
  sub_1008BCF74(*a1 + OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_heroChart, &v35[*(v31 + 32)], type metadata accessor for PrecipitationAveragesHeroChartViewModel);
  *v35 = swift_getKeyPath();
  v106 = v35;
  v35[8] = 0;
  v41 = OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_summaryPlatterViewModel;
  swift_beginAccess();
  sub_100035AD0(v40 + v41, v21, &qword_100CA71A0);
  if (sub_100024D10(v21, 1, v22) == 1)
  {
    sub_1000180EC(v21, &qword_100CA71A0);
    v42 = 1;
    v43 = v18;
    v45 = v109;
    v44 = v110;
    v46 = v105;
  }

  else
  {
    v47 = v98;
    sub_1002B392C(v21, v98, type metadata accessor for ConditionDetailPlatterViewModel);
    v46 = v105;
    sub_1008BCF74(v47, v105, type metadata accessor for ConditionDetailPlatterViewModel);
    v48 = a1[4];
    v49 = a1[5];
    v50 = sub_1000161C0(a1 + 1, v48);
    v112 = v48;
    v113 = *(v49 + 8);
    v51 = sub_100042FB0(v111);
    (*(*(v48 - 8) + 16))(v51, v50, v48);
    sub_1008BCF74(v46, v18, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_100035B30(v111, &v18[v14[10]]);
    v18[v14[9]] = 0;
    v52 = &v18[v14[11]];
    *v52 = 0;
    *(v52 + 1) = 0;
    v53 = v14[12];
    v43 = v18;
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    *&v18[v53] = sub_1004BA278();
    swift_endAccess();
    sub_1000311F8(v46, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_1000311F8(v47, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_100006F14(v111);
    v54 = v18;
    v45 = v109;
    sub_1002B398C(v54, v109);
    v42 = 0;
    v44 = v110;
  }

  v98 = v14;
  sub_10001B350(v45, v42, 1, v14);
  v55 = v108;
  sub_1008BCF74(v40 + OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_averagesChart, v108, type metadata accessor for MonthlyAveragesChartModel);
  v56 = v95;
  sub_100035B30((a1 + 1), v55 + *(v95 + 20));
  *(v55 + *(v56 + 24)) = 0;
  v57 = OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_newsViewModel;
  swift_beginAccess();
  v58 = v40 + v57;
  v59 = v97;
  sub_100035AD0(v58, v97, &qword_100CA7188);
  if (sub_100024D10(v59, 1, v96) == 1)
  {
    sub_1000180EC(v59, &qword_100CA7188);
    v60 = 1;
    v61 = v99;
  }

  else
  {
    v62 = v93;
    sub_1002B392C(v59, v93, type metadata accessor for DetailComponentContainerViewModel);
    v63 = v99;
    v64 = v94;
    sub_1008BCF74(v62, v94 + *(v99 + 20), type metadata accessor for DetailComponentContainerViewModel);
    v65 = v44;
    v66 = a1[4];
    v67 = a1[5];
    v68 = sub_1000161C0(a1 + 1, v66);
    v69 = (v64 + *(v63 + 24));
    v69[3] = v66;
    v70 = *(v67 + 8);
    v44 = v65;
    v69[4] = v70;
    v71 = sub_100042FB0(v69);
    v72 = *(*(v66 - 8) + 16);
    v73 = v66;
    v61 = v63;
    v46 = v105;
    v72(v71, v68, v73);
    sub_1000311F8(v62, type metadata accessor for DetailComponentContainerViewModel);
    *v64 = swift_getKeyPath();
    sub_10022C350(&qword_100CA62E0);
    swift_storeEnumTagMultiPayload();
    *(v64 + *(v61 + 28)) = 0;
    v74 = v64;
    v45 = v109;
    sub_1002B392C(v74, v65, type metadata accessor for DetailNewsComponentView);
    v60 = 0;
  }

  sub_10001B350(v44, v60, 1, v61);
  sub_1008BCF74(v40 + OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_aboutPlatterViewModel, v46, type metadata accessor for ConditionDetailPlatterViewModel);
  v75 = a1[4];
  v76 = a1[5];
  v77 = sub_1000161C0(a1 + 1, v75);
  v112 = v75;
  v113 = *(v76 + 8);
  v78 = sub_100042FB0(v111);
  (*(*(v75 - 8) + 16))(v78, v77, v75);
  sub_1008BCF74(v46, v43, type metadata accessor for ConditionDetailPlatterViewModel);
  v79 = v98;
  sub_100035B30(v111, v43 + v98[10]);
  *(v43 + v79[9]) = 0;
  v80 = (v43 + v79[11]);
  *v80 = 0;
  v80[1] = 0;
  v81 = v79[12];
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v43 + v81) = sub_1004BA278();
  swift_endAccess();
  sub_1000311F8(v46, type metadata accessor for ConditionDetailPlatterViewModel);
  sub_100006F14(v111);
  v82 = v107;
  sub_1008BCF74(v106, v107, type metadata accessor for PrecipitationAveragesHeroChartView);
  v83 = v101;
  sub_100035AD0(v45, v101, &qword_100CA71A8);
  v84 = v108;
  v85 = v103;
  sub_1008BCF74(v108, v103, type metadata accessor for MonthlyAveragesChart);
  v86 = v100;
  sub_100035AD0(v110, v100, &qword_100CA7190);
  v87 = v102;
  sub_100035AD0(v43, v102, &qword_100CA7198);
  v88 = v82;
  v89 = v104;
  sub_1008BCF74(v88, v104, type metadata accessor for PrecipitationAveragesHeroChartView);
  v90 = sub_10022C350(&qword_100CE3250);
  sub_100035AD0(v83, v89 + v90[12], &qword_100CA71A8);
  sub_1008BCF74(v85, v89 + v90[16], type metadata accessor for MonthlyAveragesChart);
  sub_100035AD0(v86, v89 + v90[20], &qword_100CA7190);
  sub_100035AD0(v87, v89 + v90[24], &qword_100CA7198);
  sub_1000180EC(v43, &qword_100CA7198);
  sub_1000180EC(v110, &qword_100CA7190);
  sub_1000311F8(v84, type metadata accessor for MonthlyAveragesChart);
  sub_1000180EC(v109, &qword_100CA71A8);
  sub_1000311F8(v106, type metadata accessor for PrecipitationAveragesHeroChartView);
  sub_1000180EC(v87, &qword_100CA7198);
  sub_1000180EC(v86, &qword_100CA7190);
  sub_1000311F8(v85, type metadata accessor for MonthlyAveragesChart);
  sub_1000180EC(v83, &qword_100CA71A8);
  return sub_1000311F8(v107, type metadata accessor for PrecipitationAveragesHeroChartView);
}

uint64_t sub_1008BCF74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1008BCFD4()
{
  result = qword_100CE3258;
  if (!qword_100CE3258)
  {
    sub_10022E824(&qword_100CE3260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE3258);
  }

  return result;
}

uint64_t sub_1008BD038@<X0>(uint64_t a1@<X8>)
{
  sub_100035B30(v1 + 16, v7);

  v3 = static Solarium.isEnabled.getter();
  v4 = 12.0;
  if (v3)
  {
    v4 = 16.0;
  }

  *(a1 + 56) = v4;
  sub_10022C350(&qword_100CA49D8);
  sub_1008BD0F8();
  *a1 = ObservedObject.init(wrappedValue:)();
  *(a1 + 8) = v5;
  return sub_100013188(v7, a1 + 16);
}

unint64_t sub_1008BD0F8()
{
  result = qword_100CA49E0;
  if (!qword_100CA49E0)
  {
    sub_10022E824(&qword_100CA49D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA49E0);
  }

  return result;
}

uint64_t sub_1008BD184(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69616E626D756874 && a2 == 0xEC0000004C52556CLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x446873696C627570 && a2 == 0xEB00000000657461;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 7107189 && a2 == 0xE300000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x73726F68747561 && a2 == 0xE700000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656D6F6E656870 && a2 == 0xE900000000000061;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x7364497472656C61 && a2 == 0xE800000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_1008BD458(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x69616E626D756874;
      break;
    case 3:
      result = 0x446873696C627570;
      break;
    case 4:
      result = 7107189;
      break;
    case 5:
      result = 0x6C656E6E616863;
      break;
    case 6:
      result = 0x73726F68747561;
      break;
    case 7:
      result = 0x6E656D6F6E656870;
      break;
    case 8:
      result = 0x7364497472656C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1008BD558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008BD184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008BD580@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1008BD450();
  *a1 = result;
  return result;
}

uint64_t sub_1008BD5A8(uint64_t a1)
{
  v2 = sub_1008BE654();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008BD5E4(uint64_t a1)
{
  v2 = sub_1008BE654();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008BD620(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CE3488);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1008BE654();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  sub_100003CDC();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v22) = 1;
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = type metadata accessor for NewsArticle();
    LOBYTE(v22) = 2;
    type metadata accessor for URL();
    sub_10001FBC8();
    sub_1008BE864(v12, v13);
    sub_100010F00();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = v11;
    LOBYTE(v22) = 3;
    type metadata accessor for Date();
    sub_100004DA8();
    sub_1008BE864(v14, v15);
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = 4;
    sub_100010F00();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = 5;
    type metadata accessor for NewsChannel();
    sub_1000150A4();
    sub_1008BE864(v16, v17);
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v20;
    v22 = *(v3 + *(v20 + 40));
    v21 = 6;
    sub_10022C350(&qword_100CCC930);
    sub_1005FFB2C(&qword_100CCB5A8);
    sub_100010F00();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = *(v3 + *(v18 + 44));
    v21 = 7;
    sub_100010F00();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = *(v3 + *(v18 + 48));
    v21 = 8;
    sub_10022C350(&qword_100CE3478);
    sub_1008BE7C8(&qword_100CE3498, &qword_100CCB4D0);
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1008BD9F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v52 = type metadata accessor for NewsChannel();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v51 = v5 - v4;
  v58 = type metadata accessor for URL();
  sub_1000037C4();
  v55 = v6;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for Date();
  sub_1000037C4();
  v56 = v12;
  v57 = v11;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v15 = v14 - v13;
  sub_10022C350(&qword_100CB3AB0);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v54 = sub_10022C350(&qword_100CE3460);
  sub_1000037C4();
  v20 = v19;
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  v61 = type metadata accessor for NewsArticle();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  v27 = (v26 - v25);
  v28 = a1[3];
  v59 = a1;
  sub_1000161C0(a1, v28);
  sub_1008BE654();
  v53 = v23;
  v29 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    v60 = v29;
    return sub_100006F14(v59);
  }

  else
  {
    v30 = v15;
    LOBYTE(v63) = 0;
    *v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v27[1] = v33;
    LOBYTE(v63) = 1;
    v27[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v27[3] = v34;
    LOBYTE(v63) = 2;
    sub_10001FBC8();
    v37 = sub_1008BE864(v35, v36);
    v38 = v18;
    v39 = v58;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v60 = v37;
    sub_10043D988(v38, v27 + v61[6]);
    LOBYTE(v63) = 3;
    sub_100004DA8();
    sub_1008BE864(v40, v41);
    v42 = v30;
    v43 = v57;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v56 + 32))(v27 + v61[7], v42, v43);
    LOBYTE(v63) = 4;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v55 + 32))(v27 + v61[8], v10, v39);
    LOBYTE(v63) = 5;
    sub_1000150A4();
    sub_1008BE864(v44, v45);
    v46 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1008BE6A8(v46, v27 + v61[9]);
    sub_10022C350(&qword_100CCC930);
    v62 = 6;
    sub_1005FFB2C(&qword_100CCB588);
    sub_1000751F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v27 + v61[10]) = v63;
    v62 = 7;
    sub_1000751F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v60 = 0;
    *(v27 + v61[11]) = v63;
    sub_10022C350(&qword_100CE3478);
    v62 = 8;
    sub_1008BE7C8(&qword_100CE3480, &qword_100CCB4A8);
    sub_1000751F0();
    v47 = v54;
    v48 = v60;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v60 = v48;
    (*(v20 + 8))(v53, v47);
    if (v48)
    {
      sub_100006F14(v59);

      v32 = v61;
      sub_1000180EC(v27 + v61[6], &qword_100CB3AB0);
      (*(v56 + 8))(v27 + v32[7], v57);
      (*(v55 + 8))(v27 + v32[8], v58);
      sub_1008BE770(v27 + v32[9], type metadata accessor for NewsChannel);
    }

    else
    {
      *(v27 + v61[12]) = v63;
      sub_1008BE70C(v27, v50);
      sub_100006F14(v59);
      return sub_1008BE770(v27, type metadata accessor for NewsArticle);
    }
  }
}

uint64_t sub_1008BE2A4(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&qword_100CB3AB0);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_10022C350(qword_100CAD4D0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = *a1 == *a2 && a1[1] == a2[1];
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v20 = type metadata accessor for NewsArticle();
  v21 = *(v20 + 24);
  v22 = *(v14 + 48);
  sub_1000E594C(a1 + v21, v17);
  sub_1000E594C(a2 + v21, &v17[v22]);
  sub_100003A40(v17);
  if (v18)
  {
    sub_100003A40(&v17[v22]);
    if (v18)
    {
      sub_1000180EC(v17, &qword_100CB3AB0);
      goto LABEL_21;
    }

LABEL_19:
    sub_1000180EC(v17, qword_100CAD4D0);
LABEL_27:
    v30 = 0;
    return v30 & 1;
  }

  sub_1000E594C(v17, v13);
  sub_100003A40(&v17[v22]);
  if (v23)
  {
    (*(v6 + 8))(v13, v4);
    goto LABEL_19;
  }

  (*(v6 + 32))(v10, &v17[v22], v4);
  sub_10001FBC8();
  sub_1008BE864(v24, v25);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v6 + 8);
  v27(v10, v4);
  v27(v13, v4);
  sub_1000180EC(v17, &qword_100CB3AB0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!sub_100684B0C((a1 + *(v20 + 36)), (a2 + *(v20 + 36))))
  {
    goto LABEL_27;
  }

  sub_1001CAA30();
  if ((v28 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1001CAA30();
  if ((v29 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1009EF234();
  return v30 & 1;
}

unint64_t sub_1008BE654()
{
  result = qword_100CE3468;
  if (!qword_100CE3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE3468);
  }

  return result;
}

uint64_t sub_1008BE6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsChannel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BE70C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BE770(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1008BE7C8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CE3478);
    sub_1008BE864(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1008BE864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for NewsArticle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NewsArticle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1008BEA14()
{
  result = qword_100CE34A0;
  if (!qword_100CE34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE34A0);
  }

  return result;
}

unint64_t sub_1008BEA6C()
{
  result = qword_100CE34A8;
  if (!qword_100CE34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE34A8);
  }

  return result;
}

unint64_t sub_1008BEAC4()
{
  result = qword_100CE34B0;
  if (!qword_100CE34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE34B0);
  }

  return result;
}

uint64_t _s7ModulesV8LocationV17NotableConditionsCMa()
{
  result = qword_100CE34B8;
  if (!qword_100CE34B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008BEBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Access();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  swift_allocObject();
  (*(v7 + 16))(v11, a4, v5);
  v12 = SettingGroup.init(key:defaultValue:access:)();
  (*(v7 + 8))(a4, v5);
  return v12;
}

uint64_t sub_1008BECB8()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D91278 = result;
  return result;
}

uint64_t sub_1008BEE0C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D91280 = result;
  return result;
}

uint64_t sub_1008BEF60()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D91288 = result;
  return result;
}

uint64_t sub_1008BF0B4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D91290 = result;
  return result;
}

uint64_t sub_1008BF204()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D91298 = result;
  return result;
}

uint64_t sub_1008BF354()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D912A0 = result;
  return result;
}

uint64_t sub_1008BF4A4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D912A8 = result;
  return result;
}

uint64_t sub_1008BF5F4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D912B0 = result;
  return result;
}

uint64_t sub_1008BF744()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D912B8 = result;
  return result;
}

uint64_t sub_1008BF894()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D912C0 = result;
  return result;
}

uint64_t sub_1008BF9E4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D912C8 = result;
  return result;
}

uint64_t sub_1008BFB34()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D912E0 = result;
  return result;
}

uint64_t sub_1008BFC84()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D912E8 = result;
  return result;
}

uint64_t sub_1008BFDD4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D912F8 = result;
  return result;
}

uint64_t sub_1008BFF24()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D91300 = result;
  return result;
}

uint64_t sub_1008C0074()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D91308 = result;
  return result;
}

uint64_t sub_1008C01C4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D91310 = result;
  return result;
}

uint64_t sub_1008C0314()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D91318 = result;
  return result;
}

uint64_t sub_1008C046C()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  _s7ModulesV8LocationV17NotableConditionsCMa();
  (*(v2 + 104))(v6, enum case for Access.protected(_:), v0);
  result = sub_1008BEBA4(0, 0, 0, v6);
  qword_100D91320 = result;
  return result;
}

uint64_t sub_1008C0548()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  sub_10022C350(&qword_100CAFFD0);
  (*(v2 + 104))(v6, enum case for Access.public(_:), v0);
  result = Setting<>.init(_:defaultValue:min:max:access:)();
  qword_100D91328 = result;
  return result;
}

uint64_t sub_1008C0668(uint64_t a1, int a2, int a3, int a4)
{
  LODWORD(v168) = a4;
  LODWORD(v167) = a3;
  LODWORD(v173) = a2;
  v5 = sub_10022C350(&qword_100CAEC90);
  __chkstk_darwin(v5 - 8);
  v169 = &v149 - v6;
  v155 = sub_10022C350(&qword_100CAC450);
  sub_1000037C4();
  v154 = v7;
  __chkstk_darwin(v8);
  v153 = &v149 - v9;
  type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v164 = v11;
  v165 = v10;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v157 = v13 - v12;
  v14 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v14 - 8);
  v161 = &v149 - v15;
  v175 = type metadata accessor for NSUnitSpeed.WeatherFormatUsage();
  sub_1000037C4();
  v160 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v159 = v19 - v18;
  type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle();
  sub_1000037C4();
  v162 = v21;
  v163 = v20;
  __chkstk_darwin(v20);
  sub_100003848();
  v176 = v22;
  __chkstk_darwin(v23);
  v25 = &v149 - v24;
  v166 = type metadata accessor for FloatingPointRoundingRule();
  sub_1000037C4();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = v30 - v29;
  v32 = sub_10022C350(&qword_100CACCC8);
  sub_1000037C4();
  v177 = v33;
  __chkstk_darwin(v34);
  sub_100003848();
  v156 = v35;
  __chkstk_darwin(v36);
  v38 = &v149 - v37;
  __chkstk_darwin(v39);
  v172 = &v149 - v40;
  __chkstk_darwin(v41);
  v43 = &v149 - v42;
  v152 = type metadata accessor for Beaufort.Category();
  sub_1000037C4();
  v151 = v44;
  __chkstk_darwin(v45);
  sub_1000037D8();
  v48 = v47 - v46;
  v49 = a1;
  v50 = ConditionUnits.windSpeed.getter();
  v51 = NSUnitSpeed.isBeaufort.getter();

  v170 = v49;
  v171 = v32;
  v150 = v25;
  v174 = v43;
  if (v51)
  {
    v52 = &MainInitialStateProvider;
    v53 = [objc_opt_self() mainBundle];
    sub_10000FD84(0x6425206563726F66, 0xE800000000000000, v54, v55, v56, v57, v58, 0xD000000000000061);

    sub_10022C350(&qword_100CA40C8);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100A2C3F0;
    Wind.speed.getter();
    Measurement<>.beaufortCategory(useExtendedScale:)();
    v158 = *(v177 + 8);
    v158(v43, v32);
    v60 = Beaufort.Category.level.getter();
    (*(v151 + 8))(v48, v152);
    *(v59 + 56) = &type metadata for Int;
    *(v59 + 64) = &protocol witness table for Int;
    *(v59 + 32) = v60;
    v166 = static String.localizedStringWithFormat(_:_:)();
    v167 = v61;
  }

  else
  {
    Wind.speed.getter();
    v62 = ConditionUnits.windSpeed.getter();
    Measurement<>.converted(to:)();

    v63 = v177 + 8;
    v64 = *(v177 + 8);
    v64(v43, v32);
    v158 = v64;
    v152 = v63;
    v65 = &enum case for FloatingPointRoundingRule.awayFromZero(_:);
    if ((v167 & 1) == 0)
    {
      v65 = &enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
    }

    v66 = v166;
    (*(v27 + 104))(v31, *v65, v166);
    Measurement.rounded(_:)();
    (*(v27 + 8))(v31, v66);
    v64(v38, v32);
    static Set<>.full.getter();
    v67 = v160;
    v68 = v159;
    v69 = v175;
    (*(v160 + 104))(v159, enum case for NSUnitSpeed.WeatherFormatUsage.windSpeed(_:), v175);
    v70 = type metadata accessor for Locale();
    v71 = v161;
    sub_10001B350(v161, 1, 1, v70);
    static WeatherFormatStyle<>.weather(_:usage:locale:)();

    sub_10003FDF4(v71, &qword_100CAA9F0);
    (*(v67 + 8))(v68, v69);
    v72 = v176;
    NSUnitSpeed.BaseWeatherFormatStyle.accessible.getter();
    v73 = v163;
    v74 = *(v162 + 8);
    v74(v25, v163);
    v76 = v164;
    v75 = v165;
    v77 = v157;
    (*(v164 + 104))(v157, enum case for WeatherFormatPlaceholder.none(_:), v165);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_1008C1578();
    v78 = v172;
    v166 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v167 = v79;

    (*(v76 + 8))(v77, v75);
    v74(v72, v73);
    v158(v78, v32);
    v52 = &MainInitialStateProvider;
  }

  v80 = [objc_opt_self() mainBundle];
  if ((v173 & 1) == 0)
  {
    sub_1000091E0();
    sub_10000FD84(0xD000000000000017, v103, v104, v105, v106, v107, v108, 0x10000000000000B8);

    sub_10022C350(&qword_100CA40C8);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_100A2D320;
    Wind.compassDirection.getter();
    v110 = Wind.CompassDirection.accessibilityDescription.getter();
    v112 = v111;
    *(v109 + 56) = &type metadata for String;
    v113 = sub_100035744();
    *(v109 + 32) = v110;
    *(v109 + 40) = v112;
    *(v109 + 96) = &type metadata for String;
    *(v109 + 104) = v113;
    v115 = v166;
    v114 = v167;
    *(v109 + 64) = v113;
    *(v109 + 72) = v115;
    *(v109 + 80) = v114;
    v100 = static String.localizedStringWithFormat(_:_:)();
    v102 = v116;

    goto LABEL_12;
  }

  sub_1000091E0();
  sub_10000FD84(0x100000000000001ELL, v81, v82, v83, v84, v85, v86, 0x10000000000000F7);

  sub_10022C350(&qword_100CA40C8);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_100A3BBA0;
  v88 = v153;
  Wind.direction.getter();
  v89 = v155;
  Measurement.value.getter();
  v91 = v90;
  v92 = v90;
  result = (*(v154 + 8))(v88, v89);
  if ((*&v92 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v91 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v91 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  *(v87 + 56) = &type metadata for Int;
  *(v87 + 64) = &protocol witness table for Int;
  *(v87 + 32) = v91;
  Wind.compassDirection.getter();
  v94 = Wind.CompassDirection.accessibilityDescription.getter();
  v96 = v95;
  *(v87 + 96) = &type metadata for String;
  v97 = sub_100035744();
  *(v87 + 72) = v94;
  *(v87 + 80) = v96;
  *(v87 + 136) = &type metadata for String;
  *(v87 + 144) = v97;
  v99 = v166;
  v98 = v167;
  *(v87 + 104) = v97;
  *(v87 + 112) = v99;
  *(v87 + 120) = v98;
  v100 = static String.localizedStringWithFormat(_:_:)();
  v102 = v101;

  v52 = &MainInitialStateProvider;
LABEL_12:
  v117 = v171;
  v119 = v175;
  v118 = v176;
  v120 = v169;
  if (v168)
  {
    v173 = v100;
    Wind.gust.getter();
    if (sub_100024D10(v120, 1, v117) == 1)
    {
      sub_10003FDF4(v120, &qword_100CAEC90);
      return v173;
    }

    else
    {
      v121 = *(v177 + 32);
      v177 += 32;
      v178 = v102;
      v121(v156, v120, v117);
      v122 = [objc_opt_self() *&v52[52].flags];
      v149 = 0x8000000100AE4250;
      v172 = sub_10000FD84(0x7075207374737547, 0xEE004025206F7420, v123, v124, v125, v126, v127, 0xD0000000000000BELL);
      v169 = v128;

      sub_10022C350(&qword_100CA40C8);
      v129 = swift_allocObject();
      *(v129 + 16) = xmmword_100A2C3F0;
      v130 = ConditionUnits.windGust.getter();
      Measurement<>.converted(to:)();

      static Set<>.full.getter();
      v131 = v160;
      v132 = v159;
      (*(v160 + 104))(v159, enum case for NSUnitSpeed.WeatherFormatUsage.windGust(_:), v119);
      v133 = type metadata accessor for Locale();
      v134 = v161;
      sub_10001B350(v161, 1, 1, v133);
      v135 = v150;
      static WeatherFormatStyle<>.weather(_:usage:locale:)();

      sub_10003FDF4(v134, &qword_100CAA9F0);
      (*(v131 + 8))(v132, v119);
      NSUnitSpeed.BaseWeatherFormatStyle.accessible.getter();
      v136 = v163;
      v175 = *(v162 + 8);
      v175(v135, v163);
      v138 = v164;
      v137 = v165;
      v139 = v157;
      (*(v164 + 104))(v157, enum case for WeatherFormatPlaceholder.none(_:), v165);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_1008C1578();
      v140 = v174;
      v170 = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v168 = v141;

      (*(v138 + 8))(v139, v137);
      v175(v118, v136);
      v142 = v158;
      v158(v140, v117);
      *(v129 + 56) = &type metadata for String;
      *(v129 + 64) = sub_100035744();
      v143 = v168;
      *(v129 + 32) = v170;
      *(v129 + 40) = v143;
      v144 = static String.localizedStringWithFormat(_:_:)();
      v146 = v145;

      sub_10022C350(&qword_100CA7300);
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_100A2D320;
      v148 = v178;
      *(v147 + 32) = v173;
      *(v147 + 40) = v148;
      *(v147 + 48) = v144;
      *(v147 + 56) = v146;
      v179 = v147;
      sub_10022C350(&qword_100CCC930);
      sub_1001141C8();
      v100 = BidirectionalCollection<>.joined(separator:)();

      v142(v156, v117);
    }
  }

  return v100;
}

unint64_t sub_1008C1578()
{
  result = qword_100CAECB0;
  if (!qword_100CAECB0)
  {
    type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAECB0);
  }

  return result;
}

uint64_t sub_1008C15D0(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_100CA27B0 != -1)
      {
        sub_10000F960();
      }

      v30 = type metadata accessor for Logger();
      sub_1000212C4(v30, qword_100D90D68);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (sub_100007E70(v32))
      {
        *sub_10002C894() = 67109120;
        if (qword_100CA20E0 != -1)
        {
          sub_1000091F4();
        }

        v33 = sub_10022C350(&qword_100CA35A0);
        sub_10000703C(v33, qword_100D8FE58);
        sub_100049E6C();
        sub_10003C9E8();
        sub_100020C70();
        sub_100075200();
        sub_100023488(&_mh_execute_header, v34, v35, "AirQualityTip.isValid=%{BOOL}d");
        sub_100008370();
      }

      if (qword_100CA20E0 != -1)
      {
        sub_1000091F4();
      }

      v8 = sub_10022C350(&qword_100CA35A0);
      v9 = qword_100D8FE58;
      goto LABEL_57;
    case 2:
      if (qword_100CA27B0 != -1)
      {
        sub_10000F960();
      }

      v18 = type metadata accessor for Logger();
      sub_1000212C4(v18, qword_100D90D68);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (sub_100007E70(v20))
      {
        *sub_10002C894() = 67109120;
        if (qword_100CA20F0 != -1)
        {
          sub_100004DC0();
        }

        v21 = sub_10022C350(&qword_100CA35A0);
        sub_10000703C(v21, qword_100D8FE88);
        sub_100049E6C();
        sub_10003C9E8();
        sub_100020C70();
        sub_100075200();
        sub_100023488(&_mh_execute_header, v22, v23, "MapTip.isValid=%{BOOL}d");
        sub_100008370();
      }

      if (qword_100CA20F0 != -1)
      {
        sub_100004DC0();
      }

      v8 = sub_10022C350(&qword_100CA35A0);
      v9 = qword_100D8FE88;
      goto LABEL_57;
    case 3:
      if (qword_100CA27B0 != -1)
      {
        sub_10000F960();
      }

      v24 = type metadata accessor for Logger();
      sub_1000212C4(v24, qword_100D90D68);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (sub_100007E70(v26))
      {
        *sub_10002C894() = 67109120;
        if (qword_100CA2100 != -1)
        {
          sub_100010F18();
        }

        v27 = sub_10022C350(&qword_100CA35A0);
        sub_10000703C(v27, qword_100D8FEB8);
        sub_100049E6C();
        sub_10003C9E8();
        sub_100020C70();
        sub_100075200();
        sub_100023488(&_mh_execute_header, v28, v29, "WindMapTip.isValid=%{BOOL}d");
        sub_100008370();
      }

      if (qword_100CA2100 != -1)
      {
        sub_100010F18();
      }

      v8 = sub_10022C350(&qword_100CA35A0);
      v9 = qword_100D8FEB8;
      goto LABEL_57;
    case 4:
      if (qword_100CA27B0 != -1)
      {
        sub_10000F960();
      }

      v10 = type metadata accessor for Logger();
      sub_1000212C4(v10, qword_100D90D68);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (sub_100007E70(v12))
      {
        v13 = sub_10002C894();
        *v13 = 67109120;
        if (qword_100CA2118 != -1)
        {
          sub_10001A100();
        }

        v14 = sub_10022C350(&qword_100CA35A0);
        sub_10000703C(v14, qword_100D8FF00);
        sub_100028CF0();
        Tips.Parameter.wrappedValue.getter();
        sub_100020C70();
        if (v1)
        {
          goto LABEL_59;
        }

        if (qword_100CA2108 != -1)
        {
          sub_100017FAC();
        }

        sub_10000703C(v14, qword_100D8FED0);
        sub_100028CF0();
        Tips.Parameter.wrappedValue.getter();
        sub_100020C70();
        if ((v1 & 1) == 0)
        {
LABEL_59:
          v17 = 0;
        }

        else
        {
          v17 = 1;
        }

        v13[1] = v17;
        sub_100023488(&_mh_execute_header, v15, v16, "UVIndexTip.isValid=%{BOOL}d");
        sub_100008370();
      }

      if (qword_100CA2118 != -1)
      {
        sub_10001A100();
      }

      v44 = sub_10022C350(&qword_100CA35A0);
      sub_10000703C(v44, qword_100D8FF00);
      sub_100028CF0();
      Tips.Parameter.wrappedValue.getter();
      sub_100020C70();
      if (v1)
      {
        v42 = 0;
      }

      else
      {
        if (qword_100CA2108 != -1)
        {
          sub_100017FAC();
        }

        sub_10000703C(v44, qword_100D8FED0);
        sub_100028CF0();
        Tips.Parameter.wrappedValue.getter();
        v42 = v45;
        swift_endAccess();
      }

      return v42 & 1;
    case 5:
      if (qword_100CA27B0 != -1)
      {
        sub_10000F960();
      }

      v36 = type metadata accessor for Logger();
      sub_1000212C4(v36, qword_100D90D68);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (sub_100007E70(v38))
      {
        *sub_10002C894() = 67109120;
        if (qword_100CA2128 != -1)
        {
          sub_100006AB0();
        }

        v39 = sub_10022C350(&qword_100CA35A0);
        sub_10000703C(v39, qword_100D8FF30);
        sub_100049E6C();
        sub_10003C9E8();
        sub_100020C70();
        sub_100075200();
        sub_100023488(&_mh_execute_header, v40, v41, "WindTip.isValid=%{BOOL}d");
        sub_100008370();
      }

      if (qword_100CA2128 != -1)
      {
        sub_100006AB0();
      }

      v8 = sub_10022C350(&qword_100CA35A0);
      v9 = qword_100D8FF30;
      goto LABEL_57;
    default:
      if (qword_100CA27B0 != -1)
      {
        sub_10000F960();
      }

      v2 = type metadata accessor for Logger();
      sub_1000212C4(v2, qword_100D90D68);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (sub_100007E70(v4))
      {
        *sub_10002C894() = 67109120;
        if (qword_100CA20C8 != -1)
        {
          sub_1000150BC();
        }

        v5 = sub_10022C350(&qword_100CA35A0);
        sub_10000703C(v5, qword_100D8FE10);
        sub_100049E6C();
        sub_10003C9E8();
        sub_100020C70();
        sub_100075200();
        sub_100023488(&_mh_execute_header, v6, v7, "DailyForecastTip.isValid=%{BOOL}d");
        sub_100008370();
      }

      if (qword_100CA20C8 != -1)
      {
        sub_1000150BC();
      }

      v8 = sub_10022C350(&qword_100CA35A0);
      v9 = qword_100D8FE10;
LABEL_57:
      sub_10000703C(v8, v9);
      sub_100028CF0();
      Tips.Parameter.wrappedValue.getter();
      swift_endAccess();
      v42 = v45 ^ 1;
      return v42 & 1;
  }
}

uint64_t sub_1008C1D54(char a1)
{
  if (qword_100CA27B0 != -1)
  {
    sub_10000F960();
  }

  v2 = type metadata accessor for Logger();
  sub_1000212C4(v2, qword_100D90D68);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315138;
    v7 = sub_1008C22D4(a1);
    v9 = sub_100078694(v7, v8, v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting tip %s to appear", v5, 0xCu);
    sub_100006F14(v6);

    sub_100008370();
  }

  switch(a1)
  {
    case 1:
      if (qword_100CA20D8 != -1)
      {
        swift_once();
      }

      v10 = sub_10022C350(&qword_100CA35A0);
      v11 = qword_100D8FE40;
      break;
    case 2:
      if (qword_100CA20E8 != -1)
      {
        swift_once();
      }

      v10 = sub_10022C350(&qword_100CA35A0);
      v11 = qword_100D8FE70;
      break;
    case 3:
      if (qword_100CA20F8 != -1)
      {
        swift_once();
      }

      v10 = sub_10022C350(&qword_100CA35A0);
      v11 = qword_100D8FEA0;
      break;
    case 4:
      if (qword_100CA2110 != -1)
      {
        swift_once();
      }

      v10 = sub_10022C350(&qword_100CA35A0);
      v11 = qword_100D8FEE8;
      break;
    case 5:
      if (qword_100CA2120 != -1)
      {
        swift_once();
      }

      v10 = sub_10022C350(&qword_100CA35A0);
      v11 = qword_100D8FF18;
      break;
    default:
      if (qword_100CA20C0 != -1)
      {
        swift_once();
      }

      v10 = sub_10022C350(&qword_100CA35A0);
      v11 = qword_100D8FDF8;
      break;
  }

  sub_1000212C4(v10, v11);
  v14 = 1;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_1008C20C8(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_100CA20E0 != -1)
      {
        sub_1000091F4();
      }

      v1 = sub_10022C350(&qword_100CA35A0);
      v2 = qword_100D8FE58;
      break;
    case 2:
      if (qword_100CA20F0 != -1)
      {
        sub_100004DC0();
      }

      v1 = sub_10022C350(&qword_100CA35A0);
      v2 = qword_100D8FE88;
      break;
    case 3:
      if (qword_100CA2100 != -1)
      {
        sub_100010F18();
      }

      v1 = sub_10022C350(&qword_100CA35A0);
      v2 = qword_100D8FEB8;
      break;
    case 4:
      if (qword_100CA2118 != -1)
      {
        sub_10001A100();
      }

      v1 = sub_10022C350(&qword_100CA35A0);
      v2 = qword_100D8FF00;
      break;
    case 5:
      if (qword_100CA2128 != -1)
      {
        sub_100006AB0();
      }

      v1 = sub_10022C350(&qword_100CA35A0);
      v2 = qword_100D8FF30;
      break;
    default:
      if (qword_100CA20C8 != -1)
      {
        sub_1000150BC();
      }

      v1 = sub_10022C350(&qword_100CA35A0);
      v2 = qword_100D8FE10;
      break;
  }

  sub_1000212C4(v1, v2);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_1008C22D4(char a1)
{
  result = 0x726F46796C696164;
  switch(a1)
  {
    case 1:
      result = 0x696C617551726961;
      break;
    case 2:
      result = 7364973;
      break;
    case 3:
      result = 0x70614D646E6977;
      break;
    case 4:
      result = 0x7865646E497675;
      break;
    case 5:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1008C2388(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45A78, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1008C23F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008C2388(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1008C2428@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1008C22D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherTip(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1008C2524()
{
  result = qword_100CE35A0;
  if (!qword_100CE35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE35A0);
  }

  return result;
}

uint64_t sub_1008C2578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayMetrics();

  return _swift_getEnumTagSinglePayloadGeneric(a1, a2, v4, sub_10021D61C);
}

uint64_t sub_1008C25D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DisplayMetrics();

  return _swift_storeEnumTagSinglePayloadGeneric(a1, a2, a3, v6, sub_10021D69C);
}

uint64_t sub_1008C2638()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = (v0 + *(type metadata accessor for InteractiveMapView() + 60));
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v9, 0);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v9) = v12;
  }

  return v9 & 1;
}

uint64_t sub_1008C277C()
{
  sub_10000C76C();
  v2 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  sub_10022C350(&qword_100CB3B70);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for InteractiveMapView();
  sub_1000302D8(v1 + *(v12 + 68), v11, &qword_100CB3B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorScheme();
    sub_1000037E8();
    return (*(v13 + 32))(v0, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v2);
  }
}

uint64_t sub_1008C2958@<X0>(uint64_t a1@<X8>)
{
  v195 = a1;
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v193 = v3;
  v194 = v2;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v192 = v5 - v4;
  v6 = sub_10022C350(&qword_100CAE2A0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v191 = v8;
  v9 = sub_10022C350(&qword_100CB3688);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  sub_100003990(v11);
  v12 = type metadata accessor for InteractiveMapView();
  v197 = *(v12 - 8);
  v198 = v12;
  v196 = *(v197 + 64);
  __chkstk_darwin(v12);
  v199 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CBEDF0);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v144 - v16;
  v156 = &v144 - v16;
  v18 = type metadata accessor for InteractiveMapViewModel();
  sub_100003B20();
  __chkstk_darwin(v19);
  v167 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v166 = &v144 - v23;
  __chkstk_darwin(v24);
  v26 = &v144 - v25;
  __chkstk_darwin(v27);
  v29 = &v144 - v28;
  v30 = type metadata accessor for WeatherMapDisplayMode();
  sub_1000037C4();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_1000037D8();
  v36 = v35 - v34;
  v159 = v35 - v34;
  *&v164 = type metadata accessor for WeatherMap();
  sub_1000037C4();
  v162 = v37;
  __chkstk_darwin(v38);
  sub_1000037D8();
  sub_100003990(v40 - v39);
  v169 = sub_10022C350(&qword_100CE3838);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v41);
  sub_1000039BC();
  sub_100003990(v42);
  v172 = sub_10022C350(&qword_100CE3840);
  sub_1000037C4();
  v170 = v43;
  sub_100003828();
  __chkstk_darwin(v44);
  sub_1000039BC();
  sub_100003990(v45);
  v174 = sub_10022C350(&qword_100CE3848);
  sub_1000037C4();
  v173 = v46;
  sub_100003828();
  __chkstk_darwin(v47);
  sub_1000039BC();
  sub_100003990(v48);
  v179 = sub_10022C350(&qword_100CE3850);
  sub_1000037C4();
  v178 = v49;
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  sub_100003990(v51);
  v176 = sub_10022C350(&qword_100CE3858);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v52);
  sub_1000039BC();
  sub_100003990(v53);
  v185 = sub_10022C350(&qword_100CE3860);
  sub_1000037C4();
  v182 = v54;
  sub_100003828();
  __chkstk_darwin(v55);
  sub_1000039BC();
  sub_100003990(v56);
  v180 = sub_10022C350(&qword_100CE3868);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v57);
  sub_1000039BC();
  sub_100003990(v58);
  v183 = sub_10022C350(&qword_100CE3870);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v59);
  sub_1000039BC();
  sub_100003990(v60);
  v186 = sub_10022C350(&qword_100CE3878);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v61);
  sub_1000039BC();
  v189 = v62;
  v188 = sub_10022C350(&qword_100CE3880);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v63);
  sub_1000039BC();
  v190 = v64;
  v65 = *(v32 + 16);
  v160 = *(v12 + 32);
  v65(v36, &v1[v160], v30);
  v158 = sub_1008C2638();
  v66 = *(v1 + 3);
  v200 = v1;
  sub_1009899B8();
  v157 = *&v29[v18[5]];
  v151 = v29;

  sub_1008C6EE4();
  sub_1008C3D5C(v17);
  v155 = sub_1008C3F10();
  v154 = v67;
  v153 = v68;
  v152 = v69;
  sub_1009899B8();

  sub_10002CB60();
  type metadata accessor for WeatherData(0);
  type metadata accessor for WeatherDataModel();
  v150 = Dictionary.mapKeysAndValues<A, B>(_:)();

  sub_1009899B8();
  v70 = v18;
  LODWORD(v149) = v26[v18[8]];
  sub_10002CB60();
  sub_1009899B8();
  sub_10002CB60();
  v71 = v166;
  sub_1009899B8();
  sub_1008C6EE4();
  sub_1009899B8();
  sub_1008C6EE4();
  sub_1009899B8();
  sub_1008C6EE4();
  v167 = Array<A>.init(hideScale:controlsLoadDelay:controlsFadeOnResize:controlsHidden:forceOverlayPaused:isUserInteractionEnabled:)();
  sub_1009899B8();
  v72 = &v26[v18[16]];
  v73 = *(v72 + 1);
  v149 = *v72;
  v148 = v73;

  sub_10002CB60();
  sub_1009899B8();
  v147 = v71[v18[17]];
  sub_1008C6EE4();
  v74 = v200;
  v146 = *(v200 + *(v198 + 10));
  v75 = v199;
  sub_1000BBF54(v200, v199, type metadata accessor for InteractiveMapView);
  v76 = *(v197 + 80);
  v77 = (v76 + 16) & ~v76;
  v78 = v77 + v196;
  v145 = swift_allocObject();
  sub_1008C7374(v75, v145 + v77);
  sub_1000BBF54(v74, v75, type metadata accessor for InteractiveMapView);
  v166 = v76;
  v196 = v78;
  v79 = swift_allocObject();
  v197 = v77;
  sub_1008C7374(v75, v79 + v77);

  sub_10022C350(&qword_100CE3888);
  type metadata accessor for MapContentStatusBanner();
  sub_1008C7480();
  sub_1008C8004(&qword_100CE38D8, type metadata accessor for MapContentStatusBanner);
  sub_1008C8004(&qword_100CE38E0, type metadata accessor for MapContentStatusBanner);
  v80 = v151;
  v81 = v161;
  WeatherMap.init<A, B>(displayMode:startsFocused:locations:overlayKind:selectedLocationId:weatherData:options:cacheIdentifier:isPreferredForCachedInstance:debugIdentifier:supplementaryOverlay:contentStatusBanner:)();
  sub_1009899B8();
  v82 = 1;
  v167 = v70;
  LODWORD(v77) = v80[v70[12]];
  sub_1008C6EE4();
  v83 = v77 == 1;
  v84 = v165;
  if (v83)
  {
    sub_1008C277C();
    v82 = 0;
  }

  v85 = type metadata accessor for ColorScheme();
  sub_10001B350(v84, v82, 1, v85);
  v86 = v169;
  v87 = v163;
  sub_10011C0F0(v84, v163 + *(v169 + 36), &qword_100CB3688);
  v88 = (*(v162 + 32))(v87, v81, v164);
  __chkstk_darwin(v88);
  v89 = v200;
  v90 = sub_1008C77C0();
  v91 = v168;
  View.buttons(_:buttons:)();
  sub_1000180EC(v87, &qword_100CE3838);
  v92 = *(v89 + *(v198 + 12));
  if (v92)
  {
    v93 = type metadata accessor for InteractiveMapDelegate();
    v94 = swift_allocObject();
    *(v94 + 40) = type metadata accessor for ObservableResolver();
    *(v94 + 48) = &protocol witness table for ObservableResolver;
    *(v94 + 16) = v92;
    *(v94 + 56) = v66;
    v164 = *v200;
    v165 = v200[2];
    v95 = v165;
    *(v94 + 64) = v164;
    *(v94 + 80) = v95;
    v203[3] = v93;
    v203[4] = sub_1008C8004(&qword_100CE3900, type metadata accessor for InteractiveMapDelegate);
    v203[0] = v94;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v201 = v86;
    v202 = v90;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v97 = v171;
    v98 = v172;
    View.delegate(_:)();
    (*(v170 + 8))(v91, v98);
    sub_100006F14(v203);
    sub_10022C350(&qword_100CE3748);
    v99 = v191;
    State.wrappedValue.getter();
    v203[0] = v98;
    v203[1] = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v100 = v175;
    v101 = v174;
    View.performanceTestConditions(_:)();
    sub_1000180EC(v99, &qword_100CAE2A0);
    (*(v173 + 8))(v97, v101);
    sub_1009899B8();
    LOBYTE(v101) = v80[*(v167 + 12)];
    sub_1008C6EE4();
    if (v101)
    {
      v102 = static Edge.Set.all.getter();
    }

    else
    {
      v102 = Edge.Set.init(rawValue:)();
    }

    v103 = v102;
    v104 = static SafeAreaRegions.all.getter();
    v105 = v177;
    (*(v178 + 32))(v177, v100, v179);
    v106 = v105 + *(v176 + 36);
    *v106 = v104;
    *(v106 + 8) = v103;
    v107 = v192;
    static AccessibilityChildBehavior.contain.getter();
    sub_1008C78A8();
    v108 = v181;
    View.accessibilityElement(children:)();
    (*(v193 + 8))(v107, v194);
    sub_10021D9F0(v105);
    v109 = v200;
    v110 = sub_1007DABFC();
    v111 = v199;
    sub_1000BBF54(v109, v199, type metadata accessor for InteractiveMapView);
    v112 = swift_allocObject();
    v113 = v197;
    sub_1008C7374(v111, v112 + v197);
    v114 = v184;
    (*(v182 + 32))(v184, v108, v185);
    v115 = v180;
    *(v114 + *(v180 + 52)) = v110;
    v116 = (v114 + *(v115 + 56));
    *v116 = sub_1008C79F0;
    v116[1] = v112;
    v117 = sub_10003C620();
    sub_1000BBF54(v117, v118, type metadata accessor for InteractiveMapView);
    v119 = swift_allocObject();
    sub_1008C7374(v111, v119 + v113);
    v120 = v187;
    sub_10011C0F0(v114, v187, &qword_100CE3868);
    v121 = (v120 + *(v183 + 36));
    *v121 = sub_1008C7A08;
    v121[1] = v119;
    v121[2] = 0;
    v121[3] = 0;
    v122 = sub_10003C620();
    v198 = type metadata accessor for InteractiveMapView;
    sub_1000BBF54(v122, v123, type metadata accessor for InteractiveMapView);
    v124 = swift_allocObject();
    sub_1008C7374(v111, v124 + v113);
    v125 = v189;
    sub_10011C0F0(v120, v189, &qword_100CE3870);
    v126 = (v125 + *(v186 + 36));
    *v126 = 0;
    v126[1] = 0;
    v126[2] = sub_1008C7A20;
    v126[3] = v124;
    v127 = objc_opt_self();
    v128 = [v127 defaultCenter];
    v129 = v188;
    v130 = v190;
    NSNotificationCenter.publisher(for:object:)();

    v131 = sub_10003C620();
    sub_1000BBF54(v131, v132, type metadata accessor for InteractiveMapView);
    v133 = swift_allocObject();
    v134 = v197;
    sub_1008C7374(v111, v133 + v197);
    sub_10011C0F0(v125, v130, &qword_100CE3878);
    v135 = (v130 + *(v129 + 56));
    *v135 = sub_1008C7AA4;
    v135[1] = v133;
    v136 = [v127 defaultCenter];
    v137 = sub_10022C350(&qword_100CE3910);
    v138 = v195;
    NSNotificationCenter.publisher(for:object:)();

    v139 = sub_10003C620();
    sub_1000BBF54(v139, v140, v198);
    v141 = swift_allocObject();
    sub_1008C7374(v111, v141 + v134);
    result = sub_10011C0F0(v130, v138, &qword_100CE3880);
    v143 = (v138 + *(v137 + 56));
    *v143 = sub_1008C7B34;
    v143[1] = v141;
  }

  else
  {
    type metadata accessor for ObservableResolver();
    sub_1008C8004(&qword_100CB0468, &type metadata accessor for ObservableResolver);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1008C3D5C@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = type metadata accessor for InteractiveMapView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000BBF54(v1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMapView);
  type metadata accessor for MainActor();
  v5 = static MainActor.shared.getter();
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_1008C7374(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1000BBF54(v1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMapView);
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_1008C7374(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6);
  type metadata accessor for WeatherMapOverlayKind();
  return Binding.init(get:set:)();
}

uint64_t sub_1008C3F10()
{
  v1 = type metadata accessor for InteractiveMapView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_1000BBF54(v0, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMapView);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_1008C7374(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1000BBF54(v0, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMapView);
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_1008C7374(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5);
  sub_10022C350(&qword_100CA6078);
  Binding.init(get:set:)();
  return v10;
}

uint64_t sub_1008C40D4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3[1];
  *a1 = *a3;
  a1[1] = v6;
  v7 = *(type metadata accessor for WeatherData(0) + 24);
  v8 = type metadata accessor for WeatherDataModel();
  (*(*(v8 - 8) + 16))(a2, a4 + v7, v8);
}

uint64_t sub_1008C4168@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CE38A0);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = type metadata accessor for InteractiveMapViewModel();
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1009899B8();
  v9 = v8[*(v6 + 40)];
  sub_1008C6EE4();
  if (v9 == 1)
  {
    sub_1008C42E8(v4);
    v10 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v11 = &v4[*(v2 + 36)];
    *v11 = v10;
    *(v11 + 1) = v12;
    *(v11 + 2) = v13;
    *(v11 + 3) = v14;
    *(v11 + 4) = v15;
    v11[40] = 0;
    sub_10011C0F0(v4, a1, &qword_100CE38A0);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return sub_10001B350(a1, v16, 1, v2);
}

uint64_t sub_1008C42E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for InteractiveMapView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_1000BBF54(v2, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMapView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1008C7374(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = sub_10022C350(&qword_100CA6F50);
  v26[10] = sub_10071E894;
  v26[11] = 0;
  LOBYTE(v26[12]) = 0;
  v26[0] = v9;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, &v24, &unk_100CAF270);
  if (v25)
  {
    sub_100013188(&v24, &v26[3]);
    v26[1] = sub_1008C7BC8;
    v26[2] = v8;
    v11 = Dictionary.init(dictionaryLiteral:)();
    v26[8] = _swiftEmptyArrayStorage;
    v26[9] = v11;
    memcpy(v27, v26, 0x61uLL);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v12 = [objc_opt_self() secondarySystemBackgroundColor];
    v13 = Color.init(uiColor:)();
    v14 = static Edge.Set.all.getter();
    v15 = (a1 + *(sub_10022C350(&qword_100CE38B0) + 36));
    v16 = *(type metadata accessor for RoundedRectangle() + 20);
    v17 = enum case for RoundedCornerStyle.continuous(_:);
    v18 = type metadata accessor for RoundedCornerStyle();
    (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
    __asm { FMOV            V0.2D, #16.0 }

    *v15 = _Q0;
    *&v15[*(sub_10022C350(&qword_100CB34E0) + 36)] = 256;
    result = memcpy(a1, v27, 0x98uLL);
    *(a1 + 152) = v13;
    *(a1 + 160) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008C45FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InteractiveMapViewModel();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1009899B8();
  sub_1000302D8(&v7[*(v5 + 88)], a2, &qword_100CA5010);
  sub_1008C6EE4();
  v8 = *(type metadata accessor for InteractiveMapView() + 36);
  v9 = type metadata accessor for MapContentStatusBanner();
  sub_10042F370(a1 + v8, a2 + *(v9 + 20));
  v10 = *(v9 + 24);
  *(a2 + v10) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1008C4724(uint64_t a1)
{
  v46 = type metadata accessor for ButtonGroup.Alignment();
  v2 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ButtonGroup();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InteractiveMapViewModel();
  __chkstk_darwin(v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1009899B8();
  v11 = v10[*(v8 + 32)];
  sub_1008C6EE4();
  v12 = &off_100A2C000;
  if (v11)
  {
    v13 = static ButtonGroupsBuilder.buildOptional(_:)();
  }

  else
  {
    v44 = v4;
    v14 = static Solarium.isEnabled.getter();
    v15 = v2;
    v16 = enum case for ButtonGroup.Alignment.trailing(_:);
    v42 = v15;
    v17 = *(v15 + 104);
    v18 = (v17)(v47, enum case for ButtonGroup.Alignment.trailing(_:), v46);
    v43 = &v40;
    __chkstk_darwin(v18);
    *(&v40 - 2) = a1;
    v45 = (v5 + 8);
    if (v14)
    {
      v19 = v16;
      v41 = v17;
      v21 = v46;
      v20 = v47;
      ButtonGroup.init(alignment:buttons:)();
      v43 = static ButtonGroupsBuilder.buildExpression(_:)();
      v22 = v44;
      v23 = *v45;
      (*v45)(v7, v44);
      sub_1009899B8();
      v24 = v10[*(v8 + 44)];
      sub_1008C6EE4();
      if (v24 == 1)
      {
        v41(v20, v19, v21);
        static ButtonGroup.singleRoundButton(alignment:button:)();
        (*(v42 + 8))(v20, v21);
        v25 = static ButtonGroupsBuilder.buildExpression(_:)();
        v23(v7, v22);
        sub_10022C350(&qword_100CB34E8);
        v26 = swift_allocObject();
        v12 = &off_100A2C000;
        *(v26 + 16) = xmmword_100A2C3F0;
        *(v26 + 32) = v25;
        static ButtonGroupsBuilder.buildBlock(_:)();

        v27 = static ButtonGroupsBuilder.buildOptional(_:)();
      }

      else
      {
        v27 = static ButtonGroupsBuilder.buildOptional(_:)();
        v12 = &off_100A2C000;
      }

      sub_10022C350(&qword_100CB34E8);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100A2D320;
      *(v35 + 32) = v43;
      *(v35 + 40) = v27;
      static ButtonGroupsBuilder.buildBlock(_:)();

      v34 = static ButtonGroupsBuilder.buildEither(first:)();
    }

    else
    {
      v28 = v47;
      ButtonGroup.init(alignment:buttons:)();
      v29 = static ButtonGroupsBuilder.buildExpression(_:)();
      v30 = v44;
      v31 = *v45;
      (*v45)(v7, v44);
      v17(v28, v16, v46);
      ButtonGroup.init(alignment:buttons:)();
      v32 = static ButtonGroupsBuilder.buildExpression(_:)();
      v31(v7, v30);
      sub_10022C350(&qword_100CB34E8);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100A2D320;
      *(v33 + 32) = v29;
      *(v33 + 40) = v32;
      static ButtonGroupsBuilder.buildBlock(_:)();

      v34 = static ButtonGroupsBuilder.buildEither(second:)();
      v12 = &off_100A2C000;
    }

    sub_10022C350(&qword_100CB34E8);
    v36 = swift_allocObject();
    *(v36 + 16) = *(v12 + 63);
    *(v36 + 32) = v34;
    static ButtonGroupsBuilder.buildBlock(_:)();

    v13 = static ButtonGroupsBuilder.buildOptional(_:)();
  }

  sub_10022C350(&qword_100CB34E8);
  v37 = swift_allocObject();
  *(v37 + 16) = *(v12 + 63);
  *(v37 + 32) = v13;
  v38 = static ButtonGroupsBuilder.buildBlock(_:)();

  return v38;
}

uint64_t sub_1008C4CDC(uint64_t a1)
{
  v2 = type metadata accessor for InteractiveMapView();
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for InteractiveMapViewModel();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for ButtonGroup.Button();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonGroup.Button.overlayMenu.getter();
  v16 = static ButtonsBuilder.buildExpression(_:)();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_1009899B8();
  sub_1008C6EE4();
  sub_1000BBF54(a1, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMapView);
  v10 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v11 = swift_allocObject();
  sub_1008C7374(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  static ButtonGroup.Button.currentLocation(isPermissionGranted:openSettings:)();

  v12 = static ButtonsBuilder.buildExpression(_:)();
  v9(v8, v5);
  sub_10022C350(&qword_100CB34F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100A2D320;
  *(v13 + 32) = v16;
  *(v13 + 40) = v12;
  v14 = static ButtonsBuilder.buildBlock(_:)();

  return v14;
}

uint64_t sub_1008C4FA0(uint64_t a1)
{
  v2 = type metadata accessor for InteractiveMapView();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for InteractiveMapViewModel();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ButtonGroup.Button();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1009899B8();
  v23[1] = v7[*(v5 + 44)];
  sub_1008C6EE4();
  sub_1000BBF54(a1, v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InteractiveMapView);
  v12 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v13 = swift_allocObject();
  sub_1008C7374(v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  static ButtonGroup.Button.currentLocation(isPermissionGranted:openSettings:)();

  v14 = static ButtonsBuilder.buildExpression(_:)();
  v15 = *(v9 + 8);
  v15(v11, v8);
  sub_1009899B8();
  v16 = v7[*(v5 + 52)];
  sub_1008C6EE4();
  if (v16 == 1)
  {
    static ButtonGroup.Button.locationPicker.getter();
    v17 = static ButtonsBuilder.buildExpression(_:)();
    v15(v11, v8);
    sub_10022C350(&qword_100CB34F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100A2C3F0;
    *(v18 + 32) = v17;
    static ButtonsBuilder.buildBlock(_:)();

    v19 = static ButtonsBuilder.buildOptional(_:)();
  }

  else
  {
    v19 = static ButtonsBuilder.buildOptional(_:)();
  }

  sub_10022C350(&qword_100CB34F0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100A2D320;
  *(v20 + 32) = v14;
  *(v20 + 40) = v19;
  v21 = static ButtonsBuilder.buildBlock(_:)();

  return v21;
}

uint64_t sub_1008C52F0()
{
  v0 = type metadata accessor for ButtonGroup.Button();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonGroup.Button.overlayMenu.getter();
  v4 = static ButtonsBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10022C350(&qword_100CB34F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  *(v5 + 32) = v4;
  v6 = static ButtonsBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1008C5404(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAE2A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for InteractiveMapView();
  sub_1000302D8(a1, v4, &qword_100CAE2A0);
  sub_10022C350(&qword_100CE3748);
  return State.wrappedValue.setter();
}

uint64_t sub_1008C54D4()
{
  v0 = type metadata accessor for WeatherMapTrackingState(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v13 - v4;
  v6 = type metadata accessor for InteractiveMapViewModel();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1009899B8();
  sub_1000BBF54(&v9[*(v7 + 84)], v5, type metadata accessor for WeatherMapTrackingState);
  sub_1008C6EE4();
  v10 = sub_10022C350(&qword_100CA6660);
  sub_10001B350(v2, 1, 3, v10);
  v11 = sub_1000BBBA8(v5, v2);
  sub_1008C6EE4();
  result = sub_1008C6EE4();
  if (v11)
  {
    return sub_1009BEE08();
  }

  return result;
}

uint64_t sub_1008C5670()
{
  v0 = type metadata accessor for WeatherMapTrackingState(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InteractiveMapViewModel();
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WeatherMapOverlayKind();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1009899B8();
  sub_1000BBF54(&v6[*(v4 + 84)], v2, type metadata accessor for WeatherMapTrackingState);
  sub_1008C6EE4();
  v11 = sub_10022C350(&qword_100CA6660);
  if (sub_100024D10(v2, 3, v11))
  {
    return sub_1008C6EE4();
  }

  v13 = *v2;
  (*(v8 + 32))(v10, &v2[*(v11 + 48)], v7);
  sub_1009BEFA4(v13, v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1008C5898()
{
  v0 = type metadata accessor for WeatherMapOverlayKind();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InteractiveMapViewModel();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_1009899B8();
  LOBYTE(v5) = v10[*(v5 + 56)];
  sub_1008C6EE4();
  sub_1009899B8();
  (*(v1 + 16))(v3, v7, v0);
  sub_1008C6EE4();
  sub_1009BEFA4(v5, v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1008C5A50@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for InteractiveMapViewModel();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1009899B8();
  v6 = &v5[*(v3 + 32)];
  v8 = *v6;
  v7 = *(v6 + 1);

  result = sub_1008C6EE4();
  *a1 = v8;
  a1[1] = v7;
  return result;
}

uint64_t sub_1008C5B10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for InteractiveMapViewModel();
  __chkstk_darwin(v6);
  v43 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v41 - v9;
  v11 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v11 - 8);
  v44 = v41 - v12;
  v13 = type metadata accessor for Location();
  v48 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v45 = v41 - v17;
  v18 = a1[1];
  v46 = *a1;
  v47 = v18;
  v19 = *(a4 + 24);
  v41[1] = a4;
  v41[2] = v19;
  sub_1009899B8();
  v42 = v6;
  v20 = *&v10[*(v6 + 20)];

  v21 = v13;
  result = sub_1008C6EE4();
  v23 = *(v20 + 16);
  if (!v23)
  {
LABEL_13:

    v32 = 1;
    v33 = v44;
LABEL_16:
    sub_10001B350(v33, v32, 1, v21);
    if (sub_100024D10(v33, 1, v21) == 1)
    {
      return sub_1000180EC(v33, &qword_100CA65D8);
    }

    (*(v48 + 32))(v45, v33, v21);
    v34 = v43;
    sub_1009899B8();
    v35 = &v34[*(v42 + 24)];
    v37 = *v35;
    v36 = *(v35 + 1);

    sub_1008C6EE4();
    if (v47)
    {
      if (v46 == v37 && v47 == v36)
      {

        return (*(v48 + 8))(v45, v21);
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v39)
      {
        return (*(v48 + 8))(v45, v21);
      }
    }

    else
    {
    }

    v40 = v45;
    sub_1009BE7D8(v45);
    return (*(v48 + 8))(v40, v21);
  }

  v24 = 0;
  v25 = v20 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
  v26 = (v48 + 8);
  v27 = v21;
  while (v24 < *(v20 + 16))
  {
    (*(v48 + 16))(v15, v25 + *(v48 + 72) * v24, v21);
    v28 = Location.id.getter();
    if (v47)
    {
      if (v28 == v46 && v47 == v29)
      {

        goto LABEL_15;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {

        v21 = v27;
LABEL_15:
        v33 = v44;
        (*(v48 + 32))(v44, v15, v21);
        v32 = 0;
        goto LABEL_16;
      }
    }

    else
    {
    }

    ++v24;
    v21 = v27;
    result = (*v26)(v15, v27);
    if (v23 == v24)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1008C5F68@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for InteractiveMapViewModel();
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1009899B8();
  v5 = type metadata accessor for WeatherMapOverlayKind();
  (*(*(v5 - 8) + 16))(a1, v4, v5);
  return sub_1008C6EE4();
}

uint64_t sub_1008C6040(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapOverlayKind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InteractiveMapViewModel();
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1009899B8();
  (*(v3 + 16))(v5, v8, v2);
  sub_1008C6EE4();
  sub_1008C8004(&qword_100CE3918, &type metadata accessor for WeatherMapOverlayKind);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v3 + 8))(v5, v2);
  if ((v9 & 1) == 0)
  {
    return sub_1009BEC10(a1);
  }

  return result;
}

uint64_t sub_1008C61FC@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v20._object = 0x8000000100ADCCB0;
  v4._object = 0x8000000100ADCC90;
  v20._countAndFlagsBits = 0xD000000000000054;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v20);

  v7 = [v2 mainBundle];
  v21._object = 0x8000000100ADF580;
  v8._object = 0x8000000100ADF510;
  v21._countAndFlagsBits = 0xD000000000000036;
  v8._countAndFlagsBits = 0x100000000000006ALL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v21);

  v10 = static String.localizedStringWithFormat(_:_:)();
  v12 = v11;

  v13 = sub_100737E14();
  v15 = v14;
  static Color.blue.getter();
  v16 = Color.hex.getter();
  v18 = v17;

  *a1 = 1;
  *(a1 + 8) = 0x616C732E69666977;
  *(a1 + 16) = 0xEA00000000006873;
  *(a1 + 24) = v6;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12;
  *(a1 + 56) = 0;
  *(a1 + 64) = v13;
  *(a1 + 72) = v15;
  *(a1 + 80) = v16;
  *(a1 + 88) = v18;
  return result;
}

void *sub_1008C63B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1000161C0(a1, a1[3]);
  sub_1008C61FC(v5);
  sub_10042F370(*v3 + 16, a2);
  return memcpy((a2 + 40), v5, 0x60uLL);
}

uint64_t sub_1008C6424()
{
  sub_1000161C0(v0 + 2, v0[5]);
  sub_10022C350(&qword_100CC55F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  sub_1000161C0(v0 + 2, v0[5]);
  sub_10022C350(&qword_100CB4460);

  swift_unknownObjectRetain();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v5 = v23;
  if (!v23)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v25;
  sub_1000161C0(v0 + 2, v0[5]);
  sub_10022C350(&qword_100CB4458);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(v0 + 2, v0[5]);
  sub_10022C350(&qword_100CB4468);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    v7 = type metadata accessor for LocationRowPreviewViewController(0);
    ObjectType = swift_getObjectType();
    v9 = sub_10002D7F8(v26, v27);
    v10 = __chkstk_darwin(v9);
    v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v12, v10);
    v14 = type metadata accessor for LocationRowViewModelProvider();
    sub_1006270B4(v12, v2, v3, v4, v5, v20, v17, v7, v14, ObjectType, &off_100C5F610, v6, v17[0], v17[1], v17[2], v18, v19, v20[0], v20[1], v20[2], v21, v22, v23, v24);
    v16 = v15;
    sub_100006F14(v26);
    sub_1008C8004(&qword_100CCCDD8, type metadata accessor for LocationRowPreviewViewController);
    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1008C6708()
{
  sub_1000161C0((v0 + 16), *(v0 + 40));
  sub_10022C350(&qword_100CB97B0);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = v2;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008C67D0(uint64_t a1)
{
  v2 = type metadata accessor for Location();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherMap.LocationAction();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for WeatherMap.LocationAction.addLocation(_:))
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    v12 = sub_1008BC004(v5);
    sub_1009BE5A4(v5, v12 & 1);
    return (*(v3 + 8))(v5, v2);
  }

  if (v11 == enum case for WeatherMap.LocationAction.viewLocation(_:))
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    sub_1009BE7F4(v5);
    return (*(v3 + 8))(v5, v2);
  }

  if (v11 == enum case for WeatherMap.LocationAction.openLocationInMaps(_:))
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    sub_1009BE948(v5);
    return (*(v3 + 8))(v5, v2);
  }

  if (v11 == enum case for WeatherMap.LocationAction.none(_:))
  {
    return sub_1009BE4DC();
  }

  if (v11 == enum case for WeatherMap.LocationAction.dismiss(_:))
  {
    return sub_1009BED58();
  }

  sub_10022C350(&qword_100CB97B8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100A2C3F0;
  *(v14 + 56) = &type metadata for String;
  strcpy((v14 + 32), "Unknown action");
  *(v14 + 47) = -18;
  print(_:separator:terminator:)();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1008C6B4C(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapTrackingState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InteractiveMapViewModel();
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  sub_1009899B8();
  sub_1000BBF54(&v11[*(v6 + 84)], v4, type metadata accessor for WeatherMapTrackingState);
  sub_1008C6EE4();
  sub_1009899B8();
  v12 = &v8[*(v6 + 32)];
  v13 = *v12;
  v14 = v12[1];

  sub_1008C6EE4();
  sub_1009BF228(a1, v4, v13, v14);

  return sub_1008C6EE4();
}

uint64_t sub_1008C6D24()
{
  sub_100006F14(v0 + 16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1008C6D5C()
{
  sub_1008C6D24();

  return swift_deallocClassInstance();
}

uint64_t sub_1008C6EE4()
{
  v1 = sub_100017580();
  v2(v1);
  sub_1000037E8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t type metadata accessor for InteractiveMapView()
{
  result = qword_100CE37A8;
  if (!qword_100CE37A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008C6FAC()
{
  sub_100081B54(319, &qword_100CE37B8);
  if (v0 <= 0x3F)
  {
    sub_1008C71F8();
    if (v1 <= 0x3F)
    {
      sub_100081B54(319, &qword_100CE37C8);
      if (v2 <= 0x3F)
      {
        sub_100081B54(319, &qword_100CE37D0);
        if (v3 <= 0x3F)
        {
          type metadata accessor for WeatherMapDisplayMode();
          if (v4 <= 0x3F)
          {
            sub_100081B54(319, &qword_100CA5088);
            if (v5 <= 0x3F)
            {
              sub_1008C729C(319, &unk_100CE37D8, &qword_100CAE2A0, &unk_100A96750, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_100061960();
                if (v7 <= 0x3F)
                {
                  sub_1008C729C(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
                  if (v8 <= 0x3F)
                  {
                    sub_10009BE44(319, &qword_100CA3C80);
                    if (v9 <= 0x3F)
                    {
                      sub_10009BE44(319, &qword_100CE0E20);
                      if (v10 <= 0x3F)
                      {
                        sub_1008C7300();
                        if (v11 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_1008C71F8()
{
  if (!qword_100CE37C0)
  {
    sub_10022E824(&qword_100CA4AF0);
    sub_100006F64(&qword_100CA4AF8, &qword_100CA4AF0);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE37C0);
    }
  }
}

void sub_1008C729C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1008C7300()
{
  if (!qword_100CB3BF0)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB3BF0);
    }
  }
}

uint64_t sub_1008C7374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveMapView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008C7408(uint64_t (*a1)(uint64_t))
{
  sub_10000C76C();
  v2 = type metadata accessor for InteractiveMapView();
  sub_100003810(v2);
  sub_10001164C();

  return a1(v1 + v3);
}

unint64_t sub_1008C7480()
{
  result = qword_100CE3890;
  if (!qword_100CE3890)
  {
    sub_10022E824(&qword_100CE3888);
    sub_1008C7504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE3890);
  }

  return result;
}

unint64_t sub_1008C7504()
{
  result = qword_100CE3898;
  if (!qword_100CE3898)
  {
    sub_10022E824(&qword_100CE38A0);
    sub_1008C7590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE3898);
  }

  return result;
}

unint64_t sub_1008C7590()
{
  result = qword_100CE38A8;
  if (!qword_100CE38A8)
  {
    sub_10022E824(&qword_100CE38B0);
    sub_1008C7648();
    sub_100006F64(&qword_100CB80A0, &qword_100CB34E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE38A8);
  }

  return result;
}

unint64_t sub_1008C7648()
{
  result = qword_100CE38B8;
  if (!qword_100CE38B8)
  {
    sub_10022E824(&qword_100CE38C0);
    sub_1008C7700();
    sub_100006F64(&qword_100CC0538, &qword_100CC0540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE38B8);
  }

  return result;
}

unint64_t sub_1008C7700()
{
  result = qword_100CE38C8;
  if (!qword_100CE38C8)
  {
    sub_10022E824(&qword_100CE38D0);
    sub_100006F64(&qword_100CA6E80, &qword_100CA6E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE38C8);
  }

  return result;
}

unint64_t sub_1008C77C0()
{
  result = qword_100CE38E8;
  if (!qword_100CE38E8)
  {
    sub_10022E824(&qword_100CE3838);
    sub_1008C8004(&qword_100CBEDD8, &type metadata accessor for WeatherMap);
    sub_100006F64(&qword_100CE38F0, &qword_100CE38F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE38E8);
  }

  return result;
}

unint64_t sub_1008C78A8()
{
  result = qword_100CE3908;
  if (!qword_100CE3908)
  {
    sub_10022E824(&qword_100CE3858);
    sub_10022E824(&qword_100CE3848);
    sub_10022E824(&qword_100CE3840);
    sub_10022E824(&qword_100CE3838);
    sub_1008C77C0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE3908);
  }

  return result;
}

uint64_t sub_1008C7A38(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for InteractiveMapView();
  sub_100003810(v2);
  sub_10001164C();

  return a1(v1 + v3);
}

uint64_t sub_1008C7ABC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_100017580();
  v4 = type metadata accessor for InteractiveMapView();
  sub_100003810(v4);
  sub_10001164C();

  return a2(v2, v3 + v5);
}

uint64_t sub_1008C7B34()
{
  v0 = type metadata accessor for InteractiveMapView();
  sub_100003810(v0);
  sub_10001164C();
  return sub_1009BEE08();
}

uint64_t sub_1008C7B98()
{
  type metadata accessor for InteractiveMapView();

  return sub_1008CA570(1);
}

void *sub_1008C7BC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InteractiveMapView();
  sub_100003810(v4);
  sub_10001164C();

  return sub_1008C63B8(a1, a2);
}

uint64_t sub_1008C7C40()
{
  sub_10000C76C();
  v0 = type metadata accessor for InteractiveMapView();
  sub_100003810(v0);
  sub_1000138B8();

  return sub_1008C5A50(v1);
}

uint64_t sub_1008C7C9C()
{
  sub_100017580();
  v0 = type metadata accessor for InteractiveMapView();
  sub_100003810(v0);
  v1 = sub_100037B1C();

  return sub_1008C5B10(v1, v2, v3, v4);
}

uint64_t sub_1008C7CF8()
{
  sub_10000C76C();
  v0 = type metadata accessor for InteractiveMapView();
  sub_100003810(v0);
  sub_1000138B8();

  return sub_1008C5F68(v1);
}

uint64_t sub_1008C7D54()
{
  type metadata accessor for InteractiveMapView();
  sub_100003A0C();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + v4;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v6 = v0[8];
  type metadata accessor for WeatherMapDisplayMode();
  sub_1000037E8();
  (*(v7 + 8))(v1 + v4 + v6);
  sub_10000EE8C();
  v8 = v1 + v4 + v0[11];
  v9 = type metadata accessor for WeatherMapPerformanceTestConditions();
  if (!sub_100020660(v9))
  {
    sub_100003B20();
    (*(v10 + 8))(v8, v2);
  }

  sub_10022C350(&qword_100CE3748);

  v11 = v0[13];
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100017854(v5 + v11))
    {
      sub_100003B20();
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  sub_100028D10();
  sub_10022C350(&qword_100CB3B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorScheme();
    sub_1000037E8();
    (*(v14 + 8))(v0 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1008C7FA8()
{
  sub_100017580();
  v0 = type metadata accessor for InteractiveMapView();
  sub_100003810(v0);
  v1 = sub_100037B1C();

  return sub_1008C6040(v1);
}

uint64_t sub_1008C8004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008C8050@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CACF38);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v46 - v5;
  v50 = &v46 - v5;
  v7 = type metadata accessor for FeelsLikeComponentViewModel(0);
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  sub_1000037D8();
  v11 = (v10 - v9);
  v12 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v16 = (v15 - v14);
  sub_1008C84AC(a1, v15 - v14, type metadata accessor for FeelsLikeComponentPreprocessedDataModel);
  v17 = v16[2];
  v51 = v16[3];
  v18 = v16[4];
  v19 = v16[5];
  v48 = v17;
  v49 = v18;
  sub_1001163D0(v16 + *(v13 + 36), v6);
  v20 = (v16 + *(v13 + 40));
  v21 = v20[1];
  v47 = *v20;
  sub_10022C350(&qword_100CA7300);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100A2D320;
  if (v19)
  {
    v23 = v18;
  }

  else
  {
    v23 = 0;
  }

  if (v19)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v52 = v17;
  v53 = v51;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v25._countAndFlagsBits = v23;
  v25._object = v24;
  String.append(_:)(v25);

  v26 = v53;
  *(v22 + 32) = v52;
  *(v22 + 40) = v26;
  v27 = v47;
  *(v22 + 48) = v47;
  *(v22 + 56) = v21;
  v52 = v22;

  sub_10022C350(&qword_100CCC930);
  sub_1001141C8();
  v28 = BidirectionalCollection<>.joined(separator:)();
  v30 = v29;

  v31 = v50;
  v32 = v51;
  *v11 = v48;
  v11[1] = v32;
  v11[2] = v49;
  v11[3] = v19;
  sub_100736098(v31, v11 + v8[8]);
  v33 = (v11 + v8[9]);
  *v33 = v27;
  v33[1] = v21;
  v34 = (v11 + v8[10]);
  *v34 = v28;
  v34[1] = v30;
  v35 = v16[1];
  *a2 = *v16;
  *(a2 + 8) = v35;
  *(a2 + 16) = 0x656D6F6D72656874;
  *(a2 + 24) = 0xEB00000000726574;
  *(a2 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v36 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1008C84AC(v11, a2 + v36[5], type metadata accessor for FeelsLikeComponentViewModel);
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v37 = a2 + v36[8];
  v38 = *(sub_10022C350(&qword_100CA6690) + 48);
  v39 = enum case for TemperatureChartKind.feelsLike(_:);
  type metadata accessor for TemperatureChartKind();
  sub_1000037E8();
  (*(v40 + 104))(v37, v39);
  v41 = enum case for DetailCondition.conditions(_:);
  type metadata accessor for DetailCondition();
  sub_1000037E8();
  (*(v42 + 104))(v37, v41);
  *(v37 + v38) = 0;
  v43 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v37, 0, 1, v43);
  sub_10013D288();

  v44 = Dictionary.init(dictionaryLiteral:)();
  sub_1008C850C(v11, type metadata accessor for FeelsLikeComponentViewModel);
  result = sub_1008C850C(v16, type metadata accessor for FeelsLikeComponentPreprocessedDataModel);
  *(a2 + v36[6]) = 256;
  *(a2 + v36[7]) = v44;
  return result;
}

uint64_t sub_1008C84AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1008C850C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1008C8564@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4458);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    sub_1000161C0(a1, a1[3]);
    result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
    if (v6 != 2)
    {
      v5 = type metadata accessor for WeatherConditionBackgroundModelFactory();
      swift_allocObject();
      result = WeatherConditionBackgroundModelFactory.init(gradientManager:automationEnabled:isDemoPresetActive:)();
      a2[3] = v5;
      a2[4] = &protocol witness table for WeatherConditionBackgroundModelFactory;
      *a2 = result;
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

unint64_t sub_1008C8678@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CE3A70);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CE3A78);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      type metadata accessor for WeatherConditionBackgroundManager();
      swift_allocObject();
      v5 = WeatherConditionBackgroundManager.init(configurationManager:templateManager:)();
      result = sub_100067704();
      *a2 = v5;
      a2[1] = &protocol witness table for WeatherConditionBackgroundManager;
      a2[2] = result;
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

uint64_t sub_1008C87A4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1008C87F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1008C8848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v71 = a1;
  v70 = a2;
  v66 = type metadata accessor for ConditionDetailMapView();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  v6 = type metadata accessor for ConditionDetailMapViewModel();
  __chkstk_darwin(v6 - 8);
  sub_1000037D8();
  v64[0] = v8 - v7;
  v64[1] = sub_10022C350(&qword_100CE3CF0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = v64 - v10;
  v69 = sub_10022C350(&qword_100CE3CF8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v65 = v64 - v13;
  v14 = type metadata accessor for WindCategoryTableView(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = (v17 - v16);
  v67 = sub_10022C350(&qword_100CE3D00);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v19);
  v21 = v64 - v20;
  sub_10022C350(&qword_100CE3D08);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = v64 - v23;
  v68 = sub_10022C350(&qword_100CE3D10);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = v64 - v26;
  type metadata accessor for ConditionDetailDynamicContentIdentifier();
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = v30 - v29;
  sub_100010F38();
  sub_1008C9698(v71, v31, v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v55 = v64[0];
      sub_1008C9410(v31, v64[0]);
      v56 = v66;
      sub_1008C9698(v55, v5 + *(v66 + 20), type metadata accessor for ConditionDetailMapViewModel);
      *v5 = swift_getKeyPath();
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v57 = (v5 + *(v56 + 24));
      *v57 = 0;
      v57[1] = 0;
      sub_1008C9698(v5, v11, type metadata accessor for ConditionDetailMapView);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CE3D18);
      sub_1008C9474();
      sub_10001A120();
      sub_1008C9594(v58, v59);
      v60 = v65;
      _ConditionalContent<>.init(storage:)();
      v61 = sub_100075210();
      sub_100035AD0(v61, v62, v63);
      sub_1000234A8();
      swift_storeEnumTagMultiPayload();
      sub_1008C94D8();
      sub_1008C95DC();
      sub_10001FBF8();
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v60, &qword_100CE3CF8);
      sub_1008C96F8(v5, type metadata accessor for ConditionDetailMapView);
      sub_1000150DC();
      v41 = v55;
      return sub_1008C96F8(v41, v40);
    case 2u:
      swift_storeEnumTagMultiPayload();
      sub_100004DE0();
      sub_1008C9594(v42, v43);
      _ConditionalContent<>.init(storage:)();
      v44 = &qword_100CE3D10;
      v45 = sub_100075210();
      sub_100035AD0(v45, v46, v47);
      sub_1000234A8();
      swift_storeEnumTagMultiPayload();
      sub_1008C94D8();
      sub_1008C95DC();
      sub_10001FBF8();
      _ConditionalContent<>.init(storage:)();
      v48 = v27;
      return sub_1000180EC(v48, v44);
    case 3u:
      v49 = sub_10022C350(&qword_100CB19E8);
      __src[10] = sub_10071E948;
      __src[11] = 0;
      LOBYTE(__src[12]) = 0;
      __src[0] = v49;
      if (qword_100CA1F40 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      result = sub_100035AD0(&xmmword_100D8FB90, __dst, &unk_100CAF270);
      if (*&__dst[24])
      {
        sub_100013188(__dst, &__src[3]);
        __src[1] = sub_1005D31D8;
        __src[2] = 0;
        v51 = Dictionary.init(dictionaryLiteral:)();
        __src[8] = _swiftEmptyArrayStorage;
        __src[9] = v51;
        memcpy(__dst, __src, sizeof(__dst));
        v44 = &qword_100CE3D18;
        sub_100035AD0(__dst, v11, &qword_100CE3D18);
        swift_storeEnumTagMultiPayload();
        sub_10022C350(&qword_100CE3D18);
        sub_1008C9474();
        sub_10001A120();
        sub_1008C9594(v52, v53);
        v54 = v65;
        _ConditionalContent<>.init(storage:)();
        sub_100035AD0(v54, v21, &qword_100CE3CF8);
        sub_1000234A8();
        swift_storeEnumTagMultiPayload();
        sub_1008C94D8();
        sub_1008C95DC();
        sub_10001FBF8();
        _ConditionalContent<>.init(storage:)();
        sub_1000180EC(v54, &qword_100CE3CF8);
        v48 = __dst;
        return sub_1000180EC(v48, v44);
      }

      else
      {
        __break(1u);
      }

      return result;
    default:
      v33 = *v31;
      v71 = *(v31 + 8);
      *v18 = swift_getKeyPath();
      sub_10022C350(&qword_100CA2E38);
      swift_storeEnumTagMultiPayload();
      v34 = v18 + *(v14 + 20);
      *v34 = v33;
      *(v34 + 8) = v71;
      sub_1008C9698(v18, v24, type metadata accessor for WindCategoryTableView);
      swift_storeEnumTagMultiPayload();
      sub_100004DE0();
      sub_1008C9594(v35, v36);
      _ConditionalContent<>.init(storage:)();
      v37 = sub_100075210();
      sub_100035AD0(v37, v38, v39);
      sub_1000234A8();
      swift_storeEnumTagMultiPayload();
      sub_1008C94D8();
      sub_1008C95DC();
      sub_10001FBF8();
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v27, &qword_100CE3D10);
      v40 = type metadata accessor for WindCategoryTableView;
      v41 = v18;
      return sub_1008C96F8(v41, v40);
  }
}

uint64_t sub_1008C90F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailMapViewModel();
  __chkstk_darwin(v4 - 8);
  sub_1000037D8();
  v7 = (v6 - v5);
  type metadata accessor for ConditionDetailDynamicContentIdentifier();
  sub_1000037E8();
  v9 = __chkstk_darwin(v8);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = (&v30 - v12);
  sub_10022C350(&qword_100CE3CE8);
  sub_100003828();
  v15 = __chkstk_darwin(v14);
  v17 = &v30 - v16;
  v18 = (&v30 + *(v15 + 56) - v16);
  sub_1008C9698(a1, &v30 - v16, type metadata accessor for ConditionDetailDynamicContentIdentifier);
  sub_1008C9698(a2, v18, type metadata accessor for ConditionDetailDynamicContentIdentifier);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100010F38();
      sub_1008C9698(v17, v11, v23);
      if (sub_100013E60() != 1)
      {
        sub_1000150DC();
        sub_1008C96F8(v11, v25);
        goto LABEL_11;
      }

      sub_1008C9410(v18, v7);
      v24 = sub_1007EDCA4(v11, v7);
      sub_1008C96F8(v7, type metadata accessor for ConditionDetailMapViewModel);
      sub_1008C96F8(v11, type metadata accessor for ConditionDetailMapViewModel);
      sub_100006AE8();
      return v24 & 1;
    case 2u:
      if (sub_100013E60() != 2)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    case 3u:
      if (sub_100013E60() == 3)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    default:
      sub_100010F38();
      sub_1008C9698(v17, v13, v19);
      v21 = *v13;
      v20 = v13[1];
      v22 = v13[2];
      if (sub_100013E60())
      {

LABEL_11:
        sub_1000180EC(v17, &qword_100CE3CE8);
        goto LABEL_12;
      }

      v26 = v18[2];
      v27 = v21 == *v18 && v20 == v18[1];
      if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        goto LABEL_22;
      }

      v28 = sub_1009E9E08(v22, v26);

      if ((v28 & 1) == 0)
      {
LABEL_22:
        sub_100006AE8();
LABEL_12:
        v24 = 0;
        return v24 & 1;
      }

LABEL_19:
      sub_100006AE8();
      v24 = 1;
      return v24 & 1;
  }
}

uint64_t sub_1008C9410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailMapViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008C9474()
{
  result = qword_100CE3D20;
  if (!qword_100CE3D20)
  {
    sub_10022E824(&qword_100CE3D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE3D20);
  }

  return result;
}

unint64_t sub_1008C94D8()
{
  result = qword_100CE3D30;
  if (!qword_100CE3D30)
  {
    sub_10022E824(&qword_100CE3D10);
    sub_1008C9594(&qword_100CE3D38, type metadata accessor for WindCategoryTableView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE3D30);
  }

  return result;
}

uint64_t sub_1008C9594(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1008C95DC()
{
  result = qword_100CE3D40;
  if (!qword_100CE3D40)
  {
    sub_10022E824(&qword_100CE3CF8);
    sub_1008C9474();
    sub_1008C9594(&qword_100CE3D28, type metadata accessor for ConditionDetailMapView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE3D40);
  }

  return result;
}

uint64_t sub_1008C9698(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1008C96F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1008C9750(uint64_t a1)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 16);
  type metadata accessor for Date();
  sub_1000037E8();
  (*(v7 + 16))(v5, a1);
  type metadata accessor for MoonDetailViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1000082D8();
  sub_10004F034(v5, v8, v6);
  sub_1000E17D8(v10);
  return sub_1000547B8(v5);
}

uint64_t sub_1008C9850(uint64_t a1)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 16);
  type metadata accessor for Date();
  sub_1000037E8();
  (*(v7 + 16))(v5, a1);
  type metadata accessor for MoonDetailSelectedDate();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MoonDetailViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1000082D8();
  sub_10004F034(v5, v8, v6);
  sub_1000E17D8(v10);
  return sub_1000547B8(v5);
}

uint64_t sub_1008C999C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB5268);
  sub_1000037C4();
  v67 = v3;
  __chkstk_darwin(v4);
  v66 = &v64 - v5;
  v6 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v6 - 8);
  v65 = &v64 - v7;
  v69 = type metadata accessor for ActivityAction();
  __chkstk_darwin(v69);
  v70 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for URLHandlerMatch.Values();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v64 - v16;
  v18 = type metadata accessor for URLHandlerMatch();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v64 - v25;
  v73 = v2;
  v74 = a1;
  URLHandlerContext.match.getter();
  URLHandlerMatch.values.getter();
  v29 = *(v20 + 8);
  v27 = (v20 + 8);
  v28 = v29;
  (v29)(v26, v18);
  LOBYTE(a1) = sub_10022F3D4();
  v30 = *(v11 + 8);
  v68 = v17;
  v71 = v30;
  v30(v17, v9);
  if (a1)
  {
    sub_1000161C0((v72 + 48), *(v72 + 72));
    v31 = v70;
    swift_storeEnumTagMultiPayload();
    v32 = static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
    v33 = static VerticalSizingBehaviorKey.defaultValue.getter();
    sub_100366814(v31, v32 & 1, v33 & 1);
    sub_1002AC218(v31);
  }

  else
  {
    URLHandlerContext.match.getter();
    URLHandlerMatch.values.getter();
    (v28)(v23, v18);
    v34 = sub_10022F730();
    v36 = v35;
    v38 = v37;
    v71(v14, v9);
    v39 = v9;
    if (v38)
    {
      v70 = v28;
      v71 = v27;
      v72 = v18;
      v41 = v73;
      v40 = v74;
      if (qword_100CA2758 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_10000703C(v42, qword_100D90C60);
      v44 = v66;
      v43 = v67;
      (*(v67 + 16))(v66, v40, v41);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = v44;
        v48 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v75 = v74;
        *v48 = 141558275;
        *(v48 + 4) = 1752392040;
        *(v48 + 12) = 2081;
        URLHandlerContext.match.getter();
        URLHandlerMatch.values.getter();
        v70(v26, v72);
        v49 = String.init<A>(describing:)();
        v50 = v43;
        v52 = v51;
        (*(v50 + 8))(v47, v41);
        v53 = sub_100078694(v49, v52, &v75);

        *(v48 + 14) = v53;
        _os_log_impl(&_mh_execute_header, v45, v46, "No coordinates available in URL, matches=%{private,mask.hash}s", v48, 0x16u);
        sub_100006F14(v74);
      }

      else
      {

        (*(v43 + 8))(v44, v41);
      }
    }

    else
    {
      v54 = v36;
      URLHandlerContext.match.getter();
      v55 = v68;
      URLHandlerMatch.values.getter();
      (v28)(v26, v18);
      v56 = sub_10022FA00();
      v57 = v39;
      v59 = v58;
      v71(v55, v57);
      v60 = type metadata accessor for Date();
      v61 = v65;
      sub_10001B350(v65, 1, 1, v60);
      sub_100066E08();
      v62 = Dictionary.init(dictionaryLiteral:)();
      sub_1002A2C08(v56, v59, 18, v61, v62, 0, 0, *&v34, v54);

      sub_1001AEDF4(v61);
    }
  }

  return 1;
}

unint64_t sub_1008CA074(uint64_t a1)
{
  result = sub_1008CA09C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1008CA09C()
{
  result = qword_100CDD810;
  if (!qword_100CDD810)
  {
    type metadata accessor for LocationURLHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDD810);
  }

  return result;
}

uint64_t sub_1008CA0F0(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v2 = type metadata accessor for TimeState();
  __chkstk_darwin(v2 - 8);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WeatherDataConfiguration();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppConfigurationState();
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CurrentWeather();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v27 - v19;
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v11 + 8))(v13, v10);
  v21 = v27;
  sub_10019CD2C(v27 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v9, type metadata accessor for AppConfigurationState);
  AppConfiguration.weatherData.getter();
  v22 = type metadata accessor for AppConfiguration();
  (*(*(v22 - 8) + 8))(v9, v22);
  WeatherDataConfiguration.offlineDataFreshnessInterval.getter();
  (*(v28 + 8))(v6, v29);
  Date.addingTimeInterval(_:)();
  v23 = v30;
  sub_10019CD2C(v21 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v30, type metadata accessor for TimeState);
  v24 = static Date.> infix(_:_:)();
  v25 = *(v15 + 8);
  v25(v18, v14);
  v25(v20, v14);
  v25(v23, v14);
  return v24 & 1;
}

uint64_t sub_1008CA4BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1008CA514(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1008CA570(char a1)
{
  type metadata accessor for URL();
  sub_10000548C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100005384();
  sub_1008CA848(a1, v2);
  v7 = [objc_allocWithZone(LSApplicationWorkspace) init];
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = Dictionary.init(dictionaryLiteral:)();
  sub_1008CAC30(v10, v11, v7);

  (*(v5 + 8))(v2, v1);
  return 1;
}

BOOL sub_1008CA688()
{
  v2 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  type metadata accessor for URL();
  sub_10000548C();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100005384();
  URL.init(string:)();
  v8 = sub_100024D10(v4, 1, v0);
  if (v8 == 1)
  {
    sub_1000E6774(v4);
  }

  else
  {
    (*(v6 + 32))(v1, v4, v0);
    v9 = [objc_allocWithZone(LSApplicationWorkspace) init];
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    v13 = Dictionary.init(dictionaryLiteral:)();
    sub_1008CAC30(v12, v13, v9);

    (*(v6 + 8))(v1, v0);
  }

  return v8 != 1;
}

uint64_t sub_1008CA848@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  __chkstk_darwin(v19);
  v21 = &v34 - v20;
  switch(a1)
  {
    case 1:
      sub_10001D148();
      URL.init(string:)();
      v22 = type metadata accessor for URL();
      sub_100003A40(v18);
      if (v23)
      {
        goto LABEL_20;
      }

      sub_100006494();
      v25 = *(v31 + 32);
      v26 = a2;
      v27 = v18;
      return v25(v26, v27, v22);
    case 2:
      sub_10001D148();
      URL.init(string:)();
      v22 = type metadata accessor for URL();
      sub_100003A40(v15);
      if (v23)
      {
        goto LABEL_17;
      }

      sub_100006494();
      v25 = *(v29 + 32);
      v26 = a2;
      v27 = v15;
      return v25(v26, v27, v22);
    case 3:
      sub_10001D148();
      URL.init(string:)();
      v22 = type metadata accessor for URL();
      sub_100003A40(v12);
      if (v23)
      {
        goto LABEL_18;
      }

      sub_100006494();
      v25 = *(v30 + 32);
      v26 = a2;
      v27 = v12;
      return v25(v26, v27, v22);
    case 4:
      URL.init(string:)();
      v22 = type metadata accessor for URL();
      sub_100003A40(v9);
      if (v23)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        sub_100006494();
        v25 = *(v28 + 32);
        v26 = a2;
        v27 = v9;
        return v25(v26, v27, v22);
      }

      return result;
    case 5:
      sub_10001D148();
      URL.init(string:)();
      v33 = type metadata accessor for URL();
      if (sub_100024D10(v6, 1, v33) == 1)
      {
        goto LABEL_21;
      }

      return (*(*(v33 - 8) + 32))(a2, v6, v33);
    case 6:
      goto LABEL_22;
    default:
      sub_10001D148();
      URL.init(string:)();
      v22 = type metadata accessor for URL();
      sub_100003A40(v21);
      if (v23)
      {
        goto LABEL_19;
      }

      sub_100006494();
      v25 = *(v24 + 32);
      v26 = a2;
      v27 = v21;
      return v25(v26, v27, v22);
  }
}

id sub_1008CAC30(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [a3 openSensitiveURL:a1 withOptions:isa];

  return v6;
}

uint64_t sub_1008CACB4()
{
  v1 = OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_label;
  v2 = type metadata accessor for WeatherNetworkActivity.Label();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_metadataLabel, v2);
  v3(v0 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_tilesLabel, v2);
  v3(v0 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_overlayTileLabel, v2);

  return v0;
}

uint64_t sub_1008CADC0()
{
  sub_1008CACB4();

  return swift_deallocClassInstance();
}

uint64_t sub_1008CAE20()
{
  v0 = type metadata accessor for NetworkActivityCompletion();
  __chkstk_darwin(v0);
  sub_1000037D8();
  v3 = v2 - v1;
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  sub_10005ABDC();
  return sub_10005AE3C(v3);
}

uint64_t sub_1008CAF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v146 = a3;
  v147 = a2;
  v6 = type metadata accessor for NWActivity.CompletionReason();
  v143 = *(v6 - 8);
  __chkstk_darwin(v6);
  v137 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v142 = &v125 - v9;
  __chkstk_darwin(v10);
  v138 = &v125 - v11;
  v12 = sub_10022C350(&qword_100CC2B20);
  __chkstk_darwin(v12 - 8);
  v136 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v135 = &v125 - v15;
  v130 = type metadata accessor for WeatherNetworkActivity.Label();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v134 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for WeatherNetworkActivity.Domain();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v140 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for WeatherNetworkActivity();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for WeatherMap.Event();
  v19 = *(v148 - 8);
  __chkstk_darwin(v148);
  v21 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v141 = &v125 - v23;
  __chkstk_darwin(v24);
  v26 = &v125 - v25;
  __chkstk_darwin(v27);
  v29 = &v125 - v28;
  v30 = type metadata accessor for WeatherMapPurpose();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = (&v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v34, a1, v30, v32);
  if ((*(v31 + 88))(v34, v30) != enum case for WeatherMapPurpose.interactive(_:))
  {
    (*(v31 + 8))(v34, v30);
LABEL_16:
    v63 = type metadata accessor for NetworkActivityCompletion();
    result = sub_10001B350(a4 + *(v63 + 24), 1, 1, v6);
    *a4 = _swiftEmptyArrayStorage;
    a4[1] = _swiftEmptyArrayStorage;
    return result;
  }

  v144 = v19;
  v126 = v6;
  v139 = a4;
  (*(v31 + 96))(v34, v30);
  v35 = v34[1];
  v125 = *v34;
  v145 = v35;
  v36 = (v147 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_locationId);
  v37 = *(v147 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_locationId + 8);
  if (!v37 || (v125 == *v36 ? (v38 = v37 == v145) : (v38 = 0), !v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    v39 = v144;
    v40 = *(v144 + 104);
    v41 = v148;
    v40(v29, enum case for WeatherMap.Event.willStartLoading(_:), v148);
    v42 = static WeatherMap.Event.== infix(_:_:)();
    v43 = *(v39 + 8);
    v43(v29, v41);
    if ((v42 & 1) == 0)
    {
      v44 = v148;
      v40(v29, enum case for WeatherMap.Event.loadingWasInterruptedByUserInteraction(_:), v148);
      v45 = static WeatherMap.Event.== infix(_:_:)();
      v43(v29, v44);
      if ((v45 & 1) == 0)
      {

        a4 = v139;
        v6 = v126;
        goto LABEL_16;
      }
    }
  }

  v46 = v144;
  v47 = *(v144 + 16);
  v48 = v26;
  v49 = v148;
  v47(v26, v146, v148);
  v50 = (*(v46 + 88))(v26, v49);
  if (v50 == enum case for WeatherMap.Event.didFinishLoading(_:))
  {

    v47(v21, v26, v49);
    (*(v46 + 96))(v21, v49);
    v51 = v49;
    v52 = OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_rootActivity;
    v53 = v147;
    v54 = *(v147 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_rootActivity);
    v55 = v139;
    if (v54)
    {
      v56 = *v21;
      *v36 = 0;
      v36[1] = 0;
      v57 = v53;

      *(v57 + v52) = 0;

      v59 = v142;
      v58 = v143;
      v60 = &enum case for NWActivity.CompletionReason.success(_:);
      if (!v56)
      {
        v60 = &enum case for NWActivity.CompletionReason.failure(_:);
      }

      v61 = v126;
      (*(v143 + 104))(v142, *v60, v126);
      sub_100316A04(v54, v59, v55);

      (*(v58 + 8))(v59, v61);
      return (*(v46 + 8))(v48, v51);
    }

    else
    {
      if (qword_100CA2718 != -1)
      {
        swift_once();
      }

      v82 = type metadata accessor for Logger();
      sub_10000703C(v82, qword_100D90BA0);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "Map indicated it had finished loading for interactive map activity that wasn't tracked", v85, 2u);
      }

      v86 = type metadata accessor for NetworkActivityCompletion();
      sub_10001B350(&v55[*(v86 + 24)], 1, 1, v126);
      *v55 = _swiftEmptyArrayStorage;
      *(v55 + 1) = _swiftEmptyArrayStorage;
      return (*(v46 + 8))(v48, v148);
    }
  }

  v64 = v50;
  v65 = v139;
  if (v50 == enum case for WeatherMap.Event.overlay(_:))
  {

    v66 = v141;
    v47(v141, v26, v49);
    (*(v46 + 96))(v66, v49);
    v67 = type metadata accessor for WeatherMap.Event.Overlay();
    v68 = *(v67 - 8);
    v69 = (*(v68 + 88))(v66, v67);
    if (v69 == enum case for WeatherMap.Event.Overlay.didFinishLoadingTiles(_:))
    {
      (*(v68 + 96))(v66, v67);
      v70 = *(v147 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_tilesActivity);
      if (v70)
      {
        *(v147 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_tilesActivity) = 0;
        v71 = v143;
        v72 = &enum case for NWActivity.CompletionReason.success(_:);
        if (!*v66)
        {
          v72 = &enum case for NWActivity.CompletionReason.failure(_:);
        }

        v73 = v138;
        v74 = v126;
        (*(v143 + 104))(v138, *v72, v126);
        sub_100316A04(v70, v73, v65);

        (*(v71 + 8))(v73, v74);
        return (*(v46 + 8))(v48, v49);
      }

      if (qword_100CA2718 != -1)
      {
        swift_once();
      }

      v111 = type metadata accessor for Logger();
      sub_10000703C(v111, qword_100D90BA0);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v78, v79))
      {
        goto LABEL_56;
      }

      v80 = swift_slowAlloc();
      *v80 = 0;
      v81 = "Map indicated tiles had finished loading for interactive map activity that wasn't tracked";
    }

    else
    {
      if (v69 == enum case for WeatherMap.Event.Overlay.remove(_:))
      {
        (*(v68 + 96))(v66, v67);
        v87 = sub_10022C350(&qword_100CE4068);
        v88 = *(v87 + 48);
        v89 = *(v87 + 64);
        v90 = type metadata accessor for NetworkActivityCompletion();
        sub_10001B350(v65 + *(v90 + 24), 1, 1, v126);
        *v65 = _swiftEmptyArrayStorage;
        v65[1] = _swiftEmptyArrayStorage;
        v91 = type metadata accessor for WeatherMapStallStatistics();
        (*(*(v91 - 8) + 8))(&v66[v89], v91);
        v92 = type metadata accessor for WeatherMapSessionStatistics();
        (*(*(v92 - 8) + 8))(&v66[v88], v92);
        v93 = type metadata accessor for WeatherMapOverlayKind();
        (*(*(v93 - 8) + 8))(v66, v93);
        return (*(v46 + 8))(v48, v49);
      }

      if (v69 != enum case for WeatherMap.Event.Overlay.willStartLoadingTiles(_:))
      {
        (*(v68 + 8))(v66, v67);
        goto LABEL_57;
      }

      v103 = OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_tilesActivity;
      v104 = v147;
      if (!*(v147 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_tilesActivity))
      {
        (*(v127 + 104))(v140, enum case for WeatherNetworkActivity.Domain.weather(_:), v128);
        (*(v129 + 16))(v134, v104 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_tilesLabel, v130);
        v120 = type metadata accessor for UUID();
        sub_10001B350(v135, 1, 1, v120);
        sub_10001B350(v136, 1, 1, v120);
        v121 = v131;
        WeatherNetworkActivity.init(domain:label:token:parentToken:)();
        v122 = WeatherNetworkActivity.createNWActivity()();
        (*(v132 + 8))(v121, v133);

        NWActivity.parentActivity.setter();
        *(v104 + v103) = v122;

        sub_10022C350(&unk_100CE49D0);
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_100A3BD20;
        *(v123 + 32) = v122;
        v124 = type metadata accessor for NetworkActivityCompletion();
        sub_10001B350(v65 + *(v124 + 24), 1, 1, v126);
        *v65 = v123;
        goto LABEL_58;
      }

      if (qword_100CA2718 != -1)
      {
        swift_once();
      }

      v105 = type metadata accessor for Logger();
      sub_10000703C(v105, qword_100D90BA0);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v78, v79))
      {
        goto LABEL_56;
      }

      v80 = swift_slowAlloc();
      *v80 = 0;
      v81 = "InteractiveMapNetworkActivityFlow received duplicate overlay(.willStartLoadingTiles) events";
    }

LABEL_55:
    _os_log_impl(&_mh_execute_header, v78, v79, v81, v80, 2u);
    v49 = v148;

LABEL_56:

    goto LABEL_57;
  }

  if (v50 == enum case for WeatherMap.Event.willStartLoading(_:))
  {
    v75 = OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_rootActivity;
    v76 = v147;
    if (!*(v147 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_rootActivity))
    {
      (*(v127 + 104))(v140, enum case for WeatherNetworkActivity.Domain.weather(_:), v128);
      (*(v129 + 16))(v134, v76 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_label, v130);
      v113 = type metadata accessor for UUID();
      sub_10001B350(v135, 1, 1, v113);
      sub_10001B350(v136, 1, 1, v113);
      v114 = v131;
      WeatherNetworkActivity.init(domain:label:token:parentToken:)();
      v115 = WeatherNetworkActivity.createNWActivity()();
      (*(v132 + 8))(v114, v133);
      v116 = v145;
      *v36 = v125;
      v36[1] = v116;

      *(v147 + v75) = v115;

      sub_10022C350(&unk_100CE49D0);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_100A3BD20;
      *(v117 + 32) = v115;
      v118 = type metadata accessor for NetworkActivityCompletion();
      v119 = v139;
      sub_10001B350(v139 + *(v118 + 24), 1, 1, v126);
      *v119 = v117;
      v119[1] = _swiftEmptyArrayStorage;
      return (*(v46 + 8))(v48, v49);
    }

    if (qword_100CA2718 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_10000703C(v77, qword_100D90BA0);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v78, v79))
    {
      goto LABEL_56;
    }

    v80 = swift_slowAlloc();
    *v80 = 0;
    v81 = "InteractiveMapNetworkActivityFlow received duplicate willStartLoading events";
    goto LABEL_55;
  }

  v94 = enum case for WeatherMap.Event.loadingWasInterruptedByUserInteraction(_:);

  if (v64 != v94)
  {
LABEL_57:
    v112 = type metadata accessor for NetworkActivityCompletion();
    sub_10001B350(v65 + *(v112 + 24), 1, 1, v126);
    *v65 = _swiftEmptyArrayStorage;
LABEL_58:
    v65[1] = _swiftEmptyArrayStorage;
    return (*(v46 + 8))(v48, v49);
  }

  v95 = v147;
  v96 = *(v147 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_tilesActivity);
  v97 = OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_rootActivity;
  v98 = *(v147 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_rootActivity);
  *(v147 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_tilesActivity) = 0;
  *(v95 + v97) = 0;
  sub_10022C350(&qword_100CE1B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = v96;
  *(inited + 40) = v98;
  v149 = _swiftEmptyArrayStorage;

  v100 = 0;
  v101 = _swiftEmptyArrayStorage;
  while (v100 != 2)
  {
    if (*(inited + 8 * v100++ + 32))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v101 = v149;
    }
  }

  swift_setDeallocating();
  sub_100195474();
  v106 = v143;
  v107 = v137;
  v108 = v126;
  (*(v143 + 104))(v137, enum case for NWActivity.CompletionReason.cancelled(_:), v126);

  v109 = *(type metadata accessor for NetworkActivityCompletion() + 24);
  v110 = v139;
  (*(v106 + 32))(v139 + v109, v107, v108);
  sub_10001B350(v110 + v109, 0, 1, v108);
  *v110 = _swiftEmptyArrayStorage;
  v110[1] = v101;
  return (*(v144 + 8))(v26, v148);
}

uint64_t sub_1008CC1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v5 = sub_10022C350(&qword_100CC2B20);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_100003C38();
  v48 = v7 - v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  v47 = &v44 - v10;
  v11 = type metadata accessor for WeatherNetworkActivity.Domain();
  sub_1000037C4();
  v44 = v12;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v46 = v15 - v14;
  v16 = sub_10022C350(&qword_100CE1B88);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  v20 = type metadata accessor for WeatherNetworkActivity.Label();
  sub_1000037C4();
  v45 = v21;
  __chkstk_darwin(v22);
  sub_100003C38();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  sub_100008C44();
  v27 = type metadata accessor for WeatherMapPurpose();
  sub_1000037C4();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_1000037D8();
  v33 = (v32 - v31);
  (*(v29 + 16))(v32 - v31, a1, v27);
  if ((*(v29 + 88))(v33, v27) == enum case for WeatherMapPurpose.interactive(_:))
  {
    (*(v29 + 96))(v33, v27);
    v34 = *(v2 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_locationId + 8);
    if (v34)
    {
      if (*v33 == *(v2 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_locationId) && v34 == v33[1])
      {
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v36 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if (*(v2 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_rootActivity))
      {

        sub_100024EAC(v19);
        if (sub_100024D10(v19, 1, v20) != 1)
        {
          v41 = v45;
          (*(v45 + 32))(v3, v19, v20);
          (*(v44 + 104))(v46, enum case for WeatherNetworkActivity.Domain.weather(_:), v11);
          (*(v41 + 16))(v25, v3, v20);
          v42 = type metadata accessor for UUID();
          sub_10001B350(v47, 1, 1, v42);
          v43 = v48;
          NWActivity.token.getter();
          sub_10001B350(v43, 0, 1, v42);
          v38 = v49;
          WeatherNetworkActivity.init(domain:label:token:parentToken:)();

          (*(v41 + 8))(v3, v20);
          v37 = 0;
          goto LABEL_16;
        }

        sub_100896F94(v19);
      }
    }

    else
    {
    }
  }

  else
  {
    (*(v29 + 8))(v33, v27);
  }

LABEL_15:
  v37 = 1;
  v38 = v49;
LABEL_16:
  v39 = type metadata accessor for WeatherNetworkActivity();
  return sub_10001B350(v38, v37, 1, v39);
}

uint64_t sub_1008CC678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v5 = sub_10022C350(&qword_100CC2B20);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_100003C38();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v41 = &v39 - v11;
  v12 = type metadata accessor for WeatherNetworkActivity.Label();
  sub_1000037C4();
  v40 = v13;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for WeatherNetworkActivity.Domain();
  sub_1000037C4();
  v39 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  v24 = type metadata accessor for WeatherMapPurpose();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = (v29 - v28);
  (*(v26 + 16))(v29 - v28, a1, v24);
  if ((*(v26 + 88))(v30, v24) != enum case for WeatherMapPurpose.interactive(_:))
  {
    (*(v26 + 8))(v30, v24);
    goto LABEL_14;
  }

  (*(v26 + 96))(v30, v24);
  v31 = *(v3 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_locationId + 8);
  if (!v31)
  {

    goto LABEL_14;
  }

  if (*v30 == *(v3 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_locationId) && v31 == v30[1])
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (!*(v3 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_tilesActivity))
  {
LABEL_14:
    v36 = 1;
    v35 = v42;
    goto LABEL_15;
  }

  (*(v39 + 104))(v23, enum case for WeatherNetworkActivity.Domain.weather(_:), v18);
  (*(v40 + 16))(v17, v3 + OBJC_IVAR____TtC7Weather33InteractiveMapNetworkActivityFlow_overlayTileLabel, v12);
  v34 = type metadata accessor for UUID();
  sub_10001B350(v41, 1, 1, v34);

  NWActivity.token.getter();
  sub_10001B350(v9, 0, 1, v34);
  v35 = v42;
  WeatherNetworkActivity.init(domain:label:token:parentToken:)();

  v36 = 0;
LABEL_15:
  v37 = type metadata accessor for WeatherNetworkActivity();
  return sub_10001B350(v35, v36, 1, v37);
}