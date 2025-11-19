uint64_t sub_10091EDCC()
{
  v0 = sub_10022C350(&qword_100CAB938);
  __chkstk_darwin(v0 - 8);
  __chkstk_darwin(v1);
  __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v6 = objc_opt_self();
  v7 = [v6 millimeters];
  sub_10000C70C(0, &qword_100CAB968);
  Measurement.init(value:unit:)();
  v8 = [v6 millimeters];
  Measurement.init(value:unit:)();
  v9 = [v6 millimeters];
  Measurement.init(value:unit:)();
  v10 = [v6 millimeters];
  Measurement.init(value:unit:)();
  v11 = [v6 millimeters];
  Measurement.init(value:unit:)();
  v12 = [v6 millimeters];
  Measurement.init(value:unit:)();
  return PrecipitationAmount.init(pastHour:pastSixHours:pastTwentyFourHours:nextHour:nextSixHours:nextTwentyFourHours:)();
}

uint64_t sub_10091F030(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA75C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10091F0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  v362 = a7;
  v360 = a6;
  v346[1] = a5;
  v336 = a4;
  v346[0] = a3;
  v361 = a2;
  v389 = a1;
  v348 = a8;
  v8 = type metadata accessor for UUID();
  v9 = sub_100003E5C(v8, v368);
  v346[3] = v10;
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003990(v11);
  v12 = sub_10022C350(&qword_100CABD00);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  sub_100003990(v14);
  v15 = sub_10022C350(&qword_100CABD10);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  sub_100003918(v17);
  v18 = type metadata accessor for WeatherAvailability.AvailabilityKind();
  v19 = sub_100003E5C(v18, &v361);
  v343 = v20;
  __chkstk_darwin(v19);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_10000E70C();
  sub_100003918(v23);
  v24 = type metadata accessor for WeatherAvailability();
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000038E4();
  sub_100003990(v26);
  v27 = sub_10022C350(&qword_100CACDF8);
  sub_100003810(v27);
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  sub_100003918(v29);
  v30 = type metadata accessor for AirQualitySourceKind();
  v31 = sub_100003E5C(v30, v352);
  v335[12] = v32;
  __chkstk_darwin(v31);
  sub_1000038E4();
  sub_100003918(v33);
  v34 = type metadata accessor for AirQualitySource();
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  sub_1000038E4();
  sub_100003918(v36);
  v37 = type metadata accessor for AirQualityPreviousDayComparison();
  v38 = sub_100003E5C(v37, &v349);
  v335[7] = v39;
  __chkstk_darwin(v38);
  sub_1000038E4();
  sub_100003990(v40);
  v41 = sub_10022C350(&qword_100CB8BE0);
  sub_100003810(v41);
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  sub_100003918(v43);
  v44 = type metadata accessor for AirPollutantMeasurement();
  v45 = sub_100003E5C(v44, &v347);
  v335[5] = v46;
  __chkstk_darwin(v45);
  sub_1000038E4();
  sub_100003918(v47);
  v48 = type metadata accessor for AirPollutantKind();
  v49 = sub_100003E5C(v48, v346);
  v335[1] = v50;
  __chkstk_darwin(v49);
  sub_1000038E4();
  sub_100003990(v51);
  v52 = sub_10022C350(&qword_100CD6510);
  sub_100003810(v52);
  sub_100003828();
  __chkstk_darwin(v53);
  sub_1000039BC();
  sub_100003918(v54);
  v55 = type metadata accessor for AirQualityScaleCategory();
  v56 = sub_100003AE8(v55);
  v337 = v57;
  __chkstk_darwin(v56);
  sub_1000038E4();
  sub_100003918(v58);
  v59 = type metadata accessor for AirQualityScaleGradient();
  v60 = sub_100003810(v59);
  __chkstk_darwin(v60);
  sub_1000038E4();
  sub_100003918(v61);
  v62 = type metadata accessor for AirQualityScale();
  v63 = sub_100003810(v62);
  __chkstk_darwin(v63);
  sub_1000038E4();
  sub_100003990(v64);
  v65 = sub_10022C350(&qword_100CC62B8);
  sub_100003810(v65);
  sub_100003828();
  __chkstk_darwin(v66);
  sub_1000039BC();
  sub_100003990(v67);
  v68 = sub_10022C350(&qword_100CA7000);
  sub_100003810(v68);
  sub_100003828();
  __chkstk_darwin(v69);
  sub_1000039BC();
  sub_100003990(v70);
  v71 = sub_10022C350(&qword_100CA7030);
  sub_100003810(v71);
  sub_100003828();
  __chkstk_darwin(v72);
  sub_1000039BC();
  sub_100003990(v73);
  v74 = sub_10022C350(&qword_100CB0BA0);
  sub_100003810(v74);
  sub_100003828();
  __chkstk_darwin(v75);
  sub_1000039BC();
  sub_100003990(v76);
  v77 = sub_10022C350(&qword_100CB3AB0);
  v78 = sub_100003810(v77);
  __chkstk_darwin(v78);
  sub_100003848();
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
  v83 = sub_10022C350(&qword_100CC41A8);
  v84 = sub_100003810(v83);
  __chkstk_darwin(v84);
  sub_100003848();
  v390 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_10000E70C();
  sub_100003918(v87);
  v88 = type metadata accessor for WeatherMetadata();
  v89 = sub_100003810(v88);
  __chkstk_darwin(v89);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_10000E70C();
  sub_100003990(v91);
  v92 = sub_10022C350(&qword_100CAEC90);
  sub_100003810(v92);
  sub_100003828();
  __chkstk_darwin(v93);
  sub_1000039BC();
  sub_100003990(v94);
  v95 = sub_10022C350(&qword_100CAC450);
  sub_100003810(v95);
  sub_100003828();
  __chkstk_darwin(v96);
  sub_1000039BC();
  sub_100003918(v97);
  v98 = type metadata accessor for Wind();
  v99 = sub_100003810(v98);
  __chkstk_darwin(v99);
  sub_1000038E4();
  sub_100003918(v100);
  v101 = type metadata accessor for UVIndex();
  v102 = sub_100003810(v101);
  __chkstk_darwin(v102);
  sub_1000038E4();
  sub_100003990(v103);
  v104 = sub_10022C350(qword_100CA5418);
  v105 = sub_100003810(v104);
  __chkstk_darwin(v105);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_10000E70C();
  *&v387 = v107;
  sub_1000038CC();
  v108 = type metadata accessor for ApparentPrecipitationIntensityCategory();
  v109 = sub_100003E5C(v108, &v392);
  v372 = v110;
  __chkstk_darwin(v109);
  sub_1000038E4();
  sub_100003918(v111);
  v112 = type metadata accessor for ApparentPrecipitationIntensity();
  v113 = sub_100003810(v112);
  __chkstk_darwin(v113);
  sub_1000038E4();
  v386 = v114;
  sub_1000038CC();
  v115 = type metadata accessor for PrecipitationAmountByType();
  v116 = sub_100003810(v115);
  __chkstk_darwin(v116);
  sub_100003848();
  v384 = v117;
  sub_10000386C();
  __chkstk_darwin(v118);
  sub_100003878();
  v383[3] = v119;
  sub_10000386C();
  __chkstk_darwin(v120);
  sub_100003878();
  v383[1] = v121;
  sub_10000386C();
  __chkstk_darwin(v122);
  sub_100003878();
  v383[4] = v123;
  sub_10000386C();
  __chkstk_darwin(v124);
  sub_100003878();
  v383[2] = v125;
  sub_10000386C();
  __chkstk_darwin(v126);
  sub_10000E70C();
  v383[0] = v127;
  v128 = sub_10022C350(&qword_100CAB938);
  v129 = sub_100003E5C(v128, v377);
  v357 = v130;
  __chkstk_darwin(v129);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_10000E70C();
  v388 = v137;
  sub_1000038CC();
  v138 = type metadata accessor for PrecipitationAmount();
  v139 = sub_100003810(v138);
  __chkstk_darwin(v139);
  sub_100003848();
  v382 = v140;
  sub_10000386C();
  __chkstk_darwin(v141);
  sub_10000E70C();
  v381 = v142;
  sub_1000038CC();
  v143 = type metadata accessor for PressureTrend();
  v144 = sub_100003E5C(v143, v383);
  v363 = v145;
  __chkstk_darwin(v144);
  sub_1000037D8();
  v148 = v147 - v146;
  v149 = sub_10022C350(&qword_100CAC3D0);
  sub_100003810(v149);
  sub_100003828();
  __chkstk_darwin(v150);
  v152 = v335 - v151;
  v369 = sub_10022C350(&qword_100CACCC8);
  sub_1000037E8();
  __chkstk_darwin(v153);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v154);
  v156 = v335 - v155;
  v385 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v391 = v157;
  __chkstk_darwin(v158);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  v379 = v160;
  sub_10000386C();
  __chkstk_darwin(v161);
  sub_100003878();
  v380 = v162;
  sub_10000386C();
  __chkstk_darwin(v163);
  v165 = v335 - v164;
  v166 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v168 = v167;
  __chkstk_darwin(v169);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v170);
  v172 = v335 - v171;
  v173 = type metadata accessor for CloudCoverByAltitude();
  v174 = sub_100003810(v173);
  __chkstk_darwin(v174);
  sub_1000037D8();
  v177 = v176 - v175;
  v178 = type metadata accessor for Date();
  v179 = sub_100003E5C(v178, &v371);
  v352[3] = v180;
  __chkstk_darwin(v179);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  v186 = v335 - v185;
  v187 = type metadata accessor for CurrentWeather();
  v188 = sub_100003810(v187);
  __chkstk_darwin(v188);
  sub_1000038E4();
  sub_100003918(v189);
  v190 = type metadata accessor for WeatherDataModel();
  v191 = sub_100003E5C(v190, v356);
  v338 = v192;
  __chkstk_darwin(v191);
  sub_1000038E4();
  sub_100003990(v193);
  v349 = v186;
  static WeatherClock.date.getter();
  sub_100049F18();
  v350[0] = v177;
  CloudCoverByAltitude.init(low:medium:high:)();
  v194 = *(v168 + 104);
  v350[1] = v172;
  v355 = v166;
  v354 = v168 + 104;
  v351 = v194;
  (v194)(v172, enum case for WeatherCondition.clear(_:), v166);
  v364[0] = objc_opt_self();
  v195 = [v364[0] celsius];
  sub_10000C70C(0, &qword_100CA51B0);
  v350[2] = v165;
  Measurement.init(value:unit:)();
  v366 = objc_opt_self();
  v196 = [v366 metersPerSecond];
  v365 = sub_10000C70C(0, &qword_100CAC428);
  v352[0] = v156;
  Measurement.init(value:unit:)();
  v197 = [objc_opt_self() millibars];
  sub_100042398(v197, &qword_100CAC448);
  v352[1] = v152;
  Measurement.init(value:unit:)();
  v198 = *(v363 + 104);
  v363 = v148;
  v198(v148, enum case for PressureTrend.rising(_:), v364[1]);
  v199 = objc_opt_self();
  sub_100042398([v199 millimeters], &qword_100CAB968);
  Measurement.init(value:unit:)();
  v200 = sub_1001925A4();
  sub_100071518();
  Measurement.init(value:unit:)();
  v201 = sub_1001925A4();
  sub_1000719F4();
  Measurement.init(value:unit:)();
  v202 = sub_1001925A4();
  sub_100020250();
  Measurement.init(value:unit:)();
  v203 = sub_1001925A4();
  sub_100071E74();
  Measurement.init(value:unit:)();
  v204 = [v199 millimeters];
  sub_1000184C0();
  Measurement.init(value:unit:)();
  PrecipitationAmount.init(pastHour:pastSixHours:pastTwentyFourHours:nextHour:nextSixHours:nextTwentyFourHours:)();
  sub_10091EDCC();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  static PrecipitationAmountByType.mock()();
  sub_1000193CC();
  v205 = v371;
  v206(v371);
  ApparentPrecipitationIntensity.init(value:category:)();
  v207 = sub_1000D4058(&v382);
  v209 = [v207 v208];
  Measurement.init(value:unit:)();
  v210 = [v205 celsius];
  Measurement.init(value:unit:)();
  v211 = *(v391 + 16);
  v212 = v385;
  v391 += 16;
  v373 = v211;
  v211(v387, v389, v385);
  v213 = v370;
  v214 = sub_10000FEF4();
  sub_10001B350(v214, v215, v216, v212);
  sub_100003934();
  v217 = v367;
  sub_10001B350(v218, v219, v220, v212);
  UVIndex.init(value:category:)();
  v221 = [v199 meters];
  Measurement.init(value:unit:)();
  v222 = [objc_opt_self() degrees];
  sub_100042398(v222, &qword_100CCFAD0);
  sub_100011868();
  v223 = v376;
  Measurement.init(value:unit:)();
  v224 = [v366 milesPerHour];
  sub_100071E74();
  Measurement.init(value:unit:)();
  sub_1000D4058(&v393);
  sub_100003934();
  sub_10001B350(v225, v226, v227, v369);
  Wind.init(compassDirection:direction:speed:gust:)();
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  URL.init(string:)();
  v228 = type metadata accessor for URL();
  result = sub_100024D10(v223, 1, v228);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  (*(*(v228 - 8) + 32))(v359, v223, v228);
  sub_10000E7B0();
  sub_10001B350(v230, v231, v232, v228);
  v233 = sub_100021088(v378);
  v375 = v228;
  sub_10001B350(v233, v234, v235, v228);
  sub_1000184C0();
  WeatherAttribution.init(name:sourceURL:logoURL:)();
  v236 = type metadata accessor for WeatherAttribution();
  v237 = sub_10000FEF4();
  v376 = v236;
  sub_10001B350(v237, v238, v239, v236);
  sub_100036F54();
  WeatherMetadata.init(date:expirationDate:attribution:)();
  sub_100049F18();
  sub_1000D438C();
  sub_1000872AC();
  CurrentWeather.init(date:cloudCover:cloudCoverLow:cloudCoverMid:cloudCoverHigh:cloudCoverByAltitude:condition:symbolName:dewPoint:humidity:precipitationIntensity:pressure:pressureTrend:rainfallAmount:snowfallAmount:pastHourPrecipitationAmountByType:pastSixHoursPrecipitationAmountByType:pastTwentyFourHoursPrecipitationAmountByType:nextHourPrecipitationAmountByType:nextSixHoursPrecipitationAmountByType:nextTwentyFourHoursPrecipitationAmountByType:apparentPrecipitationIntensity:isDaylight:temperature:apparentTemperature:highTemperature:lowTemperature:uvIndex:visibility:wind:metadata:)();
  LODWORD(v386) = 1;
  sub_1000184C0();
  sub_100921668(v240, v241);
  sub_10022C350(&qword_100CAE8F0);
  v242 = sub_10000FEF4();
  sub_10001B350(v242, v243, v244, v245);
  sub_100071518();
  static WeatherClock.date.getter();
  sub_1000719F4();
  static WeatherClock.date.getter();
  v246 = sub_10000900C();
  sub_10001B350(v246, v247, v248, v236);
  sub_1000371B0();
  WeatherMetadata.init(date:expirationDate:attribution:)();
  v249 = type metadata accessor for HourWeather();
  sub_1000F42E4(&qword_100CB0C20, &type metadata accessor for HourWeather);
  sub_10003C024();
  sub_1000F42E4(v250, &type metadata accessor for HourWeather);
  sub_100021794();
  sub_1000F42E4(v251, &type metadata accessor for HourWeather);
  Forecast.init(_:metadata:)();
  sub_10022C350(&qword_100CD1278);
  sub_1000038D8();
  v384 = type metadata accessor for DayWeather();
  sub_100003DDC();
  sub_10008665C();
  v252 = swift_allocObject();
  v387 = xmmword_100A2C3F0;
  *(v252 + 16) = xmmword_100A2C3F0;
  static WeatherClock.date.getter();
  static DayWeather.mock()();
  sub_1000184C0();
  v254 = v353;
  (*(v253 + 16))(v217, v213, v353);
  DayWeather.date.setter();
  v255 = sub_100170830(&v372);
  v351(v255);
  DayWeather.condition.setter();
  v256 = sub_100170830(v374);
  v373(v256, v389, v385);
  DayWeather.highTemperature.setter();
  (*(v357 + 16))(v388, v361, v358);
  v257 = v376;
  DayWeather.rainfallAmount.setter();
  (*(v249 + 8))(v213, v254);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  v258 = sub_10000900C();
  sub_10001B350(v258, v259, v260, v257);
  WeatherMetadata.init(date:expirationDate:attribution:)();
  sub_1000F42E4(&qword_100CB0C50, &type metadata accessor for DayWeather);
  sub_1000306E8();
  sub_1000F42E4(v261, &type metadata accessor for DayWeather);
  sub_100024438();
  sub_1000F42E4(v262, &type metadata accessor for DayWeather);
  Forecast.init(_:metadata:)();
  if ((v362 & 1) == 0)
  {
    sub_10022C350(&qword_100CE62C0);
    sub_10008665C();
    *(swift_allocObject() + 16) = v387;
    sub_1000438AC();
    sub_10022C350(&qword_100CE62C8);
    v263 = type metadata accessor for AirQualityScaleGradientStop();
    sub_100003AE8(v263);
    sub_10008665C();
    v266 = v265 & ~v264;
    *(swift_allocObject() + 16) = v387;
    AirQualityScaleGradientStop.init(location:color:)();
    sub_100036F54();
    AirQualityScaleGradient.init(stops:)();
    AirQualityScale.init(identifier:displayName:shortDisplayName:longDisplayName:displayLabel:isNumerical:range:categories:gradient:)();
    sub_1000438AC();
    type metadata accessor for ProviderAttribution();
    sub_100003934();
    sub_10001B350(v267, v268, v269, v270);
    sub_1000371B0();
    URL.init(string:)();
    result = sub_100024D10(0xED0000312E747361, 1, v375);
    if (result != 1)
    {
      sub_10022C350(&qword_100CE62D0);
      sub_10022C350(&qword_100CE62D8);
      sub_10008665C();
      v273 = v272 & ~v271;
      v274 = swift_allocObject();
      *(v274 + 16) = v387;
      v275 = (v274 + v273);
      *v275 = 0x454E4F5A4FLL;
      v275[1] = 0xE500000000000000;
      sub_1000193CC();
      v276(v335[3]);
      [objc_opt_self() partsPerMillion];
      sub_10000C70C(0, &qword_100CD0020);
      sub_100036F54();
      Measurement.init(value:unit:)();
      sub_1000193CC();
      v277(v266);
      AirPollutant.init(kind:amount:)();
      v278 = type metadata accessor for AirPollutant();
      Dictionary.init(dictionaryLiteral:)();
      sub_1000326C8(v350);
      sub_100003934();
      sub_10001B350(v279, v280, v281, v278);
      sub_1000193CC();
      v282(v335[11]);
      sub_1000193CC();
      v283(v335[10]);
      sub_1000184C0();
      AirQualitySource.init(kind:description:)();
      static WeatherClock.date.getter();
      static WeatherClock.date.getter();
      sub_100003934();
      v257 = v376;
      sub_10001B350(v284, v285, v286, v376);
      sub_1000C90E0();
      WeatherMetadata.init(date:expirationDate:attribution:)();
      sub_100045448();
      AirQuality.init(scaleIdentifier:scale:index:currentScaleCategory:isSignificant:providerAttribution:learnMoreURL:pollutants:primaryPollutant:previousDayComparison:source:metadata:)();
      LODWORD(v386) = 0;
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    return result;
  }

LABEL_5:
  type metadata accessor for AirQuality();
  v287 = sub_1000B0F24(&v394);
  sub_10001B350(v287, v386, 1, v288);
  v289 = sub_10022C350(&qword_100CA75D8);
  v290 = *(v289 + 48);
  v391 = *(v289 + 64);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  sub_100003934();
  sub_10001B350(v291, v292, v293, v257);
  WeatherMetadata.init(date:expirationDate:attribution:)();
  WeatherChanges.init(changes:metadata:)();
  type metadata accessor for WeatherChanges();
  sub_10000E7B0();
  sub_10001B350(v294, v295, v296, v297);
  v298 = enum case for WeatherAvailability.AvailabilityKind.unknown(_:);
  v300 = v343 + 104;
  v299 = *(v343 + 104);
  v301 = v344;
  v299(v340, enum case for WeatherAvailability.AvailabilityKind.unknown(_:), v344);
  v302 = v341;
  v299(v341, v298, v301);
  v299(v342, v298, v301);
  sub_1000371B0();
  WeatherAvailability.init(minuteAvailability:alertAvailability:airQualityAvailability:)();
  v303 = type metadata accessor for HistoricalComparisons();
  sub_1000037E8();
  (*(v304 + 16))(v345, v346[0], v303);
  sub_10000E7B0();
  sub_10001B350(v305, v306, v307, v303);
  type metadata accessor for HistoricalFacts();
  v308 = sub_100021088(v364);
  sub_10001B350(v308, v309, v310, v311);
  sub_1000D4058(&v365);

  sub_1000719F4();
  WeatherDataModel.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:airQuality:weatherChanges:weatherAlerts:availability:historicalComparisons:historicalFacts:)();
  v312 = type metadata accessor for WeatherData(0);
  v313 = v348;
  v314 = (v348 + *(v312 + 32));
  *v314 = 0;
  v314[1] = 0xE000000000000000;
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for WeatherDataOverrides();
  sub_100003934();
  sub_10001B350(v315, v316, v317, v318);
  sub_1000371B0();
  UUID.init()();
  v319 = UUID.uuidString.getter();
  v321 = v320;
  sub_10000E73C();
  v322(v300, v347);
  static Locale.current.getter();
  type metadata accessor for Locale();
  sub_10000E7B0();
  sub_10001B350(v323, v324, v325, v326);
  sub_10022C350(&qword_100CAC710);
  sub_100003934();
  sub_10001B350(v327, v328, v329, v330);
  *v313 = v319;
  v313[1] = v321;
  (*(v338 + 32))(v313 + *(v312 + 24), v302, v339);
  if (qword_100CA2AA0 != -1)
  {
    sub_100071EF4();
  }

  v331 = type metadata accessor for PreprocessedWeatherData();
  sub_10000703C(v331, qword_100D91360);
  sub_100023540();
  sub_1009221B4(v332, v313 + v290);
  if (qword_100CA2C20 != -1)
  {
    sub_1000B9AFC();
  }

  v333 = type metadata accessor for NewsDataModel();
  sub_10000703C(v333, qword_100D91550);
  sub_100041C34();
  sub_1009221B4(v334, v313 + v391);
  type metadata accessor for LocationWeatherDataState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10092143C()
{
  v0 = sub_10022C350(&qword_100CBC0D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  v4 = sub_10022C350(&unk_100CABCA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_10022C350(&qword_100CE62F0);
  type metadata accessor for HistoricalComparison();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A2D320;
  sub_100922274(v7);
  static HistoricalComparison.mockMaximumTemperature(trend:)();
  (*(v5 + 8))(v7, v4);
  sub_100922624(v3);
  static HistoricalComparison.mockPrecipitation(trend:)();
  (*(v1 + 8))(v3, v0);
  return v8;
}

uint64_t sub_100921668@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v128 = a1;
  v116 = a2;
  v2 = sub_10022C350(&qword_100CD65B0);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  v115 = v4;
  sub_1000038CC();
  v112 = type metadata accessor for PrecipitationShift.Kind();
  sub_1000037C4();
  v111 = v5;
  __chkstk_darwin(v6);
  sub_1000038E4();
  sub_100003918(v7);
  v8 = type metadata accessor for PrecipitationShift();
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003990(v10);
  v11 = sub_10022C350(&unk_100CB2CF0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003848();
  v114 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_10000E70C();
  sub_100003918(v17);
  v127 = type metadata accessor for ApparentPrecipitationIntensityCategory();
  sub_1000037C4();
  v130 = v18;
  __chkstk_darwin(v19);
  sub_1000038E4();
  v126 = v20;
  sub_1000038CC();
  v113 = type metadata accessor for ApparentPrecipitationIntensity();
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000038E4();
  v121 = v22;
  v23 = sub_10022C350(&qword_100CACCC8);
  sub_100003810(v23);
  sub_100003828();
  __chkstk_darwin(v24);
  sub_1000039BC();
  sub_100003918(v25);
  v124 = type metadata accessor for Precipitation();
  sub_1000037C4();
  v129 = v26;
  __chkstk_darwin(v27);
  sub_1000038E4();
  v125 = v28;
  sub_1000038CC();
  v29 = type metadata accessor for Calendar();
  v118 = v29;
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  sub_1000037D8();
  v33 = v32 - v31;
  v34 = type metadata accessor for WeatherMetadata();
  v35 = sub_100003E5C(v34, &v131);
  v108 = v36;
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v37);
  v39 = v95 - v38;
  v40 = type metadata accessor for Date();
  sub_1000037C4();
  v42 = v41;
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  v123 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  v48 = v95 - v47;
  __chkstk_darwin(v49);
  v51 = v95 - v50;
  static WeatherClock.date.getter();
  static WeatherMetadata.mock()();
  v104 = v42;
  v52 = *(v42 + 16);
  v52(v48, v51, v40);
  WeatherMetadata.date.setter();
  static Calendar.current.getter();
  sub_1000524D0();
  Date.wc_addHours(_:calendar:)();
  v53 = *(v30 + 8);
  v117 = v30 + 8;
  v96 = v53;
  (v53)(v33, v29);
  v106 = v39;
  WeatherMetadata.expirationDate.setter();
  sub_10022C350(&qword_100CE30F8);
  sub_1000038D8();
  v54 = type metadata accessor for MinuteWeather();
  sub_100003AE8(v54);
  sub_10008665C();
  v95[1] = v56 & ~v55;
  v57 = swift_allocObject();
  v122 = xmmword_100A2C3F0;
  *(v57 + 16) = xmmword_100A2C3F0;
  v97 = v40;
  v119 = v42 + 16;
  v120 = v52;
  v52(v48, v51, v40);
  v58 = *(v129 + 104);
  v101 = enum case for Precipitation.rain(_:);
  v129 += 104;
  v100 = v58;
  v58(v125);
  v59 = [objc_opt_self() metersPerSecond];
  sub_10000C70C(0, &qword_100CAC428);
  sub_1000184C0();
  Measurement.init(value:unit:)();
  v60 = *(v130 + 104);
  v99 = enum case for ApparentPrecipitationIntensityCategory.light(_:);
  v130 += 104;
  v98 = v60;
  v60(v126);
  ApparentPrecipitationIntensity.init(value:category:)();
  v102 = v57;
  v61 = v96;
  v62 = v51;
  MinuteWeather.init(date:precipitation:precipitationChance:precipitationIntensity:apparentPrecipitationIntensity:)();
  sub_10022C350(&qword_100CE62E0);
  v63 = type metadata accessor for MinuteCondition();
  sub_100003AE8(v63);
  sub_10008665C();
  v121 = swift_allocObject();
  *(v121 + 16) = v122;
  static Calendar.current.getter();
  sub_1000524D0();
  Date.wc_addMinutes(_:calendar:)();
  v64 = sub_10008672C();
  v61(v64);
  if (v128)
  {
    v65 = v97;
    v120(v105, v51, v97);
    v66 = v61;
    v67 = v65;
  }

  else
  {
    static Calendar.current.getter();
    sub_1000C90E0();
    sub_1000524D0();
    Date.wc_addHours(_:calendar:)();
    v68 = sub_10008672C();
    v61(v68);
    v66 = v61;
    v67 = v97;
  }

  sub_10000E7B0();
  sub_10001B350(v69, v70, v71, v67);
  static Calendar.current.getter();
  sub_1000719F4();
  Date.wc_addMinutes(_:calendar:)();
  v72 = sub_10008672C();
  v66(v72);
  sub_10000E7B0();
  sub_10001B350(v73, v74, v75, v67);
  static Calendar.current.getter();
  sub_1000184C0();
  Date.wc_addMinutes(_:calendar:)();
  v76 = sub_10008672C();
  v66(v76);
  v77 = sub_10000FEF4();
  sub_10001B350(v77, v78, v79, v67);
  sub_1000193CC();
  v80(v110);
  sub_100011868();
  PrecipitationShift.init(date:nextDate:kind:)();
  MinuteCondition.init(date:expirationDate:shortDescription:longDescription:shift:)();
  sub_10022C350(&qword_100CE62E8);
  v81 = type metadata accessor for MinuteSummary();
  sub_100003AE8(v81);
  sub_10008665C();
  *(swift_allocObject() + 16) = v122;
  v82 = v120;
  v120(v103, v62, v67);
  if (v128)
  {
    v83 = v114;
    v82(v114, v62, v67);
  }

  else
  {
    static Calendar.current.getter();
    v83 = v114;
    sub_1000524D0();
    Date.wc_addHours(_:calendar:)();
    (v66)(v33, v118);
  }

  sub_10000E7B0();
  sub_10001B350(v84, v85, v86, v67);
  v100(v125, v101, v124);
  v98(v126, v99, v127);
  ApparentPrecipitationIntensity.init(value:category:)();
  v87 = sub_10000FEF4();
  sub_10001B350(v87, v88, v89, v113);
  MinuteSummary.init(date:expirationDate:precipitation:precipitationChance:apparentPrecipitationIntensity:)();
  sub_1000371B0();
  v91 = v106;
  v92 = v109;
  (*(v90 + 16))(v107, v106, v109);
  Forecast<>.init(_:summary:conditions:summaries:metadata:)();
  (*(v83 + 8))(v91, v92);
  sub_10000E73C();
  return v93(v62, v67);
}

uint64_t sub_1009221B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_100922210()
{
  result = qword_100CE62B8;
  if (!qword_100CE62B8)
  {
    sub_10022E824(&qword_100CE62B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE62B8);
  }

  return result;
}

uint64_t sub_100922274@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = type metadata accessor for Deviation();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CA53F8);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_10022C350(&qword_100CD68D8);
  v24 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for Date();
  sub_10001B350(v14, 1, 1, v15);
  (*(v9 + 104))(v11, enum case for TrendBaseline.Kind.mean<A>(_:), v8);
  v16 = objc_opt_self();
  v17 = [v16 celsius];
  sub_10000C70C(0, &qword_100CA51B0);
  Measurement.init(value:unit:)();
  v18 = [v16 celsius];
  Measurement.init(value:unit:)();
  v19 = v26;
  v20 = v28;
  (*(v26 + 104))(v2, enum case for Deviation.normal(_:), v28);
  static Trend<>.mock(baselineKind:baselineValue:currentValue:deviation:baselineStartDate:)();
  (*(v19 + 8))(v2, v20);
  v21 = *(v25 + 8);
  v22 = v27;
  v21(v4, v27);
  v21(v7, v22);
  (*(v9 + 8))(v11, v24);
  return sub_1001AEDF4(v14);
}

