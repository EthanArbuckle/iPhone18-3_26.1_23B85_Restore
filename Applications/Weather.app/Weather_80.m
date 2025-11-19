void sub_10087CFF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v7 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v7 - 8);
  v82 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v72 - v10;
  v79 = type metadata accessor for Date();
  v75 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v72 - v14;
  v16 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v16 - 8);
  v18 = &v72 - v17;
  v77 = type metadata accessor for CurrentWeather();
  v81 = *(v77 - 8);
  __chkstk_darwin(v77);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v80 = &v72 - v22;
  v23 = type metadata accessor for BannerStateComputer();
  v76 = *(v4 + *(v23 + 20));
  v24 = *(v76 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v25 = a1;
  sub_1000864C0(a1, a2, v24);

  v26 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v15, 1, v26) == 1)
  {
    v27 = &qword_100CA37B0;
    v28 = v15;
    goto LABEL_5;
  }

  sub_1001A0D3C();
  sub_100053318(v15, type metadata accessor for LocationWeatherDataState);
  v29 = type metadata accessor for WeatherData(0);
  if (sub_100024D10(v18, 1, v29) == 1)
  {
    v27 = &qword_100CA3898;
    v28 = v18;
LABEL_5:
    sub_1000180EC(v28, v27);
    if (*(v4 + *(v23 + 28)) == 1)
    {
      if (qword_100CA2790 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_10000703C(v30, qword_100D90D08);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v83[0] = v34;
        *v33 = 141558275;
        *(v33 + 4) = 1752392040;
        *(v33 + 12) = 2081;
        *(v33 + 14) = sub_100078694(a1, a2, v83);
        _os_log_impl(&_mh_execute_header, v31, v32, "Removing banner (failed loading new data, no data in cache - modal takes precedence). ID=%{private,mask.hash}s", v33, 0x16u);
        sub_100006F14(v34);
      }

      v35 = type metadata accessor for ContentStatusBanner();
      sub_10001B350(v82, 1, 1, v35);

      sub_1000B8080();
    }

    goto LABEL_33;
  }

  WeatherDataModel.currentWeather.getter();
  sub_100053318(v18, type metadata accessor for WeatherData);
  v36 = v77;
  (*(v81 + 32))(v80, v20, v77);
  v37 = v78;
  CurrentWeather.date.getter();
  if (static Location.currentLocationID.getter() == v25 && v38 == a2)
  {

    goto LABEL_26;
  }

  v40 = v25;
  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
LABEL_26:
    sub_10087DAC0(v74);
    (*(v75 + 8))(v37, v79);
    (*(v81 + 8))(v80, v36);
    goto LABEL_33;
  }

  if (*(v4 + *(v23 + 28)) == 1)
  {
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000703C(v42, qword_100D90D08);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    v45 = os_log_type_enabled(v43, v44);
    v73 = v25;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v83[0] = v47;
      *v46 = 141558275;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      *(v46 + 14) = sub_100078694(v25, a2, v83);
      _os_log_impl(&_mh_execute_header, v43, v44, "Showing no connection banner (failed loading new data while offline). ID=%{private,mask.hash}s", v46, 0x16u);
      sub_100006F14(v47);
    }

    v48 = v76 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    if (*(v48 + *(type metadata accessor for EnvironmentState() + 68)))
    {
      v49 = 2;
    }

    else
    {
      v49 = 1;
    }

    v50 = type metadata accessor for ContentStatusBanner();
    v51 = *(v50 + 24);
    v52 = v75;
    v53 = v78;
    v54 = v79;
    (*(v75 + 16))(&v11[v51], v78, v79);
    sub_10001B350(&v11[v51], 0, 1, v54);
    *v11 = v49;
    *(v11 + 1) = v73;
    *(v11 + 2) = a2;
    sub_10001B350(v11, 0, 1, v50);
    swift_bridgeObjectRetain_n();
    sub_1000B8080();
    (*(v52 + 8))(v53, v54);
  }

  else
  {
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_10000703C(v55, qword_100D90D08);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v83[0] = v59;
      *v58 = 141558275;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      *(v58 + 14) = sub_100078694(v25, a2, v83);
      _os_log_impl(&_mh_execute_header, v56, v57, "Showing weather unavailable banner (failed loading new data while presenting data). ID=%{private,mask.hash}s", v58, 0x16u);
      sub_100006F14(v59);
    }

    v60 = type metadata accessor for ContentStatusBanner();
    v61 = *(v60 + 24);
    v62 = v75;
    v63 = v82;
    v65 = v78;
    v64 = v79;
    (*(v75 + 16))(v82 + v61, v78, v79);
    sub_10001B350(v63 + v61, 0, 1, v64);
    *v63 = 0;
    *(v63 + 8) = v40;
    *(v63 + 16) = a2;
    sub_10001B350(v63, 0, 1, v60);
    swift_bridgeObjectRetain_n();
    sub_1000B8080();
    (*(v62 + 8))(v65, v64);
  }

  (*(v81 + 8))(v80, v77);
LABEL_33:
  if (*(v4 + *(v23 + 28)) & 1) == 0 && (sub_100183848())
  {
    v66 = v76 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
    v67 = type metadata accessor for ViewState(0);
    if (*(v66 + *(v67 + 36) + 8) == 1)
    {
      v68 = type metadata accessor for ContentStatusBanner();
      v69 = v82;
      sub_10087ECB4(v82 + *(v68 + 24));
      *v69 = 0;
      *(v69 + 8) = 0;
      *(v69 + 16) = 0;
      sub_10001B350(v69, 0, 1, v68);
      sub_1000B8080();
    }

    if ((*(v66 + *(v67 + 40) + 1) & 0xC0) == 0x40)
    {
      v70 = type metadata accessor for ContentStatusBanner();
      v71 = v82;
      sub_10001B350(v82 + *(v70 + 24), 1, 1, v79);
      *v71 = 0;
      *(v71 + 8) = xmmword_100A3BBB0;
      sub_10001B350(v71, 0, 1, v70);
      sub_1000B8080();
    }
  }
}

uint64_t sub_10087DAC0(uint64_t a1)
{
  v124 = a1;
  v125 = type metadata accessor for WeatherDataAction();
  __chkstk_darwin(v125);
  v120 = &v116 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v122 = &v116 - v4;
  v5 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v5);
  v121 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v7 - 8);
  v119 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v123 = &v116 - v10;
  __chkstk_darwin(v11);
  v128 = &v116 - v12;
  v13 = type metadata accessor for CurrentWeather();
  v126 = *(v13 - 8);
  v127 = v13;
  __chkstk_darwin(v13);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v16 - 8);
  v133 = &v116 - v17;
  v18 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v18 - 8);
  v20 = &v116 - v19;
  v21 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v21 - 8);
  v23 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v130 = &v116 - v25;
  v26 = sub_10022C350(&unk_100CE49F0);
  __chkstk_darwin(v26 - 8);
  v28 = &v116 - v27;
  v29 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v29);
  v129 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v116 - v32;
  v131 = type metadata accessor for BannerStateComputer();
  v132 = v1;
  v34 = *(v1 + *(v131 + 20));
  sub_100095588();
  if (sub_100024D10(v28, 1, v29) == 1)
  {
    return sub_1000180EC(v28, &unk_100CE49F0);
  }

  v36 = v33;
  sub_100073140();
  v37 = static Location.currentLocationID.getter();
  v38 = v34;
  v40 = v39;
  v117 = v38;
  v41 = *(v38 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v118 = v37;
  v42 = v37;
  v43 = v40;
  sub_1000864C0(v42, v40, v41);

  v44 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v20, 1, v44) == 1)
  {
    sub_1000180EC(v20, &qword_100CA37B0);
    v45 = v130;
    sub_10001B350(v130, 1, 1, v5);
  }

  else
  {
    v45 = v130;
    sub_1001A0D3C();
    sub_100053318(v20, type metadata accessor for LocationWeatherDataState);
  }

  v46 = v133;
  sub_100095588();
  if (sub_100024D10(v23, 1, v5) == 1)
  {
    sub_1000180EC(v23, &qword_100CA3898);
    v47 = 1;
  }

  else
  {
    WeatherDataModel.currentWeather.getter();
    sub_100053318(v23, type metadata accessor for WeatherData);
    CurrentWeather.date.getter();
    (*(v126 + 8))(v15, v127);
    v47 = 0;
  }

  v48 = type metadata accessor for Date();
  sub_10001B350(v46, v47, 1, v48);
  v49 = v36;
  v50 = v129;
  sub_100050FF0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000703C(v63, qword_100D90D08);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = v45;
      v68 = swift_slowAlloc();
      v134[0] = v68;
      *v66 = 141558275;
      *(v66 + 4) = 1752392040;
      *(v66 + 12) = 2081;
      v69 = v118;
      *(v66 + 14) = sub_100078694(v118, v43, v134);
      _os_log_impl(&_mh_execute_header, v64, v65, "Restoring uncertain location banner (loaded from cache). ID=%{private,mask.hash}s", v66, 0x16u);
      sub_100006F14(v68);
      v45 = v67;
      v46 = v133;
    }

    else
    {

      v69 = v118;
    }

    v79 = type metadata accessor for ContentStatusBanner();
    v80 = v128;
    sub_100095588();
    *v80 = 4;
    *(v80 + 8) = v69;
    *(v80 + 16) = v43;
    sub_10001B350(v80, 0, 1, v79);

    goto LABEL_46;
  }

  v52 = v43;
  if (EnumCaseMultiPayload == 1)
  {
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000703C(v53, qword_100D90D08);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();

    v56 = os_log_type_enabled(v54, v55);
    v57 = v118;
    if (v56)
    {
      v58 = swift_slowAlloc();
      v59 = v45;
      v60 = swift_slowAlloc();
      v134[0] = v60;
      *v58 = 141558275;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      *(v58 + 14) = sub_100078694(v57, v52, v134);
      _os_log_impl(&_mh_execute_header, v54, v55, "Restoring old location banner (loaded from cache). ID=%{private,mask.hash}s", v58, 0x16u);
      sub_100006F14(v60);
      v45 = v59;
      v46 = v133;
    }

    v61 = type metadata accessor for ContentStatusBanner();
    v62 = v128;
    sub_100095588();
    *v62 = 5;
  }

  else if (*(v132 + *(v131 + 28)) == 1)
  {
    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_10000703C(v70, qword_100D90D08);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();

    v73 = os_log_type_enabled(v71, v72);
    v57 = v118;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v75 = v45;
      v76 = swift_slowAlloc();
      v134[0] = v76;
      *v74 = 141558275;
      *(v74 + 4) = 1752392040;
      *(v74 + 12) = 2081;
      *(v74 + 14) = sub_100078694(v57, v52, v134);
      _os_log_impl(&_mh_execute_header, v71, v72, "Showing no connection banner. ID=%{private,mask.hash}s", v74, 0x16u);
      sub_100006F14(v76);
      v45 = v75;
      v46 = v133;
    }

    v77 = v117 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    if (*(v77 + *(type metadata accessor for EnvironmentState() + 68)))
    {
      v78 = 2;
    }

    else
    {
      v78 = 1;
    }

    v61 = type metadata accessor for ContentStatusBanner();
    v62 = v123;
    sub_100095588();
    *v62 = v78;
  }

  else
  {
    v81 = v122;
    sub_100050FF0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {

      v82 = sub_10022C350(&qword_100CAC0C8);
      v83 = *(v82 + 64);
      v84 = *(v82 + 80);
      v85 = v121;
      sub_100073140();
      sub_100053318(&v81[v84], type metadata accessor for NewsDataModel);
      sub_100053318(&v81[v83], type metadata accessor for PreprocessedWeatherData);
      sub_1001A5104();
      if (v87)
      {
        v88 = v86;
        v89 = v45;
        if (qword_100CA2790 != -1)
        {
          swift_once();
        }

        v90 = type metadata accessor for Logger();
        sub_10000703C(v90, qword_100D90D08);

        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v134[0] = v94;
          *v93 = 141558275;
          *(v93 + 4) = 1752392040;
          *(v93 + 12) = 2081;
          LODWORD(v128) = v88;
          v95 = v118;
          *(v93 + 14) = sub_100078694(v118, v43, v134);
          _os_log_impl(&_mh_execute_header, v91, v92, "Showing weather unavailable banner (showing dynamic lookup data). ID=%{private,mask.hash}s", v93, 0x16u);
          sub_100006F14(v94);

          v52 = v43;
          v45 = v130;

          LOBYTE(v88) = v128;
        }

        else
        {

          v95 = v118;
          v45 = v89;
        }

        if (v88)
        {
          v113 = 0;
        }

        else
        {
          v113 = 6;
        }

        v114 = type metadata accessor for ContentStatusBanner();
        v115 = v119;
        sub_100095588();
        *v115 = v113;
        *(v115 + 8) = v95;
        *(v115 + 16) = v52;
        sub_10001B350(v115, 0, 1, v114);

        sub_1000B8080();
        sub_100053318(v121, type metadata accessor for WeatherData);
        goto LABEL_47;
      }

      v96 = type metadata accessor for WeatherData;
      v97 = v85;
    }

    else
    {
      v96 = type metadata accessor for WeatherDataAction;
      v97 = v81;
    }

    sub_100053318(v97, v96);
    v98 = v120;
    sub_100050FF0();
    v99 = swift_getEnumCaseMultiPayload();
    sub_100053318(v98, type metadata accessor for WeatherDataAction);
    v57 = v118;
    if (v99 != 2)
    {
      if (qword_100CA2790 != -1)
      {
        swift_once();
      }

      v106 = type metadata accessor for Logger();
      sub_10000703C(v106, qword_100D90D08);

      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = v45;
        v111 = swift_slowAlloc();
        v134[0] = v111;
        *v109 = 141558275;
        *(v109 + 4) = 1752392040;
        *(v109 + 12) = 2081;
        *(v109 + 14) = sub_100078694(v57, v52, v134);
        _os_log_impl(&_mh_execute_header, v107, v108, "Removing banner (successfully loaded new data). ID=%{private,mask.hash}s", v109, 0x16u);
        sub_100006F14(v111);
        v45 = v110;
        v46 = v133;
      }

      v112 = type metadata accessor for ContentStatusBanner();
      sub_10001B350(v128, 1, 1, v112);
      goto LABEL_46;
    }

    if (qword_100CA2790 != -1)
    {
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    sub_10000703C(v100, qword_100D90D08);

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = v45;
      v105 = swift_slowAlloc();
      v134[0] = v105;
      *v103 = 141558275;
      *(v103 + 4) = 1752392040;
      *(v103 + 12) = 2081;
      *(v103 + 14) = sub_100078694(v57, v52, v134);
      _os_log_impl(&_mh_execute_header, v101, v102, "Showing weather unavailable banner (failed loading new data). ID=%{private,mask.hash}s", v103, 0x16u);
      sub_100006F14(v105);
      v45 = v104;
      v46 = v133;
    }

    v61 = type metadata accessor for ContentStatusBanner();
    v62 = v128;
    sub_100095588();
    *v62 = 0;
  }

  *(v62 + 8) = v57;
  *(v62 + 16) = v52;
  sub_10001B350(v62, 0, 1, v61);

LABEL_46:
  sub_1000B8080();
LABEL_47:
  sub_1000180EC(v46, &unk_100CB2CF0);
  sub_1000180EC(v45, &qword_100CA3898);
  sub_100053318(v49, &type metadata accessor for CurrentLocation);
  return sub_100053318(v50, &type metadata accessor for CurrentLocation);
}

uint64_t sub_10087ECB4@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v66 = type metadata accessor for CurrentWeather();
  v53 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Date();
  v67 = *(v64 - 8);
  __chkstk_darwin(v64);
  v52 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = &qword_100CA3898;
  v5 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v5 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v61 = &v51 - v9;
  v10 = type metadata accessor for WeatherData(0);
  v54 = *(v10 - 8);
  __chkstk_darwin(v10);
  v63 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v51 - v13;
  v14 = type metadata accessor for LocationWeatherDataState(0);
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v62 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v19 = *(*(v1 + *(type metadata accessor for BannerStateComputer() + 20)) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v60 = v19;
  result = swift_bridgeObjectRetain_n();
  v26 = 0;
  v57 = _swiftEmptyArrayStorage;
  while (1)
  {
    v27 = v26;
    if (!v23)
    {
      break;
    }

LABEL_8:
    v23 &= v23 - 1;
    sub_100050FF0();
    v28 = v18;
    sub_100050FF0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = v61;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v31 = sub_10022C350(&qword_100CA75D8);
        v56 = *(v31 + 48);
        v32 = v4;
        v33 = *(v31 + 64);
        v34 = v62;
        sub_100073140();
        sub_10001B350(v7, 0, 1, v10);
        v35 = v34 + v33;
        v4 = v32;
        v30 = v61;
        sub_100053318(v35, type metadata accessor for NewsDataModel);
        sub_100053318(v34 + v56, type metadata accessor for PreprocessedWeatherData);
        break;
      case 3:
        goto LABEL_10;
      default:
        sub_100053318(v62, type metadata accessor for LocationWeatherDataState);
LABEL_10:
        sub_10001B350(v7, 1, 1, v10);
        break;
    }

    sub_100051BBC();
    v18 = v28;
    sub_100053318(v28, type metadata accessor for LocationWeatherDataState);
    if (sub_100024D10(v30, 1, v10) == 1)
    {
      result = sub_1000180EC(v30, v4);
    }

    else
    {
      sub_100073140();
      v36 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069FC64();
        v36 = v39;
      }

      v38 = v36[2];
      v37 = v36[3];
      v57 = v36;
      if (v38 >= v37 >> 1)
      {
        sub_10069FC64();
        v57 = v40;
      }

      v57[2] = v38 + 1;
      result = sub_100073140();
      v4 = &qword_100CA3898;
    }
  }

  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return result;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v26);
    ++v27;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  v41 = v57;
  v42 = v57[2];
  if (v42)
  {
    v62 = v10;
    v68 = _swiftEmptyArrayStorage;
    sub_1006A79AC();
    v43 = v41 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v44 = *(v54 + 72);
    v45 = v52;
    v46 = (v53 + 8);
    v47 = v68;
    do
    {
      v48 = v63;
      sub_100050FF0();
      v49 = v65;
      WeatherDataModel.currentWeather.getter();
      CurrentWeather.date.getter();
      (*v46)(v49, v66);
      sub_100053318(v48, type metadata accessor for WeatherData);
      v68 = v47;
      v50 = v47[2];
      if (v50 >= v47[3] >> 1)
      {
        sub_1006A79AC();
        v47 = v68;
      }

      v47[2] = v50 + 1;
      (*(v67 + 32))(v47 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v50, v45, v64);
      v43 += v44;
      --v42;
    }

    while (v42);
  }

  else
  {

    v47 = _swiftEmptyArrayStorage;
  }

  sub_10087B590(v47, v55);
}

void sub_10087F478()
{
  v0 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v0 - 8);
  v2 = &v36[-v1];
  v3 = type metadata accessor for CurrentWeather();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36[-v8];
  v10 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v10 - 8);
  v12 = &v36[-v11];
  v13 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v36[-v14];
  v16 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v16);
  v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100050FF0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = 5;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      goto LABEL_8;
    case 2:
      v20 = 4;
      goto LABEL_8;
    case 3:
      goto LABEL_6;
    default:
      v21 = *(v38 + *(type metadata accessor for BannerStateComputer() + 20)) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      if (*(v21 + 3) != 4)
      {
LABEL_6:
        sub_100053318(v18, &type metadata accessor for CurrentLocation);
        static Location.currentLocationID.getter();
        v22 = type metadata accessor for ContentStatusBanner();
        sub_10001B350(v2, 1, 1, v22);
        type metadata accessor for BannerStateComputer();
        sub_1000B8080();
        return;
      }

      if (*(v21 + *(type metadata accessor for EnvironmentState() + 68)))
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

