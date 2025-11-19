void sub_10084B644(Swift::Int a1@<X1>, uint64_t (*a2)(uint64_t, uint64_t)@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  _StringGuts.grow(_:)(a1);
  v11 = a2(v9, v10);
  v13 = v12;

  v14._countAndFlagsBits = a3;
  v14._object = a4;
  String.append(_:)(v14);
  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = 0;
  *(a5 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_10084B6F4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for WeatherEditorView() + 32);
  v7 = type metadata accessor for WeatherData(0);
  (*(v3 + 16))(v5, v6 + *(v7 + 24), v2);
  sub_10022C350(&qword_100CDE580);
  return State.wrappedValue.setter();
}

uint64_t sub_10084B804(uint64_t a1)
{
  v2 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v2 - 8);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CA6D28);
  __chkstk_darwin(v23);
  v22 = &v21 - v4;
  v21 = type metadata accessor for LocationWeatherDataState(0);
  __chkstk_darwin(v21);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WeatherDataModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WeatherData(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WeatherEditorView();
  sub_10084BF74(a1 + v15[8], v14, type metadata accessor for WeatherData);
  sub_10022C350(&qword_100CDE580);
  State.wrappedValue.getter();
  (*(v8 + 40))(&v14[*(v12 + 32)], v10, v7);
  v16 = sub_10022C350(&qword_100CA75D8);
  v17 = *(v16 + 48);
  v18 = *(v16 + 64);
  sub_10084BF74(v14, v6, type metadata accessor for WeatherData);
  sub_10084BF74(a1 + v15[9], &v6[v17], type metadata accessor for PreprocessedWeatherData);
  sub_10084BF74(a1 + v15[10], &v6[v18], type metadata accessor for NewsDataModel);
  swift_storeEnumTagMultiPayload();
  (*(a1 + v15[11]))(v6);
  v19 = v22;
  sub_1008495FC(v22);
  Binding.wrappedValue.getter();
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  sub_100018144(v19, &qword_100CA6D28);
  sub_100105F90(v6, type metadata accessor for LocationWeatherDataState);
  return sub_100105F90(v14, type metadata accessor for WeatherData);
}

unint64_t sub_10084BBB4()
{
  result = qword_100CDE688;
  if (!qword_100CDE688)
  {
    sub_10022E824(&qword_100CDE680);
    sub_100006F64(&qword_100CA5548, &qword_100CA5528);
    sub_100006F64(&qword_100CAF708, &qword_100CAF710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDE688);
  }

  return result;
}

uint64_t sub_10084BCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA54B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10084BD40(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for WeatherEditorView();
  sub_100003810(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_10084BE58(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for WeatherEditorView();
  sub_100003810(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(a1, v6);
}

uint64_t sub_10084BF2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10084BF74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

void sub_10084BFD0(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v558 = a2;
  v490 = a1;
  v551 = a3;
  v3 = type metadata accessor for DetailCondition();
  v4 = sub_100003E5C(v3, v514);
  v489 = v5;
  __chkstk_darwin(v4);
  sub_1000038E4();
  sub_100003918(v6);
  v7 = type metadata accessor for WeatherFormatScaling();
  v8 = sub_100003E5C(v7, &v526);
  v499 = v9;
  __chkstk_darwin(v8);
  sub_1000038E4();
  sub_100003918(v10);
  v11 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  v12 = sub_100003E5C(v11, &v538);
  v498 = v13;
  __chkstk_darwin(v12);
  sub_1000038E4();
  sub_100003918(v14);
  v15 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  v16 = sub_100003E5C(v15, &v532);
  v505 = v17;
  __chkstk_darwin(v16);
  sub_1000038E4();
  sub_100003990(v18);
  v19 = sub_10022C350(&qword_100CAB938);
  sub_100003E5C(v19, &v529);
  v502 = v20;
  sub_100003828();
  __chkstk_darwin(v21);
  sub_1000039BC();
  sub_100003918(v22);
  v23 = type metadata accessor for UVIndex();
  v24 = sub_100003E5C(v23, &v537);
  v509 = v25;
  __chkstk_darwin(v24);
  sub_1000038E4();
  sub_100003918(v26);
  v27 = type metadata accessor for WeatherCondition();
  v28 = sub_100003E5C(v27, &v550);
  v518 = v29;
  __chkstk_darwin(v28);
  sub_1000038E4();
  sub_100003918(v30);
  v31 = type metadata accessor for WeatherConditionIcon();
  v32 = sub_100003E5C(v31, &v551);
  v519 = v33;
  __chkstk_darwin(v32);
  sub_1000038E4();
  sub_100003918(v34);
  object = type metadata accessor for Locale.Language();
  sub_1000037C4();
  v515 = v35;
  __chkstk_darwin(v36);
  sub_1000038E4();
  sub_100003918(v37);
  v38 = type metadata accessor for Locale();
  v39 = sub_100003E5C(v38, &v570);
  v513[3] = v40;
  __chkstk_darwin(v39);
  sub_1000038E4();
  sub_100003990(v41);
  v42 = sub_10022C350(&unk_100CB2CF0);
  v43 = sub_100003810(v42);
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_10000E70C();
  sub_100003918(v45);
  v46 = type metadata accessor for Date();
  v47 = sub_100003E5C(v46, &countAndFlagsBits);
  v526 = v48;
  __chkstk_darwin(v47);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_10000E70C();
  sub_100003918(v50);
  v51 = type metadata accessor for Precipitation();
  v52 = sub_100003E5C(v51, &v543);
  v513[0] = v53;
  __chkstk_darwin(v52);
  sub_1000038E4();
  sub_100003918(v54);
  v55 = type metadata accessor for ApparentPrecipitationIntensity();
  v56 = sub_100003E5C(v55, &v553);
  v522 = v57;
  __chkstk_darwin(v56);
  sub_1000038E4();
  sub_100003918(v58);
  v59 = type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle();
  v60 = sub_100003E5C(v59, &v563);
  v532 = v61;
  __chkstk_darwin(v60);
  sub_1000038E4();
  sub_100003990(v62);
  v63 = sub_10022C350(&qword_100CAC3D0);
  v64 = sub_100003E5C(v63, &v565);
  v530 = v65;
  __chkstk_darwin(v64);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_10000E70C();
  v553 = v67;
  v68 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v69 = sub_100003E5C(v68, v569);
  v538 = v70;
  __chkstk_darwin(v69);
  sub_1000038E4();
  sub_100003990(v71);
  v72 = sub_10022C350(&qword_100CA53F8);
  v73 = sub_100003E5C(v72, &v571);
  v542 = v74;
  __chkstk_darwin(v73);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003908();
  __chkstk_darwin(v76);
  sub_10000E70C();
  sub_100003990(v77);
  v78 = sub_10022C350(&qword_100CACCC8);
  sub_100003E5C(v78, v513);
  v495 = v79;
  sub_100003828();
  __chkstk_darwin(v80);
  sub_1000039BC();
  sub_100003918(v81);
  v82 = type metadata accessor for WeatherFormatPlaceholder();
  v83 = sub_100003E5C(v82, &v572);
  v555 = v84;
  __chkstk_darwin(v83);
  sub_1000038E4();
  sub_100003990(v85);
  v86 = sub_10022C350(&qword_100CAA9F0);
  sub_100003810(v86);
  sub_100003828();
  __chkstk_darwin(v87);
  sub_1000039BC();
  sub_100003918(v88);
  v89 = type metadata accessor for NSUnitSpeed.WeatherFormatUsage();
  v90 = sub_100003E5C(v89, v517);
  v492 = v91;
  __chkstk_darwin(v90);
  sub_1000038E4();
  sub_100003918(v92);
  v93 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle();
  v94 = sub_100003E5C(v93, &v520);
  v493 = v95;
  __chkstk_darwin(v94);
  sub_1000038E4();
  sub_100003918(v96);
  v97 = type metadata accessor for Wind();
  v98 = sub_100003E5C(v97, &v533);
  v508 = v99;
  __chkstk_darwin(v98);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v100);
  v102 = v486 - v101;
  v103 = sub_10022C350(&qword_100CAEC90);
  sub_100003810(v103);
  sub_100003828();
  __chkstk_darwin(v104);
  sub_1000039BC();
  sub_100003990(v105);
  v106 = sub_10022C350(&qword_100CDE6E0);
  v107 = sub_100003810(v106);
  v108 = __chkstk_darwin(v107);
  v110 = v486 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __chkstk_darwin(v108);
  v113 = v486 - v112;
  __chkstk_darwin(v111);
  v115 = v486 - v114;
  v116 = type metadata accessor for TimeZone();
  v117 = sub_100003E5C(v116, &v573);
  v547 = v118;
  __chkstk_darwin(v117);
  sub_1000037D8();
  v121 = (v120 - v119);
  v122 = type metadata accessor for ConditionUnits();
  v123 = sub_100003E5C(v122, &v574);
  v549 = v124;
  __chkstk_darwin(v123);
  sub_1000037D8();
  v127 = (v126 - v125);
  type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  v560 = v129;
  v561 = v128;
  v130 = __chkstk_darwin(v128);
  v132 = v486 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v130);
  v134 = v486 - v133;
  v135 = type metadata accessor for HourWeather();
  v136 = sub_100003E5C(v135, &v575);
  v550 = v137;
  __chkstk_darwin(v136);
  sub_1000038E4();
  v562 = v138;
  WeatherValueCalculationContext.hourWeather.getter();
  v559 = v134;
  WeatherValueCalculationContext.chartCondition.getter();
  v552 = v127;
  v139 = v121;
  WeatherValueCalculationContext.units.getter();
  WeatherValueCalculationContext.timeZone.getter();
  v140 = swift_allocObject();
  *(v140 + 16) = 0;
  *(v140 + 24) = 0;
  v554 = v140;
  sub_10084F1F4(v558, v115);
  isa = type metadata accessor for DetailChartDataPoint();
  sub_10000394C(v115);
  if (v142)
  {
    sub_10003FDF4(v115, &qword_100CDE6E0);
    LODWORD(countAndFlagsBits) = 1;
    v146 = 0.0;
  }

  else
  {
    v143 = DetailChartDataPoint.value.getter();
    LODWORD(countAndFlagsBits) = v144;
    sub_100022F14();
    (*(v145 + 8))(v115, isa);
    v146 = *&v143;
  }

  v147 = v560;
  v148 = v561;
  (*(v560 + 16))(v132, v559, v561);
  v149 = (*(v147 + 88))(v132, v148);
  v150 = v553;
  if (v149 == enum case for DetailChartCondition.humidity(_:))
  {
    sub_100030660();
    if (countAndFlagsBits)
    {
      HourWeather.humidity.getter();
    }

    v151 = [objc_opt_self() mainBundle];
    v576._object = 0x8000000100AE1210;
    sub_100003CD0();
    v155 = NSLocalizedString(_:tableName:bundle:value:comment:)(v152, v153, v151, v154, v576);
    object = v155._object;
    countAndFlagsBits = v155._countAndFlagsBits;

    sub_10022C350(&qword_100CA40C8);
    v156 = swift_allocObject();
    *(v156 + 16) = xmmword_100A2C3F0;
    v102 = v536;
    HourWeather.dewPoint.getter();
    v157 = v537;
    static WeatherFormatStyle<>.weather.getter();
    v158 = v555;
    v159 = sub_10003BFA0();
    v161 = *(v160 - 256);
    v162(v159);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100009114();
    sub_10084FC0C(v163, v164);
    v165 = v543;
    v166 = v539;
    Measurement.formatted<A>(_:placeholder:unitManager:)();
    v553 = v167;

    (*(v158 + 8))(v139, v161);
    sub_10000E73C();
    v168(v157, v166);
    sub_10000E73C();
    v169(v102, v165);
    *(v156 + 56) = &type metadata for String;
    v170 = sub_100035744();
    v171 = sub_100024390(v170);
    v553 = v172;

    v173 = sub_10000C70C(0, &qword_100CA72F8);
    v174 = static NSNumberFormatter.percent.getter();
    v175.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
    v176 = [v174 stringFromNumber:v175.super.super.isa];

    if (!v176)
    {
      v102 = 0;
      object = 0;
      countAndFlagsBits = 0;
      goto LABEL_20;
    }

    object = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v178 = v177;

    countAndFlagsBits = v178;

    v179 = static NSNumberFormatter.percent.getter();
    v180 = sub_1008FBDF4(v179);
    if (v181)
    {
      v175.super.super.isa = countAndFlagsBits;
      v182 = String.hasSuffix(_:)(*&v180);

      if (!v182)
      {
        v102 = 0;
        v176 = 0;
        goto LABEL_20;
      }

      v567 = object;
      v568 = countAndFlagsBits;
      v183 = static NSNumberFormatter.percent.getter();
      v184 = sub_1008FBDF4(v183);
      if (v185)
      {
        v565 = v184;
        v566 = v185;
        v563 = 0;
        v564 = 0xE000000000000000;
        sub_10002D5A4();
        sub_100003CD0();
        object = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v175.super.super.isa = v186;

        v176 = v173;
        v187 = static NSNumberFormatter.percent.getter();
        sub_1008FBDF4(v187);
        sub_100031898();
        countAndFlagsBits = v175.super.super.isa;
LABEL_20:
        sub_10005217C();
        isa = v562;
        v196 = sub_10084F264(v194, v195, v558);
        v198 = v197;
        v199 = sub_100004C6C();
        v200(v199);
        v201 = sub_1000068D0();
        v202(v201);
        v203 = sub_100023370();
        v204(v203);
        sub_10000CF44();
        sub_100024B04();
        v205();

        sub_10000EE4C();
LABEL_36:
        v235 = v553;
        goto LABEL_37;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_84;
  }

  if (v149 == enum case for DetailChartCondition.pressure(_:))
  {
    if (countAndFlagsBits)
    {
      HourWeather.pressure.getter();
    }

    else
    {
      ConditionUnits.pressure.getter();
      sub_10000C70C(0, &qword_100CAC448);
      sub_1000203A0();
    }

    sub_10005217C();
    v206 = v540;
    v208 = sub_10084F264(v554, v207, v558);
    sub_1000300F0(v208, v209);
    static Set<>.value.getter();
    v210 = v534;
    sub_100003934();
    sub_10001B350(v211, v212, v213, v206);
    sub_100025434();
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_10003FDF4(v210, &qword_100CAA9F0);
    LODWORD(v543) = enum case for WeatherFormatPlaceholder.none(_:);
    v214 = v555;
    v542 = *(v555 + 104);
    v215 = v544;
    v216 = v545;
    (v542)(v544);
    v539 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100030660();
    v538 = sub_10084FC0C(&qword_100CAC470, &type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle);
    object = Measurement.formatted<A>(_:placeholder:unitManager:)();
    countAndFlagsBits = v217;

    v218 = *(v214 + 8);
    v555 = v214 + 8;
    v537 = v218;
    v218(v215, v216);
    v536 = *(v532 + 8);
    v219 = sub_10001148C();
    v220(v219);
    v221 = v529;
    HourWeather.pressure.getter();
    static Set<>.unit.getter();
    sub_10003C95C(v210);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_10003FDF4(v210, &qword_100CAA9F0);
    (v542)(v215, v543, v216);
    static UnitManager.standard.getter();
    v175.super.super.isa = v535;
    v222 = v221;
    v223 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v225 = v224;

    v102 = v223;
    v537(v215, v216);
    v226 = sub_10001148C();
    (v536)(v226);
    isa = (v530 + 8);
    v227 = *(v530 + 8);
    v228 = v222;
    v176 = v225;
    v198 = v546;
    v196 = v558;
    v227(v228, v175.super.super.isa);
    v227(v553, v175.super.super.isa);
    sub_100010260();
    sub_100020C04();
    v229();
    v230 = sub_1000068D0();
    v231(v230);
    v232 = sub_100023370();
    v233(v232);
    sub_10000CF44();
    sub_100024B04();
    v234();
LABEL_23:

    sub_10000EE4C();
LABEL_24:
    v171 = 0;
    v235 = 0;
LABEL_37:
    v294 = v551;
    *v551 = v196;
    v294[1] = v198;
    v295 = countAndFlagsBits;
    v294[2] = object;
    v294[3] = v295;
    v294[4] = isa;
    v294[5] = v175.super.super.isa;
    *(v294 + 3) = 0u;
    *(v294 + 4) = 0u;
    v294[10] = v102;
    v294[11] = v176;
    v294[12] = 0;
    v294[13] = 0;
    v294[14] = v171;
    v294[15] = v235;
    v294[16] = 0;
    v294[17] = 0;
    return;
  }

  v188 = v562;
  if (v149 == enum case for DetailChartCondition.precipitationTotal(_:))
  {
    sub_1000161C0(v546, *(v546 + 3));
    dispatch thunk of PrecipitationCalculatorType.apparentPrecipitationIntensityForDisplay(from:)();
    object = ApparentPrecipitationIntensity.standaloneDescription.getter();
    countAndFlagsBits = v189;
    ApparentPrecipitationIntensity.value.getter();
    if (v190 <= 0.0)
    {
      v236 = [objc_opt_self() mainBundle];
      v577._object = 0x8000000100AE1190;
      sub_100003CD0();
      v240 = NSLocalizedString(_:tableName:bundle:value:comment:)(v237, v238, v236, v239, v577);
      v171 = v240._countAndFlagsBits;
      v553 = v240._object;
    }

    else
    {
      v191 = v512;
      HourWeather.precipitation.getter();
      v171 = Precipitation.standaloneDescription.getter();
      v553 = v192;
      sub_10000E73C();
      v193(v191, v513[1]);
    }

    v241 = v527;
    v242 = v526;
    sub_10084F1F4(v558, v113);
    sub_10000394C(v113);
    if (v142)
    {
      sub_10003FDF4(v113, &qword_100CDE6E0);
      isa = v525;
      sub_100003934();
      sub_10001B350(v243, v244, v245, v241);
      sub_100071E74();
      HourWeather.date.getter();
      if (sub_100024D10(isa, 1, v241) != 1)
      {
        sub_10003FDF4(isa, &unk_100CB2CF0);
      }
    }

    else
    {
      v280 = v525;
      DetailChartDataPoint.date.getter();
      sub_100022F14();
      (*(v281 + 8))(v113, isa);
      sub_10001B350(v280, 0, 1, v241);
      v113 = v524;
      (*(v242 + 32))(v524, v280, v241);
    }

    v196 = sub_10084F624();
    v283 = v282;
    v284 = *(v242 + 8);
    v175.super.super.isa = (v242 + 8);
    v285 = v241;
    v198 = v283;
    v284(v113, v285);
    sub_10000E73C();
    v286(v541, v523);
    v287 = sub_100004C6C();
    v288(v287);
    v289 = sub_1000068D0();
    v290(v289);
    v291 = sub_100023370();
    v292(v291);
    sub_10000CF44();
    sub_100024B04();
    v293();

    sub_10000EE4C();
    v102 = 0;
    v176 = 0;
    goto LABEL_36;
  }

  if (v149 == enum case for DetailChartCondition.temperature(_:))
  {
    if (countAndFlagsBits)
    {
      sub_100020250();
      HourWeather.temperature.getter();
    }

    else
    {
      ConditionUnits.temperature.getter();
      sub_10000C70C(0, &qword_100CA51B0);
      sub_100020250();
      sub_1000203A0();
    }

    v296 = v540;
    v175.super.super.isa = v528;
    (*(v542 + 32))(v528, isa, v543);
    v297 = v513[2];
    static Locale.current.getter();
    sub_100020250();
    Locale.language.getter();
    sub_10000E73C();
    v298(v297, v296);
    v299 = Locale.Language.prefersFullTemperatureScale.getter();
    sub_10000E73C();
    v300(isa, object);
    if (v299)
    {
      static Set<>.value.getter();
      v301 = v534;
      sub_100003934();
      sub_10001B350(v302, v303, v304, v296);
      sub_100025434();
      static WeatherFormatStyle<>.weather(_:locale:)();

      sub_10003FDF4(v301, &qword_100CAA9F0);
      LODWORD(v553) = enum case for WeatherFormatPlaceholder.none(_:);
      v305 = v555;
      v536 = *(v555 + 104);
      v306 = v544;
      v307 = v545;
      (v536)(v544);
      v535 = type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100009114();
      sub_10084FC0C(v308, v309);
      sub_100030660();
      v533 = v310;
      object = Measurement.formatted<A>(_:placeholder:unitManager:)();
      countAndFlagsBits = v311;

      v312 = *(v305 + 8);
      v555 = v305 + 8;
      v532 = v312;
      v313 = v307;
      v312(v306, v307);
      v314 = (v538 + 8);
      v538 = *(v538 + 8);
      v315 = sub_10001148C();
      v316(v315);
      static Set<>.unit.getter();
      sub_10003C95C(v301);
      static WeatherFormatStyle<>.weather(_:locale:)();

      sub_10003FDF4(v301, &qword_100CAA9F0);
      (v536)(v306, v553, v307);
      static UnitManager.standard.getter();
      isa = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v175.super.super.isa = v317;

      (v532)(v306, v313);
      v318 = sub_10001148C();
      (v538)(v318);
    }

    else
    {
      v319 = v537;
      static WeatherFormatStyle<>.weather.getter();
      v320 = v555;
      isa = v175.super.super.isa;
      v321 = sub_100016534();
      v323 = *(v322 - 256);
      v324(v321);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100009114();
      sub_10084FC0C(v325, v326);
      sub_10003BC0C();
      v327 = v539;
      object = Measurement.formatted<A>(_:placeholder:unitManager:)();
      countAndFlagsBits = v328;

      v329 = *(v320 + 8);
      v314 = (v320 + 8);
      v329(v175.super.super.isa, v323);
      sub_10000E73C();
      v330(v319, v327);
      sub_10000EE4C();
    }

    sub_10005217C();
    v196 = sub_10084F264(v554, v331, v558);
    v333 = v332;
    v102 = v516;
    HourWeather.condition.getter();
    v334 = HourWeather.isDaylight.getter();
    sub_1000187C4(v334);
    WeatherCondition.conditionIcon(isDaylight:isFilled:forLightBackground:)();
    sub_10000E73C();
    v335(v102, v520);
    v176 = v314;
    WeatherConditionIcon.name.getter();
    sub_100031898();
    sub_10000E73C();
    v336 = v314;
    v198 = v333;
    v337(v336, v521);
    sub_10000E73C();
    v338(v528, v543);
    v339 = sub_100004C6C();
    v340(v339);
    v341 = sub_1000068D0();
    v342(v341);
    v343 = sub_100023370();
    v344(v343);
    sub_10000CF44();
    sub_100024B04();
    v345();

    goto LABEL_24;
  }

  if (v149 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    v246 = [objc_opt_self() mainBundle];
    v578._object = 0x8000000100AE1100;
    sub_100003CD0();
    v247._object = 0xEA00000000004025;
    v250 = NSLocalizedString(_:tableName:bundle:value:comment:)(v248, v249, v246, v247, v578);
    object = v250._object;
    countAndFlagsBits = v250._countAndFlagsBits;

    sub_10022C350(&qword_100CA40C8);
    v251 = swift_allocObject();
    *(v251 + 16) = xmmword_100A2C3F0;
    v252 = v536;
    HourWeather.temperature.getter();
    sub_100011868();
    static WeatherFormatStyle<>.weather.getter();
    LODWORD(v540) = enum case for WeatherFormatPlaceholder.none(_:);
    v253 = v555;
    v254 = *(v555 + 104);
    v534 = v555 + 104;
    v535 = v254;
    v255 = sub_1000211B0();
    v257 = *(v256 - 256);
    v258(v255);
    v533 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100009114();
    v532 = sub_10084FC0C(v259, v260);
    v261 = v539;
    Measurement.formatted<A>(_:placeholder:unitManager:)();
    v553 = v262;

    v263 = *(v253 + 8);
    v555 = v253 + 8;
    v531 = v263;
    v263(v102, v257);
    v538 = *(v538 + 8);
    (v538)(0x8000000100AE1100, v261);
    sub_100030660();
    v530 = *(v542 + 8);
    isa = v543;
    (v530)(v252, v543);
    *(v251 + 56) = &type metadata for String;
    v264 = sub_100035744();
    v542 = sub_100024390(v264);
    v553 = v265;

    HourWeather.apparentTemperature.getter();
    static WeatherFormatStyle<>.weather.getter();
    v266 = v545;
    (v535)(v102, v540, v545);
    static UnitManager.standard.getter();
    object = Measurement.formatted<A>(_:placeholder:unitManager:)();
    countAndFlagsBits = v267;

    v531(v102, v266);
    (v538)(0x8000000100AE1100, v261);
    (v530)(v252, isa);
    sub_10005217C();
    v196 = sub_10084F264(v268, v269, v558);
    v175.super.super.isa = v270;
    sub_100020250();
    HourWeather.condition.getter();
    v271 = HourWeather.isDaylight.getter();
    sub_1000187C4(v271);
    WeatherCondition.conditionIcon(isDaylight:isFilled:forLightBackground:)();
    sub_10000E73C();
    v272(isa, v520);
    v176 = 0x8000000100AE1100;
    WeatherConditionIcon.name.getter();
    sub_100031898();
    sub_10000E73C();
    v198 = v175.super.super.isa;
    v273(0x8000000100AE1100, v521);
    sub_100010260();
    sub_100020C04();
    v274();
    v275 = sub_1000068D0();
    v276(v275);
    v277 = sub_100023370();
    v278(v277);
    sub_10000CF44();
    sub_100024B04();
    v279();

    v171 = v542;
    sub_10000EE4C();
    goto LABEL_37;
  }

  if (v149 == enum case for DetailChartCondition.uvIndex(_:))
  {
    if (countAndFlagsBits)
    {
      sub_1000372F8();
      HourWeather.uvIndex.getter();
    }

    else
    {
      sub_1006278DC(v146);
    }

    isa = v552;
    v346 = v546;
    sub_10000C70C(0, &qword_100CA72F8);
    v347 = static NSNumberFormatter.digits.getter();
    v348 = [objc_allocWithZone(NSNumber) initWithInteger:UVIndex.value.getter()];
    v349 = [v347 stringFromNumber:v348];

    if (v349)
    {
      object = static String._unconditionallyBridgeFromObjectiveC(_:)();
      countAndFlagsBits = v350;
    }

    else
    {
      v567 = UVIndex.value.getter();
      object = dispatch thunk of CustomStringConvertible.description.getter();
      countAndFlagsBits = v360;
    }

    v361 = sub_10084F264(v554, v346, v558);
    v175.super.super.isa = v188;
    v196 = v361;
    v198 = v362;
    UVIndex.category.getter();
    v102 = UVIndex.ExposureCategory.localizedString.getter();
    v176 = v363;
    sub_10000E73C();
    v364();
    v365 = sub_100004C6C();
    v366(v365);
    sub_10000E73C();
    v367(isa, v548);
    v368 = sub_100023370();
    v369(v368);
    sub_10000CF44();
    sub_100024B04();
    v370();
    goto LABEL_23;
  }

  if (v149 == enum case for DetailChartCondition.visibility(_:))
  {
    if (countAndFlagsBits)
    {
      sub_100011868();
      HourWeather.visibility.getter();
    }

    else
    {
      ConditionUnits.visibility.getter();
      sub_10000C70C(0, &qword_100CAB968);
      sub_100011868();
      sub_1000203A0();
    }

    sub_10005217C();
    v372 = sub_10084F264(v554, v371, v558);
    sub_1000300F0(v372, v373);
    v374 = v110;
    object = Measurement<>.formattedAndClampedVisibility.getter();
    countAndFlagsBits = v375;
    static Set<>.unit.getter();
    sub_100071E74();
    v102 = v496;
    (*(v376 + 104))(v496);
    v377 = sub_100013D74();
    sub_10001B350(v377, v378, v379, v540);
    v380 = v499;
    v381 = v497;
    v382 = v500;
    (*(v499 + 104))(v497, enum case for WeatherFormatScaling.automatic(_:), v500);
    v383 = v504;
    static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

    (*(v380 + 8))(v381, v382);
    sub_10003FDF4(v374, &qword_100CAA9F0);
    (*(v113 + 1))(v102, v510);
    v384 = v555;
    v541 = v139;
    v385 = sub_10003BFA0();
    v387 = *(v386 - 256);
    v388(v385);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_10084FC0C(&qword_100CAB948, &type metadata accessor for NSUnitLength.BaseWeatherFormatStyle);
    isa = v503;
    v389 = v506;
    v390 = v511;
    v176 = v511;
    Measurement.formatted<A>(_:placeholder:unitManager:)();
    sub_100031898();

    v391 = *(v384 + 8);
    v175.super.super.isa = (v384 + 8);
    v392 = v387;
    v196 = v558;
    v391(v139, v392);
    sub_10000E73C();
    v393(v383, v389);
    sub_10000E73C();
    v394(v390, isa);
    sub_100010260();
    sub_100020C04();
    v395();
    v396 = sub_1000068D0();
    v397(v396);
    v398 = sub_100023370();
    v399(v398);
    sub_10000CF44();
    sub_100024B04();
    v400();
    v198 = v546;
    goto LABEL_23;
  }

  v351 = v552;
  if (v149 == enum case for DetailChartCondition.wind(_:))
  {
    sub_100030660();
    sub_1000372F8();
    HourWeather.wind.getter();
    v352 = v486[0];
    Wind.gust.getter();
    v353 = v508 + 8;
    v354 = *(v508 + 8);
    v355 = v507;
    v354(v102, v507);
    v356 = v487;
    v357 = sub_100024D10(v352, 1, v487);
    v508 = v353;
    v543 = v354;
    if (v357 == 1)
    {
      v358 = v356;
      sub_10003FDF4(v352, &qword_100CAEC90);
      v542 = 0;
      v553 = 0;
      v359 = v540;
    }

    else
    {
      v405 = sub_100017EBC();
      v406(v405);
      v407 = sub_100013D74();
      sub_10001B350(v407, v408, v409, v540);
      static Set<>.full.getter();
      sub_100071E74();
      static WeatherFormatStyle<>.weather(_:usage:locale:)();

      sub_10003FDF4(v353, &qword_100CAA9F0);
      (isa)[1](v150, v354);
      v410 = v555;
      v411 = sub_1000211B0();
      v413 = *(v412 - 256);
      v414(v411);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100069B44();
      sub_10084FC0C(v415, v416);
      v417 = v356;
      v418 = v494;
      object = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v420 = v419;

      (*(v410 + 8))(&enum case for WeatherFormatPlaceholder.none(_:), v413);
      (*(v493 + 8))(v113, v418);
      v358 = v417;
      (*(v495 + 8))(v352, v417);
      v421 = [objc_opt_self() mainBundle];
      v579._object = 0x8000000100AE1260;
      sub_100003CD0();
      v422._object = 0xE900000000000040;
      v579._countAndFlagsBits = 0xD000000000000022;
      v425 = NSLocalizedString(_:tableName:bundle:value:comment:)(v423, v424, v421, v422, v579);
      isa = v425._countAndFlagsBits;
      v150 = v425._object;

      sub_10022C350(&qword_100CA40C8);
      v426 = swift_allocObject();
      *(v426 + 16) = xmmword_100A2C3F0;
      *(v426 + 56) = &type metadata for String;
      *(v426 + 64) = sub_100035744();
      *(v426 + 32) = object;
      *(v426 + 40) = v420;
      v355 = v507;
      v542 = static String.localizedStringWithFormat(_:_:)();
      v553 = v427;

      v354 = v543;
      v359 = v540;
    }

    v428 = v486[3];
    v102 = v486[2];
    if (countAndFlagsBits)
    {
      sub_1000372F8();
      HourWeather.wind.getter();
      v429 = v102;
      Wind.speed.getter();
      v354(v102, v355);
    }

    else
    {
      v429 = v552;
      ConditionUnits.windSpeed.getter();
      sub_10000C70C(0, &qword_100CAC428);
      sub_1000203A0();
    }

    static Set<>.value.getter();
    v430 = sub_100017EBC();
    v431(v430);
    v432 = sub_100013D74();
    sub_10001B350(v432, v433, v434, v359);
    sub_100025434();
    static WeatherFormatStyle<>.weather(_:usage:locale:)();

    sub_10003FDF4(v429, &qword_100CAA9F0);
    (isa)[1](v150, v354);
    v435 = v555;
    v436 = sub_100016534();
    v438 = *(v437 - 256);
    v439(v436);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100069B44();
    sub_10084FC0C(v440, v441);
    sub_10003BC0C();
    v442 = v494;
    object = Measurement.formatted<A>(_:placeholder:unitManager:)();
    countAndFlagsBits = v443;

    (*(v435 + 8))(v150, v438);
    sub_10000E73C();
    v444(v188, v442);
    sub_10000E73C();
    v445(v428, v358);
    sub_10005217C();
    isa = v541;
    v175.super.super.isa = sub_10084F264(v446, v447, v558);
    v449 = v448;
    sub_1000372F8();
    HourWeather.wind.getter();
    v176 = v102;
    Wind.compassDirection.getter();
    v543(v102, v507);
    Wind.CompassDirection.abbreviation.getter();
    sub_100031898();
    sub_100010260();
    sub_100020C04();
    v450();
    v451 = sub_1000068D0();
    v452(v451);
    v453 = sub_100023370();
    v454(v453);
    sub_10000CF44();
    v196 = v175.super.super.isa;
    sub_100024B04();
    v455();
    v198 = v449;

    sub_10000EE4C();
    v171 = v542;
    goto LABEL_36;
  }

  if (v149 == enum case for DetailChartCondition.chanceOfRain(_:))
  {
    v102 = v501;
    if (countAndFlagsBits)
    {
      HourWeather.chanceOfRain.getter();
    }

    sub_10084F1F4(v558, v110);
    sub_10000394C(v110);
    if (v142)
    {
      sub_10003FDF4(v110, &qword_100CDE6E0);
      v110 = v486[1];
      sub_100003934();
      v401 = v527;
      sub_10001B350(v402, v403, v404, v527);
      sub_1000372F8();
      HourWeather.date.getter();
      if (sub_100024D10(v110, 1, v401) != 1)
      {
        sub_10003FDF4(v110, &unk_100CB2CF0);
      }
    }

    else
    {
      sub_100071E74();
      DetailChartDataPoint.date.getter();
      sub_100022F14();
      (*(v456 + 8))(v110, isa);
      v457 = v527;
      sub_10001B350(v113, 0, 1, v527);
      (*(v526 + 32))(v102, v113, v457);
    }

    sub_100011868();
    v459 = v488;
    v460 = v491;
    (*(v458 + 104))(v488);
    v461 = static DetailCondition.== infix(_:_:)();
    (*(v110 + 1))(v459, v460);
    if (v461)
    {
      v462 = sub_10084F624();
    }

    else
    {
      v462 = sub_10084F554();
    }

    sub_1000300F0(v462, v463);
    v464 = sub_10000C70C(0, &qword_100CA72F8);
    v465 = static NSNumberFormatter.percent.getter();
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v176 = [v465 stringFromNumber:isa];

    v466 = v526;
    if (v176)
    {
      v467 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v469 = v468;

      countAndFlagsBits = v469;

      v470 = static NSNumberFormatter.percent.getter();
      v471 = sub_1008FBDF4(v470);
      if (!v472)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      isa = countAndFlagsBits;
      v473 = String.hasSuffix(_:)(*&v471);

      if (v473)
      {
        v567 = v467;
        v568 = countAndFlagsBits;
        v474 = static NSNumberFormatter.percent.getter();
        v475 = sub_1008FBDF4(v474);
        if (!v476)
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v565 = v475;
        v566 = v476;
        v563 = 0;
        v564 = 0xE000000000000000;
        sub_10002D5A4();
        sub_100003CD0();
        v467 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        isa = v477;

        v176 = v464;
        v478 = static NSNumberFormatter.percent.getter();
        sub_1008FBDF4(v478);
        sub_100031898();
        countAndFlagsBits = isa;
      }

      else
      {
        v102 = 0;
        v176 = 0;
      }
    }

    else
    {
      v102 = 0;
      v467 = 0;
      countAndFlagsBits = 0;
    }

    object = v467;
    v479 = *(v466 + 8);
    v175.super.super.isa = (v466 + 8);
    v479(v501, v527);
    v480 = sub_100004C6C();
    v481(v480);
    sub_10000E73C();
    v482(v351, v548);
    v483 = sub_100023370();
    v484(v483);
    sub_10000CF44();
    sub_100024B04();
    v485();

    sub_10000EE4C();
    v171 = 0;
    v235 = 0;
    v196 = v558;
    v198 = v546;
    goto LABEL_37;
  }

LABEL_86:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10084F1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CDE6E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10084F264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10022C350(&qword_100CDE6E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    v15 = *(a1 + 16);
  }

  else
  {
    sub_10084F1F4(a3, v7);
    v16 = type metadata accessor for DetailChartDataPoint();
    if (sub_100024D10(v7, 1, v16) == 1)
    {
      sub_10003FDF4(v7, &qword_100CDE6E0);
      sub_10001B350(v10, 1, 1, v11);
      HourWeather.date.getter();
      if (sub_100024D10(v10, 1, v11) != 1)
      {
        sub_10003FDF4(v10, &unk_100CB2CF0);
      }
    }

    else
    {
      DetailChartDataPoint.date.getter();
      (*(*(v16 - 8) + 8))(v7, v16);
      sub_10001B350(v10, 0, 1, v11);
      (*(v12 + 32))(v14, v10, v11);
    }

    v15 = sub_10084F554();
    v18 = v17;
    (*(v12 + 8))(v14, v11);
    swift_beginAccess();
    *(a1 + 16) = v15;
    *(a1 + 24) = v18;
  }

  return v15;
}

uint64_t sub_10084F554()
{
  if (qword_100CA1EC8 != -1)
  {
    swift_once();
  }

  v0 = qword_100D8FAD8;
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  [v0 setTimeZone:isa];

  v2 = Date._bridgeToObjectiveC()().super.isa;
  v3 = [v0 stringFromDate:v2];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_10084F624()
{
  v0 = type metadata accessor for Date.FormatStyle();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Calendar();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for Date();
  sub_1000037C4();
  v35 = v15;
  v36 = v14;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v34 = v17 - v16;
  static Calendar.currentCalendar(with:)();
  Date.wc_addHours(_:calendar:)();
  (*(v9 + 8))(v13, v7);
  v18 = [objc_opt_self() mainBundle];
  v37._object = 0x8000000100AE12C0;
  sub_100003CD0();
  v19._object = 0xA900000000000040;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v18, v19, v37);

  sub_10022C350(&qword_100CA40C8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100A3B020;
  sub_10084F9B0();
  v23 = Date.hour(timeZone:formatStyle:)();
  v24 = *(v2 + 8);
  v24(v6, v0);
  *(v22 + 56) = &type metadata for Int;
  *(v22 + 64) = &protocol witness table for Int;
  *(v22 + 32) = v23;
  sub_10084F9B0();
  v25 = Date.hour(timeZone:formatStyle:)();
  v24(v6, v0);
  *(v22 + 96) = &type metadata for Int;
  *(v22 + 104) = &protocol witness table for Int;
  *(v22 + 72) = v25;
  v26 = Date.formattedHoursForText(timeZone:)();
  v28 = v27;
  *(v22 + 136) = &type metadata for String;
  v29 = sub_100035744();
  *(v22 + 144) = v29;
  *(v22 + 112) = v26;
  *(v22 + 120) = v28;
  v30 = Date.formattedHoursForText(timeZone:)();
  *(v22 + 176) = &type metadata for String;
  *(v22 + 184) = v29;
  *(v22 + 152) = v30;
  *(v22 + 160) = v31;
  v32 = static String.localizedStringWithFormat(_:_:)();

  (*(v35 + 8))(v34, v36);
  return v32;
}

uint64_t sub_10084F9B0()
{
  v0 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for TimeZone();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for Calendar();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10022C350(&qword_100CBD420);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_10022C350(&qword_100CBD428);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for Date.FormatStyle.DateStyle();
  sub_10001B350(v9, 1, 1, v10);
  v11 = type metadata accessor for Date.FormatStyle.TimeStyle();
  sub_10001B350(v6, 1, 1, v11);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  return Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
}

uint64_t sub_10084FC0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10084FC64@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v87 = a2;
  v70[1] = type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v86 = v5 - v4;
  v82 = type metadata accessor for SevereAlertComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v79 = (v8 - v7);
  v9 = sub_10022C350(&qword_100CDE7A0);
  __chkstk_darwin(v9 - 8);
  v76 = v70 - v10;
  v90 = type metadata accessor for WeatherAlert.Prominence();
  sub_1000037C4();
  v88 = v11;
  __chkstk_darwin(v12);
  v80 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = v70 - v15;
  __chkstk_darwin(v16);
  v91 = v70 - v17;
  type metadata accessor for SevereAlertComponentStringsBuilder.SevereAlertSummary();
  sub_1000037C4();
  v84 = v19;
  v85 = v18;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v22 = v21 - v20;
  v23 = sub_10022C350(&qword_100CC0A50);
  __chkstk_darwin(v23 - 8);
  v83 = v70 - v24;
  sub_1008503B8(a1, v70 - v24);
  v25 = *a1;
  v26 = SevereAlertComponentStringsBuilder.title(for:characterLimit:)(*a1, 25);
  object = v26._object;
  countAndFlagsBits = v26._countAndFlagsBits;
  v92 = v25;

  sub_10022C350(&qword_100CB4738);
  sub_100850C88();
  v27 = Sequence.unique<A>(by:)();

  type metadata accessor for SevereAlertComponent();
  sub_100010DB0();
  SevereAlertComponentStringsBuilder.descriptions(for:location:currentDate:bulletString:)();
  sub_100010DB0();
  v75 = SevereAlertComponentStringsBuilder.descriptions(for:location:currentDate:bulletString:)();
  v81 = a1;
  v28 = v27;
  v29 = v76;
  v89 = v22;
  SevereAlertComponentStringsBuilder.summary(alertDescriptions:events:location:currentDate:)();

  sub_1003DFB60(v25, v29);
  v30 = type metadata accessor for WeatherAlert();
  if (sub_100024D10(v29, 1, v30) == 1)
  {
    sub_1000180EC(v29, &qword_100CDE7A0);
    v31 = *(v88 + 104);
    LODWORD(v76) = enum case for WeatherAlert.Prominence.high(_:);
    v31(v91);
  }

  else
  {
    v32 = v74;
    WeatherAlert.prominence.getter();
    (*(*(v30 - 8) + 8))(v29, v30);
    (*(v88 + 32))(v91, v32, v90);
    LODWORD(v76) = enum case for WeatherAlert.Prominence.high(_:);
  }

  v73 = SevereAlertComponentStringsBuilder.longAlertDescription(for:location:)();
  v72 = v33;
  v34 = SevereAlertComponentStringsBuilder.SevereAlertSummary.description.getter();
  v36 = v35;
  v71 = SevereAlertComponentStringsBuilder.SevereAlertSummary.footer.getter();
  v74 = v28;
  v38 = v37;
  v39 = v82;
  v40 = v88;
  v41 = *(v88 + 16);
  v42 = v79;
  v44 = v90;
  v43 = v91;
  v41(v79 + *(v82 + 36), v91, v90);
  v45 = v81;
  v46 = v81[1];
  *v42 = v34;
  v42[1] = v36;
  v47 = v72;
  v42[2] = v73;
  v42[3] = v47;
  v48 = object;
  v49 = countAndFlagsBits;
  v42[4] = v75;
  v42[5] = v49;
  v42[6] = v48;
  v42[7] = v71;
  v42[8] = v38;
  *(v42 + *(v39 + 40)) = v46;
  v50 = sub_100850638(v43, v45);
  v52 = v51;
  v53 = v80;
  v41(v80, v43, v44);
  v54 = (*(v40 + 88))(v53, v44);
  if (v54 == v76)
  {
    v55 = v86;
    v56 = sub_10000912C();
    sub_100014FD4(v56, v57, v58, v59);
  }

  else
  {
    v60 = v44;
    v55 = v86;
    if (v54 == enum case for WeatherAlert.Prominence.low(_:))
    {

      *v55 = v50;
      *(v55 + 8) = v52;
      *(v55 + 16) = 0xD00000000000001DLL;
      *(v55 + 24) = 0x8000000100AC04D0;
      *(v55 + 32) = 0;
      *(v55 + 40) = 0;
      *(v55 + 48) = 0;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v61 = sub_10000912C();
      sub_100014FD4(v61, v62, v63, v64);

      (*(v40 + 8))(v53, v60);
    }
  }

  v65 = v87;
  sub_100850CEC(v55, v87, type metadata accessor for LocationComponentHeaderViewModel);
  v66 = type metadata accessor for LocationComponentContainerViewModel();
  sub_100850CEC(v42, v65 + v66[5], type metadata accessor for SevereAlertComponentViewModel);
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v67 = v83;
  sub_100850D4C(v83, v65 + v66[8]);
  sub_10013D288();
  v68 = Dictionary.init(dictionaryLiteral:)();
  sub_1001883B0(v55, type metadata accessor for LocationComponentHeaderViewModel);
  sub_1001883B0(v42, type metadata accessor for SevereAlertComponentViewModel);
  (*(v40 + 8))(v91, v90);
  (*(v84 + 8))(v89, v85);
  result = sub_1000180EC(v67, &qword_100CC0A50);
  *(v65 + v66[6]) = 256;
  *(v65 + v66[7]) = v68;
  return result;
}

uint64_t sub_1008503B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CDE7A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  sub_1003DFB60(*a1, v6);
  v14 = type metadata accessor for WeatherAlert();
  if (sub_100024D10(v6, 1, v14) == 1)
  {
    sub_1000180EC(v6, &qword_100CDE7A0);
    v15 = type metadata accessor for LocationComponentAction(0);
    v16 = a2;
    v17 = 1;
  }

  else
  {
    WeatherAlert.detailsURL.getter();
    (*(*(v14 - 8) + 8))(v6, v14);
    v18 = *(v8 + 32);
    v18(v13, v10, v7);
    v19 = *(sub_10022C350(&qword_100CA6680) + 48);
    v18(a2, v13, v7);
    *(a2 + v19) = 1;
    v20 = type metadata accessor for LocationComponentAction(0);
    swift_storeEnumTagMultiPayload();
    v16 = a2;
    v17 = 0;
    v15 = v20;
  }

  return sub_10001B350(v16, v17, 1, v15);
}

uint64_t sub_1008505FC@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherAlert.summary.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100850638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherAlert.Prominence();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for WeatherAlert.Prominence.high(_:))
  {
    v10 = [objc_opt_self() mainBundle];
    v24._object = 0x8000000100AE1370;
    v11._countAndFlagsBits = 0x5720657265766553;
    v11._object = 0xEE00726568746165;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD000000000000028;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v24)._countAndFlagsBits;
  }

  else if (v9 == enum case for WeatherAlert.Prominence.low(_:))
  {
    v14 = [objc_opt_self() mainBundle];
    v15._countAndFlagsBits = 0xD000000000000016;
    v25._object = 0x8000000100AE13C0;
    v16._countAndFlagsBits = 0x2072656874616557;
    v16._object = 0xEE00737472656C41;
    v15._object = 0x8000000100AE13A0;
    v25._countAndFlagsBits = 0xD00000000000005ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v25);

    sub_10022C350(&qword_100CA40C8);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100A2C3F0;
    v18 = *(*a2 + 16);
    *(v17 + 56) = &type metadata for Int;
    *(v17 + 64) = &protocol witness table for Int;
    *(v17 + 32) = v18;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v19 = [objc_opt_self() mainBundle];
    v26._object = 0x8000000100AE1370;
    v20._countAndFlagsBits = 0x5720657265766553;
    v20._object = 0xEE00726568746165;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0xD000000000000028;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v26)._countAndFlagsBits;

    (*(v5 + 8))(v8, v4);
  }

  return countAndFlagsBits;
}