uint64_t sub_100922624@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = type metadata accessor for Deviation();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CAB938);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_10022C350(&qword_100CBC0C8);
  v24 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for Date();
  sub_10001B350(v14, 1, 1, v15);
  (*(v9 + 104))(v11, enum case for TrendBaseline.Kind.mean<A>(_:), v8);
  v16 = objc_opt_self();
  v17 = [v16 inches];
  sub_10000C70C(0, &qword_100CAB968);
  Measurement.init(value:unit:)();
  v18 = [v16 inches];
  Measurement.init(value:unit:)();
  v19 = v26;
  v20 = v28;
  (*(v26 + 104))(v2, enum case for Deviation.normal(_:), v28);
  static Trend<>.mock(baselineKind:baselineValue:currentValue:deviation:baselineStartDate:)();
  (*(v19 + 8))(v2, v20);
  v21 = *(v25 + 8);
  v22 = v27;
  v21(v4, v27);
  v21(v7, v22);
  (*(v9 + 8))(v11, v24);
  return sub_1001AEDF4(v14);
}

uint64_t sub_1009229E4()
{
  if (qword_100CA2A60 != -1)
  {
    swift_once();
  }

  v0 = dispatch thunk of SettingGroup.isEnabled.getter();

  byte_100CE62F8 = v0 & 1;
  return result;
}

uint64_t sub_100922A5C()
{
  type metadata accessor for SettingReader();
  result = static SettingReader.shared.getter();
  qword_100CE6300 = result;
  return result;
}