LABEL_8:
      v37 = v20;
      sub_100053318(v18, &type metadata accessor for CurrentLocation);
      v23 = *(*(v38 + *(type metadata accessor for BannerStateComputer() + 20)) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

      v24 = static Location.currentLocationID.getter();
      sub_1000864C0(v24, v25, v23);

      v26 = type metadata accessor for LocationWeatherDataState(0);
      if (sub_100024D10(v9, 1, v26) == 1)
      {
        v27 = &qword_100CA37B0;
        v28 = v9;
LABEL_12:
        sub_1000180EC(v28, v27);
        v30 = 1;
        goto LABEL_14;
      }

      sub_1001A0D3C();
      sub_100053318(v9, type metadata accessor for LocationWeatherDataState);
      v29 = type metadata accessor for WeatherData(0);
      if (sub_100024D10(v12, 1, v29) == 1)
      {
        v27 = &qword_100CA3898;
        v28 = v12;
        goto LABEL_12;
      }

      WeatherDataModel.currentWeather.getter();
      sub_100053318(v12, type metadata accessor for WeatherData);
      CurrentWeather.date.getter();
      (*(v4 + 8))(v6, v3);
      v30 = 0;
LABEL_14:
      v31 = type metadata accessor for Date();
      sub_10001B350(v15, v30, 1, v31);
      static Location.currentLocationID.getter();
      v32 = static Location.currentLocationID.getter();
      v34 = v33;
      v35 = type metadata accessor for ContentStatusBanner();
      sub_100095588();
      *v2 = v37;
      *(v2 + 1) = v32;
      *(v2 + 2) = v34;
      sub_10001B350(v2, 0, 1, v35);
      sub_1000B8080();
      sub_1000180EC(v15, &unk_100CB2CF0);
      return;
  }
}

uint64_t sub_10087FA60()
{
  result = type metadata accessor for CurrentWeather();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10087FAD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v21 = v4;
  __chkstk_darwin(v5);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CE0270);
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for HumidityComponent();
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10087FFFC();
  v16 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v17 = v21;
    sub_1004499CC(&qword_100CBA7E8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v12, v7);
    (*(v17 + 32))(v15, v22, v3);
    sub_100880050(v15, v20);
  }

  return sub_100006F14(a1);
}

uint64_t sub_10087FD24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165)
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

uint64_t sub_10087FDC8(void *a1)
{
  v2 = sub_10022C350(&qword_100CE0280);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_10087FFFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for CurrentWeather();
  sub_1004499CC(&qword_100CBA800);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_10087FF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10087FD24(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10087FF50(uint64_t a1)
{
  v2 = sub_10087FFFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10087FF8C(uint64_t a1)
{
  v2 = sub_10087FFFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10087FFFC()
{
  result = qword_100CE0278;
  if (!qword_100CE0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0278);
  }

  return result;
}

uint64_t sub_100880050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumidityComponent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for HumidityComponent.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_100880164()
{
  result = qword_100CE0288;
  if (!qword_100CE0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0288);
  }

  return result;
}

unint64_t sub_1008801BC()
{
  result = qword_100CE0290;
  if (!qword_100CE0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0290);
  }

  return result;
}

unint64_t sub_100880214()
{
  result = qword_100CE0298;
  if (!qword_100CE0298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0298);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MainViewModel.PrimaryModule(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_100880364(_BYTE *result, int a2, int a3)
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

unint64_t sub_100880414()
{
  result = qword_100CE04C0;
  if (!qword_100CE04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE04C0);
  }

  return result;
}

unint64_t sub_10088046C()
{
  result = qword_100CE13A0;
  if (!qword_100CE13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE13A0);
  }

  return result;
}

unint64_t sub_1008804C4()
{
  result = qword_100CE04C8;
  if (!qword_100CE04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE04C8);
  }

  return result;
}

unint64_t sub_10088051C()
{
  result = qword_100CE04D0;
  if (!qword_100CE04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE04D0);
  }

  return result;
}

unint64_t sub_100880574()
{
  result = qword_100CE04D8;
  if (!qword_100CE04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE04D8);
  }

  return result;
}

uint64_t sub_1008805C8()
{
  type metadata accessor for MainViewModel.ModalModule(0);
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_1008819AC();
  sub_100021048();
  swift_getEnumCaseMultiPayload();
  sub_100024B98();
  if (!v2)
  {
    return 1;
  }

  if (v1)
  {
    type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
    v3 = swift_getEnumCaseMultiPayload() != 6;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_100003940();
  sub_100881900(v4, v5);
  return v3;
}

BOOL sub_1008806B4()
{
  type metadata accessor for MainViewModel.ModalModule(0);
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_100003C38();
  v3 = (v1 - v2);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_10001D008();
  sub_1008819AC();
  sub_100021048();
  v7 = 0;
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_100003940();
    sub_1008819AC();
    if (*v3 != 1)
    {
      v7 = 1;
    }
  }

  sub_100881900(v6, type metadata accessor for MainViewModel.ModalModule);
  return v7;
}

void sub_1008807AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000037D8();
  v28 = v27 - v26;
  type metadata accessor for MainViewModel.ModalModule(0);
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_100003C38();
  __chkstk_darwin(v30);
  v32 = &a9 - v31;
  __chkstk_darwin(v33);
  sub_10003C868();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  sub_10001D008();
  sub_1008819AC();
  swift_getEnumCaseMultiPayload();
  sub_100024B98();
  if (v38)
  {
    if (v37)
    {
      sub_10001FB08();
      sub_100881958();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        sub_100010E0C();
        sub_100881900(v28, v40);
        goto LABEL_16;
      }
    }

    else if (*v36)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
    sub_10001D008();
    sub_1008819AC();
    swift_getEnumCaseMultiPayload();
    sub_100024B98();
    if (!v38)
    {
      goto LABEL_16;
    }

    if (v39)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_100010E0C();
      sub_100881900(v20, v43);
      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1000069F0();
      sub_100881900(v20, v41);
    }
  }

  sub_10001D008();
  sub_1008819AC();
  sub_100021048();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_10001D008();
    sub_1008819AC();
  }

  sub_1000069F0();
  sub_100881900(v32, v44);
LABEL_16:
  sub_10000536C();
}

uint64_t sub_1008809CC()
{
  type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100069BAC();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = (v4 - v3);
  sub_10001D008();
  sub_1008819AC();
  swift_getEnumCaseMultiPayload();
  sub_100024B98();
  if (v7)
  {
    if (!v6)
    {
      v8 = *v5 ^ 1;
      return v8 & 1;
    }

    sub_10001FB08();
    sub_100881958();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_100010E0C();
      sub_100881900(v0, v10);
      v8 = 0;
      return v8 & 1;
    }
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_100880AE0()
{
  type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100069BAC();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10001D008();
  sub_1008819AC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return 0;
  }

  sub_10001FB08();
  sub_100881958();
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    return 0;
  }

  sub_100010E0C();
  sub_100881900(v0, v3);
  return 1;
}

void sub_100880E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_100069BAC();
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_100003C38();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v30 = sub_10022C350(&qword_100CE04F0);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  sub_1008819AC();
  sub_1008819AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10001D008();
      sub_100021048();
      sub_1008819AC();
      if (sub_10004EC3C() != 1)
      {
        sub_100010E0C();
        sub_100881900(v28, v36);
        goto LABEL_17;
      }

      sub_100881958();
      sub_100881120();
      sub_100881900(v20, type metadata accessor for MainViewModel.ModalModule.LocationDetailModule);
      sub_100881900(v28, type metadata accessor for MainViewModel.ModalModule.LocationDetailModule);
      sub_1000069F0();
      sub_100881900(v33, v35);
      goto LABEL_18;
    case 2u:
      if (sub_10004EC3C() == 2)
      {
        goto LABEL_3;
      }

      goto LABEL_17;
    case 3u:
      if (sub_10004EC3C() != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_3;
    case 4u:
      if (sub_10004EC3C() != 4)
      {
        goto LABEL_17;
      }

      goto LABEL_3;
    case 5u:
      if (sub_10004EC3C() != 5)
      {
        goto LABEL_17;
      }

      goto LABEL_3;
    case 6u:
      if (sub_10004EC3C() == 6)
      {
        goto LABEL_3;
      }

      goto LABEL_17;
    default:
      sub_10001D008();
      sub_1008819AC();
      if (sub_10004EC3C())
      {
LABEL_17:
        sub_1000180EC(v33, &qword_100CE04F0);
      }

      else
      {
LABEL_3:
        sub_1000069F0();
        sub_100881900(v33, v34);
      }

LABEL_18:
      sub_10000536C();
      return;
  }
}

void sub_100881120()
{
  sub_10000C778();
  v49 = v1;
  v50 = v2;
  v3 = type metadata accessor for URL();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v44 = v5 - v4;
  type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003C38();
  v45 = (v7 - v8);
  v10 = __chkstk_darwin(v9);
  v46 = &v43 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = (&v43 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = (&v43 - v16);
  v18 = __chkstk_darwin(v15);
  v20 = (&v43 - v19);
  __chkstk_darwin(v18);
  sub_10003C868();
  v22 = __chkstk_darwin(v21);
  v24 = (&v43 - v23);
  __chkstk_darwin(v22);
  v26 = (&v43 - v25);
  v27 = sub_10022C350(&qword_100CE04F8);
  sub_100003810(v27);
  sub_100003828();
  v29 = __chkstk_darwin(v28);
  v31 = &v43 - v30;
  v32 = (&v43 + *(v29 + 56) - v30);
  sub_1008819AC();
  sub_1008819AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10001FB08();
      sub_1008819AC();
      if (sub_100023414() != 1)
      {
        goto LABEL_21;
      }

      v33 = v24[2];
      v34 = v24[3];
      v35 = *v24;
      v36 = v24[1];
      goto LABEL_16;
    case 2u:
      sub_10001FB08();
      sub_1008819AC();
      if (sub_100023414() != 2)
      {
        goto LABEL_21;
      }

      v33 = v0[2];
      v34 = v0[3];
      v35 = *v0;
      v36 = v0[1];
      goto LABEL_16;
    case 3u:
      sub_10001FB08();
      sub_1008819AC();
      if (sub_100023414() != 3)
      {
        goto LABEL_21;
      }

      v33 = v20[2];
      v34 = v20[3];
      v35 = *v20;
      v36 = v20[1];
      goto LABEL_16;
    case 4u:
      sub_10001FB08();
      sub_100021048();
      sub_1008819AC();
      if (sub_100023414() != 4)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    case 5u:
      sub_10001FB08();
      sub_1008819AC();
      if (sub_100023414() != 5)
      {
        goto LABEL_21;
      }

      v33 = v14[2];
      v34 = v14[3];
      v35 = *v14;
      v36 = v14[1];
      goto LABEL_16;
    case 6u:
      sub_10001FB08();
      v38 = v46;
      sub_1008819AC();
      if (sub_100023414() == 6)
      {
        v40 = v47;
        v39 = v48;
        v41 = v44;
        (*(v47 + 32))(v44, v32, v48);
        static URL.== infix(_:_:)();
        v42 = *(v40 + 8);
        v42(v41, v39);
        v42(v38, v39);
LABEL_17:
        sub_100010E0C();
        sub_100881900(v31, v37);
      }

      else
      {
        (*(v47 + 8))(v38, v48);
LABEL_21:
        sub_1000180EC(v31, &qword_100CE04F8);
      }

      sub_10000536C();
      return;
    case 7u:
      sub_10001FB08();
      v17 = v45;
      sub_1008819AC();
      if (sub_100023414() != 7)
      {
        goto LABEL_21;
      }

LABEL_11:
      v33 = v17[2];
      v34 = v17[3];
      v35 = *v17;
      v36 = v17[1];
      goto LABEL_16;
    default:
      sub_10001FB08();
      sub_1008819AC();
      if (sub_100023414())
      {
        goto LABEL_21;
      }

      v33 = v26[2];
      v34 = v26[3];
      v35 = *v26;
      v36 = v26[1];
LABEL_16:
      CGRectEqualToRect(*&v35, *v32);
      goto LABEL_17;
  }
}

uint64_t sub_100881584@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CCF2F8);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = v13 - v5;
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  strcpy((inited + 32), "primaryModule");
  *(inited + 46) = -4864;
  *(inited + 48) = *v1;
  *(inited + 72) = &type metadata for MainViewModel.PrimaryModule;
  strcpy((inited + 80), "stackModules");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v8 = *(v1 + 8);
  v9 = sub_10022C350(&qword_100CE0500);
  *(inited + 96) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0x646F4D6C61646F6DLL;
  *(inited + 136) = 0xEB00000000656C75;
  v10 = type metadata accessor for MainViewModel(0);
  sub_100881890(v1 + *(v10 + 24), v6);
  v11 = type metadata accessor for MainViewModel.ModalModule(0);
  if (sub_100024D10(v6, 1, v11) == 1)
  {

    sub_1000180EC(v6, &qword_100CCF2F8);
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 7104878;
    *(inited + 152) = 0xE300000000000000;
  }

  else
  {
    v14 = v11;
    sub_100043010(v13);
    sub_10001D008();
    sub_100881958();
    sub_100166170(v13, (inited + 144));
  }

  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CE0508);
  a1[4] = sub_100881A00();
  sub_100043010(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100881804()
{
  sub_100881A64(&qword_100CE0518);

  return ShortDescribable.description.getter();
}

uint64_t sub_100881890(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCF2F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100881900(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100881958()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_1008819AC()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

unint64_t sub_100881A00()
{
  result = qword_100CE0510;
  if (!qword_100CE0510)
  {
    sub_10022E824(&qword_100CE0508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0510);
  }

  return result;
}

uint64_t sub_100881A64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MainViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100881AC0()
{
  result = qword_100CE0520;
  if (!qword_100CE0520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0520);
  }

  return result;
}

uint64_t sub_100881B14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1970169197 && a2 == 0xE400000000000000)
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

uint64_t sub_100881BE4(char a1)
{
  if (a1)
  {
    return 1970169197;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_100881C18(void *a1, int a2)
{
  v24 = a2;
  sub_10022C350(&qword_100CE0560);
  sub_1000037C4();
  v22 = v4;
  v23 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v21 = sub_10022C350(&qword_100CE0568);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = sub_10022C350(&qword_100CE0570);
  sub_1000037C4();
  v15 = v14;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v21 - v17;
  sub_1000161C0(a1, a1[3]);
  sub_1008826F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = (v15 + 8);
  if (v24)
  {
    v26 = 1;
    sub_100882744();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_100882798();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v9 + 8))(v12, v21);
  }

  return (*v19)(v18, v13);
}

uint64_t sub_100881EA4(uint64_t a1)
{
  v41 = sub_10022C350(&qword_100CE0530);
  sub_1000037C4();
  v39 = v2;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v6 = sub_10022C350(&qword_100CE0538);
  sub_1000037C4();
  v38 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v11 = sub_10022C350(&qword_100CE0540);
  sub_1000037C4();
  v40 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  sub_1000161C0(a1, *(a1 + 24));
  sub_1008826F0();
  v16 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    goto LABEL_8;
  }

  v36 = v6;
  v37 = v10;
  v42 = a1;
  v17 = v41;
  v18 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v18, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    sub_10022C350(&qword_100CA7610);
    *v29 = &type metadata for ReportWeatherEntrySource;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, enum case for DecodingError.typeMismatch(_:), v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v15, v11);
    a1 = v42;
LABEL_8:
    sub_100006F14(a1);
    return a1;
  }

  v35 = 0;
  if (v21 < (v22 >> 1))
  {
    a1 = *(v20 + v21);
    sub_100618E7C(v21 + 1);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (a1)
      {
        LODWORD(v38) = a1;
        v44 = 1;
        sub_100882744();
        sub_1000059C4();
        swift_unknownObjectRelease();
        (*(v39 + 8))(v5, v17);
        v31 = sub_100014474();
        v32(v31);
        a1 = v38;
      }

      else
      {
        v43 = 0;
        sub_100882798();
        v30 = v37;
        sub_1000059C4();
        swift_unknownObjectRelease();
        (*(v38 + 8))(v30, v36);
        v33 = sub_100014474();
        v34(v33);
      }

      sub_100006F14(v42);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100882330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100881B14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100882358(uint64_t a1)
{
  v2 = sub_1008826F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882394(uint64_t a1)
{
  v2 = sub_1008826F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008823D0(uint64_t a1)
{
  v2 = sub_100882798();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10088240C(uint64_t a1)
{
  v2 = sub_100882798();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100882448(uint64_t a1)
{
  v2 = sub_100882744();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100882484(uint64_t a1)
{
  v2 = sub_100882744();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008824C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100881EA4(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10088250C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CB73D8);
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for LocationViewAction();
  ShortDescription.init(name:_:)();
  a1[3] = v2;
  a1[4] = sub_1004100C4();
  v8 = sub_100042FB0(a1);
  return (*(v4 + 32))(v8, v7, v2);
}

uint64_t sub_10088265C()
{
  sub_1008827EC();

  return ShortDescribable.description.getter();
}

unint64_t sub_10088269C()
{
  result = qword_100CE0528;
  if (!qword_100CE0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0528);
  }

  return result;
}

unint64_t sub_1008826F0()
{
  result = qword_100CE0548;
  if (!qword_100CE0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0548);
  }

  return result;
}

unint64_t sub_100882744()
{
  result = qword_100CE0550;
  if (!qword_100CE0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0550);
  }

  return result;
}

unint64_t sub_100882798()
{
  result = qword_100CE0558;
  if (!qword_100CE0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0558);
  }

  return result;
}

unint64_t sub_1008827EC()
{
  result = qword_100CE0578;
  if (!qword_100CE0578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0578);
  }

  return result;
}

_BYTE *sub_100882840(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100882940()
{
  result = qword_100CE0580;
  if (!qword_100CE0580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0580);
  }

  return result;
}

unint64_t sub_100882998()
{
  result = qword_100CE0588;
  if (!qword_100CE0588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0588);
  }

  return result;
}

unint64_t sub_1008829F0()
{
  result = qword_100CE0590;
  if (!qword_100CE0590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0590);
  }

  return result;
}

unint64_t sub_100882A48()
{
  result = qword_100CE0598;
  if (!qword_100CE0598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0598);
  }

  return result;
}

unint64_t sub_100882AA0()
{
  result = qword_100CE05A0;
  if (!qword_100CE05A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE05A0);
  }

  return result;
}

unint64_t sub_100882AF8()
{
  result = qword_100CE05A8;
  if (!qword_100CE05A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE05A8);
  }

  return result;
}

unint64_t sub_100882B50()
{
  result = qword_100CE05B0;
  if (!qword_100CE05B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE05B0);
  }

  return result;
}

uint64_t sub_100882BD0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  sub_100015070();
  sub_100886A40();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1008869E8(v5, type metadata accessor for WeatherData.WeatherStatisticsState);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    type metadata accessor for WeatherStatisticsModel();
    sub_100003934();
    return sub_10001B350(v10, v11, v12, v13);
  }

  v7 = type metadata accessor for WeatherStatisticsModel();
  sub_1000037E8();
  v8 = sub_100003940();
  v9(v8);
  v10 = a1;
  v11 = 0;
  v12 = 1;
  v13 = v7;
  return sub_10001B350(v10, v11, v12, v13);
}

void sub_100882CE0()
{
  String.write(to:)();
  if (!v0)
  {
    type metadata accessor for WeatherData(0);
    v1 = sub_100013AD0();
    WeatherDataModel.write(to:)(v1);
    sub_100013AD0();
    sub_100785D30();
    sub_100013AD0();
    sub_1007857C8();
  }
}