uint64_t sub_100850994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v47 = a2;
  v48 = a6;
  v44 = a1;
  v45 = a5;
  v46 = a7;
  v9 = type metadata accessor for WeatherAlert();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = *(a3 + 40);
  v42 = *(a3 + 48);
  v43 = v15;
  v16 = *(a4 + 16);
  if (v16)
  {
    v40 = &v39 - v14;
    v41 = v10;
    v19 = *(v10 + 16);
    v18 = v10 + 16;
    v17 = v19;
    v20 = a4 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v21 = *(v18 + 56);

    while (1)
    {
      v17(v12, v20, v9);
      v22 = WeatherAlert.source.getter();
      v24 = v23;

      v25 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v25 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        break;
      }

      (*(v18 - 8))(v12, v9);
      v20 += v21;
      if (!--v16)
      {
        goto LABEL_9;
      }
    }

    v30 = v40;
    v31 = v41 + 32;
    (*(v41 + 32))(v40, v12, v9);
    v28 = WeatherAlert.source.getter();
    v29 = v32;
    (*(v31 - 24))(v30, v9);
    v26 = v42;
    v27 = v43;
  }

  else
  {

LABEL_9:

    v27 = v43;
    v28 = v43;
    v29 = v26;
  }

  v34 = v46;
  v33 = v47;
  v35 = v44;
  *v46 = v44;
  v34[1] = v33;
  v34[2] = v27;
  v34[3] = v26;
  v34[4] = v28;
  v34[5] = v29;
  v36 = v45;
  v37 = v48;
  v34[6] = v45;
  v34[7] = v37;
  v34[8] = v35;
  v34[9] = v33;
  v34[10] = v36;
  v34[11] = v37;
  *(v34 + 96) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  v34[13] = 0;
  v34[14] = 0;
  *(v34 + 120) = 0;
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_100850BEC()
{
  v1 = OBJC_IVAR____TtC7Weather36SevereAlertComponentViewModelFactory_severeAlertComponentStringBuilder;
  type metadata accessor for SevereAlertComponentStringsBuilder();
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

unint64_t sub_100850C88()
{
  result = qword_100CDE7A8;
  if (!qword_100CDE7A8)
  {
    sub_10022E824(&qword_100CB4738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDE7A8);
  }

  return result;
}

uint64_t sub_100850CEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100850D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC0A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100850DBC(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA28F0 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2900 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA28F8 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA28E8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA28E0 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_100850F28(char a1, char a2, uint64_t a3)
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
  v37 = sub_100850DBC(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_map;
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
  sub_10031694C(a3 + *(v39 + 20) + OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
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

uint64_t sub_1008515AC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v127 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v131 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(v17 + v18, v16 + v13, v19);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v20;
    *(v12 + 48) = v21;
    v22 = sub_100013600();
    sub_100003E18(v22);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v22 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v22);
    *(v12 + 64) = v23;
    *(v12 + 72) = v24;
    v25 = sub_100013600();
    sub_100003E18(v25);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_newsArticle, v25 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v25);
    *(v12 + 88) = v26;
    *(v12 + 96) = v27;
    v28 = sub_100013600();
    sub_100003E18(v28);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_airQuality, v28 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v28);
    *(v12 + 112) = v29;
    *(v12 + 120) = v30;
    v128 = v13 + 2 * v14;
    v129 = v14;
    v31 = v14;
    v32 = v15;
    v33 = swift_allocObject();
    v34 = sub_10001361C(v33, xmmword_100A2D320) + v13;
    v35 = a1;
    v36 = *(a1 + 16);
    v37 = v35;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v36 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v34[v31], v7);
    *(v12 + 128) = sub_1001B38A0(v33);
    *(v12 + 136) = v38;
    *(v12 + 144) = v39;
    v130 = v32;
    v40 = swift_allocObject();
    sub_1000056EC(v40);
    v42 = v41 + v13;
    v43 = *(v37 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v43 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v129[v42], v7);
    *(v12 + 152) = sub_1001B38A0(v33);
    *(v12 + 160) = v44;
    *(v12 + 168) = v45;
    v46 = swift_allocObject();
    sub_1000056EC(v46);
    v48 = v47 + v13;
    v49 = v131;
    v50 = *(v131 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v51 = v129;
    sub_10031694C(v50 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v129[v48], v7);
    *(v12 + 176) = sub_1001B38A0(v33);
    *(v12 + 184) = v52;
    *(v12 + 192) = v53;
    v54 = sub_10000C998();
    sub_1000056EC(v54);
    v56 = v55 + v13;
    v57 = *(v49 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v58 = v56 + v51;
    v59 = v51;
    sub_10031694C(v57 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v58, v7);
    *(v12 + 200) = sub_1001B38A0(v33);
    *(v12 + 208) = v60;
    *(v12 + 216) = v61;
    v62 = sub_10000C998();
    sub_100003E18(v62);
    v64 = v63 + v13;
    v65 = *(v49 + 16);
    sub_10031694C(v65 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v63 + v13, v7);
    sub_10031694C(v65 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v64 + v59, v7);
    *(v12 + 224) = sub_1001B38A0(v62);
    *(v12 + 232) = v66;
    *(v12 + 240) = v67;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v68 = sub_10022C350(&qword_100CAC7F0);
    v69 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v70 = *(v7 + 72);
    v71 = *(v7 + 80);
    v72 = v68;
    v73 = swift_allocObject();
    sub_10001361C(v73, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(v74 + v75, v73 + v69, v76);
    *(v12 + 32) = sub_1001B38A0(v73);
    *(v12 + 40) = v77;
    *(v12 + 48) = v78;
    sub_1000167B0();
    v79 = swift_allocObject();
    sub_1000056EC(v79);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v73 + v69, v7);
    *(v12 + 56) = sub_1001B38A0(v73);
    *(v12 + 64) = v80;
    *(v12 + 72) = v81;
    sub_1000167B0();
    v82 = swift_allocObject();
    sub_1000056EC(v82);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_newsArticle, v73 + v69, v7);
    *(v12 + 80) = sub_1001B38A0(v73);
    *(v12 + 88) = v83;
    *(v12 + 96) = v84;
    sub_1000167B0();
    v85 = swift_allocObject();
    sub_1000056EC(v85);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_airQuality, v73 + v69, v7);
    *(v12 + 104) = sub_1001B38A0(v73);
    *(v12 + 112) = v86;
    *(v12 + 120) = v87;
    v130 = v71;
    v88 = swift_allocObject();
    sub_1000056EC(v88);
    sub_10031694C(v9, v89 + v69, v7);
    *(v12 + 128) = sub_1001B38A0(v73);
    *(v12 + 136) = v90;
    *(v12 + 144) = v91;
    v92 = v69 + 2 * v70;
    v93 = v70;
    sub_1000167B0();
    v94 = swift_allocObject();
    v95 = sub_10001361C(v94, xmmword_100A2D320);
    v129 = v9;
    v96 = v95 + v69;
    v97 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v127[0] = v93;
    sub_10031694C(v97 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v96[v93], v7);
    *(v12 + 152) = sub_1001B38A0(v94);
    *(v12 + 160) = v98;
    *(v12 + 168) = v99;
    v127[1] = v92;
    v100 = swift_allocObject();
    sub_100003E18(v100);
    v102 = v101 + v69;
    v103 = v131;
    v104 = *(v131 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v104 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v102 + v93, v7);
    *(v12 + 176) = sub_1001B38A0(v100);
    *(v12 + 184) = v105;
    *(v12 + 192) = v106;
    sub_1000167B0();
    v128 = v72;
    v107 = swift_allocObject();
    sub_100003E18(v107);
    v109 = v108 + v69;
    v110 = *(v103 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v111 = v127[0];
    sub_10031694C(v110 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v109 + v127[0], v7);
    *(v12 + 200) = sub_1001B38A0(v107);
    *(v12 + 208) = v112;
    *(v12 + 216) = v113;
    sub_1000167B0();
    v114 = swift_allocObject();
    sub_100003E18(v114);
    v116 = v115 + v69;
    v117 = *(v103 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v117 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v116 + v111, v7);
    *(v12 + 224) = sub_1001B38A0(v114);
    *(v12 + 232) = v118;
    *(v12 + 240) = v119;
    v120 = swift_allocObject();
    sub_100003E18(v120);
    v122 = v121 + v69;
    v123 = *(v131 + 16);
    sub_10031694C(v123 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v121 + v69, v7);
    sub_10031694C(v123 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v122 + v111, v7);
    *(v12 + 248) = sub_1001B38A0(v120);
    *(v12 + 256) = v124;
    *(v12 + 264) = v125;
    sub_1003169AC(v129, v7);
  }

  return v12;
}