uint64_t sub_100922B98(uint64_t a1, uint64_t *a2)
{
  if (qword_100CA2AB8 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  if (v3 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();
}

_BYTE *sub_100922C64(uint64_t a1, int a2)
{
  v72 = a2;
  v83 = a1;
  v3 = *v2;
  type metadata accessor for PrecipitationRelevancyWindow();
  sub_1000037C4();
  v74 = v5;
  v75 = v4;
  __chkstk_darwin(v4);
  v73 = (v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10022C350(&qword_100CB0BA0);
  __chkstk_darwin(v7 - 8);
  v78 = v71 - v8;
  v9 = sub_10022C350(&qword_100CAE8F0);
  sub_1000037C4();
  v79 = v10;
  __chkstk_darwin(v11);
  v77 = v71 - v12;
  v13 = sub_10022C350(&qword_100CC62B8);
  __chkstk_darwin(v13 - 8);
  v15 = v71 - v14;
  type metadata accessor for AirQuality();
  sub_1000037C4();
  v80 = v17;
  v81 = v16;
  __chkstk_darwin(v16);
  v19 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA29F0 != -1)
  {
    swift_once();
  }

  v76 = v19;
  sub_100924838();
  Configurable.setting<A>(_:)();
  v20 = &_swiftEmptySetSingleton;
  v82 = v9;
  if (v84 == 1)
  {
    v71[1] = v3;
    sub_100049F28();
    String.hash(into:)();
    v21 = Hasher._finalize()();
    v22 = -1 << *(&_swiftEmptySetSingleton + 32);
    v23 = v21 & ~v22;
    if ((*(&_swiftEmptySetSingleton + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v23))
    {
      v24 = ~v22;
      while (2)
      {
        switch(*(*(&_swiftEmptySetSingleton + 6) + v23))
        {
          case 1:
            goto LABEL_9;
          case 2:
            sub_100011004();
            goto LABEL_9;
          case 3:
            sub_100008C94();
LABEL_9:
            v25 = sub_100013EDC();

            if (v25)
            {
              goto LABEL_12;
            }

            v23 = (v23 + 1) & v24;
            if (((*(&_swiftEmptySetSingleton + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v23) & 1) == 0)
            {
              break;
            }

            continue;
          default:

            v20 = &_swiftEmptySetSingleton;
            goto LABEL_12;
        }

        break;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_100006B84();
    sub_1006A650C();
    v20 = v84;
LABEL_12:
    v9 = v82;
  }

  if (qword_100CA2A08 != -1)
  {
    swift_once();
  }

  Configurable.setting<A>(_:)();
  if (v84 == 1)
  {
    sub_100049F28();
    sub_100004E94();
    String.hash(into:)();
    v26 = Hasher._finalize()();
    v27 = -1 << v20[32];
    v28 = v26 & ~v27;
    if ((*&v20[((v28 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v28))
    {
      v29 = ~v27;
      while (2)
      {
        sub_1000752C4();
        switch(v30)
        {
          case 1:

            goto LABEL_24;
          case 2:
            sub_100011004();
            goto LABEL_21;
          case 3:
            sub_100008C94();
            goto LABEL_21;
          default:
LABEL_21:
            sub_100015194();
            _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_10004ED70();
            if (v2)
            {
              goto LABEL_24;
            }

            v28 = (v28 + 1) & v29;
            if (((*&v20[((v28 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v28) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_100006B84();
    sub_1006A650C();
    v20 = v84;
LABEL_24:
    v9 = v82;
  }

  type metadata accessor for WeatherData(0);
  WeatherDataModel.airQuality.getter();
  v31 = v81;
  v32 = sub_100024D10(v15, 1, v81);
  v33 = v78;
  v34 = v80;
  if (v32 == 1)
  {
    sub_10003FDF4(v15, &qword_100CC62B8);
LABEL_37:
    sub_10001A1F8();
    goto LABEL_38;
  }

  v35 = v76;
  (*(v80 + 32))(v76, v15, v31);
  if ((AirQuality.isSignificant.getter() & 1) == 0)
  {
    v39 = *(v34 + 8);
    LOBYTE(v34) = v34 + 8;
    v39(v35, v31);
    goto LABEL_37;
  }

  sub_100049F28();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001FD08();
  sub_10001A1F8();
  if (v36)
  {
    while (2)
    {
      sub_1000752C4();
      switch(v37)
      {
        case 1:
          goto LABEL_32;
        case 2:
          sub_100011004();
          goto LABEL_32;
        case 3:
          sub_100008C94();
LABEL_32:
          sub_100013EDC();
          sub_10004ED70();
          if (v34)
          {
            goto LABEL_35;
          }

          sub_10001D264();
          if ((v38 & 1) == 0)
          {
            break;
          }

          continue;
        default:

          goto LABEL_35;
      }

      break;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_100006B84();
  sub_1006A650C();
  v20 = v84;
LABEL_35:
  (*(v80 + 8))(v76, v81);
  v9 = v82;
LABEL_38:
  WeatherDataModel.minuteForecast.getter();
  if (sub_100024D10(v33, 1, v9) == 1)
  {
    sub_10003FDF4(v33, &qword_100CB0BA0);
LABEL_53:
    sub_100028DF0();
    goto LABEL_57;
  }

  v40 = v77;
  (*(v79 + 32))(v77, v33, v9);
  if (v72)
  {
    v41 = v73;
    *v73 = vdupq_n_s64(0x40AC200000000000uLL);
    v42 = &enum case for PrecipitationRelevancyWindow.window(_:);
  }

  else
  {
    v42 = &enum case for PrecipitationRelevancyWindow.default(_:);
    v41 = v73;
  }

  v43 = v74;
  v34 = v75;
  (*(v74 + 104))(v41, *v42, v75);
  v44 = v40;
  v45 = Forecast<>.isRelevant(in:)();
  (*(v43 + 8))(v41, v34);
  if ((v45 & 1) == 0)
  {
    (*(v79 + 8))(v44, v9);
    sub_10001A1F8();
    goto LABEL_53;
  }

  sub_100049F28();
  sub_100004E94();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10001FD08();
  if (v46)
  {
    sub_10001A1F8();
    sub_100028DF0();
    while (2)
    {
      sub_1000752C4();
      switch(v47)
      {
        case 1:

          goto LABEL_56;
        case 2:
          sub_100011004();
          goto LABEL_49;
        case 3:
          sub_100008C94();
          goto LABEL_49;
        default:
LABEL_49:
          sub_100015194();
          _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10004ED70();
          if (v34)
          {
            goto LABEL_56;
          }

          sub_10001D264();
          if ((v48 & 1) == 0)
          {
            goto LABEL_55;
          }

          continue;
      }
    }
  }

  sub_10001A1F8();
  sub_100028DF0();
LABEL_55:
  swift_isUniquelyReferenced_nonNull_native();
  sub_100006B84();
  sub_1006A650C();
  v20 = v84;
LABEL_56:
  (*(v79 + 8))(v77, v82);
LABEL_57:
  if (qword_100CA2AB0 != -1)
  {
    swift_once();
  }

  if (byte_100CE62F8 == 1)
  {
    if (qword_100CA2AC0 != -1)
    {
      swift_once();
    }

    if (byte_100CE6308 == 1)
    {
      sub_100049F28();
      String.hash(into:)();
      Hasher._finalize()();
      sub_10001FD08();
      if (v49)
      {
        while (2)
        {
          sub_1000752C4();
          switch(v50)
          {
            case 1:
              goto LABEL_67;
            case 2:
              sub_100011004();
              goto LABEL_67;
            case 3:
              sub_100008C94();
LABEL_67:
              sub_100013EDC();
              sub_10004ED70();
              if (v34)
              {
                goto LABEL_70;
              }

              sub_10001D264();
              if ((v51 & 1) == 0)
              {
                break;
              }

              continue;
            default:

              goto LABEL_70;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      sub_100006B84();
      sub_1006A650C();
      v20 = v84;
    }

LABEL_70:
    if (qword_100CA2AC8 != -1)
    {
      swift_once();
    }

    if (byte_100CE6309 == 1)
    {
      sub_100049F28();
      sub_100004E94();
      String.hash(into:)();
      Hasher._finalize()();
      sub_10001FD08();
      if (v52)
      {
        while (2)
        {
          sub_1000752C4();
          switch(v53)
          {
            case 1:

              goto LABEL_80;
            case 2:
              sub_100011004();
              goto LABEL_77;
            case 3:
              sub_100008C94();
              goto LABEL_77;
            default:
LABEL_77:
              sub_100015194();
              _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10004ED70();
              if (v34)
              {
                goto LABEL_80;
              }

              sub_10001D264();
              if ((v54 & 1) == 0)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      sub_100006B84();
      sub_1006A650C();
      v20 = v84;
    }

LABEL_80:
    if (qword_100CA2AD0 != -1)
    {
      swift_once();
    }

    if (byte_100CE630A == 1)
    {
      sub_100049F28();
      String.hash(into:)();
      Hasher._finalize()();
      sub_10001FD08();
      if (v55)
      {
        while (2)
        {
          sub_1000752C4();
          switch(v56)
          {
            case 1:
              sub_100017158();
              goto LABEL_87;
            case 2:

              goto LABEL_90;
            case 3:
              sub_100008C94();
              goto LABEL_87;
            default:
LABEL_87:
              _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10004ED70();
              if (v34)
              {
                goto LABEL_90;
              }

              sub_10001D264();
              if ((v57 & 1) == 0)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      sub_100006B84();
      sub_1006A650C();
      v20 = v84;
    }

LABEL_90:
    if (qword_100CA2AD8 != -1)
    {
      swift_once();
    }

    if (byte_100CE630B == 1)
    {
      sub_100049F28();
      String.hash(into:)();
      Hasher._finalize()();
      sub_10001FD08();
      if (v58)
      {
        while (2)
        {
          sub_1000752C4();
          switch(v59)
          {
            case 1:
              sub_100017158();
              goto LABEL_97;
            case 2:
              sub_100011004();
              goto LABEL_97;
            case 3:

              goto LABEL_100;
            default:
LABEL_97:
              _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10004ED70();
              if (v34)
              {
                goto LABEL_100;
              }

              sub_10001D264();
              if ((v60 & 1) == 0)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      sub_100006B84();
      sub_1006A650C();
      v20 = v84;
    }
  }

LABEL_100:
  if (qword_100CA2AE0 != -1)
  {
    swift_once();
  }

  if (byte_100CE630C == 1)
  {
    sub_10022C350(&qword_100CE63B0);
    v61 = *(type metadata accessor for WeatherAlert() - 8);
    v62 = *(v61 + 72);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_100A2D320;
    v65 = v64 + v63;
    sub_100923B8C(v65);
    v66 = v65 + v62;
  }

  else
  {
    if (qword_100CA2AE8 != -1)
    {
      swift_once();
    }

    if (byte_100CE630D != 1)
    {
      WeatherDataModel.weatherAlerts.getter();
      return v20;
    }

    sub_10022C350(&qword_100CE63B0);
    v67 = *(type metadata accessor for WeatherAlert() - 8);
    v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_100A2C3F0;
    v66 = v69 + v68;
  }

  sub_1009241EC(v66);
  return v20;
}

uint64_t sub_100923B8C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1 - 8);
  v45 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for WeatherMetadata();
  __chkstk_darwin(v3 - 8);
  v44 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WeatherImportance();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v43 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WeatherSeverity();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&unk_100CB2CF0);
  v10 = __chkstk_darwin(v9 - 8);
  v37 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v36 - v12;
  v14 = type metadata accessor for Calendar();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = v36 - v24;
  __chkstk_darwin(v23);
  v27 = v36 - v26;
  v28 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v28 - 8);
  v30 = v36 - v29;
  URL.init(string:)();
  v31 = type metadata accessor for URL();
  v36[5] = v30;
  result = sub_100024D10(v30, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36[4] = "al-attribution.html";
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    Date.wc_addDays(_:calendar:)();
    v36[3] = v27;
    v33 = *(v15 + 8);
    v33(v17, v14);
    v34 = *(v19 + 8);
    v36[2] = v25;
    v34(v25, v18);
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    Date.wc_addHours(_:calendar:)();
    v33(v17, v14);
    v34(v22, v18);
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    v36[1] = v13;
    Date.wc_addDays(_:calendar:)();
    v33(v17, v14);
    v34(v22, v18);
    sub_10001B350(v13, 0, 1, v18);
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    v35 = v37;
    Date.wc_addDays(_:calendar:)();
    v33(v17, v14);
    v34(v22, v18);
    sub_10001B350(v35, 0, 1, v18);
    (*(v38 + 104))(v40, enum case for WeatherSeverity.moderate(_:), v39);
    (*(v41 + 104))(v43, enum case for WeatherImportance.high(_:), v42);
    sub_10092488C();
    UUID.init()();
    return WeatherAlert.init(detailsURL:source:expirationDate:issuedDate:onsetTime:endDate:summary:region:severity:importance:metadata:id:)();
  }

  return result;
}

uint64_t sub_1009241EC@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1 - 8);
  v45 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for WeatherMetadata();
  __chkstk_darwin(v3 - 8);
  v44 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for WeatherImportance();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherSeverity();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v40 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&unk_100CB2CF0);
  v9 = __chkstk_darwin(v8 - 8);
  v36 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = v35 - v11;
  v12 = type metadata accessor for Calendar();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v35 - v22;
  __chkstk_darwin(v21);
  v25 = v35 - v24;
  v26 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v26 - 8);
  v28 = v35 - v27;
  URL.init(string:)();
  v29 = type metadata accessor for URL();
  v37 = v28;
  result = sub_100024D10(v28, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35[3] = "al-attribution.html";
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    Date.wc_addDays(_:calendar:)();
    v31 = *(v13 + 8);
    v31(v15, v12);
    v35[1] = v23;
    v35[2] = v25;
    v32 = *(v17 + 8);
    v32(v23, v16);
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    Date.wc_addHours(_:calendar:)();
    v31(v15, v12);
    v32(v20, v16);
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    v33 = v47;
    Date.wc_addDays(_:calendar:)();
    v31(v15, v12);
    v32(v20, v16);
    sub_10001B350(v33, 0, 1, v16);
    static WeatherClock.date.getter();
    static Calendar.current.getter();
    v34 = v36;
    Date.wc_addDays(_:calendar:)();
    v31(v15, v12);
    v32(v20, v16);
    sub_10001B350(v34, 0, 1, v16);
    (*(v38 + 104))(v40, enum case for WeatherSeverity.moderate(_:), v39);
    (*(v41 + 104))(v42, enum case for WeatherImportance.low(_:), v43);
    sub_10092488C();
    UUID.init()();
    return WeatherAlert.init(detailsURL:source:expirationDate:issuedDate:onsetTime:endDate:summary:region:severity:importance:metadata:id:)();
  }

  return result;
}

unint64_t sub_100924838()
{
  result = qword_100CE63A8;
  if (!qword_100CE63A8)
  {
    type metadata accessor for LocationViewDescriptor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE63A8);
  }

  return result;
}

uint64_t sub_10092488C()
{
  v0 = sub_10022C350(&qword_100CB3AB0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = sub_10022C350(&qword_100CC41A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  static WeatherClock.date.getter();
  static WeatherClock.date.getter();
  URL.init(string:)();
  v9 = type metadata accessor for URL();
  sub_10001B350(v3, 1, 1, v9);
  WeatherAttribution.init(name:sourceURL:logoURL:)();
  v10 = type metadata accessor for WeatherAttribution();
  sub_10001B350(v6, 0, 1, v10);
  return WeatherMetadata.init(date:expirationDate:attribution:)();
}

Swift::Int sub_100924A90(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100309258();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1009255AC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_100924AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  if (*(a2 + 32))
  {
    sub_10001FD30();
    sub_10019213C(a1, v11);

    return sub_10001B350(a3, 1, 1, v6);
  }

  else
  {
    sub_1001944F0(a1, v10);
    v13 = (v10 + *(v6 + 20));
    v14 = *(a2 + 16);
    *v13 = *a2;
    v13[1] = v14;
    sub_10001A208();
    sub_1001944F0(v10, a3);
    return sub_10001B350(a3, 0, 1, v6);
  }
}

void *sub_100924C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v84 = a2;
  sub_1000038D8();
  v82 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  *&v89 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v81 = v12 - v11;
  v13 = type metadata accessor for MapComponentViewModel();
  __chkstk_darwin(v13 - 8);
  sub_1000037D8();
  v85 = v15 - v14;
  v87 = type metadata accessor for LocationComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v16);
  v92 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = &v74 - v19;
  v20 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CAC7F8);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25 - 8);
  sub_1000088C0();
  __chkstk_darwin(v27);
  v29 = &v74 - v28;
  v30 = sub_10019369C();
  if (v30 != 6)
  {
    v64 = v30;
    sub_10022C350(&qword_100CD14B0);
    v65 = swift_allocObject();
    *(v65 + 1) = xmmword_100A2C3F0;
    *(v65 + 32) = v64;
    sub_10019213C(v83, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_10019213C(a4, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_100925544(a3);
    sub_10019213C(v84, type metadata accessor for TipPriorityQueue.GridEntry);
    v66 = v5;
    goto LABEL_37;
  }

  sub_10022C350(&qword_100CE63B8);
  v31 = v5;
  v32 = a4;
  v75 = a4;
  v33 = *(v26 + 72);
  v34 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100A3B030;
  v74 = v35;
  v36 = v35 + v34;
  v76 = v31;
  sub_1009254D4(v31, v35 + v34);
  sub_1001943BC(v84, v36 + v33);
  sub_100013EF8(v36 + v33);
  sub_1009254D4(a3, v36 + 2 * v33);
  sub_1001943BC(v32, v36 + 3 * v33);
  sub_100013EF8(v36 + 3 * v33);
  v90 = v33;
  v37 = (v36 + 4 * v33);
  sub_1001943BC(v83, v37);
  sub_100013EF8(v37);
  v80 = (v89 + 16);
  v79 = v89 + 88;
  v77 = v89 + 8;
  v38 = _swiftEmptyArrayStorage;
  v39 = 5;
  v78 = enum case for WeatherMapOverlayKind.wind(_:)[0];
  v86 = a3;
  do
  {
    sub_1009254D4(v36, v29);
    sub_1009254D4(v29, v6);
    if (sub_100024D10(v6, 1, v20) == 1)
    {
      sub_100925544(v29);
      sub_100925544(v6);
      goto LABEL_27;
    }

    sub_10001A208();
    sub_1001944F0(v6, v24);
    sub_100004EAC();
    v40 = v91;
    sub_1001943BC(v24, v91);
    sub_1001943BC(v40, v92);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 18:
        v42 = 5;
        break;
      case 1:
        v42 = 0;
        break;
      case 5:
        sub_100028E04();
        v43 = v85;
        sub_1001944F0(v92, v85);
        (*v80)(v81, v43, v82);
        v44 = sub_100069C6C();
        v46 = v45(v44);
        if (v46 == v78)
        {
          if (qword_100CA2100 != -1)
          {
            sub_100023558();
            swift_once();
          }

          v47 = sub_10022C350(&qword_100CA35A0);
          sub_10000703C(v47, qword_100D8FEB8);
          swift_beginAccess();
          Tips.Parameter.wrappedValue.getter();
          v48 = v93;
          swift_endAccess();
          sub_10001FD30();
          sub_10019213C(v91, v49);
          sub_100011018();
          sub_10019213C(v85, v50);
          if (v48)
          {
            v42 = 2;
          }

          else
          {
            v42 = 3;
          }
        }

        else
        {
          sub_10001FD30();
          sub_10019213C(v91, v58);
          sub_100011018();
          sub_10019213C(v43, v59);
          v60 = sub_100069C6C();
          v61(v60);
          v42 = 2;
        }

        goto LABEL_22;
      case 16:
        v42 = 4;
        break;
      default:
        if (EnumCaseMultiPayload)
        {
          sub_100006B94();
          sub_10019213C(v91, v51);
          sub_10019213C(v92, v37);
          sub_100925544(v29);
          sub_1000752D0();
          goto LABEL_27;
        }

        v42 = 1;
        break;
    }

    sub_100006B94();
    sub_10019213C(v91, v52);
    sub_10019213C(v92, v37);
LABEL_22:
    sub_100925544(v29);
    v53 = (v24 + *(v20 + 20));
    v54 = *v53;
    v88 = v53[1];
    v89 = v54;
    sub_1000752D0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10069EA20();
      v38 = v62;
    }

    v55 = v38[2];
    v37 = (v55 + 1);
    if (v55 >= v38[3] >> 1)
    {
      sub_10069EA20();
      v38 = v63;
    }

    v38[2] = v37;
    v56 = &v38[5 * v55];
    *(v56 + 32) = v42;
    v57 = v89;
    *(v56 + 7) = v88;
    *(v56 + 5) = v57;
    a3 = v86;
LABEL_27:
    v36 += v90;
    --v39;
  }

  while (v39);
  swift_setDeallocating();
  sub_1005C1E80();
  v94[0] = v38;

  sub_100924A90(v94);

  v67 = v94[0];
  v68 = *(v94[0] + 16);
  if (v68)
  {
    v94[0] = _swiftEmptyArrayStorage;
    sub_1006A7B3C();
    v65 = v94[0];
    v69 = *(v94[0] + 16);
    v70 = 4;
    v71 = v84;
    do
    {
      v72 = v67[v70];
      v94[0] = v65;
      if (v69 >= v65[3] >> 1)
      {
        sub_1006A7B3C();
        v65 = v94[0];
      }

      v65[2] = v69 + 1;
      *(v65 + v69 + 32) = v72;
      v70 += 5;
      ++v69;
      --v68;
    }

    while (v68);

    sub_10019213C(v83, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_10019213C(v75, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_100925544(a3);
    sub_10019213C(v71, type metadata accessor for TipPriorityQueue.GridEntry);
    v66 = v76;
LABEL_37:
    sub_100925544(v66);
  }

  else
  {

    sub_10019213C(v83, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_10019213C(v75, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_100925544(a3);
    sub_10019213C(v84, type metadata accessor for TipPriorityQueue.GridEntry);
    sub_100925544(v76);
    return _swiftEmptyArrayStorage;
  }

  return v65;
}

uint64_t type metadata accessor for TipPriorityQueue.GridEntry()
{
  result = qword_100CE6420;
  if (!qword_100CE6420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009254D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAC7F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100925544(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAC7F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_1009255AC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10022C350(&qword_100CE63C0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_100925754(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1009256B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1009256B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = v4 + 40 * a3;
      v8 = *(v7 + 8);
      v9 = *(v7 + 24);
      v10 = v6;
      v11 = v5;
      do
      {
        v12 = *(v11 - 16);
        v13 = v8 < *(v11 - 32);
        v14 = v9 == v12;
        v15 = v9 < v12;
        if (!v14)
        {
          v13 = v15;
        }

        if (!v13)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v16 = *v11;
        result = *(v11 + 16);
        v17 = *(v11 + 32);
        v18 = *(v11 - 24);
        *v11 = *(v11 - 40);
        *(v11 + 16) = v18;
        *(v11 + 32) = *(v11 - 8);
        *(v11 - 32) = v8;
        *(v11 - 24) = result;
        *(v11 - 16) = v9;
        *(v11 - 8) = v17;
        *(v11 - 40) = v16;
        v11 -= 40;
      }

      while (!__CFADD__(v10++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100925754(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_95:
    v107 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v97 = v6 + 16;
      v98 = *(v6 + 2);
      while (v98 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_133;
        }

        v99 = v6;
        v100 = &v6[16 * v98];
        v101 = *v100;
        v102 = &v97[2 * v98];
        v103 = v102[1];
        sub_100925D54((*a3 + 40 * *v100), (*a3 + 40 * *v102), *a3 + 40 * v103, v107);
        if (v109)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_121;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_122;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        v104 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_123;
        }

        v109 = 0;
        v98 = *v97 - 1;
        memmove(v102, v102 + 2, 16 * v104);
        *v97 = v98;
        v6 = v99;
      }

LABEL_105:

      return;
    }

LABEL_130:
    v6 = sub_100308E24();
    goto LABEL_97;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  v105 = a4;
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = *a3 + 40 * v5;
      v9 = *(v8 + 8);
      v10 = *(v8 + 24);
      v11 = *a3 + 40 * v7;
      v12 = *(v11 + 24);
      v13 = v9 < *(v11 + 8);
      v14 = v10 == v12;
      v15 = v10 < v12;
      if (!v14)
      {
        v13 = v15;
      }

      v16 = (v11 + 104);
      v17 = v7 + 2;
      while (1)
      {
        v18 = v17;
        if (++v5 >= v4)
        {
          break;
        }

        v19 = *(v16 - 2);
        v21 = *v16;
        v16 += 5;
        v20 = v21;
        v22 = v19 >= v9;
        v14 = v21 == v10;
        v23 = v21 >= v10;
        if (v14)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        ++v17;
        v10 = v20;
        v9 = v19;
        if (v13 == v24)
        {
          if (!v13)
          {
            goto LABEL_25;
          }

          goto LABEL_15;
        }
      }

      v5 = v4;
      if (!v13)
      {
        goto LABEL_25;
      }

LABEL_15:
      if (v5 < v7)
      {
        goto LABEL_127;
      }

      if (v7 < v5)
      {
        if (v4 >= v18)
        {
          v4 = v18;
        }

        v25 = 40 * v4 - 40;
        v26 = 40 * v7 + 24;
        v27 = v5;
        v28 = v7;
        do
        {
          if (v28 != --v27)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_134;
            }

            v30 = (v29 + v26);
            v31 = *(v29 + v26 - 24);
            v32 = v29 + v25;
            v33 = *(v30 - 1);
            v34 = *v30;
            v35 = *(v32 + 32);
            v36 = *(v32 + 16);
            *(v30 - 24) = *v32;
            *(v30 - 8) = v36;
            *(v30 + 1) = v35;
            *v32 = v31;
            *(v32 + 8) = v33;
            *(v32 + 24) = v34;
          }

          ++v28;
          v25 -= 40;
          v26 += 40;
        }

        while (v28 < v27);
        v4 = a3[1];
      }
    }

LABEL_25:
    if (v5 < v4)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_126;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_43:
    if (v5 < v7)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10011E564();
      v6 = v95;
    }

    v53 = *(v6 + 2);
    v54 = v53 + 1;
    if (v53 >= *(v6 + 3) >> 1)
    {
      sub_10011E564();
      v6 = v96;
    }

    *(v6 + 2) = v54;
    v55 = v6 + 32;
    v56 = &v6[16 * v53 + 32];
    *v56 = v7;
    *(v56 + 1) = v5;
    v107 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        v58 = &v55[16 * v54 - 16];
        v59 = &v6[16 * v54];
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v60 = *(v6 + 4);
          v61 = *(v6 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_63:
          if (v63)
          {
            goto LABEL_112;
          }

          v75 = *v59;
          v74 = *(v59 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = *(v58 + 1);
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_120;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v54 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        if (v54 < 2)
        {
          goto LABEL_114;
        }

        v82 = *v59;
        v81 = *(v59 + 1);
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_78:
        if (v78)
        {
          goto LABEL_117;
        }

        v84 = *v58;
        v83 = *(v58 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_119;
        }

        if (v85 < v77)
        {
          goto LABEL_92;
        }

LABEL_85:
        if (v57 - 1 >= v54)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v89 = v6;
        v90 = &v55[16 * v57 - 16];
        v91 = *v90;
        v92 = &v55[16 * v57];
        v93 = *(v92 + 1);
        sub_100925D54((*a3 + 40 * *v90), (*a3 + 40 * *v92), *a3 + 40 * v93, v107);
        if (v109)
        {
          goto LABEL_105;
        }

        if (v93 < v91)
        {
          goto LABEL_107;
        }

        v94 = *(v89 + 2);
        if (v57 > v94)
        {
          goto LABEL_108;
        }

        *v90 = v91;
        *(v90 + 1) = v93;
        if (v57 >= v94)
        {
          goto LABEL_109;
        }

        v109 = 0;
        v54 = v94 - 1;
        sub_1003090FC(v92 + 16, v94 - 1 - v57, &v55[16 * v57]);
        v6 = v89;
        *(v89 + 2) = v94 - 1;
        if (v94 <= 2)
        {
          goto LABEL_92;
        }
      }

      v64 = &v55[16 * v54];
      v65 = *(v64 - 8);
      v66 = *(v64 - 7);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_110;
      }

      v69 = *(v64 - 6);
      v68 = *(v64 - 5);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_111;
      }

      v71 = *(v59 + 1);
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_113;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_116;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = *(v58 + 1);
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_124;
        }

        if (v62 < v88)
        {
          v57 = v54 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

LABEL_92:
    v4 = a3[1];
    a4 = v105;
    if (v5 >= v4)
    {
      goto LABEL_95;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_128;
  }

  if (v7 + a4 < v4)
  {
    v4 = v7 + a4;
  }

  if (v4 < v7)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v5 == v4)
  {
    goto LABEL_43;
  }

  v37 = *a3;
  v38 = *a3 + 40 * v5;
  v39 = v7 - v5;
LABEL_34:
  v40 = v37 + 40 * v5;
  v41 = *(v40 + 8);
  v42 = *(v40 + 24);
  v43 = v39;
  v44 = v38;
  while (1)
  {
    v45 = *(v44 - 16);
    v46 = v41 < *(v44 - 32);
    v14 = v42 == v45;
    v47 = v42 < v45;
    if (!v14)
    {
      v46 = v47;
    }

    if (!v46)
    {
LABEL_41:
      ++v5;
      v38 += 40;
      --v39;
      if (v5 == v4)
      {
        v5 = v4;
        goto LABEL_43;
      }

      goto LABEL_34;
    }

    if (!v37)
    {
      break;
    }

    v48 = *v44;
    v49 = *(v44 + 16);
    v50 = *(v44 + 32);
    v51 = *(v44 - 24);
    *v44 = *(v44 - 40);
    *(v44 + 16) = v51;
    *(v44 + 32) = *(v44 - 8);
    *(v44 - 32) = v41;
    *(v44 - 24) = v49;
    *(v44 - 16) = v42;
    *(v44 - 8) = v50;
    *(v44 - 40) = v48;
    v44 -= 40;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t sub_100925D54(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1006A075C(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_32;
      }

      v12 = *(v6 + 3);
      v13 = *(v4 + 3);
      v14 = *(v6 + 1) < *(v4 + 1);
      v15 = v12 == v13;
      v16 = v12 < v13;
      if (!v15)
      {
        v14 = v16;
      }

      if (!v14)
      {
        break;
      }

      v17 = v6;
      v15 = v7 == v6;
      v6 += 40;
      if (!v15)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 40;
    }

    v17 = v4;
    v15 = v7 == v4;
    v4 += 40;
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_14:
    v18 = *v17;
    v19 = *(v17 + 1);
    *(v7 + 4) = *(v17 + 4);
    *v7 = v18;
    *(v7 + 1) = v19;
    goto LABEL_15;
  }

  sub_1006A075C(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_17:
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    v21 = *(v10 - 2);
    v22 = *(v6 - 2);
    v23 = *(v10 - 4) < *(v6 - 4);
    v15 = v21 == v22;
    v24 = v21 < v22;
    if (!v15)
    {
      v23 = v24;
    }

    if (v23)
    {
      v27 = v6 - 40;
      v15 = v5 + 40 == v6;
      v6 -= 40;
      if (!v15)
      {
        v28 = *v27;
        v29 = *(v27 + 1);
        *(v5 + 32) = *(v27 + 4);
        *v5 = v28;
        *(v5 + 16) = v29;
        v6 = v27;
      }

      goto LABEL_17;
    }

    if (v10 != (v5 + 40))
    {
      v25 = *(v10 - 40);
      v26 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v25;
      *(v5 + 16) = v26;
    }

    v10 -= 40;
  }

LABEL_32:
  v30 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v30])
  {
    memmove(v6, v4, 40 * v30);
  }

  return 1;
}

uint64_t sub_100925F5C()
{
  result = type metadata accessor for LocationComponentViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ConditionDetailChartHeaderViewModel()
{
  result = qword_100CE64B0;
  if (!qword_100CE64B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100926044()
{
  result = type metadata accessor for ConditionDetailChartHeaderStringModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for ConditionDetailChartHeaderViewModel.StyleKind(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
LABEL_17:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = (v6 + 2147483646) & 0x7FFFFFFF;
      result = (v7 - 4);
      if (v7 > 4)
      {
        return result;
      }
    }

    return 0;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = result[1];
      if (!result[1])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 8)) - 6);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConditionDetailChartHeaderViewModel.StyleKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10092624C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_100926274@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  switch(a1)
  {
    case 2:
      if (qword_100CA20B0 != -1)
      {
        swift_once();
      }

      v3 = qword_100D8FD78;
      a2[3] = type metadata accessor for DefaultChartHeaderStyle();
      v4 = &unk_100CD7368;
      v5 = type metadata accessor for DefaultChartHeaderStyle;
      goto LABEL_17;
    case 3:
      if (qword_100CA2BB8 != -1)
      {
        swift_once();
      }

      v3 = qword_100D91510;
      a2[3] = type metadata accessor for ChanceOfRainChartHeaderStyle();
      v4 = &unk_100CD7360;
      v5 = type metadata accessor for ChanceOfRainChartHeaderStyle;
      goto LABEL_17;
    case 4:
      if (qword_100CA2BB0 != -1)
      {
        swift_once();
      }

      v3 = qword_100D91508;
      a2[3] = type metadata accessor for TemperatureChartHeaderStyle();
      v4 = &unk_100CD7358;
      v5 = type metadata accessor for TemperatureChartHeaderStyle;
      goto LABEL_17;
    case 5:
      if (qword_100CA2948 != -1)
      {
        swift_once();
      }

      v3 = qword_100D911B8;
      a2[3] = type metadata accessor for VisibilityChartHeaderStyle();
      v4 = &unk_100CD7350;
      v5 = type metadata accessor for VisibilityChartHeaderStyle;
      goto LABEL_17;
    case 6:
      if (qword_100CA2360 != -1)
      {
        swift_once();
      }

      v3 = qword_100D90580;
      a2[3] = type metadata accessor for UVIndexChartHeaderStyle();
      v4 = &unk_100CD7348;
      v5 = type metadata accessor for UVIndexChartHeaderStyle;
LABEL_17:
      a2[4] = sub_100926748(v4, v5);
      *a2 = v3;

      break;
    default:
      v8 = type metadata accessor for PrecipitationChartHeaderStyle();
      swift_allocObject();
      v9 = sub_1004CBA64(a1 & 1);
      a2[3] = v8;
      result = sub_100926748(&qword_100CD7340, type metadata accessor for PrecipitationChartHeaderStyle);
      a2[4] = result;
      *a2 = v9;
      break;
  }

  return result;
}

uint64_t sub_1009265B0(uint64_t a1, uint64_t a2)
{
  if (static ConditionDetailChartHeaderStringModel.== infix(_:_:)())
  {
    v4 = type metadata accessor for ConditionDetailChartHeaderViewModel();
    v5 = *(v4 + 20);
    v6 = *(a1 + v5);
    v7 = *(a2 + v5);
    switch(v6)
    {
      case 2:
        if (v7 != 2)
        {
          goto LABEL_15;
        }

        break;
      case 3:
        if (v7 != 3)
        {
          goto LABEL_15;
        }

        break;
      case 4:
        if (v7 != 4)
        {
          goto LABEL_15;
        }

        break;
      case 5:
        if (v7 != 5)
        {
          goto LABEL_15;
        }

        break;
      case 6:
        if (v7 != 6)
        {
          goto LABEL_15;
        }

        break;
      default:
        if (v7 - 2) < 5 || ((v7 ^ v6))
        {
          goto LABEL_15;
        }

        break;
    }

    v8 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
LABEL_15:
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_10092668C(char a1, char a2)
{
  switch(a1)
  {
    case 2:
      if (a2 == 2)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 3:
      if (a2 == 3)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 4:
      if (a2 != 4)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    case 5:
      if (a2 != 5)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    case 6:
      if (a2 != 6)
      {
        goto LABEL_13;
      }

LABEL_11:
      v2 = 1;
      break;
    default:
      if ((a2 - 2) >= 5u)
      {
        v2 = a2 ^ a1 ^ 1;
      }

      else
      {
LABEL_13:
        v2 = 0;
      }

      break;
  }

  return v2 & 1;
}

uint64_t sub_100926748(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PeakKnockoutMark()
{
  result = qword_100CE6548;
  if (!qword_100CE6548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100926804()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1009268B0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = type metadata accessor for BlendMode();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CB6950);
  __chkstk_darwin(v3 - 8);
  v17 = &v17 - v4;
  v5 = sub_10022C350(&qword_100CB6970);
  __chkstk_darwin(v5 - 8);
  v20 = type metadata accessor for PointMark();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10022C350(&qword_100CCDD38);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v17 - v8;
  v10 = type metadata accessor for PeakKnockoutMark();
  type metadata accessor for Date();
  static PlottableValue.value(_:_:)();
  v28 = *(v1 + *(v10 + 20));
  static PlottableValue.value(_:_:)();
  PointMark.init<A, B>(x:y:)();
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B6290();
  sub_1004B6290();
  v11 = v20;
  ChartContent.symbolSize(_:)();
  (*(v18 + 8))(v7, v11);
  v13 = v22;
  v12 = v23;
  v14 = v25;
  (*(v23 + 104))(v22, enum case for BlendMode.destinationOut(_:), v25);
  v26 = v11;
  v27 = &protocol witness table for PointMark;
  swift_getOpaqueTypeConformance2();
  v15 = v21;
  ChartContent.blendMode(_:)();
  (*(v12 + 8))(v13, v14);
  return (*(v19 + 8))(v9, v15);
}

uint64_t sub_100926D0C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  sub_10022C350(&qword_100CE6590);
  sub_1000037C4();
  v42 = v3;
  v43 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  v40 = &v36 - v5;
  v6 = type metadata accessor for BasicChartSymbolShape();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10022C350(&qword_100CE6598);
  sub_1000037C4();
  v39 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = sub_10022C350(&qword_100CE65A0);
  sub_1000037C4();
  v18 = v17;
  sub_100003828();
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  sub_10022C350(&qword_100CE65A8);
  sub_1000037C4();
  v37 = v23;
  v38 = v22;
  sub_100003828();
  __chkstk_darwin(v24);
  v26 = &v36 - v25;
  v27 = *(v1 + *(type metadata accessor for PeakKnockoutMark() + 24));
  sub_1009268B0(v21);
  static ChartSymbolShape<>.circle.getter();
  if (v27 == 1)
  {
    v28 = v44;
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B5F04();
    BasicChartSymbolShape.strokeBorder(lineWidth:)();
    (*(v8 + 8))(v11, v6);
    v29 = sub_10022E824(&qword_100CCDD38);
    v45 = type metadata accessor for PointMark();
    v46 = &protocol witness table for PointMark;
    sub_100010D0C();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = v29;
    v46 = OpaqueTypeConformance2;
    sub_10001D2A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v31 = v41;
    ChartContent.symbol<A>(_:)();
    (*(v39 + 8))(v15, v31);
    (*(v18 + 8))(v21, v16);
    (*(v37 + 32))(v28, v26, v38);
  }

  else
  {
    v32 = sub_10022E824(&qword_100CCDD38);
    v47 = type metadata accessor for PointMark();
    v48 = &protocol witness table for PointMark;
    sub_100010D0C();
    v33 = swift_getOpaqueTypeConformance2();
    v47 = v32;
    v48 = v33;
    sub_10001D2A8();
    swift_getOpaqueTypeConformance2();
    sub_100402118();
    v34 = v40;
    ChartContent.symbol<A>(_:)();
    (*(v8 + 8))(v11, v6);
    (*(v18 + 8))(v21, v16);
    (*(v42 + 32))(v44, v34, v43);
  }

  sub_10022C350(&qword_100CE65B0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100927204()
{
  result = qword_100CE65B8;
  if (!qword_100CE65B8)
  {
    sub_10022E824(&qword_100CE65C0);
    sub_10022E824(&qword_100CE65A0);
    sub_10022E824(&qword_100CE6598);
    sub_10022E824(&qword_100CCDD38);
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for BasicChartSymbolShape();
    sub_100402118();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE65B8);
  }

  return result;
}

uint64_t sub_1009273AC(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2B08 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2B18 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2B10 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2B00 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2AF8 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_100927518(char a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v8);
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
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v17);
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
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003908();
  __chkstk_darwin(v30);
  v32 = &v74 - v31;
  __chkstk_darwin(v33);
  v35 = &v74 - v34;
  v36 = sub_1009273AC(a1, a2);
  v37 = OBJC_IVAR____TtCV7Weather15NoAqiNhpContent8_Storage_map;
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

uint64_t sub_100927B40(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v115 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather15NoAqiNhpContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v120 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3ECD0;
    v13 = sub_10022C350(&qword_100CAC7F0);
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = *(v7 + 72);
    v16 = *(v7 + 80);
    v17 = v13;
    v18 = swift_allocObject();
    sub_10001361C(v18, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v19, v18 + v14, v20);
    *(v12 + 32) = sub_1001B38A0(v18);
    *(v12 + 40) = v21;
    *(v12 + 48) = v22;
    v23 = swift_allocObject();
    sub_100003E18(v23);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v23 + v14, v7);
    *(v12 + 56) = sub_1001B38A0(v23);
    *(v12 + 64) = v24;
    *(v12 + 72) = v25;
    v117 = v17;
    v26 = swift_allocObject();
    sub_100003E18(v26);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v26 + v14, v7);
    *(v12 + 80) = sub_1001B38A0(v26);
    *(v12 + 88) = v27;
    *(v12 + 96) = v28;
    v29 = v15;
    v118 = v14 + 2 * v15;
    v119 = v15;
    v30 = v16;
    v31 = swift_allocObject();
    v32 = sub_10001361C(v31, xmmword_100A2D320) + v14;
    v33 = *(a1 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v32[v29], v7);
    *(v12 + 104) = sub_1001B38A0(v31);
    *(v12 + 112) = v34;
    *(v12 + 120) = v35;
    v116 = v30;
    v36 = swift_allocObject();
    sub_1000056EC(v36);
    v38 = v37 + v14;
    v39 = v120;
    v40 = *(v120 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v38 + v119, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v41;
    *(v12 + 144) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v14;
    v46 = *(v39 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v47 = v119;
    sub_10031694C(v46 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v48;
    *(v12 + 168) = v49;
    v50 = swift_allocObject();
    sub_1000056EC(v50);
    v52 = v51 + v14;
    v53 = v120;
    v54 = *(v120 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v52 + v47;
    v56 = v47;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v57;
    *(v12 + 192) = v58;
    v59 = swift_allocObject();
    sub_100003E18(v59);
    v61 = v60 + v14;
    v62 = *(v53 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v14, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 200) = sub_1001B38A0(v59);
    *(v12 + 208) = v63;
    *(v12 + 216) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    v65 = sub_10022C350(&qword_100CAC7F0);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    sub_10001361C(v70, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v71, v70 + v66, v72);
    *(v12 + 32) = sub_1001B38A0(v70);
    *(v12 + 40) = v73;
    *(v12 + 48) = v74;
    sub_100016B54();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v70 + v66, v7);
    *(v12 + 56) = sub_1001B38A0(v70);
    *(v12 + 64) = v76;
    *(v12 + 72) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v70 + v66, v7);
    *(v12 + 80) = sub_1001B38A0(v70);
    *(v12 + 88) = v79;
    *(v12 + 96) = v80;
    sub_100016B54();
    v116 = v69;
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(v9, v82 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v83;
    *(v12 + 120) = v84;
    v85 = v67;
    v118 = v67;
    v86 = swift_allocObject();
    v87 = sub_10001361C(v86, xmmword_100A2D320);
    v117 = v9;
    v88 = v87 + v66;
    v89 = a1;
    v90 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v90 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v88[v85], v7);
    *(v12 + 128) = sub_1001B38A0(v86);
    *(v12 + 136) = v91;
    *(v12 + 144) = v92;
    v119 = v68;
    v93 = swift_allocObject();
    sub_100003E18(v93);
    v95 = v94 + v66;
    v96 = *(v89 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v95 + v118, v7);
    *(v12 + 152) = sub_1001B38A0(v93);
    *(v12 + 160) = v97;
    *(v12 + 168) = v98;
    v99 = swift_allocObject();
    sub_100003E18(v99);
    v101 = v100 + v66;
    v102 = *(v89 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v103 = v118;
    sub_10031694C(v102 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v101 + v118, v7);
    *(v12 + 176) = sub_1001B38A0(v99);
    *(v12 + 184) = v104;
    *(v12 + 192) = v105;
    v106 = sub_100017D80();
    *(v106 + 16) = 2;
    *(v106 + 24) = 4;
    v107 = *(v89 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v106 + v66 + v103, v7);
    *(v12 + 200) = sub_1001B38A0(v106);
    *(v12 + 208) = v108;
    *(v12 + 216) = v109;
    v110 = sub_100017D80();
    *(v110 + 16) = 2;
    *(v110 + 24) = 4;
    v111 = *(v120 + 16);
    sub_10031694C(v111 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v110 + v66, v7);
    sub_10031694C(v111 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v110 + v66 + v103, v7);
    *(v12 + 224) = sub_1001B38A0(v110);
    *(v12 + 232) = v112;
    *(v12 + 240) = v113;
    sub_1003169AC(v117, v7);
  }

  return v12;
}

void sub_100928398()
{
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BBC0;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3AEB0;
  v14 = v13;
  v15 = v12;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC10;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A2C3F0;
  v16 = v11;
  v17 = v10;
  v9[0] = xmmword_100A2C3F0;
  v9[1] = xmmword_100A3BC10;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A4C530;
  v18 = v9;
  v19 = v8;
  v7[0] = xmmword_100A3BBB0;
  v7[1] = xmmword_100A3BBC0;
  v6[0] = xmmword_100A3BB70;
  v6[1] = xmmword_100A3BBB0;
  v20 = v7;
  v21 = v6;
  v5[0] = xmmword_100A2C3F0;
  v5[1] = xmmword_100A3BC00;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BC20;
  v22 = v5;
  v23 = v4;
  v3[0] = xmmword_100A2C3F0;
  v3[1] = xmmword_100A3BC30;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC30;
  v24 = v3;
  v25 = v2;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC00;
  sub_10004ED88(v1, 0);
  qword_100D913A0 = v0;
}

void sub_10092849C()
{
  sub_100013C2C(xmmword_100A2C3F0, xmmword_100A3BC10);
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3AEB0;
  v23[0] = v0;
  v23[1] = v22;
  v21[0] = xmmword_100A3BBB0;
  v21[1] = xmmword_100A3BC30;
  v20[0] = xmmword_100A3BB70;
  v20[1] = v1;
  v23[2] = v21;
  v23[3] = v20;
  v19[0] = v1;
  v19[1] = xmmword_100A3BC30;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = v2;
  v23[4] = v19;
  v23[5] = v18;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A3BBB0;
  v16[0] = v1;
  v16[1] = xmmword_100A3BC20;
  v23[6] = v17;
  v23[7] = v16;
  v15[0] = v1;
  v15[1] = xmmword_100A3BB80;
  v14[0] = v1;
  v14[1] = xmmword_100A3BC50;
  v23[8] = v15;
  v23[9] = v14;
  v23[10] = &v13;
  v23[11] = &v12;
  v23[12] = &v11;
  sub_100554CA8(v23, v3, v4, v5, v6, v7, v8, v9, 0, 1, 6, 7, 0, 1, 8, 9, 0, 1, 5, 6);
  qword_100D913A8 = v10;
}

void sub_100928598()
{
  sub_100013C2C(xmmword_100A3BBD0, xmmword_100A3BC50);
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v16 = v0;
  v17 = v15;
  v14[0] = v1;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A2C3F0;
  v18 = v14;
  v19 = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = v2;
  v11[0] = xmmword_100A2D320;
  v11[1] = xmmword_100A3BB70;
  v20 = v12;
  v21 = v11;
  v10[0] = xmmword_100A3BC40;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BB70;
  v9[1] = xmmword_100A3BBB0;
  v22 = v10;
  v23 = v9;
  v8[0] = xmmword_100A3BC40;
  v8[1] = v2;
  v7[0] = xmmword_100A3BBB0;
  v7[1] = v2;
  v24 = v8;
  v25 = v7;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC40;
  v5[0] = v1;
  v5[1] = xmmword_100A3BC40;
  v26 = v6;
  v27 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = v1;
  sub_10004ED88(v4, v1);
  qword_100D913B0 = v3;
}

void sub_100928690()
{
  sub_100013C2C(xmmword_100A3BBD0, xmmword_100A3BC60);
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3F970;
  v23[0] = v0;
  v23[1] = v22;
  v21[0] = v1;
  v21[1] = xmmword_100A3BC40;
  v20[0] = xmmword_100A2D320;
  v20[1] = xmmword_100A3BBB0;
  v23[2] = v21;
  v23[3] = v20;
  v19[0] = xmmword_100A2C3F0;
  v19[1] = v2;
  v18[0] = xmmword_100A3BC40;
  v18[1] = xmmword_100A3BC40;
  v23[4] = v19;
  v23[5] = v18;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A3BBB0;
  v16[0] = xmmword_100A3BC40;
  v16[1] = v2;
  v23[6] = v17;
  v23[7] = v16;
  v15[0] = xmmword_100A3BBB0;
  v15[1] = v2;
  v14[0] = xmmword_100A3BC40;
  v14[1] = v1;
  v23[8] = v15;
  v23[9] = v14;
  v23[10] = &v13;
  v23[11] = &v12;
  v23[12] = &v11;
  sub_100554CA8(v23, v3, v4, v5, v6, v7, v8, v9, v1, *(&v1 + 1), 1, 2, 3, 4, 1, 2, v1, *(&v1 + 1), v1, *(&v1 + 1));
  qword_100D913B8 = v10;
}

void sub_100928784()
{
  sub_100013C2C(xmmword_100A3BC50, xmmword_100A3BC60);
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3F970;
  v17 = v0;
  v18 = v16;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC40;
  v14[0] = xmmword_100A41B90;
  v14[1] = xmmword_100A3BBB0;
  v19 = v15;
  v20 = v14;
  v13[0] = xmmword_100A3BBD0;
  v13[1] = v1;
  v9[1] = v1;
  v10 = xmmword_100A3BC90;
  v11 = 1;
  v12 = 4;
  v21 = v13;
  v22 = &v10;
  v8[1] = xmmword_100A3BBB0;
  v9[0] = xmmword_100A3BB70;
  v7[1] = v1;
  v8[0] = xmmword_100A3BB70;
  v23 = v9;
  v24 = v8;
  v6[1] = v1;
  v7[0] = v1;
  v5[1] = xmmword_100A3BC40;
  v6[0] = xmmword_100A3BC40;
  v25 = v7;
  v26 = v6;
  v4[1] = xmmword_100A3BBD0;
  v5[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BBD0;
  v4[0] = xmmword_100A3BC40;
  v27 = v5;
  v28 = v4;
  v3[0] = xmmword_100A3BBD0;
  sub_10004ED88(v3, 2);
  qword_100D913C0 = v2;
}

uint64_t sub_100928898(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003C38();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  v12 = type metadata accessor for LocationViewComponent();
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CA5008);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_100003C38();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v29 - v22;

  sub_1005D71C4(v24, a2);
  v29[1] = v25;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather29LocationNoAqiNhpConfiguration8_Storage_map, v15, type metadata accessor for LocationViewComponent);
  a2(v15);
  sub_1003169AC(v15, type metadata accessor for LocationViewComponent);
  sub_10001B350(v23, 0, 1, v4);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather29LocationNoAqiNhpConfiguration8_Storage_nextHourPrecipitation, v15, type metadata accessor for LocationViewComponent);
  a2(v15);
  sub_1003169AC(v15, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v23, v20, &qword_100CA5008);
  sub_100003E24();
  sub_10031694C(v11, v8, v26);
  type metadata accessor for NoAqiNhpContent._Storage(0);
  swift_allocObject();
  v27 = sub_1002D3C94();
  sub_1003169AC(v11, v15);
  sub_1000180EC(v23, &qword_100CA5008);
  return v27;
}

void sub_100928B50()
{
  type metadata accessor for CurrentWeather();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UVIndexComponentPreprocessedDataModel();
    if (v1 <= 0x3F)
    {
      sub_1000F4460();
      if (v2 <= 0x3F)
      {
        sub_1000F432C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100928C04()
{
  if ((static CurrentWeather.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UVIndexComponent();
  if ((sub_100341F20() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DayWeather();
  sub_100929ADC(&qword_100CB0C50, &type metadata accessor for DayWeather);
  sub_100929ADC(&qword_100CB0C58, &type metadata accessor for DayWeather);
  sub_100929ADC(&qword_100CB0C60, &type metadata accessor for DayWeather);
  if ((static Forecast.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HourWeather();
  sub_100929ADC(&qword_100CB0C20, &type metadata accessor for HourWeather);
  sub_100929ADC(&qword_100CB0C28, &type metadata accessor for HourWeather);
  sub_100929ADC(&qword_100CB0C30, &type metadata accessor for HourWeather);

  return static Forecast.== infix(_:_:)();
}

uint64_t sub_100928DFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v50 = sub_10022C350(&qword_100CA7030);
  sub_1000037C4();
  v47 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  v49 = &v45 - v5;
  v56 = sub_10022C350(&qword_100CA7000);
  sub_1000037C4();
  v52 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  v51 = &v45 - v8;
  v55 = type metadata accessor for UVIndexComponentPreprocessedDataModel();
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v53 = v14;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v57 = v17 - v16;
  v59 = sub_10022C350(&qword_100CE6660);
  sub_1000037C4();
  v54 = v18;
  sub_100003828();
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  v22 = type metadata accessor for UVIndexComponent();
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  sub_1000161C0(a1, a1[3]);
  sub_100929968();
  v58 = v21;
  v27 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    return sub_100006F14(a1);
  }

  v46 = v26;
  v28 = v56;
  v64 = 0;
  sub_100011030();
  sub_100929ADC(v29, v30);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v13;
  v32 = *(v53 + 32);
  v33 = v46;
  v60 = v31;
  v32(v46, v57);
  v63 = 1;
  sub_100006BAC();
  sub_100929ADC(v34, v35);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v57 = v22;
  sub_1009299BC(v12, v33 + *(v22 + 20));
  v62 = 2;
  sub_100008F34(&qword_100CD8D70, &qword_100CA7000);
  v36 = v51;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v33;
  v38 = a1;
  (*(v52 + 32))(v37 + *(v57 + 24), v36, v28);
  v61 = 3;
  sub_100008F34(&qword_100CD8D68, &qword_100CA7030);
  v39 = v49;
  v40 = v50;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41 = sub_10002356C();
  v42(v41);
  v43 = v46;
  (*(v47 + 32))(v46 + *(v57 + 28), v39, v40);
  sub_100929A20(v43, v48);
  sub_100006F14(v38);
  return sub_100929A84(v43, type metadata accessor for UVIndexComponent);
}

uint64_t sub_1009293D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000100AC8430 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F46796C696164 && a2 == 0xED00007473616365;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F46796C72756F68 && a2 == 0xEE00747361636572)
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

unint64_t sub_100929550(char a1)
{
  result = 0x57746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x726F46796C696164;
      break;
    case 3:
      result = 0x6F46796C72756F68;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1009295FC(void *a1)
{
  v3 = sub_10022C350(&qword_100CE6670);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  sub_1000161C0(a1, a1[3]);
  sub_100929968();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  type metadata accessor for CurrentWeather();
  sub_100011030();
  sub_100929ADC(v9, v10);
  sub_1000752F8();
  if (!v1)
  {
    type metadata accessor for UVIndexComponent();
    v19 = 1;
    type metadata accessor for UVIndexComponentPreprocessedDataModel();
    sub_100006BAC();
    sub_100929ADC(v11, v12);
    sub_1000752F8();
    v18 = 2;
    sub_10022C350(&qword_100CA7000);
    sub_10001D2C0();
    sub_100006F64(v13, &qword_100CA7000);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = 3;
    sub_10022C350(&qword_100CA7030);
    sub_10001D2C0();
    sub_100006F64(v14, &qword_100CA7030);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_100929894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1009293D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1009298BC(uint64_t a1)
{
  v2 = sub_100929968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009298F8(uint64_t a1)
{
  v2 = sub_100929968();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100929968()
{
  result = qword_100CE6668;
  if (!qword_100CE6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6668);
  }

  return result;
}

uint64_t sub_1009299BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UVIndexComponentPreprocessedDataModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100929A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UVIndexComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100929A84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100929ADC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for UVIndexComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100929C04()
{
  result = qword_100CE6678;
  if (!qword_100CE6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6678);
  }

  return result;
}

unint64_t sub_100929C5C()
{
  result = qword_100CE6680;
  if (!qword_100CE6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6680);
  }

  return result;
}

unint64_t sub_100929CB4()
{
  result = qword_100CE6688;
  if (!qword_100CE6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE6688);
  }

  return result;
}

void sub_100929D48()
{
  sub_10000C778();
  v1 = v0;
  v56 = v2;
  v60 = type metadata accessor for ListViewModel() - 8;
  __chkstk_darwin(v60);
  sub_1000037D8();
  v5 = v4 - v3;
  v6 = sub_10022C350(&qword_100CE6790);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = (&v45 - v8);
  v47 = sub_10022C350(&qword_100CE6798);
  sub_1000037C4();
  v48 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v46 = &v45 - v12;
  v50 = sub_10022C350(&qword_100CE67A0);
  sub_1000037C4();
  v51 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v57 = v15;
  v52 = sub_10022C350(&qword_100CE67A8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v49 = v17;
  v54 = sub_10022C350(&qword_100CE67B0);
  sub_1000037C4();
  v55 = v18;
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000039BC();
  v53 = v20;
  *v9 = static Alignment.center.getter();
  v9[1] = v21;
  v22 = sub_10022C350(&qword_100CE67B8);
  sub_10092A538(v0, v9 + *(v22 + 44));
  v23 = *(v0 + 184);
  LOBYTE(v64) = *(v0 + 176);
  v65 = v23;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  sub_10003BC54();
  v24 = sub_100036F60();
  sub_100031FF0(v24);
  v25 = sub_10023FBF4(&qword_100CE67C0, &qword_100CE6790);
  sub_10002041C();
  View.onChange<A>(of:initial:_:)();

  sub_100018198(v9, &qword_100CE6790);
  v59 = *(v0 + 8);
  sub_100988558();
  v26 = (v5 + *(v60 + 52));
  v45 = v5;
  v27 = *v26;
  v28 = v26[1];

  v58 = type metadata accessor for ListViewModel;
  sub_10093F8A8(v5, type metadata accessor for ListViewModel);
  v62 = v27;
  v63 = v28;
  sub_10003BC54();
  v29 = sub_100036F60();
  sub_100031FF0(v29);
  sub_10022C350(&qword_100CA6078);
  v64 = v6;
  v65 = &type metadata for Bool;
  v66 = v25;
  v67 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v30 = sub_10093F5B0();
  sub_10002041C();
  v31 = v47;
  v32 = v46;
  View.onChange<A>(of:initial:_:)();

  (*(v48 + 8))(v32, v31);
  LOBYTE(v32) = v59;
  sub_100988558();
  sub_100043B58();
  LOBYTE(v62) = v32;
  sub_10003BC54();
  v33 = sub_100036F60();
  sub_100031FF0(v33);
  v64 = v31;
  sub_1000A7DE4();
  v67 = v30;
  swift_getOpaqueTypeConformance2();
  sub_10002041C();
  v34 = v49;
  v35 = v50;
  v36 = v57;
  View.onChange<A>(of:initial:_:)();

  (*(v51 + 8))(v36, v35);
  sub_10003BC54();
  v37 = sub_100036F60();
  sub_100031FF0(v37);
  v38 = v52;
  v39 = (v34 + *(v52 + 36));
  *v39 = sub_10093F634;
  v39[1] = v37;
  v39[2] = 0;
  v39[3] = 0;
  Solarium.init()();
  v61 = v1;
  sub_10022C350(&qword_100CE67C8);
  v40 = sub_10093F644();
  v64 = v38;
  v65 = &type metadata for Bool;
  v66 = v40;
  v67 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v53;
  View.staticIf<A, B>(_:then:)();
  sub_100018198(v34, &qword_100CE67A8);
  LOBYTE(v36) = v59;
  sub_100988558();
  sub_100043B58();
  LOBYTE(v62) = v36;
  sub_10003BC54();
  v42 = sub_100036F60();
  sub_100031FF0(v42);
  v64 = v38;
  sub_1000A7DE4();
  v67 = v40;
  v68 = &protocol witness table for Solarium;
  v69 = OpaqueTypeConformance2;
  sub_10001758C();
  swift_getOpaqueTypeConformance2();
  sub_100355554();
  sub_10002041C();
  v43 = v54;
  View.onChange<A>(of:initial:_:)();

  (*(v55 + 8))(v41, v43);
  sub_10000536C();
}

uint64_t sub_10092A538@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v178 = a2;
  v177 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v177);
  v176 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v174 = *(v4 - 8);
  v175 = v4;
  __chkstk_darwin(v4);
  v173 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for ListViewModel() - 8;
  __chkstk_darwin(v161);
  v156 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for ContentStatusBanner();
  __chkstk_darwin(v144);
  v146 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v143 = &v138 - v9;
  v142 = sub_10022C350(&qword_100CC4158);
  __chkstk_darwin(v142);
  v141 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v140 = &v138 - v12;
  v139 = type metadata accessor for ListView.ListContentView(0);
  __chkstk_darwin(v139);
  v14 = (&v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10022C350(&qword_100CE67D8);
  v16 = *(v15 - 8);
  v148 = v15;
  v149 = v16;
  __chkstk_darwin(v15);
  v145 = &v138 - v17;
  v151 = sub_10022C350(&qword_100CE67E0);
  v154 = *(v151 - 8);
  __chkstk_darwin(v151);
  v147 = &v138 - v18;
  v19 = sub_10022C350(&qword_100CE67E8);
  v20 = *(v19 - 8);
  v157 = v19;
  v158 = v20;
  __chkstk_darwin(v19);
  v150 = &v138 - v21;
  v22 = sub_10022C350(&qword_100CE67F0);
  v23 = *(v22 - 8);
  v159 = v22;
  v160 = v23;
  __chkstk_darwin(v22);
  v152 = &v138 - v24;
  v25 = sub_10022C350(&qword_100CE67F8);
  v26 = *(v25 - 8);
  v162 = v25;
  v163 = v26;
  __chkstk_darwin(v25);
  v153 = &v138 - v27;
  v166 = sub_10022C350(&qword_100CE6800);
  __chkstk_darwin(v166);
  v155 = &v138 - v28;
  v29 = sub_10022C350(&qword_100CE6808);
  v30 = *(v29 - 8);
  v167 = v29;
  v168 = v30;
  __chkstk_darwin(v29);
  v165 = &v138 - v31;
  v169 = sub_10022C350(&qword_100CE6810) - 8;
  __chkstk_darwin(v169);
  v172 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v183 = &v138 - v34;
  v35 = sub_10022C350(&unk_100CE0EB0);
  __chkstk_darwin(v35);
  v171 = sub_10022C350(&qword_100CE6818);
  v185 = *(v171 - 8);
  __chkstk_darwin(v171);
  v170 = &v138 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v184 = &v138 - v38;
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  v192 = a1;
  v191 = a1;
  type metadata accessor for ListView.ListBackgroundView(0);
  type metadata accessor for ListView.ListGradientBackgroundView(0);
  *&v194[0] = &type metadata for Solarium;
  *(&v194[0] + 1) = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_10093F860(&qword_100CE6820, type metadata accessor for ListView.ListBackgroundView);
  sub_10093F860(&qword_100CE6828, type metadata accessor for ListView.ListGradientBackgroundView);
  StaticIf<>.init(_:then:else:)();
  v179 = a1;
  v39 = *(a1 + 16);
  v186 = *(a1 + 8);
  v187 = v39;
  v138 = *(a1 + 48);
  v40 = v139;
  v41 = *(v139 + 88);
  v180 = *(a1 + 32);
  sub_10042F370(a1 + 56, v14 + v41);
  v42 = *(a1 + 104);
  v181 = *(a1 + 96);
  v182 = v42;
  sub_10042F370(a1 + 112, v14 + v40[24]);
  *v14 = swift_getKeyPath();
  v164 = sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v43 = v40[5];
  *(v14 + v43) = swift_getKeyPath();
  sub_10022C350(&unk_100CE1000);
  swift_storeEnumTagMultiPayload();
  v44 = type metadata accessor for ListLocationViewModel(0);
  v45 = v140;
  sub_10001B350(v140, 1, 1, v44);
  v46 = v141;
  sub_1000302D8(v45, v141, &qword_100CC4158);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  State.init(wrappedValue:)();
  sub_100018198(v45, &qword_100CC4158);
  v47 = v14 + v40[7];
  *v47 = sub_100319FB8;
  *(v47 + 1) = 0;
  v47[16] = 0;
  v48 = v40;
  v49 = v14 + v40[8];
  LOBYTE(v193[0]) = 0;
  State.init(wrappedValue:)();
  v50 = *(&v194[0] + 1);
  *v49 = v194[0];
  *(v49 + 1) = v50;
  sub_10001B350(v45, 1, 1, v44);
  sub_1000302D8(v45, v46, &qword_100CC4158);
  State.init(wrappedValue:)();
  sub_100018198(v45, &qword_100CC4158);
  v51 = (v14 + v48[10]);
  v193[0] = 0x3FECCCCCCCCCCCCDLL;
  State.init(wrappedValue:)();
  v52 = *(&v194[0] + 1);
  *v51 = *&v194[0];
  v51[1] = v52;
  v53 = (v14 + v48[11]);
  v193[0] = 0;
  State.init(wrappedValue:)();
  v54 = *(&v194[0] + 1);
  *v53 = *&v194[0];
  v53[1] = v54;
  v55 = v143;
  v56 = *(v144 + 24);
  static WeatherClock.date.getter();
  v57 = type metadata accessor for Date();
  sub_10001B350(v55 + v56, 0, 1, v57);
  *v55 = 1;
  *(v55 + 8) = xmmword_100A3A770;
  sub_100941A20(v55, v146);
  State.init(wrappedValue:)();
  sub_10093F8A8(v55, type metadata accessor for ContentStatusBanner);
  v58 = v14 + v48[13];
  LOBYTE(v193[0]) = 0;
  State.init(wrappedValue:)();
  v59 = *(&v194[0] + 1);
  *v58 = v194[0];
  *(v58 + 1) = v59;
  v60 = v48[14];
  v193[0] = 0;
  sub_10022C350(&qword_100CE6830);
  State.init(wrappedValue:)();
  *(v14 + v60) = v194[0];
  v61 = v14 + v48[15];
  LOBYTE(v193[0]) = 1;
  State.init(wrappedValue:)();
  v62 = *(&v194[0] + 1);
  *v61 = v194[0];
  *(v61 + 1) = v62;
  *(v14 + v48[16]) = 0x406CC00000000000;
  *(v14 + v48[17]) = 0;
  v63 = (v14 + v48[18]);
  sub_10022C350(&qword_100CA4C50);
  v146 = &unk_100AA1480;
  sub_10023FBF4(&qword_100CA4C58, &qword_100CA4C50);
  *v63 = ObservedObject.init(wrappedValue:)();
  v63[1] = v64;
  *(v14 + v48[19]) = v187;
  *(v14 + v48[20]) = v180;
  *(v14 + v48[21]) = v138;
  v65 = (v14 + v48[23]);
  v66 = v182;
  *v65 = v181;
  v65[1] = v66;
  Solarium.init()();
  v67 = v179;
  v190 = v179;
  v189 = v179;
  v68 = sub_10022C350(&qword_100CE6838);
  v69 = sub_10093F860(&qword_100CE6840, type metadata accessor for ListView.ListContentView);
  *&v194[0] = v48;
  *(&v194[0] + 1) = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = v145;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_10093F8A8(v14, type metadata accessor for ListView.ListContentView);
  v71 = *(v67 + 168);
  v194[0] = *(v67 + 152);
  *&v194[1] = v71;
  sub_10022C350(&qword_100CE1068);
  State.wrappedValue.getter();
  sub_10093F568(v67, v194);
  v72 = swift_allocObject();
  memcpy((v72 + 16), v194, 0xC0uLL);
  *&v194[0] = v48;
  *(&v194[0] + 1) = &type metadata for Solarium;
  *&v194[1] = v68;
  *(&v194[1] + 1) = v68;
  *&v194[2] = v69;
  *(&v194[2] + 1) = &protocol witness table for Solarium;
  *&v194[3] = OpaqueTypeConformance2;
  *(&v194[3] + 1) = OpaqueTypeConformance2;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v147;
  v75 = v148;
  View.onChange<A>(of:initial:_:)();

  v76 = v70;
  v77 = v75;
  (*(v149 + 8))(v76, v75);
  v78 = v156;
  sub_100988558();
  v79 = (v78 + *(v161 + 48));
  v80 = *v79;
  v81 = v79[1];

  sub_10093F8A8(v78, type metadata accessor for ListViewModel);
  v193[0] = v80;
  v193[1] = v81;
  sub_10093F568(v67, v194);
  v82 = swift_allocObject();
  memcpy((v82 + 16), v194, 0xC0uLL);
  *&v194[0] = v77;
  *(&v194[0] + 1) = &type metadata for String;
  *&v194[1] = v73;
  *(&v194[1] + 1) = &protocol witness table for String;
  v83 = swift_getOpaqueTypeConformance2();
  v84 = v150;
  v85 = v151;
  View.onChange<A>(of:initial:_:)();

  (*(v154 + 8))(v74, v85);
  v86 = [objc_opt_self() currentDevice];
  [v86 userInterfaceIdiom];

  *&v194[0] = v85;
  *(&v194[0] + 1) = &type metadata for String;
  *&v194[1] = v83;
  *(&v194[1] + 1) = &protocol witness table for String;
  v87 = swift_getOpaqueTypeConformance2();
  v88 = v152;
  v89 = v157;
  View.searchVibrancyEnabled(_:)();
  (*(v158 + 8))(v84, v89);
  *&v194[0] = v89;
  *(&v194[0] + 1) = v87;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = v153;
  v92 = v159;
  View.disableAutocorrection(_:)();
  (*(v160 + 8))(v88, v92);
  v93 = v179;
  sub_10092C4D4();
  v188 = v93;
  *&v194[0] = v92;
  *(&v194[0] + 1) = v90;
  swift_getOpaqueTypeConformance2();
  v94 = v155;
  v95 = v162;
  View.alert(isPresented:content:)();

  (*(v163 + 8))(v91, v95);
  sub_10093F568(v93, v194);
  v96 = swift_allocObject();
  memcpy((v96 + 16), v194, 0xC0uLL);
  sub_10093F568(v93, v193);
  v97 = swift_allocObject();
  memcpy((v97 + 16), v193, 0xC0uLL);
  v98 = v94 + *(sub_10022C350(&qword_100CE6848) + 36);
  *v98 = sub_10094159C;
  *(v98 + 8) = v96;
  *(v98 + 16) = sub_1009415A4;
  *(v98 + 24) = v97;
  *(v98 + 32) = sub_1001CF3D0;
  *(v98 + 40) = 0;
  *(v98 + 48) = 0;
  v99 = *(sub_10022C350(&qword_100CE6850) + 36);
  v100 = type metadata accessor for Location.Identifier();
  sub_10001B350(v94 + v99, 1, 2, v100);
  v101 = (v94 + *(sub_10022C350(&qword_100CE6858) + 36));
  *v101 = sub_10092C838;
  v101[1] = 0;
  v101[2] = 0;
  v101[3] = 0;
  v102 = v166;
  v103 = (v94 + *(v166 + 36));
  *v103 = 0;
  v103[1] = 0;
  v103[2] = sub_10092C844;
  v103[3] = 0;
  v104 = v173;
  static AccessibilityChildBehavior.contain.getter();
  v105 = sub_1009415AC();
  v106 = v165;
  v107 = v102;
  View.accessibilityElement(children:)();
  (*(v174 + 8))(v104, v175);
  sub_100018198(v94, &qword_100CE6800);
  LocalizedStringKey.init(stringLiteral:)();
  v108 = Text.init(_:tableName:bundle:comment:)();
  v110 = v109;
  LOBYTE(v94) = v111;
  *&v194[0] = v107;
  *(&v194[0] + 1) = v105;
  swift_getOpaqueTypeConformance2();
  v112 = v183;
  v113 = v167;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v108, v110, v94 & 1);

  (*(v168 + 8))(v106, v113);
  type metadata accessor for AutomationViewInfo(0);
  v114 = v176;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v115 = v112 + *(sub_10022C350(&qword_100CE6880) + 36);
  v116 = type metadata accessor for AutomationInfoProperty();
  sub_100941A20(v114, v115 + *(v116 + 24));
  sub_10093F8A8(v114, type metadata accessor for AutomationInfo);
  *v115 = 0;
  *(v115 + 8) = 0xE000000000000000;
  *(v115 + 16) = swift_getKeyPath();
  *(v115 + 24) = 0;
  v186 = static Alignment.center.getter();
  v118 = v117;
  v119 = (v112 + *(v169 + 44));
  *v119 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v120 = type metadata accessor for ListView.VFXPlaybackCoordinatorView(0);
  v121 = (v119 + *(v120 + 20));

  v122 = v181;
  swift_unknownObjectRetain();
  sub_10022C350(&qword_100CA4B60);
  sub_10023FBF4(&qword_100CA4B68, &qword_100CA4B60);
  *v121 = ObservedObject.init(wrappedValue:)();
  v121[1] = v123;
  v124 = (v119 + *(v120 + 24));
  v125 = v182;
  *v124 = v122;
  v124[1] = v125;
  v126 = (v119 + *(sub_10022C350(&qword_100CE6888) + 36));
  v127 = v185;
  *v126 = v186;
  v126[1] = v118;
  v128 = *(v127 + 16);
  v130 = v170;
  v129 = v171;
  v128(v170, v184, v171);
  v131 = v183;
  v132 = v172;
  sub_1000302D8(v183, v172, &qword_100CE6810);
  v133 = v178;
  v128(v178, v130, v129);
  v134 = sub_10022C350(&qword_100CE6890);
  sub_1000302D8(v132, &v133[*(v134 + 48)], &qword_100CE6810);
  sub_100018198(v131, &qword_100CE6810);
  v135 = *(v185 + 8);
  v135(v184, v129);
  sub_100018198(v132, &qword_100CE6810);
  return (v135)(v130, v129);
}

uint64_t sub_10092BC88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  *a2 = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for ListView.ListBackgroundView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  *(a2 + v4[6]) = v3;
  *(a2 + v4[7]) = 0x3FC3333333333333;
}

uint64_t sub_10092BD3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  *a2 = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  *(a2 + *(type metadata accessor for ListView.ListGradientBackgroundView(0) + 20)) = v3;
}

uint64_t sub_10092BDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v26 = a1;
  v4 = type metadata accessor for SearchFieldPlacement.NavigationBarDrawerDisplayMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SearchFieldPlacement();
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v28 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 168);
  v30 = *(a2 + 152);
  v31 = v9;
  sub_10022C350(&qword_100CE1068);
  State.projectedValue.getter();
  v23 = v29;
  v10 = *(a2 + 184);
  LOBYTE(v30) = *(a2 + 176);
  *(&v30 + 1) = v10;
  sub_10022C350(&qword_100CA5A80);
  State.projectedValue.getter();
  v22 = v29;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    static SearchFieldPlacement.NavigationBarDrawerDisplayMode.always.getter();
    static SearchFieldPlacement.navigationBarDrawer(displayMode:)();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    static SearchFieldPlacement.automatic.getter();
  }

  LocalizedStringKey.init(stringLiteral:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v21 = v16;
  v18 = v17 & 1;
  type metadata accessor for ListView.ListContentView(0);
  sub_10093F860(&qword_100CE6840, type metadata accessor for ListView.ListContentView);
  v19 = v28;
  View.searchable(text:isPresented:placement:prompt:)();
  sub_10010CD64(v13, v15, v18);

  return (*(v24 + 8))(v19, v27);
}

uint64_t sub_10092C124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v22 = a3;
  v4 = type metadata accessor for SearchFieldPlacement.NavigationBarDrawerDisplayMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SearchFieldPlacement();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v19 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 168);
  v27 = *(a2 + 152);
  v28 = v9;
  sub_10022C350(&qword_100CE1068);
  State.projectedValue.getter();
  v21 = v26;
  v10 = *(a2 + 184);
  LOBYTE(v27) = *(a2 + 176);
  *(&v27 + 1) = v10;
  sub_10022C350(&qword_100CA5A80);
  State.projectedValue.getter();
  v20 = v26;
  static SearchFieldPlacement.NavigationBarDrawerDisplayMode.always.getter();
  static SearchFieldPlacement.navigationBarDrawer(displayMode:)();
  (*(v5 + 8))(v7, v4);
  LocalizedStringKey.init(stringLiteral:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v18 = v14;
  LOBYTE(v5) = v15 & 1;
  type metadata accessor for ListView.ListContentView(0);
  sub_10093F860(&qword_100CE6840, type metadata accessor for ListView.ListContentView);
  v16 = v19;
  View.searchable(text:isPresented:placement:prompt:)();
  sub_10010CD64(v11, v13, v5);

  return (*(v23 + 8))(v16, v25);
}

uint64_t sub_10092C470()
{

  sub_10022C350(&qword_100CE1068);
  return State.wrappedValue.setter();
}

uint64_t sub_10092C4D4()
{
  sub_10093F568(v0, v6);
  type metadata accessor for MainActor();
  v1 = static MainActor.shared.getter();
  v2 = swift_allocObject();
  v2[2] = v1;
  v2[3] = &protocol witness table for MainActor;
  memcpy(v2 + 4, v6, 0xC0uLL);
  sub_10093F568(v0, v6);
  v3 = static MainActor.shared.getter();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, v6, 0xC0uLL);
  Binding.init(get:set:)();
  return v6[0];
}

uint64_t sub_10092C5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v4 - 8);
  v6 = &__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100988558();
  v7 = v6[10];
  sub_10093F8A8(v6, type metadata accessor for ListViewModel);
  sub_10093F568(a1, __src);
  v8 = swift_allocObject();
  memcpy(v8 + 16, __src, 0xC0uLL);
  v8[208] = v7;
  sub_1003A9460(v7 + 3, LocationSearchEntityFromStringResolver.init(), 0, sub_100941A98, v8, a2);
}

uint64_t sub_10092C738(uint64_t a1)
{
  v2 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 32);
  sub_100988558();
  v6 = sub_1000161C0((v5 + 32), *(v5 + 56));
  sub_1003C1D34(v4, *v6);
  return sub_10093F8A8(v4, type metadata accessor for ListViewModel);
}

void sub_10092C850(const char *a1)
{
  if (qword_100CA26A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000703C(v2, qword_100D90A48);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_10092C968()
{

  sub_10022C350(&qword_100CE1068);
  return State.wrappedValue.setter();
}

uint64_t sub_10092CA44()
{
  v0 = type metadata accessor for ListViewModel();
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100988558();
  v4 = v3[*(v1 + 88)];
  sub_10093F8A8(v3, type metadata accessor for ListViewModel);
  return sub_10092CAF4(v4);
}

uint64_t sub_10092CAF4(char a1)
{
  v2 = type metadata accessor for ListLocationViewModel(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CC4158);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        return result;
      }

      sub_100988558();
      sub_1000302D8(&v14[*(v9 + 32)], v8, &qword_100CC4158);
      if (sub_100024D10(v8, 1, v2) == 1)
      {
        v17 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1009423C8(v8, v5);
        sub_10022C350(&qword_100CD1308);
        v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v17 = swift_allocObject();
        *(v17 + 1) = xmmword_100A2C3F0;
        sub_1009423C8(v5, v17 + v18);
      }

      v32 = v17;

      sub_10035DDEC(v19);
      v20 = v32;
      sub_10093F8A8(v14, type metadata accessor for ListViewModel);
      v21 = v20[2];

      if (v21)
      {
        return result;
      }

      v22 = *(v30 + 184);
      LOBYTE(v32) = *(v30 + 176);
      v33 = v22;
      sub_10022C350(&qword_100CA5A80);
      result = State.wrappedValue.getter();
      if (v31)
      {
        return result;
      }

      sub_100988558();
      v23 = v11[*(v9 + 84)];
      result = sub_10093F8A8(v11, type metadata accessor for ListViewModel);
      if (v23)
      {
        return result;
      }

      if (LocationAuthorizationState.rawValue.getter(a1) == 0x6465696E6564 && v24 == 0xE600000000000000)
      {
        goto LABEL_23;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        return sub_100650D84();
      }

      if (LocationAuthorizationState.rawValue.getter(a1) == 0x7463697274736572 && v27 == 0xEA00000000006465)
      {
LABEL_23:

        return sub_100650D84();
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        return sub_100650D84();
      }

      return result;
    default:
  }
}

uint64_t sub_10092CFB4()
{
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  sub_10022C350(&qword_100CE67A8);
  sub_10093F644();
  return View.onChange<A>(of:initial:_:)();
}

uint64_t sub_10092D080(uint64_t a1, char *a2)
{
  v3 = type metadata accessor for ListViewModel();
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  sub_100988558();
  LOBYTE(a2) = v6[*(v4 + 92)];
  result = sub_10093F8A8(v6, type metadata accessor for ListViewModel);
  if ((a2 & 1) == 0)
  {
    if (LocationAuthorizationState.rawValue.getter(v7) == 0x7265746544746F6ELL && v9 == 0xED000064656E696DLL)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        sub_10092CAF4(v7);
        return sub_100650D7C();
      }
    }
  }

  return result;
}

void *sub_10092D1B4@<X0>(void *a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v29 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10022C350(&qword_100CA64E8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v27[-v7];
  v9 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v9 - 8);
  v31 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v27[-v12];
  __chkstk_darwin(v14);
  v16 = &v27[-v15];
  v30 = v1;
  sub_10009D114();
  v17 = v3;
  (*(v3 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v2);
  sub_10001B350(v13, 0, 1, v2);
  v18 = *(v6 + 56);
  sub_1000302D8(v16, v8, &qword_100CA6028);
  sub_1000302D8(v13, &v8[v18], &qword_100CA6028);
  if (sub_100024D10(v8, 1, v2) == 1)
  {
    sub_100018198(v13, &qword_100CA6028);
    sub_100018198(v16, &qword_100CA6028);
    if (sub_100024D10(&v8[v18], 1, v2) == 1)
    {
      sub_100018198(v8, &qword_100CA6028);
LABEL_9:
      v22 = static Alignment.center.getter();
      v24 = v23;
      sub_10092D6B0(v30, v36);
      memcpy(v33, v36, 0x91uLL);
      memcpy(v34, v36, 0x91uLL);
      sub_1000302D8(v33, v35, &qword_100CE6B60);
      sub_100018198(v34, &qword_100CE6B60);
      memcpy(v35, v33, 0x91uLL);
      v25 = static Edge.Set.all.getter();
      v36[0] = v22;
      v36[1] = v24;
      memcpy(&v36[2], v35, 0x91uLL);
      BYTE1(v36[20]) = v25;
      LocationSearchEntityFromStringResolver.init()();
      memcpy(__dst, v36, 0xA2uLL);
      return memcpy(v32, __dst, 0xA2uLL);
    }

    goto LABEL_6;
  }

  v19 = v31;
  sub_1000302D8(v8, v31, &qword_100CA6028);
  if (sub_100024D10(&v8[v18], 1, v2) == 1)
  {
    sub_100018198(v13, &qword_100CA6028);
    sub_100018198(v16, &qword_100CA6028);
    (*(v17 + 8))(v19, v2);
LABEL_6:
    sub_100018198(v8, &qword_100CA64E8);
    goto LABEL_7;
  }

  v20 = v29;
  (*(v17 + 32))(v29, &v8[v18], v2);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v17 + 8);
  v21(v20, v2);
  sub_100018198(v13, &qword_100CA6028);
  sub_100018198(v16, &qword_100CA6028);
  v21(v19, v2);
  sub_100018198(v8, &qword_100CA6028);
  if (v28)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_100942374(__dst);
  return memcpy(v32, __dst, 0xA2uLL);
}

void *sub_10092D6B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = (a1 + *(type metadata accessor for ListView.ListBackgroundView(0) + 20));
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v9, 0);
    (*(v5 + 8))(v7, v4);
    if (v23 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1009423B0(v21);
    memcpy(v15, v21, sizeof(v15));
    sub_10022C350(&qword_100CE6B70);
    sub_10023FBF4(&qword_100CE6B78, &qword_100CE6B70);
    _ConditionalContent<>.init(storage:)();
    return memcpy(a2, __dst, 0x91uLL);
  }

  v23 = v9 & 1;
  if (v9)
  {
    goto LABEL_5;
  }

LABEL_3:

  sub_100281158(v21);
  v10 = static Edge.Set.all.getter();
  memcpy(v17, v21, 0x80uLL);
  v17[128] = v10;
  static Color.black.getter();
  v11 = Color.opacity(_:)();

  memcpy(v16, v17, sizeof(v16));
  memcpy(v18, v17, 0x81uLL);
  memcpy(v19, v17, 0x81uLL);
  sub_1000302D8(v17, v21, &qword_100CE6B68);

  sub_1000302D8(v18, v21, &qword_100CE6B68);
  memcpy(v20, v16, 0x81uLL);
  sub_100018198(v20, &qword_100CE6B68);
  memcpy(v21, v19, 0x88uLL);
  v21[17] = v11;
  sub_1009423A4(v21);
  memcpy(v14, v21, sizeof(v14));
  sub_10022C350(&qword_100CE6B70);
  sub_10023FBF4(&qword_100CE6B78, &qword_100CE6B70);
  _ConditionalContent<>.init(storage:)();

  sub_100018198(v17, &qword_100CE6B68);
  memcpy(__dst, v15, sizeof(__dst));
  return memcpy(a2, __dst, 0x91uLL);
}

uint64_t sub_10092DA74@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = sub_10022C350(&qword_100CE6B80);
  __chkstk_darwin(v36);
  v34 = (&v32 - v2);
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA64E8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  v35 = v1;
  sub_10009D114();
  (*(v4 + 104))(v15, enum case for UserInterfaceSizeClass.compact(_:), v3);
  sub_10001B350(v15, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_1000302D8(v18, v9, &qword_100CA6028);
  sub_1000302D8(v15, &v9[v19], &qword_100CA6028);
  if (sub_100024D10(v9, 1, v3) == 1)
  {
    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    if (sub_100024D10(&v9[v19], 1, v3) == 1)
    {
      sub_100018198(v9, &qword_100CA6028);
      v20 = v37;
LABEL_8:
      v26 = static Alignment.center.getter();
      v27 = v34;
      *v34 = v26;
      *(v27 + 8) = v28;
      v29 = sub_10022C350(&qword_100CE6B88);
      sub_10092DF70(v27 + *(v29 + 44));
      v30 = static Edge.Set.all.getter();
      v22 = v36;
      *(v27 + *(v36 + 36)) = v30;
      sub_10011C0F0(v27, v20, &qword_100CE6B80);
      v21 = 0;
      return sub_10001B350(v20, v21, 1, v22);
    }
  }

  else
  {
    sub_1000302D8(v9, v12, &qword_100CA6028);
    if (sub_100024D10(&v9[v19], 1, v3) != 1)
    {
      v23 = v33;
      (*(v4 + 32))(v33, &v9[v19], v3);
      sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v4 + 8);
      v25(v23, v3);
      sub_100018198(v15, &qword_100CA6028);
      sub_100018198(v18, &qword_100CA6028);
      v25(v12, v3);
      sub_100018198(v9, &qword_100CA6028);
      v20 = v37;
      if ((v24 & 1) == 0)
      {
        v21 = 1;
        v22 = v36;
        return sub_10001B350(v20, v21, 1, v22);
      }

      goto LABEL_8;
    }

    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    (*(v4 + 8))(v12, v3);
  }

  sub_100018198(v9, &qword_100CA64E8);
  v21 = 1;
  v22 = v36;
  v20 = v37;
  return sub_10001B350(v20, v21, 1, v22);
}

uint64_t sub_10092DF70@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v22 = type metadata accessor for SkyBackgroundGradient();
  v1 = *(v22 - 8);
  __chkstk_darwin(v22);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WeatherConditionBackgroundModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CE6B90) - 8;
  __chkstk_darwin(v23);
  v24 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (v21 - v10);
  type metadata accessor for ListView.ListGradientBackgroundView(0);

  sub_10022C350(&qword_100CA4BD8);
  sub_10023FBF4(&qword_100CA4BE0, &qword_100CA4BD8);
  *v11 = ObservedObject.init(wrappedValue:)();
  v11[1] = v12;
  sub_1001108E0();
  WeatherConditionBackgroundModel.gradient.getter();
  v13 = *(v5 + 8);
  v21[0] = v5 + 8;
  v13(v7, v4);
  v21[1] = SkyBackgroundGradient.gradient()();
  v14 = *(v1 + 8);
  v15 = v22;
  v14(v3, v22);
  sub_1001108E0();
  WeatherConditionBackgroundModel.gradient.getter();
  v13(v7, v4);
  SkyBackgroundGradient.gradient()();
  v14(v3, v15);
  v16 = v11 + *(type metadata accessor for CompactGradientView() + 20);
  AnimatedGradient.init(baseGradient:animatedGradient:showAnimatedGradient:)();
  *&v16[*(sub_10022C350(&qword_100CACB08) + 28)] = 0;
  *(v11 + *(v23 + 44)) = static Edge.Set.all.getter();
  static Color.black.getter();
  v17 = Color.opacity(_:)();

  v18 = v24;
  sub_1000302D8(v11, v24, &qword_100CE6B90);
  v19 = v25;
  sub_1000302D8(v18, v25, &qword_100CE6B90);
  *(v19 + *(sub_10022C350(&qword_100CE6B98) + 48)) = v17;

  sub_100018198(v11, &qword_100CE6B90);

  return sub_100018198(v18, &qword_100CE6B90);
}

uint64_t sub_10092E35C()
{
  v0 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_100007074(v0, qword_100CE6698);
  sub_10000703C(v0, qword_100CE6698);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.VFX.animatedBackgrounds.getter();
  Settings.VFX.AnimatedBackgrounds.listAnimationKind.getter();

  SettingReader.read<A>(_:)();
}

uint64_t sub_10092E404@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v107 = a1;
  v106 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v106);
  v105 = &v79 - v3;
  v108 = type metadata accessor for ListLocationViewModel(0);
  v80 = *(v108 - 8);
  __chkstk_darwin(v108);
  v81 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CC4158);
  __chkstk_darwin(v5 - 8);
  v90 = (&v79 - v6);
  v116 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v116);
  v104 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = (&v79 - v9);
  v112 = type metadata accessor for ListView.ListContentView(0);
  v109 = *(v112 - 8);
  v85 = *(v109 + 8);
  __chkstk_darwin(v112);
  v86 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CE6BA0);
  __chkstk_darwin(v11);
  v13 = (&v79 - v12);
  v88 = sub_10022C350(&qword_100CE6BA8);
  v114 = *(v88 - 8);
  __chkstk_darwin(v88);
  v115 = &v79 - v14;
  v110 = sub_10022C350(&qword_100CE6BB0);
  __chkstk_darwin(v110);
  v87 = &v79 - v15;
  v91 = sub_10022C350(&qword_100CE6BB8);
  __chkstk_darwin(v91);
  v111 = &v79 - v16;
  v95 = sub_10022C350(&qword_100CE6BC0);
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v79 - v17;
  v102 = sub_10022C350(&qword_100CE6BC8);
  v96 = *(v102 - 8);
  __chkstk_darwin(v102);
  v94 = &v79 - v18;
  v103 = sub_10022C350(&qword_100CE6BD0);
  v100 = *(v103 - 8);
  __chkstk_darwin(v103);
  v99 = &v79 - v19;
  v101 = sub_10022C350(&qword_100CE6BD8);
  __chkstk_darwin(v101);
  v97 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v98 = &v79 - v22;
  *v13 = static Alignment.center.getter();
  v13[1] = v23;
  v24 = sub_10022C350(&qword_100CE6BE0);
  sub_10092F4F4(v2, v13 + *(v24 + 44));
  Solarium.init()();
  v118 = v2;
  v117 = v2;
  v113 = v2;
  v82 = sub_10022C350(&qword_100CE6BE8);
  v25 = sub_10022C350(&qword_100CE6BF0);
  v26 = sub_10023FBF4(&qword_100CE6BF8, &qword_100CE6BA0);
  v27 = v11;
  v125 = v11;
  v126 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v125 = v25;
  v126 = OpaqueTypeConformance2;
  v83 = v25;
  v78 = swift_getOpaqueTypeConformance2();
  v29 = v27;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_100018198(v13, &qword_100CE6BA0);
  v84 = type metadata accessor for ListView.ListContentView;
  v30 = v86;
  sub_100941A20(v2, v86);
  v31 = v109[80];
  v32 = (v31 + 16) & ~v31;
  v33 = v85 + v32;
  v34 = swift_allocObject();
  v85 = type metadata accessor for ListView.ListContentView;
  sub_1009423C8(v30, v34 + v32);
  v125 = v29;
  v126 = &type metadata for Solarium;
  v127 = v82;
  v128 = v83;
  v129 = v26;
  v130 = &protocol witness table for Solarium;
  v131 = v78;
  v132 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = v87;
  v36 = v88;
  v37 = v115;
  View.onAppear(perform:)();
  v38 = v116;
  v39 = v113;

  (*(v114 + 8))(v37, v36);
  sub_100941A20(v39, v30);
  v114 = v31;
  v40 = v33;
  v41 = swift_allocObject();
  v115 = v32;
  sub_1009423C8(v30, v41 + v32);
  sub_100942B0C();
  View.onDisappear(perform:)();
  v42 = v90;

  sub_100018198(v35, &qword_100CE6BB0);
  v43 = v39;
  v44 = *(v39 + *(v112 + 72) + 8);
  v45 = v89;
  v110 = v44;
  sub_100988558();
  v46 = v45;
  sub_1000302D8(v45 + *(v38 + 32), v42, &qword_100CC4158);
  if (sub_100024D10(v42, 1, v108) == 1)
  {
    v47 = _swiftEmptyArrayStorage;
  }

  else
  {
    v48 = v81;
    sub_1009423C8(v42, v81);
    sub_10022C350(&qword_100CD1308);
    v49 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v47 = swift_allocObject();
    *(v47 + 1) = xmmword_100A2C3F0;
    sub_1009423C8(v48, v47 + v49);
  }

  v125 = v47;

  sub_10035DDEC(v50);
  v51 = v125;
  v90 = type metadata accessor for ListViewModel;
  sub_10093F8A8(v46, type metadata accessor for ListViewModel);
  v125 = v51;
  v89 = type metadata accessor for ListView.ListContentView;
  sub_100941A20(v43, v30);
  v109 = v40;
  v52 = swift_allocObject();
  v108 = type metadata accessor for ListView.ListContentView;
  sub_1009423C8(v30, &v115[v52]);
  v53 = sub_10022C350(&qword_100CE6C08);
  v54 = sub_100942D10();
  v55 = sub_100942D9C();
  v56 = v92;
  v57 = v91;
  v58 = v111;
  View.onChange<A>(of:initial:_:)();

  sub_100018198(v58, &qword_100CE6BB8);
  v59 = v104;
  sub_100988558();
  v60 = v59 + *(v116 + 96);
  v121 = *v60;
  v122 = *(v60 + 16);
  sub_100533400(&v121, &v125);
  sub_10093F8A8(v59, type metadata accessor for ListViewModel);
  v119 = v121;
  v120 = v122;
  sub_100941A20(v113, v30);
  v61 = swift_allocObject();
  sub_1009423C8(v30, &v115[v61]);
  v125 = v57;
  v126 = v53;
  v127 = v54;
  v128 = v55;
  v111 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_100942EB4();
  v64 = v94;
  v65 = v95;
  View.onChange<A>(of:initial:_:)();

  v123 = v119;
  v124 = v120;
  sub_100942F08(&v123);
  (*(v93 + 8))(v56, v65);
  sub_100988558();
  v66 = v105;
  sub_1000302D8(v59 + *(v116 + 88), v105, &qword_100CA5010);
  sub_10093F8A8(v59, v90);
  sub_100941A20(v113, v30);
  v67 = swift_allocObject();
  sub_1009423C8(v30, &v115[v67]);
  v125 = v65;
  v126 = &type metadata for ListTipGroupViewModel;
  v127 = v62;
  v128 = v63;
  v116 = swift_getOpaqueTypeConformance2();
  v68 = sub_10010B5B0();
  v69 = v99;
  v70 = v102;
  v71 = v106;
  View.onChange<A>(of:initial:_:)();

  sub_100018198(v66, &qword_100CA5010);
  (*(v96 + 8))(v64, v70);
  type metadata accessor for LocationViewCollisionOptions();
  sub_10093F860(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions);
  StateObject.wrappedValue.getter();
  v125 = v70;
  v126 = v71;
  v127 = v116;
  v128 = v68;
  swift_getOpaqueTypeConformance2();
  v72 = v97;
  v73 = v103;
  View.environmentObject<A>(_:)();

  (*(v100 + 8))(v69, v73);
  v74 = sub_100942F88();
  v75 = v98;
  v76 = v101;
  sub_1000833D8(v72, v101, v74);
  sub_100018198(v72, &qword_100CE6BD8);
  sub_1000833D8(v75, v76, v74);
  return sub_100018198(v75, &qword_100CE6BD8);
}

uint64_t sub_10092F4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v81 = a2;
  v82 = sub_10022C350(&qword_100CE6C40);
  v63 = *(v82 - 8);
  __chkstk_darwin(v82);
  v62 = &v61 - v3;
  v76 = type metadata accessor for ListViewModel() - 8;
  __chkstk_darwin(v76);
  v75 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE6C48);
  __chkstk_darwin(v5 - 8);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v71 = &v61 - v8;
  IsDeviceSlowViewInputPredicate = type metadata accessor for IsDeviceSlowViewInputPredicate();
  __chkstk_darwin(IsDeviceSlowViewInputPredicate);
  v67 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10022C350(&qword_100CE6C50);
  v74 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v61 - v10;
  v79 = sub_10022C350(&qword_100CE6C58);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v70 = &v61 - v13;
  v83 = type metadata accessor for KeyEquivalent();
  v66 = *(v83 - 1);
  __chkstk_darwin(v83);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ListView.ListContentView(0);
  v17 = *(v16 - 8);
  v68 = v16 - 8;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = sub_10022C350(&qword_100CE6C60);
  __chkstk_darwin(v19);
  v21 = &v61 - v20;
  v65 = sub_10022C350(&qword_100CE6C68);
  v22 = *(v65 - 8);
  __chkstk_darwin(v65);
  v24 = &v61 - v23;
  v25 = sub_10022C350(&qword_100CE6C70);
  __chkstk_darwin(v25 - 8);
  v84 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v61 - v28;
  sub_100941A20(a1, &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v31 = swift_allocObject();
  sub_1009423C8(&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  Button.init(action:label:)();
  static KeyEquivalent.delete.getter();
  EventModifiers.init(rawValue:)();
  v32 = sub_100943304();
  View.keyboardShortcut(_:modifiers:)();
  (*(v66 + 8))(v15, v83);
  sub_100018198(v21, &qword_100CE6C60);
  v88 = v19;
  v89 = v32;
  swift_getOpaqueTypeConformance2();
  v83 = v29;
  v33 = v65;
  View.accessibilityHidden(_:)();
  (*(v22 + 8))(v24, v33);
  static ViewInputPredicate<>.deviceIsSlow.getter();
  v34 = v64;
  v87 = v64;
  v86 = v64;
  v66 = sub_10022C350(&qword_100CE6C90);
  sub_10022C350(&qword_100CE6C98);
  sub_10093F860(&qword_100CE6CA0, &type metadata accessor for IsDeviceSlowViewInputPredicate);
  sub_1009433E8();
  v35 = sub_10022E824(&qword_100CE6CB0);
  v36 = sub_10022E824(&qword_100CC3AF8);
  v37 = sub_100943550();
  v38 = sub_10023FBF4(&qword_100CC3B00, &qword_100CC3AF8);
  v88 = v35;
  v89 = v36;
  v39 = v71;
  v90 = &type metadata for Text;
  v91 = v37;
  v92 = v38;
  v93 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v40 = v69;
  StaticIf<>.init(_:then:else:)();
  Solarium.init()();
  v85 = v34;
  sub_10022C350(&qword_100CE6D60);
  sub_100943C98();
  sub_100943E18();
  v41 = v70;
  v42 = v73;
  View.staticIf<A, B>(_:then:)();
  (*(v74 + 8))(v40, v42);
  v43 = v75;
  sub_100988558();
  LODWORD(v21) = *(v43 + *(v76 + 56));
  sub_10093F8A8(v43, type metadata accessor for ListViewModel);
  v44 = 1;
  if (v21 == 1)
  {
    v45 = Solarium.init()();
    __chkstk_darwin(v45);
    sub_10022C350(&qword_100CE17C0);
    sub_10022C350(&qword_100CE6D80);
    sub_10023FBF4(&qword_100CE17D0, &qword_100CE17C0);
    sub_100943EC8();
    v46 = v62;
    StaticIf<>.init(_:then:else:)();
    (*(v63 + 32))(v39, v46, v82);
    v44 = 0;
  }

  v47 = v39;
  sub_10001B350(v39, v44, 1, v82);
  v48 = v84;
  sub_1000302D8(v83, v84, &qword_100CE6C70);
  v49 = v78;
  v50 = *(v78 + 16);
  v51 = v77;
  v52 = v41;
  v53 = v41;
  v54 = v79;
  v50(v77, v53, v79);
  v55 = v39;
  v56 = v80;
  sub_1000302D8(v55, v80, &qword_100CE6C48);
  v57 = v81;
  sub_1000302D8(v48, v81, &qword_100CE6C70);
  v58 = sub_10022C350(&qword_100CE6D78);
  v50((v57 + *(v58 + 48)), v51, v54);
  sub_1000302D8(v56, v57 + *(v58 + 64), &qword_100CE6C48);
  sub_100018198(v47, &qword_100CE6C48);
  v59 = *(v49 + 8);
  v59(v52, v54);
  sub_100018198(v83, &qword_100CE6C70);
  sub_100018198(v56, &qword_100CE6C48);
  v59(v51, v54);
  return sub_100018198(v84, &qword_100CE6C70);
}

uint64_t sub_100930158(uint64_t a1)
{
  v2 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CC4158);
  __chkstk_darwin(v5 - 8);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v39 - v8;
  __chkstk_darwin(v9);
  v45 = &v39 - v10;
  v46 = type metadata accessor for ListLocationViewModel(0);
  v11 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v42 = &v39 - v15;
  v49 = sub_100930680();
  v50 = v16;
  v51 = v17;
  v52 = v18;
  sub_10022C350(&qword_100CE6F00);
  Binding.wrappedValue.getter();
  v19 = v48;
  if (v48)
  {
    v20 = a1;
    v21 = v47;

    v40 = type metadata accessor for ListView.ListContentView(0);
    v41 = v20;
    sub_100988558();
    v22 = *&v4[*(v2 + 36)];

    result = sub_10093F8A8(v4, type metadata accessor for ListViewModel);
    v24 = 0;
    v25 = *(v22 + 16);
    while (1)
    {
      if (v25 == v24)
      {

        v29 = 1;
        v30 = v41;
        v32 = v45;
        v31 = v46;
        goto LABEL_16;
      }

      if (v24 >= *(v22 + 16))
      {
        __break(1u);
        return result;
      }

      sub_100941A20(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24, v13);
      if (LocationModel.id.getter() == v21 && v19 == v26)
      {

        goto LABEL_15;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        break;
      }

      result = sub_10093F8A8(v13, type metadata accessor for ListLocationViewModel);
      ++v24;
    }

LABEL_15:

    v32 = v45;
    sub_1009423C8(v13, v45);
    v29 = 0;
    v30 = v41;
    v31 = v46;
LABEL_16:
    sub_10001B350(v32, v29, 1, v31);
    if (sub_100024D10(v32, 1, v31) == 1)
    {
      return sub_100018198(v32, &qword_100CC4158);
    }

    else
    {
      v33 = v42;
      sub_1009423C8(v32, v42);
      v34 = v43;
      sub_100941A20(v33, v43);
      sub_10001B350(v34, 0, 1, v31);
      v35 = v40;
      sub_1000302D8(v34, v44, &qword_100CC4158);
      sub_10022C350(&qword_100CE6930);
      State.wrappedValue.setter();
      sub_100018198(v34, &qword_100CC4158);
      v36 = (v30 + *(v35 + 32));
      v37 = *v36;
      v38 = *(v36 + 1);
      LOBYTE(v49) = v37;
      v50 = v38;
      LOBYTE(v47) = 1;
      sub_10022C350(&qword_100CA5A80);
      State.wrappedValue.setter();
      return sub_10093F8A8(v33, type metadata accessor for ListLocationViewModel);
    }
  }

  else
  {
  }
}

uint64_t sub_100930680()
{
  v1 = type metadata accessor for ListView.ListContentView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_100941A20(v0, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_1009423C8(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_100941A20(v0, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_1009423C8(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5);
  sub_10022C350(&qword_100CE6EF8);
  Binding.init(get:set:)();
  return v10;
}

uint64_t sub_100930860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  type metadata accessor for ListView.ListContentView(0);
  sub_100988558();
  v13 = v12[v4[12]];
  sub_10093F8A8(v12, type metadata accessor for ListViewModel);
  if (v13 != 1 || (sub_100988558(), v14 = v9[v4[13]], sub_10093F8A8(v9, type metadata accessor for ListViewModel), v15 = 0.0, (v14 & 1) == 0) && (sub_100988558(), v16 = v6[v4[14]], sub_10093F8A8(v6, type metadata accessor for ListViewModel), (v16 & 1) == 0))
  {
    v15 = 1.0;
  }

  v17 = sub_10022C350(&qword_100CE6C50);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  result = sub_10022C350(&qword_100CE6D60);
  *(a2 + *(result + 36)) = v15;
  return result;
}

uint64_t sub_100930A4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&unk_100CE1840);
  *(a1 + 80) = sub_10071E9E8;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *a1 = v2;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, &v4, &unk_100CAF270);
  if (v5)
  {
    sub_100013188(&v4, a1 + 24);
    *(a1 + 8) = sub_100947240;
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

void *sub_100930B64@<X0>(_BYTE *a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA64E8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  sub_10093B554(v17, v18, v19, v20, v21, v22, v23, v24, v34, v35, v36, v37, v38, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6]);
  (*(v2 + 104))(v13, enum case for UserInterfaceSizeClass.compact(_:), v1);
  sub_10001B350(v13, 0, 1, v1);
  v25 = *(v5 + 56);
  sub_1000302D8(v16, v7, &qword_100CA6028);
  sub_1000302D8(v13, &v7[v25], &qword_100CA6028);
  if (sub_100024D10(v7, 1, v1) != 1)
  {
    sub_1000302D8(v7, v10, &qword_100CA6028);
    if (sub_100024D10(&v7[v25], 1, v1) != 1)
    {
      v28 = &v7[v25];
      v29 = v34;
      (*(v2 + 32))(v34, v28, v1);
      sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v2 + 8);
      v31(v29, v1);
      sub_100018198(v13, &qword_100CA6028);
      sub_100018198(v16, &qword_100CA6028);
      v31(v10, v1);
      result = sub_100018198(v7, &qword_100CA6028);
      if (v30)
      {
        goto LABEL_9;
      }

LABEL_7:
      v27 = v35;
      v35[96] = 0;
      v27[4] = 0u;
      v27[5] = 0u;
      v27[2] = 0u;
      v27[3] = 0u;
      *v27 = 0u;
      v27[1] = 0u;
      return result;
    }

    sub_100018198(v13, &qword_100CA6028);
    sub_100018198(v16, &qword_100CA6028);
    (*(v2 + 8))(v10, v1);
LABEL_6:
    result = sub_100018198(v7, &qword_100CA64E8);
    goto LABEL_7;
  }

  sub_100018198(v13, &qword_100CA6028);
  sub_100018198(v16, &qword_100CA6028);
  if (sub_100024D10(&v7[v25], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_100018198(v7, &qword_100CA6028);
LABEL_9:
  v32 = sub_10022C350(&unk_100CE1840);
  __src[10] = sub_10071E9E8;
  __src[11] = 0;
  LOBYTE(__src[12]) = 0;
  __src[0] = v32;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, __dst, &unk_100CAF270);
  if (*(&__dst[1] + 1))
  {
    sub_100013188(__dst, &__src[3]);
    __src[1] = sub_100947240;
    __src[2] = 0;
    v33 = Dictionary.init(dictionaryLiteral:)();
    __src[8] = _swiftEmptyArrayStorage;
    __src[9] = v33;
    memcpy(__dst, __src, 0x61uLL);
    return memcpy(v35, __dst, 0x61uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1009310C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v53 = a2;
  v54 = type metadata accessor for ToolbarTitleDisplayMode();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA64E8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v46 - v8;
  v10 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  v19 = sub_10022C350(&qword_100CE6BF0);
  v48 = *(v19 - 8);
  v49 = v19;
  __chkstk_darwin(v19);
  sub_10093B554(v21, v22, v23, v24, v25, v26, v27, v28, v46, &v46 - v20, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  (*(v4 + 104))(v15, enum case for UserInterfaceSizeClass.regular(_:), v3);
  sub_10001B350(v15, 0, 1, v3);
  v29 = *(v7 + 56);
  sub_1000302D8(v18, v9, &qword_100CA6028);
  sub_1000302D8(v15, &v9[v29], &qword_100CA6028);
  if (sub_100024D10(v9, 1, v3) == 1)
  {
    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    if (sub_100024D10(&v9[v29], 1, v3) == 1)
    {
      sub_100018198(v9, &qword_100CA6028);
      v30 = 0;
      v31 = 0;
      v32 = 0xE000000000000000;
      v33 = v47;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v9, v12, &qword_100CA6028);
  if (sub_100024D10(&v9[v29], 1, v3) == 1)
  {
    sub_100018198(v15, &qword_100CA6028);
    sub_100018198(v18, &qword_100CA6028);
    (*(v4 + 8))(v12, v3);
LABEL_6:
    sub_100018198(v9, &qword_100CA64E8);
    v33 = v47;
LABEL_7:
    LocalizedStringKey.init(stringLiteral:)();
    v30 = Text.init(_:tableName:bundle:comment:)();
    v32 = v34;
    v31 = v35;
    goto LABEL_8;
  }

  v43 = v46;
  (*(v4 + 32))(v46, &v9[v29], v3);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v4 + 8);
  v45(v43, v3);
  sub_100018198(v15, &qword_100CA6028);
  sub_100018198(v18, &qword_100CA6028);
  v45(v12, v3);
  sub_100018198(v9, &qword_100CA6028);
  v33 = v47;
  if ((v44 & 1) == 0)
  {
    goto LABEL_7;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0xE000000000000000;
LABEL_8:
  v36 = sub_10022C350(&qword_100CE6BA0);
  v37 = sub_10023FBF4(&qword_100CE6BF8, &qword_100CE6BA0);
  View.navigationTitle(_:)();
  sub_10010CD64(v30, v32, v31 & 1);

  v38 = [objc_opt_self() currentDevice];
  v39 = [v38 userInterfaceIdiom];

  v40 = v51;
  if (v39)
  {
    static ToolbarTitleDisplayMode.inline.getter();
  }

  else
  {
    static ToolbarTitleDisplayMode.inlineLarge.getter();
  }

  v55 = v36;
  v56 = v37;
  swift_getOpaqueTypeConformance2();
  v41 = v49;
  View.toolbarTitleDisplayMode(_:)();
  (*(v52 + 8))(v40, v54);
  return (*(v48 + 8))(v33, v41);
}

uint64_t sub_1009317C8()
{
  LocalizedStringKey.init(stringLiteral:)();
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  sub_10022C350(&qword_100CE6BA0);
  sub_10023FBF4(&qword_100CE6BF8, &qword_100CE6BA0);
  View.navigationTitle(_:)();
  sub_10010CD64(v0, v2, v4 & 1);
}

uint64_t sub_1009318F4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v35 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListView.ListContentView(0);
  v31[0] = *(v5 - 8);
  __chkstk_darwin(v5);
  v31[1] = v6;
  v32 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScenePhase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v31 - v12;
  v14 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2B20 != -1)
  {
    swift_once();
  }

  v17 = Namespace.wrappedValue.getter();
  swift_beginAccess();
  sub_100131E40(v40, v17);
  swift_endAccess();
  sub_100988558();
  v18 = &v16[*(v14 + 40)];
  v19 = *v18;
  v20 = v18[1];

  sub_10093F8A8(v16, type metadata accessor for ListViewModel);
  sub_100650CCC(v19, v20);

  sub_1000E74DC();
  (*(v8 + 104))(v10, enum case for ScenePhase.active(_:), v7);
  LOBYTE(v19) = static ScenePhase.== infix(_:_:)();
  v21 = *(v8 + 8);
  v21(v10, v7);
  result = (v21)(v13, v7);
  if (v19)
  {
    sub_10000C70C(0, &qword_100CB4670);
    v23 = static OS_dispatch_queue.main.getter();
    v24 = v32;
    sub_100941A20(a1, v32);
    v25 = (*(v31[0] + 80) + 16) & ~*(v31[0] + 80);
    v26 = swift_allocObject();
    sub_1009423C8(v24, v26 + v25);
    aBlock[4] = sub_1009432AC;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000742F0;
    aBlock[3] = &unk_100C768A0;
    v27 = _Block_copy(aBlock);

    v28 = v33;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10093F860(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680);
    sub_10023FBF4(&qword_100CD81D0, &qword_100CB4680);
    v29 = v35;
    v30 = v38;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v37 + 8))(v29, v30);
    return (*(v34 + 8))(v28, v36);
  }

  return result;
}

uint64_t sub_100931EFC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v2 - 8);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for ContentStatusBanner();
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v19 = type metadata accessor for ListView.ListContentView(0);
  v35 = *(a1 + v19[18] + 8);
  sub_100988558();
  v36 = v7;
  sub_1000302D8(&v12[*(v7 + 88)], v6, &qword_100CA5010);
  sub_10093F8A8(v12, type metadata accessor for ListViewModel);
  if (sub_100024D10(v6, 1, v13) == 1)
  {
    sub_10022C350(&qword_100CC9F58);
    v20 = a1;
    State.wrappedValue.getter();
    if (sub_100024D10(v6, 1, v13) != 1)
    {
      sub_100018198(v6, &qword_100CA5010);
    }
  }

  else
  {
    v20 = a1;
    sub_1009423C8(v6, v18);
  }

  sub_100941A20(v18, v15);
  sub_10022C350(&qword_100CC9F58);
  State.wrappedValue.setter();
  sub_10093F8A8(v18, type metadata accessor for ContentStatusBanner);
  sub_100988558();
  v21 = v37;
  sub_1000302D8(&v9[*(v36 + 88)], v37, &qword_100CA5010);
  sub_10093F8A8(v9, type metadata accessor for ListViewModel);
  v22 = sub_100024D10(v21, 1, v13);
  sub_100018198(v21, &qword_100CA5010);
  v23 = (v20 + v19[13]);
  v24 = *v23;
  v25 = *(v23 + 1);
  LOBYTE(v39) = v24;
  v40 = v25;
  LOBYTE(v38) = v22 != 1;
  if (v22 == 1)
  {
    v26 = 0.9;
  }

  else
  {
    v26 = 1.0;
  }

  if (v22 == 1)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = 1.0;
  }

  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.setter();
  v28 = (v20 + v19[10]);
  v29 = *v28;
  v30 = v28[1];
  v38 = v26;
  v39 = v29;
  v40 = v30;
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.setter();
  v31 = (v20 + v19[11]);
  v32 = *v31;
  v33 = v31[1];
  v38 = v27;
  v39 = v32;
  v40 = v33;
  return State.wrappedValue.setter();
}

uint64_t sub_100932330(uint64_t a1)
{
  v2 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2B20 != -1)
  {
    swift_once();
  }

  type metadata accessor for ListView.ListContentView(0);
  Namespace.wrappedValue.getter();
  swift_beginAccess();
  sub_1008AF928();
  swift_endAccess();
  if (qword_100CA2B28 != -1)
  {
    swift_once();
  }

  v6 = sub_10000703C(v2, qword_100CE6698);
  (*(v3 + 104))(v5, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:), v2);
  LOBYTE(v6) = sub_1001497E4(v6, v5);
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) != 0 && !*(off_100CE6690 + 2))
  {
    v8 = sub_10093251C(a1);
    sub_100932A60(v8);
  }

  return result;
}