void sub_100882D6C()
{
  sub_10000E8AC();
  v3 = v2;
  v4 = type metadata accessor for WeatherData.CachingState(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v6 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  v8 = type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_100021D38();
  v12 = sub_10022C350(&qword_100CAA9F0);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000203B8();
  v14 = static String.read(from:)();
  if (!v0)
  {
    v43 = v14;
    v49 = v15;
    type metadata accessor for Locale();
    sub_100003934();
    sub_10001B350(v16, v17, v18, v19);
    v20 = sub_1000203B8();
    static WeatherDataModel.read(from:)(v20, v21, v22, v23, v24, v25, v26, v27, v41, v43);
    sub_1000203B8();
    sub_100785EF8();
    v28 = sub_1000203B8();
    sub_100785A70(v28, v29, v30, v31, v32, v33, v34, v35, v42, v44, v46, v47, v48);
    v36 = type metadata accessor for WeatherData(0);
    type metadata accessor for WeatherDataOverrides();
    sub_100003934();
    sub_10001B350(v37, v38, v39, v40);
    *v3 = v45;
    *(v3 + 1) = v49;
    sub_100051BBC();
    (*(v10 + 32))(&v3[*(v36 + 24)], v1, v8);
    sub_10001D020();
    sub_100886A98();
    sub_100010E24();
    sub_100886A98();
  }

  sub_10000C8F4();
}

uint64_t sub_100883064(void *a1, void *a2)
{
  v5 = type metadata accessor for Locale();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = sub_10022C350(&qword_100CAA9F0);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v16 = sub_10022C350(&qword_100CAA9F8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000426CC();
  v18 = *a1 == *a2 && a1[1] == a2[1];
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v29 = v7;
    v28 = type metadata accessor for WeatherData(0);
    v21 = *(v16 + 48);
    sub_100095588();
    sub_100095588();
    sub_1000038B4(v2, 1, v5);
    if (v18)
    {
      sub_1000038B4(v2 + v21, 1, v5);
      if (v18)
      {
        sub_1000180EC(v2, &qword_100CAA9F0);
LABEL_19:
        v19 = static WeatherDataModel.== infix(_:_:)();
        return v19 & 1;
      }
    }

    else
    {
      sub_100095588();
      sub_1000038B4(v2 + v21, 1, v5);
      if (!v22)
      {
        v23 = v29;
        (*(v29 + 32))(v11, v2 + v21, v5);
        sub_10002342C();
        sub_1008869A0(v24, v25);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        v27 = *(v23 + 8);
        v27(v11, v5);
        v27(v15, v5);
        sub_1000180EC(v2, &qword_100CAA9F0);
        if (v26)
        {
          goto LABEL_19;
        }

LABEL_17:
        v19 = 0;
        return v19 & 1;
      }

      (*(v29 + 8))(v15, v5);
    }

    sub_1000180EC(v2, &qword_100CAA9F8);
    goto LABEL_17;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_100883384()
{
  v65 = type metadata accessor for WeatherDataRelevancy();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v61 = v3 - v2;
  v62 = sub_10022C350(&qword_100CE07B8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v63 = v5;
  v6 = sub_10022C350(&qword_100CC8178);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003C38();
  v64 = v8 - v9;
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  __chkstk_darwin(v13);
  v66 = &v61 - v14;
  sub_1000038CC();
  v15 = type metadata accessor for Date();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = type metadata accessor for WeatherData.CachingState(0);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_1000037D8();
  sub_1000426CC();
  v24 = sub_10022C350(&qword_100CE07C0);
  sub_100003810(v24);
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  v29 = &v61 + *(v28 + 56) - v26;
  sub_100886A40();
  sub_100886A40();
  v30 = sub_10022C350(&qword_100CAC710);
  sub_1000038B4(v27, 1, v30);
  if (v34)
  {
    sub_1000038B4(v29, 1, v30);
    if (v34)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_10000CF88();
    sub_100886A40();
    v33 = *(v30 + 48);
    sub_1000038B4(v29, 1, v30);
    if (!v34)
    {
      (*(v17 + 32))(v21, v29, v15);
      sub_100051BBC();
      sub_100051BBC();
      v35 = static Date.== infix(_:_:)();
      v36 = *(v17 + 8);
      v36(v0, v15);
      if ((v35 & 1) == 0)
      {
        sub_1000211F0();
        v43 = sub_100018800();
        sub_1000180EC(v43, v44);
        v45 = sub_10000EB30();
        (v36)(v45);
LABEL_22:
        sub_10001A0C8();
        sub_1008869E8(v27, v51);
        return 0;
      }

      v37 = v63;
      v38 = *(v62 + 48);
      sub_100095588();
      sub_100095588();
      v39 = v65;
      sub_1000038B4(v37, 1, v65);
      if (v34)
      {
        sub_1000211F0();
        v40 = sub_100018800();
        sub_1000180EC(v40, v41);
        v42 = sub_10000EB30();
        (v36)(v42);
        sub_1000038B4(v37 + v38, 1, v65);
        if (v34)
        {
          sub_1000180EC(v37, &qword_100CC8178);
          goto LABEL_5;
        }
      }

      else
      {
        sub_100095588();
        sub_1000038B4(v37 + v38, 1, v39);
        if (!v46)
        {
          v52 = v61;
          sub_100886A98();
          v53 = static Date.== infix(_:_:)();
          sub_1000180EC(v12, &qword_100CC8178);
          sub_1000180EC(v66, &qword_100CC8178);
          v54 = sub_10000EB30();
          (v36)(v54);
          if (v53)
          {
            v55 = v64;
            v56 = *(v65 + 20);
            v57 = *(v64 + v56);
            v58 = *(v52 + v56);
            sub_100013DE0();
            sub_1008869E8(v52, v59);
            sub_1008869E8(v55, v53);
            sub_1000180EC(v37, &qword_100CC8178);
            if (v57 != v58)
            {
              goto LABEL_22;
            }

LABEL_5:
            sub_10001A0C8();
            sub_1008869E8(v27, v31);
            return 1;
          }

          sub_100013DE0();
          sub_1008869E8(v52, v60);
          sub_1008869E8(v64, v53);
          v50 = &qword_100CC8178;
          goto LABEL_21;
        }

        sub_1000211F0();
        v47 = sub_100018800();
        sub_1000180EC(v47, v48);
        v49 = sub_10000EB30();
        (v36)(v49);
        sub_1008869E8(v64, type metadata accessor for WeatherDataRelevancy);
      }

      v50 = &qword_100CE07B8;
LABEL_21:
      sub_1000180EC(v37, v50);
      goto LABEL_22;
    }

    sub_1000180EC(v0 + v33, &qword_100CC8178);
    (*(v17 + 8))(v0, v15);
  }

  sub_1000180EC(v27, &qword_100CE07C0);
  return 0;
}

uint64_t sub_1008839BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000100AE2970 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E6176656C6572 && a2 == 0xE900000000000079)
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

uint64_t sub_100883A94(char a1)
{
  if (a1)
  {
    return 0x636E6176656C6572;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_100883AD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6873657266 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646568636163 && a2 == 0xE600000000000000)
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

uint64_t sub_100883B94(char a1)
{
  if (a1)
  {
    return 0x646568636163;
  }

  else
  {
    return 0x6873657266;
  }
}

uint64_t sub_100883BC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C696166 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000)
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

uint64_t sub_100883CCC(char a1)
{
  if (!a1)
  {
    return 0x64656C696166;
  }

  if (a1 == 1)
  {
    return 0x676E6964616F6CLL;
  }

  return 0x646564616F6CLL;
}

uint64_t sub_100883D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008839BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100883D4C(uint64_t a1)
{
  v2 = sub_100886B98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100883D88(uint64_t a1)
{
  v2 = sub_100886B98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100883DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100883AD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100883DF4(uint64_t a1)
{
  v2 = sub_100886B44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100883E30(uint64_t a1)
{
  v2 = sub_100886B44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100883E6C(uint64_t a1)
{
  v2 = sub_100886BEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100883EA8(uint64_t a1)
{
  v2 = sub_100886BEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100883EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100883BC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100883F14(uint64_t a1)
{
  v2 = sub_100886C40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100883F50(uint64_t a1)
{
  v2 = sub_100886C40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100883F8C(uint64_t a1)
{
  v2 = sub_100886D3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100883FC8(uint64_t a1)
{
  v2 = sub_100886D3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100884004(uint64_t a1)
{
  v2 = sub_100886C94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100884040(uint64_t a1)
{
  v2 = sub_100886C94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10088407C(uint64_t a1)
{
  v2 = sub_100886CE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008840B8(uint64_t a1)
{
  v2 = sub_100886CE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008840F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1635017060 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x53676E6968636163 && a2 == 0xEC00000065746174;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6974736974617473 && a2 == 0xEA00000000007363;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073)
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

uint64_t sub_1008842F0(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 1635017060;
      break;
    case 3:
      result = 0x53676E6968636163;
      break;
    case 4:
      result = 0x6974736974617473;
      break;
    case 5:
      result = 0x656469727265766FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1008843B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008840F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008843D8(uint64_t a1)
{
  v2 = sub_100886AF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100884414(uint64_t a1)
{
  v2 = sub_100886AF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100884454(void *a1)
{
  v3 = sub_10022C350(&qword_100CE07F8);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v20[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_100886AF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for WeatherData(0);
    sub_100017810();
    type metadata accessor for Locale();
    sub_10002342C();
    sub_1008869A0(v9, v10);
    sub_10003BC20();
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20[13] = 2;
    type metadata accessor for WeatherDataModel();
    sub_100020C40();
    sub_1008869A0(v11, v12);
    sub_10003BC20();
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20[12] = 3;
    type metadata accessor for WeatherData.CachingState(0);
    sub_100024BA4();
    sub_1008869A0(v13, v14);
    sub_10003BC20();
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20[11] = 4;
    type metadata accessor for WeatherData.WeatherStatisticsState(0);
    sub_10003C9D0();
    sub_1008869A0(v15, v16);
    sub_10003BC20();
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20[10] = 5;
    type metadata accessor for WeatherDataOverrides();
    sub_100069BC8();
    sub_1008869A0(v17, v18);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_100884730()
{
  sub_10000E8AC();
  v3 = v2;
  v4 = sub_10022C350(&qword_100CA75C8);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v6 = sub_1000038CC();
  type metadata accessor for WeatherData.WeatherStatisticsState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v8 = sub_1000038CC();
  type metadata accessor for WeatherData.CachingState(v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v37 = type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v34 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = sub_10022C350(&qword_100CAA9F0);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  sub_100021D38();
  v35 = sub_10022C350(&qword_100CE07C8);
  sub_1000037C4();
  v18 = v17;
  sub_100003828();
  __chkstk_darwin(v19);
  sub_100014230();
  v36 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000037D8();
  v38 = (v22 - v21);
  sub_1000161C0(v3, v3[3]);
  sub_100886AF0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100006F14(v3);
  }

  else
  {
    *v38 = KeyedDecodingContainer.decode(_:forKey:)();
    v38[1] = v23;
    type metadata accessor for Locale();
    sub_100017810();
    sub_10002342C();
    sub_1008869A0(v24, v25);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100051BBC();
    sub_100020C40();
    sub_1008869A0(v26, v27);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v34 + 32))(v38 + *(v36 + 24), v14, v37);
    sub_100024BA4();
    sub_1008869A0(v28, v29);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100010E24();
    sub_100886A98();
    sub_10003C9D0();
    sub_1008869A0(v30, v31);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001D020();
    sub_100886A98();
    type metadata accessor for WeatherDataOverrides();
    sub_100069BC8();
    sub_1008869A0(v32, v33);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v18 + 8))(v1, v35);
    sub_100051BBC();
    sub_100886A40();
    sub_100006F14(v3);
    sub_1008869E8(v38, type metadata accessor for WeatherData);
  }

  sub_10000C8F4();
}

void sub_100884E44()
{
  sub_10000E8AC();
  v47 = v1;
  v45 = v0;
  v5 = v4;
  sub_10022C350(&qword_100CE0850);
  sub_1000037C4();
  v42 = v7;
  v43 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v44 = v9;
  v10 = sub_10022C350(&qword_100CC8178);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v48 = v12;
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  v40 = v14;
  v41 = v13;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v46 = v16 - v15;
  v39 = sub_10022C350(&qword_100CE0858);
  sub_1000037C4();
  v18 = v17;
  sub_100003828();
  __chkstk_darwin(v19);
  sub_100014230();
  v20 = type metadata accessor for WeatherData.CachingState(0);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_1000037D8();
  sub_1000426CC();
  v22 = sub_10022C350(&qword_100CE0860);
  sub_1000037C4();
  v24 = v23;
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v39 - v26;
  sub_1000161C0(v5, v5[3]);
  sub_100886B44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10000CF88();
  sub_100886A40();
  v28 = sub_10022C350(&qword_100CAC710);
  if (sub_100024D10(v2, 1, v28) == 1)
  {
    sub_100886BEC();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v18 + 8))(v3, v39);
    (*(v24 + 8))(v27, v22);
  }

  else
  {
    v29 = v40;
    v30 = v41;
    (*(v40 + 32))(v46, v2, v41);
    sub_100051BBC();
    sub_100886B98();
    v31 = v44;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10004EC54();
    sub_1008869A0(v32, v33);
    v34 = v43;
    v35 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v35)
    {
      (*(v42 + 8))(v31, v34);
    }

    else
    {
      type metadata accessor for WeatherDataRelevancy();
      sub_100017058();
      sub_1008869A0(v36, v37);
      v38 = v44;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      (*(v42 + 8))(v38, v34);
    }

    sub_1000180EC(v48, &qword_100CC8178);
    (*(v29 + 8))(v46, v30);
    (*(v24 + 8))(v27, v22);
  }

  sub_10000C8F4();
}

void sub_100885324()
{
  sub_10000E8AC();
  v69 = v0;
  v2 = v1;
  v65 = v3;
  v68 = sub_10022C350(&qword_100CE0818);
  sub_1000037C4();
  v62 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v64 = v6;
  v66 = sub_10022C350(&qword_100CE0820);
  sub_1000037C4();
  v61 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v63 = v9;
  v10 = sub_10022C350(&qword_100CE0828);
  sub_1000037C4();
  v67 = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  v15 = type metadata accessor for WeatherData.CachingState(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_100003C38();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  sub_1000161C0(v2, v2[3]);
  sub_100886B44();
  v23 = v69;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    v69 = v15;
    v58 = v22;
    v59 = v19;
    v24 = v68;
    v25 = KeyedDecodingContainer.allKeys.getter();
    sub_100618E80(v25, 0);
    v60 = v2;
    if (v27 != v26 >> 1)
    {
      sub_100021758();
      if (v30 == v31)
      {
        __break(1u);
        return;
      }

      v70 = *(v29 + v28);
      v32 = sub_100618E7C(v28 + 1);
      v34 = v33;
      v36 = v35;
      swift_unknownObjectRelease();
      v37 = v66;
      if (v34 == v36 >> 1)
      {
        if (v70)
        {
          sub_100886B98();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v69 = v14;
          type metadata accessor for Date();
          sub_10004EC54();
          sub_1008869A0(v45, v46);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v66 = v32;
          v63 = sub_10022C350(&qword_100CAC710);
          type metadata accessor for WeatherDataRelevancy();
          sub_100017058();
          sub_1008869A0(v51, v52);
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v53 = sub_10003A3F8();
          v54(v53, v24);
          v55 = sub_100018800();
          v56(v55);
          sub_10001B350(v59, 0, 1, v63);
          sub_100010E24();
          sub_100886A98();
        }

        else
        {
          sub_100886BEC();
          v42 = v63;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v43 = v10;
          v44 = v67;
          swift_unknownObjectRelease();
          (*(v61 + 8))(v42, v37);
          (*(v44 + 8))(v14, v43);
          sub_10022C350(&qword_100CAC710);
          sub_100003934();
          sub_10001B350(v47, v48, v49, v50);
        }

        v57 = v60;
        sub_100010E24();
        sub_100886A98();
        v41 = v57;
        goto LABEL_10;
      }
    }

    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_10022C350(&qword_100CA7610);
    *v40 = v69;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v67 + 8))(v14, v10);
    v2 = v60;
  }

  v41 = v2;
LABEL_10:
  sub_100006F14(v41);
  sub_10000C8F4();
}

void sub_100885A04()
{
  sub_10000E8AC();
  v57 = v1;
  v54 = v0;
  v4 = v3;
  sub_10022C350(&qword_100CE08B8);
  sub_1000037C4();
  v52 = v6;
  v53 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v49 = v8;
  sub_1000038CC();
  type metadata accessor for WeatherStatisticsModel();
  sub_1000037C4();
  v50 = v10;
  v51 = v9;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v48 = v12 - v11;
  sub_10022C350(&qword_100CE08C0);
  sub_1000037C4();
  v46 = v14;
  v47 = v13;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = sub_10022C350(&qword_100CE08C8);
  sub_1000037C4();
  v45 = v19;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  sub_100021D38();
  sub_10022C350(&qword_100CE08D0);
  sub_1000037C4();
  v55 = v25;
  v56 = v24;
  sub_100003828();
  __chkstk_darwin(v26);
  sub_100014230();
  sub_1000161C0(v4, v4[3]);
  sub_100886C40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100015070();
  sub_100886A40();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = v50;
      v28 = v51;
      v30 = v48;
      (*(v50 + 32))(v48, v2, v51);
      sub_100886C94();
      v31 = v49;
      v32 = v56;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100017F70();
      sub_1008869A0(v33, v34);
      v35 = v53;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v52 + 8))(v31, v35);
      (*(v29 + 8))(v30, v28);
      v36 = sub_100011890();
      v37(v36, v32);
    }

    else
    {
      sub_100017810();
      sub_100886CE8();
      v41 = v56;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v46 + 8))(v17, v47);
      v42 = sub_100011890();
      v43(v42, v41);
    }
  }

  else
  {
    sub_100886D3C();
    v38 = v56;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v45 + 8))(v22, v18);
    v39 = sub_100011890();
    v40(v39, v38);
  }

  sub_10000C8F4();
}

void sub_100885ED0()
{
  sub_10000E8AC();
  v87 = v0;
  v3 = v2;
  v81 = v4;
  sub_10022C350(&qword_100CE0870);
  sub_1000037C4();
  v83 = v6;
  v84 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v82 = v8;
  v78 = sub_10022C350(&qword_100CE0878);
  sub_1000037C4();
  v76 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v80 = v11;
  v77 = sub_10022C350(&qword_100CE0880);
  sub_1000037C4();
  v75 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  v79 = v14;
  sub_10022C350(&qword_100CE0888);
  sub_1000037C4();
  v85 = v16;
  v86 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_100021D38();
  v18 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_100003C38();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v25 = (&v70 - v24);
  __chkstk_darwin(v26);
  v28 = &v70 - v27;
  sub_1000161C0(v3, v3[3]);
  sub_100886C40();
  v29 = v87;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    goto LABEL_12;
  }

  v71 = v25;
  v72 = v22;
  v73 = v28;
  v74 = v18;
  v87 = v3;
  v30 = v85;
  v31 = v86;
  v32 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v32, 0);
  if (v34 != v33 >> 1)
  {
    sub_100021758();
    if (v39 == v40)
    {
      __break(1u);
      return;
    }

    v41 = *(v38 + v37);
    v42 = sub_100618E7C(v37 + 1);
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    v70 = v42;
    v47 = v44 == v46 >> 1;
    v48 = v83;
    v49 = v84;
    if (!v47)
    {
      v35 = v30;
      v36 = v74;
      goto LABEL_11;
    }

    if (v41)
    {
      if (v41 == 1)
      {
        sub_100017810();
        sub_100886CE8();
        v50 = v80;
        sub_100052188();
        swift_unknownObjectRelease();
        (*(v76 + 8))(v50, v78);
        v51 = sub_100049E2C();
        v52(v51);
        swift_storeEnumTagMultiPayload();
LABEL_17:
        sub_10001D020();
        sub_100003940();
        sub_100886A98();
        v56 = v87;
        goto LABEL_13;
      }

      sub_100886C94();
      sub_100052188();
      type metadata accessor for WeatherStatisticsModel();
      sub_100017F70();
      sub_1008869A0(v58, v59);
      v60 = v82;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      (*(v48 + 8))(v60, v49);
      v68 = sub_100049E2C();
      v69(v68);
      swift_storeEnumTagMultiPayload();
      sub_10001D020();
    }

    else
    {
      sub_100886D3C();
      sub_100052188();
      v57 = KeyedDecodingContainer.decode(_:forKey:)();
      v62 = v61;
      swift_unknownObjectRelease();
      v63 = sub_100071EB8();
      v64(v63);
      v65 = sub_100049E2C();
      v66(v65);
      v67 = v71;
      *v71 = v57;
      v67[1] = v62;
      swift_storeEnumTagMultiPayload();
      sub_10001D020();
    }

    sub_100886A98();
    goto LABEL_17;
  }

  v35 = v30;
  v36 = v74;
LABEL_11:
  v53 = type metadata accessor for DecodingError();
  swift_allocError();
  v55 = v54;
  sub_10022C350(&qword_100CA7610);
  *v55 = v36;
  KeyedDecodingContainer.codingPath.getter();
  sub_10000E98C();
  (*(*(v53 - 8) + 104))(v55, enum case for DecodingError.typeMismatch(_:), v53);
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v35 + 8))(v1, v31);
  v3 = v87;
LABEL_12:
  v56 = v3;
LABEL_13:
  sub_100006F14(v56);
  sub_10000C8F4();
}