void sub_100851E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BC50;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BBF0;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3F970;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BC00;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BB70;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A2C3F0;
  v17[1] = xmmword_100A3BC00;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A41B80;
  v15[0] = xmmword_100A3BBB0;
  v15[1] = xmmword_100A3BBF0;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BBC0;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BC10;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC20;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v35 = v10;
  v36 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 0);
  qword_100D90F10 = v8;
}

void sub_100851F70()
{
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BC50;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3F970;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC20;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A3BBB0;
  v9[0] = xmmword_100A2C3F0;
  v9[1] = xmmword_100A3BC20;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = xmmword_100A3BC00;
  v7[0] = xmmword_100A3BB70;
  v7[1] = xmmword_100A3BC60;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC10;
  v5[0] = xmmword_100A2C3F0;
  v5[1] = xmmword_100A3BC30;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BB80;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BB80;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC10;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC30;
  v27 = v2;
  v28 = v1;
  sub_100557528();
  qword_100D90F18 = v0;
}

void sub_100852088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[0] = xmmword_100A2D320;
  v28[1] = xmmword_100A3BC40;
  v27[0] = xmmword_100A3BC40;
  v27[1] = xmmword_100A3BB80;
  v29 = v28;
  v30 = v27;
  v24 = xmmword_100A3BB70;
  v25 = 1;
  v26 = 4;
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BC50;
  v31 = &v24;
  v32 = v23;
  v20 = 0;
  v21 = xmmword_100A3F980;
  v22 = 1;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BB80;
  v33 = &v20;
  v34 = v19;
  v15[1] = xmmword_100A3BC50;
  v16 = xmmword_100A2D320;
  v17 = 1;
  v18 = 3;
  v35 = &v16;
  v36 = v15;
  v13[1] = xmmword_100A3BB80;
  v14[0] = xmmword_100A2D320;
  v14[1] = xmmword_100A3BC60;
  v15[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC50;
  v13[0] = xmmword_100A3BBD0;
  v37 = v14;
  v38 = v13;
  v11[1] = xmmword_100A3BC60;
  v12[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v11[0] = xmmword_100A2C3F0;
  v39 = v12;
  v40 = v11;
  v9[1] = xmmword_100A3BB80;
  v10[0] = xmmword_100A3BBB0;
  v9[0] = xmmword_100A2C3F0;
  v41 = v10;
  v42 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 1);
  qword_100D90F20 = v8;
}

void sub_1008521B8()
{
  v16[0] = 2;
  v16[1] = 4;
  v17 = xmmword_100A2C3F0;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC50;
  v18 = v16;
  v19 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3F970;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BC60;
  v20 = v14;
  v21 = v13;
  v10 = 0;
  v11 = xmmword_100A3F980;
  v12 = 1;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BC50;
  v22 = &v10;
  v23 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = xmmword_100A3BC60;
  v7[0] = xmmword_100A2D320;
  v7[1] = xmmword_100A3BBD0;
  v24 = v8;
  v25 = v7;
  v6[0] = xmmword_100A3BBD0;
  v6[1] = xmmword_100A3BC50;
  v5[0] = xmmword_100A3BBD0;
  v5[1] = xmmword_100A3BC60;
  v26 = v6;
  v27 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v28 = v4;
  v29 = v3;
  v2[0] = xmmword_100A2C3F0;
  v2[1] = xmmword_100A3BC50;
  v1[0] = xmmword_100A2C3F0;
  v1[1] = xmmword_100A3BC60;
  v30 = v2;
  v31 = v1;
  sub_100557528();
  qword_100D90F28 = v0;
}

void sub_1008522E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A2D320;
  v22[1] = xmmword_100A2C3F0;
  v21[0] = xmmword_100A3BC50;
  v21[1] = xmmword_100A3BC60;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3F970;
  v19[0] = xmmword_100A3BC60;
  v19[1] = xmmword_100A3BC40;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BC80;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC60;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BC90;
  v16[1] = xmmword_100A3BB70;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BC60;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A3BC90;
  v14[1] = xmmword_100A3BBD0;
  v13[0] = xmmword_100A3BC60;
  v13[1] = xmmword_100A3BC60;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A3BC50;
  v12[1] = xmmword_100A3BC40;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC40;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v35 = v10;
  v36 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D90F30 = v8;
}

uint64_t sub_1008523FC(uint64_t a1, void (*a2)(char *))
{
  v5 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  v32 = v7;
  __chkstk_darwin(v8);
  sub_100003878();
  v31 = v9;
  __chkstk_darwin(v10);
  sub_100013628();
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for LocationViewComponent();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CA5008);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v29 - v23;

  sub_1005D71C4(v25, a2);
  v30 = v26;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather37LocationDefaultTrendNewsConfiguration8_Storage_map, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10001B350(v24, 0, 1, v5);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather37LocationDefaultTrendNewsConfiguration8_Storage_airQuality, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather37LocationDefaultTrendNewsConfiguration8_Storage_newsArticle, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v24, v21, &qword_100CA5008);
  sub_10031694C(v13, v31, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v2, v32, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for DefaultTrendNewsContent._Storage(0);
  swift_allocObject();
  v27 = sub_1002BE128(v30);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v24, &qword_100CA5008);
  return v27;
}

uint64_t type metadata accessor for CurrentWeatherEditorView()
{
  result = qword_100CDE810;
  if (!qword_100CDE810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008527AC()
{
  sub_100081BC8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CurrentWeather();
    if (v1 <= 0x3F)
    {
      sub_10013DB50();
      if (v2 <= 0x3F)
      {
        sub_100852860();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100852860()
{
  if (!qword_100CDE820)
  {
    type metadata accessor for CurrentWeather();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CDE820);
    }
  }
}

void sub_1008528D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  sub_10022C350(&qword_100CA54B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = &a9 - v34;
  sub_1000955E0(v23, &a9 - v34, &qword_100CA54B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100463960(v35, v25);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v28 + 8))(v32, v26);
  }

  sub_10000536C();
}

void sub_100852A74()
{
  sub_10000C778();
  v44 = v0;
  v56 = v1;
  v2 = type metadata accessor for CurrentWeatherEditorView();
  v53 = *(v2 - 8);
  v52 = *(v53 + 64);
  __chkstk_darwin(v2 - 8);
  v50 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA5528);
  sub_1000037C4();
  v54 = v4;
  v55 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  v51 = &v43 - v7;
  v8 = type metadata accessor for InsetGroupedListStyle();
  sub_1000037C4();
  v45 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = sub_10022C350(&qword_100CDE858);
  sub_1000037C4();
  v16 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  sub_10022C350(&qword_100CDE860);
  sub_1000037C4();
  v46 = v20;
  v47 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v43 - v23;
  sub_10022C350(&qword_100CDE868);
  sub_1000037C4();
  v48 = v25;
  v49 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v43 = &v43 - v28;
  v57 = v0;
  sub_10022C350(&qword_100CDE870);
  sub_100006F64(&qword_100CDE878, &qword_100CDE870);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_100005DFC();
  v30 = sub_100006F64(v29, &qword_100CDE858);
  View.listStyle<A>(_:)();
  (*(v45 + 8))(v13, v8);
  (*(v16 + 8))(v19, v14);
  LocalizedStringKey.init(stringLiteral:)();
  v58 = v14;
  v59 = v8;
  v60 = v30;
  v61 = &protocol witness table for InsetGroupedListStyle;
  sub_100005DB4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v43;
  v33 = v46;
  View.navigationTitle(_:)();

  v34 = v33;
  (*(v47 + 8))(v24, v33);
  LocalizedStringKey.init(stringLiteral:)();
  v35 = v50;
  sub_100855C18();
  v36 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v37 = swift_allocObject();
  sub_100855724(v35, v37 + v36);
  v38 = v51;
  Button<>.init(_:action:)();
  v58 = v34;
  v59 = OpaqueTypeConformance2;
  sub_100004C88();
  swift_getOpaqueTypeConformance2();
  sub_100005DCC();
  sub_100006F64(v39, &qword_100CA5528);
  v40 = v38;
  v41 = v48;
  v42 = v54;
  View.navigationBarItems<A>(trailing:)();
  (*(v55 + 8))(v40, v42);
  (*(v49 + 8))(v32, v41);
  sub_10000536C();
}

uint64_t sub_10085303C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = sub_10022C350(&qword_100CBB730);
  __chkstk_darwin(v3 - 8);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = (&v37 - v6);
  v41 = sub_10022C350(&qword_100CDE888);
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v45 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = sub_10022C350(&qword_100CDE890);
  v39 = *(v11 - 8);
  v12 = v39;
  v40 = v11;
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  LocalizedStringKey.init(stringLiteral:)();
  v49 = Text.init(_:tableName:bundle:comment:)();
  v50 = v18;
  v51 = v19 & 1;
  v52 = v20;
  v48 = a1;
  sub_10022C350(&qword_100CDE898);
  sub_100006F64(&qword_100CDE8A0, &qword_100CDE898);
  v38 = v17;
  Section<>.init(header:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v49 = Text.init(_:tableName:bundle:comment:)();
  v50 = v21;
  v51 = v22 & 1;
  v52 = v23;
  v47 = a1;
  sub_10022C350(&qword_100CDE8A8);
  sub_100006F64(&qword_100CDE8B0, &qword_100CDE8A8);
  v37 = v10;
  Section<>.init(header:content:)();
  v24 = v46;
  sub_1008549C8(v46);
  v25 = *(v12 + 16);
  v26 = v40;
  v25(v14, v17, v40);
  v27 = v45;
  v28 = *(v44 + 16);
  v29 = v41;
  v28(v45, v10, v41);
  v30 = v24;
  v31 = v42;
  sub_1000955E0(v30, v42, &qword_100CBB730);
  v32 = v43;
  v25(v43, v14, v26);
  v33 = sub_10022C350(&qword_100CDE8B8);
  v28(&v32[*(v33 + 48)], v27, v29);
  sub_1000955E0(v31, &v32[*(v33 + 64)], &qword_100CBB730);
  sub_1000180EC(v46, &qword_100CBB730);
  v34 = *(v44 + 8);
  v34(v37, v29);
  v35 = *(v39 + 8);
  v35(v38, v26);
  sub_1000180EC(v31, &qword_100CBB730);
  v34(v45, v29);
  return (v35)(v14, v26);
}

uint64_t sub_10085359C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CC4470);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  __chkstk_darwin(v17);
  v19 = &v22 - v18;
  sub_1008537EC(&v22 - v18);
  sub_100853C70(v16);
  sub_1008540F8(v13);
  sub_1000955E0(v19, v10, &qword_100CC4470);
  sub_1000955E0(v16, v7, &qword_100CC4470);
  sub_1000955E0(v13, v4, &qword_100CC4470);
  sub_1000955E0(v10, a1, &qword_100CC4470);
  v20 = sub_10022C350(&qword_100CDE8C8);
  sub_1000955E0(v7, a1 + *(v20 + 48), &qword_100CC4470);
  sub_1000955E0(v4, a1 + *(v20 + 64), &qword_100CC4470);
  sub_1000180EC(v13, &qword_100CC4470);
  sub_1000180EC(v16, &qword_100CC4470);
  sub_1000180EC(v19, &qword_100CC4470);
  sub_1000180EC(v4, &qword_100CC4470);
  sub_1000180EC(v7, &qword_100CC4470);
  return sub_1000180EC(v10, &qword_100CC4470);
}

uint64_t sub_1008537EC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = type metadata accessor for CurrentWeatherEditorView();
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CurrentWeather();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(qword_100CA5418);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  CurrentWeather.temperature.getter();
  v13 = sub_10022C350(&qword_100CA53F8);
  sub_10001B350(v12, 0, 1, v13);
  sub_10022C350(&qword_100CDE7B0);
  State.wrappedValue.getter();
  CurrentWeather.temperature.getter();
  (*(v4 + 8))(v6, v3);
  v14 = v34;
  sub_10001B350(v9, 0, 1, v13);
  v15 = v33;
  sub_100855C18();
  v16 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v17 = swift_allocObject();
  sub_100855724(v15, v17 + v16);
  v18 = sub_10022C350(&qword_100CC4470);
  v19 = v18[10];
  sub_10001B350(v14 + v19, 1, 1, v13);
  *v14 = 0x74617265706D6574;
  v14[1] = 0xEB00000000657275;
  sub_1000955E0(v12, v14 + v18[7], qword_100CA5418);
  sub_1007EE580(v9, v14 + v19, qword_100CA5418);
  v20 = (v14 + v18[8]);
  *v20 = sub_100855CFC;
  v20[1] = v17;
  sub_10022C350(&qword_100CBB748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v22 = objc_opt_self();
  *(inited + 32) = [v22 celsius];
  *(inited + 40) = 0x737569736C6563;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = [v22 fahrenheit];
  *(inited + 64) = 0x65686E6572686166;
  *(inited + 72) = 0xEA00000000007469;
  sub_1008558A8(inited, sub_1006A80E4, &qword_100CD14A0, &unk_100A8DA00, v23, v24, v25, v26, v32, v33, v34, v35);
  v28 = v27;
  swift_setDeallocating();
  sub_1005C2008();
  if (v28)
  {
    sub_100855AB8();
    v30 = v29;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v9, qword_100CA5418);
  result = sub_1000180EC(v12, qword_100CA5418);
  *(v14 + v18[9]) = v30;
  return result;
}

uint64_t sub_100853C70@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for CurrentWeatherEditorView();
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v34 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for CurrentWeather();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(qword_100CA5418);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  CurrentWeather.apparentTemperature.getter();
  v12 = sub_10022C350(&qword_100CA53F8);
  sub_10001B350(v11, 0, 1, v12);
  v13 = v8;
  v14 = v33;
  sub_10022C350(&qword_100CDE7B0);
  State.wrappedValue.getter();
  CurrentWeather.apparentTemperature.getter();
  (*(v3 + 8))(v5, v32);
  sub_10001B350(v13, 0, 1, v12);
  v15 = v34;
  sub_100855C18();
  v16 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v17 = swift_allocObject();
  sub_100855724(v15, v17 + v16);
  v18 = sub_10022C350(&qword_100CC4470);
  v19 = v18[10];
  sub_10001B350(v14 + v19, 1, 1, v12);
  *v14 = 0x696C20736C656566;
  v14[1] = 0xEA0000000000656BLL;
  sub_1000955E0(v11, v14 + v18[7], qword_100CA5418);
  sub_1007EE580(v13, v14 + v19, qword_100CA5418);
  v20 = (v14 + v18[8]);
  *v20 = sub_100855CE4;
  v20[1] = v17;
  sub_10022C350(&qword_100CBB748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v22 = objc_opt_self();
  *(inited + 32) = [v22 celsius];
  *(inited + 40) = 0x737569736C6563;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = [v22 fahrenheit];
  *(inited + 64) = 0x65686E6572686166;
  *(inited + 72) = 0xEA00000000007469;
  sub_1008558A8(inited, sub_1006A80E4, &qword_100CD14A0, &unk_100A8DA00, v23, v24, v25, v26, v32, v33, v34, v35);
  v28 = v27;
  swift_setDeallocating();
  sub_1005C2008();
  if (v28)
  {
    sub_100855AB8();
    v30 = v29;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v13, qword_100CA5418);
  result = sub_1000180EC(v11, qword_100CA5418);
  *(v14 + v18[9]) = v30;
  return result;
}

uint64_t sub_1008540F8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = type metadata accessor for CurrentWeatherEditorView();
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CurrentWeather();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(qword_100CA5418);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  CurrentWeather.dewPoint.getter();
  v13 = sub_10022C350(&qword_100CA53F8);
  sub_10001B350(v12, 0, 1, v13);
  sub_10022C350(&qword_100CDE7B0);
  State.wrappedValue.getter();
  CurrentWeather.dewPoint.getter();
  (*(v4 + 8))(v6, v3);
  v14 = v34;
  sub_10001B350(v9, 0, 1, v13);
  v15 = v33;
  sub_100855C18();
  v16 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v17 = swift_allocObject();
  sub_100855724(v15, v17 + v16);
  v18 = sub_10022C350(&qword_100CC4470);
  v19 = v18[10];
  sub_10001B350(v14 + v19, 1, 1, v13);
  *v14 = 0x6E696F7020776564;
  v14[1] = 0xE900000000000074;
  sub_1000955E0(v12, v14 + v18[7], qword_100CA5418);
  sub_1007EE580(v9, v14 + v19, qword_100CA5418);
  v20 = (v14 + v18[8]);
  *v20 = sub_100855CCC;
  v20[1] = v17;
  sub_10022C350(&qword_100CBB748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v22 = objc_opt_self();
  *(inited + 32) = [v22 celsius];
  *(inited + 40) = 0x737569736C6563;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = [v22 fahrenheit];
  *(inited + 64) = 0x65686E6572686166;
  *(inited + 72) = 0xEA00000000007469;
  sub_1008558A8(inited, sub_1006A80E4, &qword_100CD14A0, &unk_100A8DA00, v23, v24, v25, v26, v32, v33, v34, v35);
  v28 = v27;
  swift_setDeallocating();
  sub_1005C2008();
  if (v28)
  {
    sub_100855AB8();
    v30 = v29;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v9, qword_100CA5418);
  result = sub_1000180EC(v12, qword_100CA5418);
  *(v14 + v18[9]) = v30;
  return result;
}

uint64_t sub_100854578@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for CurrentWeatherEditorView();
  v2 = v1 - 8;
  v38 = *(v1 - 8);
  v37 = *(v38 + 64);
  __chkstk_darwin(v1);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CurrentWeather();
  v31 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PrecipitationAmountsEditorRowView(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v40 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v39 = v30 - v13;
  __chkstk_darwin(v14);
  v16 = (v30 - v15);
  __chkstk_darwin(v17);
  v19 = (v30 - v18);
  v20 = *(v2 + 28);
  v35 = 0x8000000100AD3EC0;
  v36 = v20;
  CurrentWeather.precipitationAmount.getter();
  v34 = *(v2 + 36);
  v33 = sub_10022C350(&qword_100CDE7B0);
  State.wrappedValue.getter();
  CurrentWeather.precipitationAmount.getter();
  v21 = *(v6 + 8);
  v30[2] = v6 + 8;
  v32 = v21;
  v21(v8, v5);
  v30[1] = type metadata accessor for CurrentWeatherEditorView;
  sub_100855C18();
  v22 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v23 = swift_allocObject();
  sub_100855724(v4, v23 + v22);
  *v19 = 0xD000000000000014;
  v19[1] = v35;
  v24 = (v19 + *(v10 + 36));
  *v24 = sub_100855B80;
  v24[1] = v23;
  CurrentWeather.snowfallAmount.getter();
  State.wrappedValue.getter();
  CurrentWeather.snowfallAmount.getter();
  v32(v8, v31);
  sub_100855C18();
  v25 = swift_allocObject();
  sub_100855724(v4, v25 + v22);
  *v16 = 0x6C6C6166776F6E73;
  v16[1] = 0xEF746E756F6D6120;
  v26 = (v16 + *(v10 + 36));
  *v26 = sub_100855C00;
  v26[1] = v25;
  v27 = v39;
  sub_100855C18();
  v28 = v40;
  sub_100855C18();
  sub_100855C18();
  sub_10022C350(&qword_100CDE8C0);
  sub_100855C18();
  sub_100855C70(v16);
  sub_100855C70(v19);
  sub_100855C70(v28);
  return sub_100855C70(v27);
}