void *sub_10093251C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC4158);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for ListLocationViewModel(0);
  v41 = *(v14 - 8);
  __chkstk_darwin(v14);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v37 = &v36 - v17;
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  __chkstk_darwin(v21);
  v23 = &v36 - v22;
  v43 = _swiftEmptyArrayStorage;
  v24 = *(type metadata accessor for ListView.ListContentView(0) + 72);
  v39 = a1;
  v40 = *(a1 + v24 + 8);
  sub_100988558();
  v42 = v8;
  sub_1000302D8(&v13[*(v8 + 32)], v7, &qword_100CC4158);
  sub_10093F8A8(v13, type metadata accessor for ListViewModel);
  if (sub_100024D10(v7, 1, v14) == 1)
  {
    sub_100018198(v7, &qword_100CC4158);
    v25 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1009423C8(v7, v23);
    sub_100941A20(v23, v20);
    sub_10069FFC4();
    v25 = v26;
    v27 = v26[2];
    if (v27 >= v26[3] >> 1)
    {
      sub_10069FFC4();
      v25 = v33;
    }

    sub_10093F8A8(v23, type metadata accessor for ListLocationViewModel);
    v25[2] = v27 + 1;
    sub_1009423C8(v20, v25 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v27);
    v43 = v25;
  }

  sub_10022C350(&qword_100CE6930);
  State.wrappedValue.getter();
  if (sub_100024D10(v4, 1, v14) == 1)
  {
    sub_100018198(v4, &qword_100CC4158);
  }

  else
  {
    v28 = v37;
    sub_1009423C8(v4, v37);
    v29 = v38;
    sub_100941A20(v28, v38);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10069FFC4();
      v25 = v34;
    }

    v30 = v25[2];
    if (v30 >= v25[3] >> 1)
    {
      sub_10069FFC4();
      v25 = v35;
    }

    sub_10093F8A8(v28, type metadata accessor for ListLocationViewModel);
    v25[2] = v30 + 1;
    sub_1009423C8(v29, v25 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v30);
    v43 = v25;
  }

  sub_100988558();
  v31 = *&v10[*(v42 + 36)];

  sub_10093F8A8(v10, type metadata accessor for ListViewModel);
  sub_10035DDEC(v31);
  return v43;
}