uint64_t sub_100886690@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_1000426CC();
  v4 = sub_10022C350(&qword_100CE08E0);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v17[-v8];
  sub_100015070();
  sub_100886A40();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v12 = *v1;
    v13 = v1[1];
    sub_10022C350(&qword_100CA36F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = 0x726F727265;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v12;
    *(inited + 56) = v13;
    Dictionary.init(dictionaryLiteral:)();
LABEL_6:
    ShortDescription.init(name:_:)();
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    Dictionary.init(dictionaryLiteral:)();
    goto LABEL_6;
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  sub_100004D04();
  sub_1008869E8(v1, v11);
LABEL_7:
  a1[3] = v4;
  a1[4] = sub_100886D90();
  v15 = sub_100042FB0(a1);
  return (*(v6 + 32))(v15, v9, v4);
}

uint64_t sub_1008868EC()
{
  sub_1008869A0(&qword_100CE08F0, type metadata accessor for WeatherData.WeatherStatisticsState);

  return ShortDescribable.description.getter();
}

uint64_t sub_1008869A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008869E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100886A40()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100886A98()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_100886AF0()
{
  result = qword_100CE07D0;
  if (!qword_100CE07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE07D0);
  }

  return result;
}

unint64_t sub_100886B44()
{
  result = qword_100CE0830;
  if (!qword_100CE0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0830);
  }

  return result;
}

unint64_t sub_100886B98()
{
  result = qword_100CE0838;
  if (!qword_100CE0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0838);
  }

  return result;
}

unint64_t sub_100886BEC()
{
  result = qword_100CE0848;
  if (!qword_100CE0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0848);
  }

  return result;
}

unint64_t sub_100886C40()
{
  result = qword_100CE0890;
  if (!qword_100CE0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0890);
  }

  return result;
}

unint64_t sub_100886C94()
{
  result = qword_100CE0898;
  if (!qword_100CE0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0898);
  }

  return result;
}

unint64_t sub_100886CE8()
{
  result = qword_100CE08A8;
  if (!qword_100CE08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE08A8);
  }

  return result;
}

unint64_t sub_100886D3C()
{
  result = qword_100CE08B0;
  if (!qword_100CE08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE08B0);
  }

  return result;
}

unint64_t sub_100886D90()
{
  result = qword_100CE08E8;
  if (!qword_100CE08E8)
  {
    sub_10022E824(&qword_100CE08E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE08E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherData.WeatherStatisticsState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_100886EF0(_BYTE *result, int a2, int a3)
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

_BYTE *sub_100886FBC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100887178()
{
  result = qword_100CE08F8;
  if (!qword_100CE08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE08F8);
  }

  return result;
}

unint64_t sub_1008871D0()
{
  result = qword_100CE0900;
  if (!qword_100CE0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0900);
  }

  return result;
}

unint64_t sub_100887228()
{
  result = qword_100CE0908;
  if (!qword_100CE0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0908);
  }

  return result;
}

unint64_t sub_100887280()
{
  result = qword_100CE0910;
  if (!qword_100CE0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0910);
  }

  return result;
}

unint64_t sub_1008872D8()
{
  result = qword_100CE0918;
  if (!qword_100CE0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0918);
  }

  return result;
}

unint64_t sub_100887330()
{
  result = qword_100CE0920;
  if (!qword_100CE0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0920);
  }

  return result;
}

unint64_t sub_100887388()
{
  result = qword_100CE0928;
  if (!qword_100CE0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0928);
  }

  return result;
}

unint64_t sub_1008873E0()
{
  result = qword_100CE0930;
  if (!qword_100CE0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0930);
  }

  return result;
}

unint64_t sub_100887438()
{
  result = qword_100CE0938;
  if (!qword_100CE0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0938);
  }

  return result;
}

unint64_t sub_100887490()
{
  result = qword_100CE0940;
  if (!qword_100CE0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0940);
  }

  return result;
}

unint64_t sub_1008874E8()
{
  result = qword_100CE0948;
  if (!qword_100CE0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0948);
  }

  return result;
}

unint64_t sub_100887540()
{
  result = qword_100CE0950;
  if (!qword_100CE0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0950);
  }

  return result;
}

unint64_t sub_100887598()
{
  result = qword_100CE0958;
  if (!qword_100CE0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0958);
  }

  return result;
}

unint64_t sub_1008875F0()
{
  result = qword_100CE0960;
  if (!qword_100CE0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0960);
  }

  return result;
}

unint64_t sub_100887648()
{
  result = qword_100CE0968;
  if (!qword_100CE0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0968);
  }

  return result;
}

unint64_t sub_1008876A0()
{
  result = qword_100CE0970;
  if (!qword_100CE0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0970);
  }

  return result;
}

unint64_t sub_1008876F8()
{
  result = qword_100CE0978;
  if (!qword_100CE0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0978);
  }

  return result;
}

unint64_t sub_100887750()
{
  result = qword_100CE0980;
  if (!qword_100CE0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0980);
  }

  return result;
}

unint64_t sub_1008877A8()
{
  result = qword_100CE0988;
  if (!qword_100CE0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0988);
  }

  return result;
}

unint64_t sub_100887800()
{
  result = qword_100CE0990;
  if (!qword_100CE0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0990);
  }

  return result;
}

unint64_t sub_100887858()
{
  result = qword_100CE0998;
  if (!qword_100CE0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0998);
  }

  return result;
}

unint64_t sub_1008878B0()
{
  result = qword_100CE09A0[0];
  if (!qword_100CE09A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CE09A0);
  }

  return result;
}

uint64_t sub_10088791C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationViewComponentContainerDescriptor();
  v3 = sub_100588E2C(v2);
  if (v3)
  {
    sub_1001B3B30(v3 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, a1);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for LocationComponentContainerViewModel();

  return sub_10001B350(a1, v4, 1, v5);
}

uint64_t sub_1008879F0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v58 = a3;
  v59 = a4;
  v46 = a2;
  v47 = a1;
  v56 = a7;
  v57 = a2 & 1;
  v45 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v44 = v9;
  __chkstk_darwin(v10);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Optional();
  v73 = a6;
  sub_10000898C();
  swift_getWitnessTable();
  v12 = type metadata accessor for ZStack();
  sub_1000037C4();
  v53 = v13;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  type metadata accessor for PlaceholderContentView();
  v17 = type metadata accessor for ModifiedContent();
  sub_100006A08();
  WitnessTable = swift_getWitnessTable();
  sub_10001D038();
  v71 = swift_getWitnessTable();
  v72 = &protocol witness table for _OpacityEffect;
  sub_100007E30();
  v19 = swift_getWitnessTable();
  v67 = v12;
  v68 = v17;
  v49 = v17;
  v51 = WitnessTable;
  v69 = WitnessTable;
  v70 = v19;
  v48 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1000037C4();
  v50 = v21;
  __chkstk_darwin(v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v42 - v26;
  v54 = a5;
  v55 = a6;
  v60 = a5;
  v61 = a6;
  v28 = v47;
  v62 = v47;
  v63 = v57;
  LOBYTE(a5) = v46;
  v29 = (v46 >> 8) & 1;
  v64 = BYTE1(v46) & 1;
  v65 = v58;
  v66 = v59;
  j___s7SwiftUI9AlignmentV6centerACvgZ();
  v52 = v16;
  ZStack.init(alignment:content:)();

  if ((a5 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v31 = v43;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v44 + 8))(v31, v45);
  }

  __chkstk_darwin(v32);
  v33 = v55;
  *(&v42 - 6) = v54;
  *(&v42 - 5) = v33;
  *(&v42 - 4) = v28;
  *(&v42 - 24) = v57;
  *(&v42 - 23) = v29;
  v34 = v59;
  *(&v42 - 2) = v58;
  *(&v42 - 1) = v34;
  v35 = swift_checkMetadataState();
  v36 = v51;
  v37 = v48;
  v38 = v52;
  View.animation<A>(_:body:)();

  (*(v53 + 8))(v38, v12);
  v67 = v12;
  v68 = v35;
  v69 = v36;
  v70 = v37;
  sub_100010E3C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v24, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v40 = *(v50 + 8);
  v40(v24, OpaqueTypeMetadata2);
  sub_1000833D8(v27, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v40)(v27, OpaqueTypeMetadata2);
}

uint64_t sub_100887F10@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void (*a3)(__n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a6;
  v40 = a7;
  v36 = a4;
  v37 = a3;
  v35 = *(a5 - 8);
  __chkstk_darwin(a1);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v33 - v12;
  v34 = type metadata accessor for EnvironmentValues();
  v14 = *(v34 - 8);
  __chkstk_darwin(v34);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Optional();
  v38 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = v33 - v22;
  if ((a2 & 0x100) == 0)
  {
    goto LABEL_5;
  }

  if ((a2 & 1) == 0)
  {
    v33[1] = static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v34);
  }

  v25 = sub_100611110();

  if ((v25 & 1) == 0)
  {
    v29 = 1;
    v26 = v39;
  }

  else
  {
LABEL_5:
    v37(v21);
    v26 = v39;
    sub_1000833D8(v10, a5, v39);
    v27 = v35;
    v28 = *(v35 + 8);
    v28(v10, a5);
    sub_1000833D8(v13, a5, v26);
    v28(v13, a5);
    (*(v27 + 32))(v19, v10, a5);
    v29 = 0;
  }

  sub_10001B350(v19, v29, 1, a5);
  sub_1003E7FD4(v19, v23);
  v30 = *(v38 + 8);
  v30(v19, v17);
  v41 = v26;
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v23, v17, WitnessTable);
  return (v30)(v23, v17);
}

uint64_t sub_1008882D4@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v25 = a1;
  v26 = a4;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Optional();
  v29 = a3;
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for PlaceholderContentView();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v24 = v6;
    v18 = v17;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v24);
  }

  sub_100611110();

  WitnessTable = swift_getWitnessTable();
  View.opacity(_:)();
  v27 = WitnessTable;
  v28 = &protocol witness table for _OpacityEffect;
  v20 = swift_getWitnessTable();
  sub_1000833D8(v13, v10, v20);
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_1000833D8(v16, v10, v20);
  return (v21)(v16, v10);
}

uint64_t sub_10088860C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1008879F0(*v2, v3 | *(v2 + 8), *(v2 + 16), *(v2 + 24), *(a1 + 16), *(a1 + 24), a2);
}

uint64_t sub_100888640@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 41))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100887F10(*(v1 + 32), v2 | *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 16), *(v1 + 24), a1);
}

_BYTE *storeEnumTagSinglePayload for WireframedContentStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100888780()
{
  result = qword_100CE0A28;
  if (!qword_100CE0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0A28);
  }

  return result;
}

uint64_t sub_1008887D4()
{
  sub_1000D60EC(qword_100CE0AF8);

  return ShortDescribable.description.getter();
}

uint64_t sub_10088882C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  if (v7 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v6 + 80);
  v12 = *(*(v5 - 8) + 64);
  v13 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_28:
      if ((v10 & 0x80000000) != 0)
      {
        v25 = (a1 + v11 + 16) & ~v11;
        if (v7 != v14)
        {
          v25 = (v25 + v12 + v13) & ~v13;
          v7 = *(v9 + 84);
          v5 = v8;
        }

        return sub_100024D10(v25, v7, v5);
      }

      else
      {
        v24 = *(a1 + 1);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_28;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v14 + (v23 | v21) + 1;
}

void sub_100888A40(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  v20 = a3 >= v14;
  v21 = a3 - v14;
  if (v21 != 0 && v20)
  {
    if (v18 <= 3)
    {
      v25 = ((v21 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v14 >= a2)
  {
    switch(v22)
    {
      case 1:
        a1[v18] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *&a1[v18] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_49:
        __break(1u);
        break;
      case 4:
        *&a1[v18] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if ((v13 & 0x80000000) != 0)
          {
            v28 = &a1[v15 + 16] & ~v15;
            if (v9 != v14)
            {
              v28 = (v28 + v16 + v17) & ~v17;
              v9 = v12;
              v7 = v10;
            }

            sub_10001B350(v28, a2, v9, v7);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v23 = ~v14 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> v19) + 1;
      if (v18)
      {
        v27 = v23 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        a1[v18] = v24;
        break;
      case 2:
        *&a1[v18] = v24;
        break;
      case 3:
        goto LABEL_49;
      case 4:
        *&a1[v18] = v24;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_100888D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for StatePersistenceData();
  (*(*(a5 - 8) + 32))(&a7[*(v12 + 68)], a3, a5);
  return (*(*(a6 - 8) + 32))(&a7[*(v12 + 72)], a4, a6);
}

unint64_t sub_100888E58()
{
  result = qword_100CE0B80;
  if (!qword_100CE0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0B80);
  }

  return result;
}

uint64_t static LocationWeatherRelevancyInfo.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), v10 = 0, (v9 & 1) != 0))
  {
    v10 = a3 ^ a6 ^ 1;
  }

  return v10 & 1;
}

Swift::Int sub_100888F30(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100888FCC()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100889048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CE0B88);
  __chkstk_darwin(v4);
  v6 = v8 - v5;
  if (a1)
  {
    *v6 = 0;
    v6[8] = 1;
    v8[1] = a1;
    swift_getKeyPath();

    sub_10022C350(&qword_100CE0B90);
    sub_100006F64(&qword_100CE0B98, &qword_100CE0B90);
    sub_100889424();
    ForEach<>.init(_:id:content:)();
    sub_100889478(v6, a2);
    return sub_10001B350(a2, 0, 1, v4);
  }

  else
  {

    return sub_10001B350(a2, 1, 1, v4);
  }
}

uint64_t sub_100889208@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  HIDWORD(v28) = *(a1 + 16);
  v30 = v7;
  v31 = v8;
  sub_10002D5A4();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  (*(v4 + 104))(v6, enum case for Font.TextStyle.caption2(_:), v3);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v4 + 8))(v6, v3);
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_10010CD64(v9, v11, v13 & 1);

  if (HIDWORD(v28) == 1)
  {
    static Color.secondary.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  v19 = Text.foregroundColor(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_10010CD64(v14, v16, v18 & 1);

  v27 = v29;
  *v29 = v19;
  v27[1] = v21;
  *(v27 + 16) = v23 & 1;
  v27[3] = v25;
  return result;
}

unint64_t sub_100889424()
{
  result = qword_100CE0BA0;
  if (!qword_100CE0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0BA0);
  }

  return result;
}

uint64_t sub_100889478(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CE0B88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008894E8()
{
  result = qword_100CE0BA8;
  if (!qword_100CE0BA8)
  {
    sub_10022E824(&qword_100CE0BB0);
    sub_100006F64(&qword_100CE0BB8, &qword_100CE0B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0BA8);
  }

  return result;
}

uint64_t sub_100889598()
{
  type metadata accessor for DemoPresetMiddleware();

  return swift_allocObject();
}

uint64_t sub_1008895CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = swift_allocObject();
  v12[2] = a7;
  v12[3] = a8;
  v12[4] = a5;
  v12[5] = a6;

  sub_10022C350(&qword_100CE1320);
  sub_100892224();
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();
}

uint64_t sub_1008896D8@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  a1();
  v7 = sub_1000053B8();
  v8 = (a4 + *(sub_10022C350(v7) + 36));
  *v8 = a2;
  v8[1] = a3;
  v8[2] = 0;
  v8[3] = 0;
}

uint64_t sub_100889750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_10022C350(a5);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v15 - v12;
  sub_1000302D8(a1, &v15 - v12, a5);
  return a7(v13);
}

void sub_1008897F4()
{
  sub_10000C778();
  v3 = v2;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_100019530();
  sub_10022C350(&qword_100CAD618);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  v9 = sub_100013DF8();
  sub_1000178A4(*(v9 + 32));
  sub_100020B28();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_1000037E8();
    (*(v10 + 32))(v3, v1);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    sub_100017884();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v0, v4);
  }

  sub_10000536C();
}

void sub_10088998C()
{
  sub_10000C778();
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100019530();
  sub_10022C350(&qword_100CE1010);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  v2 = sub_100013DF8();
  sub_1000178A4(*(v2 + 36));
  sub_100020B28();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_100025214();
    sub_10011C0F0(v3, v4, v5);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    sub_100017884();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v7 = sub_1000053B8();
    v8(v7);
  }

  sub_10000536C();
}

void sub_100889B04()
{
  sub_10000C778();
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100019530();
  sub_10022C350(&qword_100CA62E0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  v2 = sub_100013DF8();
  sub_1000178A4(*(v2 + 40));
  sub_100020B28();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_100025214();
    sub_10011C0F0(v3, v4, v5);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    sub_100017884();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v7 = sub_1000053B8();
    v8(v7);
  }

  sub_10000536C();
}

uint64_t sub_100889C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_10022C350(&qword_100CE0FB0) + 36);
  v5 = enum case for ColorScheme.dark(_:);
  v6 = type metadata accessor for ColorScheme();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  sub_10001B350(a2 + v4, 0, 1, v6);
  v7 = sub_10022C350(&qword_100CE0EC8);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

uint64_t sub_100889D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10022C350(&qword_100CE0FE8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v26[-v12];
  v14 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v16 = sub_10022C350(&qword_100CE0ED0);
  (*(*(v16 - 8) + 16))(v13, a1, v16);
  v17 = &v13[*(v11 + 44)];
  *v17 = KeyPath;
  v17[1] = v14;
  v18 = (a2 + *(type metadata accessor for MainView(0) + 44));
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v19, 0);
    (*(v7 + 8))(v9, v6);
    if (v26[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = static Color.black.getter();
    goto LABEL_6;
  }

  if (v19)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = static Color.white.getter();
LABEL_6:
  v22 = v20;
  v23 = swift_getKeyPath();
  sub_10011C0F0(v13, a3, &qword_100CE0FE8);
  result = sub_10022C350(&qword_100CE0FD0);
  v25 = (a3 + *(result + 36));
  *v25 = v23;
  v25[1] = v22;
  return result;
}

uint64_t sub_10088A010(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CE10D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ContentSizeCategory();
  v11 = *(*(v10 - 8) + 16);
  v11(v9, a1, v10);
  sub_10001B350(v9, 0, 1, v10);
  v11(v6, a2, v10);
  sub_10001B350(v6, 0, 1, v10);
  sub_10088A180(v9, v6);
  sub_1000180EC(v6, &qword_100CE10D8);
  return sub_1000180EC(v9, &qword_100CE10D8);
}