uint64_t sub_1008549C8@<X0>(void *a1@<X8>)
{
  v43 = a1;
  v1 = type metadata accessor for CurrentWeatherEditorView();
  *&v42 = *(v1 - 8);
  v2 = *(v42 + 64);
  __chkstk_darwin(v1);
  v41 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CurrentWeather();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBB740);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  CurrentWeather.visibility.getter();
  v13 = sub_10022C350(&qword_100CAB938);
  sub_10001B350(v12, 0, 1, v13);
  sub_10022C350(&qword_100CDE7B0);
  State.wrappedValue.getter();
  CurrentWeather.visibility.getter();
  (*(v4 + 8))(v6, v3);
  sub_10001B350(v9, 0, 1, v13);
  v14 = v41;
  sub_100855C18();
  v15 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v16 = swift_allocObject();
  v17 = v14;
  v18 = v43;
  sub_100855724(v17, v16 + v15);
  v19 = sub_10022C350(&qword_100CBB730);
  v20 = v19[10];
  sub_10001B350(v18 + v20, 1, 1, v13);
  *v18 = 0x696C696269736976;
  v18[1] = 0xEA00000000007974;
  sub_1000955E0(v12, v18 + v19[7], &qword_100CBB740);
  sub_1007EE580(v9, v18 + v20, &qword_100CBB740);
  v21 = (v18 + v19[8]);
  *v21 = sub_1008557F4;
  v21[1] = v16;
  sub_10022C350(&qword_100CBB748);
  inited = swift_initStackObject();
  v42 = xmmword_100A2D320;
  *(inited + 16) = xmmword_100A2D320;
  v23 = objc_opt_self();
  *(inited + 32) = [v23 kilometers];
  *(inited + 40) = 0x6574656D6F6C696BLL;
  *(inited + 48) = 0xEA00000000007372;
  *(inited + 56) = [v23 miles];
  *(inited + 64) = 0x73656C696DLL;
  *(inited + 72) = 0xE500000000000000;
  sub_1008558A8(inited, sub_1006A7F4C, &qword_100CD1480, &unk_100A8D9D0, v24, v25, v26, v27, v40, v41, v42, *(&v42 + 1));
  v29 = v28;

  if (v29 || (v30 = swift_initStackObject(), *(v30 + 16) = v42, *(v30 + 32) = [v23 inches], *(v30 + 40) = 0x736568636E69, *(v30 + 48) = 0xE600000000000000, *(v30 + 56) = objc_msgSend(v23, "millimeters"), *(v30 + 64) = 0x74656D696C6C696DLL, *(v30 + 72) = 0xEB00000000737265, sub_1008558A8(v30, sub_1006A7F4C, &qword_100CD1480, &unk_100A8D9D0, v31, v32, v33, v34, v40, v41, v42, *(&v42 + 1)), v36 = v35, swift_setDeallocating(), sub_1005C2008(), v36))
  {
    sub_1008559F0();
    v38 = v37;
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v9, &qword_100CBB740);
  result = sub_1000180EC(v12, &qword_100CBB740);
  *(v18 + v19[9]) = v38;
  return result;
}

uint64_t sub_100854F24(uint64_t a1)
{
  v2 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CA6D28);
  __chkstk_darwin(v3);
  v5 = var50 - v4;
  v6 = type metadata accessor for CurrentWeather();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = var50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(type metadata accessor for CurrentWeatherEditorView() + 24));
  sub_10022C350(&qword_100CDE7B0);
  State.wrappedValue.getter();
  v10(v9);
  v11 = (*(v7 + 8))(v9, v6);
  sub_1008528D4(v11, v12, v13, v14, v15, v16, v17, v18, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  Binding.wrappedValue.getter();
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  return sub_1000180EC(v5, &qword_100CA6D28);
}

void sub_100855120()
{
  sub_10000C778();
  v18 = v1;
  sub_100003B38();
  v2 = type metadata accessor for CurrentWeather();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v4 = sub_10022C350(qword_100CA5418);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v17 - v15;
  sub_1000955E0(v0, v7, qword_100CA5418);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_1000180EC(v7, qword_100CA5418);
  }

  else
  {
    (*(v10 + 32))(v16, v7, v8);
    (*(v10 + 16))(v13, v16, v8);
    type metadata accessor for CurrentWeatherEditorView();
    sub_10022C350(&qword_100CDE7B0);
    State.wrappedValue.getter();
    v18(v13);
    State.wrappedValue.setter();
    (*(v10 + 8))(v16, v8);
  }

  sub_10000536C();
}

uint64_t sub_100855368(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_100003B38();
  v5 = type metadata accessor for CurrentWeather();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  type metadata accessor for PrecipitationAmount();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, v3);
  type metadata accessor for CurrentWeatherEditorView();
  sub_10022C350(&qword_100CDE7B0);
  State.wrappedValue.getter();
  a3(v10);
  return State.wrappedValue.setter();
}

uint64_t sub_1008554A8(uint64_t a1)
{
  v2 = type metadata accessor for CurrentWeather();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CBB740);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_10022C350(&qword_100CAB938);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_1000955E0(a1, v5, &qword_100CBB740);
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    return sub_1000180EC(v5, &qword_100CBB740);
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v9, v12, v6);
  type metadata accessor for CurrentWeatherEditorView();
  sub_10022C350(&qword_100CDE7B0);
  State.wrappedValue.getter();
  CurrentWeather.visibility.setter();
  State.wrappedValue.setter();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_100855724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentWeatherEditorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100855788()
{
  v1 = type metadata accessor for CurrentWeatherEditorView();
  sub_100003810(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_100854F24(v3);
}

uint64_t sub_1008557F4(uint64_t a1)
{
  v2 = type metadata accessor for CurrentWeatherEditorView();
  sub_100003810(v2);
  sub_100008550();

  return sub_1008554A8(a1);
}

void sub_1008558A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10003C97C();
  v13 = v12;
  v15 = v14;
  v16 = *(v14 + 16);
  v23 = v17;
  v17(0, v16, 0);
  v18 = v15 + 48;
  if (v16)
  {
    while (1)
    {
      v19 = *(v18 - 16);

      sub_10022C350(&qword_100CC83E0);
      sub_10022C350(v13);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        v23(v20 > 1, v21 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[3 * v21];
      v22[4] = a10;
      v22[5] = a11;
      v22[6] = a12;
      v18 += 24;
      if (!--v16)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  sub_100017EE8();
}

void sub_1008559F0()
{
  sub_10003C97C();
  if (*(v0 + 16))
  {
    sub_100049DEC();
    sub_1006A7F0C();
    do
    {
      sub_10000CF50();

      sub_10022C350(&qword_100CD1480);
      sub_10022C350(&qword_100CD1470);
      sub_100013D8C();
      sub_1000750F4();
      if (v1)
      {
        sub_1006A7F0C();
      }

      sub_100028C50();
    }

    while (!v2);
  }

  sub_100017EE8();
}

void sub_100855AB8()
{
  sub_10003C97C();
  if (*(v0 + 16))
  {
    sub_100049DEC();
    sub_1006A80A4();
    do
    {
      sub_10000CF50();

      sub_10022C350(&qword_100CD14A0);
      sub_10022C350(&qword_100CD1490);
      sub_100013D8C();
      sub_1000750F4();
      if (v1)
      {
        sub_1006A80A4();
      }

      sub_100028C50();
    }

    while (!v2);
  }

  sub_100017EE8();
}

uint64_t sub_100855B98(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for CurrentWeatherEditorView();
  sub_100003810(v4);
  sub_100008550();
  return sub_100855368(a1, v5, a2);
}

uint64_t sub_100855C18()
{
  v2 = sub_100003B38();
  v3(v2);
  sub_1000037E8();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_100855C70(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationAmountsEditorRowView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100855D14()
{
  v0 = type metadata accessor for CurrentWeatherEditorView();
  sub_100003810(v0);
  sub_100008550();
  sub_100855120();
}

uint64_t sub_100855D8C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationViewComponentContainerDescriptor();
  v3 = sub_100588E2C(v2);
  if (v3)
  {
    sub_1001B3B30(v3 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, a1);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for LocationComponentContainerViewModel();

  return sub_10001B350(a1, v4, 1, v5);
}

uint64_t sub_100855E1C@<X0>(void (*a1)(uint64_t, void, uint64_t)@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v94 = a6;
  v97 = a5;
  v98 = a4;
  v99 = a3;
  v106 = a2;
  v96 = a1;
  v103 = a7;
  v115 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v119 = v7;
  __chkstk_darwin(v8);
  sub_1000038E4();
  v114 = v9;
  v10 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v10 - 8);
  v112 = v80 - v11;
  v110 = type metadata accessor for WeatherFormatScaling();
  sub_1000037C4();
  v117 = v12;
  __chkstk_darwin(v13);
  sub_1000038E4();
  v109 = v14;
  v108 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  sub_1000037C4();
  v16 = v15;
  v116 = v15;
  __chkstk_darwin(v17);
  sub_1000038E4();
  v107 = v18;
  v113 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  sub_1000037C4();
  v118 = v19;
  __chkstk_darwin(v20);
  sub_1000038E4();
  v95 = v21;
  v22 = [objc_opt_self() mainBundle];
  v120._object = 0x8000000100AE14A0;
  v23._object = 0x8000000100AE1470;
  v120._countAndFlagsBits = 0xD000000000000120;
  v23._countAndFlagsBits = 0xD000000000000024;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v120);
  object = v25._object;
  countAndFlagsBits = v25._countAndFlagsBits;

  sub_10022C350(&qword_100CA5408);
  v26 = type metadata accessor for WeatherDescription.Argument();
  sub_1000037C4();
  v28 = v27;
  v30 = *(v29 + 72);
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = swift_allocObject();
  v100 = v32;
  *(v32 + 16) = xmmword_100A3F990;
  v33 = (v32 + v31);
  v111 = sub_10022C350(&qword_100CAB938);
  Measurement.value.getter();
  *v33 = Double.pluralRuleInteger.getter();
  v34 = enum case for WeatherDescription.Argument.pluralRule(_:);
  v35 = *(v28 + 104);
  (v35)(v33, enum case for WeatherDescription.Argument.pluralRule(_:), v26);
  v88 = v28 + 104;
  Measurement.value.getter();
  *(v33 + v30) = Double.pluralRuleInteger.getter();
  v104 = v35;
  v105 = v26;
  (v35)(v33 + v30, v34, v26);
  v36 = (v33 + 2 * v30);
  v37 = v106;
  *v36 = v96;
  v36[1] = v37;
  v35();
  v38 = (v33 + 3 * v30);
  v39 = v98;
  *v38 = v99;
  v38[1] = v39;
  v35();
  v87 = (v33 + 4 * v30);
  LODWORD(v99) = enum case for NSUnitLength.WeatherFormatUsage.rainfall(_:);
  v40 = *(v16 + 104);
  v93 = v16 + 104;
  v96 = v40;
  v41 = v107;
  v42 = v108;
  v40(v107);
  v92 = enum case for WeatherFormatScaling.asProvidedButRounded(_:);
  v43 = v117;
  v44 = *(v117 + 104);
  v90 = v117 + 104;
  v91 = v44;
  v46 = v109;
  v45 = v110;
  v44(v109);
  v89 = type metadata accessor for Locale();
  v47 = v112;
  sub_10001B350(v112, 1, 1, v89);

  static Set<>.full.getter();
  v48 = v95;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  sub_1001235D8(v47);
  v49 = *(v43 + 8);
  v117 = v43 + 8;
  v106 = v49;
  v49(v46, v45);
  v50 = *(v116 + 8);
  v116 += 8;
  v98 = v50;
  v50(v41, v42);
  v86 = enum case for WeatherFormatPlaceholder.none(_:);
  v51 = v119;
  v52 = *(v119 + 104);
  v80[1] = v119 + 104;
  v85 = v52;
  v53 = v114;
  v54 = v115;
  v52(v114);
  v84 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v83 = sub_100123738();
  v55 = v113;
  v56 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v58 = v57;

  v59 = *(v51 + 8);
  v119 = v51 + 8;
  v94 = v59;
  v59(v53, v54);
  v60 = *(v118 + 8);
  v118 += 8;
  v82 = v60;
  v60(v48, v55);
  v61 = v87;
  *v87 = v56;
  v61[1] = v58;
  v81 = enum case for WeatherDescription.Argument.measurement(_:);
  v63 = v104;
  v62 = v105;
  v104();
  *(v33 + 5 * v30) = 30;
  (v63)(v33 + 5 * v30, enum case for WeatherDescription.Argument.integer(_:), v62);
  v64 = (v33 + 6 * v30);
  v65 = v107;
  v66 = v108;
  v96(v107, v99, v108);
  v67 = v109;
  v68 = v110;
  v91(v109, v92, v110);
  v69 = v112;
  sub_10001B350(v112, 1, 1, v89);
  static Set<>.full.getter();
  v70 = v48;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  sub_1001235D8(v69);
  v106(v67, v68);
  v98(v65, v66);
  v71 = v114;
  v72 = v115;
  v85(v114, v86, v115);
  static UnitManager.standard.getter();
  v73 = v70;
  v74 = v71;
  v75 = v113;
  v76 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v78 = v77;

  v94(v74, v72);
  v82(v73, v75);
  *v64 = v76;
  v64[1] = v78;
  (v104)(v64, v81, v105);
  return WeatherDescription.init(format:_:)();
}

uint64_t sub_100856748(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C6369747261 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
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

uint64_t sub_100856818(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x73656C6369747261;
  }
}

uint64_t sub_100856848(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CDEA30);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  sub_1000161C0(a1, a1[3]);
  sub_100856EF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v3;
  v14[7] = 0;
  sub_10022C350(&qword_100CDEA18);
  sub_100857004(&qword_100CDEA38, &qword_100CB99F8);
  sub_100005AE0();
  if (!v2)
  {
    type metadata accessor for NewsArticlePlacement();
    v14[6] = 1;
    type metadata accessor for ArticlePlacementLocation();
    sub_10001FA48();
    sub_1008570A0(v11, v12);
    sub_100005AE0();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100856A28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v31 = type metadata accessor for ArticlePlacementLocation();
  sub_1000037C4();
  v28 = v4;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10022C350(&qword_100CDEA08);
  sub_1000037C4();
  v30 = v8;
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for NewsArticlePlacement();
  __chkstk_darwin(v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_100856EF0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v27 = a1;
  v15 = v14;
  v17 = v30;
  v16 = v31;
  sub_10022C350(&qword_100CDEA18);
  v34 = 0;
  sub_100857004(&qword_100CDEA20, &qword_100CB99A0);
  v18 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v15;
  v26 = v35;
  *v15 = v35;
  v33 = 1;
  sub_10001FA48();
  sub_1008570A0(v19, v20);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v11, v18);
  v21 = *(v12 + 20);
  v22 = v25;
  (*(v28 + 32))(&v25[v21], v7, v16);
  sub_100856F44(v22, v29);
  sub_100006F14(v27);
  return sub_100856FA8(v22);
}

uint64_t sub_100856D7C(uint64_t a1, uint64_t a2)
{
  sub_1009ED768();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for NewsArticlePlacement() + 20);

  return sub_100747D24(a1 + v5, a2 + v5);
}

uint64_t sub_100856DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100856748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100856E14(uint64_t a1)
{
  v2 = sub_100856EF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100856E50(uint64_t a1)
{
  v2 = sub_100856EF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100856EF0()
{
  result = qword_100CDEA10;
  if (!qword_100CDEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEA10);
  }

  return result;
}

uint64_t sub_100856F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticlePlacement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100856FA8(uint64_t a1)
{
  v2 = type metadata accessor for NewsArticlePlacement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100857004(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CDEA18);
    sub_1008570A0(a2, type metadata accessor for NewsArticle);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1008570A0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for NewsArticlePlacement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1008571C8()
{
  result = qword_100CDEA48;
  if (!qword_100CDEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEA48);
  }

  return result;
}

unint64_t sub_100857220()
{
  result = qword_100CDEA50;
  if (!qword_100CDEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEA50);
  }

  return result;
}

unint64_t sub_100857278()
{
  result = qword_100CDEA58;
  if (!qword_100CDEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEA58);
  }

  return result;
}

uint64_t sub_1008572F4()
{
  result = type metadata accessor for WeatherMapOverlayKind();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WeatherData(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100857378(uint64_t a1, uint64_t a2)
{
  if ((static WeatherMapOverlayKind.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MapComponent() + 20);

  return sub_100883064((a1 + v4), (a2 + v4));
}

uint64_t sub_1008573D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v25);
  sub_1000037D8();
  v6 = v5 - v4;
  v27 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v24 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v26 = v10 - v9;
  sub_10022C350(&qword_100CDEAF0);
  sub_1000037C4();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for MapComponent();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  sub_1000161C0(a1, a1[3]);
  sub_100857AE4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  sub_10001CF08();
  sub_100857BF8(v16, v17);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 32))(v15, v26, v27);
  sub_10001FA60();
  sub_100857BF8(v18, v19);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = sub_1000064BC();
  v21(v20);
  sub_1003BD374(v6, v15 + *(v12 + 20));
  sub_100857B38(v15, a2);
  sub_100006F14(a1);
  return sub_100857B9C(v15);
}

uint64_t sub_10085773C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B79616C7265766FLL && a2 == 0xEB00000000646E69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4472656874616577 && a2 == 0xEB00000000617461)
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

uint64_t sub_10085780C(char a1)
{
  if (a1)
  {
    return 0x4472656874616577;
  }

  else
  {
    return 0x4B79616C7265766FLL;
  }
}

uint64_t sub_10085785C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10085773C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100857884(uint64_t a1)
{
  v2 = sub_100857AE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008578C0(uint64_t a1)
{
  v2 = sub_100857AE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008578FC(void *a1)
{
  v3 = sub_10022C350(&qword_100CDEB00);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_100857AE4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[15] = 0;
  type metadata accessor for WeatherMapOverlayKind();
  sub_10001CF08();
  sub_100857BF8(v9, v10);
  sub_100005AE0();
  if (!v1)
  {
    type metadata accessor for MapComponent();
    v14[14] = 1;
    type metadata accessor for WeatherData(0);
    sub_10001FA60();
    sub_100857BF8(v11, v12);
    sub_100005AE0();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_100857AE4()
{
  result = qword_100CDEAF8;
  if (!qword_100CDEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEAF8);
  }

  return result;
}

uint64_t sub_100857B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100857B9C(uint64_t a1)
{
  v2 = type metadata accessor for MapComponent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100857BF8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MapComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100857D20()
{
  result = qword_100CDEB08;
  if (!qword_100CDEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEB08);
  }

  return result;
}

unint64_t sub_100857D78()
{
  result = qword_100CDEB10;
  if (!qword_100CDEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEB10);
  }

  return result;
}

unint64_t sub_100857DD0()
{
  result = qword_100CDEB18;
  if (!qword_100CDEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEB18);
  }

  return result;
}

uint64_t sub_100857E24()
{
  sub_10022C350(&qword_100CA47E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100A3B030;
  *(v0 + 32) = static Color.green.getter();
  *(v0 + 40) = static Color.yellow.getter();
  *(v0 + 48) = static Color.orange.getter();
  *(v0 + 56) = static Color.pink.getter();
  *(v0 + 64) = static Color.purple.getter();

  return Gradient.init(colors:)();
}

uint64_t sub_100857EAC()
{
  result = sub_100857E24();
  qword_100D90F38 = result;
  return result;
}

uint64_t sub_100857ECC()
{
  if (*(v0 + 400))
  {
    v1 = *(v0 + 400);
  }

  else
  {
    v1 = static Color.black.getter();
    *(v0 + 400) = v1;
  }

  return v1;
}

double sub_100857F14()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  *(v0 + 16) = 0x4034000000000000;
  *(v0 + 24) = 0;
  return 20.0;
}

uint64_t sub_100857F38()
{
  if (*(v0 + 576) != 1)
  {
    return *(v0 + 568);
  }

  result = 2;
  *(v0 + 568) = 2;
  *(v0 + 576) = 0;
  return result;
}

double sub_100857F5C()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    return *(v0 + 144);
  }

  result = 40.0 - sub_100858048();
  *(v0 + 144) = result;
  *(v0 + 152) = 0;
  return result;
}

double sub_100857F98()
{
  if ((*(v0 + 168) & 1) == 0)
  {
    return *(v0 + 160);
  }

  result = 32.0 - sub_100858048();
  *(v0 + 160) = result;
  *(v0 + 168) = 0;
  return result;
}

double sub_100857FD4()
{
  if ((*(v0 + 376) & 1) == 0)
  {
    return *(v0 + 368);
  }

  *(v0 + 368) = 0x4061800000000000;
  *(v0 + 376) = 0;
  return 140.0;
}

double sub_100858000()
{
  if ((*(v0 + 200) & 1) == 0)
  {
    return *(v0 + 192);
  }

  *(v0 + 192) = 0x4030000000000000;
  *(v0 + 200) = 0;
  return sub_10001ECF0();
}

void sub_100858020()
{
  if (*(v0 + 121))
  {
    *(v0 + 112) = 0x4024000000000000;
    *(v0 + 120) = 0;
  }

  sub_1000068EC();
}

double sub_100858048()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = 0x4020000000000000;
  *(v0 + 104) = 0;
  return 8.0;
}

double sub_10085806C()
{
  if ((*(v0 + 328) & 1) == 0)
  {
    return *(v0 + 320);
  }

  *(v0 + 320) = 0x4024000000000000;
  *(v0 + 328) = 0;
  return sub_100010DC4();
}

double sub_10085808C()
{
  if ((*(v0 + 248) & 1) == 0)
  {
    return *(v0 + 240);
  }

  *(v0 + 240) = 0x4024000000000000;
  *(v0 + 248) = 0;
  return sub_100010DC4();
}

double sub_1008580AC()
{
  if ((*(v0 + 216) & 1) == 0)
  {
    return *(v0 + 208);
  }

  *(v0 + 208) = 0x4028000000000000;
  *(v0 + 216) = 0;
  return 12.0;
}

double sub_1008580D0()
{
  if ((*(v0 + 232) & 1) == 0)
  {
    return *(v0 + 224);
  }

  *(v0 + 224) = 0x4030000000000000;
  *(v0 + 232) = 0;
  return sub_10001ECF0();
}

double sub_1008580F0()
{
  if ((*(v0 + 264) & 1) == 0)
  {
    return *(v0 + 256);
  }

  *(v0 + 256) = 0x4030000000000000;
  *(v0 + 264) = 0;
  return sub_10001ECF0();
}

double sub_100858110()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  *(v0 + 48) = 0x4030000000000000;
  *(v0 + 56) = 0;
  return sub_10001ECF0();
}

double sub_100858130()
{
  if ((*(v0 + 296) & 1) == 0)
  {
    return *(v0 + 288);
  }

  v1 = 12.0;
  if (static Solarium.isEnabled.getter())
  {
    if (qword_100CA20B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = sub_100472854();
  }

  *(v0 + 288) = v1;
  *(v0 + 296) = 0;
  return v1;
}

double sub_1008581DC()
{
  if ((*(v0 + 312) & 1) == 0)
  {
    return *(v0 + 304);
  }

  *(v0 + 304) = 0x4030000000000000;
  *(v0 + 312) = 0;
  return sub_10001ECF0();
}

double sub_1008581FC()
{
  if ((*(v0 + 184) & 1) == 0)
  {
    return *(v0 + 176);
  }

  *(v0 + 176) = 0x4040000000000000;
  *(v0 + 184) = 0;
  return 32.0;
}

void sub_100858220()
{
  if (*(v0 + 137))
  {
    *(v0 + 128) = 0x403C000000000000;
    *(v0 + 136) = 0;
  }

  sub_1000068EC();
}

void sub_100858248()
{
  if (*(v0 + 393))
  {
    *(v0 + 384) = 0;
    *(v0 + 392) = 1;
    *(v0 + 393) = 0;
  }

  sub_1000068EC();
}

double sub_100858274()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  *(v0 + 32) = 0x4020000000000000;
  *(v0 + 40) = 0;
  return 8.0;
}

double sub_100858298()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  *(v0 + 64) = 0x4010000000000000;
  *(v0 + 72) = 0;
  return sub_10001CF20();
}

double sub_1008582B8()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    return *(v0 + 80);
  }

  *(v0 + 80) = 0x4030000000000000;
  *(v0 + 88) = 0;
  return sub_10001ECF0();
}

double sub_1008582D8()
{
  if ((*(v0 + 280) & 1) == 0)
  {
    return *(v0 + 272);
  }

  *(v0 + 272) = 0x4034000000000000;
  *(v0 + 280) = 0;
  return 20.0;
}

double sub_1008582FC()
{
  if ((*(v0 + 360) & 1) == 0)
  {
    return *(v0 + 352);
  }

  *(v0 + 352) = 0x406D000000000000;
  *(v0 + 360) = 0;
  return 232.0;
}

double sub_100858320()
{
  if ((*(v0 + 344) & 1) == 0)
  {
    return *(v0 + 336);
  }

  *(v0 + 336) = 0x406DC00000000000;
  *(v0 + 344) = 0;
  return 238.0;
}

