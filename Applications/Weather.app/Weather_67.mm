unint64_t sub_1007274D0(uint64_t a1)
{
  v3 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004C02C8(a1, v5);
  v6 = sub_10054B774(v5);
  v7 = type metadata accessor for NotificationsOptInInput();
  v8 = *(a1 + v7[7]);
  v9 = *(a1 + v7[10]);
  v10 = *(a1 + v7[11]);
  v11 = *(a1 + v7[6]);
  v12 = sub_100727628(v6, v11, v8 == 1, v9, v10, *(a1 + v7[12]), *(a1 + v7[9]));
  v13 = *(v1 + 16);
  v14 = sub_100141E8C(v10, 0, 0, v11, v8, *(a1 + v7[8]));
  v15 = *(a1 + v7[5]);
  if (v12 != 3)
  {
    *(v1 + 16) = v12;
  }

  v16 = v15 == 0;
  v17 = 0x1000000000000;
  if (v16)
  {
    v17 = 0;
  }

  v18 = v17 | ((v14 & 0xFFFFFF) << 24);
  v19 = 0x10000;
  if (!v9)
  {
    v19 = 0;
  }

  return (v18 | v19) & 0xFFFFFFFFFFFFFF00 | (v13 << 8) | v12;
}

uint64_t sub_100727628(char a1, char a2, char a3, char a4, char a5, char a6, char a7)
{
  if (a7)
  {
    return 2;
  }

  if (a1 == 2 || (a1 & 1) != 0)
  {
    return sub_100727684(a2, a3 & 1, a4 & 1, a5 & 1, a6 & 1);
  }

  if (a4)
  {
    v8 = 3;
  }

  else
  {
    v8 = 5;
  }

  if ((a6 & 1) == 0)
  {
    v8 = 1;
  }

  if (a3)
  {
    return 3;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_100727684(char a1, char a2, char a3, char a4, char a5)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        return 0;
      }

      if (LocationAuthorizationState.rawValue.getter(a1) == 0xD000000000000013 && 0x8000000100ABA3F0 == v11)
      {

        if ((a4 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) != 0 && (a4 & 1) == 0)
        {
          return 0;
        }
      }

      if (LocationAuthorizationState.rawValue.getter(a1) == 0xD000000000000010 && 0x8000000100ABA410 == v15)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17 & 1) == 0 && (a4 & 1) != 0 && (a3)
        {
          return 3;
        }
      }

      if (LocationAuthorizationState.rawValue.getter(a1) == 0x6465696E6564 && v18 == 0xE600000000000000)
      {

        return 4;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        return 4;
      }

      if (LocationAuthorizationState.rawValue.getter(a1) == 0xD000000000000013 && 0x8000000100ABA3F0 == v21)
      {

        v24 = a2;
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v24 = a2;
        if ((v23 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (a4)
      {
        return 4;
      }

LABEL_36:
      if (a3)
      {
        v25 = 3;
      }

      else
      {
        v25 = 5;
      }

      if ((a5 & 1) == 0)
      {
        v25 = 1;
      }

      if (v24)
      {
        return 3;
      }

      else
      {
        return v25;
      }

    default:

      return 0;
  }
}

uint64_t sub_100727954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  type metadata accessor for AirQualityScale();
  sub_1000037C4();
  v46 = v4;
  v47 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for AirQualityScaleCategory();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v45 = type metadata accessor for ProviderDataOrigination();
  sub_1000037C4();
  v43 = v15;
  __chkstk_darwin(v16);
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v21 = sub_10022C350(&qword_100CB1288);
  __chkstk_darwin(v21 - 8);
  v23 = &v43 - v22;
  v24 = sub_10022C350(&qword_100CC62B8);
  __chkstk_darwin(v24 - 8);
  v26 = &v43 - v25;
  v27 = type metadata accessor for AirQuality();
  sub_1000037C4();
  v48 = v28;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  v49 = a1;
  sub_100727E74(a1, v23);
  v33 = type metadata accessor for WeatherDataModel();
  if (sub_100024D10(v23, 1, v33) == 1)
  {
    sub_10003FDF4(v23, &qword_100CB1288);
    sub_10001B350(v26, 1, 1, v27);
LABEL_4:
    sub_10003FDF4(v49, &qword_100CB1288);
    sub_10003FDF4(v26, &qword_100CC62B8);
    v34 = 1;
    v35 = v50;
LABEL_10:
    v42 = type metadata accessor for AQIData();
    return sub_10001B350(v35, v34, 1, v42);
  }

  WeatherDataModel.airQuality.getter();
  (*(*(v33 - 8) + 8))(v23, v33);
  if (sub_100024D10(v26, 1, v27) == 1)
  {
    goto LABEL_4;
  }

  (*(v48 + 32))(v32, v26, v27);
  sub_100727EE4(v20);
  result = AirQuality.index.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  AirQuality.currentScaleCategory.getter();
  v37 = AirQualityScaleCategory.number.getter();
  result = (*(v10 + 8))(v14, v8);
  if (v37 < 0xFFFFFFFF80000000)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v37 <= 0x7FFFFFFF)
  {
    AirQuality.scale.getter();
    AirQualityScale.displayName.getter();
    (*(v46 + 8))(v7, v47);
    v38 = v43;
    v39 = *(v43 + 16);
    v40 = v20;
    v47 = v20;
    v41 = v45;
    v39(v44, v40, v45);
    v35 = v50;
    AQIData.init(index:category:scale:providerDataOrigination:)();
    sub_10003FDF4(v49, &qword_100CB1288);
    (*(v38 + 8))(v47, v41);
    (*(v48 + 8))(v32, v27);
    v34 = 0;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100727E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB1288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100727EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AirQualitySourceKind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AirQualitySource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AirQuality.source.getter();
  AirQualitySource.kind.getter();
  (*(v7 + 8))(v9, v6);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == enum case for AirQualitySourceKind.modeled(_:))
  {
    v11 = &enum case for ProviderDataOrigination.modeled(_:);
LABEL_5:
    v13 = *v11;
    v14 = type metadata accessor for ProviderDataOrigination();
    return (*(*(v14 - 8) + 104))(a1, v13, v14);
  }

  v12 = v10;
  if (v10 == enum case for AirQualitySourceKind.station(_:))
  {
    v11 = &enum case for ProviderDataOrigination.station(_:);
    goto LABEL_5;
  }

  v16 = enum case for AirQualitySourceKind.unknown(_:);
  v17 = enum case for ProviderDataOrigination.unknown(_:);
  v18 = type metadata accessor for ProviderDataOrigination();
  result = (*(*(v18 - 8) + 104))(a1, v17, v18);
  if (v12 != v16)
  {
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_100728154(uint64_t a1, uint64_t a2)
{
  v913 = a2;
  v918 = a1;
  v866 = type metadata accessor for Locale();
  v864 = *(v866 - 8);
  __chkstk_darwin(v866);
  sub_1000038E4();
  sub_100003990(v2);
  v3 = sub_10022C350(&qword_100CAA9F0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v5);
  sub_10000E70C();
  sub_100003918(v6);
  v7 = type metadata accessor for PreviewLocation();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000038E4();
  sub_100003918(v9);
  active = type metadata accessor for LocationViewerActiveLocationState();
  v11 = sub_100003810(active);
  __chkstk_darwin(v11);
  sub_1000038E4();
  sub_100003918(v12);
  v13 = type metadata accessor for SavedLocation();
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_1000038E4();
  v906 = v15;
  v921 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_100003848();
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
  sub_10000E70C();
  sub_100003918(v22);
  v917 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_10000E70C();
  sub_100003918(v29);
  v915 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_10000E70C();
  sub_100003918(v36);
  v914 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v37);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_10000E70C();
  sub_100003918(v43);
  v920 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_10000E70C();
  sub_100003918(v51);
  v919 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
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
  v59 = sub_10022C350(&qword_100CA65E8);
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
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_10000E70C();
  sub_100003990(v72);
  v73 = sub_10022C350(&qword_100CA6610);
  v74 = sub_100003810(v73);
  __chkstk_darwin(v74);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
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
  sub_100003878();
  v905 = v82;
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_10000E70C();
  sub_100003990(v87);
  v88 = sub_10022C350(&qword_100CA6618);
  v89 = sub_100003810(v88);
  __chkstk_darwin(v89);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
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
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_10000E70C();
  sub_100003990(v101);
  v102 = sub_10022C350(&qword_100CA6620);
  v103 = sub_100003810(v102);
  __chkstk_darwin(v103);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
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
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_10000E70C();
  sub_100003990(v115);
  v116 = sub_10022C350(&qword_100CA6628);
  v117 = sub_100003810(v116);
  __chkstk_darwin(v117);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_10000E70C();
  sub_100003990(v129);
  v130 = sub_10022C350(&qword_100CA6630);
  v131 = sub_100003810(v130);
  __chkstk_darwin(v131);
  sub_100003848();
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
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v141);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_10000E70C();
  sub_100003990(v143);
  v144 = sub_10022C350(&qword_100CA6638);
  v145 = sub_100003810(v144);
  __chkstk_darwin(v145);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_10000E70C();
  sub_100003990(v157);
  v158 = sub_10022C350(&qword_100CA6640);
  v159 = sub_100003810(v158);
  __chkstk_darwin(v159);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_10000E70C();
  v172 = sub_100003918(v171);
  v909 = type metadata accessor for WeatherMapPresentationState(v172);
  sub_1000037E8();
  __chkstk_darwin(v173);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_10000E70C();
  sub_100003918(v177);
  v912 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v178);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_10000E70C();
  v183 = sub_100003918(v182);
  v907 = type metadata accessor for ViewState.SecondaryViewState(v183);
  sub_1000037E8();
  __chkstk_darwin(v184);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_10000E70C();
  sub_100003990(v188);
  v189 = sub_10022C350(&qword_100CA65F0);
  v190 = sub_100003810(v189);
  __chkstk_darwin(v190);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v191);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v192);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_10000E70C();
  sub_100003990(v198);
  v199 = sub_10022C350(&qword_100CA65F8);
  v200 = sub_100003810(v199);
  __chkstk_darwin(v200);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_10000E70C();
  sub_100003990(v208);
  v209 = sub_10022C350(&qword_100CA6600);
  v210 = sub_100003810(v209);
  __chkstk_darwin(v210);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v211);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v212);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v217);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v218);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_10000E70C();
  sub_100003990(v222);
  v223 = sub_10022C350(&qword_100CA6608);
  v224 = sub_100003810(v223);
  __chkstk_darwin(v224);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_100003878();
  sub_100003908();
  v229 = __chkstk_darwin(v228);
  v231 = &v787 - v230;
  v232 = __chkstk_darwin(v229);
  v233 = __chkstk_darwin(v232);
  v235 = (&v787 - v234);
  __chkstk_darwin(v233);
  v237 = &v787 - v236;
  v922 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v238);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v240);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v241);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v242);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v243);
  sub_100003878();
  v908 = v244;
  __chkstk_darwin(v245);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v246);
  sub_100003878();
  sub_100003908();
  v248 = __chkstk_darwin(v247);
  v250 = &v787 - v249;
  __chkstk_darwin(v248);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v251);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v252);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v253);
  v255 = (&v787 - v254);
  type metadata accessor for ActivityAction();
  sub_1000037E8();
  __chkstk_darwin(v256);
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  v258 = __chkstk_darwin(v257);
  v260 = &v787 - ((v259 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v258);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v261);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v262);
  sub_100003878();
  sub_100003908();
  v264 = __chkstk_darwin(v263);
  v266 = &v787 - v265;
  __chkstk_darwin(v264);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v267);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v268);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v269);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v270);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v271);
  sub_100003878();
  v911 = v272;
  __chkstk_darwin(v273);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v274);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v275);
  v916 = &v787 - v276;
  v910 = v277;
  swift_storeEnumTagMultiPayload();
  sub_1007345F8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000109B0();
      sub_1000E0148(v916, v400);
      sub_100073090();
      v401 = sub_100003BCC(v862);
      sub_10001B350(v401, v402, v403, v919);
      v404 = sub_100003BCC(&v864);
      sub_10001B350(v404, v405, v406, v920);
      v407 = sub_100003BCC(&v868);
      sub_10001B350(v407, v408, v409, v914);
      v410 = sub_100003BCC(&v872);
      sub_10001B350(v410, v411, v412, v915);
      v413 = sub_100003BCC(&v876);
      v414 = v917;
      sub_10001B350(v413, v415, v416, v917);
      v417 = sub_100003BCC(&v880);
      sub_10001B350(v417, v418, v419, v921);
      v420 = sub_100003BCC(&v885);
      sub_10001B350(v420, v421, v422, v922);
      v423 = type metadata accessor for LocationPreviewViewState(0);
      type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      v424 = *(v423 + 24);
      type metadata accessor for SelectedSearchResult();
      swift_storeEnumTagMultiPayload();
      sub_100073090();
      v425 = v910;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v426, v427, v428, v425);
      sub_10002CA34();
      v429 = v918;
      sub_1007345F8();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v424);
      if (v310)
      {
        sub_1000180EC(v424, &qword_100CA65E8);
      }

      else
      {
        sub_1000109B0();
        sub_1000E0148(v266, v595);
        sub_10001F650();
        sub_100073090();
      }

      v596 = v822;
      v597 = v816;
      sub_10001F650();
      sub_100073090();
      v598 = *(v429 + 16);
      LODWORD(v916) = *(v429 + 24);
      v599 = v814;
      sub_100051BBC();
      v600 = sub_100007FC4();
      v601 = v919;
      sub_1000038B4(v600, v602, v919);
      if (v310)
      {
        sub_10000CE4C();
        sub_1007345F8();
        sub_100086880(v599);

        v603 = v599;
        v612 = v819;
        if (v601 != 1)
        {
          sub_1000180EC(v603, &qword_100CA6640);
        }
      }

      else
      {
        sub_100024A14();
        sub_100073090();

        v612 = v819;
      }

      sub_1000AF628();
      sub_100003A40(v597);
      if (v310)
      {
        swift_beginAccess();
        sub_100019E08();
        sub_1007345F8();
        sub_100003A40(v597);
        v618 = v834;
        v619 = v828;
        if (!v310)
        {
          sub_1000180EC(v597, &qword_100CA6638);
        }
      }

      else
      {
        sub_10003C79C();
        sub_100073090();
        v618 = v834;
        v619 = v828;
      }

      sub_100051BBC();
      sub_100003BDC(v612);
      if (v310)
      {
        sub_100017CF4();
        sub_1007345F8();
        sub_100003BDC(v612);
        v653 = v826;
        if (!v310)
        {
          sub_1000180EC(v612, &qword_100CA6630);
        }
      }

      else
      {
        sub_100069924();
        sub_100073090();
        v653 = v826;
      }

      sub_100030224(&v872);
      sub_100051BBC();
      sub_10000E7EC(v596);
      if (v310)
      {
        sub_100013B7C();
        sub_1007345F8();
        sub_10000E7EC(v596);
        if (!v310)
        {
          sub_1000180EC(v596, &qword_100CA6628);
        }
      }

      else
      {
        sub_10004E9EC();
        sub_100073090();
      }

      v920 = v598;
      sub_100051BBC();
      v661 = sub_1000162B0();
      sub_1000038B4(v661, v662, v414);
      if (v310)
      {
        sub_100016E2C();
        sub_1007345F8();
        v663 = sub_1000162B0();
        sub_1000038B4(v663, v664, v414);
        if (!v310)
        {
          sub_1000180EC(v653, &qword_100CA6620);
        }
      }

      else
      {
        sub_100049B7C();
        sub_100073090();
      }

      sub_1000436AC(&v880);
      sub_100051BBC();
      sub_10000E7EC(v619);
      if (v310)
      {
        sub_100074EE4();
        sub_1007345F8();
        sub_10000E7EC(v619);
        if (!v310)
        {
          sub_1000180EC(v619, &qword_100CA6618);
        }
      }

      else
      {
        sub_100028A54();
        sub_100073090();
      }

      sub_100051BBC();
      sub_10000554C(v618);
      if (v310)
      {
        sub_10001CC10();
        sub_1007345F8();
        sub_10000554C(v618);
        if (!v310)
        {
          sub_1000180EC(v618, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000230B0();
        sub_100073090();
      }

      sub_10001F650();
      sub_1000719D8();
      sub_10003A0FC();
      sub_100087104();
      sub_100003B6C();
      sub_10000E80C();
      v518 = v920;
      v519 = v916;
      v520 = v867;
      v521 = v868;
      v522 = v870[0];
      v523 = v871;
      v524 = v873;
      v525 = &v900;
      goto LABEL_276;
    case 2u:
      sub_10001CC10();
      v316 = v918;
      v913 = v317;
      sub_1007345F8();
      v318 = v922;
      v319 = v821;
      if ((*(v255 + v922[10] + 1) & 0xC0) == 0x40)
      {
        sub_100003934();
        v320 = v907;
        sub_10001B350(v321, v322, v323, v907);
        v324 = type metadata accessor for SearchViewState(0);
        sub_100003934();
        sub_10001B350(v325, v326, v327, v324);
        v328 = sub_100003BCC(v820);
        sub_10001B350(v328, v329, v330, v912);
        sub_10039981C(v809);
        sub_10000E7B0();
        sub_10001B350(v331, v332, v333, v909);
        v334 = *v255;
        sub_100095588();
        v335 = sub_1000201BC();
        sub_1000038B4(v335, v336, v320);
        if (v310)
        {
          sub_1000186D8();
          sub_1007345F8();
          v337 = sub_1000201BC();
          v339 = sub_100024D10(v337, v338, v320);

          if (v339 != 1)
          {
            sub_1000180EC(v235, &qword_100CA6608);
          }
        }

        else
        {
          sub_100014D7C();
          sub_100073090();
        }

        v235 = v922;
        LODWORD(v908) = *(v255 + v922[6]);
        v719 = [objc_opt_self() currentDevice];
        v720 = [v719 userInterfaceIdiom];

        if (v720 && *(v255 + v235[9] + 8) == 2)
        {
          v721 = 1;
        }

        else
        {
          v721 = *(v255 + v235[7]);
        }

        sub_1000180EC(v237, &qword_100CA6608);
        sub_100020FE8();
        sub_100051BBC();
        v722 = sub_10000C834();
        sub_1000038B4(v722, v723, v324);
        v724 = v791;
        if (v310)
        {
          sub_100095588();
          v725 = sub_10000C834();
          sub_1000038B4(v725, v726, v324);
          v730 = v790;
          if (!v310)
          {
            sub_1000180EC(v237, &qword_100CA6600);
          }
        }

        else
        {
          sub_10003005C();
          sub_100020FE8();
          sub_100073090();
          sub_10000E7B0();
          sub_10001B350(v727, v728, v729, v324);
          v730 = v790;
        }

        sub_100051BBC();
        v731 = sub_100007FC4();
        sub_1000038B4(v731, v732, v912);
        if (v310)
        {
          sub_100031F10();
          sub_1007345F8();
          sub_10000554C(v730);
          if (!v310)
          {
            sub_1000180EC(v730, &qword_100CA65F8);
          }
        }

        else
        {
          sub_100008D8C();
          sub_100073090();
        }

        sub_100120130();
        v733 = sub_1000175DC();
        sub_1000038B4(v733, v734, v909);
        if (v310)
        {
          sub_1000117A8();
          sub_1007345F8();
          sub_10000554C(v724);
          v735 = v789;
          if (!v310)
          {
            sub_1000180EC(v724, &qword_100CA65F0);
          }
        }

        else
        {
          sub_100006654();
          sub_100073090();
          v735 = v789;
        }

        v736 = *(v255 + v235[11]);
        sub_1000049A4();
        sub_1000E0148(v255, v737);
        *v735 = v334;
        sub_100014D7C();
        sub_100073090();
        *(v735 + v235[6]) = v908;
        *(v735 + v235[7]) = v721;
        sub_100051BBC();
        sub_100008D8C();
        sub_100073090();
        sub_100006654();
        sub_100073090();
        *(v735 + v235[11]) = v736;
        sub_1000230B0();
        sub_100073090();
        v316 = v918;
        v318 = v235;
      }

      sub_10081BAEC();
      sub_1000049A4();
      sub_1000E0148(v255, v738);
      sub_100073090();
      v739 = sub_100003BCC(&v869);
      sub_10001B350(v739, v740, v741, v919);
      sub_100003934();
      sub_10001B350(v742, v743, v744, v920);
      sub_100003934();
      sub_10001B350(v745, v746, v747, v914);
      v748 = sub_100003BCC(&v882);
      sub_10001B350(v748, v749, v750, v915);
      v751 = sub_100003BCC(v887);
      v752 = v917;
      sub_10001B350(v751, v753, v754, v917);
      v755 = sub_100003BCC(v891);
      sub_10001B350(v755, v756, v757, v921);
      sub_1000113EC();
      sub_100073090();
      sub_10000E7B0();
      sub_10001B350(v758, v759, v760, v318);
      sub_10001F650();
      sub_1000113EC();
      sub_100073090();
      sub_10000E7B0();
      sub_10001B350(v761, v762, v763, v910);
      sub_10002CA34();
      sub_1000325C0();
      sub_1007345F8();
      sub_1000C83F8();
      sub_10000554C(v235);
      if (v310)
      {
        sub_1000180EC(v235, &qword_100CA65E8);
      }

      else
      {
        sub_1000109B0();
        sub_1000E0148(v319, v764);
        sub_10001F650();
        sub_100073090();
      }

      sub_10001F650();
      sub_100073090();
      v765 = *(v316 + 16);
      LODWORD(v918) = *(v316 + 24);
      sub_1000C83F8();
      v766 = sub_1000201BC();
      v767 = v919;
      sub_1000038B4(v766, v768, v919);
      v922 = v765;
      if (v310)
      {
        sub_10000CE4C();
        sub_1007345F8();
        v769 = sub_1000201BC();
        v771 = sub_100024D10(v769, v770, v767);

        if (v771 != 1)
        {
          sub_1000180EC(v235, &qword_100CA6640);
        }
      }

      else
      {
        sub_100024A14();
        sub_100073090();
      }

      sub_1000325C0();
      sub_100051BBC();
      v772 = sub_1000162B0();
      v773 = v920;
      sub_1000038B4(v772, v774, v920);
      if (v310)
      {
        sub_100043A6C();
        sub_100019E08();
        sub_1007345F8();
        v775 = sub_1000162B0();
        sub_1000038B4(v775, v776, v773);
        v777 = v848;
        v778 = v831;
        if (!v310)
        {
          sub_1000180EC(v765, &qword_100CA6638);
        }
      }

      else
      {
        sub_10003C79C();
        sub_100073090();
        v777 = v848;
        v778 = v831;
      }

      sub_1000325C0();
      sub_100051BBC();
      sub_1000083BC(v765);
      if (v310)
      {
        sub_100017CF4();
        sub_1007345F8();
        sub_1000083BC(v765);
        v779 = v837;
        if (!v310)
        {
          sub_1000180EC(v765, &qword_100CA6630);
        }
      }

      else
      {
        sub_100069924();
        sub_100073090();
        v779 = v837;
      }

      sub_1000AF628();
      sub_10000E7EC(v778);
      if (v310)
      {
        sub_100013B7C();
        sub_1007345F8();
        sub_10000E7EC(v778);
        v780 = v843;
        if (!v310)
        {
          sub_1000180EC(v778, &qword_100CA6628);
        }
      }

      else
      {
        sub_10004E9EC();
        sub_100073090();
        v780 = v843;
      }

      sub_100051BBC();
      v781 = sub_100007FC4();
      sub_1000038B4(v781, v782, v752);
      if (v310)
      {
        sub_100016E2C();
        sub_1007345F8();
        v783 = sub_100007FC4();
        sub_1000038B4(v783, v784, v752);
        if (!v310)
        {
          sub_1000180EC(v779, &qword_100CA6620);
        }
      }

      else
      {
        sub_100049B7C();
        sub_100073090();
      }

      sub_100120130();
      sub_10000554C(v780);
      if (v310)
      {
        sub_100074EE4();
        sub_1007345F8();
        sub_10000554C(v780);
        if (!v310)
        {
          sub_1000180EC(v780, &qword_100CA6618);
        }
      }

      else
      {
        sub_100028A54();
        sub_100073090();
      }

      sub_1000436AC(&v893);
      sub_100051BBC();
      sub_100003A40(v777);
      if (v310)
      {
        sub_10001CC10();
        sub_1007345F8();
        sub_100003A40(v777);
        if (!v310)
        {
          sub_1000180EC(v777, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000230B0();
        sub_100073090();
      }

      sub_10001F650();
      sub_1000719D8();
      sub_100042750();
      sub_100036E40();
      sub_100087104();
      sub_100003B6C();
      sub_10000E80C();
      v518 = v922;
      v519 = v918;
      v520 = v879;
      v521 = v883;
      v522 = v889;
      v523 = v891[1];
      v524 = v892[2];
      v525 = &v923;
      goto LABEL_276;
    case 3u:
      v340 = sub_100003BCC(&v867);
      sub_10001B350(v340, v341, v342, v919);
      v343 = sub_100003BCC(&v871);
      sub_10001B350(v343, v344, v345, v920);
      v346 = sub_100003BCC(v875);
      sub_10001B350(v346, v347, v348, v914);
      v349 = sub_100003BCC(&v879);
      sub_10001B350(v349, v350, v351, v915);
      v352 = sub_100003BCC(&v884);
      sub_10001B350(v352, v353, v354, v917);
      v355 = sub_100003BCC(&v889);
      sub_10001B350(v355, v356, v357, v921);
      sub_10001CC10();
      v358 = v918;
      v913 = v359;
      sub_1007345F8();
      type metadata accessor for ListViewState._Storage();
      swift_allocObject();
      sub_10000E7B0();
      v368 = sub_1000B0CD0(v360, v361, v362, v363, v364, v365, v366, v367, 0, 0, 0, 0, 1, 0);
      sub_100003934();
      v369 = v907;
      sub_10001B350(v370, v371, v372, v907);
      v373 = type metadata accessor for SearchViewState(0);
      sub_100003934();
      sub_10001B350(v374, v375, v376, v373);
      v377 = v807;
      sub_100003934();
      sub_10001B350(v378, v379, v380, v912);
      v381 = sub_100003BCC(v859);
      sub_10001B350(v381, v382, v383, v909);
      sub_100051BBC();
      v384 = sub_1000175DC();
      sub_1000038B4(v384, v385, v369);
      if (v310)
      {
        sub_1000186D8();
        sub_1007345F8();
        v386 = sub_1000175DC();
        v388 = sub_100024D10(v386, v387, v369);

        v483 = v845;
        v484 = v813;
        if (v388 != 1)
        {
          sub_1000180EC(v231, &qword_100CA6608);
        }
      }

      else
      {
        sub_100014D7C();
        sub_100073090();

        v483 = v845;
        v484 = v813;
      }

      v485 = v250[v922[6]];
      v486 = v799;
      sub_100051BBC();
      sub_100003A40(v486);
      if (v310)
      {
        sub_100095588();
        sub_100003A40(v486);
        if (!v310)
        {
          sub_1000180EC(v486, &qword_100CA6600);
        }
      }

      else
      {
        sub_10003005C();
        sub_100032590();
        sub_100073090();
        sub_10000E7B0();
        sub_10001B350(v487, v488, v489, v373);
      }

      sub_1000131DC();
      sub_100051BBC();
      sub_1000113D0(v377, 1);
      if (v310)
      {
        sub_100031F10();
        sub_1007345F8();
        sub_100003A40(v377);
        if (!v310)
        {
          sub_1000180EC(v377, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100008D8C();
        sub_100073090();
      }

      sub_1000AF628();
      v490 = sub_1000201BC();
      sub_1000113D0(v490, v491);
      if (v310)
      {
        sub_1000117A8();
        sub_1007345F8();
        sub_100003A40(v484);
        v492 = v798;
        if (!v310)
        {
          sub_1000180EC(v484, &qword_100CA65F0);
        }
      }

      else
      {
        sub_100006654();
        sub_100073090();
        v492 = v798;
      }

      v493 = v922;
      v494 = v250[v922[11]];
      sub_1000049A4();
      sub_1000E0148(v250, v495);
      *v483 = v368;
      sub_100014D7C();
      sub_100073090();
      *(v483 + v493[6]) = v485;
      *(v483 + v493[7]) = 0;
      sub_100051BBC();
      sub_100008D8C();
      sub_100073090();
      sub_100006654();
      sub_100073090();

      *(v483 + v493[11]) = v494;
      sub_10000E7B0();
      sub_10001B350(v496, v497, v498, v493);
      sub_10001F650();
      sub_1000113EC();
      sub_100073090();
      sub_10000E7B0();
      sub_10001B350(v499, v500, v501, v910);
      sub_10002CA34();
      sub_1007345F8();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v494);
      if (v310)
      {
        sub_1000180EC(v494, &qword_100CA65E8);
      }

      else
      {
        sub_1000109B0();
        sub_1000E0148(v492, v502);
        sub_10001F650();
        sub_100073090();
      }

      v503 = v919;
      v504 = v841;
      v505 = v833;
      sub_10001F650();
      sub_100073090();
      v506 = *(v358 + 16);
      LODWORD(v919) = *(v358 + 24);
      v507 = v818;
      sub_100051BBC();
      v508 = sub_100007FC4();
      sub_1000038B4(v508, v509, v503);
      v920 = v506;
      if (v310)
      {
        sub_10000CE4C();
        sub_1007345F8();
        sub_100086880(v507);

        if (v503 != 1)
        {
          sub_1000180EC(v507, &qword_100CA6640);
        }
      }

      else
      {
        sub_100024A14();
        sub_100073090();
      }

      sub_1000131DC();
      sub_100051BBC();
      sub_100003A40(v506);
      if (v310)
      {
        sub_100043A6C();
        sub_100019E08();
        sub_1007345F8();
        sub_100003A40(v506);
        v510 = v825;
        if (!v310)
        {
          sub_1000180EC(v506, &qword_100CA6638);
        }
      }

      else
      {
        sub_10003C79C();
        sub_100073090();
        v510 = v825;
      }

      sub_1000436AC(v875);
      sub_100051BBC();
      v511 = v914;
      sub_1000113D0(v510, 1);
      if (v310)
      {
        sub_100017CF4();
        sub_1007345F8();
        sub_100003A40(v510);
        if (!v310)
        {
          sub_1000180EC(v510, &qword_100CA6630);
        }
      }

      else
      {
        sub_100069924();
        sub_100073090();
      }

      sub_1000113EC();
      sub_100051BBC();
      v512 = sub_10000C7F0();
      v513 = v915;
      sub_1000038B4(v512, v514, v915);
      if (v310)
      {
        sub_100013B7C();
        sub_1007345F8();
        v515 = sub_10000C7F0();
        sub_1000038B4(v515, v516, v513);
        v517 = v847;
        if (!v310)
        {
          sub_1000180EC(v511, &qword_100CA6628);
        }
      }

      else
      {
        sub_10004E9EC();
        sub_100073090();
        v517 = v847;
      }

      sub_100120130();
      sub_1000083BC(v505);
      if (v310)
      {
        sub_100016E2C();
        sub_1007345F8();
        sub_1000083BC(v505);
        if (!v310)
        {
          sub_1000180EC(v505, &qword_100CA6620);
        }
      }

      else
      {
        sub_100049B7C();
        sub_100073090();
      }

      sub_100051BBC();
      sub_10000554C(v504);
      if (v310)
      {
        sub_100074EE4();
        sub_1007345F8();
        sub_10000554C(v504);
        if (!v310)
        {
          sub_1000180EC(v504, &qword_100CA6618);
        }
      }

      else
      {
        sub_100028A54();
        sub_100073090();
      }

      sub_100051BBC();
      sub_100003A40(v517);
      if (v310)
      {
        sub_10001CC10();
        sub_1007345F8();
        sub_100003A40(v517);
        if (!v310)
        {
          sub_1000180EC(v517, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000230B0();
        sub_100073090();
      }

      sub_10001F650();
      sub_100073090();
      sub_100042750();
      sub_100036E40();
      sub_100087104();
      sub_100003B6C();
      sub_10000E80C();
      v518 = v920;
      v519 = v919;
      v520 = v876;
      v521 = v878;
      v522 = v887[0];
      v523 = v888;
      v524 = v891[0];
      v525 = &v921;
      goto LABEL_276;
    case 4u:
      v314 = v918;
      v315 = 1;
      goto LABEL_31;
    case 5u:
      v430 = sub_100003BCC(v870);
      sub_10001B350(v430, v431, v432, v919);
      v433 = sub_100003BCC(&v874);
      sub_10001B350(v433, v434, v435, v920);
      v436 = sub_100003BCC(&v878);
      v437 = v914;
      sub_10001B350(v436, v438, v439, v914);
      v440 = sub_100003BCC(&v883);
      sub_10001B350(v440, v441, v442, v915);
      v443 = sub_100003BCC(&v888);
      sub_10001B350(v443, v444, v445, v917);
      v446 = sub_100003BCC(v892);
      sub_10001B350(v446, v447, v448, v921);
      sub_10001CC10();
      v913 = v449;
      v450 = v897;
      sub_1007345F8();
      type metadata accessor for ListViewState._Storage();
      swift_allocObject();
      sub_10000E7B0();
      v459 = sub_1000B0CD0(v451, v452, v453, v454, v455, v456, v457, v458, 0, 1, 0, 0, 1, 0);
      sub_100003934();
      v460 = v907;
      sub_10001B350(v461, v462, v463, v907);
      v464 = type metadata accessor for SearchViewState(0);
      type metadata accessor for SearchViewState.ViewState(0);
      v465 = v852;
      swift_storeEnumTagMultiPayload();
      v466 = *(v464 + 28);
      type metadata accessor for Location();
      sub_100003934();
      sub_10001B350(v467, v468, v469, v470);
      *v465 = 0;
      v465[1] = 0xE000000000000000;
      *(v465 + *(v464 + 24)) = 0;
      sub_10000E7B0();
      sub_10001B350(v471, v472, v473, v464);
      v474 = sub_100003BCC(v857);
      sub_10001B350(v474, v475, v476, v912);
      v477 = sub_100003BCC(v860);
      v478 = v909;
      sub_10001B350(v477, v479, v480, v909);
      sub_1000131DC();
      sub_100051BBC();
      if (sub_100024D10(v466, 1, v460) == 1)
      {
        sub_1000186D8();
        sub_1007345F8();
        v481 = sub_100024D10(v466, 1, v460);

        if (v481 != 1)
        {
          sub_1000180EC(v466, &qword_100CA6608);
        }
      }

      else
      {
        sub_100014D7C();
        sub_100073090();
      }

      v677 = *(v450 + v922[6]);
      sub_1000C83F8();
      sub_100003A40(v437);
      if (v310)
      {
        sub_100095588();
        sub_100003A40(v437);
        v681 = v910;
        if (!v310)
        {
          sub_1000180EC(v437, &qword_100CA6600);
        }
      }

      else
      {
        sub_10003005C();
        sub_1000131DC();
        sub_100073090();
        sub_10000E7B0();
        sub_10001B350(v678, v679, v680, v464);
        v681 = v910;
      }

      sub_100032590();
      sub_100051BBC();
      v682 = sub_1000175DC();
      v683 = v912;
      sub_1000113D0(v682, v684);
      if (v310)
      {
        sub_100031F10();
        sub_1007345F8();
        sub_100003A40(v231);
        v685 = v854;
        if (!v310)
        {
          sub_1000180EC(v231, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100008D8C();
        sub_100073090();
        v685 = v854;
      }

      sub_1000113EC();
      sub_100051BBC();
      v686 = sub_10000C7F0();
      sub_1000038B4(v686, v687, v478);
      if (v310)
      {
        sub_1000117A8();
        v688 = v897;
        sub_1007345F8();
        sub_1000049A4();
        sub_1000E0148(v688, v689);
        v690 = sub_10000C7F0();
        sub_1000038B4(v690, v691, v478);
        v693 = v802;
        v694 = v918;
        if (!v310)
        {
          sub_1000180EC(v683, &qword_100CA65F0);
        }
      }

      else
      {
        sub_1000049A4();
        sub_1000E0148(v897, v692);
        sub_100006654();
        sub_100073090();
        v693 = v802;
        v694 = v918;
      }

      v695 = v869;
      *v869 = v459;
      v696 = v922;
      sub_100014D7C();
      sub_100073090();
      *(v695 + v696[6]) = v677;
      *(v695 + v696[7]) = 0;
      sub_100051BBC();
      sub_100008D8C();
      sub_100073090();
      sub_100006654();
      sub_100073090();

      *(v695 + v696[11]) = 1;
      sub_10000E7B0();
      sub_10001B350(v697, v698, v699, v696);
      sub_10001F650();
      sub_100020FE8();
      sub_100073090();
      sub_10000E7B0();
      sub_10001B350(v700, v701, v702, v681);
      sub_10002CA34();
      sub_1007345F8();
      sub_100020FE8();
      sub_100051BBC();
      v703 = sub_10000C834();
      sub_1000038B4(v703, v704, v681);
      if (v310)
      {
        sub_1000180EC(v459, &qword_100CA65E8);
      }

      else
      {
        sub_1000109B0();
        sub_1000E0148(v693, v705);
        sub_10001F650();
        sub_100073090();
      }

      v707 = v919;
      v706 = v920;
      v708 = v844;
      v709 = v839;
      sub_10001F650();
      sub_100073090();
      v710 = *(v694 + 16);
      v711 = *(v694 + 24);
      sub_1000325C0();
      sub_100051BBC();
      v712 = sub_1000162B0();
      sub_1000038B4(v712, v713, v707);
      v920 = v710;
      LODWORD(v919) = v711;
      if (v310)
      {
        sub_10000CE4C();
        sub_1007345F8();
        sub_100086880(v685);

        if (v707 != 1)
        {
          sub_1000180EC(v685, &qword_100CA6640);
        }
      }

      else
      {
        sub_100024A14();
        sub_100073090();
      }

      sub_100032590();
      sub_100051BBC();
      sub_100003A40(v711);
      if (v310)
      {
        sub_100043A6C();
        sub_100019E08();
        sub_1007345F8();
        sub_100003A40(v711);
        v714 = v849;
        if (!v310)
        {
          sub_1000180EC(v711, &qword_100CA6638);
        }
      }

      else
      {
        sub_10003C79C();
        sub_100073090();
        v714 = v849;
      }

      sub_1000113EC();
      sub_100051BBC();
      v715 = sub_10000C7F0();
      sub_1000038B4(v715, v716, v437);
      if (v310)
      {
        sub_100017CF4();
        sub_1007345F8();
        v717 = sub_10000C7F0();
        sub_1000038B4(v717, v718, v437);
        if (!v310)
        {
          sub_1000180EC(v706, &qword_100CA6630);
        }
      }

      else
      {
        sub_100069924();
        sub_100073090();
      }

      sub_1000C83F8();
      sub_100003BDC(v437);
      if (v310)
      {
        sub_100013B7C();
        sub_1007345F8();
        sub_100003BDC(v437);
        if (!v310)
        {
          sub_1000180EC(v437, &qword_100CA6628);
        }
      }

      else
      {
        sub_10004E9EC();
        sub_100073090();
      }

      sub_100030224(&v888);
      sub_100051BBC();
      sub_10000E7EC(v709);
      if (v310)
      {
        sub_100016E2C();
        sub_1007345F8();
        sub_10000E7EC(v709);
        if (!v310)
        {
          sub_1000180EC(v709, &qword_100CA6620);
        }
      }

      else
      {
        sub_100049B7C();
        sub_100073090();
      }

      sub_100051BBC();
      sub_10000554C(v708);
      if (v310)
      {
        sub_100074EE4();
        sub_1007345F8();
        sub_10000554C(v708);
        if (!v310)
        {
          sub_1000180EC(v708, &qword_100CA6618);
        }
      }

      else
      {
        sub_100028A54();
        sub_100073090();
      }

      sub_1000436AC(v894);
      sub_100051BBC();
      sub_100003A40(v714);
      if (v310)
      {
        sub_10001CC10();
        sub_1007345F8();
        sub_100003A40(v714);
        if (!v310)
        {
          sub_1000180EC(v714, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000230B0();
        sub_100073090();
      }

      sub_10001F650();
      sub_100073090();
      sub_100042750();
      sub_100036E40();
      sub_100087104();
      sub_100003B6C();
      sub_10000E80C();
      v518 = v920;
      v519 = v919;
      v520 = v880;
      v521 = v884;
      v522 = v890;
      v523 = v891[2];
      v524 = v892[3];
      v525 = &v924;
      goto LABEL_276;
    case 6u:
      v314 = v918;
      v315 = 0;
LABEL_31:
      v482 = sub_10072D9DC(v314, v315);
      goto LABEL_181;
    case 7u:
      sub_1000109B0();
      sub_1000E0148(v916, v389);
      v390 = sub_100003BCC(v865);
      sub_10001B350(v390, v391, v392, v919);
      v393 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      sub_100019E08();
      v898 = v393;
      v394 = v827;
      sub_1007345F8();
      v395 = v835;
      sub_100003934();
      v396 = v866;
      sub_10001B350(v397, v398, v399, v866);
      LODWORD(v916) = *v394;
      LODWORD(v913) = v394[1];
      LODWORD(v912) = v394[2];
      LODWORD(v909) = v394[3];
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v395);
      if (v310)
      {
        v526 = v920;
        (*(v864 + 16))(v863, &v394[v920[8]], v396);
        sub_10000554C(v395);
        if (!v310)
        {
          sub_1000180EC(v395, &qword_100CAA9F0);
        }
      }

      else
      {
        (*(v864 + 32))(v863, v395, v396);
        v526 = v920;
      }

      v527 = &v394[v526[9]];
      LODWORD(v907) = v394[v526[10]];
      v528 = v526[12];
      LODWORD(v902) = v394[v526[11]];
      LODWORD(v904) = v394[v528];
      v529 = v526[15];
      v906 = *&v394[v526[14]];
      LODWORD(v908) = v394[v529];
      v530 = v526[17];
      LODWORD(v903) = v394[v526[16]];
      LODWORD(v905) = v394[v530];
      v531 = v527[1];
      v900 = *v527;
      v532 = v526[19];
      v533 = &v394[v526[18]];
      v535 = v533[1];
      v899 = *v533;
      v534 = v899;
      v536 = v533[2];
      v537 = v533[3];
      v538 = v533[4];
      v539 = v533[5];
      LODWORD(v901) = v394[v532];
      v540 = v539;

      v541 = v534;
      v542 = v535;
      v543 = v536;
      v544 = v537;
      v545 = v538;
      sub_1000E0148(v394, type metadata accessor for EnvironmentState);
      v546 = v853;
      *v853 = v916;
      v546[1] = v913;
      v546[2] = v912;
      v546[3] = v909;
      (*(v864 + 32))(&v546[v526[8]], v863, v866);
      v547 = &v546[v526[9]];
      *v547 = v900;
      v547[1] = v531;
      v546[v526[10]] = v907;
      sub_10003BB84(v526[11]);
      sub_10003BB84(v526[12]);
      v546[v526[13]] = 0;
      *&v546[v526[14]] = v906;
      v546[v526[15]] = v908;
      sub_10003BB84(v526[16]);
      v546[v526[17]] = v905;
      v548 = &v546[v526[18]];
      *v548 = v899;
      v548[1] = v535;
      v548[2] = v536;
      v548[3] = v537;
      v548[4] = v538;
      v548[5] = v539;
      sub_10003BB84(v526[19]);
      sub_10000E7B0();
      sub_10001B350(v549, v550, v551, v526);
      v552 = sub_100003BCC(&v873);
      sub_10001B350(v552, v553, v554, v914);
      v555 = sub_100003BCC(&v877);
      sub_10001B350(v555, v556, v557, v915);
      v558 = sub_100003BCC(&v881);
      sub_10001B350(v558, v559, v560, v917);
      v561 = sub_100003BCC(v886);
      v562 = v921;
      sub_10001B350(v561, v563, v564, v921);
      v565 = sub_100003BCC(&v890);
      sub_10001B350(v565, v566, v567, v922);
      sub_100003934();
      sub_10001B350(v568, v569, v570, v910);
      sub_10002CA34();
      v571 = v918;
      sub_1007345F8();
      v572 = v829;
      sub_100051BBC();
      sub_10000554C(v572);
      if (v310)
      {
        sub_1000180EC(v572, &qword_100CA65E8);
      }

      else
      {
        sub_1000109B0();
        sub_1000E0148(v260, v573);
        sub_10001F650();
        sub_100073090();
      }

      v574 = v919;
      v575 = v823;
      v576 = v817;
      sub_10001F650();
      sub_100073090();
      v577 = *(v571 + 16);
      LODWORD(v916) = *(v571 + 24);
      sub_1000AF628();
      v578 = sub_1000201BC();
      sub_1000038B4(v578, v579, v574);
      v919 = v577;
      if (v310)
      {
        sub_10000CE4C();
        sub_1007345F8();
        v580 = sub_1000201BC();
        v582 = sub_100024D10(v580, v581, v574);

        v583 = v830;
        if (v582 != 1)
        {
          sub_1000180EC(v576, &qword_100CA6640);
        }
      }

      else
      {
        sub_100024A14();
        sub_100073090();

        v583 = v830;
      }

      sub_1000C83F8();
      v584 = sub_1000201BC();
      v585 = v920;
      sub_1000038B4(v584, v586, v920);
      if (v310)
      {
        sub_100019E08();
        sub_1007345F8();
        v587 = sub_1000201BC();
        sub_1000038B4(v587, v588, v585);
        v589 = v836;
        if (!v310)
        {
          sub_1000180EC(v576, &qword_100CA6638);
        }
      }

      else
      {
        sub_10003C79C();
        sub_100073090();
        v589 = v836;
      }

      sub_100051BBC();
      sub_100003A40(v575);
      if (v310)
      {
        sub_100017CF4();
        sub_1007345F8();
        sub_100003A40(v575);
        v590 = v842;
        if (!v310)
        {
          sub_1000180EC(v575, &qword_100CA6630);
        }
      }

      else
      {
        sub_100069924();
        sub_100073090();
        v590 = v842;
      }

      sub_100020FE8();
      sub_100051BBC();
      sub_100003BDC(v575);
      if (v310)
      {
        sub_100013B7C();
        sub_1007345F8();
        sub_100003BDC(v575);
        if (!v310)
        {
          sub_1000180EC(v575, &qword_100CA6628);
        }
      }

      else
      {
        sub_10004E9EC();
        sub_100073090();
      }

      sub_100030224(&v881);
      sub_100051BBC();
      sub_10000E7EC(v583);
      if (v310)
      {
        sub_100016E2C();
        sub_1007345F8();
        sub_10000E7EC(v583);
        if (!v310)
        {
          sub_1000180EC(v583, &qword_100CA6620);
        }
      }

      else
      {
        sub_100049B7C();
        sub_100073090();
      }

      sub_1000436AC(v886);
      sub_100051BBC();
      sub_1000038B4(v589, 1, v562);
      if (v310)
      {
        sub_100074EE4();
        sub_1007345F8();
        sub_1000038B4(v589, 1, v562);
        if (!v310)
        {
          sub_1000180EC(v589, &qword_100CA6618);
        }
      }

      else
      {
        sub_100028A54();
        sub_100073090();
      }

      sub_100051BBC();
      sub_1000083BC(v590);
      if (v310)
      {
        sub_10001CC10();
        sub_1007345F8();
        sub_1000083BC(v590);
        if (!v310)
        {
          sub_1000180EC(v590, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000230B0();
        sub_100073090();
      }

      sub_10001F650();
      sub_1000719D8();
      sub_10003A0FC();
      sub_100087104();
      sub_100003B6C();
      sub_10000E80C();
      v518 = v919;
      v519 = v916;
      v520 = v870[1];
      v521 = v872;
      v522 = v874;
      v523 = v877;
      v524 = v881;
      v525 = &v911;
LABEL_276:
      sub_10003E038(v518, v519, v520, v521, v522, v523, v524, *(v525 - 32), v787, v788, v789, v790, v791, v792, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813);
      v482 = v785;

      return v482;
    default:
      sub_100073090();
      v278 = v918;
      if (qword_100CA2760 != -1)
      {
        swift_once();
      }

      v279 = type metadata accessor for Logger();
      sub_10000703C(v279, qword_100D90C78);
      v280 = Logger.logObject.getter();
      v281 = static os_log_type_t.default.getter();
      v282 = os_log_type_enabled(v280, v281);
      v283 = v922;
      v284 = v907;
      v285 = v806;
      v286 = v796;
      if (v282)
      {
        v287 = swift_slowAlloc();
        *v287 = 0;
        _os_log_impl(&_mh_execute_header, v280, v281, "ActivityActionReducer handling location activity", v287, 2u);
      }

      v288 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_10001CC10();
      v289 = v908;
      sub_1007345F8();
      v290 = v838;
      SavedLocation.identifier.getter();
      type metadata accessor for Location.Identifier();
      sub_10000E7B0();
      sub_10001B350(v291, v292, v293, v294);
      type metadata accessor for LocationViewerViewState._Storage(0);
      sub_100003B6C();
      v295 = sub_10003DDB8(v290, 0, 0, 2, 0, 0);
      *v851 = v295;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v296, v297, v298, v284);
      v299 = type metadata accessor for SearchViewState(0);
      v300 = sub_100003BCC(v856);
      sub_10001B350(v300, v301, v302, v299);
      v303 = sub_100003BCC(v858);
      sub_10001B350(v303, v304, v305, v912);
      v306 = sub_100003BCC(v861);
      sub_10001B350(v306, v307, v308, v909);
      v309 = *v289;
      sub_100095588();
      sub_100003BDC(v286);
      v898 = v288;
      if (v310)
      {
        sub_1000186D8();
        sub_1007345F8();
        v311 = sub_100007FC4();
        v313 = sub_100024D10(v311, v312, v284);

        v591 = v915;
        v592 = v815;
        if (v313 != 1)
        {
          sub_1000180EC(v286, &qword_100CA6608);
        }
      }

      else
      {
        sub_100014D7C();
        sub_100073090();

        v591 = v915;
        v592 = v815;
      }

      v593 = *(v908 + v283[6]);
      sub_1000180EC(v851, &qword_100CA6608);
      sub_100120130();
      sub_100003A40(v285);
      if (v310)
      {
        sub_100095588();
        sub_100003A40(v285);
        v594 = v285;
        v607 = v811;
        if (!v310)
        {
          sub_1000180EC(v594, &qword_100CA6600);
        }
      }

      else
      {
        sub_10003005C();
        sub_100032590();
        sub_100073090();
        sub_10000E7B0();
        sub_10001B350(v604, v605, v606, v299);
        v607 = v811;
      }

      sub_100120130();
      v608 = sub_1000175DC();
      v609 = v912;
      sub_1000113D0(v608, v610);
      v611 = v591;
      if (v310)
      {
        sub_100031F10();
        sub_1007345F8();
        sub_100003A40(v607);
        v613 = v909;
        if (!v310)
        {
          sub_1000180EC(v607, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100008D8C();
        sub_100073090();
        v613 = v909;
      }

      sub_1000113EC();
      sub_100051BBC();
      v614 = sub_10000C7F0();
      sub_1000038B4(v614, v615, v613);
      if (v310)
      {
        sub_1000117A8();
        sub_1007345F8();
        v616 = sub_10000C7F0();
        sub_1000038B4(v616, v617, v613);
        v620 = v921;
        if (!v310)
        {
          sub_1000180EC(v609, &qword_100CA65F0);
        }
      }

      else
      {
        sub_100006654();
        sub_100073090();
        v620 = v921;
      }

      v621 = *(v908 + v283[11]);
      sub_1000049A4();
      sub_1000E0148(v622, v623);
      v624 = v855;
      *v855 = v309;
      sub_100014D7C();
      sub_100073090();
      *(v624 + v283[6]) = v593;
      *(v624 + v283[7]) = 1;
      sub_100051BBC();
      sub_100008D8C();
      sub_100073090();
      sub_100006654();
      sub_100073090();
      *(v624 + v283[11]) = v621;
      v625 = sub_100003BCC(&v925);
      v626 = v919;
      sub_10001B350(v625, v627, v628, v919);
      v629 = sub_100003BCC(&v926);
      sub_10001B350(v629, v630, v631, v920);
      v632 = sub_100003BCC(&v927);
      sub_10001B350(v632, v633, v634, v914);
      v635 = sub_100003BCC(&v928);
      sub_10001B350(v635, v636, v637, v611);
      v638 = sub_100003BCC(&v929);
      sub_10001B350(v638, v639, v640, v917);
      v641 = sub_100003BCC(&v930);
      sub_10001B350(v641, v642, v643, v620);
      sub_10001CC10();
      sub_1007345F8();
      sub_10000E7B0();
      sub_10001B350(v644, v645, v646, v283);
      sub_1007345F8();
      sub_10000E7B0();
      v647 = v910;
      sub_10001B350(v648, v649, v650, v910);
      sub_100032590();
      sub_1007345F8();
      sub_100020FE8();
      sub_100095588();
      v651 = sub_10000C834();
      sub_1000038B4(v651, v652, v647);
      if (v310)
      {
        sub_1000180EC(type metadata accessor for ModalViewState, &qword_100CA65E8);
      }

      else
      {
        sub_1000109B0();
        sub_1000E0148(v620, v654);
        sub_10001F650();
        sub_100073090();
      }

      v655 = v840;
      v656 = v832;
      sub_10001F650();
      sub_100073090();
      v657 = *(v278 + 16);
      v658 = *(v278 + 24);
      sub_1000325C0();
      sub_100095588();
      v659 = sub_1000162B0();
      sub_1000038B4(v659, v660, v626);
      v915 = v657;
      if (v310)
      {
        sub_10000CE4C();
        sub_1007345F8();
        sub_100086880(v592);

        v665 = v824;
        if (v626 != 1)
        {
          sub_1000180EC(v592, &qword_100CA6640);
        }
      }

      else
      {
        sub_100024A14();
        sub_100073090();

        v665 = v824;
      }

      sub_100095588();
      sub_100003A40(v665);
      LODWORD(v913) = v658;
      if (v310)
      {
        sub_100043A6C();
        sub_100019E08();
        sub_1007345F8();
        sub_100003A40(v665);
        v666 = v850;
        v667 = v846;
        if (!v310)
        {
          sub_1000180EC(v665, &qword_100CA6638);
        }
      }

      else
      {
        sub_10003C79C();
        sub_100073090();
        v666 = v850;
        v667 = v846;
      }

      sub_100032590();
      sub_100095588();
      v668 = sub_1000175DC();
      sub_1000038B4(v668, v669, v914);
      if (v310)
      {
        sub_100017CF4();
        sub_1007345F8();
        sub_10000554C(v658);
        if (!v310)
        {
          sub_1000180EC(v658, &qword_100CA6630);
        }
      }

      else
      {
        sub_100069924();
        sub_100073090();
      }

      sub_100030224(&v928);
      sub_100095588();
      sub_1000083BC(v656);
      if (v310)
      {
        sub_100013B7C();
        sub_1007345F8();
        sub_1000083BC(v656);
        if (!v310)
        {
          sub_1000180EC(v656, &qword_100CA6628);
        }
      }

      else
      {
        sub_10004E9EC();
        sub_100073090();
      }

      sub_100095588();
      sub_100003BDC(v655);
      if (v310)
      {
        sub_100016E2C();
        sub_1007345F8();
        sub_100003BDC(v655);
        if (!v310)
        {
          sub_1000180EC(v655, &qword_100CA6620);
        }
      }

      else
      {
        sub_100049B7C();
        sub_100073090();
      }

      sub_1000436AC(&v930);
      sub_100095588();
      sub_10000554C(v667);
      if (v310)
      {
        sub_100074EE4();
        sub_1007345F8();
        sub_10000554C(v667);
        if (!v310)
        {
          sub_1000180EC(v667, &qword_100CA6618);
        }
      }

      else
      {
        sub_100028A54();
        sub_100073090();
      }

      sub_100095588();
      v670 = sub_10000C7F0();
      sub_1000038B4(v670, v671, v283);
      if (v310)
      {
        sub_10001CC10();
        sub_1007345F8();
        v672 = sub_10000C7F0();
        sub_1000038B4(v672, v673, v283);
        if (!v310)
        {
          sub_1000180EC(v666, &qword_100CA6610);
        }
      }

      else
      {
        sub_1000230B0();
        sub_100073090();
      }

      sub_10001F650();
      sub_1000719D8();
      sub_100042750();
      sub_100036E40();
      sub_100087104();
      sub_100003B6C();
      sub_10000E80C();
      sub_10003E038(v915, v913, v885, v887[1], v892[0], v893, v895, v896, v787, v788, v789, v790, v791, v792, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813);
      v482 = v674;

      sub_1000180EC(v882, &qword_100CA65E8);
      sub_1000180EC(v905, &qword_100CA6610);
      sub_1000180EC(v904, &qword_100CA6618);
      sub_1000180EC(v903, &qword_100CA6620);
      sub_1000180EC(v902, &qword_100CA6628);
      sub_1000180EC(v901, &qword_100CA6630);
      sub_1000180EC(v900, &qword_100CA6638);
      sub_1000180EC(v899, &qword_100CA6640);
      sub_1000049A4();
      sub_1000E0148(v855, v675);
      sub_1000E0148(v906, &type metadata accessor for SavedLocation);
LABEL_181:
      sub_1000109B0();
      sub_1000E0148(v916, v676);
      return v482;
  }
}

uint64_t sub_10072D9DC(uint64_t a1, int a2)
{
  v873 = a2;
  v3 = sub_10022C350(&qword_100CA6890);
  __chkstk_darwin(v3 - 8);
  v795 = &v728 - v4;
  v793 = type metadata accessor for SavedLocation();
  __chkstk_darwin(v793);
  v750 = &v728 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v915 = type metadata accessor for TimeState();
  v6 = __chkstk_darwin(v915);
  v907 = &v728 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v857 = &v728 - v9;
  v10 = __chkstk_darwin(v8);
  v833 = &v728 - v11;
  __chkstk_darwin(v10);
  v834 = &v728 - v12;
  v914 = type metadata accessor for NotificationsOptInState();
  v13 = __chkstk_darwin(v914);
  v906 = &v728 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v856 = &v728 - v16;
  v17 = __chkstk_darwin(v15);
  v831 = &v728 - v18;
  __chkstk_darwin(v17);
  v832 = &v728 - v19;
  v913 = type metadata accessor for NotificationsState();
  v20 = __chkstk_darwin(v913);
  v905 = &v728 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v855 = &v728 - v23;
  v24 = __chkstk_darwin(v22);
  v829 = &v728 - v25;
  __chkstk_darwin(v24);
  v830 = &v728 - v26;
  v887 = type metadata accessor for LocationsState();
  v27 = __chkstk_darwin(v887);
  v904 = &v728 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v854 = &v728 - v30;
  v31 = __chkstk_darwin(v29);
  v827 = &v728 - v32;
  __chkstk_darwin(v31);
  v828 = &v728 - v33;
  v912 = type metadata accessor for AppConfigurationState();
  v34 = __chkstk_darwin(v912);
  v903 = &v728 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v853 = &v728 - v37;
  v38 = __chkstk_darwin(v36);
  v825 = &v728 - v39;
  __chkstk_darwin(v38);
  v826 = &v728 - v40;
  v41 = sub_10022C350(&qword_100CA65E8);
  v42 = __chkstk_darwin(v41 - 8);
  v878 = &v728 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v877 = &v728 - v45;
  v46 = __chkstk_darwin(v44);
  v823 = &v728 - v47;
  v48 = __chkstk_darwin(v46);
  v822 = &v728 - v49;
  v50 = __chkstk_darwin(v48);
  v764 = &v728 - v51;
  v52 = __chkstk_darwin(v50);
  v762 = &v728 - v53;
  v54 = __chkstk_darwin(v52);
  v765 = &v728 - v55;
  __chkstk_darwin(v54);
  v763 = &v728 - v56;
  v911 = type metadata accessor for WeatherMapPresentationState(0);
  v57 = __chkstk_darwin(v911);
  v875 = &v728 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __chkstk_darwin(v57);
  v820 = &v728 - v60;
  v61 = __chkstk_darwin(v59);
  v758 = &v728 - v62;
  __chkstk_darwin(v61);
  v759 = &v728 - v63;
  v909 = type metadata accessor for DisplayMetrics();
  v64 = __chkstk_darwin(v909);
  v901 = &v728 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __chkstk_darwin(v64);
  v851 = &v728 - v67;
  v68 = __chkstk_darwin(v66);
  v813 = &v728 - v69;
  __chkstk_darwin(v68);
  v816 = &v728 - v70;
  v882 = type metadata accessor for ViewState.SecondaryViewState(0);
  v71 = __chkstk_darwin(v882);
  v900 = &v728 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __chkstk_darwin(v71);
  v850 = &v728 - v74;
  v75 = __chkstk_darwin(v73);
  v811 = &v728 - v76;
  __chkstk_darwin(v75);
  v812 = &v728 - v77;
  v78 = sub_10022C350(&qword_100CA65F0);
  v79 = __chkstk_darwin(v78 - 8);
  v872 = &v728 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __chkstk_darwin(v79);
  v898 = &v728 - v82;
  v83 = __chkstk_darwin(v81);
  v85 = &v728 - v84;
  v86 = __chkstk_darwin(v83);
  v848 = &v728 - v87;
  v88 = __chkstk_darwin(v86);
  v754 = &v728 - v89;
  v90 = __chkstk_darwin(v88);
  v805 = &v728 - v91;
  v92 = __chkstk_darwin(v90);
  v755 = &v728 - v93;
  __chkstk_darwin(v92);
  v806 = &v728 - v94;
  v95 = sub_10022C350(&qword_100CA65F8);
  v96 = __chkstk_darwin(v95 - 8);
  v870 = &v728 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __chkstk_darwin(v96);
  v894 = &v728 - v99;
  v100 = __chkstk_darwin(v98);
  v810 = &v728 - v101;
  v102 = __chkstk_darwin(v100);
  v844 = &v728 - v103;
  v104 = __chkstk_darwin(v102);
  v749 = &v728 - v105;
  v106 = __chkstk_darwin(v104);
  v792 = &v728 - v107;
  v108 = __chkstk_darwin(v106);
  v751 = &v728 - v109;
  __chkstk_darwin(v108);
  v794 = &v728 - v110;
  v111 = sub_10022C350(&qword_100CA6600);
  v112 = __chkstk_darwin(v111 - 8);
  v868 = &v728 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __chkstk_darwin(v112);
  v897 = &v728 - v115;
  v116 = __chkstk_darwin(v114);
  v892 = &v728 - v117;
  v118 = __chkstk_darwin(v116);
  v804 = &v728 - v119;
  v120 = __chkstk_darwin(v118);
  v846 = &v728 - v121;
  v122 = __chkstk_darwin(v120);
  v798 = &v728 - v123;
  v124 = __chkstk_darwin(v122);
  v745 = &v728 - v125;
  v126 = __chkstk_darwin(v124);
  v799 = &v728 - v127;
  v128 = __chkstk_darwin(v126);
  v785 = &v728 - v129;
  v130 = __chkstk_darwin(v128);
  v746 = &v728 - v131;
  v132 = __chkstk_darwin(v130);
  v800 = &v728 - v133;
  __chkstk_darwin(v132);
  v786 = &v728 - v134;
  active = type metadata accessor for LocationViewerActiveLocationState();
  v136 = __chkstk_darwin(active - 8);
  v841 = &v728 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v136);
  v881 = &v728 - v138;
  v139 = sub_10022C350(&qword_100CA6608);
  v140 = __chkstk_darwin(v139 - 8);
  v865 = &v728 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __chkstk_darwin(v140);
  v864 = (&v728 - v143);
  v144 = __chkstk_darwin(v142);
  v788 = &v728 - v145;
  v146 = __chkstk_darwin(v144);
  v787 = (&v728 - v147);
  v148 = __chkstk_darwin(v146);
  v742 = &v728 - v149;
  v150 = __chkstk_darwin(v148);
  v740 = (&v728 - v151);
  v152 = __chkstk_darwin(v150);
  v741 = &v728 - v153;
  __chkstk_darwin(v152);
  v781 = (&v728 - v154);
  v886 = type metadata accessor for ViewState(0);
  v155 = __chkstk_darwin(v886);
  v879 = &v728 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __chkstk_darwin(v155);
  v908 = &v728 - v158;
  v159 = __chkstk_darwin(v157);
  v824 = &v728 - v160;
  v161 = __chkstk_darwin(v159);
  v858 = &v728 - v162;
  v163 = __chkstk_darwin(v161);
  v766 = &v728 - v164;
  v165 = __chkstk_darwin(v163);
  v835 = &v728 - v166;
  v167 = __chkstk_darwin(v165);
  v767 = &v728 - v168;
  __chkstk_darwin(v167);
  v836 = &v728 - v169;
  v170 = sub_10022C350(&qword_100CA6610);
  v171 = __chkstk_darwin(v170 - 8);
  v876 = &v728 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __chkstk_darwin(v171);
  v902 = (&v728 - v174);
  v175 = __chkstk_darwin(v173);
  v821 = &v728 - v176;
  v177 = __chkstk_darwin(v175);
  v852 = (&v728 - v178);
  v179 = __chkstk_darwin(v177);
  v760 = &v728 - v180;
  v181 = __chkstk_darwin(v179);
  v815 = (&v728 - v182);
  v183 = __chkstk_darwin(v181);
  v761 = &v728 - v184;
  __chkstk_darwin(v183);
  v817 = (&v728 - v185);
  v186 = sub_10022C350(&qword_100CA6618);
  v187 = __chkstk_darwin(v186 - 8);
  v874 = &v728 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __chkstk_darwin(v187);
  v899 = &v728 - v190;
  v191 = __chkstk_darwin(v189);
  v819 = &v728 - v192;
  v193 = __chkstk_darwin(v191);
  v849 = &v728 - v194;
  v195 = __chkstk_darwin(v193);
  v756 = &v728 - v196;
  v197 = __chkstk_darwin(v195);
  v808 = &v728 - v198;
  v199 = __chkstk_darwin(v197);
  v757 = &v728 - v200;
  __chkstk_darwin(v199);
  v809 = &v728 - v201;
  v202 = sub_10022C350(&qword_100CA6620);
  v203 = __chkstk_darwin(v202 - 8);
  v871 = &v728 - ((v204 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = __chkstk_darwin(v203);
  v896 = &v728 - v206;
  v207 = __chkstk_darwin(v205);
  v814 = &v728 - v208;
  v209 = __chkstk_darwin(v207);
  v847 = &v728 - v210;
  v211 = __chkstk_darwin(v209);
  v752 = &v728 - v212;
  v213 = __chkstk_darwin(v211);
  v802 = &v728 - v214;
  v215 = __chkstk_darwin(v213);
  v753 = &v728 - v216;
  __chkstk_darwin(v215);
  v803 = &v728 - v217;
  v218 = sub_10022C350(&qword_100CA6628);
  v219 = __chkstk_darwin(v218 - 8);
  v869 = &v728 - ((v220 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = __chkstk_darwin(v219);
  v893 = &v728 - v222;
  v223 = __chkstk_darwin(v221);
  v807 = &v728 - v224;
  v225 = __chkstk_darwin(v223);
  v843 = &v728 - v226;
  v227 = __chkstk_darwin(v225);
  v747 = &v728 - v228;
  v229 = __chkstk_darwin(v227);
  v790 = &v728 - v230;
  v231 = __chkstk_darwin(v229);
  v748 = &v728 - v232;
  __chkstk_darwin(v231);
  v791 = &v728 - v233;
  v234 = sub_10022C350(&qword_100CA6630);
  v235 = __chkstk_darwin(v234 - 8);
  v867 = &v728 - ((v236 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = __chkstk_darwin(v235);
  v891 = &v728 - v238;
  v239 = __chkstk_darwin(v237);
  v801 = &v728 - v240;
  v241 = __chkstk_darwin(v239);
  v842 = &v728 - v242;
  v243 = __chkstk_darwin(v241);
  v743 = &v728 - v244;
  v245 = __chkstk_darwin(v243);
  v783 = &v728 - v246;
  v247 = __chkstk_darwin(v245);
  v744 = &v728 - v248;
  __chkstk_darwin(v247);
  v784 = &v728 - v249;
  v910 = type metadata accessor for Locale();
  v880 = *(v910 - 8);
  v250 = __chkstk_darwin(v910);
  v888 = &v728 - ((v251 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = __chkstk_darwin(v250);
  v838 = &v728 - v253;
  v254 = __chkstk_darwin(v252);
  v770 = &v728 - v255;
  __chkstk_darwin(v254);
  v768 = &v728 - v256;
  v257 = sub_10022C350(&qword_100CAA9F0);
  v258 = __chkstk_darwin(v257 - 8);
  v860 = &v728 - ((v259 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = __chkstk_darwin(v258);
  v262 = &v728 - v261;
  v263 = __chkstk_darwin(v260);
  v771 = &v728 - v264;
  v265 = __chkstk_darwin(v263);
  v769 = &v728 - v266;
  v267 = __chkstk_darwin(v265);
  v732 = &v728 - v268;
  v269 = __chkstk_darwin(v267);
  v730 = &v728 - v270;
  v271 = __chkstk_darwin(v269);
  v731 = &v728 - v272;
  __chkstk_darwin(v271);
  v729 = &v728 - v273;
  v917 = type metadata accessor for EnvironmentState();
  v274 = __chkstk_darwin(v917);
  v895 = &v728 - ((v275 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = __chkstk_darwin(v274);
  v278 = &v728 - v277;
  v279 = __chkstk_darwin(v276);
  v845 = &v728 - v280;
  v281 = __chkstk_darwin(v279);
  v772 = &v728 - v282;
  v283 = __chkstk_darwin(v281);
  v796 = &v728 - v284;
  v285 = __chkstk_darwin(v283);
  v734 = &v728 - v286;
  v287 = __chkstk_darwin(v285);
  v797 = &v728 - v288;
  __chkstk_darwin(v287);
  v733 = &v728 - v289;
  v290 = sub_10022C350(&qword_100CA6638);
  v291 = __chkstk_darwin(v290 - 8);
  v863 = &v728 - ((v292 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = __chkstk_darwin(v291);
  v890 = &v728 - v294;
  v295 = __chkstk_darwin(v293);
  v782 = &v728 - v296;
  v297 = __chkstk_darwin(v295);
  v840 = &v728 - v298;
  v299 = __chkstk_darwin(v297);
  *(&v738 + 1) = &v728 - v300;
  v301 = __chkstk_darwin(v299);
  v776 = &v728 - v302;
  v303 = __chkstk_darwin(v301);
  v739 = &v728 - v304;
  __chkstk_darwin(v303);
  v777 = &v728 - v305;
  v306 = sub_10022C350(&qword_100CA6640);
  v307 = __chkstk_darwin(v306 - 8);
  v862 = &v728 - ((v308 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = __chkstk_darwin(v307);
  v889 = &v728 - v310;
  v311 = __chkstk_darwin(v309);
  v778 = &v728 - v312;
  v313 = __chkstk_darwin(v311);
  v839 = &v728 - v314;
  v315 = __chkstk_darwin(v313);
  v737 = &v728 - v316;
  v317 = __chkstk_darwin(v315);
  v773 = &v728 - v318;
  v319 = __chkstk_darwin(v317);
  *&v738 = &v728 - v320;
  __chkstk_darwin(v319);
  v774 = &v728 - v321;
  v322 = sub_10022C350(&unk_100CE49F0);
  __chkstk_darwin(v322 - 8);
  v324 = &v728 - v323;
  v325 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v325);
  v837 = &v728 - ((v326 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = type metadata accessor for ModalViewState(0);
  v328 = __chkstk_darwin(v327);
  v861 = &v728 - ((v329 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = __chkstk_darwin(v328);
  v866 = &v728 - v331;
  v332 = __chkstk_darwin(v330);
  v775 = &v728 - v333;
  v334 = __chkstk_darwin(v332);
  v789 = &v728 - v335;
  v336 = __chkstk_darwin(v334);
  v735 = &v728 - v337;
  v338 = __chkstk_darwin(v336);
  v779 = &v728 - v339;
  v340 = __chkstk_darwin(v338);
  v885 = &v728 - v341;
  v342 = __chkstk_darwin(v340);
  v736 = &v728 - v343;
  v344 = __chkstk_darwin(v342);
  v780 = &v728 - v345;
  __chkstk_darwin(v344);
  v883 = &v728 - v346;
  v884 = v347;
  swift_storeEnumTagMultiPayload();
  if (qword_100CA2760 != -1)
  {
    swift_once();
  }

  v348 = type metadata accessor for Logger();
  sub_10000703C(v348, qword_100D90C78);

  v349 = Logger.logObject.getter();
  v350 = static os_log_type_t.default.getter();
  v351 = os_log_type_enabled(v349, v350);
  v916 = a1;
  v818 = v85;
  if (v351)
  {
    v352 = swift_slowAlloc();
    *v352 = 67240192;
    v353 = v916 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    v354 = *(v353 + v917[13]);
    a1 = v916;
    *(v352 + 4) = v354;

    _os_log_impl(&_mh_execute_header, v349, v350, "ActivityActionReducer handling current location activity; was pending = %{BOOL,public}d", v352, 8u);
  }

  else
  {
  }

  v355 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v357 = LocationAuthorizationState.rawValue.getter(*(v355 + 1)) == 0x7265746544746F6ELL && v356 == 0xED000064656E696DLL;
  v859 = v355;
  if (v357)
  {
  }

  else
  {
    v358 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v358 & 1) == 0)
    {
      if (*(v355 + 1) - 1 <= 1)
      {
        v908 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
        sub_100095588();
        if (sub_100024D10(v324, 1, v325) == 1)
        {
          sub_1000180EC(v324, &unk_100CE49F0);
          v359 = Logger.logObject.getter();
          v360 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v359, v360))
          {
            v361 = swift_slowAlloc();
            *v361 = 0;
            _os_log_impl(&_mh_execute_header, v359, v360, "ActivityActionReducer handling current location activity with authorization but no current location", v361, 2u);
          }

          sub_10001B350(v773, 1, 1, v912);
          v362 = v734;
          sub_1007345F8();
          v363 = v910;
          sub_10001B350(v730, 1, 1, v910);
          LODWORD(v907) = *v362;
          LODWORD(v906) = v362[1];
          LODWORD(v905) = v362[2];
          LODWORD(v904) = v362[3];
          v364 = v732;
          sub_100051BBC();
          if (sub_100024D10(v364, 1, v363) == 1)
          {
            v365 = v917;
            v366 = v880;
            (*(v880 + 16))(v770, &v362[v917[8]], v363);
            if (sub_100024D10(v364, 1, v363) != 1)
            {
              sub_1000180EC(v364, &qword_100CAA9F0);
            }
          }

          else
          {
            v366 = v880;
            (*(v880 + 32))(v770, v364, v363);
            v365 = v917;
          }

          v564 = &v362[v365[9]];
          LODWORD(v902) = v362[v365[10]];
          v565 = v365[12];
          LODWORD(v897) = v362[v365[11]];
          LODWORD(v899) = v362[v565];
          v566 = v365[15];
          v901 = *&v362[v365[14]];
          LODWORD(v903) = v362[v566];
          v567 = v365[17];
          LODWORD(v898) = v362[v365[16]];
          LODWORD(v900) = v362[v567];
          v568 = v564[1];
          v895 = *v564;
          v569 = &v362[v365[18]];
          v570 = *v569;
          v571 = *(v569 + 1);
          v572 = *(v569 + 2);
          v573 = *(v569 + 3);
          v574 = *(v569 + 4);
          v575 = *(v569 + 5);
          LODWORD(v896) = v362[v365[19]];
          v576 = v575;

          v577 = v570;
          v578 = v571;
          v579 = v572;
          v580 = v573;
          v581 = v574;
          sub_1000E0148(v362, type metadata accessor for EnvironmentState);
          v582 = v776;
          *v776 = v907;
          v582[1] = v906;
          v582[2] = v905;
          v582[3] = v904;
          (*(v366 + 32))(&v582[v365[8]], v770, v910);
          v583 = &v582[v365[9]];
          *v583 = v895;
          v583[1] = v568;
          v582[v365[10]] = v902;
          v582[v365[11]] = v897;
          v582[v365[12]] = v899;
          v582[v365[13]] = 0;
          *&v582[v365[14]] = v901;
          v582[v365[15]] = v903;
          v582[v365[16]] = v898;
          v582[v365[17]] = v900;
          v584 = &v582[v365[18]];
          *v584 = v570;
          v584[1] = v571;
          v584[2] = v572;
          v584[3] = v573;
          v584[4] = v574;
          v584[5] = v575;
          v582[v365[19]] = v896;
          sub_10001B350(v582, 0, 1, v365);
          v585 = v887;
          sub_10001B350(v783, 1, 1, v887);
          sub_10001B350(v790, 1, 1, v913);
          sub_10001B350(v802, 1, 1, v914);
          sub_10001B350(v808, 1, 1, v915);
          v586 = v916;
          v907 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
          v587 = v835;
          sub_1007345F8();
          v588 = type metadata accessor for Location.Identifier();
          v589 = v881;
          sub_10001B350(v881, 1, 1, v588);
          type metadata accessor for LocationViewerViewState._Storage(0);
          swift_allocObject();
          v590 = sub_10003DDB8(v589, 0, 0, 2, 0, 0);
          v591 = v740;
          *v740 = v590;
          v592 = v882;
          swift_storeEnumTagMultiPayload();
          sub_10001B350(v591, 0, 1, v592);
          v593 = type metadata accessor for SearchViewState(0);
          sub_10001B350(v785, 1, 1, v593);
          sub_10001B350(v792, 1, 1, v909);
          sub_10001B350(v805, 1, 1, v911);
          v594 = *v587;
          v595 = v742;
          sub_100051BBC();
          if (sub_100024D10(v595, 1, v592) == 1)
          {
            v596 = v886;
            sub_1007345F8();
            v597 = sub_100024D10(v595, 1, v592);

            v598 = v754;
            v599 = v595;
            v600 = v745;
            v601 = v737;
            if (v597 != 1)
            {
              sub_1000180EC(v599, &qword_100CA6608);
            }
          }

          else
          {
            sub_100073090();

            v596 = v886;
            v598 = v754;
            v600 = v745;
            v601 = v737;
          }

          v640 = *(v587 + v596[6]);
          sub_100051BBC();
          if (sub_100024D10(v600, 1, v593) == 1)
          {
            sub_100095588();
            v641 = sub_100024D10(v600, 1, v593);
            v642 = v749;
            if (v641 != 1)
            {
              sub_1000180EC(v600, &qword_100CA6600);
            }
          }

          else
          {
            v646 = v799;
            sub_100073090();
            sub_10001B350(v646, 0, 1, v593);
            v642 = v749;
          }

          sub_100051BBC();
          v647 = v909;
          v648 = sub_100024D10(v642, 1, v909);
          v649 = v911;
          if (v648 == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v642, 1, v647) != 1)
            {
              sub_1000180EC(v642, &qword_100CA65F8);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          if (sub_100024D10(v598, 1, v649) == 1)
          {
            v654 = v835;
            sub_1007345F8();
            if (sub_100024D10(v598, 1, v649) != 1)
            {
              sub_1000180EC(v598, &qword_100CA65F0);
            }
          }

          else
          {
            sub_100073090();
            v654 = v835;
          }

          v656 = *(v654 + v596[11]);
          sub_1000E0148(v654, type metadata accessor for ViewState);
          v657 = v815;
          *v815 = v594;
          sub_100073090();
          *(v657 + v596[6]) = v640;
          *(v657 + v596[7]) = 1;
          sub_100051BBC();
          sub_100073090();
          sub_100073090();
          *(v657 + v596[11]) = v656;
          sub_10001B350(v657, 0, 1, v596);
          v658 = v762;
          sub_100073090();
          v659 = v884;
          sub_10001B350(v658, 0, 1, v884);
          v660 = v735;
          sub_1007345F8();
          v661 = v764;
          sub_100051BBC();
          if (sub_100024D10(v661, 1, v659) == 1)
          {
            sub_1000180EC(v661, &qword_100CA65E8);
          }

          else
          {
            sub_1000E0148(v660, type metadata accessor for ModalViewState);
            sub_100073090();
          }

          v668 = v912;
          v669 = v756;
          v670 = v752;
          v671 = v747;
          v672 = v743;
          sub_100073090();
          v673 = *(v586 + 16);
          LODWORD(v910) = *(v586 + 24);
          sub_100051BBC();
          v674 = sub_100024D10(v601, 1, v668);
          v911 = v673;
          if (v674 == 1)
          {
            sub_1007345F8();
            v675 = sub_100024D10(v601, 1, v668);

            v357 = v675 == 1;
            v676 = v760;
            if (!v357)
            {
              sub_1000180EC(v601, &qword_100CA6640);
            }
          }

          else
          {
            sub_100073090();

            v676 = v760;
          }

          v686 = *(&v738 + 1);
          sub_100051BBC();
          v687 = v917;
          if (sub_100024D10(v686, 1, v917) == 1)
          {
            sub_1007345F8();
            v688 = sub_100024D10(v686, 1, v687);
            v689 = v766;
            if (v688 != 1)
            {
              sub_1000180EC(v686, &qword_100CA6638);
            }
          }

          else
          {
            sub_100073090();
            v689 = v766;
          }

          sub_100051BBC();
          if (sub_100024D10(v672, 1, v585) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v672, 1, v585) != 1)
            {
              sub_1000180EC(v672, &qword_100CA6630);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v694 = v913;
          if (sub_100024D10(v671, 1, v913) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v671, 1, v694) != 1)
            {
              sub_1000180EC(v671, &qword_100CA6628);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v696 = v914;
          if (sub_100024D10(v670, 1, v914) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v670, 1, v696) != 1)
            {
              sub_1000180EC(v670, &qword_100CA6620);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v698 = v915;
          if (sub_100024D10(v669, 1, v915) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v669, 1, v698) != 1)
            {
              sub_1000180EC(v669, &qword_100CA6618);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          if (sub_100024D10(v676, 1, v596) == 1)
          {
            sub_1007345F8();
            v700 = v689;
            if (sub_100024D10(v676, 1, v596) != 1)
            {
              sub_1000180EC(v676, &qword_100CA6610);
            }
          }

          else
          {
            sub_100073090();
            v700 = v689;
          }

          v702 = v885;
          sub_100073090();
          v703 = *(v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
          v704 = *(v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
          v705 = *(v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
          v706 = *(v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
          v707 = v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
          v708 = v586;
          v709 = *(v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
          v710 = *(v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
          v711 = *(v707 + 16);
          v712 = *(v708 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
          type metadata accessor for MainState._Storage(0);
          swift_allocObject();
          LOBYTE(v726) = v709;
          sub_10003E038(v911, v910, v825, v796, v827, v829, v831, v833, v700, v702, v703, v704, v705, v706, v726, v710, v711, v712, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744);
        }

        else
        {
          sub_100073090();
          v465 = Logger.logObject.getter();
          v466 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v465, v466))
          {
            v467 = swift_slowAlloc();
            *v467 = 0;
            _os_log_impl(&_mh_execute_header, v465, v466, "ActivityActionReducer handling current location activity with authorization and current location", v467, 2u);
          }

          sub_10001B350(v774, 1, 1, v912);
          v468 = v733;
          sub_1007345F8();
          v469 = v910;
          sub_10001B350(v729, 1, 1, v910);
          LODWORD(v907) = *v468;
          LODWORD(v906) = v468[1];
          LODWORD(v905) = v468[2];
          LODWORD(v904) = v468[3];
          v470 = v731;
          sub_100051BBC();
          if (sub_100024D10(v470, 1, v469) == 1)
          {
            v471 = v917;
            v472 = v880;
            (*(v880 + 16))(v768, &v468[v917[8]], v469);
            if (sub_100024D10(v470, 1, v469) != 1)
            {
              sub_1000180EC(v470, &qword_100CAA9F0);
            }
          }

          else
          {
            v472 = v880;
            (*(v880 + 32))(v768, v470, v469);
            v471 = v917;
          }

          v602 = &v468[v471[9]];
          LODWORD(v902) = v468[v471[10]];
          v603 = v471[12];
          LODWORD(v897) = v468[v471[11]];
          LODWORD(v899) = v468[v603];
          v604 = v471[15];
          v901 = *&v468[v471[14]];
          LODWORD(v903) = v468[v604];
          v605 = v471[17];
          LODWORD(v898) = v468[v471[16]];
          LODWORD(v900) = v468[v605];
          v606 = v602[1];
          v895 = *v602;
          v607 = &v468[v471[18]];
          v608 = *v607;
          v609 = *(v607 + 1);
          v610 = *(v607 + 2);
          v611 = *(v607 + 3);
          v612 = *(v607 + 4);
          v613 = *(v607 + 5);
          LODWORD(v896) = v468[v471[19]];
          v614 = v613;

          v615 = v608;
          v616 = v609;
          v617 = v610;
          v618 = v611;
          v619 = v612;
          sub_1000E0148(v468, type metadata accessor for EnvironmentState);
          v620 = v777;
          *v777 = v907;
          v620[1] = v906;
          v620[2] = v905;
          v620[3] = v904;
          (*(v472 + 32))(&v620[v471[8]], v768, v910);
          v621 = &v620[v471[9]];
          *v621 = v895;
          v621[1] = v606;
          v620[v471[10]] = v902;
          v620[v471[11]] = v897;
          v620[v471[12]] = v899;
          v620[v471[13]] = 0;
          *&v620[v471[14]] = v901;
          v620[v471[15]] = v903;
          v620[v471[16]] = v898;
          v620[v471[17]] = v900;
          v622 = &v620[v471[18]];
          *v622 = v608;
          v622[1] = v609;
          v622[2] = v610;
          v622[3] = v611;
          v622[4] = v612;
          v622[5] = v613;
          v620[v471[19]] = v896;
          sub_10001B350(v620, 0, 1, v471);
          v623 = v887;
          sub_10001B350(v784, 1, 1, v887);
          sub_10001B350(v791, 1, 1, v913);
          sub_10001B350(v803, 1, 1, v914);
          sub_10001B350(v809, 1, 1, v915);
          v624 = v916;
          v907 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
          v625 = v836;
          sub_1007345F8();
          v626 = v881;
          CurrentLocation.identifier.getter();
          v627 = type metadata accessor for Location.Identifier();
          sub_10001B350(v626, 0, 1, v627);
          type metadata accessor for LocationViewerViewState._Storage(0);
          swift_allocObject();
          v628 = sub_10003DDB8(v626, 0, 0, 2, 0, 0);
          v629 = v781;
          *v781 = v628;
          v630 = v882;
          swift_storeEnumTagMultiPayload();
          sub_10001B350(v629, 0, 1, v630);
          v631 = type metadata accessor for SearchViewState(0);
          sub_10001B350(v786, 1, 1, v631);
          sub_10001B350(v794, 1, 1, v909);
          sub_10001B350(v806, 1, 1, v911);
          v632 = *v625;
          v633 = v741;
          sub_100095588();
          if (sub_100024D10(v633, 1, v630) == 1)
          {
            v634 = v886;
            sub_1007345F8();
            v635 = sub_100024D10(v633, 1, v630);

            v636 = v755;
            v637 = v633;
            v638 = v746;
            v639 = v738;
            if (v635 != 1)
            {
              sub_1000180EC(v637, &qword_100CA6608);
            }
          }

          else
          {
            sub_100073090();

            v634 = v886;
            v636 = v755;
            v638 = v746;
            v639 = v738;
          }

          v643 = *(v625 + v634[6]);
          sub_1000180EC(v781, &qword_100CA6608);
          sub_1000E0148(v837, &type metadata accessor for CurrentLocation);
          sub_100051BBC();
          if (sub_100024D10(v638, 1, v631) == 1)
          {
            sub_100095588();
            v644 = sub_100024D10(v638, 1, v631);
            v645 = v751;
            if (v644 != 1)
            {
              sub_1000180EC(v638, &qword_100CA6600);
            }
          }

          else
          {
            v650 = v800;
            sub_100073090();
            sub_10001B350(v650, 0, 1, v631);
            v645 = v751;
          }

          sub_100051BBC();
          v651 = v909;
          v652 = sub_100024D10(v645, 1, v909);
          v653 = v911;
          if (v652 == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v645, 1, v651) != 1)
            {
              sub_1000180EC(v645, &qword_100CA65F8);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          if (sub_100024D10(v636, 1, v653) == 1)
          {
            v655 = v836;
            sub_1007345F8();
            if (sub_100024D10(v636, 1, v653) != 1)
            {
              sub_1000180EC(v636, &qword_100CA65F0);
            }
          }

          else
          {
            sub_100073090();
            v655 = v836;
          }

          v662 = *(v655 + v634[11]);
          sub_1000E0148(v655, type metadata accessor for ViewState);
          v663 = v817;
          *v817 = v632;
          sub_100073090();
          *(v663 + v634[6]) = v643;
          *(v663 + v634[7]) = 1;
          sub_100051BBC();
          sub_100073090();
          sub_100073090();
          *(v663 + v634[11]) = v662;
          sub_10001B350(v663, 0, 1, v634);
          v664 = v763;
          sub_100073090();
          v665 = v884;
          sub_10001B350(v664, 0, 1, v884);
          v666 = v736;
          sub_1007345F8();
          v667 = v765;
          sub_100051BBC();
          if (sub_100024D10(v667, 1, v665) == 1)
          {
            sub_1000180EC(v667, &qword_100CA65E8);
          }

          else
          {
            sub_1000E0148(v666, type metadata accessor for ModalViewState);
            sub_100073090();
          }

          v677 = v912;
          v678 = v757;
          v679 = v753;
          v680 = v748;
          v681 = v744;
          sub_100073090();
          v682 = *(v624 + 16);
          LODWORD(v910) = *(v624 + 24);
          sub_100051BBC();
          v683 = sub_100024D10(v639, 1, v677);
          v911 = v682;
          if (v683 == 1)
          {
            sub_1007345F8();
            v684 = sub_100024D10(v639, 1, v677);

            v357 = v684 == 1;
            v685 = v761;
            if (!v357)
            {
              sub_1000180EC(v639, &qword_100CA6640);
            }
          }

          else
          {
            sub_100073090();

            v685 = v761;
          }

          v690 = v739;
          sub_100051BBC();
          v691 = v917;
          if (sub_100024D10(v690, 1, v917) == 1)
          {
            sub_1007345F8();
            v692 = sub_100024D10(v690, 1, v691);
            v693 = v767;
            if (v692 != 1)
            {
              sub_1000180EC(v690, &qword_100CA6638);
            }
          }

          else
          {
            sub_100073090();
            v693 = v767;
          }

          sub_100051BBC();
          if (sub_100024D10(v681, 1, v623) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v681, 1, v623) != 1)
            {
              sub_1000180EC(v681, &qword_100CA6630);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v695 = v913;
          if (sub_100024D10(v680, 1, v913) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v680, 1, v695) != 1)
            {
              sub_1000180EC(v680, &qword_100CA6628);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v697 = v914;
          if (sub_100024D10(v679, 1, v914) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v679, 1, v697) != 1)
            {
              sub_1000180EC(v679, &qword_100CA6620);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v699 = v915;
          if (sub_100024D10(v678, 1, v915) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v678, 1, v699) != 1)
            {
              sub_1000180EC(v678, &qword_100CA6618);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          if (sub_100024D10(v685, 1, v634) == 1)
          {
            sub_1007345F8();
            v701 = v693;
            if (sub_100024D10(v685, 1, v634) != 1)
            {
              sub_1000180EC(v685, &qword_100CA6610);
            }
          }

          else
          {
            sub_100073090();
            v701 = v693;
          }

          v713 = v885;
          sub_100073090();
          v714 = *(v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
          v715 = *(v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
          v716 = *(v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
          v717 = *(v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
          v718 = v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
          v719 = v624;
          v720 = *(v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
          v721 = *(v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
          v722 = *(v718 + 16);
          v723 = *(v719 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
          type metadata accessor for MainState._Storage(0);
          swift_allocObject();
          LOBYTE(v726) = v720;
          sub_10003E038(v911, v910, v826, v797, v828, v830, v832, v834, v701, v713, v714, v715, v716, v717, v726, v721, v722, v723, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744);
        }

        goto LABEL_234;
      }

      v455 = Logger.logObject.getter();
      v456 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v455, v456))
      {
        v457 = swift_slowAlloc();
        *v457 = 0;
        _os_log_impl(&_mh_execute_header, v455, v456, "ActivityActionReducer handling current location activity without authorization", v457, 2u);
      }

      v458 = *(v887 + 20);
      v892 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
      v459 = v795;
      sub_1003DFA4C(*(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + v458), v795);
      v460 = 1;
      LODWORD(v906) = sub_100024D10(v459, 1, v793);
      if (v906 == 1)
      {
        sub_1000180EC(v459, &qword_100CA6890);
        v473 = type metadata accessor for Location.Identifier();
        sub_10001B350(v841, 1, 1, v473);
        type metadata accessor for ListViewState._Storage();
        swift_allocObject();
        v474 = sub_100042DA8(0, 0, 1, 0, 0, 0, 0xE000000000000000, 0, 0, 1, 0, 0, 1, 0);
        v475 = objc_opt_self();
        v908 = v474;

        v476 = [v475 currentDevice];
        v477 = [v476 userInterfaceIdiom];

        v464 = v910;
        if (v477 == 1)
        {
LABEL_84:
          LODWORD(v907) = v460;

          sub_10001B350(v839, 1, 1, v912);
          v478 = v772;
          sub_1007345F8();
          sub_10001B350(v769, 1, 1, v464);
          LODWORD(v905) = *v478;
          LODWORD(v904) = v478[1];
          LODWORD(v903) = v478[2];
          LODWORD(v902) = v478[3];
          v479 = v771;
          sub_100051BBC();
          v480 = sub_100024D10(v479, 1, v464);
          v481 = v917;
          v482 = v880;
          if (v480 == 1)
          {
            (*(v880 + 16))(v838, &v478[v917[8]], v464);
            if (sub_100024D10(v479, 1, v464) != 1)
            {
              sub_1000180EC(v479, &qword_100CAA9F0);
            }
          }

          else
          {
            (*(v880 + 32))(v838, v479, v464);
          }

          v483 = &v478[v481[9]];
          LODWORD(v900) = v478[v481[10]];
          v484 = v481[12];
          LODWORD(v895) = v478[v481[11]];
          LODWORD(v897) = v478[v484];
          v485 = v481[15];
          v899 = *&v478[v481[14]];
          LODWORD(v901) = v478[v485];
          v486 = v481[17];
          LODWORD(v896) = v478[v481[16]];
          LODWORD(v898) = v478[v486];
          v487 = v483[1];
          v893 = *v483;
          v488 = &v478[v481[18]];
          v490 = *v488;
          v489 = *(v488 + 1);
          v491 = *(v488 + 2);
          v492 = *(v488 + 3);
          v493 = *(v488 + 4);
          v494 = *(v488 + 5);
          LODWORD(v894) = v478[v481[19]];
          v495 = v494;

          v496 = v490;
          v497 = v489;
          v498 = v491;
          v499 = v492;
          v500 = v493;
          sub_1000E0148(v478, type metadata accessor for EnvironmentState);
          v501 = v840;
          *v840 = v905;
          v501[1] = v904;
          v501[2] = v903;
          v501[3] = v902;
          (*(v482 + 32))(&v501[v481[8]], v838, v910);
          v502 = &v501[v481[9]];
          *v502 = v893;
          v502[1] = v487;
          v501[v481[10]] = v900;
          v501[v481[11]] = v895;
          v501[v481[12]] = v897;
          v501[v481[13]] = 0;
          *&v501[v481[14]] = v899;
          v501[v481[15]] = v901;
          v501[v481[16]] = v896;
          v501[v481[17]] = v898;
          v503 = &v501[v481[18]];
          *v503 = v490;
          v503[1] = v489;
          v503[2] = v491;
          v503[3] = v492;
          v503[4] = v493;
          v503[5] = v494;
          v501[v481[19]] = v894;
          sub_10001B350(v501, 0, 1, v481);
          sub_10001B350(v842, 1, 1, v887);
          sub_10001B350(v843, 1, 1, v913);
          sub_10001B350(v847, 1, 1, v914);
          sub_10001B350(v849, 1, 1, v915);
          v504 = v916;
          v905 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
          v505 = v858;
          sub_1007345F8();
          v506 = v881;
          sub_100073090();
          type metadata accessor for LocationViewerViewState._Storage(0);
          swift_allocObject();
          v507 = sub_10003DDB8(v506, 0, 0, 2, 0, 0);
          v508 = v787;
          *v787 = v507;
          v509 = v882;
          swift_storeEnumTagMultiPayload();
          sub_10001B350(v508, 0, 1, v509);
          v510 = type metadata accessor for SearchViewState(0);
          sub_10001B350(v798, 1, 1, v510);
          v511 = v909;
          sub_10001B350(v844, 1, 1, v909);
          sub_10001B350(v848, 1, 1, v911);
          v512 = v788;
          sub_100051BBC();
          if (sub_100024D10(v512, 1, v509) == 1)
          {
            v513 = v886;
            sub_1007345F8();
            v514 = sub_100024D10(v512, 1, v509);
            v515 = v512;
            v516 = v514;

            v517 = v818;
            v518 = v778;
            if (v516 != 1)
            {
              sub_1000180EC(v515, &qword_100CA6608);
            }
          }

          else
          {
            sub_100073090();

            v513 = v886;
            v517 = v818;
            v518 = v778;
          }

          v519 = *(v505 + v513[6]);
          v520 = v804;
          sub_100051BBC();
          if (sub_100024D10(v520, 1, v510) == 1)
          {
            sub_100095588();
            v521 = sub_100024D10(v520, 1, v510);
            v522 = v810;
            if (v521 != 1)
            {
              sub_1000180EC(v520, &qword_100CA6600);
            }
          }

          else
          {
            v523 = v846;
            sub_100073090();
            sub_10001B350(v523, 0, 1, v510);
            v522 = v810;
          }

          sub_100051BBC();
          v524 = sub_100024D10(v522, 1, v511);
          v525 = v911;
          v526 = v823;
          if (v524 == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v522, 1, v511) != 1)
            {
              sub_1000180EC(v522, &qword_100CA65F8);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          if (sub_100024D10(v517, 1, v525) == 1)
          {
            v527 = v858;
            sub_1007345F8();
            sub_1000E0148(v527, type metadata accessor for ViewState);
            if (sub_100024D10(v517, 1, v525) != 1)
            {
              sub_1000180EC(v517, &qword_100CA65F0);
            }
          }

          else
          {
            sub_1000E0148(v858, type metadata accessor for ViewState);
            sub_100073090();
          }

          v528 = v906 != 1;
          v529 = v852;
          *v852 = v908;
          sub_100073090();
          *(v529 + v513[6]) = v519;
          *(v529 + v513[7]) = v528;
          sub_100051BBC();
          sub_100073090();
          sub_100073090();

          *(v529 + v513[11]) = v907;
          sub_10001B350(v529, 0, 1, v513);
          v530 = v822;
          sub_100073090();
          v531 = v884;
          sub_10001B350(v530, 0, 1, v884);
          v532 = v775;
          sub_1007345F8();
          sub_100051BBC();
          if (sub_100024D10(v526, 1, v531) == 1)
          {
            sub_1000180EC(v526, &qword_100CA65E8);
          }

          else
          {
            sub_1000E0148(v532, type metadata accessor for ModalViewState);
            sub_100073090();
          }

          v533 = v801;
          v534 = v782;
          sub_100073090();
          v911 = *(v504 + 16);
          LODWORD(v910) = *(v504 + 24);
          sub_100051BBC();
          v535 = v912;
          v536 = sub_100024D10(v518, 1, v912);
          v537 = v819;
          if (v536 == 1)
          {
            sub_1007345F8();
            v538 = sub_100024D10(v518, 1, v535);

            v357 = v538 == 1;
            v539 = v821;
            v540 = v814;
            if (!v357)
            {
              sub_1000180EC(v518, &qword_100CA6640);
            }
          }

          else
          {
            sub_100073090();

            v539 = v821;
            v540 = v814;
          }

          sub_100051BBC();
          v541 = v534;
          v542 = v534;
          v543 = v917;
          if (sub_100024D10(v541, 1, v917) == 1)
          {
            sub_1007345F8();
            v544 = sub_100024D10(v542, 1, v543);
            v545 = v807;
            if (v544 != 1)
            {
              sub_1000180EC(v542, &qword_100CA6638);
            }
          }

          else
          {
            sub_100073090();
            v545 = v807;
          }

          sub_100051BBC();
          v546 = v887;
          if (sub_100024D10(v533, 1, v887) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v533, 1, v546) != 1)
            {
              sub_1000180EC(v533, &qword_100CA6630);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v547 = v913;
          if (sub_100024D10(v545, 1, v913) == 1)
          {
            sub_1007345F8();
            v548 = sub_100024D10(v545, 1, v547);
            v549 = v824;
            if (v548 != 1)
            {
              sub_1000180EC(v545, &qword_100CA6628);
            }
          }

          else
          {
            sub_100073090();
            v549 = v824;
          }

          sub_100051BBC();
          v550 = v914;
          if (sub_100024D10(v540, 1, v914) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v540, 1, v550) != 1)
            {
              sub_1000180EC(v540, &qword_100CA6620);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v551 = v915;
          if (sub_100024D10(v537, 1, v915) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v537, 1, v551) != 1)
            {
              sub_1000180EC(v537, &qword_100CA6618);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          if (sub_100024D10(v539, 1, v513) == 1)
          {
            sub_1007345F8();
            v552 = v549;
            if (sub_100024D10(v539, 1, v513) != 1)
            {
              sub_1000180EC(v539, &qword_100CA6610);
            }
          }

          else
          {
            sub_100073090();
            v552 = v549;
          }

          v553 = v885;
          sub_100073090();
          v554 = *(v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
          v555 = *(v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
          v556 = *(v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
          v557 = *(v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
          v558 = v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
          v559 = v504;
          v560 = *(v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
          v561 = *(v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
          v562 = *(v558 + 16);
          v563 = *(v559 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
          type metadata accessor for MainState._Storage(0);
          swift_allocObject();
          LOBYTE(v727) = v560;
          sub_10003E038(v911, v910, v853, v845, v854, v855, v856, v857, v552, v553, v554, v555, v556, v557, v727, v561, v562, v563, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744);
          goto LABEL_234;
        }
      }

      else
      {
        v461 = v750;
        sub_100073090();
        type metadata accessor for ListViewState._Storage();
        swift_allocObject();
        v908 = sub_100042DA8(0, 0, 1, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0, 0, 1, 0);

        v462 = v841;
        SavedLocation.identifier.getter();
        sub_1000E0148(v461, &type metadata accessor for SavedLocation);
        v463 = type metadata accessor for Location.Identifier();
        sub_10001B350(v462, 0, 1, v463);
        v464 = v910;
      }

      v460 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + *(v886 + 44));
      goto LABEL_84;
    }
  }

  v367 = Logger.logObject.getter();
  v368 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v367, v368))
  {
    v369 = swift_slowAlloc();
    *v369 = 0;
    _os_log_impl(&_mh_execute_header, v367, v368, "ActivityActionReducer handling current location activity with undetermined authorization", v369, 2u);
  }

  sub_10001B350(v889, 1, 1, v912);
  sub_1007345F8();
  v370 = v910;
  sub_10001B350(v262, 1, 1, v910);
  LODWORD(v858) = *v278;
  LODWORD(v857) = v278[1];
  LODWORD(v856) = v278[2];
  LODWORD(v855) = v278[3];
  v371 = v860;
  sub_100051BBC();
  if (sub_100024D10(v371, 1, v370) == 1)
  {
    v372 = v917;
    v373 = v880;
    (*(v880 + 16))(v888, &v278[v917[8]], v370);
    if (sub_100024D10(v371, 1, v370) != 1)
    {
      sub_1000180EC(v371, &qword_100CAA9F0);
    }
  }

  else
  {
    v373 = v880;
    (*(v880 + 32))(v888, v371, v370);
    v372 = v917;
  }

  v374 = &v278[v372[9]];
  LODWORD(v860) = v278[v372[10]];
  v375 = v372[12];
  LODWORD(v850) = v278[v372[11]];
  LODWORD(v852) = v278[v375];
  v376 = v372[15];
  v854 = *&v278[v372[14]];
  LODWORD(v880) = v278[v376];
  v377 = v372[17];
  LODWORD(v851) = v278[v372[16]];
  LODWORD(v853) = v278[v377];
  v378 = v374[1];
  v848 = *v374;
  v379 = &v278[v372[18]];
  v380 = *v379;
  v381 = *(v379 + 1);
  v383 = *(v379 + 2);
  v382 = *(v379 + 3);
  v385 = *(v379 + 4);
  v384 = *(v379 + 5);
  LODWORD(v849) = v278[v372[19]];
  v386 = v384;

  v387 = v380;
  v388 = v381;
  v389 = v383;
  v390 = v382;
  v391 = v385;
  sub_1000E0148(v278, type metadata accessor for EnvironmentState);
  v392 = v890;
  *v890 = v858;
  v392[1] = v857;
  v392[2] = v856;
  v392[3] = v855;
  (*(v373 + 32))(&v392[v372[8]], v888, v910);
  v393 = &v392[v372[9]];
  *v393 = v848;
  v393[1] = v378;
  v392[v372[10]] = v860;
  v392[v372[11]] = v850;
  v392[v372[12]] = v852;
  v392[v372[13]] = v873 & 1;
  *&v392[v372[14]] = v854;
  v392[v372[15]] = v880;
  v392[v372[16]] = v851;
  v392[v372[17]] = v853;
  v394 = &v392[v372[18]];
  *v394 = v380;
  v394[1] = v381;
  v394[2] = v383;
  v394[3] = v382;
  v394[4] = v385;
  v394[5] = v384;
  v392[v372[19]] = v849;
  sub_10001B350(v392, 0, 1, v372);
  v395 = v887;
  sub_10001B350(v891, 1, 1, v887);
  sub_10001B350(v893, 1, 1, v913);
  sub_10001B350(v896, 1, 1, v914);
  sub_10001B350(v899, 1, 1, v915);
  v396 = v916;
  v888 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  v397 = v908;
  sub_1007345F8();
  v398 = type metadata accessor for Location.Identifier();
  v399 = v881;
  sub_10001B350(v881, 1, 1, v398);
  type metadata accessor for LocationViewerViewState._Storage(0);
  swift_allocObject();
  v400 = sub_10003DDB8(v399, 0, 0, 2, 0, 0);
  v401 = v864;
  *v864 = v400;
  v402 = v882;
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v401, 0, 1, v402);
  v403 = type metadata accessor for SearchViewState(0);
  sub_10001B350(v892, 1, 1, v403);
  sub_10001B350(v894, 1, 1, v909);
  sub_10001B350(v898, 1, 1, v911);
  v404 = *v397;
  v405 = v865;
  sub_100051BBC();
  if (sub_100024D10(v405, 1, v402) == 1)
  {
    v406 = v886;
    sub_1007345F8();
    v407 = sub_100024D10(v405, 1, v402);

    v408 = v405;
    v409 = v872;
    v410 = v868;
    v411 = v862;
    if (v407 != 1)
    {
      sub_1000180EC(v408, &qword_100CA6608);
    }
  }

  else
  {
    sub_100073090();

    v406 = v886;
    v409 = v872;
    v410 = v868;
    v411 = v862;
  }

  v412 = *(v397 + v406[6]);
  sub_100051BBC();
  if (sub_100024D10(v410, 1, v403) == 1)
  {
    sub_100095588();
    v413 = sub_100024D10(v410, 1, v403);
    v414 = v870;
    if (v413 != 1)
    {
      sub_1000180EC(v410, &qword_100CA6600);
    }
  }

  else
  {
    v415 = v897;
    sub_100073090();
    sub_10001B350(v415, 0, 1, v403);
    v414 = v870;
  }

  sub_100051BBC();
  v416 = v909;
  v417 = sub_100024D10(v414, 1, v909);
  v418 = v911;
  if (v417 == 1)
  {
    sub_1007345F8();
    if (sub_100024D10(v414, 1, v416) != 1)
    {
      sub_1000180EC(v414, &qword_100CA65F8);
    }
  }

  else
  {
    sub_100073090();
  }

  sub_100051BBC();
  if (sub_100024D10(v409, 1, v418) == 1)
  {
    v419 = v908;
    sub_1007345F8();
    if (sub_100024D10(v409, 1, v418) != 1)
    {
      sub_1000180EC(v409, &qword_100CA65F0);
    }
  }

  else
  {
    sub_100073090();
    v419 = v908;
  }

  v420 = *(v419 + v406[11]);
  sub_1000E0148(v419, type metadata accessor for ViewState);
  v421 = v902;
  *v902 = v404;
  sub_100073090();
  *(v421 + v406[6]) = v412;
  *(v421 + v406[7]) = 1;
  sub_100051BBC();
  sub_100073090();
  sub_100073090();
  *(v421 + v406[11]) = v420;
  sub_10001B350(v421, 0, 1, v406);
  v422 = v877;
  sub_100073090();
  v423 = v884;
  sub_10001B350(v422, 0, 1, v884);
  v424 = v861;
  sub_1007345F8();
  v425 = v878;
  sub_100051BBC();
  if (sub_100024D10(v425, 1, v423) == 1)
  {
    sub_1000180EC(v425, &qword_100CA65E8);
  }

  else
  {
    sub_1000E0148(v424, type metadata accessor for ModalViewState);
    sub_100073090();
  }

  v426 = v874;
  v427 = v871;
  v428 = v867;
  sub_100073090();
  v429 = *(v396 + 16);
  LODWORD(v911) = *(v396 + 24);
  sub_100051BBC();
  v430 = v912;
  v431 = sub_100024D10(v411, 1, v912);
  v910 = v429;
  if (v431 == 1)
  {
    sub_1007345F8();
    v432 = sub_100024D10(v411, 1, v430);

    v357 = v432 == 1;
    v433 = v869;
    if (!v357)
    {
      sub_1000180EC(v411, &qword_100CA6640);
    }
  }

  else
  {
    sub_100073090();

    v433 = v869;
  }

  v434 = v863;
  sub_100051BBC();
  v435 = v917;
  if (sub_100024D10(v434, 1, v917) == 1)
  {
    sub_1007345F8();
    v436 = sub_100024D10(v434, 1, v435);
    v437 = v879;
    if (v436 != 1)
    {
      sub_1000180EC(v434, &qword_100CA6638);
    }
  }

  else
  {
    sub_100073090();
    v437 = v879;
  }

  sub_100051BBC();
  if (sub_100024D10(v428, 1, v395) == 1)
  {
    sub_1007345F8();
    if (sub_100024D10(v428, 1, v395) != 1)
    {
      sub_1000180EC(v428, &qword_100CA6630);
    }
  }

  else
  {
    sub_100073090();
  }

  sub_100051BBC();
  v438 = v913;
  if (sub_100024D10(v433, 1, v913) == 1)
  {
    sub_1007345F8();
    if (sub_100024D10(v433, 1, v438) != 1)
    {
      sub_1000180EC(v433, &qword_100CA6628);
    }
  }

  else
  {
    sub_100073090();
  }

  sub_100051BBC();
  v439 = v914;
  if (sub_100024D10(v427, 1, v914) == 1)
  {
    sub_1007345F8();
    if (sub_100024D10(v427, 1, v439) != 1)
    {
      sub_1000180EC(v427, &qword_100CA6620);
    }
  }

  else
  {
    sub_100073090();
  }

  sub_100051BBC();
  v440 = v915;
  if (sub_100024D10(v426, 1, v915) == 1)
  {
    sub_1007345F8();
    if (sub_100024D10(v426, 1, v440) != 1)
    {
      sub_1000180EC(v426, &qword_100CA6618);
    }
  }

  else
  {
    sub_100073090();
  }

  v441 = v876;
  sub_100051BBC();
  if (sub_100024D10(v441, 1, v406) == 1)
  {
    sub_1007345F8();
    v442 = v437;
    if (sub_100024D10(v441, 1, v406) != 1)
    {
      sub_1000180EC(v441, &qword_100CA6610);
    }
  }

  else
  {
    sub_100073090();
    v442 = v437;
  }

  v443 = v885;
  sub_100073090();
  v444 = *(v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v445 = *(v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v446 = *(v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v447 = *(v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v448 = v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  v449 = v396;
  v450 = *(v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v451 = *(v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v452 = *(v448 + 16);
  v453 = *(v449 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v726) = v450;
  sub_10003E038(v910, v911, v903, v895, v904, v905, v906, v907, v442, v443, v444, v445, v446, v447, v726, v451, v452, v453, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744);
LABEL_234:
  v724 = v454;

  return v724;
}

uint64_t sub_1007345F8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100734650@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CAB938);
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = (a1 + *(type metadata accessor for VisibilityComponent() + 20));
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = v10[5];
  v29 = v10[4];
  v30 = v13;

  CurrentWeather.visibility.getter();
  v28 = Measurement<>.formattedAndClampedVisibilityWithUnit.getter();
  v17 = v16;
  (*(v6 + 8))(v9, v4);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0x6C6C69662E657965;
  *(a2 + 24) = 0xE800000000000000;
  *(a2 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for LocationComponentContainerViewModel();
  v19 = (a2 + v18[5]);
  *v19 = v28;
  v19[1] = v17;
  v20 = v29;
  v19[2] = v30;
  v19[3] = v14;
  v19[4] = v20;
  v19[5] = v15;
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v21 = a2 + v18[8];
  v22 = *(sub_10022C350(&qword_100CA6690) + 48);
  v23 = enum case for DetailCondition.visibility(_:);
  v24 = type metadata accessor for DetailCondition();
  (*(*(v24 - 8) + 104))(v21, v23, v24);
  *(v21 + v22) = 0;
  v25 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v21, 0, 1, v25);
  sub_10013D288();
  result = Dictionary.init(dictionaryLiteral:)();
  *(a2 + v18[6]) = 256;
  *(a2 + v18[7]) = result;
  return result;
}

uint64_t sub_1007348DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1000B8384(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for ContentStatusBanner();
    sub_10010A338(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for ContentStatusBanner();
    v11 = a4;
    v12 = 1;
  }

  return sub_10001B350(v11, v12, 1, v13);
}

uint64_t sub_10073498C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000100ABE610 == a2)
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

uint64_t sub_100734A28(void *a1, uint64_t a2)
{
  sub_10022C350(&qword_100CD5CB0);
  sub_10000FB48();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  sub_1000161C0(a1, a1[3]);
  sub_100734E2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10022C350(&qword_100CD5C98);
  sub_100734F28();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v9, v2);
}

void *sub_100734B74(void *a1)
{
  sub_10022C350(&qword_100CD5C88);
  sub_10000FB48();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  v9 = sub_1000161C0(a1, a1[3]);
  sub_100734E2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100006F14(a1);
  }

  else
  {
    sub_10022C350(&qword_100CD5C98);
    sub_100734E80();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v2);
    v9 = v11[1];
    sub_100006F14(a1);
  }

  return v9;
}

uint64_t sub_100734CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10073498C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100734D18(uint64_t a1)
{
  v2 = sub_100734E2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100734D54(uint64_t a1)
{
  v2 = sub_100734E2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100734D90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100734B74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_100734DD8(void *a1@<X8>)
{
  sub_100780D78();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_100734E2C()
{
  result = qword_100CD5C90;
  if (!qword_100CD5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5C90);
  }

  return result;
}

unint64_t sub_100734E80()
{
  result = qword_100CD5CA0;
  if (!qword_100CD5CA0)
  {
    sub_10022E824(&qword_100CD5C98);
    sub_1006E3958();
    sub_100734FD0(&qword_100CD5CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5CA0);
  }

  return result;
}

unint64_t sub_100734F28()
{
  result = qword_100CD5CB8;
  if (!qword_100CD5CB8)
  {
    sub_10022E824(&qword_100CD5C98);
    sub_1006E3A00();
    sub_100734FD0(&qword_100CD5CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5CB8);
  }

  return result;
}

uint64_t sub_100734FD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContentStatusBanner();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContentStatusBannerState.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1007350C4()
{
  result = qword_100CD5CC8;
  if (!qword_100CD5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5CC8);
  }

  return result;
}

unint64_t sub_10073511C()
{
  result = qword_100CD5CD0;
  if (!qword_100CD5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5CD0);
  }

  return result;
}

unint64_t sub_100735174()
{
  result = qword_100CD5CD8;
  if (!qword_100CD5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5CD8);
  }

  return result;
}

uint64_t sub_1007351C8()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Domain();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  (*(v8 + 104))(v11, enum case for Domain.standard(_:), v6);
  (*(v2 + 104))(v5, enum case for Access.public(_:), v0);
  v15[15] = v13 == 1;
  sub_10022C350(&qword_100CAFFD8);
  swift_allocObject();
  result = Setting.init(_:defaultValue:domain:access:)();
  qword_100D90840 = result;
  return result;
}

uint64_t sub_1007353EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74617265706D6574 && a2 == 0xEF74696E55657275;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x8000000100ADC460 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
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

unint64_t sub_1007355A0(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100735648(void *a1, void *a2)
{
  v4 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10022C350(&qword_100CACF38);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = (&v34 - v9);
  v11 = sub_10022C350(&qword_100CB4978);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = *a1 == *a2 && a1[1] == a2[1];
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  v16 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_30;
    }

    v19 = a1[4] == a2[4] && v17 == v18;
    if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v18)
  {
    goto LABEL_30;
  }

  v20 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
  v21 = *(v20 + 28);
  v22 = *(v11 + 48);
  sub_1001163D0(a1 + v21, v14);
  sub_1001163D0(a2 + v21, &v14[v22]);
  sub_10000394C(v14);
  if (!v15)
  {
    sub_1001163D0(v14, v10);
    sub_10000394C(&v14[v22]);
    if (!v23)
    {
      sub_1003227B4(&v14[v22], v7);
      v27 = *v10 == *v7 && v10[1] == v7[1];
      if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v28 = sub_1003CD3FC(v10 + *(v4 + 20), v7 + *(v4 + 20));
        sub_10073616C(v7, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
        sub_10073616C(v10, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
        sub_1000180EC(v14, &qword_100CACF38);
        if (v28)
        {
          goto LABEL_38;
        }

LABEL_30:
        v25 = 0;
        return v25 & 1;
      }

      sub_10073616C(v7, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
      sub_10073616C(v10, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
      v24 = &qword_100CACF38;
LABEL_29:
      sub_1000180EC(v14, v24);
      goto LABEL_30;
    }

    sub_10073616C(v10, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
LABEL_28:
    v24 = &qword_100CB4978;
    goto LABEL_29;
  }

  sub_10000394C(&v14[v22]);
  if (!v15)
  {
    goto LABEL_28;
  }

  sub_1000180EC(v14, &qword_100CACF38);
LABEL_38:
  v29 = *(v20 + 32);
  v30 = *(a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  if (v30 == *v32 && v31 == v32[1])
  {
    v25 = 1;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v25 & 1;
}

uint64_t sub_10073598C(void *a1)
{
  v3 = sub_10022C350(&qword_100CD5D98);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_100736044();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_100018594();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    sub_100018594();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    sub_100018594();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
    v10[12] = 3;
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
    sub_1007361C4(&qword_100CD5DA0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[11] = 4;
    sub_100018594();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_100735B84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_10022C350(&qword_100CACF38);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = v25 - v5;
  sub_10022C350(&qword_100CD5D80);
  sub_1000037C4();
  v27 = v8;
  v28 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000161C0(a1, a1[3]);
  sub_100736044();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v33 = 0;
  *v13 = sub_100008DA4();
  v13[1] = v14;
  v25[2] = v14;
  v32 = 1;
  v13[2] = sub_100008DA4();
  v13[3] = v15;
  v31 = 2;
  v25[1] = 0;
  v13[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13[5] = v16;
  type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  v30 = 3;
  sub_1007361C4(&qword_100CD5D90);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100736098(v6, v13 + *(v10 + 28));
  v29 = 4;
  v17 = sub_100008DA4();
  v25[0] = v18;
  v19 = v17;
  v20 = sub_1000109DC();
  v21(v20);
  v22 = (v13 + *(v10 + 32));
  v23 = v25[0];
  *v22 = v19;
  v22[1] = v23;
  sub_100736108(v13, v26);
  sub_100006F14(a1);
  return sub_10073616C(v13, type metadata accessor for FeelsLikeComponentPreprocessedDataModel);
}

uint64_t sub_100735F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007353EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100735F98(uint64_t a1)
{
  v2 = sub_100736044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100735FD4(uint64_t a1)
{
  v2 = sub_100736044();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100736044()
{
  result = qword_100CD5D88;
  if (!qword_100CD5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5D88);
  }

  return result;
}

uint64_t sub_100736098(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CACF38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100736108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10073616C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1007361C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeelsLikeComponentPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1007362E8()
{
  result = qword_100CD5DA8;
  if (!qword_100CD5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5DA8);
  }

  return result;
}

unint64_t sub_100736340()
{
  result = qword_100CD5DB0;
  if (!qword_100CD5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5DB0);
  }

  return result;
}

unint64_t sub_100736398()
{
  result = qword_100CD5DB8;
  if (!qword_100CD5DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5DB8);
  }

  return result;
}

uint64_t sub_1007363EC()
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
  qword_100D90848 = result;
  return result;
}

uint64_t sub_10073653C()
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
  qword_100D90850 = result;
  return result;
}

uint64_t sub_10073668C()
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
  qword_100D90858 = result;
  return result;
}

uint64_t sub_1007367DC()
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
  qword_100D90860 = result;
  return result;
}

uint64_t sub_10073692C()
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
  qword_100D90868 = result;
  return result;
}

uint64_t sub_100736A7C()
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
  qword_100D90870 = result;
  return result;
}

uint64_t sub_100736BCC()
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
  qword_100D90878 = result;
  return result;
}

uint64_t sub_100736D1C()
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
  qword_100D90880 = result;
  return result;
}

uint64_t sub_100736E6C()
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
  qword_100D90888 = result;
  return result;
}

uint64_t sub_100736FBC()
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
  qword_100D90890 = result;
  return result;
}

uint64_t sub_10073710C()
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
  qword_100D90898 = result;
  return result;
}

uint64_t sub_10073725C()
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
  qword_100D908A0 = result;
  return result;
}

uint64_t sub_1007373AC()
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
  qword_100D908A8 = result;
  return result;
}

uint64_t sub_1007374FC()
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
  qword_100D908B0 = result;
  return result;
}

uint64_t sub_10073764C()
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
  qword_100D908B8 = result;
  return result;
}

uint64_t sub_1007377A4()
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
  qword_100D908C8 = result;
  return result;
}

uint64_t sub_1007378F4()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  sub_10022C350(&qword_100CAFFD0);
  (*(v2 + 104))(v6, enum case for Access.protected(_:), v0);
  result = Setting<>.init(_:defaultValue:min:max:access:)();
  qword_100D908D0 = result;
  return result;
}

uint64_t sub_100737A14()
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
  qword_100D908D8 = result;
  return result;
}

unint64_t sub_100737B68()
{
  result = qword_100CD5E10;
  if (!qword_100CD5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5E10);
  }

  return result;
}

uint64_t sub_100737BBC()
{
  sub_1003C0DAC();
  sub_100737DAC(&qword_100CB3DB0);
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t sub_100737C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100737DAC(&qword_100CD5E18);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100737CC0()
{
  sub_1003C0DAC();
  sub_100737DAC(&qword_100CB3DB0);
  UITraitCollection.subscript.getter();
  return v1;
}

uint64_t sub_100737D7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100737CC0();
  *a1 = result;
  return result;
}

uint64_t sub_100737DAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIInterfaceOrientation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100737E14()
{
  v0 = [objc_opt_self() mainBundle];
  v7._object = 0x8000000100ADCC20;
  sub_100003CD0();
  sub_100003F1C();
  v7._countAndFlagsBits = 0xD000000000000042;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v3, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

double sub_100737EC4@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v18._object = 0x8000000100ADCB10;
  v4._object = 0x8000000100ADCAF0;
  v18._countAndFlagsBits = 0xD000000000000033;
  v4._countAndFlagsBits = 0xD000000000000018;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v18);

  v7 = [v2 mainBundle];
  v19._object = 0x8000000100ADCBC0;
  v8._object = 0x8000000100ADCB50;
  v19._countAndFlagsBits = 0xD00000000000005ELL;
  v8._countAndFlagsBits = 0x1000000000000060;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v19);

  v11 = sub_100737E14();
  v13 = v12;
  static Color.blue.getter();
  v14 = Color.hex.getter();
  v16 = v15;

  *&result = 0x8000000000000001;
  *a1 = xmmword_100A7EA40;
  *(a1 + 16) = 0x8000000100AD6AC0;
  *(a1 + 24) = v6;
  *(a1 + 40) = v10;
  *(a1 + 56) = 1;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v16;
  return result;
}

double sub_100738064@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v18._object = 0x8000000100ADCCB0;
  v4._object = 0x8000000100ADCC90;
  v18._countAndFlagsBits = 0xD000000000000054;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v18);

  v7 = [v2 mainBundle];
  v19._object = 0x8000000100ADCD80;
  v8._object = 0x8000000100ADCD10;
  v19._countAndFlagsBits = 0xD000000000000067;
  v8._countAndFlagsBits = 0x100000000000006DLL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v19);

  v11 = sub_100737E14();
  v13 = v12;
  static Color.blue.getter();
  v14 = Color.hex.getter();
  v16 = v15;

  *&result = 0x8000000000000001;
  *a1 = xmmword_100A7EA50;
  *(a1 + 16) = 0x8000000100ADCC70;
  *(a1 + 24) = v6;
  *(a1 + 40) = v10;
  *(a1 + 56) = 0;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v16;
  return result;
}

void sub_1007381FC(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  *&v287[1] = a2;
  v333 = a3;
  v314 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v315 = v5;
  sub_1000038CC();
  v6 = type metadata accessor for TimeState();
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000038E4();
  v313 = v8;
  sub_1000038CC();
  type metadata accessor for AirQualityScaleCategory();
  sub_1000037C4();
  *&v280 = v10;
  *(&v280 + 1) = v9;
  __chkstk_darwin(v9);
  sub_1000038E4();
  v279 = v11;
  sub_1000038CC();
  type metadata accessor for AirQualityScale();
  sub_1000037C4();
  v284 = v13;
  v285 = v12;
  __chkstk_darwin(v12);
  sub_1000038E4();
  v283 = v14;
  v15 = sub_10022C350(&qword_100CC62B8);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v310 = v17;
  sub_1000038CC();
  type metadata accessor for AirQuality();
  sub_1000037C4();
  v311 = v19;
  v312 = v18;
  __chkstk_darwin(v18);
  sub_1000038E4();
  v288 = v20;
  v21 = sub_10022C350(&qword_100CAA9F0);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  v303 = v23;
  sub_1000038CC();
  v304 = type metadata accessor for NSUnitSpeed.WeatherFormatUsage();
  sub_1000037C4();
  v302 = v24;
  __chkstk_darwin(v25);
  sub_1000038E4();
  v300 = v26;
  sub_1000038CC();
  type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle();
  sub_1000037C4();
  v308 = v28;
  v309 = v27;
  __chkstk_darwin(v27);
  sub_1000038E4();
  v307 = v29;
  sub_10022C350(&qword_100CACCC8);
  sub_1000037C4();
  v305 = v31;
  v306 = v30;
  sub_100003828();
  __chkstk_darwin(v32);
  sub_1000039BC();
  v301 = v33;
  sub_1000038CC();
  type metadata accessor for Wind();
  sub_1000037C4();
  v298 = v35;
  v299 = v34;
  __chkstk_darwin(v34);
  sub_1000038E4();
  v297 = v36;
  sub_1000038CC();
  v320 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v323 = v37;
  __chkstk_darwin(v38);
  sub_1000038E4();
  v319 = v39;
  sub_1000038CC();
  v296 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  *&v295 = v40;
  __chkstk_darwin(v41);
  sub_1000038E4();
  v294 = v42;
  sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v292 = v44;
  v293 = v43;
  sub_100003828();
  __chkstk_darwin(v45);
  sub_1000039BC();
  v291 = v46;
  sub_1000038CC();
  *&v325 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  *&v327 = v47;
  __chkstk_darwin(v48);
  sub_1000038E4();
  *&v324 = v49;
  v50 = sub_10022C350(&qword_100CB3AB0);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  sub_100003C38();
  v281 = v52 - v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  v289 = &v270 - v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  v318 = &v270 - v57;
  sub_1000038CC();
  *&v326 = type metadata accessor for URL();
  sub_1000037C4();
  v322 = v58;
  __chkstk_darwin(v59);
  sub_100003C38();
  v286 = v60 - v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  v316 = &v270 - v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  v282 = &v270 - v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  v321 = &v270 - v67;
  sub_1000038CC();
  v68 = type metadata accessor for ReportWeatherConfiguration();
  sub_1000037C4();
  v317 = v69;
  __chkstk_darwin(v70);
  v72 = &v270 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for AppConfigurationState();
  v74 = sub_100003810(v73);
  __chkstk_darwin(v74);
  v76 = &v270 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v77);
  sub_1000038E4();
  v329 = v78;
  v79 = sub_10022C350(&qword_100CA37B0);
  sub_100003810(v79);
  sub_100003828();
  __chkstk_darwin(v80);
  v82 = &v270 - v81;
  v83 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v84);
  sub_100003C38();
  v87 = v85 - v86;
  __chkstk_darwin(v88);
  v328 = &v270 - v89;
  v90 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v90);
  sub_100003828();
  __chkstk_darwin(v91);
  v93 = &v270 - v92;
  v94 = type metadata accessor for CurrentLocation();
  sub_1000037E8();
  __chkstk_darwin(v95);
  sub_1000038E4();
  v330 = v96;
  *&v331 = a1;
  v97 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  sub_100003CD0();
  swift_beginAccess();
  if (*(v97 + 3) != 4)
  {
    if (*(v97 + 1) - 1 > 1)
    {
LABEL_6:
      sub_10003C7B4();
      sub_100737EC4(v100);
      goto LABEL_7;
    }

    v99 = v331;
    sub_100035AD0(v331 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v93, &unk_100CE49F0);
    if (sub_100024D10(v93, 1, v94) == 1)
    {
      sub_1000180EC(v93, &unk_100CE49F0);
      goto LABEL_6;
    }

    v108 = v93;
    v109 = v99;
    v110 = v330;
    sub_1000307A4(v108, v330, &type metadata accessor for CurrentLocation);
    v111 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v112 = CurrentLocation.id.getter();
    sub_1000864C0(v112, v113, v111);

    if (sub_100024D10(v82, 1, v83) == 1)
    {
      sub_1000180EC(v82, &qword_100CA37B0);
      sub_10003C7B4();
      sub_100737EC4(v114);
      sub_100008DC0();
LABEL_16:
      sub_100019E20();
      sub_1000311A0(v110, v129);
      v106 = v324;
      v105 = v325;
      v104 = v326;
      v103 = v327;
      v102 = v331;
      v101 = v332;
      goto LABEL_8;
    }

    v115 = v82;
    v116 = v328;
    sub_1000307A4(v115, v328, type metadata accessor for LocationWeatherDataState);
    sub_1001AF6BC(v116, v87, type metadata accessor for LocationWeatherDataState);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1000311A0(v87, type metadata accessor for LocationWeatherDataState);
      sub_10003C7B4();
      sub_100738064(v128);
      sub_100008DC0();
      v127 = v116;
      v126 = type metadata accessor for LocationWeatherDataState;
      goto LABEL_15;
    }

    v117 = sub_10022C350(&qword_100CA75D8);
    v118 = *(v117 + 48);
    v119 = *(v117 + 64);
    v120 = v329;
    sub_1000307A4(v87, v329, type metadata accessor for WeatherData);
    sub_1000311A0(v87 + v119, type metadata accessor for NewsDataModel);
    sub_1000311A0(v87 + v118, type metadata accessor for PreprocessedWeatherData);
    sub_1001AF6BC(v331 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v76, type metadata accessor for AppConfigurationState);
    AppConfiguration.reportWeather.getter();
    type metadata accessor for AppConfiguration();
    sub_1000037E8();
    (*(v121 + 8))(v76);
    ReportWeatherConfiguration.onlineFeedbackURL.getter();
    (v317)[1](v72, v68);
    v122 = v318;
    URL.init(string:)();

    v123 = v326;
    if (sub_100024D10(v122, 1, v326) == 1)
    {
      sub_1000180EC(v122, &qword_100CB3AB0);
      sub_10003C7B4();
      sub_100738064(v124);
      sub_100008DC0();
      sub_100028A6C();
      sub_1000311A0(v120, v125);
      sub_1000230C8();
      v127 = v116;
LABEL_15:
      sub_1000311A0(v127, v126);
      goto LABEL_16;
    }

    v271 = *(v322 + 32);
    v272 = v322 + 32;
    v271(v321, v122, v123);
    v318 = *(v290 + 24);
    v130 = v324;
    WeatherDataModel.currentWeather.getter();
    v131 = v291;
    CurrentWeather.temperature.getter();
    v132 = *(v327 + 8);
    *&v327 = v327 + 8;
    v290 = v132;
    v132(v130, v325);
    v133 = v294;
    static WeatherFormatStyle<>.weather.getter();
    HIDWORD(v278) = enum case for WeatherFormatPlaceholder.none(_:);
    v134 = v323;
    v135 = *(v323 + 104);
    v276 = v323 + 104;
    v277 = v135;
    v136 = v319;
    v137 = v320;
    v135(v319);
    v275 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100115114(&qword_100CA5410, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
    v138 = v293;
    v139 = v296;
    v140 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v273 = v141;

    v142 = *(v134 + 8);
    v323 = v134 + 8;
    v274 = v142;
    v142(v136, v137);
    (*(v295 + 8))(v133, v139);
    (*(v292 + 8))(v131, v138);
    v317 = objc_opt_self();
    v143 = [v317 mainBundle];
    v337._object = 0x8000000100ADC810;
    sub_10006993C();
    sub_10000666C();
    sub_100003F1C();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v144, v145, v146, v147, v337);

    v296 = sub_10022C350(&qword_100CA40C8);
    v148 = swift_allocObject();
    v295 = xmmword_100A2C3F0;
    *(v148 + 16) = xmmword_100A2C3F0;
    *(v148 + 56) = &type metadata for String;
    v294 = sub_100035744();
    *(v148 + 64) = v294;
    v149 = v273;
    *(v148 + 32) = v140;
    *(v148 + 40) = v149;
    v292 = String.init(format:_:)();
    v293 = v150;

    v151 = v324;
    WeatherDataModel.currentWeather.getter();
    v152 = v297;
    CurrentWeather.wind.getter();
    (v290)(v151, v325);
    v153 = v301;
    Wind.speed.getter();
    (*(v298 + 8))(v152, v299);
    v154 = v302;
    v155 = v300;
    v156 = v304;
    (*(v302 + 104))(v300, enum case for NSUnitSpeed.WeatherFormatUsage.windSpeed(_:), v304);
    v157 = type metadata accessor for Locale();
    v158 = v303;
    sub_10001B350(v303, 1, 1, v157);
    static Set<>.full.getter();
    v159 = v307;
    static WeatherFormatStyle<>.weather(_:usage:locale:)();

    sub_1000180EC(v158, &qword_100CAA9F0);
    (*(v154 + 8))(v155, v156);
    v160 = v319;
    v161 = v320;
    v277(v319, HIDWORD(v278), v320);
    static UnitManager.standard.getter();
    sub_100115114(&qword_100CAECB0, &type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
    v162 = v306;
    v163 = v309;
    v164 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v166 = v165;

    v274(v160, v161);
    (*(v308 + 8))(v159, v163);
    (*(v305 + 8))(v153, v162);
    v167 = v317;
    v168 = [v317 mainBundle];
    v338._object = 0x8000000100ADC860;
    sub_10006993C();
    sub_10000666C();
    sub_100003F1C();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v169, v170, v171, v172, v338);

    v173 = sub_10000CE64();
    *(v173 + 16) = v295;
    v174 = v294;
    *(v173 + 56) = &type metadata for String;
    *(v173 + 64) = v174;
    *(v173 + 32) = v164;
    *(v173 + 40) = v166;
    v308 = String.init(format:_:)();
    v309 = v175;

    v176 = v310;
    WeatherDataModel.airQuality.getter();
    v177 = v312;
    if (sub_100024D10(v176, 1, v312) == 1)
    {
      sub_1000180EC(v176, &qword_100CC62B8);
      v310 = 0;
      v319 = 0;
      v320 = 0;
      v323 = 0;
      v178 = v322;
      v179 = v331;
    }

    else
    {
      v180 = v288;
      (*(v311 + 32))(v288, v176, v177);
      v181 = v283;
      AirQuality.scale.getter();
      v319 = AirQualityScale.displayLabel.getter();
      v323 = v182;
      v183 = v285;
      v184 = *(v284 + 8);
      v184(v181, v285);
      AirQuality.scale.getter();
      v185 = AirQualityScale.isNumerical.getter();
      v184(v181, v183);
      v186 = [v167 mainBundle];
      v179 = v331;
      if (v185)
      {
        v339._object = 0x8000000100ADCA10;
        sub_10006993C();
        sub_100003CD0();
        sub_100003F1C();
        NSLocalizedString(_:tableName:bundle:value:comment:)(v187, v188, v189, v190, v339);

        v191 = sub_10000CE64();
        *(v191 + 16) = v295;
        v192 = AirQuality.index.getter();
        *(v191 + 56) = &type metadata for Int;
        *(v191 + 64) = &protocol witness table for Int;
        *(v191 + 32) = v192;
        v310 = static String.localizedStringWithFormat(_:_:)();
        v320 = v193;
      }

      else
      {
        v340._object = 0x8000000100ADC9C0;
        sub_10006993C();
        sub_10000666C();
        sub_100003F1C();
        NSLocalizedString(_:tableName:bundle:value:comment:)(v194, v195, v196, v197, v340);

        v198 = sub_10000CE64();
        *(v198 + 16) = v295;
        v199 = v279;
        AirQuality.currentScaleCategory.getter();
        v200 = AirQualityScaleCategory.description.getter();
        v202 = v201;
        (*(v280 + 8))(v199, *(&v280 + 1));
        v203 = v294;
        *(v198 + 56) = &type metadata for String;
        *(v198 + 64) = v203;
        *(v198 + 32) = v200;
        *(v198 + 40) = v202;
        v180 = v288;
        v310 = String.init(format:_:)();
        v320 = v204;
      }

      v178 = v322;

      (*(v311 + 8))(v180, v177);
    }

    v205 = v324;
    WeatherDataModel.currentWeather.getter();
    v206 = v313;
    sub_1001AF6BC(v179 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v313, type metadata accessor for TimeState);
    *&v331 = sub_100739D90();
    *&v332 = v207;
    v318 = v208;
    v210 = v209;
    (v290)(v205, v325);
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v211 + 8))(v206);
    v212 = v315;
    sub_1001AF6BC(v179 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v315, type metadata accessor for ModalViewState);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v212 = *v212;
      memcpy(v335, v212 + 2, 0x60uLL);
      v213 = v335[0];
      if ((v335[0] & 0x8000000000000000) == 0)
      {
        *&v325 = v212;

        memcpy(v336, (v213 + 16), 0xC2uLL);
        v214 = v326;
        sub_10001B350(v289, 1, 1, v326);
        LODWORD(v331) = *(v213 + 232);
        LODWORD(v332) = *(v213 + 256);
        if (!v323)
        {
          v215 = *(v213 + 272);
          v319 = *(v213 + 264);
          v323 = v215;
        }

        v217 = v281;
        v216 = v282;
        if (!v320)
        {
          v218 = *(v213 + 288);
          v310 = *(v213 + 280);
          v320 = v218;
        }

        LODWORD(v327) = *(v213 + 296);
        v220 = *(v213 + 304);
        v219 = *(v213 + 312);
        sub_100035AD0(v289, v217, &qword_100CB3AB0);
        v221 = sub_100024D10(v217, 1, v214);
        *&v324 = v219;
        if (v221 == 1)
        {
          v318 = *(v178 + 16);
          (v318)(v216, v213 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_onlineFeedbackURL, v214);
          if (sub_100024D10(v217, 1, v214) == 1)
          {
            sub_1002DD184(v336, v334);
          }

          else
          {
            sub_1002DD184(v336, v334);

            sub_1000180EC(v217, &qword_100CB3AB0);
          }

          v259 = v326;
          v178 = v322;
          v257 = v220;
          v258 = v282;
          v256 = v318;
        }

        else
        {
          v271(v216, v217, v214);
          sub_1002DD184(v336, v334);
          v256 = *(v178 + 16);

          v257 = v220;
          v258 = v216;
          v259 = v214;
        }

        v260 = *(v213 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_showOnlineFeedbackSafariView);
        v261 = *(v213 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_entrySource);
        v262 = v316;
        v256(v316, v258, v259);
        type metadata accessor for ReportWeatherContentViewModel._Storage(0);
        swift_allocObject();
        BYTE1(v269) = v261;
        LOBYTE(v269) = v260;
        LOBYTE(v268) = v327;
        sub_1002D5EE8(v336, v292, v293, v331, v308, v309, v332, v319, v323, v310, v320, v268, v257, v324, v262, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, SBYTE1(v286));
        v254 = v263;
        sub_10026AD10(v335);

        v264 = *(v178 + 8);
        v264(v258, v259);
        sub_1000180EC(v289, &qword_100CB3AB0);
        v264(v321, v259);
        goto LABEL_39;
      }

      *&v327 = v210;
    }

    else
    {
      *&v327 = v210;
      sub_1000311A0(v212, type metadata accessor for ModalViewState);
    }

    v222 = sub_100049B94();
    sub_10006993C();
    v341._object = v212;
    sub_1000109EC();
    v227 = NSLocalizedString(_:tableName:bundle:value:comment:)(v223, v224, v225, v226, v341);
    *&v325 = v227._countAndFlagsBits;
    *&v324 = v227._object;

    v228 = sub_100049B94();
    v342._object = v212;
    sub_1000109EC();
    v342._countAndFlagsBits = 0xD000000000000031;
    v233 = NSLocalizedString(_:tableName:bundle:value:comment:)(v229, v230, v231, v232, v342);

    v234 = sub_100049B94();
    v343._object = v212;
    sub_100003CD0();
    sub_100003F1C();
    v239 = NSLocalizedString(_:tableName:bundle:value:comment:)(v235, v236, v237, v238, v343);

    v240 = sub_100049B94();
    v344._object = v212;
    sub_100003CD0();
    sub_100003F1C();
    v344._countAndFlagsBits = 0xD000000000000031;
    v245 = NSLocalizedString(_:tableName:bundle:value:comment:)(v241, v242, v243, v244, v344);

    *&v336[0] = v331;
    *(&v336[0] + 1) = v332;
    *&v336[1] = v318;
    *(&v336[1] + 1) = v327;
    LOBYTE(v336[2]) = 0;
    *(&v336[2] + 1) = v325;
    *&v336[3] = v324;
    *(&v336[3] + 1) = 0x69662E64756F6C63;
    *&v336[4] = 0xEA00000000006C6CLL;
    WORD4(v336[4]) = 0;
    v336[5] = v233;
    *&v336[6] = 0x61722E64756F6C63;
    *(&v336[6] + 1) = 0xEF6C6C69662E6E69;
    LOWORD(v336[7]) = 0;
    *(&v336[7] + 8) = v239;
    sub_10006993C();
    *(&v336[8] + 1) = v246 - 33;
    *&v336[9] = 0x8000000100ADC960;
    WORD4(v336[9]) = 0;
    v336[10] = v245;
    *&v336[11] = 0x6B616C66776F6E73;
    *(&v336[11] + 1) = 0xE900000000000065;
    LOWORD(v336[12]) = 0;
    v248 = v321;
    v247 = v322;
    v249 = *(v322 + 16);
    v250 = v316;
    v251 = v326;
    v249(v316, v321, v326);
    v252 = v286;
    v249(v286, v250, v251);
    type metadata accessor for ReportWeatherContentViewModel._Storage(0);
    swift_allocObject();
    LOWORD(v269) = *v287 & 0x100;
    LOBYTE(v268) = 1;
    sub_1002D5EE8(v336, v292, v293, 1, v308, v309, 1, v319, v323, v310, v320, v268, &_swiftEmptySetSingleton, &_swiftEmptySetSingleton, v252, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, SBYTE1(v286));
    v254 = v253;
    v255 = *(v247 + 8);
    v255(v250, v251);
    v255(v248, v251);
LABEL_39:
    sub_100028A6C();
    sub_1000311A0(v329, v265);
    sub_1000230C8();
    sub_1000311A0(v328, v266);
    sub_100019E20();
    sub_1000311A0(v330, v267);
    *&v101 = v254 & 0xFFFFFFFFFFFFFF9;
    goto LABEL_8;
  }

  sub_10003C7B4();
  sub_100738064(v98);
LABEL_7:
  v101 = v336[0];
  v102 = v336[1];
  v103 = v336[2];
  v104 = v336[3];
  v105 = v336[4];
  v106 = v336[5];
LABEL_8:
  v107 = v333;
  *v333 = v101;
  v107[1] = v102;
  v107[2] = v103;
  v107[3] = v104;
  v107[4] = v105;
  v107[5] = v106;
}

uint64_t sub_100739D90()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v9._object = 0x8000000100ADCA50;
  v2._countAndFlagsBits = 0x796E6E7553;
  v2._object = 0xE500000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000030;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  if ((CurrentWeather.isDaylight.getter() & 1) == 0)
  {

    v5 = [v0 mainBundle];
    v6._countAndFlagsBits = 0xD000000000000010;
    v10._object = 0x8000000100ADCAB0;
    v7._countAndFlagsBits = 0x7261656C43;
    v6._object = 0x8000000100ADCA90;
    v7._object = 0xE500000000000000;
    v10._countAndFlagsBits = 0xD000000000000030;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_100739F1C()
{
  v1 = v0;
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for ContentSizeCategory.extraSmall(_:) && v7 != enum case for ContentSizeCategory.small(_:) && v7 != enum case for ContentSizeCategory.medium(_:) && v7 != enum case for ContentSizeCategory.large(_:) && v7 != enum case for ContentSizeCategory.extraLarge(_:) && v7 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v7 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v7 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v7 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v7 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v7 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v7 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      return 1;
    }

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t sub_10073A0E8@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v22 = type metadata accessor for Location.Identifier();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SavedLocation();
  __chkstk_darwin(v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((v1 + 16), *(v1 + 40));
  result = dispatch thunk of SavedLocationsManagerType.savedLocations.getter();
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  v11 = (v2 + 8);
  while (1)
  {
    if (v10 == v9)
    {

      v17 = 1;
      v18 = v21;
      return sub_10001B350(v18, v17, 1, v20);
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    sub_1007441CC();
    SavedLocation.identifier.getter();
    v12 = Location.Identifier.name.getter();
    v14 = v13;
    (*v11)(v4, v22);
    if (v12 == 0x6B726F592077654ELL && v14 == 0xE800000000000000)
    {

LABEL_12:

      v18 = v21;
      sub_1000A0944();
      v17 = 0;
      return sub_10001B350(v18, v17, 1, v20);
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_12;
    }

    result = sub_100032960(v6, &type metadata accessor for SavedLocation);
    ++v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10073A39C(uint64_t a1, uint64_t a2)
{
  v1296 = a2;
  v1304 = a1;
  v4 = type metadata accessor for Location.Identifier();
  v5 = sub_100003E5C(v4, &v1307);
  v1119 = v6;
  __chkstk_darwin(v5);
  sub_1000038E4();
  sub_100003918(v7);
  v8 = type metadata accessor for WeatherMapOverlayKind();
  v9 = sub_100003E5C(v8, &v1253);
  v1222 = v10;
  __chkstk_darwin(v9);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_10000E70C();
  sub_100003918(v12);
  v13 = type metadata accessor for WeatherCondition();
  v14 = sub_100003E5C(v13, &v1246);
  v1220 = v15;
  __chkstk_darwin(v14);
  sub_1000038E4();
  sub_100003918(v16);
  v1286 = type metadata accessor for SavedLocation();
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_100003848();
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
  sub_10000E70C();
  sub_100003918(v22);
  type metadata accessor for Logger();
  sub_1000037C4();
  v1287 = v24;
  v1288 = v23;
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  sub_100003918(v30);
  active = type metadata accessor for LocationViewerActiveLocationState();
  v32 = sub_100003810(active);
  __chkstk_darwin(v32);
  sub_1000038E4();
  sub_100003990(v33);
  v34 = sub_10022C350(&qword_100CA6890);
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  sub_100003990(v38);
  v39 = sub_10022C350(&qword_100CA65D8);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_100003918(&v1093 - v41);
  v42 = type metadata accessor for Location();
  v43 = sub_100003E5C(v42, &v1306);
  v1249 = v44;
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  sub_100003918(v46);
  v47 = type metadata accessor for DetailCondition();
  v48 = sub_100003E5C(v47, v1254);
  v1250 = v49;
  __chkstk_darwin(v48);
  sub_1000038E4();
  sub_100003918(v50);
  v1302 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v51);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
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
  sub_10000E70C();
  sub_100003918(v57);
  v1301 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v58);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_10000E70C();
  sub_100003918(v64);
  v1300 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v65);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_10000E70C();
  sub_100003918(v71);
  v1299 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v72);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_10000E70C();
  sub_100003918(v78);
  v1298 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v79);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_10000E70C();
  sub_100003918(v85);
  v1297 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v86);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_10000E70C();
  v93 = sub_100003918(v92);
  v1292 = type metadata accessor for ModalViewState(v93);
  sub_1000037E8();
  __chkstk_darwin(v94);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
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
  v1290 = v105;
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_10000E70C();
  sub_100003990(v108);
  v109 = sub_10022C350(&qword_100CA65E8);
  v110 = sub_100003810(v109);
  __chkstk_darwin(v110);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_10000E70C();
  v124 = sub_100003918(v123);
  v1295 = type metadata accessor for WeatherMapPresentationState(v124);
  sub_1000037E8();
  __chkstk_darwin(v125);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_10000E70C();
  sub_100003918(v132);
  v1303 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v133);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_10000E70C();
  v141 = sub_100003918(v140);
  v1291 = type metadata accessor for ViewState.SecondaryViewState(v141);
  sub_1000037E8();
  __chkstk_darwin(v142);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_10000E70C();
  sub_100003990(v149);
  v150 = sub_10022C350(&qword_100CA65F0);
  v151 = sub_100003810(v150);
  __chkstk_darwin(v151);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_10000E70C();
  sub_100003990(v165);
  v166 = sub_10022C350(&qword_100CA65F8);
  v167 = sub_100003810(v166);
  __chkstk_darwin(v167);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_10000E70C();
  sub_100003990(v181);
  v182 = sub_10022C350(&qword_100CA6600);
  v183 = sub_100003810(v182);
  __chkstk_darwin(v183);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v189);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v191);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v192);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v198);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v199);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_10000E70C();
  sub_100003990(v204);
  v205 = sub_10022C350(&qword_100CA6608);
  v206 = sub_100003810(v205);
  __chkstk_darwin(v206);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v208);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v209);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v210);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v211);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v212);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v217);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v218);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_10000E70C();
  v221 = sub_100003918(v220);
  v1293 = type metadata accessor for ViewState(v221);
  sub_1000037E8();
  __chkstk_darwin(v222);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v223);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v224);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  v1289 = v227;
  __chkstk_darwin(v228);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v229);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v230);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v231);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v233);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v234);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v235);
  sub_10000E70C();
  sub_100003990(v236);
  v237 = sub_10022C350(&qword_100CA6610);
  v238 = sub_100003810(v237);
  __chkstk_darwin(v238);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v240);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v241);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v242);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v243);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v244);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v245);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v246);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v249);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v250);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v251);
  sub_10000E70C();
  sub_100003990(v252);
  v253 = sub_10022C350(&qword_100CA6618);
  v254 = sub_100003810(v253);
  __chkstk_darwin(v254);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v255);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v256);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v257);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v258);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v259);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v260);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v261);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v262);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v263);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v264);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v265);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v266);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v267);
  sub_10000E70C();
  sub_100003990(v268);
  v269 = sub_10022C350(&qword_100CA6620);
  v270 = sub_100003810(v269);
  __chkstk_darwin(v270);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v271);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v272);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v273);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v274);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v275);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v276);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v277);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v278);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v279);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v280);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v281);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v282);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v283);
  sub_10000E70C();
  sub_100003990(v284);
  v285 = sub_10022C350(&qword_100CA6628);
  v286 = sub_100003810(v285);
  __chkstk_darwin(v286);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v287);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v288);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v289);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v290);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v291);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v292);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v293);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v294);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v295);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v296);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v297);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v298);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v299);
  sub_10000E70C();
  sub_100003990(v300);
  v301 = sub_10022C350(&qword_100CA6630);
  v302 = sub_100003810(v301);
  __chkstk_darwin(v302);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v303);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v304);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v305);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v306);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v307);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v308);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v309);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v310);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v311);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v312);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v313);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v314);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v315);
  sub_10000E70C();
  sub_100003990(v316);
  v317 = sub_10022C350(&qword_100CA6638);
  v318 = sub_100003810(v317);
  __chkstk_darwin(v318);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v319);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v320);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v321);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v322);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v323);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v324);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v325);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v326);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v327);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v328);
  sub_100017D24();
  __chkstk_darwin(v329);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v330);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v331);
  sub_10000E70C();
  sub_100003990(v332);
  v333 = sub_10022C350(&qword_100CA6640);
  v334 = sub_100003810(v333);
  __chkstk_darwin(v334);
  sub_100003848();
  sub_100003908();
  v336 = __chkstk_darwin(v335);
  v338 = &v1093 - v337;
  __chkstk_darwin(v336);
  sub_100003878();
  sub_100003908();
  v340 = __chkstk_darwin(v339);
  v342 = (&v1093 - v341);
  __chkstk_darwin(v340);
  sub_1001994D0();
  __chkstk_darwin(v343);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v344);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v345);
  sub_100003878();
  sub_100003908();
  v347 = __chkstk_darwin(v346);
  v349 = (&v1093 - v348);
  __chkstk_darwin(v347);
  sub_100003878();
  sub_100003908();
  v351 = __chkstk_darwin(v350);
  v353 = &v1093 - v352;
  __chkstk_darwin(v351);
  sub_100003878();
  sub_100003908();
  v355 = __chkstk_darwin(v354);
  v357 = &v1093 - v356;
  __chkstk_darwin(v355);
  sub_10002C820();
  type metadata accessor for PerformanceTestAction();
  sub_1000037E8();
  __chkstk_darwin(v358);
  v360 = (&v1093 - ((v359 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1007441CC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v485 = *v360;
      v486 = v1294;
      v342 = *(v1294 + 48);
      sub_1000C82BC((v1294 + 16));
      v487 = *(dispatch thunk of SavedLocationsManagerType.savedLocations.getter() + 16);

      if (v485 < v487)
      {
        v488 = *(v486 + 40);
        sub_1000C82BC((v486 + 16));
        dispatch thunk of SavedLocationsManagerType.savedLocations.getter();
        v489 = sub_100003940();
        sub_1006AC3CC(v489, v490);

        v491 = sub_100003BCC(v1188);
        sub_10001B350(v491, v492, v493, v1297);
        v494 = sub_100003BCC(v1190);
        sub_10001B350(v494, v495, v496, v1298);
        v497 = sub_100003BCC(v1193);
        sub_10001B350(v497, v498, v499, v1299);
        v500 = sub_100003BCC(v1195);
        sub_10001B350(v500, v501, v502, v1300);
        v503 = sub_100003BCC(&v1198);
        sub_10001B350(v503, v504, v505, v1301);
        v506 = sub_100003BCC(&v1203);
        sub_10001B350(v506, v507, v508, v1302);
        sub_100008DDC();
        sub_10003805C(v509);
        sub_1000519E0();
        sub_1007441CC();
        sub_1000184C0();
        SavedLocation.identifier.getter();
        v510 = sub_10000FEF4();
        v513 = sub_1000D3CF4(v510, v511, v512, v1283);
        type metadata accessor for LocationViewerViewState._Storage(v513);
        sub_100003B6C();
        v514 = sub_100071DE8();
        sub_1000B7BD8(v514, v1211);
        sub_1000C8630();
        v515 = sub_10012CDB0(v353);
        v516 = v1200;
        sub_100003934();
        sub_10001B350(v517, v518, v519, v515);
        v520 = sub_100003BCC(v1261);
        sub_10001B350(v520, v521, v522, v1303);
        v523 = sub_100003BCC(v1263);
        sub_10001B350(v523, v524, v525, v1295);
        v526 = *v349;
        sub_1000131DC();
        sub_100095588();
        sub_100005404(v486);
        if (v728)
        {
          v873 = v1293;
          sub_100074EFC();
          sub_1007441CC();
          sub_1000437F4(v486);
          v874 = v1162;
          if (v488 != 1)
          {
            sub_1000180EC(v486, &qword_100CA6608);
          }
        }

        else
        {
          sub_100006694();
          sub_1000A0944();

          v873 = v1293;
          v874 = v1162;
        }

        v875 = *(v1253 + v873[6]);
        sub_100032590();
        sub_100095588();
        sub_100003A40(v516);
        if (v728)
        {
          sub_100095588();
          sub_100003A40(v516);
          if (!v728)
          {
            sub_1000180EC(v516, &qword_100CA6600);
          }
        }

        else
        {
          sub_100028A84();
          sub_100032590();
          sub_1000A0944();
          sub_10000E7B0();
          sub_10001B350(v917, v918, v919, v515);
        }

        sub_100032590();
        sub_100095588();
        v920 = sub_1000175DC();
        v921 = v1303;
        sub_1000113D0(v920, v922);
        if (v728)
        {
          sub_100019E38();
          sub_100087FF4(v923);
          sub_1007441CC();
          sub_100003A40(v516);
          if (!v728)
          {
            sub_1000180EC(v516, &qword_100CA65F8);
          }
        }

        else
        {
          sub_100010A04();
          sub_1000A0944();
        }

        sub_1000113EC();
        sub_100095588();
        sub_10000394C(v921);
        if (v728)
        {
          sub_1000049BC();
          sub_100087FF4(v924);
          sub_1007441CC();
          sub_10000394C(v921);
          v925 = v1200;
          if (!v728)
          {
            sub_1000180EC(v921, &qword_100CA65F0);
          }
        }

        else
        {
          sub_10001CC28();
          sub_1000A0944();
          v925 = v1200;
        }

        v926 = v1253;
        v927 = *(v1253 + v873[11]);
        v928 = v1143;
        *v1143 = v526;
        sub_100006694();
        sub_1000A0944();
        *(v928 + v873[6]) = v875;
        *(v928 + v873[7]) = 1;
        sub_100051BBC();
        sub_100010A04();
        sub_1000A0944();
        sub_10001CC28();
        sub_1000A0944();
        *(v928 + v873[11]) = v927;
        sub_1000180EC(v1247, &qword_100CA65F0);
        sub_1000180EC(v1245, &qword_100CA65F8);
        sub_1000180EC(v925, &qword_100CA6600);
        sub_1000180EC(v1191, &qword_100CA6608);
        sub_1000230E0();
        sub_100032960(v926, v929);
        v930 = sub_100007FB4();
        sub_10001B350(v930, v931, v932, v873);
        sub_100003934();
        sub_10001B350(v933, v934, v935, v1292);
        sub_1000E5A2C();
        v936 = v1167;
        v937 = v1169;
        v938 = v1171;
        v939 = v1174;
        v940 = v1179;
        v941 = v1184;
        v630 = sub_1000D2C20(0, 3u, v1167, v1169, v1171, v1174, v1179, v1184, v928, v874, v1095, v1096, v1097, v1098, v1099, v1100, v1101, v1102, v1103);
        sub_1000180EC(v874, &qword_100CA65E8);
        sub_1000180EC(v928, &qword_100CA6610);
        sub_1000180EC(v941, &qword_100CA6618);
        sub_1000180EC(v940, &qword_100CA6620);
        sub_1000180EC(v939, &qword_100CA6628);
        sub_1000180EC(v938, &qword_100CA6630);
        sub_1000180EC(v937, &qword_100CA6638);
        sub_1000180EC(v936, &qword_100CA6640);
        sub_100014D94();
        v872 = &v1251;
        goto LABEL_250;
      }

      sub_100020250();
      static Logger.automation.getter();
      v571 = Logger.logObject.getter();
      v736 = static os_log_type_t.error.getter();
      if (!sub_10000C79C(v736))
      {
        goto LABEL_135;
      }

      v737 = sub_10000389C();
      sub_100025054(v737);
      v576 = "Failed to locate location due to index out of boundary";
      goto LABEL_134;
    case 2u:
      v411 = v1249;
      v412 = v1215;
      v413 = v1281;
      (*(v1249 + 32))(v1215, v360, v1281);
      sub_100003934();
      sub_10001B350(v414, v415, v416, v1297);
      v417 = sub_100003BCC(&v1266);
      sub_10001B350(v417, v418, v419, v1298);
      v420 = sub_100003BCC(&v1269);
      sub_10001B350(v420, v421, v422, v1299);
      v423 = sub_100003BCC(&v1272);
      sub_10001B350(v423, v424, v425, v1300);
      v426 = sub_100003BCC(&v1277);
      sub_10001B350(v426, v427, v428, v1301);
      v429 = sub_100003BCC(&v1282);
      sub_10001B350(v429, v430, v431, v1302);
      sub_100008DDC();
      sub_1000E1404(v432);
      sub_100021424();
      sub_1007441CC();
      v433 = v1282;
      Location.identifier.getter();
      v435 = *(v411 + 8);
      v434 = v411 + 8;
      v435(v412, v413);
      sub_10000E7B0();
      v439 = sub_1000D3CF4(v436, v437, v438, v1283);
      type metadata accessor for LocationViewerViewState._Storage(v439);
      sub_100003B6C();
      v440 = sub_10003DDB8(v433, 0, 0, 3, 0, 0);
      v441 = v1180;
      *v1180 = v440;
      sub_1000C8630();
      v442 = sub_10012CDB0(v441);
      v443 = sub_100003BCC(&v1278);
      sub_10001B350(v443, v444, v445, v442);
      v446 = v1242;
      sub_100003934();
      sub_10001B350(v447, v448, v449, v1303);
      sub_100003934();
      sub_10001B350(v450, v451, v452, v1295);
      v453 = *v342;
      sub_100037814();
      sub_100051BBC();
      sub_100005404(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      if (v728)
      {
        v631 = v1293;
        sub_100074EFC();
        sub_1007441CC();
        sub_1000437F4(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
        v632 = v1207;
        v633 = v1188[0];
        if (v434 != 1)
        {
          sub_1000180EC(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, &qword_100CA6608);
        }
      }

      else
      {
        sub_100006694();
        sub_1000A0944();

        v631 = v1293;
        v632 = v1207;
        v633 = v1188[0];
      }

      sub_100192424(*(v631 + 24));
      sub_1000453E0(&v1278);
      sub_100051BBC();
      sub_100003A40(v633);
      if (v728)
      {
        sub_100095588();
        sub_100003A40(v633);
        if (!v728)
        {
          sub_1000180EC(v633, &qword_100CA6600);
        }
      }

      else
      {
        sub_100028A84();
        sub_1000519E0();
        sub_1000A0944();
        v446 = v1242;
        sub_10000E7B0();
        sub_10001B350(v634, v635, v636, v442);
      }

      sub_1000519E0();
      sub_100051BBC();
      v637 = sub_100007FC4();
      sub_1000113D0(v637, v638);
      if (v728)
      {
        sub_100019E38();
        v639 = v1285;
        sub_1007441CC();
        sub_100003A40(v446);
        if (!v728)
        {
          sub_1000180EC(v446, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100010A04();
        sub_1000A0944();
        v639 = v1285;
      }

      sub_100051BBC();
      v640 = sub_100016298();
      sub_1000113D0(v640, v641);
      if (v728)
      {
        sub_1000049BC();
        sub_1000131DC();
        sub_1007441CC();
        sub_100003A40(v632);
        v642 = v1175;
        if (!v728)
        {
          sub_1000180EC(v632, &qword_100CA65F0);
        }
      }

      else
      {
        sub_10001CC28();
        sub_1000131DC();
        sub_1000A0944();
        v642 = v1175;
      }

      v643 = *(v639 + *(v631 + 44));
      sub_1000230E0();
      sub_100032960(v639, v644);
      v645 = v1203;
      *v1203 = v453;
      sub_100006694();
      sub_1000A0944();
      *(v645 + *(v631 + 24)) = v1296;
      sub_10009265C();
      sub_100051BBC();
      sub_100010A04();
      sub_1000A0944();
      sub_10001CC28();
      sub_1000A0944();
      *(v645 + *(v631 + 44)) = v643;
      sub_10000E7B0();
      sub_10001B350(v646, v647, v648, v631);
      v649 = sub_100021088(&v1234);
      sub_10001B350(v649, v650, v651, v1292);
      sub_1000317A8();
      sub_10003778C();
      sub_1007441CC();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v643);
      if (v728)
      {
        sub_1000180EC(v643, &qword_100CA65E8);
      }

      else
      {
        sub_1000520B0();
        sub_100032960(v434, v652);
        sub_10001F668();
        sub_1000FD16C();
      }

      v653 = v1297;
      v654 = v1187;
      v630 = v1170;
      sub_10001F668();
      sub_1000A0944();
      v655 = *(v353 + 2);
      LODWORD(v1297) = v353[24];
      sub_10003778C();
      sub_100051BBC();
      sub_100003A40(v434);
      v1303 = v655;
      if (v728)
      {
        sub_100037D24();
        sub_1007441CC();
        v656 = sub_1000131C4();
        v658 = sub_100024D10(v656, v657, v653);
        v659 = v434;
        v660 = v658;

        v661 = v1183;
        if (v660 != 1)
        {
          sub_1000180EC(v659, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000ED74();
        sub_1000A0944();

        v661 = v1183;
      }

      sub_1000453E0(&v1266);
      sub_100051BBC();
      v662 = sub_1000201BC();
      sub_1000113D0(v662, v663);
      if (v728)
      {
        sub_10002014C();
        sub_10002CA4C();
        sub_1007441CC();
        sub_100003A40(v630);
        v664 = v1205;
        if (!v728)
        {
          sub_1000180EC(v630, &qword_100CA6638);
        }
      }

      else
      {
        sub_100020AD4();
        sub_1000A0944();
        v664 = v1205;
      }

      sub_100051BBC();
      sub_10000554C(v642);
      if (v728)
      {
        sub_10000CE80();
        sub_1007441CC();
        sub_10000554C(v642);
        v665 = v1196;
        if (!v728)
        {
          sub_1000180EC(v642, &qword_100CA6630);
        }
      }

      else
      {
        sub_100024A2C();
        sub_1000A0944();
        v665 = v1196;
      }

      sub_1000131E8(&v1272);
      sub_100051BBC();
      sub_100003A40(v661);
      if (v728)
      {
        sub_10003C7C0();
        sub_1007441CC();
        sub_100003A40(v661);
        if (!v728)
        {
          sub_1000180EC(v661, &qword_100CA6628);
        }
      }

      else
      {
        sub_100017D0C();
        sub_1000A0944();
      }

      sub_100030224(&v1277);
      sub_100051BBC();
      sub_1000083BC(v654);
      if (v728)
      {
        sub_100069948();
        sub_1007441CC();
        sub_1000083BC(v654);
        v666 = v1302;
        if (!v728)
        {
          sub_1000180EC(v654, &qword_100CA6620);
        }
      }

      else
      {
        sub_100013B94();
        sub_1000A0944();
        v666 = v1302;
      }

      sub_1000C893C(&v1282);
      sub_100051BBC();
      v667 = sub_10000C834();
      sub_1000038B4(v667, v668, v666);
      if (v728)
      {
        sub_10004EA04();
        sub_1007441CC();
        v669 = sub_10000C834();
        sub_1000038B4(v669, v670, v666);
        if (!v728)
        {
          sub_1000180EC(v665, &qword_100CA6618);
        }
      }

      else
      {
        sub_100016E44();
        sub_1000A0944();
      }

      sub_100051BBC();
      sub_10000E7EC(v664);
      if (v728)
      {
        sub_100008DDC();
        sub_10004526C();
        sub_10000E7EC(v664);
        if (!v728)
        {
          sub_1000180EC(v664, &qword_100CA6610);
        }
      }

      else
      {
        sub_100049BB4();
        sub_100040C24();
      }

      sub_10001F668();
      sub_100040CF8();
      sub_100042750();
      sub_100037880();
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      v671 = sub_100021664();
      v673 = v1297;
      v674 = v1268;
      v675 = v1271;
      v676 = v1274;
      v677 = v1277;
      v678 = v1279[0];
      goto LABEL_295;
    case 3u:
      v454 = *v360;
      v455 = sub_10022C350(&unk_100CD8210);
      v456 = *(v360 + *(v455 + 64));
      v457 = v1222;
      v458 = v1233;
      v459 = v1234;
      (*(v1222 + 32))(v1233, v360 + *(v455 + 48), v1234);
      v460 = v1294;
      sub_1000C82BC((v1294 + 16));
      v461 = *(dispatch thunk of SavedLocationsManagerType.savedLocations.getter() + 16);

      if (v454 < v461)
      {
        LODWORD(v1303) = v456;
        v462 = *(v460 + 40);
        sub_1000C82BC((v460 + 16));
        v463 = dispatch thunk of SavedLocationsManagerType.savedLocations.getter();
        v464 = v1166;
        sub_1006AC3CC(v454, v463);

        sub_1000184C0();
        static Logger.automation.getter();
        sub_100020338();
        sub_10003778C();
        sub_1007441CC();
        (*(v457 + 16))(v1161, v458, v459);
        v465 = Logger.logObject.getter();
        v466 = static os_log_type_t.default.getter();
        v1302 = v465;
        if (os_log_type_enabled(v465, v466))
        {
          v467 = swift_slowAlloc();
          v1305 = swift_slowAlloc();
          *v467 = 136315906;
          sub_1000184C0();
          SavedLocation.identifier.getter();
          Location.Identifier.name.getter();
          v469 = v468;
          sub_10000E73C();
          v470(v460, v1283);
          v471 = sub_100040E24();
          v473 = sub_100078694(v471, v469, v472);
          v459 = v1234;

          *(v467 + 4) = v473;
          sub_100014D94();
          sub_100032960(v462, v474);
          *(v467 + 12) = 2048;
          *(v467 + 14) = v454;
          *(v467 + 22) = 2080;
          sub_100744174();
          v475 = dispatch thunk of CustomStringConvertible.description.getter();
          v465 = v476;
          v477 = sub_100078694(v475, v476, &v1305);

          *(v467 + 24) = v477;
          v478 = sub_100040EE8();
          (v465)(v478);
          *(v467 + 32) = 1024;
          v479 = v1303;
          *(v467 + 34) = v1303;
          v480 = v1302;
          _os_log_impl(&_mh_execute_header, v1302, v466, "Navigation to map. location=%s, index=%ld, overlayKind=%s, fullscreen=%{BOOL}d", v467, 0x26u);
          swift_arrayDestroy();
          v458 = v1233;
          sub_100003884();
          v464 = v1166;
          sub_100003884();

          sub_100041038();
          v481(v1165);
        }

        else
        {
          sub_100014D94();
          sub_100032960(v462, v828);
          v829 = sub_100040EE8();
          (v465)(v829);

          sub_100041038();
          v830(v460);
          v479 = v1303;
        }

        v630 = sub_100741854(v464, v458, v479, v1304);
        sub_100014D94();
        sub_100032960(v464, v831);
        (v465)(v458, v459);
        return v630;
      }

      sub_100020250();
      static Logger.automation.getter();
      v679 = Logger.logObject.getter();
      v680 = static os_log_type_t.error.getter();
      v681 = sub_10000C79C(v680);
      v630 = v1304;
      if (v681)
      {
        v682 = sub_10000389C();
        sub_100025054(v682);
        sub_1000133FC(&_mh_execute_header, v683, v684, "Failed to locate location due to index out of boundary");
        sub_100007E54();
      }

      sub_100041038();
      v685(v454);
      (*(v457 + 8))(v458, v459);
      goto LABEL_137;
    case 4u:
      v370 = *(v1220 + 32);
      v371 = v1219;
      v372 = v1221[0];
      v370(v1219, v360, v1221[0]);
      sub_100003934();
      sub_10001B350(v373, v374, v375, v1297);
      v376 = sub_100003BCC(&v1265);
      sub_10001B350(v376, v377, v378, v1298);
      v379 = sub_100003BCC(&v1268);
      sub_10001B350(v379, v380, v381, v1299);
      v382 = sub_100003BCC(&v1271);
      sub_10001B350(v382, v383, v384, v1300);
      v385 = sub_100003BCC(&v1275);
      sub_10001B350(v385, v386, v387, v1301);
      v388 = sub_100003BCC(v1280);
      sub_10001B350(v388, v389, v390, v1302);
      sub_100008DDC();
      v1294 = v391;
      v392 = v1289;
      sub_1007441CC();
      v370(v1176, v371, v372);
      v393 = v1291;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      v397 = sub_1000D3CF4(v394, v395, v396, v393);
      v398 = type metadata accessor for SearchViewState(v397);
      v399 = sub_100003BCC(&v1276);
      sub_10001B350(v399, v400, v401, v398);
      v402 = sub_100003BCC(&v1281);
      sub_10001B350(v402, v403, v404, v1303);
      sub_100021D50(&v1218);
      sub_100003934();
      sub_10001B350(v405, v406, v407, v1295);
      v408 = *v392;
      sub_100020FE8();
      sub_100051BBC();
      sub_100003BFC(v370);
      if (v728)
      {
        v578 = v1293;
        sub_100074EFC();
        sub_1007441CC();
        v409 = sub_10000C834();
        v393 = sub_100024D10(v409, v410, v393);
        v577 = v408;

        v579 = v1217;
        v580 = v1204;
        if (v393 != 1)
        {
          sub_1000180EC(v370, &qword_100CA6608);
        }
      }

      else
      {
        sub_100006694();
        sub_1000A0944();
        v577 = v408;

        v578 = v1293;
        v579 = v1217;
        v580 = v1204;
      }

      LODWORD(v1296) = *(v1289 + v578[6]);
      sub_1000131DC();
      sub_100051BBC();
      sub_100005404(v393);
      if (v728)
      {
        sub_100095588();
        sub_100005404(v393);
        if (!v728)
        {
          sub_1000180EC(v393, &qword_100CA6600);
        }
      }

      else
      {
        sub_100028A84();
        sub_1000131DC();
        sub_1000A0944();
        sub_10000E7B0();
        sub_10001B350(v581, v582, v583, v398);
      }

      sub_1000131DC();
      sub_100051BBC();
      v584 = sub_1000162A4();
      sub_10001627C(v584, v585);
      if (v728)
      {
        sub_100019E38();
        sub_1007441CC();
        sub_100005404(v393);
        if (!v728)
        {
          sub_1000180EC(v393, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100010A04();
        sub_1000A0944();
      }

      sub_100051BBC();
      sub_10001627C(v580, 1);
      if (v728)
      {
        sub_1000049BC();
        v586 = v1289;
        sub_100037814();
        sub_1007441CC();
        sub_100005404(v580);
        if (!v728)
        {
          sub_1000180EC(v580, &qword_100CA65F0);
        }
      }

      else
      {
        sub_10001CC28();
        sub_100037814();
        sub_1000A0944();
        v586 = v1289;
      }

      v587 = *(v586 + v578[11]);
      sub_1000230E0();
      sub_100032960(v586, v588);
      v589 = v1198;
      *v1198 = v577;
      sub_100006694();
      sub_1000A0944();
      *(v589 + v578[6]) = v1296;
      *(v589 + v578[7]) = 1;
      sub_100051BBC();
      sub_100010A04();
      sub_1000A0944();
      sub_10001CC28();
      sub_1000A0944();
      *(v589 + v578[11]) = v587;
      v590 = sub_100007FB4();
      sub_10001B350(v590, v591, v592, v578);
      v593 = v1214[2];
      sub_100003934();
      sub_10001B350(v594, v595, v596, v1292);
      sub_1000317A8();
      v597 = v1304;
      sub_1007441CC();
      sub_10003778C();
      sub_100051BBC();
      sub_10000554C(v593);
      if (v728)
      {
        sub_1000180EC(v593, &qword_100CA65E8);
      }

      else
      {
        sub_1000520B0();
        sub_100032960(v579, v598);
        sub_10001F668();
        sub_1000A0944();
      }

      v599 = v1173;
      sub_10001F668();
      sub_1000A0944();
      v600 = *(v597 + 16);
      LODWORD(v1300) = *(v597 + 24);
      sub_1000B0C38();
      sub_100051BBC();
      v601 = sub_100016298();
      v602 = v1297;
      sub_1000113D0(v601, v603);
      v1303 = v600;
      if (v728)
      {
        sub_100037D24();
        sub_1007441CC();
        v604 = sub_100016298();
        v606 = sub_100024D10(v604, v605, v602);

        v607 = v1181;
        if (v606 != 1)
        {
          sub_1000180EC(v342, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000ED74();
        sub_1000A0944();

        v607 = v1181;
      }

      sub_100021424();
      sub_100051BBC();
      v608 = sub_100016298();
      sub_10001627C(v608, v609);
      if (v728)
      {
        sub_10002014C();
        sub_10002CA4C();
        sub_1007441CC();
        sub_100005404(v342);
        v611 = v1202;
        v612 = v1192;
        v610 = v342;
        v613 = v1186;
        if (!v728)
        {
          sub_1000180EC(v610, &qword_100CA6638);
        }
      }

      else
      {
        sub_100020AD4();
        sub_1000A0944();
        v611 = v1202;
        v612 = v1192;
        v613 = v1186;
      }

      sub_100051BBC();
      v614 = sub_1000175DC();
      sub_100036E54(v614, v615);
      if (v728)
      {
        sub_10000CE80();
        sub_1007441CC();
        sub_100003BFC(v599);
        if (!v728)
        {
          sub_1000180EC(v599, &qword_100CA6630);
        }
      }

      else
      {
        sub_100024A2C();
        sub_1000A0944();
      }

      sub_1000E31B8(&v1271);
      sub_100051BBC();
      sub_10000554C(v607);
      if (v728)
      {
        sub_10003C7C0();
        sub_1007441CC();
        sub_10000554C(v607);
        if (!v728)
        {
          sub_1000180EC(v607, &qword_100CA6628);
        }
      }

      else
      {
        sub_100017D0C();
        sub_1000A0944();
      }

      sub_100052378(&v1275);
      sub_100051BBC();
      v616 = sub_100016298();
      sub_1000038B4(v616, v617, v1301);
      if (v728)
      {
        sub_100069948();
        sub_1007441CC();
        sub_10000554C(v613);
        if (!v728)
        {
          sub_1000180EC(v613, &qword_100CA6620);
        }
      }

      else
      {
        sub_100013B94();
        sub_1000A0944();
      }

      sub_1000436AC(v1280);
      sub_100051BBC();
      sub_10000C814(v612);
      if (v728)
      {
        sub_10004EA04();
        sub_1007441CC();
        sub_10000C814(v612);
        if (!v728)
        {
          sub_1000180EC(v612, &qword_100CA6618);
        }
      }

      else
      {
        sub_100016E44();
        sub_1000A0944();
      }

      sub_100051BBC();
      sub_1000083BC(v611);
      if (v728)
      {
        sub_100008DDC();
        sub_1007441CC();
        sub_1000083BC(v611);
        if (!v728)
        {
          sub_1000180EC(v611, &qword_100CA6610);
        }
      }

      else
      {
        sub_100049BB4();
        sub_1000A0944();
      }

      sub_10001F668();
      v618 = v1290;
      sub_1000A0944();
      v619 = (v597 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v620 = v597;
      v622 = *(v597 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v621 = v619[1];
      v624 = v619[2];
      v623 = v619[3];
      v625 = *(v620 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v627 = *(v620 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v626 = *(v620 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v628 = *(v620 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      LOBYTE(v1091) = v625;
      sub_10003E038(v1303, v1300, v1266, v1269, v1272, v1275, v1278, v1279[1], v1260, v618, v622, v621, v624, v623, v1091, v627, v626, v628, v1093, v1094, v1095, v1096, v1097, v1098, v1099, v1100, v1101, v1102, v1103, v1104, v1105, v1106, v1107, v1108, v1109);
      v630 = v629;

      goto LABEL_296;
    case 5u:
      sub_100003934();
      sub_10001B350(v527, v528, v529, v1297);
      v530 = sub_100003BCC(v1264);
      sub_10001B350(v530, v531, v532, v1298);
      v533 = sub_100003BCC(&v1267);
      sub_10001B350(v533, v534, v535, v1299);
      v536 = sub_100003BCC(&v1270);
      sub_10001B350(v536, v537, v538, v1300);
      v539 = sub_100003BCC(&v1274);
      sub_10001B350(v539, v540, v541, v1301);
      v542 = sub_100003BCC(v1279);
      sub_10001B350(v542, v543, v544, v1302);
      sub_100008DDC();
      v1289 = v545;
      sub_10003805C(v545);
      sub_1000131DC();
      sub_1007441CC();
      type metadata accessor for ListViewState._Storage();
      v546 = swift_allocObject();
      sub_10000E7B0();
      v550 = sub_100042DA8(v547, v548, v549, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0, 0, 1, 0);
      v551 = sub_100021088(&v1196);
      v552 = v1291;
      v555 = sub_1000D3CF4(v551, v553, v554, v1291);
      v556 = type metadata accessor for SearchViewState(v555);
      v557 = sub_100003BCC(&v1273);
      sub_10001B350(v557, v558, v559, v556);
      sub_100021D50(v1209);
      sub_100003934();
      sub_10001B350(v560, v561, v562, v1303);
      v563 = v1199[1];
      sub_100003934();
      sub_10001B350(v564, v565, v566, v1295);
      sub_1000113EC();
      sub_100051BBC();
      sub_10000394C(v546);
      v1296 = v550;
      if (v728)
      {
        v739 = v1293;
        sub_100074EFC();
        sub_1007441CC();
        v552 = sub_100024D10(v546, 1, v552);

        v740 = v1212;
        if (v552 != 1)
        {
          sub_1000180EC(v546, &qword_100CA6608);
        }
      }

      else
      {
        sub_100006694();
        sub_1000A0944();

        v739 = v1293;
        v740 = v1212;
      }

      LODWORD(v1294) = *(v1284 + v739[6]);
      sub_100021424();
      sub_100051BBC();
      sub_100005404(v552);
      v741 = v1304;
      if (v728)
      {
        sub_100095588();
        sub_100005404(v552);
        if (!v728)
        {
          sub_1000180EC(v552, &qword_100CA6600);
        }
      }

      else
      {
        sub_100028A84();
        sub_100021424();
        sub_1000A0944();
        sub_10000E7B0();
        sub_10001B350(v742, v743, v744, v556);
      }

      sub_100037814();
      sub_100051BBC();
      v745 = sub_1000201BC();
      sub_10001627C(v745, v746);
      v747 = v740;
      if (v728)
      {
        sub_100019E38();
        v748 = v1284;
        sub_1007441CC();
        sub_100005404(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
        v749 = v741;
        if (!v728)
        {
          sub_1000180EC(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100010A04();
        sub_1000A0944();
        v748 = v1284;
        v749 = v741;
      }

      sub_1000325C0();
      sub_100051BBC();
      sub_10001627C(v563, 1);
      if (v728)
      {
        sub_1000049BC();
        sub_1007441CC();
        sub_100005404(v563);
        v750 = v1168;
        if (!v728)
        {
          sub_1000180EC(v563, &qword_100CA65F0);
        }
      }

      else
      {
        sub_10001CC28();
        sub_1000A0944();
        v750 = v1168;
      }

      v751 = *(v748 + v739[11]);
      sub_1000230E0();
      sub_100032960(v748, v752);
      v753 = v1197;
      *v1197 = v1296;
      sub_100006694();
      sub_1000A0944();
      *(v753 + v739[6]) = v1294;
      *(v753 + v739[7]) = 0;
      sub_100051BBC();
      sub_100010A04();
      sub_1000A0944();
      sub_10001CC28();
      sub_1000A0944();

      *(v753 + v739[11]) = v751;
      v754 = sub_100007FB4();
      sub_10001B350(v754, v755, v756, v739);
      v757 = v1214[0];
      sub_100003934();
      sub_10001B350(v758, v759, v760, v1292);
      sub_1000317A8();
      sub_1000131DC();
      sub_1007441CC();
      sub_10003778C();
      sub_100051BBC();
      sub_100003A40(v757);
      if (v728)
      {
        sub_1000180EC(v757, &qword_100CA65E8);
      }

      else
      {
        sub_1000520B0();
        sub_100032960(v747, v761);
        sub_10001F668();
        sub_1000A0944();
      }

      v762 = v1188[1];
      sub_10001F668();
      sub_1000A0944();
      v763 = *(v749 + 16);
      LODWORD(v1300) = *(v749 + 24);
      sub_100051BBC();
      v764 = sub_1000175DC();
      v765 = v1297;
      sub_1000038B4(v764, v766, v1297);
      if (v728)
      {
        sub_100037D24();
        sub_1007441CC();
        v767 = sub_1000175DC();
        v769 = sub_100024D10(v767, v768, v765);

        if (v769 != 1)
        {
          sub_1000180EC(v357, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000ED74();
        sub_1000A0944();
      }

      v1303 = v763;
      sub_1000453E0(v1264);
      sub_100051BBC();
      sub_10000394C(v750);
      if (v728)
      {
        sub_10002014C();
        sub_10002CA4C();
        sub_1007441CC();
        sub_10000394C(v750);
        v770 = v1185;
        v771 = v1178;
        v772 = v1172;
        if (!v728)
        {
          sub_1000180EC(v750, &qword_100CA6638);
        }
      }

      else
      {
        sub_100020AD4();
        sub_1000A0944();
        v770 = v1185;
        v771 = v1178;
        v772 = v1172;
      }

      sub_100030224(&v1267);
      sub_100051BBC();
      sub_10000E7EC(v772);
      if (v728)
      {
        sub_10000CE80();
        sub_1007441CC();
        sub_10000E7EC(v772);
        if (!v728)
        {
          sub_1000180EC(v772, &qword_100CA6630);
        }
      }

      else
      {
        sub_100024A2C();
        sub_1000A0944();
      }

      sub_1000C893C(&v1270);
      sub_100051BBC();
      sub_100005404(v771);
      if (v728)
      {
        sub_10003C7C0();
        sub_1007441CC();
        sub_100005404(v771);
        v773 = v1199[0];
        if (!v728)
        {
          sub_1000180EC(v771, &qword_100CA6628);
        }
      }

      else
      {
        sub_100017D0C();
        sub_1000A0944();
        v773 = v1199[0];
      }

      sub_100052378(&v1274);
      sub_100051BBC();
      v774 = sub_100016298();
      sub_1000038B4(v774, v775, v1301);
      if (v728)
      {
        sub_100069948();
        sub_1007441CC();
        sub_10000554C(v770);
        v776 = v1208;
        if (!v728)
        {
          sub_1000180EC(v770, &qword_100CA6620);
        }
      }

      else
      {
        sub_100013B94();
        sub_1000A0944();
        v776 = v1208;
      }

      sub_1000C8B14(v1279);
      sub_100051BBC();
      sub_100003BFC(v762);
      if (v728)
      {
        sub_10004EA04();
        sub_1007441CC();
        sub_100003BFC(v762);
        if (!v728)
        {
          sub_1000180EC(v762, &qword_100CA6618);
        }
      }

      else
      {
        sub_100016E44();
        sub_1000A0944();
      }

      sub_100051BBC();
      sub_10000C814(v773);
      if (v728)
      {
        sub_100008DDC();
        sub_1007441CC();
        sub_10000C814(v773);
        v777 = v776;
        if (!v728)
        {
          sub_1000180EC(v773, &qword_100CA6610);
        }
      }

      else
      {
        sub_100049BB4();
        sub_1000A0944();
        v777 = v776;
      }

      sub_10001F668();
      v778 = v1290;
      sub_1000A0944();
      v779 = (v749 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v780 = v749;
      v782 = *(v749 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v781 = v779[1];
      v784 = v779[2];
      v783 = v779[3];
      v630 = *(v780 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v786 = *(v780 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v785 = *(v780 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v787 = *(v780 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      LOBYTE(v1092) = v630;
      sub_100040DE8(v1303, v1300, v1265, v1267, v1270, v1273, v1276, v788, v777, v778, v782, v781, v784, v783, v1092, v786, v785, v787, v1093, v1094, v1095, v1096, v1097, v1098, v1099, v1100, v1101, v1102, v1103, v1104, v1105, v1106, v1107, v1108, v1109);
      sub_1000B9194();

      goto LABEL_296;
    case 6u:
      sub_1000184C0();
      v567 = v1294;
      sub_10073A0E8(v568);
      v569 = sub_10000C834();
      sub_1000038B4(v569, v570, v1286);
      if (v728)
      {
        goto LABEL_30;
      }

      sub_100087204();
      sub_1000113EC();
      sub_1000A0944();
      sub_100003934();
      sub_10001B350(v789, v790, v791, v1297);
      v792 = sub_100003BCC(v1189);
      sub_10001B350(v792, v793, v794, v1298);
      v795 = sub_100003BCC(v1194);
      sub_10001B350(v795, v796, v797, v1299);
      v798 = sub_100003BCC(v1199);
      sub_10001B350(v798, v799, v800, v1300);
      v801 = sub_100003BCC(&v1205);
      sub_10001B350(v801, v802, v803, v1301);
      v804 = sub_100003BCC(v1210);
      sub_10001B350(v804, v805, v806, v1302);
      sub_100008DDC();
      sub_1000E1404(v807);
      sub_100021424();
      sub_1007441CC();
      sub_1000184C0();
      SavedLocation.identifier.getter();
      sub_100014D94();
      sub_100032960(v567, v808);
      v809 = sub_10000FEF4();
      v812 = sub_1000D3CF4(v809, v810, v811, v1283);
      type metadata accessor for LocationViewerViewState._Storage(v812);
      sub_100003B6C();
      v813 = sub_100071DE8();
      v814 = v1139;
      *v1139 = v813;
      sub_1000C8630();
      v815 = sub_10012CDB0(v814);
      v816 = sub_100003BCC(v1206);
      sub_10001B350(v816, v817, v818, v815);
      v819 = sub_100003BCC(v1213);
      sub_10001B350(v819, v820, v821, v1303);
      v822 = sub_100003BCC(v1221);
      sub_10001B350(v822, v823, v824, v1295);
      v825 = *v342;
      sub_100032590();
      sub_100051BBC();
      sub_100005404(v357);
      if (v826)
      {
        v942 = v1293;
        sub_100074EFC();
        sub_1007441CC();
        sub_1000437F4(v357);
        v827 = v357;
        v943 = v1292;
        v944 = v1151;
        v945 = v1145;
        if (v3 != 1)
        {
          sub_1000180EC(v827, &qword_100CA6608);
        }
      }

      else
      {
        sub_100006694();
        sub_1000A0944();

        v943 = v1292;
        v942 = v1293;
        v944 = v1151;
        v945 = v1145;
      }

      sub_100192424(v942[6]);
      sub_1000131E8(v1206);
      sub_100051BBC();
      sub_100003A40(v945);
      if (v728)
      {
        sub_100095588();
        sub_100003A40(v945);
        if (!v728)
        {
          sub_1000180EC(v945, &qword_100CA6600);
        }
      }

      else
      {
        sub_100028A84();
        sub_1000325C0();
        sub_1000A0944();
        v946 = sub_100007FB4();
        sub_10001B350(v946, v947, v948, v815);
      }

      sub_100052378(v1213);
      sub_100051BBC();
      v949 = sub_100016298();
      v950 = v1303;
      sub_1000113D0(v949, v951);
      if (v728)
      {
        sub_100019E38();
        v952 = v1237;
        sub_1007441CC();
        sub_100003A40(v944);
        if (!v728)
        {
          sub_1000180EC(v944, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100010A04();
        sub_1000A0944();
        v952 = v1237;
      }

      sub_1000113EC();
      sub_100051BBC();
      sub_10000556C(v950);
      if (v728)
      {
        sub_1000049BC();
        sub_1007441CC();
        sub_10000556C(v950);
        if (!v728)
        {
          sub_1000180EC(v950, &qword_100CA65F0);
        }
      }

      else
      {
        sub_10001CC28();
        sub_1000B0C38();
        sub_1000A0944();
      }

      v953 = *(v952 + v942[11]);
      sub_1000230E0();
      sub_100032960(v952, v954);
      v955 = v1201;
      *v1201 = v825;
      sub_100006694();
      sub_1000A0944();
      *(v955 + v942[6]) = v1296;
      *(v955 + v942[7]) = 1;
      sub_100051BBC();
      sub_100010A04();
      sub_1000A0944();
      sub_10001CC28();
      sub_1000A0944();
      *(v955 + v942[11]) = v953;
      sub_10000E7B0();
      sub_10001B350(v956, v957, v958, v942);
      v959 = sub_100021088(v1177);
      sub_10001B350(v959, v960, v961, v943);
      sub_1000317A8();
      sub_100020FE8();
      sub_1007441CC();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000E7EC(v953);
      if (v728)
      {
        sub_1000180EC(v953, &qword_100CA65E8);
      }

      else
      {
        sub_1000520B0();
        sub_100032960(v825, v962);
        sub_10001F668();
        sub_1000A0944();
      }

      v963 = v1297;
      v964 = v1144;
      v965 = v1140;
      v966 = v1136;
      sub_10001F668();
      sub_1000A0944();
      v967 = *(v353 + 2);
      LODWORD(v1297) = v353[24];
      sub_1000519E0();
      sub_100051BBC();
      sub_100003A40(v349);
      v1303 = v967;
      if (v728)
      {
        sub_100037D24();
        sub_1007441CC();
        v968 = sub_100007FC4();
        v970 = sub_100024D10(v968, v969, v963);

        v971 = v1149;
        if (v970 != 1)
        {
          sub_1000180EC(v349, &qword_100CA6640);
        }
      }

      else
      {
        sub_10000ED74();
        sub_1000A0944();

        v971 = v1149;
      }

      sub_1000453E0(v1189);
      sub_100051BBC();
      v972 = sub_1000201BC();
      v973 = v1298;
      sub_1000038B4(v972, v974, v1298);
      if (v728)
      {
        sub_10002014C();
        sub_10002CA4C();
        sub_1007441CC();
        sub_1000083BC(v966);
        if (!v728)
        {
          sub_1000180EC(v966, &qword_100CA6638);
        }
      }

      else
      {
        sub_100020AD4();
        sub_1000A0944();
      }

      sub_1000519E0();
      sub_100051BBC();
      v975 = sub_100007FC4();
      v630 = v1299;
      sub_1000038B4(v975, v976, v1299);
      if (v728)
      {
        sub_10000CE80();
        sub_1007441CC();
        sub_10000556C(v973);
        if (!v728)
        {
          sub_1000180EC(v973, &qword_100CA6630);
        }
      }

      else
      {
        sub_100024A2C();
        sub_1000A0944();
      }

      sub_1000131E8(v1199);
      sub_100051BBC();
      sub_100005404(v965);
      if (v728)
      {
        sub_10003C7C0();
        sub_1007441CC();
        sub_100005404(v965);
        v977 = v1154;
        if (!v728)
        {
          sub_1000180EC(v965, &qword_100CA6628);
        }
      }

      else
      {
        sub_100017D0C();
        sub_1000A0944();
        v977 = v1154;
      }

      sub_100052378(&v1205);
      sub_100051BBC();
      sub_10000E7EC(v964);
      if (v728)
      {
        sub_100069948();
        sub_1007441CC();
        sub_10000E7EC(v964);
        if (!v728)
        {
          sub_1000180EC(v964, &qword_100CA6620);
        }
      }

      else
      {
        sub_100013B94();
        sub_1000A0944();
      }

      sub_1000C893C(v1210);
      sub_100051BBC();
      sub_100003A40(v971);
      if (v728)
      {
        sub_10004EA04();
        sub_1007441CC();
        sub_100003A40(v971);
        if (!v728)
        {
          sub_1000180EC(v971, &qword_100CA6618);
        }
      }

      else
      {
        sub_100016E44();
        sub_1000A0944();
      }

      sub_1000436AC(&v1217);
      sub_100051BBC();
      sub_100003BFC(v977);
      if (v728)
      {
        sub_100008DDC();
        sub_10004526C();
        sub_100003BFC(v977);
        if (!v728)
        {
          sub_1000180EC(v977, &qword_100CA6610);
        }
      }

      else
      {
        sub_100049BB4();
        sub_100040C24();
      }

      sub_10001F668();
      sub_100040CF8();
      sub_100042750();
      sub_100037880();
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      v671 = sub_100021664();
      v673 = v1297;
      v674 = v1223;
      v675 = v1225;
      v676 = v1227;
      v677 = v1229;
      v678 = v1231;
LABEL_295:
      sub_100040DE8(v671, v673, v674, v675, v676, v677, v678, v672, v1093, v1094, v1095, v1096, v1097, v1098, v1099, v1100, v1101, v1102, v1103, *(&v1103 + 1), v1104, v1105, v1106, v1107, v1108, v1109, v1110, v1111, v1112, v1113, v1114, v1115, v1116, v1117, v1118);
      sub_1000B9194();

LABEL_296:

      return v630;
    case 7u:
      sub_1000184C0();
      sub_10073A0E8(v482);
      v483 = sub_10000C834();
      sub_1000038B4(v483, v484, v1286);
      if (!v728)
      {
        sub_100087204();
        sub_1000113EC();
        sub_1000A0944();
        v686 = sub_100003BCC(v1255);
        sub_10001B350(v686, v687, v688, v1297);
        v689 = sub_100003BCC(v1256);
        sub_10001B350(v689, v690, v691, v1298);
        v692 = sub_100003BCC(v1257);
        sub_10001B350(v692, v693, v694, v1299);
        v695 = sub_100003BCC(v1258);
        sub_10001B350(v695, v696, v697, v1300);
        v698 = sub_100003BCC(v1259);
        sub_10001B350(v698, v699, v700, v1301);
        v701 = sub_100003BCC(&v1260);
        sub_10001B350(v701, v702, v703, v1302);
        sub_100008DDC();
        sub_1000E1404(v704);
        sub_100021424();
        sub_1007441CC();
        sub_1000184C0();
        SavedLocation.identifier.getter();
        v705 = sub_10000FEF4();
        v708 = sub_1000D3CF4(v705, v706, v707, v1283);
        type metadata accessor for LocationViewerViewState._Storage(v708);
        sub_100003B6C();
        v709 = sub_100071DE8();
        v710 = v1182;
        *v1182 = v709;
        sub_1000C8630();
        v711 = sub_10012CDB0(v710);
        sub_100003934();
        sub_10001B350(v712, v713, v714, v711);
        v715 = sub_100003BCC(v1214);
        sub_10001B350(v715, v716, v717, v1303);
        sub_100003934();
        sub_10001B350(v718, v719, v720, v1295);
        v721 = *v342;
        sub_1000325C0();
        sub_100095588();
        sub_100005404(v338);
        if (v722)
        {
          v832 = v1293;
          sub_100074EFC();
          sub_1007441CC();
          sub_1000437F4(v338);
          v833 = v1152;
          v723 = v338;
          v834 = v1147;
          if (v3 != 1)
          {
            sub_1000180EC(v723, &qword_100CA6608);
          }
        }

        else
        {
          sub_100006694();
          sub_1000A0944();

          v832 = v1293;
          v833 = v1152;
          v834 = v1147;
        }

        sub_100192424(v832[6]);
        sub_1000180EC(v1182, &qword_100CA6608);
        sub_100051BBC();
        sub_100003A40(v834);
        if (v728)
        {
          sub_100095588();
          sub_100003A40(v834);
          if (!v728)
          {
            sub_1000180EC(v834, &qword_100CA6600);
          }
        }

        else
        {
          sub_100028A84();
          sub_1000325C0();
          sub_1000A0944();
          v835 = sub_100007FB4();
          sub_10001B350(v835, v836, v837, v711);
        }

        sub_100052378(v1214);
        sub_100051BBC();
        v838 = sub_100016298();
        v839 = v1303;
        sub_1000113D0(v838, v840);
        if (v728)
        {
          sub_100019E38();
          v841 = v1238;
          sub_1007441CC();
          sub_100003A40(v833);
          if (!v728)
          {
            sub_1000180EC(v833, &qword_100CA65F8);
          }
        }

        else
        {
          sub_100010A04();
          sub_1000A0944();
          v841 = v1238;
        }

        sub_1000113EC();
        sub_100051BBC();
        sub_10000556C(v839);
        if (v728)
        {
          sub_1000049BC();
          sub_1007441CC();
          sub_10000556C(v839);
          v630 = v1135;
          if (!v728)
          {
            sub_1000180EC(v839, &qword_100CA65F0);
          }
        }

        else
        {
          sub_10001CC28();
          sub_1000B0C38();
          sub_1000A0944();
          v630 = v1135;
        }

        v842 = *(v841 + v832[11]);
        sub_1000230E0();
        sub_100032960(v841, v843);
        v844 = v1246;
        *v1246 = v721;
        sub_100006694();
        sub_1000A0944();
        *(v844 + v832[6]) = v1296;
        *(v844 + v832[7]) = 1;
        sub_100051BBC();
        sub_100010A04();
        sub_1000A0944();
        sub_10001CC28();
        sub_1000A0944();
        *(v844 + v832[11]) = v842;
        sub_10000E7B0();
        sub_10001B350(v845, v846, v847, v832);
        v848 = sub_100021088(&v1247);
        sub_10001B350(v848, v849, v850, v1292);
        sub_1000317A8();
        sub_10003778C();
        sub_1007441CC();
        sub_1000113EC();
        sub_100095588();
        sub_10000554C(v842);
        if (v728)
        {
          sub_1000180EC(v842, &qword_100CA65E8);
        }

        else
        {
          sub_1000520B0();
          sub_100032960(v3, v851);
          sub_10001F668();
          sub_1000FD16C();
        }

        v852 = v1297;
        v853 = v1150;
        v854 = v1146;
        v855 = v1141;
        v856 = v1138;
        sub_10001F668();
        sub_1000A0944();
        v857 = *(v353 + 2);
        LODWORD(v1297) = v353[24];
        sub_1000453E0(v1255);
        sub_100095588();
        sub_100003A40(v630);
        v1303 = v857;
        if (v728)
        {
          sub_100037D24();
          sub_1007441CC();
          v858 = sub_1000201BC();
          v860 = sub_100024D10(v858, v859, v852);

          v728 = v860 == 1;
          v861 = v1137;
          if (!v728)
          {
            sub_1000180EC(v630, &qword_100CA6640);
          }
        }

        else
        {
          sub_10000ED74();
          sub_1000A0944();

          v861 = v1137;
        }

        sub_1000436AC(v1256);
        sub_100095588();
        v862 = sub_1000131C4();
        sub_1000113D0(v862, v863);
        if (v728)
        {
          v630 = v861;
          sub_10002014C();
          sub_10002CA4C();
          sub_1007441CC();
          sub_100003A40(v861);
          v864 = v1156;
          if (!v728)
          {
            sub_1000180EC(v630, &qword_100CA6638);
          }
        }

        else
        {
          sub_100020AD4();
          sub_1000A0944();
          v864 = v1156;
        }

        sub_1000131E8(v1257);
        sub_100095588();
        sub_1000083BC(v856);
        if (v728)
        {
          sub_10000CE80();
          sub_1007441CC();
          sub_1000083BC(v856);
          if (!v728)
          {
            sub_1000180EC(v856, &qword_100CA6630);
          }
        }

        else
        {
          sub_100024A2C();
          sub_1000A0944();
        }

        sub_100030224(v1258);
        sub_100095588();
        sub_100003A40(v855);
        if (v728)
        {
          sub_10003C7C0();
          sub_1007441CC();
          sub_100003A40(v855);
          if (!v728)
          {
            sub_1000180EC(v855, &qword_100CA6628);
          }
        }

        else
        {
          sub_100017D0C();
          sub_1000A0944();
        }

        sub_100052378(v1259);
        sub_100095588();
        v865 = sub_100016298();
        sub_100036E54(v865, v866);
        if (v728)
        {
          sub_100069948();
          sub_1007441CC();
          sub_100003BFC(v854);
          if (!v728)
          {
            sub_1000180EC(v854, &qword_100CA6620);
          }
        }

        else
        {
          sub_100013B94();
          sub_1000A0944();
        }

        sub_1000C893C(&v1260);
        sub_100095588();
        v867 = sub_10000C834();
        sub_1000038B4(v867, v868, v1302);
        if (v728)
        {
          sub_10004EA04();
          sub_1007441CC();
          sub_10000394C(v853);
          if (!v728)
          {
            sub_1000180EC(v853, &qword_100CA6618);
          }
        }

        else
        {
          sub_100016E44();
          sub_1000A0944();
        }

        sub_1000436AC(v1262);
        sub_100095588();
        sub_10000E7EC(v864);
        if (v728)
        {
          sub_100008DDC();
          sub_10004526C();
          sub_10000E7EC(v864);
          if (!v728)
          {
            sub_1000180EC(v864, &qword_100CA6610);
          }
        }

        else
        {
          sub_100049BB4();
          sub_100040C24();
        }

        sub_10001F668();
        sub_100040CF8();
        sub_100042750();
        sub_100037880();
        type metadata accessor for MainState._Storage(0);
        sub_100003B6C();
        v869 = sub_100021664();
        sub_100040DE8(v869, v1297, v1224, v1226, v1228, v1230, v1232, v870, v1093, v1094, v1095, v1096, v1097, v1098, v1099, v1100, v1101, v1102, v1103, *(&v1103 + 1), v1104, v1105, v1106, v1107, v1108, v1109, v1110, v1111, v1112, v1113, v1114, v1115, v1116, v1117, v1118);
        sub_1000B9194();

        sub_1000180EC(v1221[1], &qword_100CA65E8);
        sub_1000180EC(v1246, &qword_100CA6610);
        sub_1000180EC(v1244, &qword_100CA6618);
        sub_1000180EC(v1243, &qword_100CA6620);
        sub_1000180EC(v1241, &qword_100CA6628);
        sub_1000180EC(v1240, &qword_100CA6630);
        sub_1000180EC(v1239, &qword_100CA6638);
        sub_1000180EC(v1236, &qword_100CA6640);
        sub_100014D94();
        v872 = &v1252;
LABEL_250:
        sub_100032960(*(v872 - 32), v871);
        return v630;
      }

LABEL_30:
      sub_1000180EC(v2, &qword_100CA6890);
      sub_100020250();
      static Logger.automation.getter();
      v571 = Logger.logObject.getter();
      v572 = static os_log_type_t.error.getter();
      if (sub_10000C79C(v572))
      {
        v573 = sub_10000389C();
        sub_100025054(v573);
        v576 = "Failed to find new york location";
LABEL_134:
        sub_1000133FC(&_mh_execute_header, v574, v575, v576);
        sub_100007E54();
      }

LABEL_135:

      sub_100041038();
      v738(v342);
      goto LABEL_136;
    default:
      sub_100020250();
      v362 = v1248;
      v363 = v1235;
      (*(v361 + 32))(v1248, v360, v1235);
      v364 = v1216;
      sub_10073A0E8(v1216);
      v365 = sub_1000162A4();
      sub_1000038B4(v365, v366, v1286);
      if (v728)
      {
        sub_1000180EC(v364, &qword_100CA6890);
        v2 = v1218;
        sub_100003934();
        sub_10001B350(v367, v368, v369, v1281);
      }

      else
      {
        sub_1000184C0();
        SavedLocation.location.getter();
        sub_100014D94();
        sub_100032960(v364, v724);
        v725 = sub_10000C834();
        v726 = v1281;
        sub_100036E54(v725, v727);
        if (!v728)
        {
          v876 = v1249;
          v877 = v1163;
          (*(v1249 + 32))(v1163, v2, v726);
          v878 = objc_opt_self();
          v879 = [v878 currentDevice];
          v880 = [v879 userInterfaceIdiom];

          if (v880)
          {
            v881 = sub_100003BCC(&v1152);
            sub_10001B350(v881, v882, v883, v1297);
            v884 = sub_100003BCC(v1153);
            sub_10001B350(v884, v885, v886, v1298);
            v887 = sub_100003BCC(&v1154);
            sub_10001B350(v887, v888, v889, v1299);
            v890 = sub_100003BCC(v1155);
            sub_10001B350(v890, v891, v892, v1300);
            v893 = sub_100003BCC(&v1156);
            sub_10001B350(v893, v894, v895, v1301);
            v896 = sub_100003BCC(v1157);
            sub_10001B350(v896, v897, v898, v1302);
            sub_100008DDC();
            sub_10003805C(v899);
            sub_1000131DC();
            sub_1007441CC();
            sub_1000184C0();
            Location.identifier.getter();
            v900 = sub_10000FEF4();
            v903 = sub_1000D3CF4(v900, v901, v902, v1283);
            type metadata accessor for LocationViewerViewState._Storage(v903);
            sub_100003B6C();
            v904 = sub_100071DE8();
            sub_1000B7BD8(v904, v1142);
            sub_1000C8630();
            v905 = sub_10012CDB0(v353);
            v906 = sub_100003BCC(v1158);
            sub_10001B350(v906, v907, v908, v905);
            v909 = sub_100003BCC(v1159);
            sub_10001B350(v909, v910, v911, v1303);
            v912 = sub_100003BCC(v1160);
            v913 = v1295;
            sub_10001B350(v912, v914, v915, v1295);
            v916 = *v726;
            sub_100032590();
            sub_100095588();
            sub_100005404(v876);
            if (v728)
            {
              v1017 = v1293;
              sub_100074EFC();
              sub_1000325C0();
              sub_1007441CC();
              sub_1000437F4(v876);
              if (v3 != 1)
              {
                sub_1000180EC(v876, &qword_100CA6608);
              }
            }

            else
            {
              sub_100006694();
              sub_1000325C0();
              sub_1000A0944();

              v1017 = v1293;
            }

            LODWORD(v1302) = *(v726 + v1017[6]);
            v1018 = [v878 currentDevice];
            v1019 = [v1018 userInterfaceIdiom];

            if (v1019 && *(v726 + v1017[9] + 8) == 2)
            {
              v1020 = 1;
            }

            else
            {
              v1020 = *(v726 + v1017[7]);
            }

            LODWORD(v1301) = v1020;
            v1021 = v1104;
            sub_1000436AC(v1158);
            sub_100095588();
            sub_100003A40(v1021);
            v1022 = v1105;
            if (v728)
            {
              sub_100095588();
              sub_100003A40(v1021);
              if (!v728)
              {
                sub_1000180EC(v1021, &qword_100CA6600);
              }
            }

            else
            {
              sub_100028A84();
              sub_1000131DC();
              sub_1000A0944();
              v726 = v1116;
              v353 = v1117;
              sub_10000E7B0();
              sub_10001B350(v1023, v1024, v1025, v905);
            }

            sub_100052378(v1159);
            sub_100095588();
            v1026 = sub_100016298();
            v1027 = v1303;
            sub_1000113D0(v1026, v1028);
            if (v728)
            {
              sub_100019E38();
              sub_1007441CC();
              sub_100003A40(v1022);
              if (!v728)
              {
                sub_1000180EC(v1022, &qword_100CA65F8);
              }
            }

            else
            {
              sub_100010A04();
              sub_1000A0944();
            }

            sub_1000113EC();
            sub_100095588();
            sub_10000556C(v1027);
            if (v728)
            {
              sub_1000049BC();
              sub_10003778C();
              sub_1007441CC();
              sub_1000038B4(v1027, 1, v913);
              if (!v728)
              {
                sub_1000180EC(v1027, &qword_100CA65F0);
              }
            }

            else
            {
              sub_10001CC28();
              sub_100037814();
              sub_1000A0944();
            }

            v1029 = *(v726 + v1017[11]);
            v1030 = v726;
            v1031 = *(&v1103 + 1);
            **(&v1103 + 1) = v916;
            sub_100006694();
            sub_1000A0944();
            *(v1031 + v1017[6]) = v1302;
            *(v1031 + v1017[7]) = v1301;
            sub_100051BBC();
            sub_100010A04();
            sub_1000A0944();
            sub_10001CC28();
            sub_1000A0944();
            *(v1031 + v1017[11]) = v1029;
            sub_1000180EC(v1134, &qword_100CA65F0);
            sub_1000180EC(v1133, &qword_100CA65F8);
            v1032 = sub_1000C893C(v1158);
            sub_1000180EC(v1032, v1033);
            sub_1000180EC(v353, &qword_100CA6608);
            sub_1000230E0();
            sub_100032960(v1030, v1034);
            sub_10000E7B0();
            sub_10001B350(v1035, v1036, v1037, v1017);
            v1038 = v1162;
            (*(v1250 + 16))(v1162, v1248, v1235);
            v1039 = type metadata accessor for ConditionDetailViewState();
            v1040 = v1249;
            (*(v1249 + 16))(v1038 + v1039[5], v1163, v1281);
            type metadata accessor for Date();
            sub_100003934();
            sub_10001B350(v1041, v1042, v1043, v1044);
            type metadata accessor for DetailChartSelection();
            sub_100003934();
            sub_10001B350(v1045, v1046, v1047, v1048);
            v1049 = v1038 + v1039[7];
            *v1049 = 0u;
            *(v1049 + 16) = 0u;
            *(v1049 + 32) = 1;
            *(v1038 + v1039[9]) = 0;
            type metadata accessor for ModalViewState.LocationDetailModal(0);
            swift_storeEnumTagMultiPayload();
            v1050 = v1292;
            swift_storeEnumTagMultiPayload();
            v1051 = sub_100007FB4();
            sub_10001B350(v1051, v1052, v1053, v1050);
            sub_1000E5A2C();
            v1054 = v1127;
            v1055 = v1128;
            v1056 = v1129;
            v1057 = v1130;
            v1058 = v1131;
            v1059 = v1132;
            v630 = sub_1000D2C20(0, 3u, v1127, v1128, v1129, v1130, v1131, v1132, v1031, v1038, v1095, v1096, v1097, v1098, v1099, v1100, v1101, v1102, v1103);
            sub_1000180EC(v1038, &qword_100CA65E8);
            sub_1000180EC(v1031, &qword_100CA6610);
            sub_1000180EC(v1059, &qword_100CA6618);
            sub_1000180EC(v1058, &qword_100CA6620);
            sub_1000180EC(v1057, &qword_100CA6628);
            sub_1000180EC(v1056, &qword_100CA6630);
            sub_1000180EC(v1055, &qword_100CA6638);
            sub_1000180EC(v1054, &qword_100CA6640);
            (*(v1040 + 8))(v1163, v1281);
          }

          else
          {
            v979 = sub_100003BCC(&v1145);
            sub_10001B350(v979, v980, v981, v1297);
            v982 = sub_100003BCC(&v1146);
            sub_10001B350(v982, v983, v984, v1298);
            v985 = sub_100003BCC(&v1147);
            sub_10001B350(v985, v986, v987, v1299);
            v988 = sub_100003BCC(v1148);
            sub_10001B350(v988, v989, v990, v1300);
            v991 = sub_100003BCC(&v1149);
            sub_10001B350(v991, v992, v993, v1301);
            v994 = sub_100003BCC(&v1150);
            sub_10001B350(v994, v995, v996, v1302);
            v997 = sub_100003BCC(&v1151);
            sub_10001B350(v997, v998, v999, v1293);
            v1000 = v1110;
            (*(v1250 + 16))(v1110, v1248, v363);
            v1001 = type metadata accessor for ConditionDetailViewState();
            (*(v876 + 16))(v1000 + v1001[5], v877, v726);
            type metadata accessor for Date();
            sub_100003934();
            sub_10001B350(v1002, v1003, v1004, v1005);
            v1006 = v1001[8];
            type metadata accessor for DetailChartSelection();
            sub_100003934();
            sub_10001B350(v1007, v1008, v1009, v1010);
            v1011 = v1000 + v1001[7];
            *v1011 = 0u;
            *(v1011 + 16) = 0u;
            *(v1011 + 32) = 1;
            *(v1000 + v1001[9]) = 0;
            type metadata accessor for ModalViewState.LocationDetailModal(0);
            swift_storeEnumTagMultiPayload();
            v1012 = v1292;
            swift_storeEnumTagMultiPayload();
            sub_10000E7B0();
            sub_10001B350(v1013, v1014, v1015, v1012);
            sub_1000317A8();
            sub_10003805C(v1016);
            sub_100021424();
            sub_1007441CC();
            sub_1000113EC();
            sub_100095588();
            sub_10000554C(v1000);
            if (v728)
            {
              sub_1000180EC(v1000, &qword_100CA65E8);
            }

            else
            {
              sub_1000520B0();
              sub_100032960(v1006, v1060);
              sub_10001F668();
              sub_1000B0C38();
              sub_1000A0944();
            }

            v1061 = v1097;
            v1062 = v1094;
            sub_10001F668();
            sub_1000A0944();
            v1063 = *(v1304 + 16);
            LODWORD(v1296) = *(v1304 + 24);
            sub_1000E31B8(&v1145);
            sub_100095588();
            v1064 = sub_1000182B8();
            v1065 = v1297;
            sub_1000113D0(v1064, v1066);
            if (v728)
            {
              sub_100037D24();
              sub_1007441CC();
              v1067 = sub_1000182B8();
              v1069 = sub_100024D10(v1067, v1068, v1065);

              if (v1069 != 1)
              {
                sub_1000180EC(v353, &qword_100CA6640);
              }
            }

            else
            {
              sub_10000ED74();
              sub_1000A0944();
            }

            sub_1000436AC(&v1146);
            sub_100095588();
            v1070 = sub_1000131C4();
            sub_1000113D0(v1070, v1071);
            if (v728)
            {
              sub_10002014C();
              sub_10002CA4C();
              sub_1007441CC();
              sub_100003A40(v3);
              v1072 = v1098;
              v1073 = v1095;
              if (!v728)
              {
                sub_1000180EC(v3, &qword_100CA6638);
              }
            }

            else
            {
              sub_100020AD4();
              sub_1000A0944();
              v1072 = v1098;
              v1073 = v1095;
            }

            sub_1000131E8(&v1147);
            sub_100095588();
            sub_1000113D0(v1062, 1);
            if (v728)
            {
              sub_10000CE80();
              sub_10003805C(v1074);
              sub_1007441CC();
              sub_100003A40(v1062);
              v1075 = v1096;
              if (!v728)
              {
                sub_1000180EC(v1062, &qword_100CA6630);
              }
            }

            else
            {
              sub_100024A2C();
              sub_1000A0944();
              v1075 = v1096;
            }

            sub_1000E31B8(v1148);
            sub_100095588();
            sub_100003A40(v1073);
            if (v728)
            {
              sub_10003C7C0();
              sub_10003805C(v1076);
              sub_1007441CC();
              sub_100003A40(v1073);
              v1077 = v1301;
              if (!v728)
              {
                sub_1000180EC(v1073, &qword_100CA6628);
              }
            }

            else
            {
              sub_100017D0C();
              sub_1000A0944();
              v1077 = v1301;
            }

            sub_1000436AC(&v1149);
            sub_100095588();
            v1078 = sub_1000131C4();
            sub_1000038B4(v1078, v1079, v1077);
            if (v728)
            {
              sub_100069948();
              sub_10003805C(v1080);
              sub_1007441CC();
              v1081 = sub_1000131C4();
              sub_1000038B4(v1081, v1082, v1077);
              if (!v728)
              {
                sub_1000180EC(v1075, &qword_100CA6620);
              }
            }

            else
            {
              sub_100013B94();
              sub_1000A0944();
            }

            sub_1000C893C(&v1150);
            sub_100095588();
            sub_100003A40(v1061);
            if (v728)
            {
              sub_10004EA04();
              sub_10003805C(v1083);
              sub_1007441CC();
              sub_100003A40(v1061);
              if (!v728)
              {
                sub_1000180EC(v1061, &qword_100CA6618);
              }
            }

            else
            {
              sub_100016E44();
              sub_1000A0944();
            }

            sub_100030224(&v1151);
            sub_100095588();
            v1084 = sub_1000162A4();
            sub_1000113D0(v1084, v1085);
            v1303 = v1063;
            if (v728)
            {
              sub_100008DDC();
              v1086 = v1304;
              sub_1007441CC();
              sub_100003A40(v1072);
              if (!v728)
              {
                sub_1000180EC(v1072, &qword_100CA6610);
              }
            }

            else
            {
              sub_100049BB4();
              sub_1000A0944();
              v1086 = v1304;
            }

            sub_10001F668();
            sub_1000A0944();
            v630 = *(v1086 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
            type metadata accessor for MainState._Storage(0);
            sub_100003B6C();
            v1087 = sub_100021664();
            sub_100040DE8(v1087, v1296, v1111, v1112, *(&v1112 + 1), v1113, v1114, v1088, v1093, v1094, v1095, v1096, v1097, v1098, v1099, v1100, v1101, v1102, v1103, *(&v1103 + 1), v1104, v1105, v1106, v1107, v1108, v1109, v1110, v1111, v1112, v1113, v1114, v1115, v1116, v1117, v1118);
            sub_1000B9194();

            sub_1000180EC(v1110, &qword_100CA65E8);
            sub_1000180EC(v1126, &qword_100CA6610);
            sub_1000180EC(v1125, &qword_100CA6618);
            sub_1000180EC(v1124, &qword_100CA6620);
            sub_1000180EC(v1123, &qword_100CA6628);
            sub_1000180EC(v1122, &qword_100CA6630);
            sub_1000180EC(v1121, &qword_100CA6638);
            sub_1000180EC(v1120, &qword_100CA6640);
            sub_10000E73C();
            v1089(v1163, v1281);
          }

          sub_10000E73C();
          v1090(v1248, v1235);
          return v630;
        }
      }

      sub_1000180EC(v2, &qword_100CA65D8);
      v729 = v1164;
      static Logger.automation.getter();
      v730 = Logger.logObject.getter();
      v731 = static os_log_type_t.error.getter();
      if (sub_10000C79C(v731))
      {
        v732 = sub_10000389C();
        sub_100025054(v732);
        sub_1000133FC(&_mh_execute_header, v733, v734, "Failed to find New York location");
        sub_100007E54();
      }

      sub_100041038();
      v735(v729);
      v342[1](v362, v363);
LABEL_136:
      v630 = v1304;
LABEL_137:

      return v630;
  }
}