uint64_t sub_10088A180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentSizeCategory();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10022C350(&qword_100CE10D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v19[-v9];
  v11 = sub_10022C350(&qword_100CE10E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v19[-v12];
  v15 = *(v14 + 56);
  sub_1000302D8(a1, &v19[-v12], &qword_100CE10D8);
  sub_1000302D8(a2, &v13[v15], &qword_100CE10D8);
  if (sub_100024D10(v13, 1, v4) == 1)
  {
    if (sub_100024D10(&v13[v15], 1, v4) == 1)
    {
      return sub_1000180EC(v13, &qword_100CE10D8);
    }
  }

  else
  {
    sub_1000302D8(v13, v10, &qword_100CE10D8);
    if (sub_100024D10(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_100061520(&qword_100CE1038, &type metadata accessor for ContentSizeCategory);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      result = sub_1000180EC(v13, &qword_100CE10D8);
      if (v17)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v10, v4);
  }

  sub_1000180EC(v13, &qword_100CE10E0);
LABEL_7:
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  __dst[0] = 1;
  v19[0] = 1;
  v19[56] = 1;
  v19[48] = 1;
  v19[40] = 1;
  v19[32] = 1;
  v19[24] = 1;
  swift_beginAccess();
  memcpy(__dst, &xmmword_100D90930, 0xA1uLL);
  xmmword_100D90930 = 0u;
  unk_100D90940 = 0u;
  xmmword_100D90950 = 0u;
  unk_100D90960 = 0u;
  byte_100D90970 = 1;
  qword_100D90978 = 0;
  byte_100D90980 = 1;
  qword_100D90988 = 0;
  byte_100D90990 = 1;
  qword_100D90998 = 0;
  byte_100D909A0 = 1;
  qword_100D909A8 = 0;
  byte_100D909B0 = 1;
  qword_100D909B8 = 0;
  byte_100D909C0 = 1;
  qword_100D909C8 = 0;
  byte_100D909D0 = 1;
  return sub_100420BB8(__dst);
}

uint64_t sub_10088A554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegibilityWeight();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10022C350(&qword_100CDCD58);
  __chkstk_darwin(v8 - 8);
  v10 = &v19[-v9];
  v11 = sub_10022C350(&qword_100CE10D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v19[-v12];
  v15 = *(v14 + 56);
  sub_1000302D8(a1, &v19[-v12], &qword_100CDCD58);
  sub_1000302D8(a2, &v13[v15], &qword_100CDCD58);
  if (sub_100024D10(v13, 1, v4) == 1)
  {
    if (sub_100024D10(&v13[v15], 1, v4) == 1)
    {
      return sub_1000180EC(v13, &qword_100CDCD58);
    }
  }

  else
  {
    sub_1000302D8(v13, v10, &qword_100CDCD58);
    if (sub_100024D10(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_100061520(&qword_100CE1048, &type metadata accessor for LegibilityWeight);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      result = sub_1000180EC(v13, &qword_100CDCD58);
      if (v17)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v10, v4);
  }

  sub_1000180EC(v13, &qword_100CE10D0);
LABEL_7:
  if (qword_100CA2658 != -1)
  {
    swift_once();
  }

  __dst[0] = 1;
  v19[0] = 1;
  v19[56] = 1;
  v19[48] = 1;
  v19[40] = 1;
  v19[32] = 1;
  v19[24] = 1;
  swift_beginAccess();
  memcpy(__dst, &xmmword_100D90930, 0xA1uLL);
  xmmword_100D90930 = 0u;
  unk_100D90940 = 0u;
  xmmword_100D90950 = 0u;
  unk_100D90960 = 0u;
  byte_100D90970 = 1;
  qword_100D90978 = 0;
  byte_100D90980 = 1;
  qword_100D90988 = 0;
  byte_100D90990 = 1;
  qword_100D90998 = 0;
  byte_100D909A0 = 1;
  qword_100D909A8 = 0;
  byte_100D909B0 = 1;
  qword_100D909B8 = 0;
  byte_100D909C0 = 1;
  qword_100D909C8 = 0;
  byte_100D909D0 = 1;
  return sub_100420BB8(__dst);
}

uint64_t sub_10088A928()
{
  type metadata accessor for MainView(0);

  sub_10022C350(&qword_100CE1068);
  return State.wrappedValue.setter();
}

uint64_t sub_10088AA24(void *a1)
{
  v2 = a1[1];
  sub_100035B30((a1 + 4), v7);
  v3 = a1[2];
  v4 = a1[3];
  v6 = v2;
  v7[5] = v4;
  v7[6] = v3;

  static Color.clear.getter();
  sub_1000A49E4();
  View.presentationBackground<A>(_:)();

  return sub_1008922F0(&v6);
}

uint64_t sub_10088AAD4@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_10022C350(&unk_100CE1220);
  *(a1 + 104) = sub_10071E9C0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 24) = v2;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, &v4, &unk_100CAF270);
  if (v5)
  {
    sub_100013188(&v4, a1 + 48);
    *(a1 + 32) = sub_1008940C4;
    *(a1 + 40) = 0;
    result = Dictionary.init(dictionaryLiteral:)();
    *(a1 + 88) = _swiftEmptyArrayStorage;
    *(a1 + 96) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10088ABFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = static Color.clear.getter();

  sub_10022C350(&unk_100CE0F40);
  sub_10006768C(&qword_100CA4CD0, &unk_100CE0F40);
  v5 = ObservedObject.init(wrappedValue:)();
  v7 = v6;
  sub_100891688(v2, v11);
  v8 = swift_allocObject();
  memcpy((v8 + 16), v11, 0x60uLL);
  result = static Alignment.center.getter();
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = sub_100891A04;
  a1[4] = v8;
  a1[5] = result;
  a1[6] = v10;
  return result;
}

uint64_t sub_10088AD0C(_BYTE *a1, uint64_t *a2)
{
  if (*a1 == 2)
  {
    sub_100891688(a2, __src);
    v3 = swift_allocObject();
    memcpy((v3 + 16), __src, 0x60uLL);
    __src[0] = sub_100891EAC;
    __src[1] = v3;
    v15 = 0;
    sub_10022C350(&qword_100CE11D8);
    sub_10006768C(&qword_100CE11E0, &qword_100CE11D8);
    sub_100891DE0();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    sub_100035B30((a2 + 2), &v18);
    sub_100035B30((a2 + 7), v19);
    sub_100035B30((a2 + 2), __src);
    v7 = sub_10002D7F8(__src, __src[3]);
    v8 = __chkstk_darwin(v7);
    v10 = (__src - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    swift_retain_n();
    v13 = sub_100891C8C(v12, v5);
    sub_100006F14(__src);
    v17[0] = v5;
    v17[1] = v6;
    v16 = v13;
    type metadata accessor for WeatherSplitViewBindingModel(0);
    State.init(wrappedValue:)();
    v19[5] = __src[0];
    v19[6] = __src[1];
    sub_100891DA8(v17, __src);
    v15 = 1;
    sub_10022C350(&qword_100CE11D8);
    sub_10006768C(&qword_100CE11E0, &qword_100CE11D8);
    sub_100891DE0();
    _ConditionalContent<>.init(storage:)();
    return sub_100891E34(v17);
  }
}

uint64_t sub_10088AFE0()
{
  sub_10022C350(&qword_100CE11F0);
  sub_100891EBC();
  return NavigationStack.init<>(root:)();
}

void *sub_10088B050@<X0>(char *a1@<X8>)
{
  __src[10] = sub_10071E9C0;
  __src[11] = 0;
  LOBYTE(__src[12]) = 0;
  __src[0] = sub_10022C350(&unk_100CE1220);
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, __dst, &unk_100CAF270);
  if (*&__dst[24])
  {
    sub_100013188(__dst, &__src[3]);
    __src[1] = sub_1008940C4;
    __src[2] = 0;
    v3 = Dictionary.init(dictionaryLiteral:)();
    __src[8] = _swiftEmptyArrayStorage;
    __src[9] = v3;
    memcpy(__dst, __src, sizeof(__dst));
    KeyPath = swift_getKeyPath();
    v5 = &a1[*(sub_10022C350(&qword_100CE11F0) + 36)];
    v6 = *(sub_10022C350(&qword_100CDE310) + 28);
    sub_10088B21C(v5 + v6);
    v7 = type metadata accessor for TargetWindowSizeClass();
    sub_10001B350(v5 + v6, 0, 1, v7);
    *v5 = KeyPath;
    return memcpy(a1, __dst, 0x61uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10088B21C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA22F8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000703C(v2, qword_100CC96F8);
  (*(v3 + 104))(v5, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:), v2);
  LOBYTE(v6) = sub_1001497E4(v6, v5);
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    GeometryProxy.size.getter();
    GeometryProxy.safeAreaInsets.getter();
    GeometryProxy.safeAreaInsets.getter();
    GeometryProxy.size.getter();
    GeometryProxy.safeAreaInsets.getter();
    GeometryProxy.safeAreaInsets.getter();
    v7 = CGSize.isLandscape.getter();
    v8 = type metadata accessor for TargetWindowSizeClass();
    if (v7)
    {
      v9 = &enum case for TargetWindowSizeClass.landscapeRegular(_:);
    }

    else
    {
      v9 = &enum case for TargetWindowSizeClass.portraitRegular(_:);
    }

    return (*(*(v8 - 8) + 104))(a1, *v9, v8);
  }

  else
  {
    v10 = enum case for TargetWindowSizeClass.compact(_:);
    v11 = type metadata accessor for TargetWindowSizeClass();
    return (*(*(v11 - 8) + 104))(a1, v10, v11);
  }
}

uint64_t sub_10088B440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095730();
  v7 = *v6;
  sub_1000A2E84(v6);
  v8 = sub_10022C350(&qword_100CE1508);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_10022C350(&qword_100CE1510);
  *(a2 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_10088B538@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for BalancedNavigationSplitViewStyle();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE13C8);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v28 = sub_10022C350(&qword_100CE13D0);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v28 - v8;
  Solarium.init()();
  v33 = v1;
  v32 = v1;
  sub_10022C350(&qword_100CE13D8);
  sub_10006768C(&qword_100CE13E0, &qword_100CE13D8);
  StaticIf<>.init(_:then:else:)();
  v10 = &v7[*(sub_10022C350(&qword_100CE13E8) + 36)];
  *v10 = swift_getKeyPath();
  sub_10022C350(&unk_100CE1000);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for RecordPinnedMapAnimatingViewModifier();
  v12 = v10 + *(v11 + 20);
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = v10 + *(v11 + 24);
  LOBYTE(v38) = -2;
  sub_10022C350(&qword_100CE13F0);
  State.init(wrappedValue:)();
  v14 = v35;
  *v13 = v34;
  *(v13 + 1) = v14;
  v15 = *(v1 + 104);
  v34 = *(v1 + 96);
  v35 = v15;

  sub_10022C350(&qword_100CE13F8);
  State.wrappedValue.getter();
  v16 = v38;
  sub_10022C350(&unk_100CE0F40);
  sub_10006768C(&qword_100CA4CD0, &unk_100CE0F40);
  v17 = ObservedObject.init(wrappedValue:)();
  v19 = v18;
  v20 = &v7[*(sub_10022C350(&qword_100CE1400) + 36)];
  *v20 = v17;
  v20[1] = v19;
  v20[2] = v16;
  v21 = &v7[*(v5 + 36)];
  *v21 = sub_10088BAB0;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = 0;
  static NavigationSplitViewStyle<>.balanced.getter();
  v22 = sub_100892788();
  v23 = sub_100061520(&qword_100CE1440, &type metadata accessor for BalancedNavigationSplitViewStyle);
  View.navigationSplitViewStyle<A>(_:)();
  (*(v29 + 8))(v4, v2);
  sub_1000180EC(v7, &qword_100CE13C8);
  Solarium.init()();
  sub_10022C350(&qword_100CE1448);
  v34 = v5;
  v35 = v2;
  v36 = v22;
  v37 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v28;
  v34 = v28;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = v31;
  View.staticIf<A, B>(_:then:)();
  (*(v30 + 8))(v9, v25);
  LOBYTE(v22) = static Edge.Set.all.getter();
  result = sub_10022C350(&qword_100CE1450);
  *(v26 + *(result + 36)) = v22;
  return result;
}

void sub_10088BAB0()
{
  if (DeviceIsSlow())
  {
    sub_10000C70C(0, &qword_100CE1458);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_10022C350(&qword_100CE14C0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100A2C3F0;
    *(v1 + 32) = sub_10000C70C(0, &qword_100CE14C8);
    sub_10022C350(&qword_100CE14D0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v3 = [ObjCClassFromMetadata appearanceWhenContainedInInstancesOfClasses:isa];

    sub_100891A0C(_swiftEmptyArrayStorage, v3);
  }
}

uint64_t sub_10088BBD8()
{
  sub_10022C350(&qword_100CE13D0);
  sub_10022E824(&qword_100CE13C8);
  type metadata accessor for BalancedNavigationSplitViewStyle();
  sub_100892788();
  sub_100061520(&qword_100CE1440, &type metadata accessor for BalancedNavigationSplitViewStyle);
  swift_getOpaqueTypeConformance2();
  return View.insetFloatingSidebarStyle()();
}

uint64_t sub_10088BCC4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE14F8);
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CE1500);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  v10 = *(a1 + 104);
  v16 = *(a1 + 96);
  v17 = v10;
  sub_10022C350(&qword_100CE13F8);
  State.wrappedValue.getter();
  type metadata accessor for WeatherSplitViewBindingModel(0);
  sub_100061520(&qword_100CE1248, type metadata accessor for WeatherSplitViewBindingModel);
  Bindable<A>.init(wrappedValue:)();
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v11 = *(v4 + 8);
  v11(v6, v3);
  v15 = a1;
  v14 = a1;
  sub_10022C350(&qword_100CE14E0);
  sub_10006768C(&qword_100CE14E8, &qword_100CE14E0);
  sub_100892AAC();
  NavigationSplitView.init<>(columnVisibility:sidebar:detail:)();
  return (v11)(v9, v3);
}

uint64_t sub_10088BF90@<X0>(uint64_t a1@<X8>)
{
  if (static Solarium.isEnabled.getter())
  {

    return sub_10088CDF8(a1);
  }

  else if (sub_10088C80C())
  {

    return static NavigationSplitViewVisibility.doubleColumn.getter();
  }

  else
  {

    return static NavigationSplitViewVisibility.detailOnly.getter();
  }
}

uint64_t sub_10088C010(uint64_t a1)
{
  v3 = type metadata accessor for NavigationSplitViewVisibility();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10088CDF8(v6);
  sub_100061520(&qword_100CE1240, &type metadata accessor for NavigationSplitViewVisibility);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v4 + 8);
  v8(v6, v3);
  (*(v4 + 16))(v6, a1, v3);
  sub_10088C980(v6);
  if ((static Solarium.isEnabled.getter() & 1) != 0 && (v7 & 1) == 0)
  {
    static NavigationSplitViewVisibility.detailOnly.getter();
    v9 = static NavigationSplitViewVisibility.== infix(_:_:)();
    v8(v6, v3);
    sub_1000161C0((v1 + 24), *(v1 + 48));
    if (v9)
    {
      sub_100569398();
    }

    else
    {
      sub_100569390();
    }
  }

  return (v8)(a1, v3);
}

uint64_t sub_10088C1D8(uint64_t a1)
{
  v2 = type metadata accessor for NavigationSplitViewVisibility();
  __chkstk_darwin(v2 - 8);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(a1 + 104);
  v10 = *(a1 + 96);
  v11 = v5;
  sub_10022C350(&qword_100CE13F8);
  State.wrappedValue.getter();
  sub_10088BF90(v4);

  v9 = a1;
  v8 = a1;
  sub_10022C350(&qword_100CE14E0);
  sub_10006768C(&qword_100CE14E8, &qword_100CE14E0);
  sub_100892AAC();
  return NavigationSplitView.init<>(columnVisibility:sidebar:detail:)();
}

uint64_t sub_10088C340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_100891DA8(a1, v8);
  v5 = swift_allocObject();
  memcpy((v5 + 16), v8, 0x70uLL);
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  *(a3 + 40) = v5;
  return result;
}

uint64_t sub_10088C3D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  sub_100035B30(a1 + 16, (a2 + 1));
  result = sub_100035B30(a1 + 56, (a2 + 6));
  *a2 = v4;
  return result;
}

uint64_t sub_10088C424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v28 = a2;
  v30 = a5;
  v7 = type metadata accessor for MainViewModel(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CE1540);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v29 = sub_10022C350(&qword_100CE1548);
  v14 = *(v29 - 8);
  __chkstk_darwin(v29);
  v16 = &v27 - v15;
  KeyPath = swift_getKeyPath();
  sub_100095730();
  v18 = v10[*(v8 + 40)];
  sub_1000A2E84(v10);
  v19 = sub_10022C350(&qword_100CE1550);
  (*(*(v19 - 8) + 16))(v13, v27, v19);
  v20 = &v13[*(sub_10022C350(&qword_100CE1558) + 36)];
  *v20 = KeyPath;
  v20[8] = v18;
  v21 = swift_getKeyPath();
  sub_100095730();
  LOBYTE(KeyPath) = v10[*(v8 + 36)];
  sub_1000A2E84(v10);
  v22 = &v13[*(v11 + 36)];
  *v22 = v21;
  v22[8] = (KeyPath & 1) == 0;
  sub_100095730();
  LOBYTE(v21) = v10[*(v8 + 40)];
  sub_1000A2E84(v10);
  LOBYTE(v31) = v21;
  v23 = swift_allocObject();
  v23[2] = v28;
  v23[3] = a3;
  v23[4] = a4;
  v24 = sub_100892F54();

  View.onChange<A>(of:initial:_:)();

  sub_1000180EC(v13, &qword_100CE1540);
  type metadata accessor for WeatherSplitViewBindingModel(0);
  v31 = v11;
  v32 = &type metadata for Bool;
  v33 = v24;
  v34 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_100061520(&qword_100CE1248, type metadata accessor for WeatherSplitViewBindingModel);
  v25 = v29;
  View.environment<A>(_:)();
  return (*(v14 + 8))(v16, v25);
}

uint64_t sub_10088C7D0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  result = sub_10088C80C();
  if (v2 != (result & 1))
  {
    return sub_10088C8AC(v2);
  }

  return result;
}

uint64_t sub_10088C80C()
{
  swift_getKeyPath();
  sub_100061520(&qword_100CE1248, type metadata accessor for WeatherSplitViewBindingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 65);
}

uint64_t sub_10088C8AC(char a1)
{
  if (*(v1 + 65) == (a1 & 1))
  {
    *(v1 + 65) = a1 & 1;

    return sub_10088CBA4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10088CEF0();
  }
}

uint64_t sub_10088C980(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NavigationSplitViewVisibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7WeatherP33_EFFDD3539328A3DC265CB51F3C3EB9E828WeatherSplitViewBindingModel___sidebarState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_100061520(&qword_100CE1240, &type metadata accessor for NavigationSplitViewVisibility);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v13 - 2) = v2;
    *(&v13 - 1) = a1;
    sub_10088CEF0();
  }

  return (v10)(a1, v4);
}

uint64_t sub_10088CBA4()
{
  v0 = type metadata accessor for NavigationSplitViewVisibility();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v13[-v5];
  result = static Solarium.isEnabled.getter();
  if (result)
  {
    if (sub_10088C80C())
    {
      sub_10088CDF8(v6);
      static NavigationSplitViewVisibility.detailOnly.getter();
      v8 = static NavigationSplitViewVisibility.== infix(_:_:)();
      v9 = *(v1 + 8);
      v9(v3, v0);
      v9(v6, v0);
      if (v8)
      {
        static NavigationSplitViewVisibility.doubleColumn.getter();
        sub_10088C010(v6);
      }
    }

    result = sub_10088C80C();
    if ((result & 1) == 0)
    {
      sub_10022C350(&qword_100CE1238);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100A2D320;
      static NavigationSplitViewVisibility.all.getter();
      static NavigationSplitViewVisibility.doubleColumn.getter();
      v11 = sub_10088CDF8(v6);
      __chkstk_darwin(v11);
      *&v13[-16] = v6;
      v12 = sub_100745970(sub_100891FD8, &v13[-32], v10);
      swift_setDeallocating();
      sub_1005C204C();
      result = (*(v1 + 8))(v6, v0);
      if (v12)
      {
        static NavigationSplitViewVisibility.detailOnly.getter();
        return sub_10088C010(v6);
      }
    }
  }

  return result;
}