double sub_10085834C()
{
  if ((*(v0 + 464) & 1) == 0)
  {
    return *(v0 + 456);
  }

  *(v0 + 456) = 0x4010000000000000;
  *(v0 + 464) = 0;
  return sub_10001CF20();
}

double sub_10085836C()
{
  if ((*(v0 + 480) & 1) == 0)
  {
    return *(v0 + 472);
  }

  *(v0 + 472) = 0x4024000000000000;
  *(v0 + 480) = 0;
  return sub_100010DC4();
}

double sub_10085838C()
{
  if ((*(v0 + 496) & 1) == 0)
  {
    return *(v0 + 488);
  }

  *(v0 + 488) = 0x4010000000000000;
  *(v0 + 496) = 0;
  return sub_10001CF20();
}

double sub_1008583AC()
{
  if ((*(v0 + 512) & 1) == 0)
  {
    return *(v0 + 504);
  }

  *(v0 + 504) = 0x3FF999999999999ALL;
  *(v0 + 512) = 0;
  return 1.6;
}

double sub_1008583DC()
{
  if ((*(v0 + 544) & 1) == 0)
  {
    return *(v0 + 536);
  }

  *(v0 + 536) = 0x4010000000000000;
  *(v0 + 544) = 0;
  return sub_10001CF20();
}

uint64_t sub_1008583FC()
{
  v35[0] = 1;
  v34[0] = 1;
  v33[0] = 1;
  v32[0] = 1;
  v27[0] = 1;
  v26[0] = 1;
  v25[0] = 1;
  v24[0] = 1;
  v23[0] = 1;
  v22[0] = 1;
  v21[0] = 1;
  v20[0] = 1;
  v19[0] = 1;
  v18[0] = 1;
  v17[0] = 1;
  v16[0] = 1;
  v15[0] = 1;
  v14[0] = 1;
  v13[0] = 1;
  v10[0] = 1;
  v9[0] = 1;
  v8[0] = 1;
  v7[0] = 1;
  v6[0] = 1;
  v5[0] = 1;
  v4[0] = 1;
  v3[0] = 1;
  v2[0] = 1;
  v1[0] = 1;
  LOBYTE(v30) = 1;
  LOBYTE(v28) = 1;
  LOBYTE(v11) = 1;
  qword_100D90F40 = 0;
  byte_100D90F48 = 0;
  byte_100D90F49 = 1;
  qword_100D90F50 = 0;
  byte_100D90F58 = 1;
  qword_100D90F60 = 0;
  byte_100D90F68 = 1;
  qword_100D90F70 = 0;
  byte_100D90F78 = 1;
  dword_100D90F7C = *&v35[3];
  *algn_100D90F79 = *v35;
  qword_100D90F80 = 0;
  byte_100D90F88 = 1;
  dword_100D90F8C = *&v34[3];
  *algn_100D90F89 = *v34;
  qword_100D90F90 = 0;
  byte_100D90F98 = 1;
  dword_100D90F9C = *&v33[3];
  *algn_100D90F99 = *v33;
  qword_100D90FA0 = 0;
  byte_100D90FA8 = 1;
  dword_100D90FAC = *&v32[3];
  *algn_100D90FA9 = *v32;
  qword_100D90FB0 = 0;
  byte_100D90FB8 = 0;
  byte_100D90FB9 = 1;
  word_100D90FBE = v31;
  unk_100D90FBA = v30;
  qword_100D90FC0 = 0;
  byte_100D90FC8 = 0;
  byte_100D90FC9 = 1;
  word_100D90FCE = v29;
  unk_100D90FCA = v28;
  qword_100D90FD0 = 0;
  byte_100D90FD8 = 1;
  dword_100D90FDC = *&v27[3];
  *algn_100D90FD9 = *v27;
  qword_100D90FE0 = 0;
  byte_100D90FE8 = 1;
  result = *&v26[3];
  dword_100D90FEC = *&v26[3];
  *algn_100D90FE9 = *v26;
  qword_100D90FF0 = 0;
  byte_100D90FF8 = 1;
  dword_100D90FFC = *&v25[3];
  *algn_100D90FF9 = *v25;
  qword_100D91000 = 0;
  byte_100D91008 = 1;
  dword_100D9100C = *&v24[3];
  *algn_100D91009 = *v24;
  qword_100D91010 = 0;
  byte_100D91018 = 1;
  dword_100D9101C = *&v23[3];
  *algn_100D91019 = *v23;
  qword_100D91020 = 0;
  byte_100D91028 = 1;
  dword_100D9102C = *&v22[3];
  *algn_100D91029 = *v22;
  qword_100D91030 = 0;
  byte_100D91038 = 1;
  dword_100D9103C = *&v21[3];
  *algn_100D91039 = *v21;
  qword_100D91040 = 0;
  byte_100D91048 = 1;
  *(&dword_100D91049 + 3) = *&v20[3];
  dword_100D91049 = *v20;
  qword_100D91050 = 0;
  byte_100D91058 = 1;
  *(&dword_100D91059 + 3) = *&v19[3];
  dword_100D91059 = *v19;
  qword_100D91060 = 0;
  byte_100D91068 = 1;
  *(&dword_100D91069 + 3) = *&v18[3];
  dword_100D91069 = *v18;
  qword_100D91070 = 0;
  byte_100D91078 = 1;
  *(&dword_100D91079 + 3) = *&v17[3];
  dword_100D91079 = *v17;
  qword_100D91080 = 0;
  byte_100D91088 = 1;
  *(&dword_100D91089 + 3) = *&v16[3];
  dword_100D91089 = *v16;
  qword_100D91090 = 0;
  byte_100D91098 = 1;
  *(&dword_100D91099 + 3) = *&v15[3];
  dword_100D91099 = *v15;
  qword_100D910A0 = 0;
  byte_100D910A8 = 1;
  *(&dword_100D910A9 + 3) = *&v14[3];
  dword_100D910A9 = *v14;
  qword_100D910B0 = 0;
  byte_100D910B8 = 1;
  *(&dword_100D910B9 + 3) = *&v13[3];
  dword_100D910B9 = *v13;
  qword_100D910C0 = 0;
  word_100D910C8 = 256;
  word_100D910CE = v12;
  dword_100D910CA = v11;
  qword_100D910D0 = 0;
  unk_100D910D8 = 0;
  byte_100D910E0 = 1;
  *(&dword_100D910E1 + 3) = *&v10[3];
  dword_100D910E1 = *v10;
  qword_100D910E8 = 0;
  byte_100D910F0 = 1;
  *(&dword_100D910F1 + 3) = *&v9[3];
  dword_100D910F1 = *v9;
  qword_100D910F8 = 0;
  byte_100D91100 = 1;
  *(&dword_100D91101 + 3) = *&v8[3];
  dword_100D91101 = *v8;
  qword_100D91108 = 0;
  byte_100D91110 = 1;
  *(&dword_100D91111 + 3) = *&v7[3];
  dword_100D91111 = *v7;
  qword_100D91118 = 0;
  byte_100D91120 = 1;
  *(&dword_100D91121 + 3) = *&v6[3];
  dword_100D91121 = *v6;
  qword_100D91128 = 0;
  byte_100D91130 = 1;
  *(&dword_100D91131 + 3) = *&v5[3];
  dword_100D91131 = *v5;
  qword_100D91138 = 0;
  byte_100D91140 = 1;
  *(&dword_100D91141 + 3) = *&v4[3];
  dword_100D91141 = *v4;
  qword_100D91148 = 0;
  byte_100D91150 = 1;
  *(&dword_100D91151 + 3) = *&v3[3];
  dword_100D91151 = *v3;
  qword_100D91158 = 0;
  byte_100D91160 = 1;
  *(&dword_100D91161 + 3) = *&v2[3];
  dword_100D91161 = *v2;
  qword_100D91168 = 0;
  byte_100D91170 = 1;
  *(&dword_100D91171 + 3) = *&v1[3];
  dword_100D91171 = *v1;
  qword_100D91178 = 0;
  byte_100D91180 = 1;
  return result;
}

void sub_100858878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1008588C4(uint64_t a1)
{
  v2 = sub_10085B29C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100858900(uint64_t a1)
{
  v2 = sub_10085B29C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10085893C()
{
  sub_10000E8AC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10022C350(&qword_100CDEE18);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100003CF8();
  sub_1000161C0(v7, v7[3]);
  sub_10085B29C();
  sub_100020E58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000049E8();
  sub_100003CDC();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_10022C350(&qword_100CDEDB8);
    inited = swift_initStackObject();
    v13 = sub_100069B5C(inited, xmmword_100A2C3F0);
    v13[2].n128_u64[0] = v14;
    v13[2].n128_u64[1] = v15;
    v13[3].n128_u64[0] = v5;
    v13[3].n128_u64[1] = v3;

    Dictionary.init(dictionaryLiteral:)();
    sub_10022C350(&qword_100CDEDC0);
    sub_10085AFC8();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v10 + 8))(v1, v8);
  sub_100041B68();
  sub_10000C8F4();
}

uint64_t sub_100858B04()
{
  sub_10003BFB4();
  v3 = v3 && v2 == 0xE400000000000000;
  if (v3 || (v4 = v1, (sub_10004EBC4() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = v4 == 1635017060 && v0 == 0xE400000000000000;
    if (v6 || (sub_10004EBC4() & 1) != 0)
    {

      return 1;
    }

    else if (v4 == 0x696669746E656469 && v0 == 0xEA00000000007265)
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

uint64_t sub_100858BF8(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 1635017060;
  }

  return 0x696669746E656469;
}

uint64_t sub_100858C68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100858B04();
  *a1 = result;
  return result;
}

uint64_t sub_100858C9C(uint64_t a1)
{
  v2 = sub_10085AC64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100858CD8(uint64_t a1)
{
  v2 = sub_10085AC64();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100858D14()
{
  sub_10000E8AC();
  v2 = sub_1000038D8();
  type metadata accessor for AutomationCellInfo(v2);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v27 = v5 - v4;
  v6 = sub_1000038CC();
  type metadata accessor for AutomationViewInfo(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v26 = v9 - v8;
  v10 = sub_1000038CC();
  type metadata accessor for AutomationInfo(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  sub_10022C350(&qword_100CDED58);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100003CF8();
  sub_1000161C0(v0, v0[3]);
  sub_10085AC64();
  sub_100020E58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10085AE5C(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10085AD0C(v14, v26);
    sub_100011874();
    if (!v1)
    {
      sub_10085ADC0(&qword_100CDED78, type metadata accessor for AutomationViewInfo);
      sub_100003CDC();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_1000068F4();
    }

    v17 = type metadata accessor for AutomationViewInfo;
    v18 = v26;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10085AD0C(v14, v27);
    sub_100011874();
    if (!v1)
    {
      sub_10085ADC0(&qword_100CDED70, type metadata accessor for AutomationCellInfo);
      sub_100003CDC();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_1000068F4();
    }

    v17 = type metadata accessor for AutomationCellInfo;
    v18 = v27;
LABEL_11:
    sub_10085AD68(v18, v17);
    goto LABEL_12;
  }

  v21 = *v14;
  v22 = *(v14 + 8);
  v23 = *(v14 + 16);
  sub_100011874();
  if (v1)
  {
    v24 = sub_100016548();
    v25(v24);
    sub_100576A4C(v21, v22, v23);
    goto LABEL_16;
  }

  sub_1000168D0();
  sub_10085ACB8();
  sub_100003CDC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100576A4C(v21, v22, v23);
  sub_1000068F4();
LABEL_12:
  v19 = sub_100016548();
  v20(v19);
LABEL_16:
  sub_100041B68();
  sub_10000C8F4();
}

uint64_t sub_10085913C(uint64_t a1)
{
  v2 = sub_10085AE08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100859178(uint64_t a1)
{
  v2 = sub_10085AE08();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1008591B4()
{
  sub_10000E8AC();
  sub_1000038D8();
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v29 = v3;
  v30 = v2;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v31 = v5 - v4;
  v6 = sub_1000038CC();
  type metadata accessor for AutomationViewInfo(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = (v9 - v8);
  v11 = sub_10022C350(&qword_100CDED80);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v12);
  sub_100003CF8();
  sub_1000161C0(v0, v0[3]);
  sub_10085AE08();
  sub_100020E58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10085AE5C(v0, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100037304();
      sub_100024B10();
      if (!v1)
      {
        sub_1000168D0();
        sub_10085AF74();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      goto LABEL_9;
    case 2u:
      (*(v29 + 32))(v31, v10, v30);
      sub_100024B10();
      if (!v1)
      {
        sub_10022C350(&qword_100CDED90);
        sub_10022C350(&qword_100CDED98);
        sub_1000243B8();
        v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_100A2C3F0;
        sub_100017F04((v26 + v25));
        (*(v29 + 16))(v27 + v28, v31, v30);
        Dictionary.init(dictionaryLiteral:)();
        sub_1000168D0();
        sub_10022C350(&qword_100CDEDA0);
        sub_10085AEB8();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v29 + 8))(v31, v30);
      v19 = sub_10000EE58();
      v23 = v11;
      goto LABEL_14;
    case 3u:
      sub_100024B10();
      v21 = sub_10003066C();
      goto LABEL_10;
    case 4u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
      goto LABEL_12;
    case 5u:
      sub_100037304();
LABEL_12:
      sub_100024B10();
      v19 = sub_10003066C();
      goto LABEL_13;
    default:
      v13 = *v10;
      v14 = v10[1];
      sub_1000049E8();
      sub_100024B10();
      if (v1)
      {
LABEL_9:
        v21 = sub_10000EE58();
LABEL_10:
        v22(v21, v11);
      }

      else
      {
        sub_10022C350(&qword_100CDEDB8);
        inited = swift_initStackObject();
        v16 = sub_100069B5C(inited, xmmword_100A2C3F0);
        v16[2].n128_u64[0] = v17;
        v16[2].n128_u64[1] = v18;
        v16[3].n128_u64[0] = v13;
        v16[3].n128_u64[1] = v14;
        Dictionary.init(dictionaryLiteral:)();
        sub_1000168D0();
        sub_10022C350(&qword_100CDEDC0);
        sub_10085AFC8();
        KeyedEncodingContainer.encode<A>(_:forKey:)();

        v19 = sub_10000EE58();
LABEL_13:
        v23 = v11;
LABEL_14:
        v20(v19, v23);
      }

      sub_100041B68();
      sub_10000C8F4();
      return;
  }
}

unint64_t sub_100859788(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45798, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1008597D4(char a1)
{
  if (!a1)
  {
    return sub_1000049E8();
  }

  if (a1 == 1)
  {
    return 0x697472417377656ELL;
  }

  return 0xD000000000000016;
}

uint64_t sub_10085984C(uint64_t a1)
{
  v2 = sub_10085B044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100859888(uint64_t a1)
{
  v2 = sub_10085B044();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1008598E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100859788(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100859918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1008597D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100859994()
{
  sub_10000E8AC();
  v2 = v1;
  v4 = v3;
  v17 = v5;
  v7 = v6;
  v8 = sub_10022C350(&qword_100CDEDD0);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100003CF8();
  sub_1000161C0(v7, v7[3]);
  sub_10085B044();
  sub_100020E58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v2)
  {
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
LABEL_8:
    (*(v10 + 8))(v0, v8);
    goto LABEL_9;
  }

  if (v2 != 1)
  {
    sub_10085B098();
    sub_100037E04();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    goto LABEL_8;
  }

  v12 = sub_10085B098();

  sub_100037E04();
  sub_100003CDC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    sub_10022C350(&qword_100CDEDB8);
    inited = swift_initStackObject();
    v14 = sub_100014FF4(inited, xmmword_100A2C3F0);
    v14[2].n128_u64[0] = v15;
    v14[2].n128_u64[1] = v16;
    v14[3].n128_u64[0] = v17;
    v14[3].n128_u64[1] = v4;
    Dictionary.init(dictionaryLiteral:)();
    sub_1000168D0();
    sub_10022C350(&qword_100CDEDC0);
    sub_10085AFC8();
    sub_100037E04();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    goto LABEL_8;
  }

  (*(v10 + 8))(v0, v8);
  sub_100576A4C(v17, v4, 1u);
LABEL_9:
  sub_100041B68();
  sub_10000C8F4();
}

uint64_t sub_100859C00()
{
  sub_10003BFB4();
  v3 = v3 && v2 == 0xE400000000000000;
  if (v3 || (v4 = v1, (sub_10004EBC4() & 1) != 0))
  {

    return 0;
  }

  else if (v4 == 1635017060 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_10004EBC4();

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

uint64_t sub_100859CA4(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100859CC4()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100859D18()
{
  result = sub_1000049E8();
  switch(v1)
  {
    case 1:
      result = 1684957559;
      break;
    case 2:
      result = 0x726F46796C696164;
      break;
    case 3:
      result = 0x6F46796C72756F68;
      break;
    case 4:
      result = 0x79746964696D7568;
      break;
    case 5:
      result = 0x6572757373657270;
      break;
    case 6:
      result = 0x7865646E497675;
      break;
    case 7:
      v2 = 0x696269736976;
      goto LABEL_14;
    case 8:
      result = 0x6557657265766573;
      break;
    case 9:
      v2 = 0x617551726961;
LABEL_14:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x696C000000000000;
      break;
    case 10:
      result = 0x6B694C736C656566;
      break;
    case 11:
      result = sub_100075110();
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = sub_10002C588();
      break;
    case 15:
      result = 0x6F697469646E6F63;
      break;
    case 16:
      result = 0x74617265706D6574;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0x6E6F43726568746FLL;
      break;
    case 19:
      result = 0x7470697263736564;
      break;
    case 20:
      result = 0x656C6369747261;
      break;
    case 21:
      result = 0x68436C6961746564;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0xD000000000000014;
      break;
    case 24:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100859FF0(uint64_t a1)
{
  v2 = sub_10085B0EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10085A02C(uint64_t a1)
{
  v2 = sub_10085B0EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10085A08C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100859CC4();
  *a1 = result;
  return result;
}

uint64_t sub_10085A0BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100859D18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_10085A138()
{
  sub_10000E8AC();
  v82 = v1;
  sub_1000038D8();
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v80 = v2;
  v81 = v3;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = sub_1000038CC();
  type metadata accessor for AutomationCellInfo(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = (v10 - v9);
  v85 = sub_10022C350(&qword_100CDEDE8);
  sub_1000037C4();
  v83 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v78 - v14;
  sub_1000161C0(v0, v0[3]);
  sub_10085B0EC();
  v84 = v15;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10085AE5C(v0, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v17 = *v11;
      v16 = v11[1];
      sub_100020C10(8);
      sub_10001CF28();
      if (v1)
      {
        goto LABEL_41;
      }

      if (!v16)
      {
        goto LABEL_61;
      }

      goto LABEL_29;
    case 2u:
      v17 = *v11;
      v16 = v11[1];
      sub_100020C10(12);
      sub_10001CF28();
      if (v1)
      {
        goto LABEL_41;
      }

      if (v16)
      {
        goto LABEL_29;
      }

      goto LABEL_61;
    case 3u:
      v17 = *v11;
      v16 = v11[1];
      sub_100020C10(13);
      sub_10001CF28();
      if (v1)
      {
        goto LABEL_41;
      }

      if (!v16)
      {
        goto LABEL_61;
      }

LABEL_29:
      sub_10022C350(&qword_100CDEDB8);
      inited = swift_initStackObject();
      v32 = sub_100014FF4(inited, xmmword_100A2C3F0);
      goto LABEL_60;
    case 4u:
      v17 = *v11;
      v16 = v11[1];
      sub_100020C10(3);
      sub_10001CF28();
      if (!v1)
      {
        goto LABEL_33;
      }

      goto LABEL_41;
    case 5u:
      v17 = *v11;
      v16 = v11[1];
      sub_100020C10(2);
      sub_10001CF28();
      if (!v1)
      {
        goto LABEL_33;
      }

      goto LABEL_41;
    case 6u:
      v37 = v80;
      v36 = v81;
      (*(v81 + 32))(v6, v11, v80);
      sub_100020C10(14);
      sub_100028C6C();
      v38 = v85;
      v39 = v82;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v39)
      {
        (*(v36 + 8))(v6, v37);
        goto LABEL_38;
      }

      sub_10022C350(&qword_100CDED90);
      sub_10022C350(&qword_100CDED98);
      sub_1000243B8();
      v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_100A2C3F0;
      sub_100017F04((v68 + v67));
      (*(v36 + 16))(v69 + v70, v6, v37);
      v15 = v85;
      v71 = Dictionary.init(dictionaryLiteral:)();
      sub_100009140(v71);
      sub_10022C350(&qword_100CDEDA0);
      sub_10085AEB8();
      sub_100028C6C();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      (*(v81 + 8))(v6, v37);
      goto LABEL_61;
    case 7u:
      v29 = v11[1];
      if (v29)
      {
        v30 = *v11 == 11565 && v29 == 0xE200000000000000;
        if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v18 = 17;
LABEL_48:
          sub_100020C10(v18);
          sub_100028C6C();
          v52 = v85;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          v40 = sub_100010DCC();
          v42 = v52;
          goto LABEL_49;
        }
      }

      sub_100020C10(16);
      sub_100028C6C();
      v38 = v85;
      v53 = v82;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v53)
      {
        if (!v29)
        {
LABEL_38:
          v40 = sub_100010DCC();
          v42 = v38;
          goto LABEL_49;
        }

        v86 = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      v54 = sub_100010DCC();
      v55(v54, v38);
      goto LABEL_42;
    case 8u:
      v45 = v11[1];
      v81 = *v11;
      v47 = v11[2];
      v46 = v11[3];
      v49 = v11[4];
      v48 = v11[5];
      sub_100020C10(20);
      sub_100028C6C();
      sub_100030100();
      if (v1)
      {
        v50 = sub_100010DCC();
        v51(v50, v11);

        goto LABEL_42;
      }

      v79 = v49;
      v80 = v46;
      v82 = v48;
      v73 = v81;
      v78 = v47;
      if (v45)
      {
        sub_10022C350(&qword_100CDEE00);
        v74 = swift_initStackObject();
        *(v74 + 16) = xmmword_100A3BBA0;
        *(v74 + 32) = 0x696669746E656469;
        *(v74 + 40) = 0xEA00000000007265;
        *(v74 + 48) = v73;
        *(v74 + 56) = v45;
        *(v74 + 64) = 0x656C746974;
        *(v74 + 72) = 0xE500000000000000;
        v75 = v80;
        *(v74 + 80) = v78;
        *(v74 + 88) = v75;
        *(v74 + 96) = 0x4E6C656E6E616863;
        *(v74 + 104) = 0xEB00000000656D61;
        v76 = v82;
        *(v74 + 112) = v79;
        *(v74 + 120) = v76;
        sub_10022C350(&qword_100CA6078);
        v77 = Dictionary.init(dictionaryLiteral:)();
        sub_100009140(v77);
        sub_10022C350(&qword_100CDEE08);
        sub_10085B194();
        sub_100028C6C();
        goto LABEL_64;
      }

      (*(v83 + 8))(v84, v11);

      goto LABEL_42;
    case 9u:
      v24 = *v11;
      v23 = v11[1];
      v26 = v11[2];
      v25 = v11[3];
      sub_100020C10(22);
      sub_100028C6C();
      sub_100030100();
      if (v1)
      {
        goto LABEL_12;
      }

      sub_10022C350(&qword_100CDEE00);
      v61 = swift_initStackObject();
      v62 = sub_100014FF4(v61, xmmword_100A2D320);
      v62[2].n128_u64[0] = v63;
      v62[2].n128_u64[1] = v64;
      v62[3].n128_u64[0] = v24;
      v62[3].n128_u64[1] = v23;
      v62[4].n128_u64[0] = 0x656C746974627573;
      v62[4].n128_u64[1] = 0xE800000000000000;
      v62[5].n128_u64[0] = v26;
      v62[5].n128_u64[1] = v25;
      sub_10022C350(&qword_100CA6078);
      v65 = Dictionary.init(dictionaryLiteral:)();
      sub_100009140(v65);
      sub_10022C350(&qword_100CDEE08);
      sub_10085B194();
      goto LABEL_57;
    case 0xAu:
      v17 = *v11;
      v16 = v11[1];
      sub_100020C10(23);
      sub_10001CF28();
      if (v1)
      {
        goto LABEL_41;
      }

      sub_10022C350(&qword_100CDEDB8);
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_100A2C3F0;
      v33 = 0x64657463656C6573;
      v34 = 0xEC00000065746144;
      goto LABEL_60;
    case 0xBu:
      v20 = *v11;
      v19 = v11[1];
      v22 = v11[2];
      v21 = v11[3];
      sub_100020C10(24);
      sub_100028C6C();
      sub_100030100();
      if (v1)
      {
LABEL_12:
        v27 = sub_100010DCC();
        v28(v27, v11);

        goto LABEL_42;
      }

      sub_10022C350(&qword_100CDEDB8);
      v56 = swift_initStackObject();
      v57 = sub_100014FF4(v56, xmmword_100A2D320);
      v57[2].n128_u64[0] = v58;
      v57[2].n128_u64[1] = v59;
      v57[3].n128_u64[0] = v20;
      v57[3].n128_u64[1] = v19;
      v57[4].n128_u64[0] = 1954047348;
      v57[4].n128_u64[1] = 0xE400000000000000;
      v57[5].n128_u64[0] = v22;
      v57[5].n128_u64[1] = v21;
      v60 = Dictionary.init(dictionaryLiteral:)();
      sub_100009140(v60);
      sub_10022C350(&qword_100CDEDC0);
      sub_10085AFC8();
LABEL_57:
      sub_100028C6C();
LABEL_64:
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      v40 = sub_100010DCC();
      v42 = v11;
      goto LABEL_49;
    case 0xCu:
      v18 = 1;
      goto LABEL_48;
    case 0xDu:
      v18 = 4;
      goto LABEL_48;
    case 0xEu:
      v18 = 5;
      goto LABEL_48;
    case 0xFu:
      v18 = 6;
      goto LABEL_48;
    case 0x10u:
      v18 = 7;
      goto LABEL_48;
    case 0x11u:
      v18 = 9;
      goto LABEL_48;
    case 0x12u:
      v18 = 10;
      goto LABEL_48;
    case 0x13u:
      v18 = 11;
      goto LABEL_48;
    case 0x14u:
      v18 = 15;
      goto LABEL_48;
    case 0x15u:
      v18 = 18;
      goto LABEL_48;
    case 0x16u:
      v18 = 19;
      goto LABEL_48;
    case 0x17u:
      v18 = 21;
      goto LABEL_48;
    default:
      v17 = *v11;
      v16 = v11[1];
      v86 = 0;
      sub_10085B140();
      sub_10001CF28();
      if (v1)
      {
LABEL_41:
        v43 = sub_100010DCC();
        v44(v43, v15);
LABEL_42:
      }

      else
      {
LABEL_33:
        sub_10022C350(&qword_100CDEDB8);
        v35 = swift_initStackObject();
        v32 = sub_100069B5C(v35, xmmword_100A2C3F0);
LABEL_60:
        *(v32 + 32) = v33;
        *(v32 + 40) = v34;
        *(v32 + 48) = v17;
        *(v32 + 56) = v16;
        v72 = Dictionary.init(dictionaryLiteral:)();
        sub_100009140(v72);
        sub_10022C350(&qword_100CDEDC0);
        sub_10085AFC8();
        sub_100028C6C();
        KeyedEncodingContainer.encode<A>(_:forKey:)();

LABEL_61:
        v40 = sub_100010DCC();
        v42 = v15;
LABEL_49:
        v41(v40, v42);
      }

      sub_10000C8F4();
      return;
  }
}

unint64_t sub_10085AC64()
{
  result = qword_100CDED60;
  if (!qword_100CDED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDED60);
  }

  return result;
}

unint64_t sub_10085ACB8()
{
  result = qword_100CDED68;
  if (!qword_100CDED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDED68);
  }

  return result;
}

uint64_t sub_10085AD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_10085AD68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10085ADC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10085AE08()
{
  result = qword_100CDED88;
  if (!qword_100CDED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDED88);
  }

  return result;
}

uint64_t sub_10085AE5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_10085AEB8()
{
  result = qword_100CDEDA8;
  if (!qword_100CDEDA8)
  {
    sub_10022E824(&qword_100CDEDA0);
    sub_10085ADC0(&qword_100CB1CF8, &type metadata accessor for WeatherMapOverlayKind);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEDA8);
  }

  return result;
}

unint64_t sub_10085AF74()
{
  result = qword_100CDEDB0;
  if (!qword_100CDEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEDB0);
  }

  return result;
}

unint64_t sub_10085AFC8()
{
  result = qword_100CDEDC8;
  if (!qword_100CDEDC8)
  {
    sub_10022E824(&qword_100CDEDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEDC8);
  }

  return result;
}

unint64_t sub_10085B044()
{
  result = qword_100CDEDD8;
  if (!qword_100CDEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEDD8);
  }

  return result;
}

unint64_t sub_10085B098()
{
  result = qword_100CDEDE0;
  if (!qword_100CDEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEDE0);
  }

  return result;
}

unint64_t sub_10085B0EC()
{
  result = qword_100CDEDF0;
  if (!qword_100CDEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEDF0);
  }

  return result;
}

unint64_t sub_10085B140()
{
  result = qword_100CDEDF8;
  if (!qword_100CDEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEDF8);
  }

  return result;
}

unint64_t sub_10085B194()
{
  result = qword_100CDEE10;
  if (!qword_100CDEE10)
  {
    sub_10022E824(&qword_100CDEE08);
    sub_10085B220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE10);
  }

  return result;
}

unint64_t sub_10085B220()
{
  result = qword_100CD3048;
  if (!qword_100CD3048)
  {
    sub_10022E824(&qword_100CA6078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD3048);
  }

  return result;
}

unint64_t sub_10085B29C()
{
  result = qword_100CDEE20;
  if (!qword_100CDEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutomationCellInfo.AutomationInfoKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10085B40C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_100020E50(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10085B4E4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_100020E50(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10085B5C0()
{
  result = qword_100CDEE28;
  if (!qword_100CDEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE28);
  }

  return result;
}

unint64_t sub_10085B618()
{
  result = qword_100CDEE30;
  if (!qword_100CDEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE30);
  }

  return result;
}

unint64_t sub_10085B670()
{
  result = qword_100CDEE38;
  if (!qword_100CDEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE38);
  }

  return result;
}

unint64_t sub_10085B6C8()
{
  result = qword_100CDEE40;
  if (!qword_100CDEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE40);
  }

  return result;
}

unint64_t sub_10085B720()
{
  result = qword_100CDEE48;
  if (!qword_100CDEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE48);
  }

  return result;
}

unint64_t sub_10085B778()
{
  result = qword_100CDEE50;
  if (!qword_100CDEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE50);
  }

  return result;
}

unint64_t sub_10085B7D0()
{
  result = qword_100CDEE58;
  if (!qword_100CDEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE58);
  }

  return result;
}

unint64_t sub_10085B828()
{
  result = qword_100CDEE60;
  if (!qword_100CDEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE60);
  }

  return result;
}

unint64_t sub_10085B880()
{
  result = qword_100CDEE68;
  if (!qword_100CDEE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE68);
  }

  return result;
}