void sub_100932A60(uint64_t a1)
{
  v44 = type metadata accessor for WeatherConditionBackgroundOptions();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for BackgroundAnimationData();
  v4 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BackgroundAnimationKind();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for VFXEffectViewID();
  v10 = *(v48 - 8);
  __chkstk_darwin(v48);
  v40 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v33 - v13;
  v14 = type metadata accessor for ListLocationViewModel(0);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = v2;
    v21 = *(v15 + 72);
    v22 = v4;
    v23 = (v7 + 88);
    v46 = enum case for BackgroundAnimationKind.vfx(_:);
    v36 = (v7 + 8);
    v37 = v10;
    v35 = (v22 + 8);
    v34 = (v20 + 8);
    v45 = (v10 + 32);
    v24 = _swiftEmptyArrayStorage;
    v38 = v9;
    v39 = v6;
    do
    {
      sub_100941A20(v19, v17);
      if (WeatherConditionBackgroundModel.canShowAnimatedBackground.getter())
      {
        WeatherConditionBackgroundModel.animationKind.getter();
        v25 = (*v23)(v9, v6);
        if (v25 == v46)
        {
          v26 = v41;
          WeatherConditionBackgroundModel.animationData.getter();
          v27 = v43;
          BackgroundAnimationData.options.getter();
          (*v35)(v26, v42);
          v28 = v40;
          WeatherConditionBackgroundOptions.effectViewID.getter();
          (*v34)(v27, v44);
          sub_10093F8A8(v17, type metadata accessor for ListLocationViewModel);
          v29 = *v45;
          (*v45)(v47, v28, v48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1006A0338();
            v24 = v31;
          }

          v30 = *(v24 + 2);
          if (v30 >= *(v24 + 3) >> 1)
          {
            sub_1006A0338();
            v24 = v32;
          }

          *(v24 + 2) = v30 + 1;
          v29(&v24[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30], v47, v48);
          v9 = v38;
          v6 = v39;
        }

        else
        {
          sub_10093F8A8(v17, type metadata accessor for ListLocationViewModel);
          (*v36)(v9, v6);
        }
      }

      else
      {
        sub_10093F8A8(v17, type metadata accessor for ListLocationViewModel);
      }

      v19 += v21;
      --v18;
    }

    while (v18);
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  if (*(v24 + 2))
  {
    type metadata accessor for ListView.ListContentView(0);
    swift_getObjectType();
    dispatch thunk of WeatherConditionBackgroundManagerType.addRemovalRequests(for:)();

    WeatherConditionBackgroundManagerType.executeRequests()();
  }

  else
  {
  }
}