uint64_t sub_10088CDF8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_100061520(&qword_100CE1248, type metadata accessor for WeatherSplitViewBindingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7WeatherP33_EFFDD3539328A3DC265CB51F3C3EB9E828WeatherSplitViewBindingModel___sidebarState;
  swift_beginAccess();
  v4 = type metadata accessor for NavigationSplitViewVisibility();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_10088CEF0()
{
  sub_100004D1C();
  sub_100061520(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10088CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_100011748();
  type metadata accessor for NavigationSplitViewVisibility();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, v5);
  return a5(v10);
}

uint64_t sub_10088D054(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7WeatherP33_EFFDD3539328A3DC265CB51F3C3EB9E828WeatherSplitViewBindingModel___sidebarState;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_10088D0F0()
{

  sub_100006F14(v0 + 24);
  v1 = OBJC_IVAR____TtC7WeatherP33_EFFDD3539328A3DC265CB51F3C3EB9E828WeatherSplitViewBindingModel___sidebarState;
  v2 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7WeatherP33_EFFDD3539328A3DC265CB51F3C3EB9E828WeatherSplitViewBindingModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_10088D1A0()
{
  sub_10088D0F0();

  return swift_deallocClassInstance();
}

uint64_t sub_10088D21C()
{
  result = type metadata accessor for NavigationSplitViewVisibility();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_10088D334()
{
  result = qword_100CE0F50;
  if (!qword_100CE0F50)
  {
    sub_10022E824(&qword_100CE0EC0);
    sub_100081204();
    sub_100061520(&qword_100CE0FA0, type metadata accessor for MainViewSheetViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0F50);
  }

  return result;
}

unint64_t sub_10088D3F0()
{
  result = qword_100CE0FB8;
  if (!qword_100CE0FB8)
  {
    sub_10022E824(&qword_100CE0FB0);
    sub_10022E824(&qword_100CE0EC0);
    type metadata accessor for VibrantDividerStyle();
    sub_10088D334();
    sub_100061520(&qword_100CE0FA8, &type metadata accessor for VibrantDividerStyle);
    swift_getOpaqueTypeConformance2();
    sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0FB8);
  }

  return result;
}

unint64_t sub_10088D53C()
{
  result = qword_100CE0FD8;
  if (!qword_100CE0FD8)
  {
    sub_10022E824(&qword_100CE0FD0);
    sub_10088D5F4();
    sub_10006768C(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0FD8);
  }

  return result;
}

unint64_t sub_10088D5F4()
{
  result = qword_100CE0FE0;
  if (!qword_100CE0FE0)
  {
    sub_10022E824(&qword_100CE0FE8);
    sub_10022E824(&qword_100CE0EC8);
    sub_10022E824(&qword_100CE0FB0);
    sub_10022E824(&qword_100CE0EC0);
    type metadata accessor for VibrantDividerStyle();
    sub_10088D334();
    sub_100061520(&qword_100CE0FA8, &type metadata accessor for VibrantDividerStyle);
    swift_getOpaqueTypeConformance2();
    sub_10088D3F0();
    swift_getOpaqueTypeConformance2();
    sub_10006768C(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0FE0);
  }

  return result;
}

uint64_t sub_10088D7B4@<X0>(uint64_t a1@<X8>)
{
  v21[3] = a1;
  sub_10089389C(v1, __src);
  v2 = swift_allocObject();
  memcpy((v2 + 16), __src, 0x58uLL);
  v22[10] = sub_10071E998;
  v22[11] = 0;
  LOBYTE(v22[12]) = 0;
  v22[0] = sub_10022C350(&qword_100CCC2D8);
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, __src, &unk_100CAF270);
  if (*&__src[24])
  {
    sub_100013188(__src, &v22[3]);
    v22[1] = sub_1008938D4;
    v22[2] = v2;
    v4 = Dictionary.init(dictionaryLiteral:)();
    v22[8] = _swiftEmptyArrayStorage;
    v22[9] = v4;
    memcpy(__src, v22, sizeof(__src));
    v5 = Solarium.init()();
    v21[2] = v21;
    __chkstk_darwin(v5);
    v6 = sub_10022C350(&qword_100CE16D0);
    v21[1] = sub_10022C350(&qword_100CE16D8);
    v21[0] = sub_10022C350(&qword_100CE16E0);
    v7 = sub_10006768C(&qword_100CE16E8, &qword_100CE16D0);
    v8 = sub_10022E824(&qword_100CE16F0);
    v9 = sub_10022E824(&qword_100CE16F8);
    v10 = sub_10022E824(&qword_100CE12F8);
    v11 = sub_10022E824(&qword_100CE1308);
    v12 = sub_10006768C(&unk_100CE1310, &qword_100CE1308);
    v22[0] = v11;
    v22[1] = v12;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v22[0] = v6;
    v22[1] = v10;
    v22[2] = v7;
    v22[3] = OpaqueTypeConformance2;
    v14 = swift_getOpaqueTypeConformance2();
    v22[0] = v9;
    v22[1] = &type metadata for Color;
    v22[2] = v14;
    v22[3] = &protocol witness table for Color;
    v15 = swift_getOpaqueTypeConformance2();
    v22[0] = v8;
    v22[1] = v15;
    swift_getOpaqueTypeConformance2();
    v16 = sub_10022E824(&qword_100CE1700);
    v17 = sub_10022E824(&qword_100CE1708);
    v18 = type metadata accessor for Material();
    v22[0] = v6;
    v22[1] = v18;
    v22[2] = v7;
    v22[3] = &protocol witness table for Material;
    v19 = swift_getOpaqueTypeConformance2();
    v20 = sub_10006768C(&unk_100CE1710, &qword_100CE1708);
    v22[0] = v16;
    v22[1] = v17;
    v22[2] = v19;
    v22[3] = v20;
    swift_getOpaqueTypeConformance2();
    View.staticIf<A, B, C>(_:then:else:)();
    return sub_1000180EC(__src, &qword_100CE16D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10088DD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v27 = a2;
  v2 = type metadata accessor for ContainerBackgroundPlacement();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CE16F8);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_10022C350(&qword_100CE16F0);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = sub_10022C350(&qword_100CE16D0);
  v13 = sub_10022C350(&qword_100CE12F8);
  v14 = sub_10006768C(&qword_100CE16E8, &qword_100CE16D0);
  v15 = sub_10022E824(&qword_100CE1308);
  v16 = sub_10006768C(&unk_100CE1310, &qword_100CE1308);
  v28 = v15;
  v29 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  v32 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  View.containerBackground<A>(_:for:)();
  (*(v25 + 8))(v4, v26);

  (*(v22 + 8))(v7, v5);
  v28 = v5;
  v29 = &type metadata for Color;
  v30 = v18;
  v31 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v19 = v23;
  View.navigationSplitViewColumnWidth(min:ideal:max:)();
  return (*(v24 + 8))(v11, v19);
}

uint64_t sub_10088E168@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  v3 = sub_10022C350(&qword_100CE1700);
  v13 = *(v3 - 8);
  v14 = v3;
  __chkstk_darwin(v3);
  v5 = v12 - v4;
  if (qword_100CA23A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Material();
  sub_10000703C(v6, qword_100D90600);
  sub_10022C350(&qword_100CB0578);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static ToolbarPlacement.navigationBar.getter();
  v7 = sub_10022C350(&qword_100CE16D0);
  v8 = sub_10006768C(&qword_100CE16E8, &qword_100CE16D0);
  View.toolbarBackground<A>(_:for:)();

  __chkstk_darwin(v9);
  v12[-2] = a1;
  sub_10022C350(&qword_100CE1708);
  v15 = v7;
  v16 = v6;
  v17 = v8;
  v18 = &protocol witness table for Material;
  swift_getOpaqueTypeConformance2();
  sub_10006768C(&unk_100CE1710, &qword_100CE1708);
  v10 = v14;
  View.toolbar<A>(content:)();
  return (*(v13 + 8))(v5, v10);
}

uint64_t sub_10088E484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = sub_10022C350(&qword_100CE1720);
  __chkstk_darwin(v19);
  v4 = &v17 - v3;
  v18 = sub_10022C350(&qword_100CE1308);
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10022C350(&qword_100CE1728);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  static ToolbarItemPlacement.navigationBarLeading.getter();
  v21 = a1;
  sub_10022C350(&qword_100CE1730);
  sub_1008938F4();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  sub_10022C350(&qword_100CE1340);
  sub_10006768C(&qword_100CE1348, &qword_100CE1340);
  ToolbarItem<>.init(placement:content:)();
  v13 = *(v19 + 48);
  (*(v10 + 16))(v4, v12, v9);
  v14 = &v4[v13];
  v15 = v18;
  (*(v5 + 16))(v14, v7, v18);
  TupleToolbarContent.init(_:)();
  (*(v5 + 8))(v7, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10088E7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for AutomaticHoverEffect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&unk_100CE1740);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10022C350(&qword_100CE1758);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  sub_10089389C(a1, __src);
  v15 = swift_allocObject();
  memcpy((v15 + 16), __src, 0x58uLL);
  Button.init(action:label:)();
  static CustomHoverEffect<>.automatic.getter();
  v16 = sub_10006768C(&qword_100CA6EE8, &unk_100CE1740);
  v17 = sub_100061520(&qword_100CE16A8, &type metadata accessor for AutomaticHoverEffect);
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v18 = [objc_opt_self() mainBundle];
  v29._object = 0x8000000100AE2C90;
  v19._countAndFlagsBits = 0x6469732065646948;
  v19._object = 0xEC00000072616265;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD00000000000002DLL;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v29);

  v27 = v21;
  __src[0] = v7;
  __src[1] = v3;
  __src[2] = v16;
  __src[3] = v17;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v22 = v24;
  View.accessibilityLabel<A>(_:)();

  return (*(v25 + 8))(v14, v22);
}

uint64_t sub_10088EBF8@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10088EC44@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.topTrailing.getter();
  a1[1] = v3;
  v4 = sub_10022C350(&qword_100CE1588);
  sub_10088ED44(v1, a1 + *(v4 + 44));
  *(a1 + *(sub_10022C350(&qword_100CE1590) + 36)) = 1;
  v5 = (a1 + *(sub_10022C350(&qword_100CE1598) + 36));
  v6 = *(sub_10022C350(&qword_100CE15A0) + 28);
  v7 = enum case for ColorScheme.dark(_:);
  v8 = type metadata accessor for ColorScheme();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  result = swift_getKeyPath();
  *v5 = result;
  return result;
}

uint64_t sub_10088ED44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = sub_10022C350(&unk_100CE0EB0);
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v27 - v3;
  v4 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10022C350(&qword_100CE15A8);
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v27 - v9;
  v29 = sub_10022C350(&unk_100CE15B0);
  __chkstk_darwin(v29);
  v12 = &v27 - v11;
  v30 = a1;
  sub_1008930F0(a1, __src);
  v13 = swift_allocObject();
  v14 = *&__src[16];
  v13[1] = *__src;
  v13[2] = v14;
  v13[3] = *&__src[32];
  v15 = sub_10022C350(&qword_100CBA978);
  *&__src[80] = sub_1000ED1D0;
  *&__src[88] = 0;
  __src[96] = 0;
  *__src = v15;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, __dst, &unk_100CAF270);
  if (*&__dst[24])
  {
    sub_100013188(__dst, &__src[24]);
    *&__src[8] = sub_100893128;
    *&__src[16] = v13;
    v17 = Dictionary.init(dictionaryLiteral:)();
    *&__src[64] = _swiftEmptyArrayStorage;
    *&__src[72] = v17;
    memcpy(__dst, __src, sizeof(__dst));
    v18 = static Edge.Set.bottom.getter();
    v19 = static SafeAreaRegions.all.getter();
    memcpy(__src, __dst, sizeof(__src));
    v37 = v19;
    v38 = v18;
    (*(v5 + 104))(v7, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v4);
    sub_10022C350(&qword_100CE15C0);
    sub_100893130();
    View.navigationBarTitleDisplayMode(_:)();
    (*(v5 + 8))(v7, v4);
    sub_1000180EC(__src, &qword_100CE15C0);
    KeyPath = swift_getKeyPath();
    (*(v8 + 32))(v12, v10, v28);
    v21 = &v12[*(v29 + 36)];
    *v21 = KeyPath;
    v21[8] = 0;
    Solarium.init()();
    v22 = v31;
    v23 = static ViewInputPredicate.! prefix(_:)();
    __chkstk_darwin(v23);
    sub_10022C350(&qword_100CE15E0);
    sub_1008931F0();
    *__src = &type metadata for Solarium;
    *&__src[8] = &protocol witness table for Solarium;
    swift_getOpaqueTypeConformance2();
    v24 = sub_10022E824(&qword_100CE15F8);
    v25 = sub_10089330C();
    *__src = v24;
    *&__src[8] = v25;
    swift_getOpaqueTypeConformance2();
    v26 = v34;
    View.staticIf<A, B, C>(_:then:else:)();
    (*(v33 + 8))(v22, v26);
    return sub_1000180EC(v12, &unk_100CE15B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10088F390(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CE15F8);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = static Alignment.topLeading.getter();
  v9 = v8;
  KeyPath = swift_getKeyPath();
  sub_1008930F0(a2, &v19);
  v11 = swift_allocObject();
  v12 = v20;
  v11[1] = v19;
  v11[2] = v12;
  v11[3] = v21;
  v13 = &v6[*(sub_10022C350(&qword_100CE1610) + 36)];
  *v13 = v7;
  v13[1] = v9;
  v13[2] = KeyPath;
  v13[3] = sub_100893450;
  v13[4] = v11;
  v14 = *(sub_10022C350(&qword_100CE1620) + 52);
  *(v13 + v14) = swift_getKeyPath();
  sub_10022C350(&qword_100CE1628);
  swift_storeEnumTagMultiPayload();
  sub_1000302D8(a1, v6, &unk_100CE15B0);
  sub_1008930F0(a2, &v19);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 1) = v19;
  *(v15 + 2) = v16;
  *(v15 + 3) = v21;
  v17 = &v6[*(v4 + 36)];
  *v17 = sub_100893458;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  sub_10089330C();
  View.navigationBarHidden(_:)();
  return sub_1000180EC(v6, &qword_100CE15F8);
}

uint64_t sub_10088F5A8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AutomaticHoverEffect();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CE1638);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v47 = sub_10022C350(&qword_100CE1640);
  __chkstk_darwin(v47);
  v18 = &v45 - v17;
  v19 = sub_10022C350(&qword_100CE1648);
  __chkstk_darwin(v19);
  v22 = &v45 - v21;
  if (*a1)
  {

    return sub_10001B350(a3, 1, 1, v20);
  }

  else
  {
    v24 = v46;
    v46 = v20;
    sub_1008930F0(v24, v50);
    v25 = swift_allocObject();
    v26 = v50[1];
    v25[1] = v50[0];
    v25[2] = v26;
    v25[3] = v50[2];
    sub_10022C350(&qword_100CE1650);
    v45 = a3;
    sub_100893470();
    Button.init(action:label:)();
    static CustomHoverEffect<>.automatic.getter();
    sub_10006768C(&qword_100CE16A0, &qword_100CE1638);
    sub_100061520(&qword_100CE16A8, &type metadata accessor for AutomaticHoverEffect);
    View.hoverEffect<A>(_:isEnabled:)();
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    v27 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = &v18[*(sub_10022C350(&qword_100CE16B0) + 36)];
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    v37 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v38 = &v18[*(v47 + 36)];
    *v38 = v37;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38[40] = 0;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *&v50[0] = String.init(localized:table:bundle:locale:comment:)();
    *(&v50[0] + 1) = v43;
    sub_1008936C4();
    sub_10002D5A4();
    View.accessibilityLabel<A>(_:)();

    sub_1000180EC(v18, &qword_100CE1640);
    v44 = v45;
    sub_10011C0F0(v22, v45, &qword_100CE1648);
    return sub_10001B350(v44, 0, 1, v46);
  }
}