unint64_t sub_10085B8D8()
{
  result = qword_100CDEE70;
  if (!qword_100CDEE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE70);
  }

  return result;
}

unint64_t sub_10085B930()
{
  result = qword_100CDEE78;
  if (!qword_100CDEE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE78);
  }

  return result;
}

unint64_t sub_10085B988()
{
  result = qword_100CDEE80;
  if (!qword_100CDEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE80);
  }

  return result;
}

unint64_t sub_10085B9E0()
{
  result = qword_100CDEE88;
  if (!qword_100CDEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE88);
  }

  return result;
}

unint64_t sub_10085BA38()
{
  result = qword_100CDEE90;
  if (!qword_100CDEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE90);
  }

  return result;
}

unint64_t sub_10085BA90()
{
  result = qword_100CDEE98;
  if (!qword_100CDEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEE98);
  }

  return result;
}

unint64_t sub_10085BAE8()
{
  result = qword_100CDEEA0;
  if (!qword_100CDEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEEA0);
  }

  return result;
}

unint64_t sub_10085BB40()
{
  result = qword_100CDEEA8;
  if (!qword_100CDEEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEEA8);
  }

  return result;
}

unint64_t sub_10085BB94()
{
  result = qword_100CDEEB0;
  if (!qword_100CDEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEEB0);
  }

  return result;
}

unint64_t sub_10085BBE8()
{
  result = qword_100CDEEB8;
  if (!qword_100CDEEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDEEB8);
  }

  return result;
}

id sub_10085BC50@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LocalSearchCompleterManager();
  result = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  a1[4] = &protocol witness table for LocalSearchCompleterManager;
  *a1 = result;
  return result;
}

uint64_t sub_10085BC9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDEF70);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDEF88);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v5 = type metadata accessor for LocalSearchRequestManager();
    swift_allocObject();
    result = LocalSearchRequestManager.init(service:store:appConfigurationManager:queue:)(v10, v11, v8, v9, v6, 0);
    a2[3] = v5;
    a2[4] = &off_100C6CB98;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_10085BE0C(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96D8);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1938);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA730);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    v4 = type metadata accessor for ListViewTipManager(0);
    swift_allocObject();
    sub_100230B74();
    a2[3] = v4;
    a2[4] = &off_100C46408;
    *a2 = v5;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10085BFB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    type metadata accessor for LocalSearchRequestService();
    v4 = swift_allocObject();
    result = sub_100013188(&v5, v4 + 16);
    *a2 = v4;
    a2[1] = &protocol witness table for LocalSearchRequestService;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10085C058(uint64_t a1)
{
  v3 = sub_10022C350(&qword_100CA7000);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  (*(v6 + 16))(&v9 - v5, a1, v3);
  sub_1008634D4();
  v10 = dispatch thunk of Sequence._copyToContiguousArray()();
  sub_10085C158(&v10);
  v7 = v10;
  if (v1)
  {
  }

  return v7;
}

void sub_10085C158(uint64_t *a1)
{
  v2 = type metadata accessor for DayWeather();
  sub_100003810(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100309360();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v7;
  sub_100861F3C(v8);
  *a1 = v5;
}

uint64_t sub_10085C1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v3 = sub_10022C350(&qword_100CA5898);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v62 = &v58 - v5;
  sub_1000038CC();
  v61 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v59 = v8 - v7;
  sub_1000038CC();
  v9 = type metadata accessor for Location();
  sub_1000037C4();
  v64 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  type metadata accessor for Date();
  sub_1000037C4();
  v65 = v23;
  v66 = v22;
  __chkstk_darwin(v22);
  sub_1000037D8();
  v26 = (v25 - v24);
  v27 = type metadata accessor for SunriseSunsetDetailInput(0);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = v30 - v29;
  v32 = type metadata accessor for SunriseSunsetDetailInput.Input(0);
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_1000037D8();
  v36 = v35 - v34;
  sub_100861DD8(v67, v31);
  if (sub_100024D10(v31, 1, v32) == 1)
  {
    sub_100861E3C(v31, type metadata accessor for SunriseSunsetDetailInput);
    v37 = type metadata accessor for SunriseSunsetDetailViewModel();
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return sub_10001B350(a2, 0, 1, v37);
  }

  v60 = a2;
  v38 = sub_10000CA1C();
  sub_100861EDC(v38, v39, v40);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v17 + 8))(v21, v15);
  (*(v64 + 16))(v14, v36, v9);
  if (*(v36 + *(v32 + 28)) != 1)
  {
    v51 = sub_100017010();
    v52(v51);
    (*(v65 + 8))(v26, v66);
LABEL_11:
    sub_100023398();
    v37 = type metadata accessor for SunriseSunsetDetailViewModel();
    a2 = v60;
    goto LABEL_12;
  }

  v41 = v63;
  sub_1000161C0((v63 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_preprocessedDataProvider), *(v63 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_preprocessedDataProvider + 24));
  v42 = v62;
  sub_10000CA1C();
  sub_1002794EC();
  v43 = sub_100024D10(v42, 1, v61);
  v44 = v60;
  if (v43 == 1)
  {
    sub_1000180EC(v42, &qword_100CA5898);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_10000703C(v45, qword_100D90B68);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Preprocessed data isn't available", v48, 2u);
    }

    v49 = sub_100017010();
    v50(v49);
    (*(v65 + 8))(v26, v66);
    goto LABEL_11;
  }

  v54 = v42;
  v55 = v59;
  sub_100861EDC(v54, v59, type metadata accessor for SunriseSunsetDetailPreprocessedDataModel);
  sub_10085C79C(v14, v55, v26, v36 + *(v32 + 24), *(v41 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_isDemoPresetActive), v44);
  sub_100861E3C(v55, type metadata accessor for SunriseSunsetDetailPreprocessedDataModel);
  v56 = sub_100017010();
  v57(v56);
  (*(v65 + 8))(v26, v66);
  return sub_100023398();
}

uint64_t sub_10085C79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void (*a3)(void, void, void)@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  LODWORD(v224) = a5;
  v218 = a4;
  v239 = a3;
  v220 = a2;
  v241 = a1;
  v232 = a6;
  v183 = type metadata accessor for OverviewTableViewModel();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v191 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for Location();
  v221 = *(v222 - 8);
  v7 = __chkstk_darwin(v222);
  v219 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v203 = &v170 - v9;
  v231 = type metadata accessor for SunriseSunsetDetailViewModel();
  __chkstk_darwin(v231);
  v184 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for AttributedString();
  v192 = *(v193 - 8);
  v11 = __chkstk_darwin(v193);
  v201 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v190 = &v170 - v13;
  v14 = sub_10022C350(&qword_100CCD148);
  __chkstk_darwin(v14 - 8);
  v178 = (&v170 - v15);
  v202 = type metadata accessor for SunriseSunsetDetailChartViewModel();
  v189 = *(v202 - 8);
  v16 = __chkstk_darwin(v202);
  v188 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v200 = &v170 - v18;
  v181 = type metadata accessor for SunriseSunsetEvent();
  v180 = *(v181 - 8);
  __chkstk_darwin(v181);
  v199 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&unk_100CB2CF0);
  v21 = __chkstk_darwin(v20 - 8);
  v186 = (&v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v205 = &v170 - v23;
  v210 = type metadata accessor for SunEvents();
  v206 = *(v210 - 8);
  v24 = __chkstk_darwin(v210);
  v179 = &v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v187 = &v170 - v27;
  v28 = __chkstk_darwin(v26);
  v185 = &v170 - v29;
  __chkstk_darwin(v28);
  v204 = &v170 - v30;
  v211 = type metadata accessor for Date();
  v208 = *(v211 - 8);
  v31 = __chkstk_darwin(v211);
  v197 = &v170 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v196 = &v170 - v34;
  v35 = __chkstk_darwin(v33);
  v195 = &v170 - v36;
  v37 = __chkstk_darwin(v35);
  v198 = &v170 - v38;
  __chkstk_darwin(v37);
  v207 = &v170 - v39;
  v40 = sub_10022C350(&qword_100CA7188);
  __chkstk_darwin(v40 - 8);
  v234 = &v170 - v41;
  v216 = type metadata accessor for ArticlePlacementLocation();
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v214 = &v170 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10022C350(&qword_100CB8A48);
  v44 = __chkstk_darwin(v43 - 8);
  v213 = &v170 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v226 = &v170 - v46;
  v47 = sub_10022C350(&qword_100CAB9B0);
  v48 = __chkstk_darwin(v47 - 8);
  v217 = &v170 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v223 = &v170 - v50;
  v240 = type metadata accessor for DayWeather();
  v225 = *(v240 - 8);
  v51 = __chkstk_darwin(v240);
  v209 = &v170 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v236 = &v170 - v53;
  v237 = type metadata accessor for TimeZone();
  v233 = *(v237 - 8);
  v54 = __chkstk_darwin(v237);
  v177 = &v170 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v57 = &v170 - v56;
  v230 = type metadata accessor for Calendar();
  v229 = *(v230 - 8);
  __chkstk_darwin(v230);
  v59 = &v170 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10022C350(&qword_100CA7000);
  v61 = *(v60 - 8);
  __chkstk_darwin(v60);
  v63 = &v170 - v62;
  v176 = type metadata accessor for CurrentWeather();
  v175 = *(v176 - 8);
  __chkstk_darwin(v176);
  v65 = &v170 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for SunriseSunsetModel();
  v227 = *(v228 - 8);
  __chkstk_darwin(v228);
  v67 = &v170 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  WeatherDataModel.dailyForecast.getter();
  v174 = v65;
  SunriseSunsetModel.init(currentWeather:dailyForecast:)();
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v69 = v233 + 8;
  v68 = *(v233 + 8);
  v194 = v57;
  v68(v57, v237);
  SunriseSunsetModel.dailyForecast.getter();
  v238 = v59;
  v242 = v59;
  v243 = v224;
  v244 = v239;
  v70 = v223;
  sub_1001190BC();
  v71 = *(v61 + 8);
  v224 = v60;
  v212 = v61 + 8;
  v71(v63, v60);
  v72 = v240;
  if (sub_100024D10(v70, 1, v240) != 1)
  {
    v173 = v68;
    v87 = *(v225 + 32);
    v172 = v225 + 32;
    v171 = v87;
    v87(v236, v70, v72);
    sub_1000161C0((v235 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_newsArticleComponentViewModelFactory), *(v235 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_newsArticleComponentViewModelFactory + 24));
    v88 = v215;
    v89 = *(v215 + 104);
    v219 = v71;
    v90 = v214;
    v91 = v216;
    v89(v214, enum case for ArticlePlacementLocation.sunriseSunsetDetail(_:), v216);
    v92 = v226;
    sub_1005C188C(v90, v226);
    (*(v88 + 8))(v90, v91);
    v93 = v92;
    v94 = v213;
    sub_100035AD0(v93, v213, &qword_100CB8A48);
    sub_100428C50(v94, v234);
    v223 = v67;
    v95 = SunriseSunsetModel.dailyForecast.getter();
    __chkstk_darwin(v95);
    v96 = v238;
    *(&v170 - 2) = v238;
    v97 = v217;
    sub_1001190BC();
    (v219)(v63, v224);
    v98 = v240;
    if (sub_100024D10(v97, 1, v240) == 1)
    {
      sub_1000180EC(v97, &qword_100CAB9B0);
      v99 = v231;
      v100 = v232;
      v101 = v234;
      v102 = v223;
      v103 = v226;
      v104 = v225;
    }

    else
    {
      v170 = v69;
      v106 = v209;
      v171(v209, v97, v98);
      v107 = v204;
      DayWeather.sun.getter();
      v108 = v205;
      SunEvents.sunrise.getter();
      v110 = (v206 + 8);
      v109 = *(v206 + 8);
      v111 = v210;
      v109(v107, v210);
      v112 = v211;
      if (sub_100024D10(v108, 1, v211) == 1)
      {
        v104 = v225;
        (*(v225 + 8))(v106, v98);
        sub_1000180EC(v108, &unk_100CB2CF0);
        v99 = v231;
        v100 = v232;
      }

      else
      {
        v224 = v208[4];
        v224(v207, v108, v112);
        v113 = v110;
        v114 = v109;
        v115 = v185;
        DayWeather.sun.getter();
        v116 = v186;
        SunEvents.sunset.getter();
        v117 = v116;
        v114(v115, v111);
        v118 = sub_100024D10(v116, 1, v112);
        v119 = v235;
        if (v118 != 1)
        {
          v224(v198, v116, v112);
          Location.coordinate.getter();
          v219 = v114;
          v121 = v194;
          Location.timeZone.getter();
          v224 = v113;
          v122 = v239;
          SunriseSunsetEventCalculator.nextEvent(coordinate:date:timeZone:)();
          v173(v121, v237);
          v217 = SunriseSunsetEvent.headerDescription.getter();
          v216 = v123;
          v213 = SunriseSunsetEvent.symbolIconName.getter();
          v212 = v124;
          v125 = (v119 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory);
          v126 = *(v119 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory + 24);
          v127 = v125[4];
          sub_1000161C0(v125, v126);
          v128 = v174;
          SunriseSunsetModel.currentWeather.getter();
          v129 = v178;
          DayWeather.sun.getter();
          sub_10001B350(v129, 0, 1, v111);
          sub_10038C384(v129, v220, v126, v127, v200);
          sub_1000180EC(v129, &qword_100CCD148);
          (*(v175 + 8))(v128, v176);
          Location.timeZone.getter();
          v130 = v199;
          v131 = v235;
          v215 = sub_10085EA3C(v199, v122, v121);
          v214 = v132;
          v133 = v237;
          v134 = v173;
          v173(v121, v237);
          v135 = v187;
          DayWeather.sun.getter();
          Location.timeZone.getter();
          v136 = v190;
          sub_10085EDE8(v130, v135, v122, v121, v238, v190);
          v134(v121, v133);
          v137 = v219;
          (v219)(v135, v210);
          v218 = *(sub_10022C350(&qword_100CCD138) + 48);
          v138 = v208[2];
          v139 = v122;
          v140 = v211;
          v138(v195, v139, v211);
          v138(v196, v207, v140);
          v138(v197, v198, v140);
          v141 = v241;
          Location.timeZone.getter();
          v142 = *(v192 + 16);
          v205 = (v192 + 16);
          v239 = v142;
          v142(v201, v136, v193);
          sub_100119F7C();
          v204 = static NSDateFormatter.timeSymbols.getter();
          v143 = *(v221 + 16);
          v185 = (v221 + 16);
          v186 = v143;
          v143(v203, v141, v222);
          DayWeather.sun.getter();
          v178 = *(v189 + 16);
          v178(v188, v200, v202);
          sub_1000161C0((v131 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetTableViewModelFactory), *(v131 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetTableViewModelFactory + 24));
          v144 = v137;
          v145 = v179;
          DayWeather.sun.getter();
          v146 = v177;
          Location.timeZone.getter();
          dispatch thunk of SunriseSunsetTableViewModelFactoryType.makeViewModel(from:timeZone:calendar:)();
          v147 = v237;
          v173(v146, v237);
          v148 = v145;
          v149 = v210;
          (v144)(v148, v210);
          v150 = _s11NormalModelVMa();
          v151 = v184;
          sub_100035AD0(v234, &v184[v150[18]], &qword_100CA7188);
          v152 = v216;
          *v151 = v217;
          *(v151 + 1) = v152;
          v153 = v212;
          *(v151 + 2) = v213;
          *(v151 + 3) = v153;
          v154 = v211;
          v138(&v151[v150[7]], v195, v211);
          v138(&v151[v150[8]], v196, v154);
          v138(&v151[v150[9]], v197, v154);
          (*(v233 + 16))(&v151[v150[10]], v194, v147);
          v155 = v193;
          v239(&v151[v150[11]], v201, v193);
          *&v151[v150[12]] = v204;
          v186(&v151[v150[14]], v203, v222);
          v156 = v188;
          v157 = v202;
          v178(&v151[v150[13]], v188, v202);
          v158 = v187;
          (*(v206 + 16))(&v151[v150[15]], v187, v149);
          v159 = v182;
          v160 = v191;
          v161 = v183;
          (*(v182 + 16))(&v151[v150[16]], v191, v183);
          v162 = v214;
          *(v151 + 4) = v215;
          *(v151 + 5) = v162;
          DaylightStringBuilder.init()();
          (*(v159 + 8))(v160, v161);
          v163 = *(v189 + 8);
          v163(v156, v157);
          (v219)(v158, v149);
          (*(v221 + 8))(v203, v222);
          v164 = *(v192 + 8);
          v164(v201, v155);
          v173(v194, v237);
          v165 = v208[1];
          v166 = v211;
          v165(v197, v211);
          v165(v196, v166);
          v165(v195, v166);
          v167 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel();
          sub_10086014C((v220 + *(v167 + 24)), &v151[v218]);
          v164(v190, v155);
          v163(v200, v202);
          (*(v180 + 8))(v199, v181);
          v165(v198, v166);
          v165(v207, v166);
          v168 = *(v225 + 8);
          v169 = v240;
          v168(v209, v240);
          v96 = v238;
          sub_1000180EC(v234, &qword_100CA7188);
          sub_1000180EC(v226, &qword_100CB8A48);
          v168(v236, v169);
          (*(v227 + 8))(v223, v228);
          v99 = v231;
          swift_storeEnumTagMultiPayload();
          v100 = v232;
          sub_100861EDC(v151, v232, type metadata accessor for SunriseSunsetDetailViewModel);
          goto LABEL_16;
        }

        (v208[1])(v207, v112);
        v104 = v225;
        v98 = v240;
        (*(v225 + 8))(v209, v240);
        sub_1000180EC(v117, &unk_100CB2CF0);
        v99 = v231;
        v100 = v232;
      }

      v101 = v234;
      v102 = v223;
      v103 = v226;
    }

    sub_10085E678(v241, v102, v239, v220, v101, v100);
    sub_1000180EC(v101, &qword_100CA7188);
    sub_1000180EC(v103, &qword_100CB8A48);
    (*(v104 + 8))(v236, v98);
    (*(v227 + 8))(v102, v228);
LABEL_16:
    v105 = 0;
    goto LABEL_17;
  }

  v73 = v238;
  sub_1000180EC(v70, &qword_100CAB9B0);
  if (qword_100CA26B8 != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  sub_10000703C(v74, qword_100D90A90);
  v75 = v221;
  v76 = v219;
  v77 = v222;
  (*(v221 + 16))(v219, v241, v222);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v245 = v81;
    *v80 = 141558275;
    *(v80 + 4) = 1752392040;
    *(v80 + 12) = 2081;
    sub_10006CB24(&qword_100CA6678, &type metadata accessor for Location);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = v76;
    v85 = v84;
    (*(v75 + 8))(v83, v77);
    v86 = sub_100078694(v82, v85, &v245);

    *(v80 + 14) = v86;
    _os_log_impl(&_mh_execute_header, v78, v79, "Missing sunset L2 daily forecast for location:%{private,mask.hash}s", v80, 0x16u);
    sub_100006F14(v81);
  }

  else
  {

    (*(v75 + 8))(v76, v77);
  }

  (*(v227 + 8))(v67, v228);
  v105 = 1;
  v96 = v73;
  v99 = v231;
  v100 = v232;
LABEL_17:
  sub_10001B350(v100, v105, 1, v99);
  return (*(v229 + 8))(v96, v230);
}