uint64_t sub_100932FFC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v45 = a3;
  v5 = type metadata accessor for ListLocationViewModel(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v45 - v9;
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = *a1;
  v14 = *a2;
  v15 = *(v14 + 16);
  v16 = _swiftEmptyArrayStorage;
  v47 = v6;
  if (v15)
  {
    v49 = v13;
    v51 = _swiftEmptyArrayStorage;
    sub_10000369C(0, v15, 0);
    v16 = v51;
    v17 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v18 = *(v6 + 72);
    do
    {
      sub_100941A20(v17, v12);
      v19 = LocationModel.id.getter();
      v21 = v20;
      sub_10093F8A8(v12, type metadata accessor for ListLocationViewModel);
      v51 = v16;
      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        sub_10000369C((v22 > 1), v23 + 1, 1);
        v16 = v51;
      }

      v16[2] = v23 + 1;
      v24 = &v16[2 * v23];
      v24[4] = v19;
      v24[5] = v21;
      v17 += v18;
      --v15;
    }

    while (v15);
    v13 = v49;
  }

  result = sub_1000D409C(v16);
  v26 = result;
  v27 = 0;
  v48 = *(v13 + 16);
  v28 = result + 56;
  v29 = _swiftEmptyArrayStorage;
LABEL_8:
  while (v27 != v48)
  {
    if (v27 >= *(v13 + 16))
    {
      __break(1u);
      return result;
    }

    v30 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v31 = *(v47 + 72);
    v49 = v27 + 1;
    v32 = v13;
    sub_100941A20(v13 + v30 + v31 * v27, v50);
    v33 = LocationModel.id.getter();
    v35 = v34;
    if (*(v26 + 16))
    {
      v36 = v33;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v37 = Hasher._finalize()();
      v38 = ~(-1 << *(v26 + 32));
      while (1)
      {
        v39 = v37 & v38;
        if (((*(v28 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
        {
          break;
        }

        v40 = (*(v26 + 48) + 16 * v39);
        if (*v40 != v36 || v40[1] != v35)
        {
          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v37 = v39 + 1;
          if ((v42 & 1) == 0)
          {
            continue;
          }
        }

        result = sub_10093F8A8(v50, type metadata accessor for ListLocationViewModel);
        v27 = v49;
        v13 = v32;
        goto LABEL_8;
      }
    }

    sub_1009423C8(v50, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1006A804C();
      v29 = v52;
    }

    v13 = v32;
    v44 = v29[2];
    if (v44 >= v29[3] >> 1)
    {
      sub_1006A804C();
      v29 = v52;
    }

    v29[2] = v44 + 1;
    result = sub_1009423C8(v46, v29 + v30 + v44 * v31);
    v27 = v49;
  }

  if (v29[2])
  {
    sub_100932A60(v29);
  }
}

void sub_10093341C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v29 = *a2;
  v30 = *(a2 + 2);
  v27 = *(a3 + *(type metadata accessor for ListView.ListContentView(0) + 56));
  sub_10022C350(&qword_100CE6C38);
  State.wrappedValue.getter();
  if (v25[0])
  {

    if (qword_100CA27B0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000703C(v4, qword_100D90D68);
    sub_100533400(&v29, &v27);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    sub_100942F08(&v29);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136446210;
      v27 = v29;
      v28 = v30;
      sub_100533400(&v29, v25);
      v9 = String.init<A>(describing:)();
      v11 = sub_100078694(v9, v10, &v26);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "TipGroupViewModel changes (ignored): %{public}s", v7, 0xCu);
      sub_100006F14(v8);
    }
  }

  else
  {
    if (qword_100CA27B0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000703C(v12, qword_100D90D68);
    sub_100533400(&v29, &v27);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    sub_100942F08(&v29);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446210;
      v27 = v29;
      v28 = v30;
      sub_100533400(&v29, v25);
      v17 = String.init<A>(describing:)();
      v19 = sub_100078694(v17, v18, &v26);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "TipGroupViewModel changes: %{public}s", v15, 0xCu);
      sub_100006F14(v16);
    }

    v20 = &_mh_execute_header;
    if (!BYTE4(v29))
    {
      v20 = 0;
    }

    v21 = v29 | v20;
    v22 = 0x10000000000;
    if (!BYTE5(v29))
    {
      v22 = 0;
    }

    v23 = v21 | v22;
    v24 = 0x100000000000000;
    if (!BYTE7(v29))
    {
      v24 = 0;
    }

    sub_100933790(a3, v23 | (BYTE6(v29) << 48) | v24, SBYTE8(v29), v30);
  }
}

uint64_t sub_100933790(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v8 = a2 >> 24;
  v9 = HIWORD(a2);
  v10 = type metadata accessor for TipGroup.Priority();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 104))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for TipGroup.Priority.firstAvailable(_:), v11);
  v18 = BYTE2(a2);
  v17 = a2;
  v19 = v8;
  v20 = BYTE4(a2) & 1;
  v21 = BYTE5(a2) & 1;
  v22 = v9;
  v23 = HIBYTE(a2) & 1;
  v24 = a3;
  v25 = a4;
  type metadata accessor for TipGroup();
  swift_allocObject();
  v14 = TipGroup.init(_:_:)();
  v27 = *(a1 + *(type metadata accessor for ListView.ListContentView(0) + 56));
  v26 = v14;
  sub_10022C350(&qword_100CE6C38);
  return State.wrappedValue.setter();
}

uint64_t sub_100933928(unint64_t a1, char a2)
{
  v3 = HIDWORD(a1);
  v4 = HIWORD(a1);
  v8 = &type metadata for NotificationsOptInListTip;
  v9 = sub_100235784();
  v7[0] = BYTE1(v3) & 1;
  v7[1] = v4;
  v7[2] = HIBYTE(v3) & 1;
  static Tips.GroupBuilder.buildPartialBlock(first:)();
  sub_100006F14(v7);
  v8 = &type metadata for NotificationsResubscriptionListTip;
  v9 = sub_100235A48();
  static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100006F14(v7);
  v8 = &type metadata for PredictedLocationsNotificationOptInListTip;
  v9 = sub_1002359F4();
  v7[0] = a2;
  static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100006F14(v7);
  v8 = &type metadata for HomeAndWorkAddedTip;
  v9 = sub_100235AF0();
  static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100006F14(v7);
  v8 = &type metadata for HomeAndWorkUpdatedTip;
  v9 = sub_100235A9C();
  static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100006F14(v7);
  v8 = &type metadata for HomeUpdatedTip;
  v9 = sub_1002359A0();
  static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100006F14(v7);
  v8 = &type metadata for WorkUpdatedTip;
  v9 = sub_10023594C();
  v5 = static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100006F14(v7);
  return v5;
}

uint64_t sub_100933ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ListView.ListContentView(0);
  v23 = *(v11 - 8);
  v12 = *(v23 + 64);
  __chkstk_darwin(v11 - 8);
  static Animation.linear(duration:)();
  Transaction.init(animation:)();
  v27 = a3;
  v28 = a2;
  withTransaction<A>(_:_:)();

  v13 = type metadata accessor for ContentStatusBanner();
  if (sub_100024D10(a2, 1, v13) == 1)
  {
    v14 = static Animation.timingCurve(_:_:_:_:duration:)();
    __chkstk_darwin(v14);
    *(&v23 - 2) = a3;
    withAnimation<A>(_:_:)();

    v15 = static Animation.timingCurve(_:_:_:_:duration:)();
    __chkstk_darwin(v15);
    *(&v23 - 2) = a3;
    withAnimation<A>(_:_:)();

    if (qword_100CA2078 != -1)
    {
      swift_once();
    }

    v16 = Animation.delay(_:)();
    __chkstk_darwin(v16);
    *(&v23 - 2) = a3;
    withAnimation<A>(_:_:)();
  }

  else
  {
    if (qword_100CA2070 != -1)
    {
      swift_once();
    }

    v18 = Transaction.init(animation:)();
    __chkstk_darwin(v18);
    *(&v23 - 2) = a3;
    withTransaction<A>(_:_:)();

    sub_10000C70C(0, &qword_100CB4670);
    v19 = static OS_dispatch_queue.main.getter();
    sub_100941A20(a3, &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v21 = swift_allocObject();
    sub_1009423C8(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    aBlock[4] = sub_1009431EC;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000742F0;
    aBlock[3] = &unk_100C76850;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10093F860(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680);
    sub_10023FBF4(&qword_100CD81D0, &qword_100CB4680);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v26 + 8))(v7, v5);
    return (*(v24 + 8))(v10, v25);
  }
}

uint64_t sub_100934114(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for ContentStatusBanner();
  __chkstk_darwin(v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v13 - v10;
  sub_1000302D8(a2, v5, &qword_100CA5010);
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    type metadata accessor for ListView.ListContentView(0);
    sub_10022C350(&qword_100CC9F58);
    State.wrappedValue.getter();
    if (sub_100024D10(v5, 1, v6) != 1)
    {
      sub_100018198(v5, &qword_100CA5010);
    }
  }

  else
  {
    sub_1009423C8(v5, v11);
  }

  type metadata accessor for ListView.ListContentView(0);
  sub_100941A20(v11, v8);
  sub_10022C350(&qword_100CC9F58);
  State.wrappedValue.setter();
  return sub_10093F8A8(v11, type metadata accessor for ContentStatusBanner);
}

uint64_t sub_10093433C()
{
  v0 = sub_1000038D8();
  type metadata accessor for ListView.ListContentView(v0);
  sub_10022C350(&qword_100CA5A80);
  return State.wrappedValue.setter();
}

uint64_t sub_1009343BC()
{
  if (qword_100CA2070 != -1)
  {
    swift_once();
  }

  v0 = Animation.delay(_:)();
  __chkstk_darwin(v0);
  withAnimation<A>(_:_:)();

  static Animation.timingCurve(_:_:_:_:duration:)();
  Animation.delay(_:)();

  __chkstk_darwin(v1);
  withAnimation<A>(_:_:)();
}

uint64_t sub_10093452C()
{
  v0 = sub_1000038D8();
  v1 = type metadata accessor for ListView.ListContentView(v0);
  sub_10002547C(*(v1 + 40));
  sub_10022C350(&qword_100CAD708);
  return State.wrappedValue.setter();
}

uint64_t sub_100934598()
{
  v0 = sub_1000038D8();
  v1 = type metadata accessor for ListView.ListContentView(v0);
  sub_10002547C(*(v1 + 44));
  sub_10022C350(&qword_100CAD708);
  return State.wrappedValue.setter();
}

uint64_t sub_100934604@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Location.Identifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListView.ListContentView(0);
  sub_1000E7B34();
  sub_10011C0F0(v7, v4, &qword_100CADBA0);
  if (sub_100024D10(v4, 1, v8) == 1)
  {
    result = sub_100018198(v4, &qword_100CADBA0);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    (*(v9 + 32))(v11, v4, v8);
    v13 = Location.Identifier.id.getter();
    v14 = v15;
    result = (*(v9 + 8))(v11, v8);
  }

  *a1 = v13;
  a1[1] = v14;
  return result;
}