uint64_t sub_10088FB68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&unk_100CE1680);
  __chkstk_darwin(v2);
  v4 = v30 - v3;
  v30[1] = Image.init(systemName:)();
  v5 = enum case for DynamicTypeSize.xxLarge(_:);
  v6 = type metadata accessor for DynamicTypeSize();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  sub_100061520(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_10006768C(&qword_100CA53C8, &unk_100CE1680);
    View.dynamicTypeSize<A>(_:)();
    sub_1000180EC(v4, &unk_100CE1680);

    v8 = (a1 + *(sub_10022C350(&qword_100CE1678) + 36));
    v9 = *(sub_10022C350(&qword_100CAF750) + 28);
    v10 = enum case for Image.Scale.large(_:);
    v11 = type metadata accessor for Image.Scale();
    (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
    *v8 = swift_getKeyPath();
    LOBYTE(v10) = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = a1 + *(sub_10022C350(&qword_100CE1668) + 36);
    *v20 = v10;
    *(v20 + 8) = v13;
    *(v20 + 16) = v15;
    *(v20 + 24) = v17;
    *(v20 + 32) = v19;
    *(v20 + 40) = 0;
    LOBYTE(v10) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    result = sub_10022C350(&qword_100CE1650);
    v29 = a1 + *(result + 36);
    *v29 = v10;
    *(v29 + 8) = v22;
    *(v29 + 16) = v24;
    *(v29 + 24) = v26;
    *(v29 + 32) = v28;
    *(v29 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10088FE74(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C70C(0, &qword_100CB4670);
  v8 = static OS_dispatch_queue.main.getter();
  sub_1008930F0(a1, v16);
  v9 = swift_allocObject();
  v10 = v16[1];
  v9[1] = v16[0];
  v9[2] = v10;
  v9[3] = v16[2];
  aBlock[4] = sub_100893460;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C72F10;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  *&v16[0] = _swiftEmptyArrayStorage;
  sub_100061520(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_10006768C(&qword_100CD81D0, &qword_100CB4680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

void sub_100890178()
{
  v0 = sub_100890220();
  if (v0)
  {
    v1 = v0;
    [v0 setPresentsWithGesture:0];
    [v1 setDisplayModeButtonVisibility:1];
  }
}

uint64_t sub_100890220()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = UIApplication.maybeWindow.getter();

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 rootViewController];

  if (!v2)
  {
    return 0;
  }

  sub_1008902B0(v2);
  v4 = v3;

  return v4;
}

void sub_1008902B0(void *a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = a1;
  }

  else
  {
    v3 = [a1 childViewControllers];
    sub_10000C70C(0, &qword_100CE1630);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_100073CDC(v4);
    v6 = 0;
    while (1)
    {
      if (v5 == v6)
      {
LABEL_10:

        return;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v9 = sub_1008902B0(v7);

      ++v6;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_1008903F4@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(a1, 0);
    (*(v7 + 8))(v9, v6);
  }

  sub_10022C350(&qword_100CE1788);
  sub_10006768C(&qword_100CE1790, &qword_100CE1788);
  View.accessibilityHidden(_:)();
  v11 = static Alignment.center.getter();
  v13 = v12;
  v14 = a3 + *(sub_10022C350(&qword_100CE1798) + 36);
  sub_100890608(a1, a2 & 1, v14);
  result = sub_10022C350(&qword_100CE17A0);
  v16 = (v14 + *(result + 36));
  *v16 = v11;
  v16[1] = v13;
  return result;
}

uint64_t sub_100890608@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AccessibilityTraits();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10022C350(&qword_100CE17A8);
  __chkstk_darwin(v41);
  v10 = &v35 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(a1, 0);
    (*(v12 + 8))(v14, v11);
    if (v45 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    Solarium.init()();
    sub_10022C350(&qword_100CE17B8);
    sub_10022C350(&qword_100CE17C0);
    v39 = v8;
    sub_10006768C(&qword_100CE17C8, &qword_100CE17B8);
    sub_10006768C(&qword_100CE17D0, &qword_100CE17C0);
    StaticIf<>.init(_:then:else:)();
    *&v10[*(sub_10022C350(&qword_100CE17D8) + 36)] = 0x4000000000000000;
    v17 = v10;
    v37 = v10;
    v36 = static HorizontalAlignment.center.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v18 = v45;
    v19 = v46;
    v20 = v47;
    v21 = v48;
    v22 = a3;
    v23 = v40;
    v38 = v6;
    v24 = v49;
    v25 = v50;
    VerticalEdge.rawValue.getter();
    v26 = Edge.init(rawValue:)();
    v27 = static SafeAreaRegions.container.getter();
    LOBYTE(v42) = v19;
    v44 = v21;
    v43 = 1;
    v28 = &v17[*(v41 + 36)];
    *v28 = v18;
    v28[8] = v19;
    *(v28 + 2) = v20;
    v28[24] = v21;
    *(v28 + 4) = v24;
    *(v28 + 5) = v25;
    a3 = v22;
    *(v28 + 6) = v27;
    *(v28 + 7) = 0;
    v28[64] = 1;
    v28[65] = v26;
    *(v28 + 9) = v36;
    sub_10022C350(&unk_100CE17E0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100A2C3F0;
    static AccessibilityTraits.isModal.getter();
    v42 = v29;
    sub_100061520(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0);
    sub_10006768C(&qword_100CB3370, &unk_100CE17F0);
    v31 = v38;
    v30 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100893C54();
    v32 = v37;
    View.accessibilityAddTraits(_:)();
    (*(v23 + 8))(v30, v31);
    sub_1000180EC(v32, &qword_100CE17A8);
    v15 = 0;
    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = 1;
LABEL_6:
  v33 = sub_10022C350(&qword_100CE17B0);
  return sub_10001B350(a3, v15, 1, v33);
}

uint64_t sub_100890C48()
{
  type metadata accessor for ScenePhase();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100019530();
  v1 = sub_1000053B8();
  v2(v1);
  return EnvironmentValues.scenePhase.setter();
}

unint64_t sub_100890D20()
{
  result = qword_100CE1018;
  if (!qword_100CE1018)
  {
    sub_10022E824(&qword_100CE0EE8);
    sub_100890DDC();
    sub_100061520(&qword_100CE1030, type metadata accessor for MainViewScenePhaseObservationViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1018);
  }

  return result;
}

unint64_t sub_100890DDC()
{
  result = qword_100CE1020;
  if (!qword_100CE1020)
  {
    sub_10022E824(&qword_100CE0EE0);
    sub_10022E824(&qword_100CE0ED0);
    sub_10022E824(&unk_100CE0EB0);
    sub_10022E824(&qword_100CE0FD0);
    sub_10022E824(&qword_100CE0EC8);
    sub_10022E824(&qword_100CE0FB0);
    sub_10022E824(&qword_100CE0EC0);
    type metadata accessor for VibrantDividerStyle();
    sub_10088D334();
    sub_100061520(&qword_100CE0FA8, &type metadata accessor for VibrantDividerStyle);
    swift_getOpaqueTypeConformance2();
    sub_10088D3F0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10088D53C();
    swift_getOpaqueTypeConformance2();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1020);
  }

  return result;
}

uint64_t sub_100891018()
{
  v0 = sub_100011748();
  v1 = type metadata accessor for MainView(v0);
  sub_100003810(v1);
  v2 = sub_1000053B8();
  return sub_10088A554(v2, v3);
}

uint64_t sub_100891088(void *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v8);
  v4 = v8;
  v3 = v9;
  v5 = *a1 == v8 && a1[1] == v9;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v4 == 11565 ? (v6 = v3 == 0xE200000000000000) : (v6 = 0), v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
  }

  else
  {

    *a1 = v4;
    a1[1] = v3;
  }

  return result;
}

unint64_t sub_10089116C()
{
  result = qword_100CE1070;
  if (!qword_100CE1070)
  {
    sub_10022E824(&qword_100CE0F20);
    sub_100891228();
    sub_100061520(&unk_100CE10B0, type metadata accessor for MonitorAppLaunchStateViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1070);
  }

  return result;
}

unint64_t sub_100891228()
{
  result = qword_100CE1078;
  if (!qword_100CE1078)
  {
    sub_10022E824(&qword_100CE0F18);
    sub_1008912E0();
    sub_10006768C(&qword_100CE10A8, &qword_100CE1058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1078);
  }

  return result;
}

unint64_t sub_1008912E0()
{
  result = qword_100CE1080;
  if (!qword_100CE1080)
  {
    sub_10022E824(&qword_100CE0F10);
    sub_10089139C();
    sub_100061520(&qword_100CE10A0, type metadata accessor for WeatherMapStatusBarColorSceneModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1080);
  }

  return result;
}

unint64_t sub_10089139C()
{
  result = qword_100CE1088;
  if (!qword_100CE1088)
  {
    sub_10022E824(&qword_100CE0F08);
    sub_100891454();
    sub_10006768C(&qword_100CB0570, &qword_100CE1050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1088);
  }

  return result;
}

unint64_t sub_100891454()
{
  result = qword_100CE1090;
  if (!qword_100CE1090)
  {
    sub_10022E824(&qword_100CE0F00);
    sub_10022E824(&qword_100CE0EF0);
    sub_10022E824(&qword_100CDCD58);
    sub_10022E824(&qword_100CE0EE8);
    type metadata accessor for ContentSizeCategory();
    sub_100890D20();
    sub_100061520(&qword_100CE1038, &type metadata accessor for ContentSizeCategory);
    swift_getOpaqueTypeConformance2();
    sub_100081338();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1090);
  }

  return result;
}

uint64_t sub_1008915C8()
{
  v0 = type metadata accessor for MainView(0);
  sub_100003810(v0);

  return sub_10088A928();
}

uint64_t sub_100891634()
{
  sub_10000FE4C();
  result = EnvironmentValues.accentColor.getter();
  *v0 = result;
  return result;
}

uint64_t sub_100891728(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100891768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1008917C0()
{
  result = qword_100CE1198;
  if (!qword_100CE1198)
  {
    sub_10022E824(&unk_100CE10C0);
    sub_10089184C();
    sub_1000812E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1198);
  }

  return result;
}

unint64_t sub_10089184C()
{
  result = qword_100CE11A0;
  if (!qword_100CE11A0)
  {
    sub_10022E824(&unk_100CE0F30);
    sub_10022E824(&qword_100CE0F20);
    sub_10089116C();
    sub_10002D5A4();
    swift_getOpaqueTypeConformance2();
    sub_10006768C(&qword_100CE11A8, &qword_100CE11B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE11A0);
  }

  return result;
}

uint64_t sub_100891978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = sub_100011748();
  v6 = v5(v4);
  sub_100003810(v6);
  v7 = sub_1000053B8();

  return a4(v7);
}

void sub_100891A0C(uint64_t a1, void *a2)
{
  sub_10000C70C(0, &qword_100CE14D8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setBackgroundEffects:isa];
}

uint64_t sub_100891A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MainViewModel(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationSplitViewVisibility();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v20[-1] - v15;
  v20[3] = type metadata accessor for MainInteractor();
  v20[4] = &off_100C5E2C8;
  v20[0] = a1;
  *(a3 + 64) = 0;
  static NavigationSplitViewVisibility.detailOnly.getter();
  (*(v11 + 32))(a3 + OBJC_IVAR____TtC7WeatherP33_EFFDD3539328A3DC265CB51F3C3EB9E828WeatherSplitViewBindingModel___sidebarState, v16, v10);
  ObservationRegistrar.init()();
  sub_100035B30(v20, a3 + 24);
  *(a3 + 16) = a2;

  sub_100095730();
  v17 = v9[*(v7 + 40)];
  if (v17 == 1)
  {
    static NavigationSplitViewVisibility.doubleColumn.getter();
  }

  else
  {
    static NavigationSplitViewVisibility.detailOnly.getter();
  }

  sub_10088C980(v13);
  sub_10088C8AC(v17);

  sub_1000A2E84(v9);
  sub_100006F14(v20);
  return a3;
}

uint64_t sub_100891C8C(uint64_t a1, uint64_t a2)
{
  v14 = type metadata accessor for MainInteractor();
  v15 = &off_100C5E2C8;
  v13[0] = a1;
  type metadata accessor for WeatherSplitViewBindingModel(0);
  v4 = swift_allocObject();
  v5 = sub_10002D7F8(v13, v14);
  v6 = __chkstk_darwin(v5);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = sub_100891A90(*v8, a2, v4);
  sub_100006F14(v13);
  return v10;
}

unint64_t sub_100891DE0()
{
  result = qword_100CE11E8;
  if (!qword_100CE11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE11E8);
  }

  return result;
}

uint64_t sub_100891E64()
{

  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 72);

  return swift_deallocObject();
}

unint64_t sub_100891EBC()
{
  result = qword_100CE11F8;
  if (!qword_100CE11F8)
  {
    sub_10022E824(&qword_100CE11F0);
    sub_10006768C(&qword_100CE1200, &qword_100CE1208);
    sub_10006768C(&unk_100CE1210, &qword_100CDE310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE11F8);
  }

  return result;
}

unint64_t sub_100892014()
{
  result = qword_100CE1288;
  if (!qword_100CE1288)
  {
    sub_10022E824(&qword_100CE1268);
    sub_1008920A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1288);
  }

  return result;
}

unint64_t sub_1008920A0()
{
  result = qword_100CE1290;
  if (!qword_100CE1290)
  {
    sub_10022E824(&qword_100CE1270);
    sub_100892158();
    sub_10006768C(&qword_100CE12D0, &qword_100CE12D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1290);
  }

  return result;
}

unint64_t sub_100892158()
{
  result = qword_100CE1298;
  if (!qword_100CE1298)
  {
    sub_10022E824(&qword_100CE12A0);
    sub_1000A24F4();
    sub_1000A25AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1298);
  }

  return result;
}

unint64_t sub_100892224()
{
  result = qword_100CE1328;
  if (!qword_100CE1328)
  {
    sub_10022E824(&qword_100CE1320);
    sub_1000A49E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1328);
  }

  return result;
}

uint64_t sub_100892344()
{
  swift_unknownObjectRelease();

  sub_100006F14(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1008923A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1008923E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100892474()
{
  result = qword_100CE1358;
  if (!qword_100CE1358)
  {
    sub_10022E824(&qword_100CE1360);
    sub_10089252C();
    sub_10006768C(&qword_100CE1380, &qword_100CE1388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1358);
  }

  return result;
}

unint64_t sub_10089252C()
{
  result = qword_100CE1368;
  if (!qword_100CE1368)
  {
    sub_10022E824(&qword_100CE1370);
    sub_1008925B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1368);
  }

  return result;
}

unint64_t sub_1008925B8()
{
  result = qword_100CE1378;
  if (!qword_100CE1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1378);
  }

  return result;
}

unint64_t sub_10089260C()
{
  result = qword_100CE1390;
  if (!qword_100CE1390)
  {
    sub_10022E824(&qword_100CE1398);
    sub_100892014();
    sub_10006768C(&qword_100CE12E0, &qword_100CE1250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1390);
  }

  return result;
}

unint64_t sub_1008926E0(uint64_t a1)
{
  result = sub_100892708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100892708()
{
  result = qword_100CE13C0;
  if (!qword_100CE13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE13C0);
  }

  return result;
}

unint64_t sub_100892788()
{
  result = qword_100CE1408;
  if (!qword_100CE1408)
  {
    sub_10022E824(&qword_100CE13C8);
    sub_100892814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1408);
  }

  return result;
}

unint64_t sub_100892814()
{
  result = qword_100CE1410;
  if (!qword_100CE1410)
  {
    sub_10022E824(&qword_100CE1400);
    sub_1008928A0();
    sub_100892A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1410);
  }

  return result;
}

unint64_t sub_1008928A0()
{
  result = qword_100CE1418;
  if (!qword_100CE1418)
  {
    sub_10022E824(&qword_100CE13E8);
    sub_10089295C();
    sub_100061520(&qword_100CE1430, type metadata accessor for RecordPinnedMapAnimatingViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1418);
  }

  return result;
}

unint64_t sub_10089295C()
{
  result = qword_100CE1420;
  if (!qword_100CE1420)
  {
    sub_10022E824(&qword_100CE1428);
    sub_10006768C(&qword_100CE13E0, &qword_100CE13D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1420);
  }

  return result;
}

unint64_t sub_100892A18()
{
  result = qword_100CE1438;
  if (!qword_100CE1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1438);
  }

  return result;
}

unint64_t sub_100892AAC()
{
  result = qword_100CE14F0;
  if (!qword_100CE14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE14F0);
  }

  return result;
}

uint64_t sub_100892B40()
{

  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_100892BB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_100892BF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100892C5C()
{
  result = qword_100CE1518;
  if (!qword_100CE1518)
  {
    sub_10022E824(&qword_100CE1450);
    sub_10022E824(&qword_100CE13D0);
    sub_10022E824(&qword_100CE1448);
    sub_10022E824(&qword_100CE13C8);
    type metadata accessor for BalancedNavigationSplitViewStyle();
    sub_100892788();
    sub_100061520(&qword_100CE1440, &type metadata accessor for BalancedNavigationSplitViewStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1518);
  }

  return result;
}

unint64_t sub_100892E10()
{
  result = qword_100CE1520;
  if (!qword_100CE1520)
  {
    sub_10022E824(&qword_100CE1510);
    sub_10006768C(&qword_100CE1528, &qword_100CE1508);
    sub_10006768C(&qword_100CE1530, &qword_100CE1538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1520);
  }

  return result;
}

unint64_t sub_100892F54()
{
  result = qword_100CE1560;
  if (!qword_100CE1560)
  {
    sub_10022E824(&qword_100CE1540);
    sub_10089300C();
    sub_10006768C(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1560);
  }

  return result;
}

unint64_t sub_10089300C()
{
  result = qword_100CE1568;
  if (!qword_100CE1568)
  {
    sub_10022E824(&qword_100CE1558);
    sub_10006768C(&unk_100CE1570, &qword_100CE1550);
    sub_10006768C(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1568);
  }

  return result;
}

unint64_t sub_100893130()
{
  result = qword_100CE15C8;
  if (!qword_100CE15C8)
  {
    sub_10022E824(&qword_100CE15C0);
    sub_10006768C(&unk_100CE15D0, &qword_100CBA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE15C8);
  }

  return result;
}

unint64_t sub_1008931F0()
{
  result = qword_100CE15E8;
  if (!qword_100CE15E8)
  {
    sub_10022E824(&unk_100CE15B0);
    sub_10022E824(&qword_100CE15C0);
    sub_100893130();
    swift_getOpaqueTypeConformance2();
    sub_1008932B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE15E8);
  }

  return result;
}

unint64_t sub_1008932B8()
{
  result = qword_100CE15F0;
  if (!qword_100CE15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE15F0);
  }

  return result;
}

unint64_t sub_10089330C()
{
  result = qword_100CE1600;
  if (!qword_100CE1600)
  {
    sub_10022E824(&qword_100CE15F8);
    sub_100893398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1600);
  }

  return result;
}

unint64_t sub_100893398()
{
  result = qword_100CE1608;
  if (!qword_100CE1608)
  {
    sub_10022E824(&qword_100CE1610);
    sub_1008931F0();
    sub_10006768C(&qword_100CE1618, &qword_100CE1620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1608);
  }

  return result;
}

unint64_t sub_100893470()
{
  result = qword_100CE1658;
  if (!qword_100CE1658)
  {
    sub_10022E824(&qword_100CE1650);
    sub_1008934FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1658);
  }

  return result;
}

unint64_t sub_1008934FC()
{
  result = qword_100CE1660;
  if (!qword_100CE1660)
  {
    sub_10022E824(&qword_100CE1668);
    sub_100893588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1660);
  }

  return result;
}

unint64_t sub_100893588()
{
  result = qword_100CE1670;
  if (!qword_100CE1670)
  {
    sub_10022E824(&qword_100CE1678);
    sub_10022E824(&unk_100CE1680);
    sub_10006768C(&qword_100CA53C8, &unk_100CE1680);
    swift_getOpaqueTypeConformance2();
    sub_10006768C(&unk_100CE1690, &qword_100CAF750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1670);
  }

  return result;
}

unint64_t sub_1008936C4()
{
  result = qword_100CE16B8;
  if (!qword_100CE16B8)
  {
    sub_10022E824(&qword_100CE1640);
    sub_100893750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE16B8);
  }

  return result;
}

unint64_t sub_100893750()
{
  result = qword_100CE16C0;
  if (!qword_100CE16C0)
  {
    sub_10022E824(&qword_100CE16B0);
    sub_10022E824(&qword_100CE1638);
    type metadata accessor for AutomaticHoverEffect();
    sub_10006768C(&qword_100CE16A0, &qword_100CE1638);
    sub_100061520(&qword_100CE16A8, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE16C0);
  }

  return result;
}

unint64_t sub_1008938F4()
{
  result = qword_100CE1738;
  if (!qword_100CE1738)
  {
    sub_10022E824(&qword_100CE1730);
    sub_10022E824(&unk_100CE1740);
    type metadata accessor for AutomaticHoverEffect();
    sub_10006768C(&qword_100CA6EE8, &unk_100CE1740);
    sub_100061520(&qword_100CE16A8, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_100061520(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1738);
  }

  return result;
}

uint64_t sub_100893A70()
{
  sub_100006F14(v0 + 24);
  sub_100006F14(v0 + 64);

  return swift_deallocObject();
}

unint64_t sub_100893AC8()
{
  result = qword_100CE1760;
  if (!qword_100CE1760)
  {
    sub_10022E824(&qword_100CE1598);
    sub_100893B80();
    sub_10006768C(&qword_100CE1780, &qword_100CE15A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1760);
  }

  return result;
}

unint64_t sub_100893B80()
{
  result = qword_100CE1768;
  if (!qword_100CE1768)
  {
    sub_10022E824(&qword_100CE1590);
    sub_10006768C(&qword_100CE1770, &qword_100CE1778);
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1768);
  }

  return result;
}

unint64_t sub_100893C54()
{
  result = qword_100CE1800;
  if (!qword_100CE1800)
  {
    sub_10022E824(&qword_100CE17A8);
    sub_100893D0C();
    sub_10006768C(&qword_100CE1830, &qword_100CE1838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1800);
  }

  return result;
}

unint64_t sub_100893D0C()
{
  result = qword_100CE1808;
  if (!qword_100CE1808)
  {
    sub_10022E824(&qword_100CE17D8);
    sub_100893DC4();
    sub_10006768C(&unk_100CE1820, &qword_100CB3618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1808);
  }

  return result;
}

unint64_t sub_100893DC4()
{
  result = qword_100CE1810;
  if (!qword_100CE1810)
  {
    sub_10022E824(&qword_100CE1818);
    sub_10006768C(&qword_100CE17C8, &qword_100CE17B8);
    sub_10006768C(&qword_100CE17D0, &qword_100CE17C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1810);
  }

  return result;
}

uint64_t sub_100893EB0()
{

  return swift_deallocObject();
}

unint64_t sub_100893F20()
{
  result = qword_100CE18A0;
  if (!qword_100CE18A0)
  {
    sub_10022E824(&qword_100CE1798);
    sub_100893FD8();
    sub_10006768C(&qword_100CE18B8, &qword_100CE17A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE18A0);
  }

  return result;
}

unint64_t sub_100893FD8()
{
  result = qword_100CE18A8;
  if (!qword_100CE18A8)
  {
    sub_10022E824(&qword_100CE18B0);
    sub_10006768C(&qword_100CE1790, &qword_100CE1788);
    sub_100061520(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE18A8);
  }

  return result;
}