uint64_t sub_10085E534(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v12[1] = a4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  v9 = Calendar.isDateInToday(_:)();
  v10 = *(v6 + 8);
  v10(v8, v5);
  if (v9 & 1) == 0 && (a3)
  {
    DayWeather.date.getter();
    v9 = Calendar.isDate(_:inSameDayAs:)();
    v10(v8, v5);
  }

  return v9 & 1;
}

uint64_t sub_10085E678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v23[0] = a3;
  v23[1] = a2;
  v25 = a6;
  v31 = sub_10022C350(&qword_100CA7000);
  v27 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = v23 - v8;
  v26 = type metadata accessor for CurrentWeather();
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Elevation();
  v13 = *(v24 - 8);
  __chkstk_darwin(v24);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6;
  sub_1000161C0((v6 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunElevationCalculator), *(v6 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunElevationCalculator + 24));
  v16 = a1;
  v17 = v23[0];
  dispatch thunk of SunElevationCalculatorType.getElevation(for:on:)();
  Elevation.degrees.getter();
  v19 = v18;
  SunriseSunsetModel.currentWeather.getter();
  SunriseSunsetModel.dailyForecast.getter();
  if (v19 >= 0.0)
  {
    v20 = &enum case for PolarType.day(_:);
    v21 = sub_100863538;
  }

  else
  {
    v20 = &enum case for PolarType.night(_:);
    v21 = sub_100863558;
  }

  sub_1008609E8(v16, v17, v12, v9, v29, v30, v21, v20, v25);
  (*(v27 + 8))(v9, v31);
  (*(v10 + 8))(v12, v26);
  return (*(v13 + 8))(v15, v24);
}

uint64_t sub_10085E950()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  v4 = Calendar.isDateInToday(_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_10085EA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  SunriseSunsetEvent.date.getter();
  v9 = sub_100860570();
  v10 = *(v6 + 8);
  v10(v8, v5);
  if ((v9 - 49) >= 0xFFFFFFFFFFFFFFE7)
  {
LABEL_4:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_10022C350(&qword_100CA40C8);
    goto LABEL_5;
  }

  SunriseSunsetEvent.date.getter();
  v9 = sub_1008607AC();
  v10(v8, v5);
  if (v9 < 8)
  {
    if (v9 < 2)
    {
      SunriseSunsetEvent.date.getter();
      v12 = Date.formattedTime(timeZone:)();
      v10(v8, v5);
      return v12;
    }

    goto LABEL_4;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10022C350(&qword_100CA40C8);
  v9 = 7;
LABEL_5:
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A2C3F0;
  *(v11 + 56) = &type metadata for Int;
  *(v11 + 64) = &protocol witness table for Int;
  *(v11 + 32) = v9;
  v12 = static String.localizedStringWithFormat(_:_:)();

  return v12;
}

uint64_t sub_10085EDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v147 = a2;
  v149 = a4;
  v150 = a5;
  v148 = a6;
  v8 = type metadata accessor for TimeZone();
  v138 = *(v8 - 8);
  v139 = v8;
  v9 = __chkstk_darwin(v8);
  v131 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v132 = &v120 - v11;
  v12 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v12 - 8);
  v137 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v136 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v135 = (&v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = type metadata accessor for SunriseSunsetEvent();
  v143 = *(v145 - 8);
  v18 = __chkstk_darwin(v145);
  v134 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v129 = &v120 - v21;
  v22 = __chkstk_darwin(v20);
  v128 = &v120 - v23;
  __chkstk_darwin(v22);
  v142 = &v120 - v24;
  v25 = type metadata accessor for Calendar.Component();
  v140 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v28 - 8);
  v30 = &v120 - v29;
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v130 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v133 = &v120 - v36;
  v37 = __chkstk_darwin(v35);
  v144 = &v120 - v38;
  __chkstk_darwin(v37);
  v40 = &v120 - v39;
  SunriseSunsetEvent.date.getter();
  v41 = static Date.> infix(_:_:)();
  v141 = v32;
  isa = v32[1].isa;
  v43 = v32 + 1;
  v42 = isa;
  isa(v40, v31);
  if (v41 & 1) == 0 || (SunriseSunsetEvent.date.getter(), v45 = Calendar.isDate(_:inSameDayAs:)(), v42(v40, v31), (v45))
  {
    sub_1000161C0((v146 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_daylightStringBuilder), *(v146 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_daylightStringBuilder + 24));
    return dispatch thunk of DaylightStringBuilderType.makeDaylightString(for:sunEvents:timeZone:calendar:)();
  }

  SunriseSunsetEvent.date.getter();
  v126 = a3;
  v122 = sub_1008607AC();
  v42(v40, v31);
  v127 = a1;
  SunriseSunsetEvent.date.getter();
  v120 = Date.formattedMonthAndDay(timeZone:)();
  v123 = v47;
  v125 = v42;
  v124 = v43;
  v42(v40, v31);
  v48 = v140;
  (*(v140 + 104))(v27, enum case for Calendar.Component.day(_:), v25);
  v49 = v126;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v48 + 8))(v27, v25);
  v50 = v49;
  if (sub_100024D10(v30, 1, v31) == 1)
  {
    Date.addingTimeInterval(_:)();
    v51 = sub_100024D10(v30, 1, v31);
    v52 = v142;
    v53 = v143;
    if (v51 != 1)
    {
      sub_1000180EC(v30, &unk_100CB2CF0);
    }
  }

  else
  {
    (v141[4].isa)(v144, v30, v31);
    v52 = v142;
    v53 = v143;
  }

  v54 = v127;
  SunriseSunsetEvent.date.getter();
  v55 = Calendar.isDate(_:inSameDayAs:)();
  v56 = v125;
  v125(v40, v31);
  v57 = v54;
  v58 = v145;
  v140 = *(v53 + 16);
  (v140)(v52, v57, v145);
  v59 = (*(v53 + 88))(v52, v58);
  if (v59 != enum case for SunriseSunsetEvent.sunrise(_:))
  {
    if (v59 == enum case for SunriseSunsetEvent.sunset(_:))
    {
      (*(v143 + 96))(v52, v145);
      v60 = v127;
      v61 = v134;
      if ((v55 & 1) != 0 || v122 >= 8)
      {
        goto LABEL_21;
      }

      if (v122 >= 1)
      {
        goto LABEL_34;
      }

      v56(v52, v31);
    }

    else
    {

      v62 = v127;
      if (qword_100CA26B8 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_10000703C(v63, qword_100D90A90);
      v64 = v128;
      v65 = v140;
      (v140)(v128, v62, v145);
      (v141[2].isa)(v133, v50, v31);
      v66 = v132;
      (*(v138 + 16))(v132, v149, v139);
      v67 = Logger.logObject.getter();
      LODWORD(v137) = static os_log_type_t.error.getter();
      v68 = os_log_type_enabled(v67, v137);
      v121 = v31;
      if (v68)
      {
        v69 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v151 = v136;
        *v69 = 136315650;
        v123 = v67;
        v70 = v145;
        v65(v129, v64, v145);
        v71 = String.init<A>(describing:)();
        v73 = v72;
        v135 = *(v143 + 8);
        v135(v64, v70);
        v74 = sub_100078694(v71, v73, &v151);

        *(v69 + 4) = v74;
        *(v69 + 12) = 2080;
        sub_10006CB24(&qword_100CA5720, &type metadata accessor for Date);
        v75 = v133;
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = v77;
        v125(v75, v31);
        v52 = v142;
        v79 = sub_100078694(v76, v78, &v151);

        *(v69 + 14) = v79;
        *(v69 + 22) = 2080;
        sub_10006CB24(&qword_100CCC818, &type metadata accessor for TimeZone);
        v80 = v132;
        v81 = v139;
        v82 = dispatch thunk of CustomStringConvertible.description.getter();
        v84 = v83;
        (*(v138 + 8))(v80, v81);
        v85 = sub_100078694(v82, v84, &v151);

        *(v69 + 24) = v85;
        v86 = v123;
        _os_log_impl(&_mh_execute_header, v123, v137, "Unexpected sun event encountered. event: %s, date:%s, timeZone:%s", v69, 0x20u);
        swift_arrayDestroy();

        v87 = v70;
        v88 = v135;
      }

      else
      {

        (*(v138 + 8))(v66, v139);
        v56(v133, v31);
        v88 = *(v143 + 8);
        v89 = v145;
        v88(v64, v145);
        v87 = v89;
      }

      v61 = v134;
      v88(v52, v87);
      v31 = v121;
      v60 = v127;
    }

LABEL_26:
    v91 = v138;
    v90 = v139;
    v92 = v131;
    if (qword_100CA26B8 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_10000703C(v93, qword_100D90A90);
    v94 = v61;
    v95 = v60;
    v96 = v61;
    v97 = v145;
    v98 = v140;
    (v140)(v94, v95, v145);
    v99 = v130;
    (v141[2].isa)(v130, v126, v31);
    (*(v91 + 16))(v92, v149, v90);
    v100 = Logger.logObject.getter();
    LODWORD(v142) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v100, v142))
    {
      v101 = v91;
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v121 = v31;
      v151 = v103;
      *v102 = 136315650;
      v141 = v100;
      v98(v129, v96, v97);
      v104 = String.init<A>(describing:)();
      v106 = v105;
      (*(v143 + 8))(v96, v97);
      v107 = sub_100078694(v104, v106, &v151);

      *(v102 + 4) = v107;
      *(v102 + 12) = 2080;
      sub_10006CB24(&qword_100CA5720, &type metadata accessor for Date);
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v110 = v109;
      v125(v99, v121);
      v111 = sub_100078694(v108, v110, &v151);

      *(v102 + 14) = v111;
      *(v102 + 22) = 2080;
      sub_10006CB24(&qword_100CCC818, &type metadata accessor for TimeZone);
      v112 = v139;
      v113 = dispatch thunk of CustomStringConvertible.description.getter();
      v115 = v114;
      (*(v101 + 8))(v92, v112);
      v116 = sub_100078694(v113, v115, &v151);
      v56 = v125;

      *(v102 + 24) = v116;
      v117 = v141;
      _os_log_impl(&_mh_execute_header, v141, v142, "It should not be possible to get here. event: %s, date:%s, timeZone:%s", v102, 0x20u);
      swift_arrayDestroy();
      v31 = v121;
      v52 = v144;
    }

    else
    {

      (*(v91 + 8))(v92, v90);
      v56 = v125;
      v125(v99, v31);
      (*(v143 + 8))(v96, v97);
      v52 = v144;
    }

    sub_1000161C0((v146 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_daylightStringBuilder), *(v146 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_daylightStringBuilder + 24));
    dispatch thunk of DaylightStringBuilderType.makeDaylightString(for:sunEvents:timeZone:calendar:)();
    return (v56)(v52, v31);
  }

  (*(v53 + 96))(v52, v58);
  if ((v55 & 1) != 0 || v122 >= 8)
  {
LABEL_21:

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v56(v144, v31);
    return (v56)(v52, v31);
  }

  if (v122 < 1)
  {

    v56(v52, v31);
    v60 = v127;
    v61 = v134;
    goto LABEL_26;
  }

LABEL_34:
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10022C350(&qword_100CA40C8);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_100A2C3F0;
  *(v118 + 56) = &type metadata for String;
  *(v118 + 64) = sub_100035744();
  v119 = v123;
  *(v118 + 32) = v120;
  *(v118 + 40) = v119;
  static String.localizedStringWithFormat(_:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v56(v144, v31);
  return (v56)(v52, v31);
}

uint64_t sub_10086014C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = a1;
  v7 = *a1;
  v8 = v7[1].i64[0];
  v9 = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v43 = a2;
    v50 = &_swiftEmptyArrayStorage;
    sub_1006A83E4();
    v9 = v50;
    v45 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
    v10 = v7 + 3;
    do
    {
      v48 = v8;
      v11 = v10[-1].i64[0];
      v12 = v10[-1].i64[1];
      v13 = v10->i64[0];
      v14 = v10->i64[1];
      v15 = v10[1].i64[0];
      v16 = v10[1].i64[1];
      v17 = v10[2].i64[0];
      v18 = v10[2].i64[1];
      v19 = v47;
      v20 = (v6 + *(v47 + 20));
      *v20 = vextq_s8(v10[3], v10[3], 8uLL);
      v20[1].i64[0] = v15;
      v20[1].i64[1] = v16;
      v20[2].i64[0] = v17;
      v20[2].i64[1] = v18;
      swift_storeEnumTagMultiPayload();
      *v6 = v13;
      v6[1] = v14;
      v6[2] = v11;
      v6[3] = v12;
      v6[4] = v11;
      v6[5] = v12;
      *(v6 + *(v19 + 24)) = 3;
      v50 = v9;
      v22 = v9[2];
      v21 = v9[3];
      swift_bridgeObjectRetain_n();

      if (v22 >= v21 >> 1)
      {
        sub_1006A83E4();
        v9 = v50;
      }

      v9[2] = v22 + 1;
      sub_100861EDC(v6, v9 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v22, type metadata accessor for ComparisonCapsuleViewModel.Row);
      v10 += 5;
      v8 = v48 - 1;
    }

    while (v48 != 1);
    a2 = v43;
  }

  if (qword_100CA2840 != -1)
  {
    swift_once();
  }

  v23 = qword_100D90E18;

  sub_10064C8F0(3, v9, v23, &v50);
  v24 = v51;
  if (v51)
  {
    v26 = v53;
    v25 = v54;
    v27 = v52;
    v28 = v50;
    v29 = [objc_opt_self() mainBundle];
    v55._object = 0x8000000100AE1740;
    v30._object = 0x8000000100AE1720;
    v55._countAndFlagsBits = 0xD000000000000029;
    v30._countAndFlagsBits = 0xD00000000000001BLL;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v55);

    v33 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    v34 = v33[6];
    v35 = *(type metadata accessor for SunriseSunsetMonthlyViewModel() + 20);
    v36 = type metadata accessor for WeatherDescription();
    (*(*(v36 - 8) + 16))(a2 + v34, &v44[v35], v36);
    sub_10001B350(a2 + v34, 0, 1, v36);
    v37 = a2 + v33[7];
    v49 = 0;
    *v37 = 0u;
    *(v37 + 16) = 0u;
    *(v37 + 32) = v28;
    *(v37 + 40) = v24;
    *(v37 + 48) = v27;
    *(v37 + 56) = v26;
    *(v37 + 64) = v25;
    *(v37 + 89) = 0;
    v38 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_10001B350(a2 + v33[8], 1, 1, v38);
    *a2 = xmmword_100A2F600;
    *(a2 + 16) = 2;
    *(a2 + 24) = v32;
    *(a2 + v33[9]) = 0;
    *(a2 + v33[10]) = 0;
    v39 = a2;
    v40 = 0;
    v41 = v33;
  }

  else
  {
    v41 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    v39 = a2;
    v40 = 1;
  }

  return sub_10001B350(v39, v40, 1, v41);
}

uint64_t sub_100860570()
{
  v0 = type metadata accessor for DateComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA53E8);
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2C3F0;
  (*(v5 + 104))(v7 + v6, enum case for Calendar.Component.hour(_:), v4);
  sub_10004BCB0(v7);
  Calendar.dateComponents(_:from:to:)();

  v8 = DateComponents.hour.getter();
  LOBYTE(v7) = v9;
  (*(v1 + 8))(v3, v0);
  if ((v7 & 1) == 0)
  {
    return v8;
  }

  Date.timeIntervalSince1970.getter();
  v11 = v10;
  result = Date.timeIntervalSince1970.getter();
  v14 = (v11 - v13) / 3600.0;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 9.22337204e18)
  {
    return v14;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1008607AC()
{
  v0 = type metadata accessor for DateComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA53E8);
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2C3F0;
  (*(v5 + 104))(v7 + v6, enum case for Calendar.Component.day(_:), v4);
  sub_10004BCB0(v7);
  Calendar.dateComponents(_:from:to:)();

  v8 = DateComponents.day.getter();
  LOBYTE(v7) = v9;
  (*(v1 + 8))(v3, v0);
  if ((v7 & 1) == 0)
  {
    return v8;
  }

  Date.timeIntervalSince1970.getter();
  v11 = v10;
  result = Date.timeIntervalSince1970.getter();
  v14 = (v11 - v13) / 7200.0;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 9.22337204e18)
  {
    return v14;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1008609E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int *a8@<X7>, uint64_t *a9@<X8>)
{
  v158 = a8;
  v147 = a7;
  v152 = a6;
  v167 = a5;
  v168 = a4;
  v159 = a3;
  v178 = a2;
  v155 = a9;
  type metadata accessor for Location();
  sub_1000037C4();
  v171 = v11;
  v172 = v10;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v170 = v13 - v12;
  sub_1000038CC();
  v14 = type metadata accessor for AttributeContainer();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_1000037D8();
  sub_100003918(v17 - v16);
  v154 = type metadata accessor for AttributedString();
  sub_1000037C4();
  v153 = v18;
  __chkstk_darwin(v19);
  sub_1000037D8();
  sub_100003918(v21 - v20);
  v182 = type metadata accessor for Date();
  sub_1000037C4();
  v174 = v22;
  __chkstk_darwin(v23);
  sub_1000037D8();
  v177 = v25 - v24;
  sub_1000038CC();
  v176 = type metadata accessor for PolarType();
  sub_1000037C4();
  v164 = v26;
  __chkstk_darwin(v27);
  sub_100003848();
  v148 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v175 = v30;
  v31 = sub_10022C350(&qword_100CCD148);
  sub_100003810(v31);
  sub_100003828();
  __chkstk_darwin(v32);
  sub_100003918(&v127[-v33]);
  v166 = type metadata accessor for SunriseSunsetDetailChartViewModel();
  sub_1000037C4();
  v165 = v34;
  __chkstk_darwin(v35);
  sub_100003848();
  v163 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_10000E70C();
  sub_100003918(v38);
  v151 = type metadata accessor for SunriseSunsetEvent();
  sub_1000037C4();
  v150 = v39;
  __chkstk_darwin(v40);
  sub_1000037D8();
  v173 = v42 - v41;
  v43 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v43);
  sub_100003828();
  __chkstk_darwin(v44);
  sub_100003918(&v127[-v45]);
  v46 = type metadata accessor for SunriseSunsetPolarSunEventStringBuilder();
  sub_1000037C4();
  v48 = v47;
  __chkstk_darwin(v49);
  sub_1000037D8();
  v52 = v51 - v50;
  v53 = sub_10022C350(&qword_100CAB9B0);
  v54 = sub_100003810(v53);
  v55 = __chkstk_darwin(v54);
  v57 = &v127[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v55);
  v59 = &v127[-v58];
  v60 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v62 = v61;
  __chkstk_darwin(v63);
  sub_100003848();
  v143 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  v67 = &v127[-v66];
  v146 = type metadata accessor for Calendar();
  sub_1000037C4();
  v145 = v68;
  __chkstk_darwin(v69);
  sub_1000037D8();
  v72 = v71 - v70;
  v160 = a1;
  Location.timeZone.getter();
  v161 = v72;
  static Calendar.currentCalendar(with:)();
  v144 = v62;
  v73 = *(v62 + 8);
  v74 = v67;
  v180 = v62 + 8;
  v181 = v60;
  v179 = v73;
  (v73)(v67, v60);
  v75 = sub_10085C058(v168);
  sub_1002B0A3C(7, v75);
  v184 = v178;
  sub_1008DC48C();
  swift_unknownObjectRelease();
  v139 = v48;
  v76 = *(v48 + 16);
  v136 = v183 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetPolarSunEventStringBuilder;
  v140 = v46;
  v76(v52);
  v147 = v59;
  sub_100035AD0(v59, v57, &qword_100CAB9B0);
  v77 = type metadata accessor for DayWeather();
  if (sub_100024D10(v57, 1, v77) == 1)
  {
    sub_1000180EC(v57, &qword_100CAB9B0);
    v78 = 1;
    v79 = v142;
  }

  else
  {
    v79 = v142;
    DayWeather.date.getter();
    (*(*(v77 - 8) + 8))(v57, v77);
    v78 = 0;
  }

  sub_10001B350(v79, v78, 1, v182);
  Location.timeZone.getter();
  v142 = SunriseSunsetPolarSunEventStringBuilder.makeTitle(currentDate:nextEvent:timeZone:)();
  v141 = v80;
  v81 = v179;
  (v179)(v74, v181);
  sub_1000180EC(v79, &unk_100CB2CF0);
  (*(v139 + 8))(v52, v140);
  Location.coordinate.getter();
  v82 = v74;
  Location.timeZone.getter();
  v83 = v183;
  SunriseSunsetEventCalculator.nextEvent(coordinate:date:timeZone:)();
  v84 = sub_100024B2C();
  v81(v84);
  v138 = SunriseSunsetEvent.headerDescription.getter();
  v137 = v85;
  v135 = SunriseSunsetEvent.symbolIconName.getter();
  v134 = v86;
  v87 = (v83 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory);
  v88 = *(v83 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory + 24);
  v89 = *(v83 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory + 32);
  sub_1000161C0(v87, v88);
  v90 = type metadata accessor for SunEvents();
  v91 = v156;
  sub_10001B350(v156, 1, 1, v90);
  v92 = v162;
  sub_10038C384(v91, v167, v88, v89, v162);
  sub_1000180EC(v91, &qword_100CCD148);
  v128 = *v158;
  v93 = v164;
  v94 = v164 + 104;
  v156 = *(v164 + 104);
  v95 = v175;
  v96 = v176;
  v156(v175);
  v129 = v94;
  v97 = v177;
  CurrentWeather.date.getter();
  Location.timeZone.getter();
  v133 = SunriseSunsetPolarSunEventStringBuilder.makeString(for:currentDate:nextEvent:timeZone:)();
  v157 = v82;
  (v179)(v82, v181);
  v98 = v174;
  v99 = *(v174 + 8);
  v139 = v174 + 8;
  v140 = v99;
  v100 = v182;
  v99(v97, v182);
  v101 = *(v93 + 8);
  v158 = (v93 + 8);
  v159 = v101;
  v101(v95, v96);
  v136 = *(sub_10022C350(&qword_100CCD130) + 48);
  v102 = v128;
  (v156)(v95, v128, v96);
  v103 = *(v98 + 16);
  v174 = v98 + 16;
  v132 = v103;
  v103(v97, v178, v100);
  v104 = v160;
  Location.timeZone.getter();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  sub_100119F7C();
  v131 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  v105 = *(v171 + 16);
  v133 = v171 + 16;
  v149 = v105;
  v105(v170, v104, v172);
  v130 = *(v165 + 16);
  v130(v163, v92, v166);
  sub_1000161C0((v183 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetTableViewModelFactory), *(v183 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetTableViewModelFactory + 24));
  v106 = v143;
  Location.timeZone.getter();
  v107 = v176;
  (v156)(v148, v102, v176);
  v108 = _s10PolarModelVMa();
  v109 = v155;
  dispatch thunk of SunriseSunsetTableViewModelFactoryType.makePolarViewModel(from:forecast:timeZone:calendar:type:)();
  sub_10003C998();
  v110();
  v111 = v181;
  (v179)(v106, v181);
  sub_100035AD0(v152, v109 + v108[16], &qword_100CA7188);
  v112 = v137;
  *v109 = v138;
  v109[1] = v112;
  v113 = v134;
  v109[2] = v135;
  v109[3] = v113;
  (*(v164 + 16))(v109 + v108[6], v175, v107);
  v132(v109 + v108[7], v177, v182);
  (*(v144 + 16))(v109 + v108[8], v157, v111);
  v114 = (v109 + v108[11]);
  v115 = v141;
  *v114 = v142;
  v114[1] = v115;
  v116 = v153;
  v117 = v169;
  v118 = v154;
  (*(v153 + 16))(v109 + v108[9], v169, v154);
  *(v109 + v108[10]) = v131;
  v119 = v163;
  v120 = v166;
  v130(v109 + v108[12], v163, v166);
  v149(v109 + v108[13], v170, v172);
  DaylightStringBuilder.init()();
  v121 = *(v165 + 8);
  v121(v119, v120);
  v122 = sub_100024B2C();
  v123(v122);
  (*(v116 + 8))(v117, v118);
  (v179)(v157, v181);
  v140(v177, v182);
  sub_10003C998();
  v124();
  v125 = type metadata accessor for SunriseSunsetDetailPreprocessedDataModel();
  sub_10086014C((v167 + *(v125 + 24)), v109 + v136);
  v121(v162, v120);
  (*(v150 + 8))(v173, v151);
  sub_1000180EC(v147, &qword_100CAB9B0);
  (*(v145 + 8))(v161, v146);
  type metadata accessor for SunriseSunsetDetailViewModel();
  return swift_storeEnumTagMultiPayload();
}

void sub_10086194C()
{
  sub_10000E8AC();
  v19[1] = v0;
  v1 = type metadata accessor for Date();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  v12 = type metadata accessor for SunEvents();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  DayWeather.sun.getter();
  SunEvents.sunset.getter();
  (*(v14 + 8))(v18, v12);
  LODWORD(v18) = sub_100024D10(v11, 1, v1);
  sub_1000180EC(v11, &unk_100CB2CF0);
  if (v18 != 1)
  {
    DayWeather.date.getter();
    static Date.> infix(_:_:)();
    (*(v3 + 8))(v7, v1);
  }

  sub_10000C8F4();
}