uint64_t sub_100934810(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v5 = type metadata accessor for OSSignpostID();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v7);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CC4158);
  __chkstk_darwin(v10 - 8);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v49 = v44 - v14;
  v15 = type metadata accessor for ListLocationViewModel(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v44 - v20;
  __chkstk_darwin(v22);
  v50 = v44 - v23;
  v24 = *a1;
  v25 = a1[1];
  v44[1] = type metadata accessor for ListView.ListContentView(0);
  sub_100988558();
  sub_1000302D8(&v9[*(v7 + 32)], v12, &qword_100CC4158);
  v48 = v15;
  if (sub_100024D10(v12, 1, v15) == 1)
  {
    v26 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1009423C8(v12, v21);
    sub_10022C350(&qword_100CD1308);
    v27 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v26 = swift_allocObject();
    *(v26 + 1) = xmmword_100A2C3F0;
    sub_1009423C8(v21, v26 + v27);
  }

  v52 = v26;

  sub_10035DDEC(v28);
  v29 = v52;
  result = sub_10093F8A8(v9, type metadata accessor for ListViewModel);
  v31 = v29[2];
  if (v31)
  {
    v32 = 0;
    v33 = v29 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    while (v32 < v29[2])
    {
      sub_100941A20(v33 + *(v16 + 72) * v32, v18);
      v34 = LocationModel.id.getter();
      if (v25)
      {
        if (v34 == v24 && v25 == v35)
        {

LABEL_18:

          v39 = v49;
          sub_1009423C8(v18, v49);
          v38 = 0;
          v40 = v50;
          goto LABEL_19;
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v37)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }

      ++v32;
      result = sub_10093F8A8(v18, type metadata accessor for ListLocationViewModel);
      if (v31 == v32)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    v38 = 1;
    v39 = v49;
    v40 = v50;
LABEL_19:
    v41 = v48;
    sub_10001B350(v39, v38, 1, v48);
    if (sub_100024D10(v39, 1, v41) == 1)
    {
      return sub_100018198(v39, &qword_100CC4158);
    }

    else
    {
      sub_1009423C8(v39, v40);
      if ((*(v40 + *(v41 + 84)) & 1) == 0)
      {
        static os_signpost_type_t.event.getter();
        sub_10000C70C(0, &qword_100CA2E40);
        v42 = OS_os_log.init(subsystem:category:)();
        v43 = v45;
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();

        (*(v46 + 8))(v43, v47);
        sub_10064F628(v40, 0, 1);
      }

      return sub_10093F8A8(v40, type metadata accessor for ListLocationViewModel);
    }
  }

  return result;
}

uint64_t sub_100934DE0@<X0>(uint64_t a1@<X8>)
{
  sub_100934E24(a1);
  result = sub_10022C350(&qword_100CE6C90);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_100934E24@<X0>(uint64_t a1@<X8>)
{
  v138 = a1;
  v137 = type metadata accessor for EditMode();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CE6D90);
  __chkstk_darwin(v3 - 8);
  v136 = &v99 - v4;
  v133 = type metadata accessor for ListPaddingAnchor();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for ScrollIndicatorVisibility();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v115 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for SidebarListStyle();
  v119 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v8 - 8);
  v144 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for ListView.ListContentView(0);
  v112 = *(v142 - 1);
  v111 = *(v112 + 64);
  __chkstk_darwin(v142);
  v110 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for AccessibilityActionKind();
  v114 = *(v143 - 8);
  __chkstk_darwin(v143);
  v107 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ScrollPosition();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v102 = &v99 - v14;
  v15 = sub_10022C350(&qword_100CE6D10);
  v99 = v15;
  __chkstk_darwin(v15);
  v17 = &v99 - v16;
  v109 = sub_10022C350(&qword_100CE6CE8);
  __chkstk_darwin(v109);
  v105 = &v99 - v18;
  v101 = sub_10022C350(&qword_100CE6CE0);
  v113 = *(v101 - 8);
  __chkstk_darwin(v101);
  v108 = &v99 - v19;
  v120 = sub_10022C350(&qword_100CE6CD8);
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v100 = &v99 - v20;
  v139 = sub_10022C350(&qword_100CE6CC8);
  v122 = *(v139 - 8);
  __chkstk_darwin(v139);
  v121 = &v99 - v21;
  v126 = sub_10022C350(&qword_100CE6CC0);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v140 = &v99 - v22;
  v129 = sub_10022C350(&qword_100CE6D98);
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v99 - v23;
  v141 = sub_10022C350(&qword_100CE6CB0);
  __chkstk_darwin(v141);
  v130 = &v99 - v24;
  v148 = sub_100930680();
  v149 = v25;
  v150 = v26;
  v151 = v27;
  v145 = v1;
  v28 = v1;
  sub_10022C350(&qword_100CE6DA0);
  sub_1000E9170();
  sub_10023FBF4(&qword_100CE6DA8, &qword_100CE6DA0);
  List.init(selection:content:)();
  v146 = 0;
  State.init(wrappedValue:)();
  v29 = v148;
  v30 = v149;
  v31 = &v17[*(sub_10022C350(&qword_100CE6D20) + 36)];
  *v31 = v29;
  *(v31 + 1) = v30;
  v32 = &v17[*(v15 + 36)];

  sub_10022C350(&qword_100CA4B60);
  sub_10023FBF4(&qword_100CA4B68, &qword_100CA4B60);
  v33 = v101;
  *v32 = ObservedObject.init(wrappedValue:)();
  v32[1] = v34;
  v35 = *(type metadata accessor for ScrollToActiveLocationModifier(0) + 20);
  *(v32 + v35) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v36 = v102;
  ScrollPosition.init<A>(idType:)();
  v37 = v104;
  v38 = v106;
  (*(v104 + 16))(v103, v36, v106);
  State.init(wrappedValue:)();
  v39 = v115;
  (*(v37 + 8))(v36, v38);
  v40 = v107;
  static AccessibilityActionKind.escape.getter();
  v41 = v110;
  sub_100941A20(v28, v110);
  v42 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v43 = swift_allocObject();
  sub_1009423C8(v41, v43 + v42);
  sub_100943914();
  v44 = v105;
  View.accessibilityAction(_:_:)();

  (*(v114 + 8))(v40, v143);
  sub_100018198(v17, &qword_100CE6D10);
  v45 = static Animation.default.getter();
  v46 = *(v142 + 18);
  v143 = v28;
  v47 = v144;
  v114 = *(v28 + v46 + 8);
  sub_100988558();
  LOBYTE(v42) = *(v47 + 9);
  sub_10093F8A8(v47, type metadata accessor for ListViewModel);
  v48 = v109;
  v49 = v44 + *(v109 + 36);
  *v49 = v45;
  *(v49 + 8) = v42;
  v50 = v116;
  SidebarListStyle.init()();
  v51 = sub_1009437A0();
  v52 = v108;
  v53 = v48;
  v54 = v117;
  View.listStyle<A>(_:)();
  (*(v119 + 8))(v50, v54);
  sub_100018198(v44, &qword_100CE6CE8);
  v148 = v53;
  v149 = v54;
  v150 = v51;
  v151 = &protocol witness table for SidebarListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v100;
  View.scrollContentBackground(_:)();
  (*(v113 + 8))(v52, v33);
  static ScrollIndicatorVisibility.never.getter();
  sub_10022C350(&qword_100CB59A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v50) = static Axis.Set.vertical.getter();
  *(inited + 32) = v50;
  v58 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v58;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v50)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v58)
  {
    Axis.Set.init(rawValue:)();
  }

  v148 = v33;
  v149 = OpaqueTypeConformance2;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v121;
  v61 = v120;
  View.scrollIndicators(_:axes:)();
  (*(v123 + 8))(v39, v124);
  (*(v118 + 8))(v56, v61);
  v62 = Solarium.init()();
  __chkstk_darwin(v62);
  v63 = sub_10022C350(&qword_100CE6CD0);
  v148 = v61;
  v149 = v59;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = sub_100943AFC();
  v66 = v139;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v122 + 8))(v60, v66);
  sub_10022C350(&qword_100CA4060);
  v67 = swift_initStackObject();
  *(v67 + 16) = xmmword_100A3BBA0;
  v68 = static Edge.Set.top.getter();
  *(v67 + 32) = v68;
  v69 = static Edge.Set.trailing.getter();
  *(v67 + 33) = v69;
  v70 = static Edge.Set.leading.getter();
  *(v67 + 34) = v70;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v68)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v69)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v70)
  {
    Edge.Set.init(rawValue:)();
  }

  if (DeviceIsSlow())
  {
    if (qword_100CA2658 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1007A4380();
    swift_endAccess();
  }

  v71 = v144;
  sub_100988558();
  v72 = *(v71 + 8);
  sub_10093F8A8(v71, type metadata accessor for ListViewModel);
  if ((v72 & 1) == 0)
  {
    static Solarium.isEnabled.getter();
  }

  v73 = v131;
  static ListPaddingAnchor.safeArea.getter();
  v148 = v139;
  v149 = &type metadata for Solarium;
  v150 = v63;
  v151 = v63;
  v152 = v64;
  v153 = &protocol witness table for Solarium;
  v154 = v65;
  v155 = v65;
  swift_getOpaqueTypeConformance2();
  v74 = v127;
  v75 = v126;
  v76 = v140;
  View.listPadding(_:_:anchor:)();
  (*(v132 + 8))(v73, v133);
  (*(v125 + 8))(v76, v75);
  KeyPath = swift_getKeyPath();
  v78 = v144;
  sub_100988558();
  v79 = *(v78 + 8);
  sub_10093F8A8(v78, type metadata accessor for ListViewModel);
  v80 = v135;
  v81 = &enum case for EditMode.active(_:);
  if (!v79)
  {
    v81 = &enum case for EditMode.inactive(_:);
  }

  v82 = v134;
  v83 = v137;
  (*(v135 + 104))(v134, *v81, v137);
  v84 = v136;
  static Binding.constant(_:)();
  (*(v80 + 8))(v82, v83);
  v85 = sub_10022C350(&qword_100CE6DB0);
  sub_10001B350(v84, 0, 1, v85);
  v86 = v130;
  v87 = &v130[*(v141 + 36)];
  v88 = sub_10022C350(&qword_100CE6D58);
  sub_10011C0F0(v84, v87 + *(v88 + 28), &qword_100CE6D90);
  *v87 = KeyPath;
  (*(v128 + 32))(v86, v74, v129);
  LocalizedStringKey.init(stringLiteral:)();
  v144 = Text.init(_:tableName:bundle:comment:)();
  v140 = v89;
  LOBYTE(v82) = v90;
  v139 = v91;
  v92 = v143 + *(v142 + 8);
  v93 = *v92;
  v94 = *(v92 + 8);
  v146 = v93;
  v147 = v94;
  sub_10022C350(&qword_100CA5A80);
  v95 = State.projectedValue.getter();
  v142 = &v99;
  __chkstk_darwin(v95);
  sub_10022C350(&qword_100CC3AF8);
  sub_100943550();
  sub_10023FBF4(&qword_100CC3B00, &qword_100CC3AF8);
  v96 = v144;
  v97 = v140;
  View.alert<A, B>(_:isPresented:actions:message:)();

  sub_10010CD64(v96, v97, v82 & 1);

  return sub_100018198(v86, &qword_100CE6CB0);
}

uint64_t sub_100936408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v195 = a2;
  v159 = type metadata accessor for PlainButtonStyle();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_10022C350(&qword_100CE6DD0);
  __chkstk_darwin(v155);
  v156 = (&v151 - v4);
  v166 = sub_10022C350(&qword_100CE6DD8);
  v164 = *(v166 - 8);
  __chkstk_darwin(v166);
  v161 = &v151 - v5;
  v165 = sub_10022C350(&qword_100CE6DE0);
  __chkstk_darwin(v165);
  v163 = &v151 - v6;
  v194 = sub_10022C350(&qword_100CE6DE8);
  v162 = *(v194 - 8);
  __chkstk_darwin(v194);
  v160 = &v151 - v7;
  v188 = type metadata accessor for UserInterfaceSizeClass();
  v186 = *(v188 - 8);
  __chkstk_darwin(v188);
  v153 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v183);
  v187 = &v151 - v9;
  v10 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v10 - 8);
  v169 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v184 = &v151 - v13;
  __chkstk_darwin(v14);
  v185 = &v151 - v15;
  v16 = sub_10022C350(&qword_100CE6DF0);
  __chkstk_darwin(v16 - 8);
  v193 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v192 = &v151 - v19;
  v20 = type metadata accessor for ListView.ListContentView(0);
  v173 = *(v20 - 1);
  __chkstk_darwin(v20);
  v181 = v21;
  v182 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for ListLocationViewModel(0);
  v167 = *(v172 - 8);
  __chkstk_darwin(v172);
  v168 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CC4158);
  __chkstk_darwin(v23 - 8);
  v171 = &v151 - v24;
  v177 = sub_10022C350(&qword_100CE6DF8);
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v174 = &v151 - v25;
  v175 = sub_10022C350(&qword_100CE6E00);
  __chkstk_darwin(v175);
  v180 = &v151 - v26;
  v179 = sub_10022C350(&qword_100CE6E08);
  __chkstk_darwin(v179);
  v191 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v178 = &v151 - v29;
  __chkstk_darwin(v30);
  v199 = &v151 - v31;
  v197 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v197);
  v33 = &v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v151 - v35;
  __chkstk_darwin(v37);
  v170 = &v151 - v38;
  v196 = sub_10022C350(&qword_100CE6E10);
  __chkstk_darwin(v196);
  v40 = &v151 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v154 = &v151 - v42;
  v43 = sub_10022C350(&qword_100CE6E18);
  __chkstk_darwin(v43 - 8);
  v190 = &v151 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v200 = &v151 - v46;
  v47 = sub_10022C350(&qword_100CE6E20);
  __chkstk_darwin(v47);
  v49 = &v151 - v48;
  v50 = sub_10022C350(&qword_100CE6E28);
  __chkstk_darwin(v50 - 8);
  v189 = &v151 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v151 - v53;
  v55 = a1 + v20[13];
  v56 = *v55;
  v57 = *(v55 + 8);
  LOBYTE(v202) = v56;
  *(&v202 + 1) = v57;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  if (v207 == 1)
  {
    sub_100937D34();
    sub_10011C0F0(v49, v54, &qword_100CE6E20);
    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v59 = 1;
  v198 = v54;
  sub_10001B350(v54, v58, 1, v47);
  v202 = *(a1 + v20[14]);
  sub_10022C350(&qword_100CE6C38);
  State.wrappedValue.getter();
  v60 = v207;
  v201 = a1;
  if (v207)
  {
    v61 = a1 + v20[15];
    v62 = *v61;
    v63 = *(v61 + 8);
    LOBYTE(v202) = v62;
    *(&v202 + 1) = v63;
    State.wrappedValue.getter();
    if (v207 == 1)
    {
      v64 = v170;
      sub_100988558();
      v65 = a1;
      v66 = v197;
      HIDWORD(v152) = *(v64 + *(v66 + 96)) | (*(v64 + *(v66 + 96) + 2) << 16);
      sub_10093F8A8(v64, type metadata accessor for ListViewModel);
      sub_100988558();
      v67 = v36[*(v66 + 96) + 3];
      sub_10093F8A8(v36, type metadata accessor for ListViewModel);
      v151 = *(v65 + v20[20]);
      swift_unknownObjectRetain();
      v68 = 0x4030000000000000;
      if (static Solarium.isEnabled.getter())
      {
        v69 = 0x4030000000000000;
      }

      else
      {
        v69 = 0x4034000000000000;
      }

      if ((static Solarium.isEnabled.getter() & 1) == 0)
      {
        v70 = v170;
        sub_100988558();
        v71 = *(v70 + 8);
        sub_10093F8A8(v70, type metadata accessor for ListViewModel);
        if (v71)
        {
          v68 = 0x4034000000000000;
        }

        else
        {
          v68 = 0;
        }
      }

      v72 = &v40[*(v196 + 36)];
      v73 = type metadata accessor for ListViewTipStyleModifier(0);
      v74 = *(v73 + 28);
      *&v72[v74] = swift_getKeyPath();
      sub_10022C350(&qword_100CA62E0);
      swift_storeEnumTagMultiPayload();
      v75 = &v72[*(v73 + 32)];
      *v75 = swift_getKeyPath();
      v75[8] = 0;
      *v72 = v69;
      v72[8] = 0;
      *(v72 + 2) = v68;
      v72[24] = 0;
      *(v72 + 4) = 0;
      v72[40] = 0;
      v76 = WORD2(v152);
      v40[2] = BYTE6(v152);
      *v40 = v76;
      v40[3] = v67;
      *(v40 + 8) = v151;
      *(v40 + 3) = v60;
      v77 = v154;
      sub_10011C0F0(v40, v154, &qword_100CE6E10);
      sub_10011C0F0(v77, v200, &qword_100CE6E10);
      v59 = 0;
      a1 = v201;
    }

    else
    {
    }
  }

  sub_10001B350(v200, v59, 1, v196);
  v154 = *(a1 + v20[18] + 8);
  sub_100988558();
  v78 = v171;
  sub_1000302D8(&v33[*(v197 + 32)], v171, &qword_100CC4158);
  if (sub_100024D10(v78, 1, v172) == 1)
  {
    v79 = _swiftEmptyArrayStorage;
  }

  else
  {
    v80 = v168;
    sub_1009423C8(v78, v168);
    sub_10022C350(&qword_100CD1308);
    v81 = (*(v167 + 80) + 32) & ~*(v167 + 80);
    v79 = swift_allocObject();
    *(v79 + 1) = xmmword_100A2C3F0;
    sub_1009423C8(v80, v79 + v81);
  }

  *&v202 = v79;

  sub_10035DDEC(v82);
  v83 = v202;
  sub_10093F8A8(v33, type metadata accessor for ListViewModel);
  v207 = v83;
  v197 = type metadata accessor for ListView.ListContentView;
  v84 = v182;
  sub_100941A20(v201, v182);
  v85 = (*(v173 + 80) + 16) & ~*(v173 + 80);
  v86 = swift_allocObject();
  v196 = type metadata accessor for ListView.ListContentView;
  sub_1009423C8(v84, v86 + v85);
  v173 = sub_10022C350(&qword_100CE6C08);
  sub_10022C350(&qword_100CE6E30);
  sub_10023FBF4(&qword_100CE6E38, &qword_100CE6C08);
  v87 = type metadata accessor for ListRowView(255);
  v88 = sub_10022E824(&qword_100CE6E40);
  v89 = sub_10093F860(&qword_100CE6E48, type metadata accessor for ListRowView);
  v90 = sub_1009440B4();
  *&v202 = v87;
  *(&v202 + 1) = &type metadata for Solarium;
  v203 = v88;
  v204 = v89;
  v205 = &protocol witness table for Solarium;
  v206 = v90;
  swift_getOpaqueTypeConformance2();
  sub_10093F860(&qword_100CE6E58, type metadata accessor for ListLocationViewModel);
  v91 = v174;
  ForEach<>.init(_:content:)();
  v92 = v201;
  sub_100941A20(v201, v84);
  v93 = swift_allocObject();
  sub_1009423C8(v84, v93 + v85);
  v94 = swift_allocObject();
  *(v94 + 16) = sub_100944170;
  *(v94 + 24) = v93;
  v95 = v180;
  (*(v176 + 32))(v180, v91, v177);
  v96 = (v95 + *(sub_10022C350(&qword_100CE6E60) + 36));
  *v96 = sub_1009441D4;
  v96[1] = v94;
  *(v95 + *(v175 + 36)) = 1;
  sub_100941A20(v92, v84);
  v97 = swift_allocObject();
  sub_1009423C8(v84, v97 + v85);
  v98 = swift_allocObject();
  *(v98 + 16) = sub_100944200;
  *(v98 + 24) = v97;
  v99 = v178;
  sub_10011C0F0(v95, v178, &qword_100CE6E00);
  v100 = (v99 + *(v179 + 36));
  *v100 = sub_10018F134;
  v100[1] = v98;
  v101 = sub_10011C0F0(v99, v199, &qword_100CE6E08);
  v102 = v185;
  sub_10093B554(v101, v103, v104, v105, v106, v107, v108, v109, v151, *(&v151 + 1), v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);
  v110 = v186;
  v111 = v184;
  v112 = v188;
  (*(v186 + 104))(v184, enum case for UserInterfaceSizeClass.compact(_:), v188);
  sub_10001B350(v111, 0, 1, v112);
  v113 = *(v183 + 48);
  v114 = v187;
  sub_1000302D8(v102, v187, &qword_100CA6028);
  sub_1000302D8(v111, v114 + v113, &qword_100CA6028);
  if (sub_100024D10(v114, 1, v112) != 1)
  {
    v115 = v169;
    sub_1000302D8(v114, v169, &qword_100CA6028);
    if (sub_100024D10(v114 + v113, 1, v112) != 1)
    {
      v119 = v114 + v113;
      v120 = v153;
      (*(v110 + 32))(v153, v119, v112);
      sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v121 = dispatch thunk of static Equatable.== infix(_:_:)();
      v122 = *(v110 + 8);
      v122(v120, v112);
      sub_100018198(v111, &qword_100CA6028);
      sub_100018198(v102, &qword_100CA6028);
      v122(v115, v112);
      sub_100018198(v114, &qword_100CA6028);
      if (v121)
      {
        goto LABEL_26;
      }

LABEL_24:
      v116 = 1;
      v117 = v194;
      v118 = v192;
      goto LABEL_29;
    }

    sub_100018198(v111, &qword_100CA6028);
    sub_100018198(v102, &qword_100CA6028);
    (*(v110 + 8))(v115, v112);
LABEL_23:
    sub_100018198(v114, &qword_100CA64E8);
    goto LABEL_24;
  }

  sub_100018198(v111, &qword_100CA6028);
  sub_100018198(v102, &qword_100CA6028);
  if (sub_100024D10(v114 + v113, 1, v112) != 1)
  {
    goto LABEL_23;
  }

  sub_100018198(v114, &qword_100CA6028);
LABEL_26:
  v123 = static VerticalAlignment.center.getter();
  v124 = v156;
  *v156 = v123;
  v124[1] = 0;
  *(v124 + 16) = 1;
  v125 = sub_10022C350(&qword_100CE6E70);
  sub_100939CE0(v201, v124 + *(v125 + 44));
  *&v202 = static Color.clear.getter();
  *(v124 + *(v155 + 36)) = AnyView.init<A>(_:)();
  v126 = v157;
  PlainButtonStyle.init()();
  sub_100944260();
  sub_10093F860(&qword_100CB0848, &type metadata accessor for PlainButtonStyle);
  v127 = v161;
  v128 = v159;
  View.buttonStyle<A>(_:)();
  (*(v158 + 8))(v126, v128);
  sub_100018198(v124, &qword_100CE6DD0);
  LOBYTE(v124) = static Edge.Set.trailing.getter();
  v129 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v124)
  {
    v129 = Edge.Set.init(rawValue:)();
  }

  v130 = v170;
  sub_100988558();
  sub_10093F8A8(v130, type metadata accessor for ListViewModel);
  EdgeInsets.init(_all:)();
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v139 = v163;
  (*(v164 + 32))(v163, v127, v166);
  v140 = v139 + *(v165 + 36);
  *v140 = v129;
  *(v140 + 8) = v132;
  *(v140 + 16) = v134;
  *(v140 + 24) = v136;
  *(v140 + 32) = v138;
  *(v140 + 40) = 0;
  static VerticalEdge.Set.all.getter();
  sub_100944344();
  v141 = v160;
  View.listRowSeparator(_:edges:)();
  sub_100018198(v139, &qword_100CE6DE0);
  v118 = v192;
  v117 = v194;
  (*(v162 + 32))(v192, v141, v194);
  v116 = 0;
LABEL_29:
  sub_10001B350(v118, v116, 1, v117);
  v142 = v189;
  sub_1000302D8(v198, v189, &qword_100CE6E28);
  v143 = v200;
  v144 = v190;
  sub_1000302D8(v200, v190, &qword_100CE6E18);
  v145 = v199;
  v146 = v191;
  sub_1000302D8(v199, v191, &qword_100CE6E08);
  v147 = v193;
  sub_1000302D8(v118, v193, &qword_100CE6DF0);
  v148 = v195;
  sub_1000302D8(v142, v195, &qword_100CE6E28);
  v149 = sub_10022C350(&qword_100CE6E68);
  sub_1000302D8(v144, v148 + v149[12], &qword_100CE6E18);
  sub_1000302D8(v146, v148 + v149[16], &qword_100CE6E08);
  sub_1000302D8(v147, v148 + v149[20], &qword_100CE6DF0);
  sub_100018198(v118, &qword_100CE6DF0);
  sub_100018198(v145, &qword_100CE6E08);
  sub_100018198(v143, &qword_100CE6E18);
  sub_100018198(v198, &qword_100CE6E28);
  sub_100018198(v147, &qword_100CE6DF0);
  sub_100018198(v146, &qword_100CE6E08);
  sub_100018198(v144, &qword_100CE6E18);
  return sub_100018198(v142, &qword_100CE6E28);
}

uint64_t sub_100937D34()
{
  v1 = v0;
  v2 = type metadata accessor for ContentStatusBanner();
  __chkstk_darwin(v2 - 8);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE6E98);
  __chkstk_darwin(v5);
  v7 = (&v55 - v6);
  v8 = sub_10022C350(&qword_100CE6EA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55 - v10;
  v12 = type metadata accessor for ListView.ListContentView(0);
  sub_1000161C0((v0 + v12[22]), *(v0 + v12[22] + 24));
  sub_10022C350(&qword_100CC9F58);
  State.wrappedValue.getter();
  sub_10010A228(v4, v7);
  sub_10093F8A8(v4, type metadata accessor for ContentStatusBanner);
  v13 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v7 + *(sub_10022C350(&qword_100CCA2E0) + 36);
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7 + *(sub_10022C350(&qword_100CCA2A8) + 36);
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = static Color.clear.getter();
  LOBYTE(v4) = static Edge.Set.all.getter();
  v34 = v7 + *(sub_10022C350(&qword_100CE6EA8) + 36);
  *v34 = v33;
  v34[8] = v4;
  v35 = (v1 + v12[11]);
  v36 = *v35;
  v37 = v35[1];
  v57 = v36;
  v58 = v37;
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  v38 = v56;
  *(v7 + *(sub_10022C350(&qword_100CE6EB0) + 36)) = v38;
  v39 = (v1 + v12[10]);
  v40 = *v39;
  v41 = v39[1];
  v57 = v40;
  v58 = v41;
  State.wrappedValue.getter();
  v42 = v56;
  static UnitPoint.center.getter();
  v44 = v43;
  v46 = v45;
  v47 = (v7 + *(sub_10022C350(&qword_100CE6EB8) + 36));
  *v47 = v42;
  v47[1] = v42;
  v47[2] = v44;
  v47[3] = v46;
  v57 = static Color.clear.getter();
  v48 = AnyView.init<A>(_:)();
  *(v7 + *(sub_10022C350(&qword_100CE6EC0) + 36)) = v48;
  v49 = v7 + *(v5 + 36);
  v49[32] = 0;
  *v49 = 0u;
  *(v49 + 1) = 0u;
  static VerticalEdge.Set.all.getter();
  v50 = sub_10094447C();
  View.listRowSeparator(_:edges:)();
  sub_100018198(v7, &qword_100CE6E98);
  v51 = (v1 + v12[13]);
  v52 = *v51;
  v53 = *(v51 + 1);
  LOBYTE(v57) = v52;
  v58 = v53;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  v57 = v5;
  v58 = v50;
  swift_getOpaqueTypeConformance2();
  View.accessibilityHidden(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1009381BC(char a1, char a2)
{
  v4 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  switch(a1)
  {
    case 1:
      if (a2)
      {
        type metadata accessor for ListView.ListContentView(0);
        sub_100988558();
        v8 = v6[8];
        sub_10093F8A8(v6, type metadata accessor for ListViewModel);
        if (v8)
        {
          return 0x4020000000000000;
        }
      }

      if (static Solarium.isEnabled.getter())
      {
        return 0x4030000000000000;
      }

      else
      {
        return 0x4034000000000000;
      }

    case 2:
      return result;
    case 3:
      if (a2)
      {
        type metadata accessor for ListView.ListContentView(0);
        sub_100988558();
        v9 = v6[8];
        sub_10093F8A8(v6, type metadata accessor for ListViewModel);
        if (v9)
        {
          return 0x4020000000000000;
        }

        v10 = (static Solarium.isEnabled.getter() & 1) == 0;
        v11 = 0x4030000000000000;
      }

      else
      {
        if (static Solarium.isEnabled.getter())
        {
          return 0x4030000000000000;
        }

        type metadata accessor for ListView.ListContentView(0);
        sub_100988558();
        v12 = v6[8];
        sub_10093F8A8(v6, type metadata accessor for ListViewModel);
        v10 = v12 == 0;
        v11 = 0x4034000000000000;
      }

      if (v10)
      {
        return 0;
      }

      else
      {
        return v11;
      }

    default:
      return 0;
  }
}

uint64_t sub_10093838C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListRowView(0);
  __chkstk_darwin(v4);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1009384E4(a1, v6);
  Solarium.init()();
  v9 = a2;
  v10 = a1;
  sub_10022C350(&qword_100CE6E40);
  sub_10093F860(&qword_100CE6E48, type metadata accessor for ListRowView);
  sub_1009440B4();
  View.staticIf<A, B>(_:then:)();
  return sub_10093F8A8(v6, type metadata accessor for ListRowView);
}

uint64_t sub_1009384E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ListView.ListContentView(0);
  v7 = (v6 - 8);
  v38 = *(v6 - 8);
  v37 = *(v38 + 64);
  __chkstk_darwin(v6);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ListViewModel();
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100941A20(a1, a2);
  v13 = v7[22];
  v34 = *(v3 + v7[21]);
  v39 = *(v3 + v7[23]);
  v15 = v7[25];
  v14 = v7[26];
  v16 = type metadata accessor for ListRowView(0);
  v17 = v16[9];
  v36 = *(v3 + v13);
  v40 = *(v3 + v15);
  sub_10042F370(v3 + v14, a2 + v17);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_100988558();
  v18 = &v12[*(v10 + 84)];
  v19 = *v18;
  v32 = *(v18 + 1);
  v33 = v19;

  sub_10093F8A8(v12, type metadata accessor for ListViewModel);
  v20 = v35;
  sub_100941A20(v3, v35);
  v21 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v22 = swift_allocObject();
  sub_1009423C8(v20, v22 + v21);
  sub_100941A20(v3, v20);
  v23 = swift_allocObject();
  sub_1009423C8(v20, v23 + v21);
  *(a2 + v16[5]) = v34;
  *(a2 + v16[6]) = v40;
  *(a2 + v16[7]) = v36;
  *(a2 + v16[8]) = v39;
  v24 = (a2 + v16[10]);
  v25 = v32;
  *v24 = v33;
  v24[1] = v25;
  v26 = (a2 + v16[11]);
  *v26 = sub_1009447C4;
  v26[1] = v22;
  v27 = (a2 + v16[12]);
  *v27 = sub_100944818;
  v27[1] = v23;
  v28 = v16[13];
  *(a2 + v28) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v29 = a2 + v16[14];
  v41 = 0;
  result = State.init(wrappedValue:)();
  v31 = v43;
  *v29 = v42;
  *(v29 + 8) = v31;
  return result;
}