uint64_t sub_1008940D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LocationPreviewViewAction();
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CE1970);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  sub_10089444C(v2, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      v11 = type metadata accessor for Location();
      (*(*(v11 - 8) + 8))(v6, v11);
      break;
    default:
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      break;
  }

  a1[3] = v7;
  a1[4] = sub_1008944B0();
  v12 = sub_100042FB0(a1);
  return (*(v8 + 32))(v12, v10, v7);
}

uint64_t sub_1008943C0()
{
  sub_100894514(&qword_100CE1980);

  return ShortDescribable.description.getter();
}

uint64_t sub_10089444C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationPreviewViewAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008944B0()
{
  result = qword_100CE1978;
  if (!qword_100CE1978)
  {
    sub_10022E824(&qword_100CE1970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1978);
  }

  return result;
}

uint64_t sub_100894514(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationPreviewViewAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100894558()
{
  v2 = *(v0 + 40);
  sub_100028CBC();
  if (v3)
  {
    sub_1000FDB68();
    sub_10001D07C();
    sub_100023444();
    sub_10001A0E0();
    if (v6)
    {
      v1 = v5;
    }

    else
    {
      v1 = v4;
    }
  }

  v7 = sub_100004D34();
  return v2 * v7 + v1 * v8;
}

BOOL sub_1008945D0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 4)
  {
    return a2 == 4;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a2 - 3 < 2)
  {
    return 0;
  }

  return a1 == a2;
}

BOOL sub_100894634(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 8);
  if (*(v1 + 32))
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      return 0;
    }

    v4 = v2 == v3 && *(v1 + 16) == *(a1 + 16);
    if (!v4 || *(v1 + 24) != *(a1 + 24))
    {
      return 0;
    }
  }

  else
  {
    v6 = 0;
    if ((*(a1 + 32) & 1) != 0 || v2 != v3)
    {
      return v6;
    }
  }

  if (*(v1 + 40) != *(a1 + 40) || *(v1 + 48) != *(a1 + 48))
  {
    return 0;
  }

  v7 = *(v1 + 49);
  v8 = *(a1 + 49);
  if (v7 == 4)
  {
    if (v8 != 4)
    {
      return 0;
    }
  }

  else if (v7 == 3)
  {
    if (v8 != 3)
    {
      return 0;
    }
  }

  else if ((v8 - 3) < 2 || v7 != v8)
  {
    return 0;
  }

  if (*(v1 + 56) != *(a1 + 56))
  {
    return 0;
  }

  return *(v1 + 64) == *(a1 + 64);
}

uint64_t sub_100894718(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 3;
  }

  else
  {
    return (0x2030103000303uLL >> (8 * a1));
  }
}

BOOL sub_100894740(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = *&a2 == *&a6;
  if (*&a3 != *&a7)
  {
    v8 = 0;
  }

  if (*&a1 != *&a5)
  {
    v8 = 0;
  }

  if ((a8 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = *&a1 == *&a5;
  if (a8)
  {
    v9 = 0;
  }

  if (a4)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1008947B0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100894718(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1008947DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100894624(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100894868(double a1)
{
  v2 = *(v1 + 49);
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 == 4)
  {
    v3 = *(v1 + 56) * 0.0;
    sub_1000FD520();
    v5 = v4 + v3 + sub_1000FDB68();
  }

  else
  {
    v8 = 2 * *(v1 + 48) + 2;
    v9 = *(v1 + 40) * ((2 * *(v1 + 48)) | 1uLL);
    v10 = *(v1 + 56) + *(v1 + 56);
    v11 = *(v1 + 8);
    if (*(v1 + 32))
    {
      sub_1000FDB68();
      sub_1000FDE84();
      sub_10001A0E0();
      if (v13)
      {
        v11 = v12;
      }
    }

    v5 = a1 - (v9 + v10 + v11 * v8) + -20.0;
  }

  return *&v5;
}

uint64_t sub_100894968@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3ECD0;
  strcpy((inited + 32), "sizingBehavior");
  *(inited + 47) = -18;
  *(inited + 72) = &unk_100C73338;
  v4 = swift_allocObject();
  *(inited + 48) = v4;
  *(v4 + 25) = *(v1 + 17);
  *(v4 + 16) = *(v1 + 8);
  *(inited + 80) = 0x6957726574747567;
  *(inited + 88) = 0xEB00000000687464;
  *(inited + 96) = *(v1 + 56);
  *(inited + 120) = &type metadata for CGFloat;
  *(inited + 128) = 0x69576E696772616DLL;
  *(inited + 136) = 0xEB00000000687464;
  *(inited + 144) = *(v1 + 40);
  *(inited + 168) = &type metadata for CGFloat;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 184) = 0x8000000100AE2D50;
  *(inited + 192) = *(v1 + 48);
  *(inited + 216) = &unk_100C732A8;
  strcpy((inited + 224), "mapPlacement");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  v5 = *(v1 + 49);
  *(inited + 264) = &unk_100C73218;
  strcpy((inited + 272), "mapColumnCount");
  *(inited + 287) = -18;
  *(inited + 240) = v5;
  if ((v5 - 3) >= 2)
  {
    v10 = &unk_100C732A8;
    LOBYTE(v9) = v5;
    sub_100166170(&v9, (inited + 288));
  }

  else
  {
    *(inited + 312) = &type metadata for String;
    *(inited + 288) = 0x3E6C696E3CLL;
    *(inited + 296) = 0xE500000000000000;
  }

  sub_10000918C();
  *(inited + 320) = v6 & 0xFFFFFFFFFFFFLL | 0x6957000000000000;
  *(inited + 328) = 0xEB00000000687464;
  *(inited + 336) = sub_10014B28C();
  *(inited + 360) = &type metadata for CGFloat;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x8000000100AE2D70;
  v7 = sub_1000EF898();
  *(inited + 408) = &type metadata for CGFloat;
  *(inited + 384) = v7;
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CE19A8);
  a1[4] = sub_10012EF24(&qword_100CE19B0, &qword_100CE19A8);
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100894C28()
{
  sub_1008953E8();

  return ShortDescribable.description.getter();
}

uint64_t sub_100894C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  sub_10022C350(&qword_100CE19D8);
  sub_10000548C();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100005E40();
  sub_10022C350(&qword_100CA36F8);
  if (a4)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    *(inited + 32) = 0x6874646977;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = a1;
    *(inited + 72) = &type metadata for CGFloat;
    *(inited + 80) = 0x696F706B61657262;
    *(inited + 120) = &unk_100C73180;
    *(inited + 88) = 0xEB0000000073746ELL;
    *(inited + 96) = a2;
    *(inited + 104) = a3;
  }

  else
  {
    *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
    sub_10000918C();
    v17[4] = v16 & 0xFFFFFFFFFFFFLL | 0x6957000000000000;
    v17[5] = 0xEC0000003A687464;
    v17[9] = &type metadata for CGFloat;
    v17[6] = a1;
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a5[3] = v5;
  a5[4] = sub_10012EF24(&qword_100CE19E0, &qword_100CE19D8);
  v18 = sub_100042FB0(a5);
  return (*(v13 + 32))(v18, v6, v5);
}

uint64_t sub_100894E8C()
{
  sub_10089543C();

  return ShortDescribable.description.getter();
}

uint64_t sub_100894EC8@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = 0x756F466F546F7774;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = a2;
  *(inited + 72) = &type metadata for CGFloat;
  *(inited + 80) = 0x69536F5472756F66;
  *(inited + 88) = 0xE900000000000078;
  *(inited + 120) = &type metadata for CGFloat;
  *(inited + 96) = a3;
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CE19F0);
  a1[4] = sub_10012EF24(&qword_100CE19F8, &qword_100CE19F0);
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10089501C()
{
  sub_100895490();

  return ShortDescribable.description.getter();
}

uint64_t sub_100895058@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CE1A08);
  sub_10000548C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100005E40();
  if (a1 != 4 && a1 != 3)
  {
    sub_10022C350(&qword_100CA36F8);
    *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
    sub_10000918C();
    *(v10 + 32) = v9 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
    *(v10 + 40) = 0xEB00000000746E75;
    *(v10 + 72) = &unk_100C732A8;
    *(v10 + 48) = a1;
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v2;
  a2[4] = sub_10012EF24(&qword_100CE1A10, &qword_100CE1A08);
  v11 = sub_100042FB0(a2);
  return (*(v7 + 32))(v11, v3, v2);
}

uint64_t sub_1008952A0()
{
  sub_1008954E4();

  return ShortDescribable.description.getter();
}

unint64_t sub_1008952E4()
{
  result = qword_100CE1988;
  if (!qword_100CE1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1988);
  }

  return result;
}

unint64_t sub_10089533C()
{
  result = qword_100CE1990;
  if (!qword_100CE1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1990);
  }

  return result;
}

unint64_t sub_100895394()
{
  result = qword_100CE19A0;
  if (!qword_100CE19A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE19A0);
  }

  return result;
}

unint64_t sub_1008953E8()
{
  result = qword_100CE19B8;
  if (!qword_100CE19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE19B8);
  }

  return result;
}

unint64_t sub_10089543C()
{
  result = qword_100CE19E8;
  if (!qword_100CE19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE19E8);
  }

  return result;
}

unint64_t sub_100895490()
{
  result = qword_100CE1A00;
  if (!qword_100CE1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1A00);
  }

  return result;
}

unint64_t sub_1008954E4()
{
  result = qword_100CE1A18;
  if (!qword_100CE1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1A18);
  }

  return result;
}

unsigned __int8 *sub_100895538(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 3)
    {
      v7 = v6 - 2;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
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
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *sub_1008955E8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1008956BC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100895788()
{
  result = qword_100CE1A20;
  if (!qword_100CE1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1A20);
  }

  return result;
}

uint64_t sub_1008957E0()
{
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_100895874()
{
  v1 = OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_label;
  v2 = type metadata accessor for WeatherNetworkActivity.Label();
  sub_1000037E8();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v5 = sub_1000039EC(OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_weatherLabel);
  (v4)(v5);
  v6 = sub_1000039EC(OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapLabel);
  (v4)(v6);
  v7 = sub_1000039EC(OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapMetadataLabel);
  (v4)(v7);
  v8 = sub_1000039EC(OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesLabel);
  (v4)(v8);
  v9 = sub_1000039EC(OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_overlayTileLabel);
  (v4)(v9);

  return v0;
}

uint64_t sub_1008959AC()
{
  sub_100895874();

  return swift_deallocClassInstance();
}

uint64_t sub_100895A0C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = (result + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId);
  if (!*(result + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId + 8))
  {
    *v3 = a2;
    v3[1] = a3;
  }

  return result;
}

uint64_t sub_100895A30()
{
  type metadata accessor for NetworkActivityCompletion();
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_1000037D8();
  v3 = v2 - v1;
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  sub_10005ABDC();
  return sub_10005AE3C(v3);
}

uint64_t sub_100895B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v114 = a3;
  v117 = a4;
  v116 = type metadata accessor for NWActivity.CompletionReason();
  v113 = *(v116 - 8);
  __chkstk_darwin(v116);
  v112 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v100[0] = v100 - v8;
  v9 = sub_10022C350(&qword_100CC2B20);
  __chkstk_darwin(v9 - 8);
  v111 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = v100 - v12;
  v13 = type metadata accessor for WeatherNetworkActivity.Label();
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin(v13);
  v109 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WeatherNetworkActivity.Domain();
  v101 = *(v15 - 8);
  v102 = v15;
  __chkstk_darwin(v15);
  v105 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WeatherNetworkActivity();
  v107 = *(v17 - 8);
  v108 = v17;
  __chkstk_darwin(v17);
  v106 = v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WeatherMap.Event();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v100 - v24;
  __chkstk_darwin(v26);
  v28 = v100 - v27;
  v29 = type metadata accessor for WeatherMapPurpose();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = (v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v115 = a1;
  if (!*(a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_rootActivity))
  {
    goto LABEL_12;
  }

  v100[1] = *(a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_rootActivity);
  (*(v30 + 16))(v33, a2, v29, v31);
  if ((*(v30 + 88))(v33, v29) != enum case for WeatherMapPurpose.snapshot(_:))
  {
    (*(v30 + 8))(v33, v29);
    goto LABEL_12;
  }

  (*(v30 + 96))(v33, v29);
  v34 = *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId + 8);
  if (!v34)
  {

    goto LABEL_12;
  }

  if (*v33 == *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId) && v34 == v33[1])
  {

    v37 = v19;
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v37 = v19;
    if ((v36 & 1) == 0)
    {

LABEL_12:
      v38 = type metadata accessor for NetworkActivityCompletion();
      v39 = v117;
      result = sub_10001B350(&v117[*(v38 + 24)], 1, 1, v116);
      *v39 = _swiftEmptyArrayStorage;
      *(v39 + 1) = _swiftEmptyArrayStorage;
      return result;
    }
  }

  v41 = v20;
  v42 = *(v20 + 16);
  v42(v28, v114, v37);
  v43 = (*(v20 + 88))(v28, v37);
  if (v43 == enum case for WeatherMap.Event.didFinishLoading(_:))
  {
    v42(v22, v28, v37);
    (*(v20 + 96))(v22, v37);
    v44 = *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapActivity);
    if (v44)
    {
      *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapActivity) = 0;
      v46 = v112;
      v45 = v113;
      v47 = &enum case for NWActivity.CompletionReason.success(_:);
      if (!*v22)
      {
        v47 = &enum case for NWActivity.CompletionReason.failure(_:);
      }

      v48 = v116;
      (*(v113 + 104))(v112, *v47, v116);
      sub_100316A04(v44, v46, v117);

      (*(v45 + 8))(v46, v48);
      return (*(v41 + 8))(v28, v37);
    }

    if (qword_100CA2718 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000703C(v72, qword_100D90BA0);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_37;
    }

    v75 = swift_slowAlloc();
    *v75 = 0;
    v76 = "Map indicated it had finished loading for location activity that wasn't tracked";
    goto LABEL_36;
  }

  if (v43 == enum case for WeatherMap.Event.overlay(_:))
  {
    v42(v25, v28, v37);
    (*(v20 + 96))(v25, v37);
    v49 = type metadata accessor for WeatherMap.Event.Overlay();
    v50 = *(v49 - 8);
    v51 = (*(v50 + 88))(v25, v49);
    if (v51 == enum case for WeatherMap.Event.Overlay.didFinishLoadingTiles(_:))
    {
      (*(v50 + 96))(v25, v49);
      v52 = *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesActivity);
      if (v52)
      {
        *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesActivity) = 0;
        v53 = v113;
        v54 = &enum case for NWActivity.CompletionReason.success(_:);
        if (!*v25)
        {
          v54 = &enum case for NWActivity.CompletionReason.failure(_:);
        }

        v55 = v100[0];
        v56 = v116;
        (*(v113 + 104))(v100[0], *v54, v116);
        sub_100316A04(v52, v55, v117);

        (*(v53 + 8))(v55, v56);
        return (*(v41 + 8))(v28, v37);
      }

      if (qword_100CA2718 != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      sub_10000703C(v93, qword_100D90BA0);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v73, v74))
      {
        goto LABEL_37;
      }

      v75 = swift_slowAlloc();
      *v75 = 0;
      v76 = "Map indicated tiles had finished loading for location activity that wasn't tracked";
LABEL_36:
      _os_log_impl(&_mh_execute_header, v73, v74, v76, v75, 2u);

LABEL_37:

LABEL_48:
      v91 = type metadata accessor for NetworkActivityCompletion();
      v92 = v117;
      sub_10001B350(&v117[*(v91 + 24)], 1, 1, v116);
      *v92 = _swiftEmptyArrayStorage;
      *(v92 + 1) = _swiftEmptyArrayStorage;
      return (*(v41 + 8))(v28, v37);
    }

    if (v51 == enum case for WeatherMap.Event.Overlay.willStartLoadingTiles(_:))
    {
      v114 = OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesActivity;
      v77 = v115;
      v78 = *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesActivity);
      (*(v101 + 104))(v105, enum case for WeatherNetworkActivity.Domain.weather(_:), v102);
      (*(v103 + 16))(v109, v77 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapTilesLabel, v104);
      v79 = type metadata accessor for UUID();
      sub_10001B350(v110, 1, 1, v79);
      sub_10001B350(v111, 1, 1, v79);

      v80 = v106;
      WeatherNetworkActivity.init(domain:label:token:parentToken:)();
      v81 = WeatherNetworkActivity.createNWActivity()();
      (*(v107 + 8))(v80, v108);

      NWActivity.parentActivity.setter();
      *(v77 + v114) = v81;

      if (v78)
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
          _os_log_impl(&_mh_execute_header, v83, v84, "Map indicated snapshot map overlay started loading again while loading", v85, 2u);
        }

        sub_10022C350(&unk_100CE49D0);
        v86 = swift_allocObject();
        v115 = xmmword_100A3BD20;
        *(v86 + 16) = xmmword_100A3BD20;
        *(v86 + 32) = v81;
        v87 = swift_allocObject();
        *(v87 + 16) = v115;
        *(v87 + 32) = v78;

        v88 = *(type metadata accessor for NetworkActivityCompletion() + 24);
        v90 = v116;
        v89 = v117;
        (*(v113 + 104))(&v117[v88], enum case for NWActivity.CompletionReason.cancelled(_:), v116);
        sub_10001B350(&v89[v88], 0, 1, v90);
        *v89 = v86;
        *(v89 + 1) = v87;
      }

      else
      {
        sub_10022C350(&unk_100CE49D0);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_100A3BD20;
        *(v97 + 32) = v81;

        v98 = type metadata accessor for NetworkActivityCompletion();
        v99 = v117;
        sub_10001B350(&v117[*(v98 + 24)], 1, 1, v116);
        *v99 = v97;
        *(v99 + 1) = _swiftEmptyArrayStorage;
      }

      return (*(v41 + 8))(v28, v37);
    }

    (*(v50 + 8))(v25, v49);
LABEL_47:

    goto LABEL_48;
  }

  if (v43 != enum case for WeatherMap.Event.willStartLoading(_:))
  {
    goto LABEL_47;
  }

  v114 = v28;
  v57 = OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapActivity;
  v58 = v115;
  v59 = *(v115 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapActivity);
  (*(v101 + 104))(v105, enum case for WeatherNetworkActivity.Domain.weather(_:), v102);
  (*(v103 + 16))(v109, v58 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_mapLabel, v104);
  v60 = type metadata accessor for UUID();
  sub_10001B350(v110, 1, 1, v60);
  sub_10001B350(v111, 1, 1, v60);

  v61 = v106;
  WeatherNetworkActivity.init(domain:label:token:parentToken:)();
  v62 = WeatherNetworkActivity.createNWActivity()();
  (*(v107 + 8))(v61, v108);

  NWActivity.parentActivity.setter();
  *(v58 + v57) = v62;

  if (v59)
  {
    if (qword_100CA2718 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000703C(v63, qword_100D90BA0);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Map indicated snapshot map started loading again while loading", v66, 2u);
    }

    sub_10022C350(&unk_100CE49D0);
    v67 = swift_allocObject();
    v115 = xmmword_100A3BD20;
    *(v67 + 16) = xmmword_100A3BD20;
    *(v67 + 32) = v62;
    v68 = swift_allocObject();
    *(v68 + 16) = v115;
    *(v68 + 32) = v59;

    v69 = *(type metadata accessor for NetworkActivityCompletion() + 24);
    v71 = v116;
    v70 = v117;
    (*(v113 + 104))(&v117[v69], enum case for NWActivity.CompletionReason.cancelled(_:), v116);
    sub_10001B350(&v70[v69], 0, 1, v71);
    *v70 = v67;
    *(v70 + 1) = v68;
  }

  else
  {
    sub_10022C350(&unk_100CE49D0);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_100A3BD20;
    *(v94 + 32) = v62;

    v95 = type metadata accessor for NetworkActivityCompletion();
    v96 = v117;
    sub_10001B350(&v117[*(v95 + 24)], 1, 1, v116);
    *v96 = v94;
    *(v96 + 1) = _swiftEmptyArrayStorage;
  }

  return (*(v41 + 8))(v114, v37);
}