uint64_t sub_100861B40()
{
  v1 = OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetEventCalculator;
  type metadata accessor for SunriseSunsetEventCalculator();
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_chartViewModelFactory);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_viewDataCache);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_preprocessedDataProvider);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_daylightStringBuilder);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunElevationCalculator);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetTableViewModelFactory);
  v3 = OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_sunriseSunsetPolarSunEventStringBuilder;
  type metadata accessor for SunriseSunsetPolarSunEventStringBuilder();
  sub_1000037E8();
  (*(v4 + 8))(v0 + v3);
  sub_100006F14(v0 + OBJC_IVAR____TtC7Weather35SunriseSunsetDetailViewModelFactory_newsArticleComponentViewModelFactory);
  return v0;
}

uint64_t sub_100861C40()
{
  sub_100861B40();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SunriseSunsetDetailViewModelFactory()
{
  result = qword_100CDF010;
  if (!qword_100CDF010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100861CEC()
{
  result = type metadata accessor for SunriseSunsetEventCalculator();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SunriseSunsetPolarSunEventStringBuilder();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100861DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetDetailInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100861E3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100861EDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_100861F3C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DayWeather();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = type metadata accessor for DayWeather();
      sub_100003810(v7);
      sub_1008623A4(&v13, v14, a1, v4, v9, v10, v11, v12, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100862068();
  }
}

void sub_100862068()
{
  sub_10000E8AC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v62 = type metadata accessor for Date();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100003848();
  v61 = v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  sub_10000E70C();
  v60 = v13;
  sub_1000038CC();
  v14 = type metadata accessor for DayWeather();
  sub_1000037C4();
  __chkstk_darwin(v15);
  sub_100003848();
  v53 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  v59 = &v43 - v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_10000E70C();
  v58 = v21;
  v45 = v5;
  if (v3 != v5)
  {
    v22 = *v1;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v9 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = v22 + v25 * (v3 - 1);
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = v7 - v3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * v3;
    v29 = v60;
    while (2)
    {
      v48 = v26;
      v49 = v3;
      v46 = v28;
      v47 = v27;
      v63 = v27;
      do
      {
        v30 = v58;
        v31 = v56;
        v56(v58, v28, v14);
        v32 = v14;
        v33 = v59;
        v31(v59, v26, v32);
        DayWeather.date.getter();
        v34 = v61;
        DayWeather.date.getter();
        v64 = static Date.< infix(_:_:)();
        v35 = *v55;
        v36 = v34;
        v37 = v62;
        (*v55)(v36, v62);
        v35(v29, v37);
        v38 = *v54;
        v39 = v33;
        v14 = v32;
        (*v54)(v39, v32);
        v38(v30, v32);
        if ((v64 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return;
        }

        v40 = *v51;
        v41 = v53;
        (*v51)(v53, v28, v32);
        sub_100069B70();
        swift_arrayInitWithTakeFrontToBack();
        v40(v26, v41, v32);
        v26 += v50;
        v28 += v50;
      }

      while (!__CFADD__(v63++, 1));
      v3 = v49 + 1;
      v26 = v48 + v44;
      v27 = v47 - 1;
      v28 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  sub_10000C8F4();
}

void sub_1008623A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E8AC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v155 = v16;
  v179 = type metadata accessor for Date();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100003848();
  v178 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v177 = v22;
  sub_1000038CC();
  v23 = type metadata accessor for DayWeather();
  sub_1000037C4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100003848();
  v158 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  v169 = &v152 - v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  v176 = &v152 - v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  sub_10000E70C();
  v180 = v33;
  v164 = v15;
  v34 = v15[1];
  v159 = v25;
  if (v34 < 1)
  {
    v36 = &_swiftEmptyArrayStorage;
LABEL_101:
    sub_100017F28();
    if (!v139)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v144 = v36 + 16;
      v145 = *(v36 + 2);
      while (v145 >= 2)
      {
        if (!*v164)
        {
          goto LABEL_139;
        }

        v146 = v36;
        v147 = &v36[16 * v145];
        v148 = *v147;
        v149 = &v144[2 * v145];
        v150 = *(v149 + 1);
        sub_100862EBC(*v164 + *(v159 + 72) * *v147, *v164 + *(v159 + 72) * *v149, *v164 + *(v159 + 72) * v150, a10, v140, v141, v142, v143, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
        if (v11)
        {
          break;
        }

        if (v150 < v148)
        {
          goto LABEL_127;
        }

        if (v145 - 2 >= *v144)
        {
          goto LABEL_128;
        }

        *v147 = v148;
        *(v147 + 1) = v150;
        v151 = *v144 - v145;
        if (*v144 < v145)
        {
          goto LABEL_129;
        }

        v145 = *v144 - 1;
        sub_1003090FC(v149 + 16, v151, v149);
        *v144 = v145;
        v36 = v146;
      }

LABEL_111:

      sub_10000C8F4();
      return;
    }

LABEL_136:
    v36 = sub_100308E24();
    goto LABEL_103;
  }

  v153 = v13;
  v35 = 0;
  v173 = (v18 + 8);
  v174 = v25 + 16;
  v171 = (v25 + 32);
  v172 = (v25 + 8);
  v36 = &_swiftEmptyArrayStorage;
  v175 = v23;
  while (1)
  {
    v37 = v35;
    v38 = v35 + 1;
    if (v35 + 1 < v34)
    {
      v154 = v36;
      v39 = v35;
      v156 = v35;
      v165 = v11;
      v166 = v35 + 1;
      a10 = *v164;
      v40 = v25;
      v41 = *(v25 + 72);
      v167 = v34;
      v168 = v41;
      v42 = a10 + v41 * v38;
      v43 = v23;
      v44 = *(v40 + 16);
      sub_10004EBE4();
      v44();
      v45 = v176;
      v162 = v44;
      (v44)(v176, a10 + v41 * v39, v43);
      v11 = v177;
      v36 = v180;
      DayWeather.date.getter();
      v25 = v178;
      DayWeather.date.getter();
      LODWORD(v163) = static Date.< infix(_:_:)();
      v46 = *v173;
      v47 = v179;
      (*v173)(v25, v179);
      v161 = v46;
      v46(v11, v47);
      v48 = *(v159 + 8);
      v48(v45, v43);
      v160 = v48;
      v48(v36, v43);
      v49 = v167;
      v50 = v156 + 2;
      v51 = a10 + v168 * (v156 + 2);
      while (1)
      {
        v52 = v50;
        if (++v166 >= v49)
        {
          break;
        }

        v11 = v180;
        v53 = v162;
        a10 = v50;
        (v162)(v180, v51, v175);
        v36 = v176;
        sub_10004EBE4();
        v53();
        v54 = v177;
        DayWeather.date.getter();
        v55 = v178;
        DayWeather.date.getter();
        LOBYTE(v170) = static Date.< infix(_:_:)() & 1;
        LODWORD(v170) = v170;
        v56 = v55;
        v25 = v179;
        v57 = v161;
        (v161)(v56, v179);
        v57(v54, v25);
        v58 = sub_10000CA1C();
        v59 = v160;
        v160(v58);
        v60 = sub_100024B2C();
        v59(v60);
        v52 = a10;
        v49 = v167;
        v51 += v168;
        v42 += v168;
        v50 = a10 + 1;
        if ((v163 & 1) != v170)
        {
          goto LABEL_9;
        }
      }

      v166 = v49;
LABEL_9:
      if (v163)
      {
        v38 = v166;
        v37 = v156;
        v23 = v175;
        if (v166 < v156)
        {
          goto LABEL_133;
        }

        if (v156 >= v166)
        {
          sub_100009174();
          goto LABEL_32;
        }

        if (v49 >= v52)
        {
          v61 = v52;
        }

        else
        {
          v61 = v49;
        }

        v62 = v168 * (v61 - 1);
        v63 = v168 * v61;
        v64 = v156;
        v65 = v156 * v168;
        v11 = v165;
        v25 = v159;
        do
        {
          if (v64 != --v38)
          {
            v66 = v11;
            v67 = *v164;
            if (!*v164)
            {
              goto LABEL_140;
            }

            sub_10004EBE4();
            a10 = v68;
            v68();
            v69 = v65 < v62 || v67 + v65 >= (v67 + v63);
            if (v69)
            {
              sub_100069B70();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v65 != v62)
            {
              sub_100069B70();
              swift_arrayInitWithTakeBackToFront();
            }

            (a10)(v67 + v62, v158, v23);
            v11 = v66;
            v25 = v159;
          }

          ++v64;
          v62 -= v168;
          v63 -= v168;
          v65 += v168;
        }

        while (v64 < v38);
        v36 = v154;
      }

      else
      {
        sub_100009174();
        v23 = v175;
      }

      v38 = v166;
      v37 = v156;
    }

LABEL_32:
    v70 = v164[1];
    if (v38 < v70)
    {
      if (__OFSUB__(v38, v37))
      {
        goto LABEL_132;
      }

      if (v38 - v37 < v153)
      {
        break;
      }
    }

LABEL_48:
    if (v38 < v37)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10011E564();
      v36 = v137;
    }

    v88 = *(v36 + 2);
    v89 = v88 + 1;
    if (v88 >= *(v36 + 3) >> 1)
    {
      sub_10011E564();
      v36 = v138;
    }

    *(v36 + 2) = v89;
    v90 = &v36[16 * v88 + 32];
    *v90 = v37;
    v90[1] = v38;
    sub_100017F28();
    if (!v96)
    {
      goto LABEL_141;
    }

    v166 = v38;
    if (v88)
    {
      v170 = v95;
      while (1)
      {
        v97 = v89 - 1;
        v98 = (v95 + 16 * v89 - 16);
        v99 = &v36[16 * v89];
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v100 = *(v36 + 4);
          v101 = *(v36 + 5);
          v110 = __OFSUB__(v101, v100);
          v102 = v101 - v100;
          v103 = v110;
LABEL_69:
          if (v103)
          {
            goto LABEL_118;
          }

          v115 = *v99;
          v114 = *(v99 + 1);
          v116 = __OFSUB__(v114, v115);
          v117 = v114 - v115;
          v118 = v116;
          if (v116)
          {
            goto LABEL_121;
          }

          v119 = v98[1];
          v120 = v119 - *v98;
          if (__OFSUB__(v119, *v98))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v117, v120))
          {
            goto LABEL_126;
          }

          if (v117 + v120 >= v102)
          {
            if (v102 < v120)
            {
              v97 = v89 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v89 < 2)
        {
          goto LABEL_120;
        }

        v122 = *v99;
        v121 = *(v99 + 1);
        v110 = __OFSUB__(v121, v122);
        v117 = v121 - v122;
        v118 = v110;
LABEL_84:
        if (v118)
        {
          goto LABEL_123;
        }

        v124 = *v98;
        v123 = v98[1];
        v110 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v110)
        {
          goto LABEL_125;
        }

        if (v125 < v117)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v97 - 1 >= v89)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v164)
        {
          goto LABEL_138;
        }

        v129 = (v95 + 16 * v97 - 16);
        v130 = *v129;
        v131 = v97;
        v132 = v95 + 16 * v97;
        v133 = *(v132 + 1);
        sub_100862EBC(*v164 + *(v25 + 72) * *v129, *v164 + *(v25 + 72) * *v132, *v164 + *(v25 + 72) * v133, a10, v91, v92, v93, v94, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
        if (v11)
        {
          goto LABEL_111;
        }

        if (v133 < v130)
        {
          goto LABEL_113;
        }

        v165 = 0;
        v11 = v25;
        v134 = v36;
        v135 = *(v36 + 2);
        if (v131 > v135)
        {
          goto LABEL_114;
        }

        *v129 = v130;
        v129[1] = v133;
        if (v131 >= v135)
        {
          goto LABEL_115;
        }

        v89 = v135 - 1;
        sub_1003090FC(v132 + 16, v135 - 1 - v131, v132);
        *(v134 + 2) = v135 - 1;
        v136 = v135 > 2;
        v36 = v134;
        v25 = v11;
        v11 = v165;
        v95 = v170;
        if (!v136)
        {
          goto LABEL_98;
        }
      }

      v104 = v95 + 16 * v89;
      v105 = *(v104 - 8);
      v106 = *(v104 - 7);
      v110 = __OFSUB__(v106, v105);
      v107 = v106 - v105;
      if (v110)
      {
        goto LABEL_116;
      }

      v109 = *(v104 - 6);
      v108 = *(v104 - 5);
      v110 = __OFSUB__(v108, v109);
      v102 = v108 - v109;
      v103 = v110;
      if (v110)
      {
        goto LABEL_117;
      }

      v111 = *(v99 + 1);
      v112 = v111 - *v99;
      if (__OFSUB__(v111, *v99))
      {
        goto LABEL_119;
      }

      v110 = __OFADD__(v102, v112);
      v113 = v102 + v112;
      if (v110)
      {
        goto LABEL_122;
      }

      if (v113 >= v107)
      {
        v127 = *v98;
        v126 = v98[1];
        v110 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v110)
        {
          goto LABEL_130;
        }

        if (v102 < v128)
        {
          v97 = v89 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v34 = v164[1];
    v35 = v166;
    if (v166 >= v34)
    {
      goto LABEL_101;
    }
  }

  v71 = (v37 + v153);
  if (__OFADD__(v37, v153))
  {
    goto LABEL_134;
  }

  if (v71 >= v70)
  {
    v71 = v164[1];
  }

  if (v71 < v37)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v38 == v71)
  {
    goto LABEL_48;
  }

  v154 = v36;
  v165 = v11;
  v72 = *v164;
  v73 = *(v25 + 72);
  v170 = *(v25 + 16);
  v74 = v72 + v73 * (v38 - 1);
  v167 = -v73;
  v156 = v37;
  v75 = (v37 - v38);
  v168 = v72;
  v157 = v73;
  v76 = (v72 + v38 * v73);
  v160 = v71;
LABEL_41:
  v166 = v38;
  v161 = v76;
  v162 = v75;
  v163 = v74;
  v77 = v74;
  while (1)
  {
    v11 = v180;
    sub_10004EBE4();
    v78 = v170;
    v170();
    v36 = v176;
    (v78)(v176, v77, v23);
    v79 = v177;
    DayWeather.date.getter();
    v80 = v178;
    DayWeather.date.getter();
    LODWORD(a10) = static Date.< infix(_:_:)();
    v81 = *v173;
    v82 = v80;
    v83 = v179;
    (*v173)(v82, v179);
    v84 = v79;
    v23 = v175;
    v81(v84, v83);
    v25 = *v172;
    v85 = sub_10000CA1C();
    (v25)(v85);
    v86 = sub_100024B2C();
    (v25)(v86);
    if ((a10 & 1) == 0)
    {
LABEL_46:
      v38 = v166 + 1;
      v74 = v163 + v157;
      v75 = (v162 - 1);
      v76 = &v161[v157];
      if ((v166 + 1) == v160)
      {
        v38 = v160;
        sub_100009174();
        v37 = v156;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v168)
    {
      break;
    }

    v87 = *v171;
    v25 = v169;
    sub_10004EBE4();
    v87();
    sub_100069B70();
    swift_arrayInitWithTakeFrontToBack();
    (v87)(v77, v25, v23);
    v77 += v167;
    v76 += v167;
    v69 = __CFADD__(v75, 1);
    v75 = (v75 + 1);
    if (v69)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_100862EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  a19 = v21;
  a20 = v22;
  v108 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v103 = type metadata accessor for Date();
  sub_1000037C4();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_100003848();
  v102 = v33;
  sub_10000386C();
  __chkstk_darwin(v34);
  sub_10000E70C();
  v101 = v35;
  sub_1000038CC();
  v107 = type metadata accessor for DayWeather();
  v36 = __chkstk_darwin(v107);
  v100 = v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v105 = v91 - v39;
  v41 = *(v40 + 72);
  if (!v41)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v42 = v27 - v29 == 0x8000000000000000 && v41 == -1;
  if (v42)
  {
    goto LABEL_60;
  }

  v43 = v25 - v27;
  if (v25 - v27 == 0x8000000000000000 && v41 == -1)
  {
    goto LABEL_61;
  }

  v91[1] = v20;
  v45 = (v27 - v29) / v41;
  a10 = v29;
  v110 = v108;
  v98 = (v31 + 8);
  v99 = (v38 + 16);
  v97 = (v38 + 8);
  v46 = v43 / v41;
  if (v45 >= v43 / v41)
  {
    v66 = v108;
    sub_1006A072C(v27, v43 / v41, v108);
    v67 = v66 + v46 * v41;
    v68 = -v41;
    v69 = v67;
    v106 = v29;
    v93 = v68;
LABEL_36:
    v70 = v27 + v68;
    v71 = v25;
    v91[0] = v69;
    v72 = v69;
    v94 = v27 + v68;
    v95 = v27;
    while (1)
    {
      if (v67 <= v108)
      {
        a10 = v27;
        v109 = v72;
        goto LABEL_58;
      }

      if (v27 <= v29)
      {
        break;
      }

      v92 = v72;
      v104 = v71 + v68;
      v73 = v67 + v68;
      v74 = v67;
      v75 = *v99;
      v76 = v70;
      v77 = v107;
      v78 = v71;
      (*v99)(v105, v67 + v68, v107);
      v79 = v100;
      v75(v100, v76, v77);
      v80 = v101;
      DayWeather.date.getter();
      v81 = v102;
      DayWeather.date.getter();
      LODWORD(v96) = static Date.< infix(_:_:)();
      v82 = *v98;
      v83 = v81;
      v84 = v103;
      (*v98)(v83, v103);
      v82(v80, v84);
      v85 = *v97;
      (*v97)(v79, v77);
      v85(v105, v77);
      if (v96)
      {
        v67 = v74;
        v25 = v104;
        if (v78 < v95 || v104 >= v95)
        {
          v27 = v94;
          swift_arrayInitWithTakeFrontToBack();
          v69 = v92;
          v68 = v93;
          v29 = v106;
        }

        else
        {
          v89 = v92;
          v68 = v93;
          v69 = v92;
          v42 = v78 == v95;
          v90 = v94;
          v27 = v94;
          v29 = v106;
          if (!v42)
          {
            swift_arrayInitWithTakeBackToFront();
            v27 = v90;
            v69 = v89;
          }
        }

        goto LABEL_36;
      }

      v86 = v104;
      if (v78 < v74 || v104 >= v74)
      {
        sub_100075134();
        swift_arrayInitWithTakeFrontToBack();
        v71 = v86;
        v67 = v73;
        v72 = v73;
        v70 = v94;
        v27 = v95;
        v29 = v106;
        v68 = v93;
      }

      else
      {
        v72 = v73;
        v42 = v74 == v78;
        v71 = v104;
        v67 = v73;
        v70 = v94;
        v27 = v95;
        v29 = v106;
        v68 = v93;
        if (!v42)
        {
          sub_100075134();
          swift_arrayInitWithTakeBackToFront();
          v71 = v86;
          v67 = v73;
          v72 = v73;
        }
      }
    }

    a10 = v27;
    v109 = v91[0];
  }

  else
  {
    v47 = v108;
    sub_1006A072C(v29, (v27 - v29) / v41, v108);
    v95 = v41;
    v96 = v47 + v45 * v41;
    v109 = v96;
    v104 = v25;
    while (v108 < v96 && v27 < v25)
    {
      v106 = v29;
      v49 = *v99;
      v50 = v105;
      v51 = v107;
      (*v99)(v105, v27, v107);
      v52 = v100;
      v49(v100, v108, v51);
      v53 = v101;
      DayWeather.date.getter();
      v54 = v102;
      DayWeather.date.getter();
      v55 = static Date.< infix(_:_:)();
      v56 = v27;
      v57 = *v98;
      v58 = v54;
      v59 = v103;
      (*v98)(v58, v103);
      v57(v53, v59);
      v60 = *v97;
      (*v97)(v52, v51);
      v60(v50, v51);
      if (v55)
      {
        v61 = v95;
        v27 = v56 + v95;
        v62 = v106;
        if (v106 < v56 || v106 >= v27)
        {
          sub_100075134();
          swift_arrayInitWithTakeFrontToBack();
          v25 = v104;
        }

        else
        {
          v25 = v104;
          if (v106 != v56)
          {
            sub_100075134();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v61 = v95;
        v64 = v108 + v95;
        v62 = v106;
        if (v106 < v108 || v106 >= v64)
        {
          swift_arrayInitWithTakeFrontToBack();
          v25 = v104;
          v27 = v56;
        }

        else
        {
          v25 = v104;
          v27 = v56;
          if (v106 != v108)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v110 = v64;
        v108 = v64;
      }

      v29 = v62 + v61;
      a10 = v29;
    }
  }

LABEL_58:
  sub_100309004(&a10, &v110, &v109);
  sub_10000C8F4();
}

unint64_t sub_1008634D4()
{
  result = qword_100CA7010;
  if (!qword_100CA7010)
  {
    sub_10022E824(&qword_100CA7000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA7010);
  }

  return result;
}

uint64_t sub_100863584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TemperatureChartKind();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v12 = v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v10, v14);
  v17 = (*(v12 + 88))(v16, v10);
  if (v17 == enum case for DetailCondition.conditions(_:))
  {
    (*(v12 + 8))(a1, v10);
    (*(v12 + 96))(v16, v10);
    (*(v6 + 32))(v9, v16, v4);
    v18 = (*(v6 + 88))(v9, v4);
    if (v18 != enum case for TemperatureChartKind.actual(_:))
    {
      v22 = v18;
      v23 = enum case for TemperatureChartKind.feelsLike(_:);
      type metadata accessor for DetailType();
      sub_100003A9C();
      v25 = *(v24 + 104);
      if (v22 != v23)
      {
        v25(a2, enum case for DetailType.temperature(_:));
        return (*(v6 + 8))(v9, v4);
      }

      v26 = enum case for DetailType.feelsLike(_:);
      v27 = a2;
      return v25(v27, v26);
    }

    v19 = &enum case for DetailType.temperature(_:);
  }

  else if (v17 == enum case for DetailCondition.humidity(_:))
  {
    v20 = sub_10001FA78();
    v21(v20);
    v19 = &enum case for DetailType.humidity(_:);
  }

  else if (v17 == enum case for DetailCondition.pressure(_:))
  {
    v28 = sub_10001FA78();
    v29(v28);
    v19 = &enum case for DetailType.pressure(_:);
  }

  else if (v17 == enum case for DetailCondition.precipitationTotal(_:))
  {
    v31 = sub_10001FA78();
    v32(v31);
    v19 = &enum case for DetailType.precipitationTotals(_:);
  }

  else if (v17 == enum case for DetailCondition.uvIndex(_:))
  {
    v33 = sub_10001FA78();
    v34(v33);
    v19 = &enum case for DetailType.uvIndex(_:);
  }

  else if (v17 == enum case for DetailCondition.visibility(_:))
  {
    v35 = sub_10001FA78();
    v36(v35);
    v19 = &enum case for DetailType.visibility(_:);
  }

  else
  {
    if (v17 != enum case for DetailCondition.wind(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v37 = sub_10001FA78();
    v38(v37);
    v19 = &enum case for DetailType.wind(_:);
  }

  v39 = *v19;
  type metadata accessor for DetailType();
  sub_100003A9C();
  v25 = *(v40 + 104);
  v27 = a2;
  v26 = v39;
  return v25(v27, v26);
}

void sub_100863990(uint64_t *a1)
{
  v2 = *(type metadata accessor for DebugLocationManager.DebugLocation() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100309378();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_100864A48(v6);
  *a1 = v3;
}

void sub_100863A38()
{
  v1 = OBJC_IVAR____TtC7Weather27DebugLocationViewController_tableView;
  *(v0 + v1) = [objc_allocWithZone(UITableView) init];
  *(v0 + OBJC_IVAR____TtC7Weather27DebugLocationViewController_locations) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100863AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7Weather27DebugLocationViewController_tableView;
  *&v4[v10] = [objc_allocWithZone(UITableView) init];
  *&v4[OBJC_IVAR____TtC7Weather27DebugLocationViewController_locations] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC7Weather27DebugLocationViewController_locationManager] = a1;
  *&v4[OBJC_IVAR____TtC7Weather27DebugLocationViewController_weatherDataUpdater] = a2;
  v11 = &v4[OBJC_IVAR____TtC7Weather27DebugLocationViewController_dispatcher];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);
}

id sub_100863BC8()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC7Weather27DebugLocationViewController_tableView];
  [v2 setDelegate:v1];
  [v2 setDataSource:v1];
  result = [v1 view];
  if (result)
  {
    v4 = result;
    [result bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v2 setFrame:{v6, v8, v10, v12}];
    type metadata accessor for DebugLocationViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = sub_10001CF60();
    [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v14];

    result = [v1 view];
    if (result)
    {
      v15 = result;
      [result addSubview:v2];

      [v2 reloadData];
      sub_100040690();

      v16 = static OS_dispatch_queue.main.getter();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      AsyncObservable.onNext(on:eager:block:)();

      return sub_100006F14(v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}