uint64_t sub_100938850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v87 = a1;
  v88 = a4;
  v80 = sub_10022C350(&qword_100CD1660);
  __chkstk_darwin(v80);
  v85 = &v72 - v5;
  v84 = type metadata accessor for ListLocationViewModel(0);
  v73 = *(v84 - 8);
  __chkstk_darwin(v84);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v78);
  v79 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CC4158);
  __chkstk_darwin(v8 - 8);
  v83 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = &v72 - v11;
  __chkstk_darwin(v12);
  v76 = &v72 - v13;
  __chkstk_darwin(v14);
  v82 = &v72 - v15;
  v16 = type metadata accessor for UserInterfaceSizeClass();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v74 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CA64E8);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v72 - v21;
  v23 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v23 - 8);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v72 - v27;
  __chkstk_darwin(v29);
  v31 = &v72 - v30;
  v32 = static Edge.Set.bottom.getter();
  v86 = v32;
  sub_10093B554(v32, v33, v34, v35, v36, v37, v38, v39, v72, v73, v74, v75, v76, v77, a2, v78, v79, v80, v81, v82);
  (*(v17 + 104))(v28, enum case for UserInterfaceSizeClass.regular(_:), v16);
  sub_10001B350(v28, 0, 1, v16);
  v40 = *(v20 + 56);
  sub_1000302D8(v31, v22, &qword_100CA6028);
  sub_1000302D8(v28, &v22[v40], &qword_100CA6028);
  if (sub_100024D10(v22, 1, v16) == 1)
  {
    sub_100018198(v28, &qword_100CA6028);
    sub_100018198(v31, &qword_100CA6028);
    if (sub_100024D10(&v22[v40], 1, v16) == 1)
    {
      sub_100018198(v22, &qword_100CA6028);
LABEL_8:
      v46 = v82;
      sub_100941A20(v77, v82);
      v47 = v84;
      sub_10001B350(v46, 0, 1, v84);
      type metadata accessor for ListView.ListContentView(0);
      v48 = v79;
      sub_100988558();
      v49 = v76;
      sub_1000302D8(v48 + *(v78 + 32), v76, &qword_100CC4158);
      if (sub_100024D10(v49, 1, v47) == 1)
      {
        v50 = _swiftEmptyArrayStorage;
      }

      else
      {
        v51 = v75;
        sub_1009423C8(v49, v75);
        sub_10022C350(&qword_100CD1308);
        v52 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v50 = swift_allocObject();
        *(v50 + 1) = xmmword_100A2C3F0;
        sub_1009423C8(v51, v50 + v52);
      }

      v53 = v85;
      v54 = v83;
      v55 = v81;
      v89 = v50;

      sub_10035DDEC(v56);
      v57 = v89;
      sub_10093F8A8(v48, type metadata accessor for ListViewModel);
      sub_1002F56A4(v57);

      v58 = *(v80 + 48);
      sub_1000302D8(v46, v53, &qword_100CC4158);
      sub_1000302D8(v55, v53 + v58, &qword_100CC4158);
      if (sub_100024D10(v53, 1, v47) == 1)
      {
        sub_100018198(v55, &qword_100CC4158);
        sub_100018198(v46, &qword_100CC4158);
        if (sub_100024D10(v53 + v58, 1, v47) == 1)
        {
          sub_100018198(v53, &qword_100CC4158);
          goto LABEL_18;
        }
      }

      else
      {
        sub_1000302D8(v53, v54, &qword_100CC4158);
        if (sub_100024D10(v53 + v58, 1, v47) != 1)
        {
          v70 = v53 + v58;
          v71 = v75;
          sub_1009423C8(v70, v75);
          sub_1009AB434();
          sub_10093F8A8(v71, type metadata accessor for ListLocationViewModel);
          sub_100018198(v55, &qword_100CC4158);
          sub_100018198(v46, &qword_100CC4158);
          sub_10093F8A8(v54, type metadata accessor for ListLocationViewModel);
          sub_100018198(v53, &qword_100CC4158);
          goto LABEL_18;
        }

        sub_100018198(v55, &qword_100CC4158);
        sub_100018198(v46, &qword_100CC4158);
        sub_10093F8A8(v54, type metadata accessor for ListLocationViewModel);
      }

      v41 = &qword_100CD1660;
      v42 = v53;
LABEL_17:
      sub_100018198(v42, v41);
      goto LABEL_18;
    }

LABEL_6:
    v41 = &qword_100CA64E8;
    v42 = v22;
    goto LABEL_17;
  }

  sub_1000302D8(v22, v25, &qword_100CA6028);
  if (sub_100024D10(&v22[v40], 1, v16) == 1)
  {
    sub_100018198(v28, &qword_100CA6028);
    sub_100018198(v31, &qword_100CA6028);
    (*(v17 + 8))(v25, v16);
    goto LABEL_6;
  }

  v43 = v74;
  (*(v17 + 32))(v74, &v22[v40], v16);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v17 + 8);
  v45(v43, v16);
  sub_100018198(v28, &qword_100CA6028);
  sub_100018198(v31, &qword_100CA6028);
  v45(v25, v16);
  sub_100018198(v22, &qword_100CA6028);
  if (v44)
  {
    goto LABEL_8;
  }

LABEL_18:
  EdgeInsets.init(_all:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v88;
  sub_100941A20(v87, v88);
  result = sub_10022C350(&qword_100CE6E40);
  v69 = v67 + *(result + 36);
  *v69 = v86;
  *(v69 + 8) = v60;
  *(v69 + 16) = v62;
  *(v69 + 24) = v64;
  *(v69 + 32) = v66;
  *(v69 + 40) = 0;
  return result;
}

void sub_100939234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46[0] = a2;
  v46[1] = a3;
  v3 = sub_10022C350(&qword_100CC4158);
  __chkstk_darwin(v3 - 8);
  v5 = v46 - v4;
  v6 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v6);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v46 - v10;
  __chkstk_darwin(v12);
  v14 = v46 - v13;
  v15 = type metadata accessor for IndexSet.Index();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.startIndex.getter();
  v19 = IndexSet.subscript.getter();
  (*(v16 + 8))(v18, v15);
  type metadata accessor for ListView.ListContentView(0);
  sub_100988558();
  sub_1000302D8(&v14[*(v6 + 32)], v5, &qword_100CC4158);
  sub_10093F8A8(v14, type metadata accessor for ListViewModel);
  v20 = type metadata accessor for ListLocationViewModel(0);
  LODWORD(v14) = sub_100024D10(v5, 1, v20);
  sub_100018198(v5, &qword_100CC4158);
  if (v14 == 1)
  {
    v21 = v46[0];
  }

  else
  {
    if (__OFSUB__(v19--, 1))
    {
      __break(1u);
LABEL_17:
      swift_once();
LABEL_7:
      v27 = type metadata accessor for Logger();
      sub_10000703C(v27, qword_100D90A48);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v47 = v19;
        v48 = v31;
        *v30 = 136446210;
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = sub_100078694(v32, v33, &v48);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "Failed to find mapped index with sourceIndex type=%{public}s", v30, 0xCu);
        sub_100006F14(v31);
LABEL_13:

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v21 = v46[0] - 1;
    if (__OFSUB__(v46[0], 1))
    {
      __break(1u);
LABEL_19:
      swift_once();
LABEL_11:
      v39 = type metadata accessor for Logger();
      sub_10000703C(v39, qword_100D90A48);
      v28 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v47 = v21;
        v48 = v42;
        *v41 = 136446210;
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = sub_100078694(v43, v44, &v48);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v28, v40, "Failed to find mapped index with sourceIndex type=%{public}s", v41, 0xCu);
        sub_100006F14(v42);
        goto LABEL_13;
      }

LABEL_14:

      return;
    }
  }

  sub_100988558();
  v23 = *&v11[*(v6 + 68)];

  sub_10093F8A8(v11, type metadata accessor for ListViewModel);
  v24 = sub_10087A1B4(v19, v23);
  v26 = v25;

  if (v26)
  {
    if (qword_100CA26A0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  sub_100988558();
  v35 = *&v8[*(v6 + 68)];

  sub_10093F8A8(v8, type metadata accessor for ListViewModel);
  v36 = sub_10087A1B4(v21, v35);
  v38 = v37;

  if (v38)
  {
    if (qword_100CA26A0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  sub_100650528(v24, v36);
}

void sub_10093979C()
{
  v0 = type metadata accessor for IndexSet();
  v35 = *(v0 - 8);
  v36 = v0;
  __chkstk_darwin(v0);
  v34 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10022C350(&qword_100CC4158);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for IndexSet.Index();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.startIndex.getter();
  v15 = IndexSet.subscript.getter();
  (*(v12 + 8))(v14, v11);
  type metadata accessor for ListView.ListContentView(0);
  sub_100988558();
  sub_1000302D8(&v10[*(v5 + 32)], v4, &qword_100CC4158);
  sub_10093F8A8(v10, type metadata accessor for ListViewModel);
  v16 = type metadata accessor for ListLocationViewModel(0);
  LODWORD(v10) = sub_100024D10(v4, 1, v16);
  sub_100018198(v4, &qword_100CC4158);
  if (v10 != 1 && __OFSUB__(v15--, 1))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  sub_100988558();
  v18 = *&v7[*(v5 + 68)];

  sub_10093F8A8(v7, type metadata accessor for ListViewModel);
  v19 = sub_10087A1B4(v15, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    sub_10022C350(&qword_100CAB980);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100A2C3F0;
    *(v30 + 32) = v19;
    v38 = v30;
    sub_10093F860(&qword_100CE6DB8, &type metadata accessor for IndexSet);
    sub_10022C350(&qword_100CE6DC0);
    sub_10023FBF4(&qword_100CE6DC8, &qword_100CE6DC0);
    v31 = v34;
    v32 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100650604();
    (*(v35 + 8))(v31, v32);
    return;
  }

  if (qword_100CA26A0 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v22 = type metadata accessor for Logger();
  sub_10000703C(v22, qword_100D90A48);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v37 = v15;
    v38 = v26;
    *v25 = 136446210;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = sub_100078694(v27, v28, &v38);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "Failed to find mapped index with sourceIndex type=%{public}s", v25, 0xCu);
    sub_100006F14(v26);
  }
}

uint64_t sub_100939CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListViewModel();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for LearnMoreAttributorView();
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v24[-v13];
  v15 = type metadata accessor for ListView.ListContentView(0);
  sub_100988558();
  sub_100941A20(&v7[*(v5 + 72)], v14);
  sub_10093F8A8(v7, type metadata accessor for ListViewModel);
  *&v14[v9[7] + 8] = *(*(a1 + *(v15 + 80) + 8) + 8);
  swift_unknownObjectWeakInit();
  v16 = &v14[v9[8]];
  LocalizedStringKey.init(stringLiteral:)();
  *v16 = Text.init(_:tableName:bundle:comment:)();
  *(v16 + 1) = v17;
  v16[16] = v18 & 1;
  *(v16 + 3) = v19;
  v20 = &v14[v9[9]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  sub_100941A20(v14, v11);
  *a2 = 0;
  *(a2 + 8) = 1;
  v21 = sub_10022C350(&qword_100CE6EF0);
  sub_100941A20(v11, a2 + *(v21 + 48));
  v22 = a2 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_10093F8A8(v14, type metadata accessor for LearnMoreAttributorView);
  return sub_10093F8A8(v11, type metadata accessor for LearnMoreAttributorView);
}

void sub_100939F78()
{
  v0 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListView.ListContentView(0);
  sub_100988558();
  v3 = v2[8];
  sub_10093F8A8(v2, type metadata accessor for ListViewModel);
  if (v3 == 1)
  {
    sub_10064FCA8();
    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
  }
}

uint64_t sub_10093A050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = sub_10022C350(&qword_100CE6CC8);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = sub_10022C350(&qword_100CE6CD0);
  v7 = a2 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = 0x4028000000000000;
  *(v7 + 16) = 0;
  return result;
}

uint64_t sub_10093A0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA64E8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  sub_10093B554(v18, v19, v20, v21, v22, v23, v24, v25, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  (*(v3 + 104))(v14, enum case for UserInterfaceSizeClass.compact(_:), v2);
  sub_10001B350(v14, 0, 1, v2);
  v26 = *(v6 + 56);
  sub_1000302D8(v17, v8, &qword_100CA6028);
  sub_1000302D8(v14, &v8[v26], &qword_100CA6028);
  if (sub_100024D10(v8, 1, v2) == 1)
  {
    sub_100018198(v14, &qword_100CA6028);
    sub_100018198(v17, &qword_100CA6028);
    if (sub_100024D10(&v8[v26], 1, v2) == 1)
    {
      sub_100018198(v8, &qword_100CA6028);
      v27 = 0x4024000000000000;
      goto LABEL_10;
    }

LABEL_6:
    sub_100018198(v8, &qword_100CA64E8);
    v27 = 0x4030000000000000;
    goto LABEL_10;
  }

  sub_1000302D8(v8, v11, &qword_100CA6028);
  if (sub_100024D10(&v8[v26], 1, v2) == 1)
  {
    sub_100018198(v14, &qword_100CA6028);
    sub_100018198(v17, &qword_100CA6028);
    (*(v3 + 8))(v11, v2);
    goto LABEL_6;
  }

  v28 = v37;
  (*(v3 + 32))(v37, &v8[v26], v2);
  sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v3 + 8);
  v30(v28, v2);
  sub_100018198(v14, &qword_100CA6028);
  sub_100018198(v17, &qword_100CA6028);
  v30(v11, v2);
  sub_100018198(v8, &qword_100CA6028);
  if (v29)
  {
    v27 = 0x4024000000000000;
  }

  else
  {
    v27 = 0x4030000000000000;
  }

LABEL_10:
  KeyPath = swift_getKeyPath();
  v32 = sub_10022C350(&qword_100CE6CC8);
  v33 = v39;
  (*(*(v32 - 8) + 16))(v39, v38, v32);
  result = sub_10022C350(&qword_100CE6CD0);
  v35 = v33 + *(result + 36);
  *v35 = KeyPath;
  *(v35 + 8) = v27;
  *(v35 + 16) = 0;
  return result;
}

uint64_t sub_10093A5A4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE6D90);
  __chkstk_darwin(v2 - 8);
  sub_1000302D8(a1, &v5 - v3, &qword_100CE6D90);
  return EnvironmentValues.editMode.setter();
}

uint64_t sub_10093A64C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v2 = type metadata accessor for ListView.ListContentView(0);
  v43 = *(v2 - 8);
  v42 = *(v43 + 64);
  __chkstk_darwin(v2 - 8);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA6F40);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_10022C350(&qword_100CA5528);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = &v38 - v11;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = objc_opt_self();
  v19 = [v18 mainBundle];
  v47._object = 0x8000000100AE6B20;
  v20._countAndFlagsBits = 0x6C65636E6143;
  v47._countAndFlagsBits = 0xD000000000000024;
  v20._object = 0xE600000000000000;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v47);

  v46 = v22;
  static ButtonRole.cancel.getter();
  v23 = type metadata accessor for ButtonRole();
  sub_10001B350(v6, 0, 1, v23);
  sub_10002D5A4();
  Button<>.init<A>(_:role:action:)();
  v24 = [v18 mainBundle];
  v48._object = 0x8000000100AE6B50;
  v25._countAndFlagsBits = 0x6574656C6544;
  v25._object = 0xE600000000000000;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0xD00000000000001BLL;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v48);

  v46 = v27;
  static ButtonRole.destructive.getter();
  sub_10001B350(v6, 0, 1, v23);
  v28 = v40;
  sub_100941A20(v44, v40);
  v29 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v30 = swift_allocObject();
  sub_1009423C8(v28, v30 + v29);
  Button<>.init<A>(_:role:action:)();
  v31 = *(v8 + 16);
  v32 = v39;
  v31(v39, v17, v7);
  v33 = v41;
  v31(v41, v14, v7);
  v34 = v45;
  v31(v45, v32, v7);
  v35 = sub_10022C350(&qword_100CC3B88);
  v31(&v34[*(v35 + 48)], v33, v7);
  v36 = *(v8 + 8);
  v36(v14, v7);
  v36(v17, v7);
  v36(v33, v7);
  return (v36)(v32, v7);
}

uint64_t sub_10093AB3C()
{
  v0 = sub_10022C350(&qword_100CC4158);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v13 - v4;
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for ListLocationViewModel(0);
  __chkstk_darwin(v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListView.ListContentView(0);
  sub_10022C350(&qword_100CE6930);
  State.wrappedValue.getter();
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    return sub_100018198(v8, &qword_100CC4158);
  }

  sub_1009423C8(v8, v11);
  sub_10093AD60(v11);
  sub_10001B350(v5, 1, 1, v9);
  sub_1000302D8(v5, v2, &qword_100CC4158);
  State.wrappedValue.setter();
  sub_100018198(v5, &qword_100CC4158);
  return sub_10093F8A8(v11, type metadata accessor for ListLocationViewModel);
}

void sub_10093AD60(uint64_t a1)
{
  v34 = type metadata accessor for ListLocationViewModel(0);
  __chkstk_darwin(v34);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CC4158);
  __chkstk_darwin(v5 - 8);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for ListViewModel();
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  type metadata accessor for ListView.ListContentView(0);
  v35 = v1;
  sub_100988558();
  v16 = *&v15[*(v10 + 36)];

  sub_10093F8A8(v15, type metadata accessor for ListViewModel);
  v36 = a1;
  v38 = a1;
  v17 = sub_1008EF908(sub_100943FE8, v37, v16);
  LOBYTE(a1) = v18;

  if (a1 & 1) != 0 || (sub_100988558(), v19 = *&v12[*(v10 + 68)], , sub_10093F8A8(v12, type metadata accessor for ListViewModel), v20 = sub_10087A1B4(v17, v19), v22 = v21, v23 = , (v22))
  {
    if (qword_100CA26A0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000703C(v24, qword_100D90A48);
    sub_100941A20(v36, v4);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 141558275;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      v29 = LocationModel.id.getter();
      v31 = v30;
      sub_10093F8A8(v4, type metadata accessor for ListLocationViewModel);
      v32 = sub_100078694(v29, v31, &v39);

      *(v27 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Could not find location with id %{private,mask.hash}s while attempting to delete it.", v27, 0x16u);
      sub_100006F14(v28);
    }

    else
    {

      sub_10093F8A8(v4, type metadata accessor for ListLocationViewModel);
    }
  }

  else
  {
    __chkstk_darwin(v23);
    *(&v33 - 2) = v35;
    *(&v33 - 1) = v20;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    sub_100941A20(v36, v9);
    sub_10001B350(v9, 0, 1, v34);
    sub_1000302D8(v9, v33, &qword_100CC4158);
    sub_10022C350(&qword_100CE6930);
    State.wrappedValue.setter();
    sub_100018198(v9, &qword_100CC4158);
  }
}

uint64_t sub_10093B244@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10093B2EC()
{
  v0 = LocationModel.id.getter();
  v2 = v1;
  if (v0 == LocationModel.id.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_10093B384(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ListView.ListContentView(0);
  sub_10022C350(&qword_100CAB980);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2C3F0;
  *(v7 + 32) = a2;
  v9[1] = v7;
  sub_10093F860(&qword_100CE6DB8, &type metadata accessor for IndexSet);
  sub_10022C350(&qword_100CE6DC0);
  sub_10023FBF4(&qword_100CE6DC8, &qword_100CE6DC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100650604();
  return (*(v4 + 8))(v6, v3);
}

void sub_10093B554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
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
  sub_10022C350(&qword_100CA62E0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = &a9 - v34;
  sub_1000302D8(v23, &a9 - v34, &qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10011C0F0(v35, v25, &qword_100CA6028);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    sub_10000C918();
    swift_getAtKeyPath();

    (*(v28 + 8))(v32, v26);
  }

  sub_10000536C();
}

void sub_10093B704()
{
  sub_10000C778();
  v51 = v1;
  v50 = sub_10022C350(&qword_100CA6028);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_1000039BC();
  v47 = v3;
  active = type metadata accessor for ActiveLocationModel(0);
  v5 = sub_100003810(active);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v46 = v7 - v6;
  v8 = type metadata accessor for ListView.VFXPlaybackCoordinatorView(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v10;
  v12 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CE6F10);
  sub_1000037C4();
  v48 = v13;
  v49 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v52 = v16;
  v17 = static Color.clear.getter();
  v42 = v0;
  v43 = v17;
  v45 = type metadata accessor for ListView.VFXPlaybackCoordinatorView;
  sub_100941A20(v0, v12);
  v39 = *(v9 + 80);
  v18 = (v39 + 16) & ~v39;
  v44 = v11;
  v19 = swift_allocObject();
  v40 = v19;
  v41 = type metadata accessor for ListView.VFXPlaybackCoordinatorView;
  sub_1009423C8(v12, v19 + v18);
  v53 = v17;
  v54 = sub_100944FD4;
  v55 = v19;
  v56 = 0;
  v57 = 0;
  v20 = v46;
  sub_1000E7B34();
  sub_100941A20(v0, v12);
  v21 = swift_allocObject();
  sub_1009423C8(v12, v21 + v18);
  v22 = sub_10022C350(&qword_100CA5A98);
  v23 = sub_10022C350(&qword_100CADBA0);
  v24 = sub_1000A4F28();
  v25 = sub_10014F7C8();
  View.onChange<A>(of:initial:_:)();

  v26 = sub_100018198(v20, &qword_100CADBA0);
  v27 = v47;
  v28 = v42;
  sub_10093B554(v26, v29, v30, v31, v32, v33, v34, v35, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  sub_100941A20(v28, v12);
  v36 = swift_allocObject();
  sub_1009423C8(v12, v36 + v18);
  v53 = v22;
  v54 = v23;
  v55 = v24;
  v56 = v25;
  swift_getOpaqueTypeConformance2();
  sub_1000F1EAC();
  v37 = v48;
  v38 = v52;
  View.onChange<A>(of:initial:_:)();

  sub_100018198(v27, &qword_100CA6028);
  (*(v49 + 8))(v38, v37);
  sub_10000536C();
}

void sub_10093BB44()
{
  v1 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v1 - 8);
  v55 = &v53 - v2;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v53 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA64E8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v53 - v10;
  v12 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v12 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  sub_10093B554(v21, v22, v23, v24, v25, v26, v27, v28, v53, v54, v55, v0, v56, v57, v58, v59, v60, v61, v62, v63);
  v29 = v6;
  (*(v6 + 104))(v17, enum case for UserInterfaceSizeClass.compact(_:), v5);
  sub_10001B350(v17, 0, 1, v5);
  v30 = *(v9 + 56);
  sub_1000302D8(v20, v11, &qword_100CA6028);
  sub_1000302D8(v17, &v11[v30], &qword_100CA6028);
  if (sub_100024D10(v11, 1, v5) != 1)
  {
    sub_1000302D8(v11, v14, &qword_100CA6028);
    if (sub_100024D10(&v11[v30], 1, v5) != 1)
    {
      v32 = v53;
      (*(v29 + 32))(v53, &v11[v30], v5);
      sub_10093F860(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v29 + 8);
      v33(v32, v5);
      sub_100018198(v17, &qword_100CA6028);
      sub_100018198(v20, &qword_100CA6028);
      v33(v14, v5);
      sub_100018198(v11, &qword_100CA6028);
      goto LABEL_8;
    }

    sub_100018198(v17, &qword_100CA6028);
    sub_100018198(v20, &qword_100CA6028);
    (*(v29 + 8))(v14, v5);
    goto LABEL_6;
  }

  sub_100018198(v17, &qword_100CA6028);
  sub_100018198(v20, &qword_100CA6028);
  if (sub_100024D10(&v11[v30], 1, v5) != 1)
  {
LABEL_6:
    sub_100018198(v11, &qword_100CA64E8);
    v31 = 0;
    goto LABEL_8;
  }

  sub_100018198(v11, &qword_100CA6028);
  v31 = 1;
LABEL_8:
  type metadata accessor for ListView.VFXPlaybackCoordinatorView(0);
  v34 = v54;
  sub_1000E7B34();
  v35 = v34;
  v36 = v55;
  sub_10011C0F0(v35, v55, &qword_100CADBA0);
  v37 = type metadata accessor for Location.Identifier();
  v38 = sub_100024D10(v36, 1, v37);
  sub_100018198(v36, &qword_100CADBA0);
  swift_getObjectType();
  v39 = dispatch thunk of WeatherConditionPlaybackCoordinatorType.isPlaybackBlocked()();
  v40 = v39;
  if ((v31 & 1) != 0 && v38 != 1)
  {
    if ((v39 & 1) == 0)
    {
      if (qword_100CA26E8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000703C(v41, qword_100D90B20);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 67109632;
        *(v44 + 4) = 1;
        *(v44 + 8) = 1024;
        *(v44 + 10) = 1;
        *(v44 + 14) = 1024;
        *(v44 + 16) = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Pausing and blocking VFX playback; isWindowCompact=%{BOOL}d, isLocationSelected=%{BOOL}d, isPlaybackBlocked=%{BOOL}d", v44, 0x14u);
      }

      dispatch thunk of WeatherConditionPlaybackCoordinatorType.setPlaybackBlocked(_:)();
      WeatherConditionPlaybackCoordinatorType.pause(_:)(0);
      return;
    }

    goto LABEL_22;
  }

  if ((v39 & 1) == 0)
  {
LABEL_22:
    if (qword_100CA26E8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000703C(v49, qword_100D90B20);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 67109632;
      *(v52 + 4) = v31 & 1;
      *(v52 + 8) = 1024;
      *(v52 + 10) = v38 != 1;
      *(v52 + 14) = 1024;
      *(v52 + 16) = v40 & 1;
      _os_log_impl(&_mh_execute_header, v50, v51, "No update needed to VFX playback; isWindowCompact=%{BOOL}d, isLocationSelected=%{BOOL}d, isPlaybackBlocked=%{BOOL}d", v52, 0x14u);
    }

    return;
  }

  if (qword_100CA26E8 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_10000703C(v45, qword_100D90B20);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 67109632;
    *(v48 + 4) = v31 & 1;
    *(v48 + 8) = 1024;
    *(v48 + 10) = v38 != 1;
    *(v48 + 14) = 1024;
    *(v48 + 16) = 1;
    _os_log_impl(&_mh_execute_header, v46, v47, "Unblocking and resuming VFX playback; isWindowCompact=%{BOOL}d, isLocationSelected=%{BOOL}d, isPlaybackBlocked=%{BOOL}d", v48, 0x14u);
  }

  dispatch thunk of WeatherConditionPlaybackCoordinatorType.setPlaybackBlocked(_:)();
  dispatch thunk of WeatherConditionPlaybackCoordinatorType.play(_:)();
}

void sub_10093C3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v5 = type metadata accessor for Location.Identifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  v12 = sub_10022C350(&qword_100CADD58);
  __chkstk_darwin(v12 - 8);
  v14 = v19 - v13;
  v16 = *(v15 + 56);
  sub_1000302D8(a1, v19 - v13, &qword_100CADBA0);
  sub_1000302D8(a2, &v14[v16], &qword_100CADBA0);
  if (sub_100024D10(v14, 1, v5) == 1)
  {
    if (sub_100024D10(&v14[v16], 1, v5) == 1)
    {
      sub_100018198(v14, &qword_100CADBA0);
      return;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v14, v11, &qword_100CADBA0);
  if (sub_100024D10(&v14[v16], 1, v5) == 1)
  {
    (*(v6 + 8))(v11, v5);
LABEL_6:
    sub_100018198(v14, &qword_100CADD58);
LABEL_7:
    sub_10093BB44();
    return;
  }

  (*(v6 + 32))(v8, &v14[v16], v5);
  sub_10093F860(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  sub_100018198(v14, &qword_100CADBA0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}