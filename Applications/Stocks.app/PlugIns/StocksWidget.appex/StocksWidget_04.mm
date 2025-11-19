uint64_t sub_10006C568()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 320) = v3;
  if (v3)
  {
    v4 = *(v1 + 280);
    v5 = *(v1 + 264);

    v6 = sub_10006C980;
    v7 = v5;
  }

  else
  {
    v7 = *(v1 + 264);
    v6 = sub_10006C690;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10006C690()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 248);

  if (*(v3 + 16))
  {
    v4 = sub_100033210(*(v0 + 272), *(v0 + 280));
    if (v5)
    {
      v6 = v4;
      v7 = *(v0 + 280);

      v8 = (*(v3 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      sub_10006D340(*v8, v10);

      v11 = sub_1000D8D90();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      sub_1000D8D80();
      sub_10006D394();
      sub_1000D8D70();
      v30 = *(v0 + 288);

      sub_10003DB6C(v9, v10);

      v31 = *(v0 + 224);
      v32 = *(v0 + 232);
      v33 = *(v0 + 240);
LABEL_13:
      v34 = *(v0 + 8);

      return v34(v31, v32, v33);
    }
  }

  v15 = *(v0 + 272);
  v14 = *(v0 + 280);

  sub_10006D2EC();
  swift_allocError();
  *v16 = v15;
  v16[1] = v14;
  swift_willThrow();
  swift_getErrorValue();
  v18 = *(v0 + 200);
  v17 = *(v0 + 208);
  v19 = *(v0 + 216);
  if (sub_1000DC3C0())
  {
    if (qword_100114090 != -1)
    {
      swift_once();
    }

    v20 = sub_1000DA370();
    sub_100015294(v20, qword_100128DD8);
    v21 = sub_1000DA350();
    v22 = sub_1000DBDB0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Widget Section Config service encountered missing record", v23, 2u);
    }

    v25 = *(v0 + 288);
    v24 = *(v0 + 296);

    v33 = sub_100033928(_swiftEmptyArrayStorage);

    v32 = 0xE700000000000000;
    v31 = 0x676E697373696DLL;
    goto LABEL_13;
  }

  v27 = *(v0 + 288);
  v26 = *(v0 + 296);
  swift_willThrow();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10006C980()
{
  v1 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  swift_willThrow();

  v5 = v0[40];
  swift_getErrorValue();
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[27];
  if (sub_1000DC3C0())
  {
    if (qword_100114090 != -1)
    {
      swift_once();
    }

    v9 = sub_1000DA370();
    sub_100015294(v9, qword_100128DD8);
    v10 = sub_1000DA350();
    v11 = sub_1000DBDB0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Widget Section Config service encountered missing record", v12, 2u);
    }

    v14 = v0[36];
    v13 = v0[37];

    v15 = sub_100033928(_swiftEmptyArrayStorage);

    v16 = v0[1];

    return v16(0x676E697373696DLL, 0xE700000000000000, v15);
  }

  else
  {
    v19 = v0[36];
    v18 = v0[37];
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_10006CB68(void *a1)
{
  v2 = sub_1000D95E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9CF0();
  type metadata accessor for WidgetSectionConfigRecordService();
  sub_10006D3E8(&qword_100117D30);
  sub_1000D9D50();

  result = v11;
  v8 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v8 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    v9 = a1[19];
    sub_100006C7C(a1 + 15, a1[18]);
    sub_1000D98B0();
    v10 = sub_1000D9520();
    (*(v3 + 8))(v6, v2);
    return v10;
  }

  return result;
}

uint64_t sub_10006CCD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100006C7C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10006D25C();
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_1000DB840();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10006CDB8()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  sub_100006D0C((v0 + 120));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10006CE1C()
{
  type metadata accessor for WidgetSectionConfigRecordService();

  return sub_1000D9D50();
}

uint64_t sub_10006CE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for WidgetSectionConfigRecordService();

  return Configurable.setting<A>(_:defaultValue:)(a1, a2, v9, a6);
}

uint64_t sub_10006CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for WidgetSectionConfigRecordService();

  return Configurable.setting<A>(_:_:)(a1, a2, a3, v11, a7);
}

uint64_t sub_10006CF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for WidgetSectionConfigRecordService();

  return Configurable.setting<A>(_:defaultValue:_:)(a1, a2, a3, a4, v13, a8);
}

uint64_t sub_10006CFBC(uint64_t a1)
{
  result = sub_10006D3E8(&qword_100117CF8);
  *(a1 + 8) = result;
  return result;
}

void sub_10006D000()
{
  if (!qword_100117D00)
  {
    sub_10006D058();
    v0 = sub_1000DC330();
    if (!v1)
    {
      atomic_store(v0, &qword_100117D00);
    }
  }
}

void sub_10006D058()
{
  if (!qword_100117D08)
  {
    sub_10006D138(255, &qword_100114E28, &type metadata accessor for Array);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100117D08);
    }
  }
}

uint64_t sub_10006D0DC(uint64_t a1)
{
  sub_10006D058();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10006D138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10006D18C()
{
  if (!qword_100117D10)
  {
    sub_10006D1FC();
    sub_10006D25C();
    v0 = sub_1000DBC50();
    if (!v1)
    {
      atomic_store(v0, &qword_100117D10);
    }
  }
}

void sub_10006D1FC()
{
  if (!qword_100117D18)
  {
    v0 = sub_1000DB860();
    if (!v1)
    {
      atomic_store(v0, &qword_100117D18);
    }
  }
}

unint64_t sub_10006D25C()
{
  result = qword_1001145F0;
  if (!qword_1001145F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001145F0);
  }

  return result;
}

unint64_t sub_10006D2EC()
{
  result = qword_100117D20;
  if (!qword_100117D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D20);
  }

  return result;
}

uint64_t sub_10006D340(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10006D394()
{
  result = qword_100117D28;
  if (!qword_100117D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D28);
  }

  return result;
}

uint64_t sub_10006D3E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WidgetSectionConfigRecordService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10006D448()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

id sub_10006D488()
{
  v0 = objc_allocWithZone(UIColor);

  return [v0 initWithRed:0.305882353 green:0.674509804 blue:0.97254902 alpha:1.0];
}

uint64_t sub_10006D4F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_100053DE0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000D92D0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10006D630(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_100053DE0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000D92D0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10006D774()
{
  sub_100053418(319);
  if (v0 <= 0x3F)
  {
    sub_100053DE0();
    if (v1 <= 0x3F)
    {
      sub_1000D92D0();
      if (v2 <= 0x3F)
      {
        sub_10006D868();
        if (v3 <= 0x3F)
        {
          sub_10006D8C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10006D868()
{
  if (!qword_100116E78)
  {
    v0 = sub_1000DB8C0();
    if (!v1)
    {
      atomic_store(v0, &qword_100116E78);
    }
  }
}

void sub_10006D8C0()
{
  if (!qword_100116A18)
  {
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_100116A18);
    }
  }
}

uint64_t sub_10006D924(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D9090();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10006D9A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D9090();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10006DA14()
{
  result = sub_1000D9090();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10006DA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v233 = a4;
  v234 = a3;
  v235 = a1;
  v226 = a5;
  v195 = type metadata accessor for PreparedSparkline.Entry(0);
  v8 = *(*(v195 - 8) + 64);
  __chkstk_darwin(v195);
  v190 = &v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v191 = &v189 - v11;
  sub_100071D18();
  v194 = v12;
  v193 = *(v12 - 8);
  v13 = *(v193 + 64);
  __chkstk_darwin(v12);
  v192 = &v189 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071DAC(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v208 = &v189 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071E44();
  v215 = v18;
  v216 = *(v18 - 1);
  v19 = *(v216 + 64);
  __chkstk_darwin(v18);
  v206 = &v189 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for PreparedSparkline(0);
  v224 = *(v225 - 8);
  v21 = *(v224 + 64);
  __chkstk_darwin(v225);
  v205 = &v189 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_1000DA370();
  v223 = *(v222 - 8);
  v23 = *(v223 + 64);
  __chkstk_darwin(v222);
  v217 = &v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_1000D92D0();
  v210 = *(v211 - 8);
  v25 = *(v210 + 64);
  __chkstk_darwin(v211);
  v221 = &v189 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071F74(0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v209 = &v189 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000D9C40();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v219 = &v189 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v218 = (&v189 - v35);
  v204 = sub_1000D9090();
  v203 = *(v204 - 8);
  v36 = *(v203 + 64);
  __chkstk_darwin(v204);
  v202 = &v189 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023750(0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v201 = &v189 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_1000D9480();
  v199 = *(v200 - 8);
  v41 = *(v199 + 64);
  __chkstk_darwin(v200);
  v198 = &v189 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053DE0();
  v197 = v43;
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v220 = &v189 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v196 = &v189 - v47;
  v230 = sub_1000D9A50();
  v228 = *(v230 - 8);
  v48 = *(v228 + 64);
  __chkstk_darwin(v230);
  v213 = &v189 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_1000D9B40();
  v227 = *(v229 - 8);
  v50 = *(v227 + 64);
  __chkstk_darwin(v229);
  v212 = &v189 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007330C(0);
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52 - 8);
  v55 = &v189 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v58 = &v189 - v57;
  v59 = sub_1000D9AA0();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  __chkstk_darwin(v59);
  v207 = &v189 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v214 = &v189 - v64;
  __chkstk_darwin(v65);
  v67 = &v189 - v66;
  __chkstk_darwin(v68);
  v70 = &v189 - v69;
  v71 = a2;
  sub_1000738DC(a2, v58, sub_10007330C);
  v231 = v60;
  v72 = *(v60 + 48);
  v73 = v72(v58, 1, v59);
  v232 = v71;
  if (v73 == 1)
  {
    v214 = v59;
    sub_1000728D4(v58, sub_10007330C);
  }

  else
  {
    (*(v231 + 32))(v70, v58, v59);
    if ((sub_1000D9A20() & 1) == 0)
    {
      v88 = v227;
      v89 = v234;
      (*(v227 + 16))(v212, v234, v229);
      v90 = v228;
      v91 = v235;
      (*(v228 + 16))(v213, v235, v230);
      v92 = *(v231 + 16);
      v221 = v67;
      v92(v67, v70, v59);
      v92(v214, v70, v59);
      v93 = v207;
      v92(v207, v70, v59);
      v94 = v233;
      v95 = sub_1000DA350();
      LODWORD(v220) = sub_1000DBDD0();
      if (os_log_type_enabled(v95, v220))
      {
        v218 = v95;
        v219 = v70;
        v96 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        v236 = v216;
        *v96 = 136447234;
        v97 = v212;
        v98 = sub_1000D9B20();
        v99 = v90;
        v101 = v100;
        v102 = *(v88 + 8);
        v227 = v88 + 8;
        v217 = v102;
        (v102)(v97, v229);
        v103 = sub_1000848C8(v98, v101, &v236);

        *(v96 + 4) = v103;
        *(v96 + 12) = 2082;
        v104 = v196;
        v105 = v213;
        sub_1000D9A40();
        v237 = 0;
        v238 = 0xE000000000000000;
        v106 = v204;
        sub_1000DC0C0();
        v244._countAndFlagsBits = 3026478;
        v244._object = 0xE300000000000000;
        sub_1000DBA00(v244);
        v107 = *(v197 + 36);
        sub_1000DC0C0();
        v108 = v237;
        v109 = v238;
        sub_1000728D4(v104, sub_100053DE0);
        v110 = *(v99 + 8);
        v228 = v99 + 8;
        v215 = v110;
        v110(v105, v230);
        v111 = sub_1000848C8(v108, v109, &v236);

        *(v96 + 14) = v111;
        *(v96 + 22) = 2082;
        v112 = v198;
        v113 = v221;
        sub_1000D9A60();
        v114 = sub_1000D9470();
        v116 = v115;
        (*(v199 + 8))(v112, v200);
        v231 = *(v231 + 8);
        (v231)(v113, v59);
        v117 = sub_1000848C8(v114, v116, &v236);
        v118 = v106;

        *(v96 + 24) = v117;
        *(v96 + 32) = 2082;
        v119 = v201;
        v120 = v214;
        sub_1000D9A70();
        v121 = v203;
        if ((*(v203 + 48))(v119, 1, v106) == 1)
        {
          sub_1000728D4(v119, sub_100023750);
          v122 = 0xE300000000000000;
          v123 = 7104878;
        }

        else
        {
          v123 = sub_1000D9070();
          v122 = v169;
          (*(v121 + 8))(v119, v106);
        }

        v170 = v223;
        (v231)(v120, v59);
        v171 = sub_1000848C8(v123, v122, &v236);

        *(v96 + 34) = v171;
        *(v96 + 42) = 2082;
        v172 = v202;
        v173 = v207;
        sub_1000D9A80();
        sub_100071B28(&qword_100115308, &type metadata accessor for Date);
        v174 = sub_1000DC320();
        v176 = v175;
        (*(v121 + 8))(v172, v118);
        v177 = v231;
        (v231)(v173, v59);
        v178 = sub_1000848C8(v174, v176, &v236);

        *(v96 + 44) = v178;
        v179 = v218;
        _os_log_impl(&_mh_execute_header, v218, v220, "Sparkline model for %{public}s with date range %{public}s not considered valid for quote (exchangeStatus: %{public}s, serverCreatedAt: %{public}s, dateLastRefreshed: %{public}s)", v96, 0x34u);
        swift_arrayDestroy();

        (*(v170 + 8))(v233, v222);
        (v217)(v234, v229);
        sub_1000728D4(v232, sub_10007330C);
        v215(v235, v230);
        v177(v219, v59);
      }

      else
      {
        v158 = v91;

        (*(v223 + 8))(v94, v222);
        v233 = *(v88 + 8);
        v159 = v229;
        v233(v89, v229);
        sub_1000728D4(v232, sub_10007330C);
        v160 = *(v90 + 8);
        v161 = v230;
        v160(v158, v230);
        v162 = *(v231 + 8);
        v162(v93, v59);
        v162(v214, v59);
        v162(v221, v59);
        v160(v213, v161);
        v233(v212, v159);
        v162(v70, v59);
      }

      goto LABEL_25;
    }

    v74 = *(v231 + 8);
    v214 = v59;
    v74(v70, v59);
  }

  v75 = v218;
  v76 = v234;
  sub_1000D9B00();
  v77 = v219;
  (*(v31 + 104))(v219, enum case for StockType.mutualFund(_:), v30);
  sub_100071B28(&qword_100117EC8, &type metadata accessor for StockType);
  v78 = sub_1000DB8D0();
  v79 = *(v31 + 8);
  v79(v77, v30);
  v79(v75, v30);
  if (v78)
  {
    (*(v223 + 8))(v233, v222);
    (*(v227 + 8))(v76, v229);
    sub_1000728D4(v232, sub_10007330C);
    (*(v228 + 8))(v235, v230);
LABEL_25:
    v85 = v225;
    v137 = v224;
    return (*(v137 + 56))(v226, 1, 1, v85);
  }

  v80 = v235;
  sub_1000D9A40();
  sub_1000D92C0();
  v81 = sub_1000D99F0();
  LODWORD(v218) = v82;
  sub_1000738DC(v232, v55, sub_10007330C);
  v83 = v214;
  v84 = v72(v55, 1, v214);
  v85 = v225;
  v219 = v81;
  if (v84 == 1)
  {
    sub_1000728D4(v55, sub_10007330C);
    v86 = 0;
    v87 = 1;
  }

  else
  {
    v86 = sub_1000D9A90();
    v87 = v124;
    (*(v231 + 8))(v55, v83);
  }

  v125 = v223;
  v126 = v222;
  v127 = v208;
  v128 = v80;
  v129 = sub_1000D9A30();
  v130 = v217;
  (*(v125 + 16))(v217, v233, v126);
  v237 = v129;
  v238 = sub_1000727FC;
  v239 = 0;
  v240 = sub_10000F104;
  v241 = 0;
  v242 = sub_10000F19C;
  v243 = 0;
  sub_1000103E8();
  sub_100073340();
  sub_100071B28(&qword_100117F08, sub_100073340);
  sub_1000DA230();
  v131 = v216;
  v132 = v215;
  if ((*(v216 + 48))(v127, 1, v215) == 1)
  {
    sub_1000728D4(v127, sub_100071DAC);
    v133 = sub_1000DA350();
    v134 = sub_1000DBDB0();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&_mh_execute_header, v133, v134, "Failed to create sparkline model: Insufficient data points", v135, 2u);
    }

    v136 = *(v125 + 8);
    v136(v233, v126);
    (*(v227 + 8))(v234, v229);
    sub_1000728D4(v232, sub_10007330C);
    (*(v228 + 8))(v128, v230);
    v136(v130, v126);
    v137 = v224;
LABEL_30:
    v182 = v209;
    v184 = v220;
    (*(v210 + 8))(v221, v211);
    sub_1000728D4(v184, sub_100053DE0);
    v183 = 1;
    goto LABEL_31;
  }

  v138 = v206;
  (*(v131 + 32))(v206, v127, v132);
  v139 = sub_1000DA1E0();
  v140 = v232;
  if (v139 >= 250)
  {
    v163 = v217;
    v164 = sub_1000DA350();
    v165 = sub_1000DBDC0();
    v166 = os_log_type_enabled(v164, v165);
    v137 = v224;
    if (v166)
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&_mh_execute_header, v164, v165, "Failed to create sparkline model: too many categories", v167, 2u);

      v168 = *(v125 + 8);
      v168(v233, v126);
      (*(v227 + 8))(v234, v229);
      sub_1000728D4(v140, sub_10007330C);
      (*(v228 + 8))(v128, v230);
      (*(v216 + 8))(v206, v215);
    }

    else
    {

      v168 = *(v125 + 8);
      v168(v233, v126);
      (*(v227 + 8))(v234, v229);
      sub_1000728D4(v140, sub_10007330C);
      (*(v228 + 8))(v128, v230);
      (*(v216 + 8))(v206, v132);
    }

    v168(v163, v126);
    goto LABEL_30;
  }

  v141 = v218;
  v142 = v218 & 1;
  v143 = v205;
  v144 = v220;
  sub_1000738DC(v220, &v205[v85[5]], sub_100053DE0);
  (*(v210 + 16))(&v143[v85[6]], v221, v211);
  v145 = &v143[v85[8]];
  *v145 = v219;
  v145[8] = v142;
  v146 = v192;
  sub_100071FA8(v138, v86, v87 & 1, v144);
  v147 = v194;
  sub_1000DA200();
  *v143 = v236;
  sub_1000724D0(v146, a6);
  v148 = &v143[v85[7]];
  *v148 = v149;
  *(v148 + 1) = v150;
  sub_100071B28(&qword_100117EB8, sub_100053418);
  v151 = v191;
  sub_1000DA210();
  v152 = v195;
  v153 = *(v151 + *(v195 + 20));
  sub_1000728D4(v151, type metadata accessor for PreparedSparkline.Entry);
  if (v141)
  {
    v154 = v144;
    v155 = v190;
    sub_1000DA1F0();
    v156 = *(v125 + 8);
    v156(v233, v126);
    (*(v227 + 8))(v234, v229);
    sub_1000728D4(v232, sub_10007330C);
    (*(v228 + 8))(v235, v230);
    (*(v193 + 8))(v146, v147);
    (*(v216 + 8))(v138, v215);
    v156(v217, v126);
    (*(v210 + 8))(v221, v211);
    sub_1000728D4(v154, sub_100053DE0);
    v157 = *(v155 + *(v152 + 20));
    sub_1000728D4(v155, type metadata accessor for PreparedSparkline.Entry);
  }

  else
  {
    v180 = *(v125 + 8);
    v180(v233, v126);
    (*(v227 + 8))(v234, v229);
    sub_1000728D4(v232, sub_10007330C);
    (*(v228 + 8))(v235, v230);
    (*(v193 + 8))(v146, v147);
    (*(v216 + 8))(v138, v215);
    v180(v217, v126);
    (*(v210 + 8))(v221, v211);
    sub_1000728D4(v144, sub_100053DE0);
    v157 = *&v219;
  }

  v181 = v205;
  v205[v85[9]] = v153 - v157 < 0.0;
  v182 = v209;
  sub_100072934(v181, v209, type metadata accessor for PreparedSparkline);
  v183 = 0;
  v137 = v224;
LABEL_31:
  v185 = *(v137 + 56);
  v185(v182, v183, 1, v85);
  if ((*(v137 + 48))(v182, 1, v85))
  {
    sub_1000728D4(v182, sub_100071F74);
    return (*(v137 + 56))(v226, 1, 1, v85);
  }

  v187 = v182;
  v188 = v226;
  sub_100072934(v187, v226, type metadata accessor for PreparedSparkline);
  return (v185)(v188, 0, 1, v85);
}

uint64_t sub_10006F6C4@<X0>(void *a1@<X8>)
{
  sub_100071F0C();
  v3 = v2;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_1000D9090();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  sub_10007299C(14, 0, 0, &v26 - v16);
  sub_10007299C(20, 30, 0, v14);
  sub_100071B28(&qword_100116E58, &type metadata accessor for Date);
  result = sub_1000DB8B0();
  if (result)
  {
    v19 = v11[4];
    (v19)(v9, v17, v10);
    (v19)(&v9[*(v3 + 48)], v14, v10);
    sub_1000738DC(v9, v6, sub_100071F0C);
    v26 = *(v3 + 48);
    v20 = type metadata accessor for PreparedSparkline(0);
    v27 = a1 + v20[5];
    v19();
    v21 = v11[1];
    v21(&v6[v26], v10);
    sub_100072934(v9, v6, sub_100071F0C);
    v22 = *(v3 + 48);
    sub_100053DE0();
    (v19)(&v27[*(v23 + 36)], &v6[v22], v10);
    v21(v6, v10);
    v24 = a1 + v20[6];
    result = sub_1000D92C0();
    *a1 = _swiftEmptyArrayStorage;
    *(a1 + v20[7]) = xmmword_1000E2760;
    v25 = a1 + v20[8];
    *v25 = 0x4028000000000000;
    v25[8] = 0;
    *(a1 + v20[9]) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006F9D8@<X0>(uint64_t a1@<X8>)
{
  v118 = type metadata accessor for PreparedSparkline.Entry(0);
  v2 = *(*(v118 - 8) + 64);
  v3 = __chkstk_darwin(v118);
  v117 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v114 = &v112 - v5;
  sub_100071D18();
  v116 = v6;
  v115 = *(v6 - 8);
  v7 = *(v115 + 64);
  __chkstk_darwin(v6);
  v113 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071DAC(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v122 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071E44();
  v130 = v12;
  v123 = *(v12 - 8);
  v13 = *(v123 + 64);
  __chkstk_darwin(v12);
  v119 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PreparedSparkline(0);
  v127 = *(v15 - 8);
  v16 = *(v127 + 64);
  __chkstk_darwin(v15);
  v112 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000DA370();
  v125 = *(v18 - 8);
  v126 = v18;
  v19 = *(v125 + 64);
  __chkstk_darwin(v18);
  v134 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000D92D0();
  v131 = *(v21 - 8);
  v132 = v21;
  v22 = *(v131 + 64);
  __chkstk_darwin(v21);
  v133 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071F0C();
  v25 = v24;
  v26 = *(*(v24 - 8) + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v112 - v30;
  v32 = sub_1000D9090();
  v33 = *(v32 - 8);
  v34 = v33[8];
  v35 = __chkstk_darwin(v32);
  v37 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v112 - v38;
  sub_100053DE0();
  v121 = v40;
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v43 = &v112 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071F74(0);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v124 = &v112 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007299C(14, 0, 0, v39);
  sub_10007299C(20, 30, 0, v37);
  sub_100071B28(&qword_100116E58, &type metadata accessor for Date);
  if (sub_1000DB8B0())
  {
    v120 = v15;
    v129 = a1;
    v47 = v33[4];
    v47(v31, v39, v32);
    v47(&v31[*(v25 + 48)], v37, v32);
    sub_1000738DC(v31, v29, sub_100071F0C);
    v48 = *(v25 + 48);
    v47(v43, v29, v32);
    v49 = v33[1];
    v49(&v29[v48], v32);
    sub_100072934(v31, v29, sub_100071F0C);
    v50 = *(v25 + 48);
    v51 = *(v121 + 36);
    v128 = v43;
    v47(&v43[v51], &v29[v50], v32);
    v49(v29, v32);
    sub_1000D92C0();
    sub_100071DE0(0, &qword_100117EA8, sub_1000103E8, &type metadata accessor for _ContiguousArrayStorage);
    sub_1000103E8();
    v53 = v52;
    v54 = *(*(v52 - 8) + 72);
    v55 = (*(*(v52 - 8) + 80) + 32) & ~*(*(v52 - 8) + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000E2770;
    v56 = v25 + v55;
    v57 = *(v53 + 48);
    sub_10007299C(14, 0, 0, v56);
    *(v56 + v57) = 0x402419999999999ALL;
    v58 = *(v53 + 48);
    sub_10007299C(14, 22, 45, v56 + v54);
    *(v56 + v54 + v58) = 0x4023800000000000;
    v59 = *(v53 + 48);
    sub_10007299C(14, 47, 27, v56 + 2 * v54);
    *(v56 + 2 * v54 + v59) = 0x4021CCCCCCCCCCCDLL;
    v60 = *(v53 + 48);
    sub_10007299C(15, 11, 30, v56 + 3 * v54);
    *(v56 + 3 * v54 + v60) = 0x4022800000000000;
    v61 = *(v53 + 48);
    sub_10007299C(15, 36, 2, v56 + 4 * v54);
    *(v56 + 4 * v54 + v61) = 0x4028666666666666;
    v62 = *(v53 + 48);
    sub_10007299C(16, 0, 15, v56 + 5 * v54);
    *(v56 + 5 * v54 + v62) = 0x4025E66666666666;
    v63 = *(v53 + 48);
    sub_10007299C(16, 24, 18, v56 + 6 * v54);
    *(v56 + 6 * v54 + v63) = 0x402F000000000000;
    v64 = *(v53 + 48);
    sub_10007299C(16, 49, 0, v56 + 7 * v54);
    *(v56 + 7 * v54 + v64) = 0x4023B33333333333;
    v65 = *(v53 + 48);
    sub_10007299C(17, 12, 33, v56 + 8 * v54);
    *(v56 + 8 * v54 + v65) = 0x4021800000000000;
    v66 = *(v53 + 48);
    sub_10007299C(17, 39, 22, v56 + 9 * v54);
    *(v56 + 9 * v54 + v66) = 0x4028800000000000;
    v67 = *(v53 + 48);
    sub_10007299C(18, 0, 30, v56 + 10 * v54);
    *(v56 + 10 * v54 + v67) = 0x402A666666666666;
    v68 = *(v53 + 48);
    sub_10007299C(18, 24, 52, v56 + 11 * v54);
    *(v56 + 11 * v54 + v68) = 0x4033B33333333333;
    v69 = *(v53 + 48);
    sub_10007299C(18, 49, 15, v56 + 12 * v54);
    *(v56 + 12 * v54 + v69) = 0x402CCCCCCCCCCCCDLL;
    v70 = *(v53 + 48);
    sub_10007299C(19, 13, 18, v56 + 13 * v54);
    *(v56 + 13 * v54 + v70) = 0x402F666666666666;
    v71 = *(v53 + 48);
    sub_10007299C(19, 37, 40, v56 + 14 * v54);
    *(v56 + 14 * v54 + v71) = 0x40274CCCCCCCCCCDLL;
    v72 = *(v53 + 48);
    sub_10007299C(20, 1, 33, v56 + 15 * v54);
    *(v56 + 15 * v54 + v72) = 0x4030000000000000;
    v73 = *(v53 + 48);
    sub_10007299C(20, 30, 0, v56 + 16 * v54);
    *(v56 + 16 * v54 + v73) = 0x4032666666666666;
    if (qword_100114090 == -1)
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
  v74 = v126;
  v75 = sub_100015294(v126, qword_100128DD8);
  v76 = v125;
  (*(v125 + 16))(v134, v75, v74);
  v136 = v25;
  sub_100071ED8(0);
  sub_100071B28(&qword_100117EB0, sub_100071ED8);
  v77 = v122;
  sub_1000DA230();
  v78 = v123;
  v79 = v130;
  if ((*(v123 + 48))(v77, 1, v130) == 1)
  {
    sub_1000728D4(v77, sub_100071DAC);
    v80 = sub_1000DA350();
    v81 = sub_1000DBDB0();
    v82 = os_log_type_enabled(v80, v81);
    v83 = v129;
    v84 = v133;
    if (v82)
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Failed to create sparkline model: Insufficient data points", v85, 2u);
    }

    v86 = v120;
  }

  else
  {
    v87 = v119;
    (*(v78 + 32))(v119, v77, v79);
    v88 = sub_1000DA1E0();
    v83 = v129;
    if (v88 < 250)
    {
      v86 = v120;
      v89 = v112;
      v90 = v128;
      sub_1000738DC(v128, &v112[v120[5]], sub_100053DE0);
      (*(v131 + 16))(&v89[v86[6]], v133, v132);
      v91 = &v89[v86[8]];
      *v91 = 0;
      v91[8] = 1;
      v92 = v113;
      sub_100071FA8(v87, 0, 1, v90);
      v93 = v116;
      sub_1000DA200();
      *v89 = v135;
      sub_1000724D0(v92, 0.5);
      v94 = &v89[v86[7]];
      *v94 = v95;
      *(v94 + 1) = v96;
      sub_100071B28(&qword_100117EB8, sub_100053418);
      v97 = v114;
      sub_1000DA210();
      v98 = *(v97 + *(v118 + 20));
      v99 = v87;
      sub_1000728D4(v97, type metadata accessor for PreparedSparkline.Entry);
      v100 = v117;
      sub_1000DA1F0();
      (*(v115 + 8))(v92, v93);
      (*(v78 + 8))(v99, v130);
      (*(v76 + 8))(v134, v74);
      (*(v131 + 8))(v133, v132);
      sub_1000728D4(v128, sub_100053DE0);
      v101 = *(v100 + *(v118 + 20));
      sub_1000728D4(v100, type metadata accessor for PreparedSparkline.Entry);
      v89[v86[9]] = v98 - v101 < 0.0;
      v102 = v89;
      v83 = v129;
      v103 = v124;
      sub_100072934(v102, v124, type metadata accessor for PreparedSparkline);
      v104 = 0;
      goto LABEL_13;
    }

    v105 = sub_1000DA350();
    v106 = sub_1000DBDC0();
    v107 = os_log_type_enabled(v105, v106);
    v86 = v120;
    v84 = v133;
    if (v107)
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "Failed to create sparkline model: too many categories", v108, 2u);
    }

    (*(v78 + 8))(v119, v79);
  }

  v109 = v128;
  (*(v76 + 8))(v134, v74);
  (*(v131 + 8))(v84, v132);
  sub_1000728D4(v109, sub_100053DE0);
  v104 = 1;
  v103 = v124;
LABEL_13:
  v110 = v127;
  (*(v127 + 56))(v103, v104, 1, v86);
  result = (*(v110 + 48))(v103, 1, v86);
  if (result != 1)
  {
    return sub_100072934(v103, v83, type metadata accessor for PreparedSparkline);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007097C(void *a1)
{
  v3 = v1;
  sub_100073AB4(0, &qword_100117FA0, sub_100073A60, &type metadata for PreparedSparkline.Entry.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100073A60();
  sub_1000DC480();
  v16 = 0;
  sub_1000D9090();
  sub_100073978();
  sub_1000DC2F0();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for PreparedSparkline.Entry(0) + 20));
    v15 = 1;
    sub_1000DC2D0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100070B34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v27 = sub_1000D9090();
  v25 = *(v27 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v27);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100073AB4(0, &qword_100117F90, sub_100073A60, &type metadata for PreparedSparkline.Entry.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v6 = v5;
  v26 = *(v5 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for PreparedSparkline.Entry(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_100073A60();
  v15 = v29;
  sub_1000DC470();
  if (v15)
  {
    return sub_100006D0C(a1);
  }

  v16 = v25;
  v31 = 0;
  sub_100073854();
  v17 = v27;
  sub_1000DC220();
  v18 = *(v16 + 32);
  v29 = v13;
  v18(v13, v28, v17);
  v30 = 1;
  sub_1000DC200();
  v20 = v19;
  (*(v26 + 8))(v9, v6);
  v21 = v29;
  *&v29[*(v10 + 20)] = v20;
  sub_1000738DC(v21, v24, type metadata accessor for PreparedSparkline.Entry);
  sub_100006D0C(a1);
  return sub_1000728D4(v21, type metadata accessor for PreparedSparkline.Entry);
}

uint64_t sub_100070EA4(void *a1)
{
  v3 = v1;
  sub_100073AB4(0, &qword_100117F58, sub_10007375C, &type metadata for PreparedSparkline.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_10007375C();
  sub_1000DC480();
  *&v19 = *v3;
  v20 = 0;
  sub_100053418(0);
  sub_1000737E4(&qword_100117F60, sub_100053418, sub_100073944);
  sub_1000DC2F0();
  if (!v2)
  {
    v12 = type metadata accessor for PreparedSparkline(0);
    v13 = v12[5];
    LOBYTE(v19) = 1;
    sub_100053DE0();
    sub_1000737E4(&qword_100117F70, sub_100053DE0, sub_100073978);
    sub_1000DC2F0();
    v14 = v12[6];
    LOBYTE(v19) = 2;
    sub_1000D92D0();
    sub_100071B28(&qword_100117F78, &type metadata accessor for TimeZone);
    sub_1000DC2F0();
    v19 = *(v3 + v12[7]);
    v20 = 3;
    sub_10006D868();
    sub_1000739AC(&qword_100117F80);
    sub_1000DC2F0();
    v15 = v3 + v12[8];
    v16 = *v15;
    v17 = v15[8];
    LOBYTE(v19) = 4;
    sub_1000DC280();
    LOBYTE(v19) = *(v3 + v12[9]);
    v20 = 5;
    sub_100073A0C();
    sub_1000DC2F0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100071268@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1000D92D0();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053DE0();
  v39 = v7;
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100073AB4(0, &qword_100117F18, sub_10007375C, &type metadata for PreparedSparkline.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v41 = v11;
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = type metadata accessor for PreparedSparkline(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_10007375C();
  v40 = v14;
  v20 = v42;
  sub_1000DC470();
  if (v20)
  {
    return sub_100006D0C(a1);
  }

  v21 = v38;
  v33 = v18;
  sub_100053418(0);
  v44 = 0;
  sub_1000737E4(&qword_100117F28, sub_100053418, sub_1000737B0);
  sub_1000DC220();
  v22 = v33;
  *v33 = v43;
  LOBYTE(v43) = 1;
  sub_1000737E4(&qword_100117F38, sub_100053DE0, sub_100073854);
  sub_1000DC220();
  v23 = v15;
  sub_100072934(v10, &v22[*(v15 + 20)], sub_100053DE0);
  LOBYTE(v43) = 2;
  sub_100071B28(&qword_100117F40, &type metadata accessor for TimeZone);
  v25 = v35;
  v24 = v36;
  sub_1000DC220();
  v42 = a1;
  (*(v37 + 32))(&v22[v23[6]], v25, v24);
  sub_10006D868();
  v44 = 3;
  sub_1000739AC(&qword_100117F48);
  sub_1000DC220();
  *&v22[v23[7]] = v43;
  LOBYTE(v43) = 4;
  v26 = sub_1000DC1B0();
  v27 = &v33[v23[8]];
  *v27 = v26;
  v27[8] = v28 & 1;
  v44 = 5;
  sub_100073888();
  sub_1000DC220();
  v29 = v42;
  (*(v21 + 8))(v40, v41);
  v31 = v33;
  v30 = v34;
  v33[v23[9]] = v43;
  sub_1000738DC(v31, v30, type metadata accessor for PreparedSparkline);
  sub_100006D0C(v29);
  return sub_1000728D4(v31, type metadata accessor for PreparedSparkline);
}

uint64_t sub_1000718DC()
{
  if (*v0)
  {
    result = 0x6563697270;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_10007190C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1000DC360() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6563697270 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000DC360();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000719E4(uint64_t a1)
{
  v2 = sub_100073A60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100071A20(uint64_t a1)
{
  v2 = sub_100073A60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100071B28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100071B70()
{
  v1 = *v0;
  v2 = 0x73656972746E65;
  v3 = 0x756F426563697270;
  v4 = 0x73756F6976657270;
  if (v1 != 4)
  {
    v4 = 0x646E657274;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E756F42656D6974;
  if (v1 != 1)
  {
    v5 = 0x656D695473697861;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100071C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100073D4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100071C70(uint64_t a1)
{
  v2 = sub_10007375C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100071CAC(uint64_t a1)
{
  v2 = sub_10007375C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100071D18()
{
  if (!qword_100117E70)
  {
    sub_100053418(255);
    sub_100071B28(&qword_100117E78, sub_100053418);
    v0 = sub_1000DA220();
    if (!v1)
    {
      atomic_store(v0, &qword_100117E70);
    }
  }
}

void sub_100071DE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100071E44()
{
  if (!qword_100117E88)
  {
    sub_100071ED8(255);
    sub_100071B28(&qword_100117E98, sub_100071ED8);
    v0 = sub_1000DA220();
    if (!v1)
    {
      atomic_store(v0, &qword_100117E88);
    }
  }
}

void sub_100071F0C()
{
  if (!qword_100117EA0)
  {
    sub_1000D9090();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100117EA0);
    }
  }
}

uint64_t sub_100071FA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v38 = a4;
  v39 = *&a2;
  v5 = sub_1000D9090();
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PreparedSparkline.Entry(0);
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v36 - v15;
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  sub_100071E44();
  sub_1000DA1D0();
  sub_100071D18();
  sub_100071B28(&qword_100117EB8, sub_100053418);
  sub_1000DA210();
  if ((a3 & 1) == 0 && *&v18[*(v9 + 20)] != v39)
  {
    sub_100053DE0();
    v20 = *(v19 + 36);
    sub_1000D9000();
    v21 = sub_1000D9020();
    (*(v37 + 8))(v8, v5);
    if (v21)
    {
      sub_1000D9000();
      *&v16[*(v9 + 20)] = v39;
      v39 = COERCE_DOUBLE(sub_1000DA1B0());
      v23 = v22;
      v24 = *v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_10007B3EC(0, v24[2] + 1, 1, v24);
        *v23 = v24;
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_10007B3EC(v26 > 1, v27 + 1, 1, v24);
        *v23 = v24;
      }

      v24[2] = v27 + 1;
      sub_100072934(v16, v24 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v27, type metadata accessor for PreparedSparkline.Entry);
      (*&v39)(v41, 0);
    }
  }

  if (sub_1000DA1E0() == 1)
  {
    sub_1000D9000();
    *&v13[*(v9 + 20)] = *&v18[*(v9 + 20)];
    v28 = sub_1000DA1B0();
    v30 = v29;
    v31 = *v29;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v30 = v31;
    if ((v32 & 1) == 0)
    {
      v31 = sub_10007B3EC(0, v31[2] + 1, 1, v31);
      *v30 = v31;
    }

    v34 = v31[2];
    v33 = v31[3];
    if (v34 >= v33 >> 1)
    {
      v31 = sub_10007B3EC(v33 > 1, v34 + 1, 1, v31);
      *v30 = v31;
    }

    v31[2] = v34 + 1;
    sub_100072934(v13, v31 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34, type metadata accessor for PreparedSparkline.Entry);
    v28(v41, 0);
  }

  return sub_1000728D4(v18, type metadata accessor for PreparedSparkline.Entry);
}

uint64_t sub_100072438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000103E8();
  v5 = *(a1 + *(v4 + 48));
  v6 = sub_1000D9090();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = type metadata accessor for PreparedSparkline.Entry(0);
  *(a2 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_1000724D0(uint64_t a1, double a2)
{
  sub_100071D18();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PreparedSparkline.Entry(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  sub_100071B28(&qword_100117EB8, sub_100053418);
  sub_1000DA210();
  v18 = *&v17[*(v10 + 20)];
  sub_1000728D4(v17, type metadata accessor for PreparedSparkline.Entry);
  (*(v6 + 16))(v9, a1, v5);
  sub_100071B28(&qword_100117EC0, sub_100071D18);
  result = sub_1000DBA40();
  v20 = v32;
  v21 = v33;
  v22 = *(v32 + 16);
  v23 = v18;
  v24 = v18;
  if (v33 != v22)
  {
    if (v33 >= v22)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v25 = *(v10 + 20);
    v26 = v32 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = v18;
    v23 = v18;
    v27 = v33;
    while ((v21 & 0x8000000000000000) == 0)
    {
      if (v27 >= *(v20 + 16))
      {
        goto LABEL_18;
      }

      sub_1000738DC(v26 + *(v11 + 72) * v27, v15, type metadata accessor for PreparedSparkline.Entry);
      v28 = *&v15[v25];
      if (v23 >= v28)
      {
        v23 = *&v15[v25];
      }

      result = sub_1000728D4(v15, type metadata accessor for PreparedSparkline.Entry);
      if (v28 > v24)
      {
        v24 = v28;
      }

      if (v22 == ++v27)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_11:

  v29 = a2 * 0.5 * v18;
  v30 = v18 + v29;
  v31 = v18 - v29;
  if (v24 > v30)
  {
    v30 = v24;
  }

  if (v31 >= v23)
  {
    v31 = v23;
  }

  if (v31 > v30)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1000727FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000D9A10();
  if (v3)
  {
    sub_1000103E8();
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a1;
    v8 = 1;
  }

  else
  {
    v9 = v2;
    sub_1000103E8();
    v11 = v10;
    v12 = *(v10 + 48);
    sub_1000D9A00();
    *(a1 + v12) = v9;
    v5 = *(*(v11 - 8) + 56);
    v7 = a1;
    v8 = 0;
    v6 = v11;
  }

  return v5(v7, v8, 1, v6);
}

uint64_t sub_1000728D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100072934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007299C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a2;
  v59 = a3;
  v56 = a1;
  v45 = a4;
  v60 = sub_1000D9210();
  v57 = *(v60 - 8);
  v4 = *(v57 + 64);
  __chkstk_darwin(v60);
  v55 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D9220();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  __chkstk_darwin(v6);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1000D91F0();
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v62);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000D9090();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000D92D0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000D91D0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000D9280();
  v48 = *(v26 - 8);
  v49 = v26;
  v27 = *(v48 + 64);
  __chkstk_darwin(v26);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023750(0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 104))(v25, enum case for Calendar.Identifier.gregorian(_:), v21);
  sub_1000D91E0();
  (*(v22 + 8))(v25, v21);
  if (qword_100114138 != -1)
  {
    swift_once();
  }

  v34 = sub_100015294(v16, qword_100128F10);
  (*(v17 + 16))(v20, v34, v16);
  v61 = v29;
  sub_1000D9260();
  v46 = v15;
  sub_1000D9050();
  v35 = v47;
  (*(v9 + 104))(v47, enum case for Calendar.MatchingPolicy.nextTime(_:), v62);
  v37 = v52;
  v36 = v53;
  v38 = v54;
  (*(v53 + 104))(v52, enum case for Calendar.RepeatedTimePolicy.first(_:), v54);
  v39 = v57;
  v40 = v55;
  v41 = v60;
  (*(v57 + 104))(v55, enum case for Calendar.SearchDirection.forward(_:), v60);
  sub_1000D9240();
  (*(v39 + 8))(v40, v41);
  (*(v36 + 8))(v37, v38);
  (*(v9 + 8))(v35, v62);
  v43 = v50;
  v42 = v51;
  (*(v50 + 8))(v46, v51);
  (*(v48 + 8))(v61, v49);
  result = (*(v43 + 48))(v33, 1, v42);
  if (result != 1)
  {
    return (*(v43 + 32))(v45, v33, v42);
  }

  __break(1u);
  return result;
}

uint64_t sub_100072FC4()
{
  sub_100071DE0(0, &qword_100115360, &type metadata accessor for TimeZone, &type metadata accessor for Optional);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1000D92D0();
  sub_1000152CC(v4, qword_100128F10);
  v5 = sub_100015294(v4, qword_100128F10);
  sub_1000D9290();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007310C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreparedSparkline.Entry(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_1000738DC(v14, v11, type metadata accessor for PreparedSparkline.Entry);
    if (!v12)
    {
      break;
    }

    sub_1000738DC(v15, v7, type metadata accessor for PreparedSparkline.Entry);
    if ((sub_1000D9040() & 1) == 0)
    {
      sub_1000728D4(v7, type metadata accessor for PreparedSparkline.Entry);
      sub_1000728D4(v11, type metadata accessor for PreparedSparkline.Entry);
      return 0;
    }

    v18 = *&v11[*(v4 + 20)];
    sub_1000728D4(v11, type metadata accessor for PreparedSparkline.Entry);
    v19 = *&v7[*(v4 + 20)];
    sub_1000728D4(v7, type metadata accessor for PreparedSparkline.Entry);
    result = v18 == v19;
    v20 = v18 != v19 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_100073340()
{
  if (!qword_100117ED0)
  {
    sub_1000733EC();
    sub_1000103E8();
    sub_100071B28(&qword_100117F00, sub_1000733EC);
    v0 = sub_1000DC0B0();
    if (!v1)
    {
      atomic_store(v0, &qword_100117ED0);
    }
  }
}

void sub_1000733EC()
{
  if (!qword_100117ED8)
  {
    sub_100073480();
    sub_100071B28(&qword_100117EF8, sub_100073480);
    v0 = sub_1000DC100();
    if (!v1)
    {
      atomic_store(v0, &qword_100117ED8);
    }
  }
}

void sub_100073480()
{
  if (!qword_100117EE0)
  {
    sub_10007355C(255);
    sub_100071DE0(255, &qword_100114E18, sub_1000103E8, &type metadata accessor for Optional);
    sub_100071B28(&qword_100117EF0, sub_10007355C);
    v0 = sub_1000DC0B0();
    if (!v1)
    {
      atomic_store(v0, &qword_100117EE0);
    }
  }
}

uint64_t sub_100073590(uint64_t *a1, uint64_t *a2)
{
  if ((sub_10007310C(*a1, *a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = type metadata accessor for PreparedSparkline(0);
  v5 = v4[5];
  sub_1000D9090();
  sub_100071B28(&qword_100117F10, &type metadata accessor for Date);
  if ((sub_1000DB8D0() & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_100053DE0();
  v7 = *(v6 + 36);
  if ((sub_1000DB8D0() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v4[6];
  if ((sub_1000D92B0() & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = v4[7];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  if (v10 != *v12 || v11 != v12[1])
  {
    goto LABEL_9;
  }

  v16 = v4[8];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if (v18)
  {
    if (!v20)
    {
LABEL_9:
      v14 = 0;
      return v14 & 1;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      goto LABEL_9;
    }
  }

  v21 = v4[9];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22)
  {
    v24 = 1853321060;
  }

  else
  {
    v24 = 28789;
  }

  if (v22)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE200000000000000;
  }

  if (v23)
  {
    v26 = 1853321060;
  }

  else
  {
    v26 = 28789;
  }

  if (v23)
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE200000000000000;
  }

  if (v24 == v26 && v25 == v27)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1000DC360();
  }

  return v14 & 1;
}

unint64_t sub_10007375C()
{
  result = qword_100117F20;
  if (!qword_100117F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117F20);
  }

  return result;
}

uint64_t sub_1000737E4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100073888()
{
  result = qword_100117F50;
  if (!qword_100117F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117F50);
  }

  return result;
}

uint64_t sub_1000738DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000739AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10006D868();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100073A0C()
{
  result = qword_100117F88;
  if (!qword_100117F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117F88);
  }

  return result;
}

unint64_t sub_100073A60()
{
  result = qword_100117F98;
  if (!qword_100117F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117F98);
  }

  return result;
}

void sub_100073AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_100073B40()
{
  result = qword_100117FA8;
  if (!qword_100117FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FA8);
  }

  return result;
}

unint64_t sub_100073B98()
{
  result = qword_100117FB0;
  if (!qword_100117FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FB0);
  }

  return result;
}

unint64_t sub_100073BF0()
{
  result = qword_100117FB8;
  if (!qword_100117FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FB8);
  }

  return result;
}

unint64_t sub_100073C48()
{
  result = qword_100117FC0;
  if (!qword_100117FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FC0);
  }

  return result;
}

unint64_t sub_100073CA0()
{
  result = qword_100117FC8;
  if (!qword_100117FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FC8);
  }

  return result;
}

unint64_t sub_100073CF8()
{
  result = qword_100117FD0;
  if (!qword_100117FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FD0);
  }

  return result;
}

uint64_t sub_100073D4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656972746E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E756F42656D6974 && a2 == 0xEA00000000007364 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D695473697861 && a2 == 0xEC000000656E6F5ALL || (sub_1000DC360() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F426563697270 && a2 == 0xEB0000000073646ELL || (sub_1000DC360() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73756F6976657270 && a2 == 0xED000065736F6C43 || (sub_1000DC360() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646E657274 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100073F5C()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_100073FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007BC5C(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1000DBEF0();
  v6 = result;
  v7 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_10007BC5C((v13 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v12];
    v14[4] = v23;
    v14[5] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_10007CB04(v6, v24, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_10007CB04(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10007420C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000742B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000742DC, v2, 0);
}

uint64_t sub_1000742DC()
{
  v47 = v0;
  v1 = v0[4];
  v2 = v1[18];
  sub_100006C7C(v1 + 14, v1[17]);
  if (sub_1000D9800())
  {
    v3 = v1[18];
    sub_100006C7C(v1 + 14, v1[17]);
    v4 = sub_1000D9820();
    v5 = v0[3];
    v6 = v0[4];
    if (v4)
    {
      v7 = v1[18];
      sub_100006C7C(v1 + 14, v1[17]);
      LOBYTE(v7) = sub_1000D9830();

      v8 = sub_1000DA350();
      v9 = sub_1000DBDD0();

      v10 = os_log_type_enabled(v8, v9);
      if (v7)
      {
        if (v10)
        {
          v12 = v0[2];
          v11 = v0[3];
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v46 = v14;
          *v13 = 136315138;
          *(v13 + 4) = sub_1000848C8(v12, v11, &v46);
          _os_log_impl(&_mh_execute_header, v8, v9, "Using widget-specific config for fetching mandatory headlines for symbol=%s", v13, 0xCu);
          sub_100006D0C(v14);
        }

        v15 = v0[4];
        v17 = *(v15 + 168);
        v16 = *(v15 + 176);
        ObjectType = swift_getObjectType();
        v19 = *(v16 + 16);
        v45 = (v19 + *v19);
        v20 = v19[1];
        v21 = swift_task_alloc();
        v0[5] = v21;
        *v21 = v0;
        v22 = sub_100074848;
      }

      else
      {
        if (v10)
        {
          v36 = v0[2];
          v35 = v0[3];
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v46 = v38;
          *v37 = 136315138;
          *(v37 + 4) = sub_1000848C8(v36, v35, &v46);
          _os_log_impl(&_mh_execute_header, v8, v9, "Using Top Stories-service for fetching mandatory headlines for symbol=%s", v37, 0xCu);
          sub_100006D0C(v38);
        }

        v39 = v0[4];
        v40 = *(v39 + 152);
        v16 = *(v39 + 160);
        ObjectType = swift_getObjectType();
        v41 = *(v16 + 16);
        v45 = (v41 + *v41);
        v42 = v41[1];
        v21 = swift_task_alloc();
        v0[6] = v21;
        *v21 = v0;
        v22 = sub_100074948;
      }

      v21[1] = v22;
      v44 = v0[2];
      v43 = v0[3];

      return v45(v44, v43, ObjectType, v16);
    }

    v27 = v0[3];

    v24 = sub_1000DA350();
    v28 = sub_1000DBDD0();

    if (os_log_type_enabled(v24, v28))
    {
      v30 = v0[2];
      v29 = v0[3];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1000848C8(v30, v29, &v46);
      _os_log_impl(&_mh_execute_header, v24, v28, "Widget news curation is disabled, skipping mandatory headlines fetch for symbol=%s", v31, 0xCu);
      sub_100006D0C(v32);

      goto LABEL_11;
    }
  }

  else
  {
    v23 = v0[4] + OBJC_IVAR____TtC12StocksWidget24MandatoryHeadlineService_logger;
    v24 = sub_1000DA350();
    v25 = sub_1000DBDD0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Widget news curation is disabled, because no Apple News content is being served", v26, 2u);
LABEL_11:
    }
  }

  v33 = v0[1];

  return v33(_swiftEmptyArrayStorage);
}

uint64_t sub_100074848(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100074948(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100074A48(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_100074A68, v1, 0);
}

uint64_t sub_100074A68()
{
  v55 = v0;
  v1 = v0[6];
  v2 = v1[18];
  sub_100006C7C(v1 + 14, v1[17]);
  if (sub_1000D9800())
  {
    v3 = v1[18];
    sub_100006C7C(v1 + 14, v1[17]);
    v4 = sub_1000D9820();
    v5 = v0[5];
    v6 = v0[6];
    if (v4)
    {
      v7 = v1[18];
      sub_100006C7C(v1 + 14, v1[17]);
      v8 = sub_1000D9830();

      v9 = sub_1000DA350();
      v10 = sub_1000DBDD0();

      v11 = os_log_type_enabled(v9, v10);
      if (v8)
      {
        if (v11)
        {
          v12 = v0[5];
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v54 = v14;
          *v13 = 136315138;
          v0[4] = v12;
          sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
          sub_10007CA88();
          v15 = sub_1000DB890();
          v17 = sub_1000848C8(v15, v16, &v54);

          *(v13 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v9, v10, "Using Top Stories-service for fetching mandatory headlines for symbols=[%s]", v13, 0xCu);
          sub_100006D0C(v14);
        }

        v18 = v0[6];
        v20 = *(v18 + 168);
        v19 = *(v18 + 176);
        ObjectType = swift_getObjectType();
        v22 = *(v19 + 24);
        v53 = (v22 + *v22);
        v23 = v22[1];
        v24 = swift_task_alloc();
        v0[7] = v24;
        *v24 = v0;
        v25 = sub_1000750F0;
      }

      else
      {
        if (v11)
        {
          v42 = v0[5];
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v54 = v44;
          *v43 = 136315138;
          v0[3] = v42;
          sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
          sub_10007CA88();
          v45 = sub_1000DB890();
          v47 = sub_1000848C8(v45, v46, &v54);

          *(v43 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v9, v10, "Using widget-specific config for fetching mandatory headlines for symbols=[%s]", v43, 0xCu);
          sub_100006D0C(v44);
        }

        v48 = v0[6];
        v49 = *(v48 + 152);
        v19 = *(v48 + 160);
        ObjectType = swift_getObjectType();
        v50 = *(v19 + 24);
        v53 = (v50 + *v50);
        v51 = v50[1];
        v24 = swift_task_alloc();
        v0[8] = v24;
        *v24 = v0;
        v25 = sub_1000751F0;
      }

      v24[1] = v25;
      v52 = v0[5];

      return v53(v52, ObjectType, v19);
    }

    v30 = v0[5];

    v31 = sub_1000DA350();
    v32 = sub_1000DBDD0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[5];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54 = v35;
      *v34 = 136315138;
      v0[2] = v33;
      sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
      sub_10007CA88();
      v36 = sub_1000DB890();
      v38 = sub_1000848C8(v36, v37, &v54);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "Widget news curation is disabled, skipping mandatory headlines fetch for symbols=[%s]", v34, 0xCu);
      sub_100006D0C(v35);
    }
  }

  else
  {
    v26 = v0[6] + OBJC_IVAR____TtC12StocksWidget24MandatoryHeadlineService_logger;
    v27 = sub_1000DA350();
    v28 = sub_1000DBDD0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Widget news curation is disabled, because no Apple News content is being served", v29, 2u);
    }
  }

  v39 = sub_100033A30(_swiftEmptyArrayStorage);
  v40 = v0[1];

  return v40(v39);
}

uint64_t sub_1000750F0(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1000751F0(uint64_t a1)
{
  v4 = *(*v2 + 64);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1000752F0()
{
  sub_100006D0C(v0 + 14);
  v1 = v0[19];
  swift_unknownObjectRelease();
  v2 = v0[21];
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC12StocksWidget24MandatoryHeadlineService_logger;
  v4 = sub_1000DA370();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000753BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001557C;

  return sub_1000742B8(a1, a2);
}

uint64_t sub_100075460(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001557C;

  return sub_100074A48(a1);
}

uint64_t sub_1000754F4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1000D9C30();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000755C4, v2, 0);
}

uint64_t sub_1000755C4()
{
  v15 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v0[10] = OBJC_IVAR____TtC12StocksWidget34TopStoriesMandatoryHeadlineService_logger;

  v3 = sub_1000DA350();
  v4 = sub_1000DBDD0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000848C8(v6, v5, &v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching top stories for symbol=%s", v7, 0xCu);
    sub_100006D0C(v8);
  }

  v9 = v0[5];
  v10 = v9[18];
  sub_100006C7C(v9 + 14, v9[17]);
  v0[11] = sub_1000D97B0();
  v11 = async function pointer to Promise.resolveAsync()[1];
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_10007577C;

  return Promise.resolveAsync()(v0 + 2);
}

uint64_t sub_10007577C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_100075D34;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 40);

    v5 = sub_1000758A4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000758A4()
{
  v50 = v0;
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];

  v5 = sub_1000DA350();
  v6 = sub_1000DBDD0();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1000848C8(v8, v7, v49);
    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "Successfully fetched top stories for symbol=%s, count=%ld", v9, 0x16u);
    sub_100006D0C(v10);
  }

  else
  {
  }

  result = v4;
  v48 = *(v4 + 16);
  if (v48)
  {
    v12 = 0;
    v13 = v0[7];
    v46 = v13;
    v44 = (v13 + 8);
    v45 = (v13 + 32);
    v14 = v0[13];
    v15 = _swiftEmptyArrayStorage;
    v47 = result;
    while (1)
    {
      if (v12 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v16 = v0[9];
      v17 = v0[5];
      v19 = v0[3];
      v18 = v0[4];
      v20 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v21 = *(v46 + 72);
      (*(v46 + 16))(v16, result + v20 + v21 * v12, v0[6]);
      v22 = sub_100075DAC(v16, v17, v19, v18);
      v23 = v0[9];
      if (v14)
      {
        break;
      }

      if (v22)
      {
        v24 = *v45;
        (*v45)(v0[8], v0[9], v0[6]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49[0] = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10007BC9C(0, *(v15 + 2) + 1, 1);
          v15 = v49[0];
        }

        v27 = *(v15 + 2);
        v26 = *(v15 + 3);
        if (v27 >= v26 >> 1)
        {
          sub_10007BC9C(v26 > 1, v27 + 1, 1);
          v15 = v49[0];
        }

        v28 = v0[8];
        v29 = v0[6];
        *(v15 + 2) = v27 + 1;
        v24(&v15[v20 + v27 * v21], v28, v29);
      }

      else
      {
        (*v44)(v0[9], v0[6]);
      }

      v14 = 0;
      ++v12;
      result = v47;
      if (v48 == v12)
      {
        goto LABEL_17;
      }
    }

    v43 = v0[6];

    (*v44)(v23, v43);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_17:
    v30 = v0[10];
    v32 = v0[4];
    v31 = v0[5];

    v33 = sub_1000DA350();
    v34 = sub_1000DBDD0();

    if (os_log_type_enabled(v33, v34))
    {
      v36 = v0[3];
      v35 = v0[4];
      v37 = swift_slowAlloc();
      v38 = v15;
      v39 = swift_slowAlloc();
      v49[0] = v39;
      *v37 = 134218242;
      *(v37 + 4) = *(v38 + 2);

      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_1000848C8(v36, v35, v49);
      _os_log_impl(&_mh_execute_header, v33, v34, "Filtered top stories down to relevant ones for symbol, count=%ld, symbol=%s", v37, 0x16u);
      sub_100006D0C(v39);
      v15 = v38;
    }

    else
    {
    }

    v41 = v0[8];
    v40 = v0[9];

    v42 = v0[1];

    return v42(v15);
  }
}

uint64_t sub_100075D34()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_100075DAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v79 = a3;
  v84 = a2;
  v83 = sub_1000D9600();
  v81 = *(v83 - 8);
  v6 = *(v81 + 64);
  __chkstk_darwin(v83);
  v78 = &v68[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v82 = &v68[-v9];
  v10 = sub_1000D9620();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  __chkstk_darwin(v10);
  *&v73 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v71 = &v68[-v14];
  v15 = sub_1000D9C30();
  v16 = *(v15 - 8);
  v17 = v16[8];
  __chkstk_darwin(v15);
  v19 = &v68[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v20);
  v23 = &v68[-v22];
  v24 = OBJC_IVAR____TtC12StocksWidget34TopStoriesMandatoryHeadlineService_logger;
  v25 = v16[2];
  v25(&v68[-v22], a1, v15, v21);
  v72 = v19;
  v74 = a1;
  (v25)(v19, a1, v15);

  v77 = v24;
  v26 = sub_1000DA350();
  v27 = sub_1000DBDA0();

  v28 = os_log_type_enabled(v26, v27);
  v80 = a4;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v85 = v70;
    *v29 = 136315650;
    v69 = v27;
    v30 = sub_1000D9C00();
    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = 7104878;
    }

    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    v34 = v16[1];
    v34(v23, v15);
    v35 = sub_1000848C8(v32, v33, &v85);
    a4 = v80;

    *(v29 + 4) = v35;
    *(v29 + 12) = 2048;
    v36 = v72;
    sub_1000D9BD0();
    swift_getObjectType();
    v37 = v71;
    sub_1000DBE10();
    swift_unknownObjectRelease();
    v38 = sub_1000D9610();
    (*(v75 + 8))(v37, v76);
    v39 = *(v38 + 16);

    v34(v36, v15);
    *(v29 + 14) = v39;
    *(v29 + 22) = 2080;
    *(v29 + 24) = sub_1000848C8(v79, a4, &v85);
    _os_log_impl(&_mh_execute_header, v26, v69, "Checking relevance of headline to symbol, headline=%s, entityMetadataCount=%ld, symbol=%s", v29, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v40 = v16[1];
    v40(v72, v15);

    v40(v23, v15);
  }

  v42 = v75;
  v41 = v76;
  sub_1000D9BD0();
  swift_getObjectType();
  v43 = v73;
  sub_1000DBE10();
  swift_unknownObjectRelease();
  v44 = sub_1000D9610();
  result = (*(v42 + 8))(v43, v41);
  v48 = v82;
  v47 = v83;
  v76 = *(v44 + 16);
  if (v76)
  {
    v49 = 0;
    v74 = v81 + 16;
    v50 = (v81 + 8);
    *&v46 = 136315394;
    v73 = v46;
    v75 = v44;
    while (v49 < *(v44 + 16))
    {
      v51 = *(v81 + 16);
      v51(v48, v44 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v49, v47);
      v52 = v78;
      v51(v78, v48, v47);

      v53 = sub_1000DA350();
      v54 = sub_1000DBDA0();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v55 = v73;
        v56 = sub_1000D95F0();
        if (v57)
        {
          v58 = v56;
        }

        else
        {
          v58 = 7104878;
        }

        v59 = v52;
        if (v57)
        {
          v60 = v57;
        }

        else
        {
          v60 = 0xE300000000000000;
        }

        v61 = *v50;
        (*v50)(v59, v83);
        v62 = sub_1000848C8(v58, v60, &v85);

        *(v55 + 4) = v62;
        *(v55 + 12) = 2080;
        v63 = v79;
        *(v55 + 14) = sub_1000848C8(v79, v80, &v85);
        _os_log_impl(&_mh_execute_header, v53, v54, "Checking relevance of entity metadata to symbol, metadataSymbol=%s, symbol=%s", v55, 0x16u);
        swift_arrayDestroy();
        a4 = v80;

        v47 = v83;
      }

      else
      {

        v61 = *v50;
        (*v50)(v52, v47);
        v63 = v79;
      }

      v48 = v82;
      v64 = sub_1000D95F0();
      v44 = v75;
      if (v65)
      {
        if (v64 == v63 && v65 == a4)
        {

          v61(v48, v47);
LABEL_31:
          v67 = 1;
          goto LABEL_32;
        }

        v66 = sub_1000DC360();

        result = (v61)(v48, v47);
        if (v66)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = (v61)(v48, v47);
      }

      if (v76 == ++v49)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    v67 = 0;
LABEL_32:

    return v67;
  }

  return result;
}

uint64_t sub_100076530(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1000D9C30();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000765F0, v1, 0);
}

uint64_t sub_1000765F0()
{
  v17 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v0[9] = OBJC_IVAR____TtC12StocksWidget34TopStoriesMandatoryHeadlineService_logger;

  v3 = sub_1000DA350();
  v4 = sub_1000DBDD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v0[3] = v5;
    sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    sub_10007CA88();
    v8 = sub_1000DB890();
    v10 = sub_1000848C8(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching top stories for symbols=[%s]", v6, 0xCu);
    sub_100006D0C(v7);
  }

  v11 = v0[5];
  v12 = v11[18];
  sub_100006C7C(v11 + 14, v11[17]);
  v0[10] = sub_1000D97B0();
  v13 = async function pointer to Promise.resolveAsync()[1];
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_100076800;

  return Promise.resolveAsync()(v0 + 2);
}

uint64_t sub_100076800()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_100076BE4;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 40);

    v5 = sub_100076928;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100076928()
{
  v31 = v0;
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = sub_1000DA350();
  v5 = sub_1000DBDD0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v3 + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully fetched top stories, count=%ld", v6, 0xCu);
  }

  else
  {
  }

  v7 = &_swiftEmptyDictionarySingleton;
  v29 = *(v3 + 16);
  v30[0] = &_swiftEmptyDictionarySingleton;
  if (!v29)
  {
    goto LABEL_14;
  }

  v8 = v0[7];
  v10 = *(v8 + 16);
  v8 += 16;
  v9 = v10;
  v11 = (v8 - 8);
  v12 = v0[12];
  v13 = v0[8];
  v15 = v0[4];
  v14 = v0[5];
  v16 = (*(v8 + 64) + 32) & ~*(v8 + 64);
  v27 = *(v8 + 56);
  v10(v13, v3 + v16, v0[6]);
  sub_100076C54(v30, v13, v15, v14);
  if (v12)
  {
    v17 = v0[8];
    v18 = v0[6];

    (*v11)(v17, v18);
  }

  v28 = *v11;
  result = (*v11)(v0[8], v0[6]);
  if (v29 == 1)
  {
LABEL_13:
    v7 = v30[0];
LABEL_14:
    v25 = v0[8];

    v26 = v0[1];

    return v26(v7);
  }

  v20 = v3 + v27 + v16;
  v21 = 1;
  while (v21 < *(v3 + 16))
  {
    v22 = v0[8];
    v23 = v0[5];
    v24 = v0[4];
    v9(v22, v20, v0[6]);
    sub_100076C54(v30, v22, v24, v23);
    ++v21;
    result = (v28)(v0[8], v0[6]);
    v20 += v27;
    if (v29 == v21)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100076BE4()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_100076C54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v72 = a1;
  v77 = a3;
  v78 = sub_1000D9C30();
  v5 = *(v78 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v78);
  v75 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v73 = &v64 - v9;
  v87 = sub_1000D9600();
  v10 = *(v87 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v87);
  v86 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000D9620();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a2;
  sub_1000D9BD0();
  swift_getObjectType();
  sub_1000DBE10();
  swift_unknownObjectRelease();
  v18 = sub_1000D9610();
  (*(v14 + 8))(v17, v13);
  v85 = *(v18 + 16);
  if (!v85)
  {
    v79 = 0;
LABEL_29:

    return sub_10007CDBC(v79);
  }

  v79 = 0;
  v20 = 0;
  v83 = v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v84 = v10;
  v81 = v10 + 8;
  v82 = v10 + 16;
  v74 = (v5 + 16);
  v69 = (v5 + 8);
  v70 = OBJC_IVAR____TtC12StocksWidget34TopStoriesMandatoryHeadlineService_logger;
  v67 = v5 + 32;
  *&v19 = 136315394;
  v64 = v19;
  v21 = v78;
  v22 = v73;
  v68 = v5;
  v80 = v18;
  while (v20 < *(v18 + 16))
  {
    v23 = v84;
    v24 = v86;
    v25 = v87;
    (*(v84 + 16))(v86, v83 + *(v84 + 72) * v20, v87);
    v26 = sub_1000D95F0();
    v28 = v27;
    v29 = (*(v23 + 8))(v24, v25);
    if (v28)
    {
      v88[0] = v26;
      v88[1] = v28;
      __chkstk_darwin(v29);
      *(&v64 - 2) = v88;
      v30 = v89;
      v31 = sub_10007420C(sub_10007CE78, (&v64 - 2), v77);
      v89 = v30;
      if (v31)
      {
        v32 = *v74;
        (*v74)(v22, v76, v21);

        v33 = sub_1000DA350();
        v34 = sub_1000DBDD0();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = v22;
          v65 = swift_slowAlloc();
          v88[0] = v65;
          *v35 = v64;
          v37 = sub_1000D9BE0();
          v66 = v32;
          v39 = v38;
          (*v69)(v36, v78);
          v40 = sub_1000848C8(v37, v39, v88);
          v32 = v66;

          *(v35 + 4) = v40;
          *(v35 + 12) = 2080;
          *(v35 + 14) = sub_1000848C8(v26, v28, v88);
          _os_log_impl(&_mh_execute_header, v33, v34, "Found headline relevant for symbol, headlineID=%s, symbol=%s", v35, 0x16u);
          swift_arrayDestroy();

          v21 = v78;
        }

        else
        {

          (*v69)(v22, v21);
        }

        v41 = v72;
        v32(v75, v76, v21);
        sub_10007CDBC(v79);
        v42 = *v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88[0] = *v41;
        v44 = v88[0];
        v46 = sub_100033210(v26, v28);
        v47 = v44[2];
        v48 = (v45 & 1) == 0;
        v49 = v47 + v48;
        if (__OFADD__(v47, v48))
        {
          goto LABEL_31;
        }

        v50 = v45;
        if (v44[3] >= v49)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            *v41 = v44;
            if ((v45 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          else
          {
            sub_10007C5C0(sub_10007CB10);
            v44 = v88[0];
            *v41 = v88[0];
            if ((v50 & 1) == 0)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          sub_10007C320(v49, isUniquelyReferenced_nonNull_native, sub_10007CB10);
          v44 = v88[0];
          v51 = sub_100033210(v26, v28);
          if ((v50 & 1) != (v52 & 1))
          {
            goto LABEL_33;
          }

          v46 = v51;
          *v41 = v44;
          if ((v50 & 1) == 0)
          {
LABEL_16:
            v44[(v46 >> 6) + 8] |= 1 << v46;
            v53 = (v44[6] + 16 * v46);
            *v53 = v26;
            v53[1] = v28;
            *(v44[7] + 8 * v46) = _swiftEmptyArrayStorage;
            v54 = v44[2];
            v55 = __OFADD__(v54, 1);
            v56 = v54 + 1;
            if (v55)
            {
              goto LABEL_32;
            }

            v44[2] = v56;
            goto LABEL_21;
          }
        }

LABEL_21:
        v57 = v44[7];
        v58 = *(v57 + 8 * v46);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        *(v57 + 8 * v46) = v58;
        v60 = v68;
        if ((v59 & 1) == 0)
        {
          v58 = sub_10007B8FC(0, v58[2] + 1, 1, v58, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
          *(v57 + 8 * v46) = v58;
        }

        v62 = v58[2];
        v61 = v58[3];
        if (v62 >= v61 >> 1)
        {
          v58 = sub_10007B8FC(v61 > 1, v62 + 1, 1, v58, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
          *(v57 + 8 * v46) = v58;
        }

        v18 = v80;
        v58[2] = v62 + 1;
        v21 = v78;
        (*(v60 + 32))(v58 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v62, v75, v78);
        v79 = sub_100077428;
        v22 = v73;
        goto LABEL_5;
      }
    }

    v18 = v80;
LABEL_5:
    if (v85 == ++v20)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1000DC3A0();
  __break(1u);
  return result;
}

uint64_t sub_100077438()
{
  sub_100006D0C((v0 + 112));
  v1 = OBJC_IVAR____TtC12StocksWidget34TopStoriesMandatoryHeadlineService_logger;
  v2 = sub_1000DA370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000774E0()
{
  result = sub_1000DA370();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100077584(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001557C;

  return sub_1000754F4(a1, a2);
}

uint64_t sub_100077628(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001557C;

  return sub_100076530(a1);
}

uint64_t sub_1000776BC(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  sub_10007CBA8(0, &qword_100114E38, &type metadata accessor for Headline, &type metadata accessor for Optional);
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v6 = sub_1000D9C30();
  v3[18] = v6;
  v7 = *(v6 - 8);
  v3[19] = v7;
  v8 = *(v7 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v9 = sub_1000D9490();
  v3[24] = v9;
  v10 = *(v9 - 8);
  v3[25] = v10;
  v11 = *(v10 + 64) + 15;
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_10007785C, v2, 0);
}

uint64_t sub_10007785C()
{
  v13 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v0[27] = OBJC_IVAR____TtC12StocksWidget36WidgetConfigMandatoryHeadlineService_logger;

  v3 = sub_1000DA350();
  v4 = sub_1000DBDD0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000848C8(v6, v5, &v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching widget config record to determine mandatory headlines for symbol=%s", v7, 0xCu);
    sub_100006D0C(v8);
  }

  v9 = *(v0[16] + 112);
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_1000779E4;

  return sub_10006C22C();
}

uint64_t sub_1000779E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v4 + 224);
  v6 = *v4;
  v6[29] = a2;
  v6[30] = a3;

  if (v3)
  {
    v7 = v6[26];
    v9 = v6[22];
    v8 = v6[23];
    v11 = v6[20];
    v10 = v6[21];
    v12 = v6[17];

    v13 = v6[1];

    return v13();
  }

  else
  {
    v15 = v6[16];

    return _swift_task_switch(sub_100077B6C, v15, 0);
  }
}

uint64_t sub_100077B6C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v1[25];
  sub_100006C7C(v1 + 21, v1[24]);
  sub_10007CE24(0, &qword_100115350, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000DDD30;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;

  v0[31] = sub_1000D9760();

  v6 = async function pointer to Promise.resolveAsync()[1];
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_100077CA8;

  return Promise.resolveAsync()(v0 + 11);
}

uint64_t sub_100077CA8()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[31];
  if (v0)
  {
    v7 = v2[29];
    v6 = v2[30];
    v8 = v2[16];

    v9 = sub_100078E90;
    v10 = v8;
  }

  else
  {
    v11 = v2[16];

    v9 = sub_100077E08;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100077E08()
{
  v96 = v0;
  v1 = v0;
  v2 = v0[11];
  if (!*(v2 + 16))
  {
    v24 = v0[29];
    v25 = v0[30];

LABEL_15:

    goto LABEL_17;
  }

  v3 = v0[11];
  v4 = sub_100033210(v0[14], v0[15]);
  v5 = v0[30];
  if ((v6 & 1) == 0)
  {
    v26 = v0[29];

    goto LABEL_15;
  }

  v89 = v0 + 7;
  v92 = *(*(v2 + 56) + 8 * v4);

  v7 = v5 + 64;
  v8 = -1;
  v9 = -1 << *(v5 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v5 + 64);
  v11 = (63 - v9) >> 6;
  v12 = v0[33];
  v13 = swift_bridgeObjectRetain_n();
  v14 = 0;
  v91 = v0;
  if (!v10)
  {
LABEL_7:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
        v27 = v1[29];
        v28 = v1[30];

        swift_bridgeObjectRelease_n();
        goto LABEL_17;
      }

      v10 = *(v7 + 8 * v15);
      ++v14;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    return Promise.resolveAsync()(v13);
  }

  while (1)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v10)) | (v15 << 6);
    v17 = v5;
    v18 = (*(v5 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(v5 + 56) + 8 * v16);
    v1[34] = v21;
    v1[7] = v19;
    v1[8] = v20;
    v22 = swift_task_alloc();
    *(v22 + 16) = v89;

    v23 = sub_10007420C(sub_10007CE78, v22, v92);

    if (v23)
    {
      break;
    }

    v10 &= v10 - 1;
    v14 = v15;
    v5 = v17;
    v1 = v91;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v1 = v91;
  v46 = v91[29];
  v47 = v91[30];

  swift_bridgeObjectRelease_n();

  v48 = v21;
  if (*(v21 + 16))
  {
    v49 = v91[27];
    v51 = v91[15];
    v50 = v91[16];

    v52 = sub_1000DA350();
    v53 = sub_1000DBDD0();

    if (os_log_type_enabled(v52, v53))
    {
      v55 = v91[14];
      v54 = v91[15];
      v56 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v56 = 136315394;
      *(v56 + 4) = sub_1000848C8(v55, v54, &v94);
      *(v56 + 12) = 2080;
      v57 = *(v48 + 16);
      v58 = _swiftEmptyArrayStorage;
      if (v57)
      {
        v87 = v56;
        v88 = v53;
        v90 = v52;
        v95 = _swiftEmptyArrayStorage;
        sub_10007BC5C(0, v57, 0);
        v58 = v95;
        v59 = v95[2];
        v60 = 2 * v59;
        v93 = v48;
        v61 = (v48 + 40);
        do
        {
          v62 = *(v61 - 1);
          v63 = *v61;
          v95 = v58;
          v64 = v59 + 1;
          v65 = v58[3];

          if (v59 >= v65 >> 1)
          {
            sub_10007BC5C((v65 > 1), v64, 1);
            v58 = v95;
          }

          v58[2] = v64;
          v66 = &v58[v60];
          v66[4] = v62;
          v66[5] = v63;
          v60 += 2;
          v61 += 4;
          ++v59;
          --v57;
        }

        while (v57);
        v48 = v93;
        v52 = v90;
        v53 = v88;
        v56 = v87;
      }

      v91[13] = v58;
      sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
      sub_10007CA88();
      v67 = sub_1000DB890();
      v69 = v68;
      v1 = v91;

      v70 = sub_1000848C8(v67, v69, &v94);

      *(v56 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v52, v53, "Fetching mandatory headlines for symbol=%s headlineIDs=[%s]", v56, 0x16u);
      swift_arrayDestroy();
    }

    sub_100006E20(v1[16] + 128, (v1 + 2));
    v71 = v1[6];
    sub_100006C7C(v1 + 2, v1[5]);
    v72 = *(v48 + 16);
    if (v72)
    {
      v95 = _swiftEmptyArrayStorage;
      sub_10007BC5C(0, v72, 0);
      v73 = v95;
      v74 = v95[2];
      v75 = 2 * v74;
      v76 = (v48 + 40);
      do
      {
        v77 = *(v76 - 1);
        v78 = *v76;
        v95 = v73;
        v79 = v74 + 1;
        v80 = v73[3];

        if (v74 >= v80 >> 1)
        {
          sub_10007BC5C((v80 > 1), v79, 1);
          v73 = v95;
        }

        v73[2] = v79;
        v81 = &v73[v75];
        v81[4] = v77;
        v81[5] = v78;
        v75 += 2;
        v76 += 4;
        ++v74;
        --v72;
      }

      while (v72);
    }

    v83 = v91[25];
    v82 = v91[26];
    v84 = v91[24];
    (*(v83 + 104))(v82, enum case for HeadlineOrigin.topStories(_:), v84);
    v91[35] = sub_1000D9850();

    (*(v83 + 8))(v82, v84);
    v85 = async function pointer to Promise.resolveAsync()[1];
    v86 = swift_task_alloc();
    v91[36] = v86;
    *v86 = v91;
    v86[1] = sub_10007859C;
    v13 = (v91 + 9);

    return Promise.resolveAsync()(v13);
  }

LABEL_17:

  v29 = v1[27];
  v31 = v1[15];
  v30 = v1[16];

  v32 = sub_1000DA350();
  v33 = sub_1000DBDD0();

  if (os_log_type_enabled(v32, v33))
  {
    v35 = v1[14];
    v34 = v1[15];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v95 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_1000848C8(v35, v34, &v95);
    _os_log_impl(&_mh_execute_header, v32, v33, "No mandatory headlines found for symbol=%s", v36, 0xCu);
    sub_100006D0C(v37);
  }

  v38 = v1[26];
  v39 = v1[22];
  v40 = v1[23];
  v42 = v1[20];
  v41 = v1[21];
  v43 = v1[17];

  v44 = v1[1];

  return v44(_swiftEmptyArrayStorage);
}

uint64_t sub_10007859C()
{
  v2 = *v1;
  v3 = (*v1)[36];
  v12 = *v1;
  (*v1)[37] = v0;

  if (v0)
  {
    v5 = v2[34];
    v4 = v2[35];
    v6 = v2[16];

    v7 = sub_100078F38;
    v8 = v6;
  }

  else
  {
    v9 = v2[35];
    v10 = v2[16];

    sub_100006D0C(v2 + 2);
    v7 = sub_1000786E0;
    v8 = v10;
  }

  return _swift_task_switch(v7, v8, 0);
}

void sub_1000786E0()
{
  v94 = v0;
  v1 = v0[27];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[9];

  v5 = sub_1000DA350();
  v6 = sub_1000DBDD0();

  v91 = v4;
  if (os_log_type_enabled(v5, v6))
  {
    v85 = v6;
    v7 = _swiftEmptyArrayStorage;
    v9 = v0[14];
    v8 = v0[15];
    v10 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1000848C8(v9, v8, &v92);
    buf = v10;
    *(v10 + 12) = 2080;
    v11 = v4;
    v12 = *(v4 + 16);
    if (v12)
    {
      v80 = v5;
      v13 = v0[19];
      v93 = _swiftEmptyArrayStorage;
      sub_10007BC7C(0, v12, 0);
      v7 = v93;
      v14 = *(v13 + 16);
      v13 += 16;
      v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v87 = *(v13 + 56);
      v89 = v14;
      v16 = (v13 - 8);
      do
      {
        v17 = v0[23];
        v18 = v0[18];
        v89(v17, v15, v18);
        v19 = sub_1000D9C00();
        v21 = v20;
        (*v16)(v17, v18);
        v93 = v7;
        v23 = v7[2];
        v22 = v7[3];
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          sub_10007BC7C((v22 > 1), v23 + 1, 1);
          v7 = v93;
        }

        v7[2] = v24;
        v25 = &v7[2 * v23];
        v25[4] = v19;
        v25[5] = v21;
        v15 += v87;
        --v12;
      }

      while (v12);
      v5 = v80;
    }

    else
    {
      v24 = _swiftEmptyArrayStorage[2];
    }

    v26 = 0;
    v27 = _swiftEmptyArrayStorage;
LABEL_11:
    v28 = 16 * v26 + 40;
    while (v24 != v26)
    {
      if (v26 >= v7[2])
      {
        goto LABEL_52;
      }

      v29 = v28 + 16;
      ++v26;
      v30 = *(v7 + v28);
      v28 += 16;
      if (v30)
      {
        v31 = *(v7 + v29 - 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_10007B454(0, *(v27 + 2) + 1, 1, v27);
        }

        v33 = *(v27 + 2);
        v32 = *(v27 + 3);
        if (v33 >= v32 >> 1)
        {
          v27 = sub_10007B454((v32 > 1), v33 + 1, 1, v27);
        }

        *(v27 + 2) = v33 + 1;
        v34 = &v27[16 * v33];
        *(v34 + 4) = v31;
        *(v34 + 5) = v30;
        goto LABEL_11;
      }
    }

    v0[12] = v27;
    sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    sub_10007CA88();
    v35 = sub_1000DB890();
    v37 = v36;

    v38 = sub_1000848C8(v35, v37, &v92);

    *(buf + 14) = v38;
    _os_log_impl(&_mh_execute_header, v5, v85, "Fetched mandatory headlines for symbol=%s headlines=[%s]", buf, 0x16u);
    swift_arrayDestroy();

    v4 = v91;
  }

  else
  {
  }

  v39 = v0[34];
  v81 = *(v39 + 16);
  if (v81)
  {
    v40 = 0;
    v41 = v0[19];
    v90 = (v41 + 8);
    v77 = (v41 + 32);
    v78 = (v41 + 56);
    v79 = v39 + 32;
    v42 = _swiftEmptyArrayStorage;
    while (v40 < *(v0[34] + 16))
    {
      bufa = v40;
      v86 = v42;
      v46 = (v79 + 32 * v40);
      v48 = *v46;
      v47 = v46[1];
      v49 = v46[3];
      v82 = v46[2];
      v50 = *(v4 + 16);

      v88 = v49;

      if (v50)
      {
        v51 = 0;
        while (1)
        {
          if (v51 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_51;
          }

          v52 = (*(v41 + 80) + 32) & ~*(v41 + 80);
          v53 = *(v41 + 72);
          (*(v41 + 16))(v0[20], v4 + v52 + v53 * v51, v0[18]);
          if (sub_1000D9BE0() == v48 && v54 == v47)
          {
            break;
          }

          v56 = sub_1000DC360();

          if (v56)
          {
            goto LABEL_37;
          }

          ++v51;
          (*v90)(v0[20], v0[18]);
          v4 = v91;
          if (v50 == v51)
          {
            goto LABEL_23;
          }
        }

LABEL_37:
        v57 = *v77;
        (*v77)(v0[21], v0[20], v0[18]);
        v58 = v0[21];
        v59 = v0[17];
        v76 = v0[18];
        if (v88)
        {
          sub_10007AD5C(v58, v82, v88, v59);

          (*v90)(v58, v76);
        }

        else
        {

          v57(v59, v58, v76);
        }

        v60 = v0[22];
        v62 = v0[17];
        v61 = v0[18];
        (*v78)(v62, 0, 1, v61);
        v57(v60, v62, v61);
        v63 = v57;
        v42 = v86;
        v4 = v91;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_10007B8FC(0, v86[2] + 1, 1, v86, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
        }

        v45 = bufa;
        v65 = v42[2];
        v64 = v42[3];
        if (v65 >= v64 >> 1)
        {
          v42 = sub_10007B8FC(v64 > 1, v65 + 1, 1, v42, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
        }

        v66 = v0[22];
        v67 = v0[18];
        v42[2] = v65 + 1;
        v63(v42 + v52 + v65 * v53, v66, v67);
      }

      else
      {
LABEL_23:
        v44 = v0[17];
        v43 = v0[18];

        (*v78)(v44, 1, 1, v43);
        sub_10007CC0C(v44);
        v45 = bufa;
        v42 = v86;
      }

      v40 = v45 + 1;
      if (v40 == v81)
      {
        v68 = v0[34];
        goto LABEL_47;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
LABEL_47:

    v69 = v0[26];
    v70 = v0[22];
    v71 = v0[23];
    v73 = v0[20];
    v72 = v0[21];
    v74 = v0[17];

    v75 = v0[1];

    v75(v42);
  }
}

uint64_t sub_100078E90()
{
  v1 = v0[33];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[17];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100078F38()
{
  sub_100006D0C(v0 + 2);
  v1 = v0[37];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[17];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100078FE8(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_1000D9490();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000790A8, v1, 0);
}

uint64_t sub_1000790A8()
{
  v15 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v0[20] = OBJC_IVAR____TtC12StocksWidget36WidgetConfigMandatoryHeadlineService_logger;

  v3 = sub_1000DA350();
  v4 = sub_1000DBDD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[14] = v5;
    sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    sub_10007CA88();
    v8 = sub_1000DB890();
    v10 = sub_1000848C8(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching widget config record to determine mandatory headlines for symbols=[%s]", v6, 0xCu);
    sub_100006D0C(v7);
  }

  v11 = *(v0[16] + 112);
  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_100079288;

  return sub_10006C22C();
}

uint64_t sub_100079288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 168);
  v7 = *v4;
  v5[22] = a2;
  v5[23] = a3;

  if (v3)
  {
    v8 = v5[19];

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = v5[16];

    return _swift_task_switch(sub_1000793D8, v11, 0);
  }
}

uint64_t sub_1000793D8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v1[25];
  sub_100006C7C(v1 + 21, v1[24]);
  v0[24] = sub_1000D9760();
  v4 = async function pointer to Promise.resolveAsync()[1];
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_1000794AC;

  return Promise.resolveAsync()(v0 + 9);
}

uint64_t sub_1000794AC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  v2[26] = v0;

  v5 = v2[24];
  if (v0)
  {
    v7 = v2[22];
    v6 = v2[23];
    v8 = v2[16];

    v9 = sub_10007A248;
    v10 = v8;
  }

  else
  {
    v11 = v2[16];

    v9 = sub_10007960C;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_10007960C()
{
  v102 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[16];
  v97 = v0[9];

  v5 = sub_1000DA350();
  v6 = sub_1000DBDD0();

  v99 = v0;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[26];
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v100[0] = v10;
    *v9 = 136315138;
    v11 = v7;
    v0[13] = sub_100073FC8(v8);
    sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    sub_10007CA88();
    v12 = sub_1000DB890();
    v14 = v13;

    v15 = sub_1000848C8(v12, v14, v100);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Successfully fetched widget config record for symbolIDs=[%s]", v9, 0xCu);
    sub_100006D0C(v10);
  }

  else
  {

    v11 = v0[26];
  }

  v16 = v0[23];
  v17 = *(v16 + 64);
  v101[0] = &_swiftEmptyDictionarySingleton;
  v18 = -1;
  v19 = -1 << *(v16 + 32);
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  v20 = v18 & v17;
  v21 = (63 - v19) >> 6;
  isUniquelyReferenced_nonNull_native = swift_bridgeObjectRetain_n();
  v23 = 0;
  if (v20)
  {
    while (1)
    {
      v24 = v23;
LABEL_11:
      v25 = v0[16];
      v26 = __clz(__rbit64(v20)) | (v24 << 6);
      v27 = (*(v16 + 48) + 16 * v26);
      v28 = v27[1];
      v29 = *(*(v16 + 56) + 8 * v26);
      v100[0] = *v27;
      v100[1] = v28;
      v100[2] = v29;

      sub_10007A318(v101, v100, v97, v25);
      if (v11)
      {
        break;
      }

      v11 = 0;
      v20 &= v20 - 1;
      v23 = v24;
      if (!v20)
      {
        goto LABEL_8;
      }
    }

    v92 = v0[23];
  }

  else
  {
    while (1)
    {
LABEL_8:
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v24 >= v21)
      {
        break;
      }

      v20 = *(v16 + 64 + 8 * v24);
      ++v23;
      if (v20)
      {
        goto LABEL_11;
      }
    }

    v31 = v0[22];
    v30 = v0[23];

    swift_bridgeObjectRelease_n();
    v32 = v101[0];
    v0[27] = v101[0];
    v33 = v32 + 64;
    v34 = -1;
    v35 = -1 << *(v32 + 32);
    if (-v35 < 64)
    {
      v34 = ~(-1 << -v35);
    }

    v36 = v34 & *(v32 + 64);
    v37 = (63 - v35) >> 6;
    v98 = v32;
    isUniquelyReferenced_nonNull_native = swift_bridgeObjectRetain_n();
    v38 = 0;
    v39 = _swiftEmptyArrayStorage;
    while (v36)
    {
LABEL_23:
      v41 = (v38 << 9) | (8 * __clz(__rbit64(v36)));
      v42 = *(*(v98 + 56) + v41);
      v43 = *(v42 + 16);
      v44 = *(v39 + 2);
      v45 = v44 + v43;
      if (__OFADD__(v44, v43))
      {
        goto LABEL_58;
      }

      v46 = *(*(v98 + 56) + v41);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v45 > *(v39 + 3) >> 1)
      {
        if (v44 <= v45)
        {
          v47 = v44 + v43;
        }

        else
        {
          v47 = v44;
        }

        isUniquelyReferenced_nonNull_native = sub_10007B5AC(isUniquelyReferenced_nonNull_native, v47, 1, v39);
        v39 = isUniquelyReferenced_nonNull_native;
      }

      v36 &= v36 - 1;
      if (*(v42 + 16))
      {
        if ((*(v39 + 3) >> 1) - *(v39 + 2) < v43)
        {
          goto LABEL_60;
        }

        swift_arrayInitWithCopy();

        if (v43)
        {
          v48 = *(v39 + 2);
          v49 = __OFADD__(v48, v43);
          v50 = v48 + v43;
          if (v49)
          {
            goto LABEL_61;
          }

          *(v39 + 2) = v50;
        }
      }

      else
      {

        if (v43)
        {
          goto LABEL_59;
        }
      }
    }

    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v40 >= v37)
      {
        v51 = v99;
        v52 = v99[20];
        v54 = v99[15];
        v53 = v99[16];

        v55 = sub_1000DA350();
        v56 = sub_1000DBDD0();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = v99[15];
          v58 = swift_slowAlloc();
          v101[0] = swift_slowAlloc();
          *v58 = 136315394;
          v99[11] = v57;
          sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
          sub_10007CA88();
          v59 = sub_1000DB890();
          v61 = sub_1000848C8(v59, v60, v101);

          *(v58 + 4) = v61;
          *(v58 + 12) = 2080;
          v62 = *(v39 + 2);
          v63 = _swiftEmptyArrayStorage;
          if (v62)
          {
            v94 = v58;
            v95 = v56;
            v96 = v55;
            v100[0] = _swiftEmptyArrayStorage;
            sub_10007BC5C(0, v62, 0);
            v63 = v100[0];
            v64 = *(v100[0] + 16);
            v65 = 2 * v64;
            v66 = (v39 + 40);
            do
            {
              v67 = *(v66 - 1);
              v68 = *v66;
              v100[0] = v63;
              v69 = v64 + 1;
              v70 = v63[3];

              if (v64 >= v70 >> 1)
              {
                sub_10007BC5C((v70 > 1), v69, 1);
                v63 = v100[0];
              }

              v63[2] = v69;
              v71 = &v63[v65];
              v71[4] = v67;
              v71[5] = v68;
              v65 += 2;
              v66 += 4;
              ++v64;
              --v62;
            }

            while (v62);
            v51 = v99;
            v55 = v96;
            v56 = v95;
            v58 = v94;
          }

          v51[12] = v63;
          v72 = sub_1000DB890();
          v74 = v73;

          v75 = sub_1000848C8(v72, v74, v101);

          *(v58 + 14) = v75;
          _os_log_impl(&_mh_execute_header, v55, v56, "Fetching all relevant headlines for symbols=[%s], headlineIDs=[%s]", v58, 0x16u);
          swift_arrayDestroy();
        }

        sub_100006E20(v51[16] + 128, (v51 + 2));
        v76 = v51[6];
        sub_100006C7C(v51 + 2, v51[5]);
        v77 = *(v39 + 2);
        if (v77)
        {
          v100[0] = _swiftEmptyArrayStorage;
          sub_10007BC5C(0, v77, 0);
          v78 = 0;
          v79 = v100[0];
          v80 = *(v100[0] + 16);
          v81 = 16 * v80;
          do
          {
            v82 = *&v39[v78 + 32];
            v83 = *&v39[v78 + 40];
            v100[0] = v79;
            v84 = *(v79 + 24);
            v85 = v80 + 1;

            if (v80 >= v84 >> 1)
            {
              sub_10007BC5C((v84 > 1), v85, 1);
              v79 = v100[0];
            }

            *(v79 + 16) = v85;
            v86 = v79 + v81;
            *(v86 + 32) = v82;
            *(v86 + 40) = v83;
            v81 += 16;
            v78 += 32;
            ++v80;
            --v77;
          }

          while (v77);

          v51 = v99;
        }

        else
        {
        }

        v88 = v51[18];
        v87 = v51[19];
        v89 = v51[17];
        (*(v88 + 104))(v87, enum case for HeadlineOrigin.topStories(_:), v89);
        v51[28] = sub_1000D9850();

        (*(v88 + 8))(v87, v89);
        v90 = async function pointer to Promise.resolveAsync()[1];
        v91 = swift_task_alloc();
        v51[29] = v91;
        *v91 = v51;
        v91[1] = sub_100079F0C;
        isUniquelyReferenced_nonNull_native = (v51 + 7);

        return Promise.resolveAsync()(isUniquelyReferenced_nonNull_native);
      }

      v36 = *(v33 + 8 * v40);
      ++v38;
      if (v36)
      {
        v38 = v40;
        goto LABEL_23;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return Promise.resolveAsync()(isUniquelyReferenced_nonNull_native);
  }
}

uint64_t sub_100079F0C()
{
  v2 = *v1;
  v3 = (*v1)[29];
  v12 = *v1;
  (*v1)[30] = v0;

  if (v0)
  {
    v5 = v2[27];
    v4 = v2[28];
    v6 = v2[16];

    v7 = sub_10007A2AC;
    v8 = v6;
  }

  else
  {
    v9 = v2[28];
    v10 = v2[16];

    sub_100006D0C(v2 + 2);
    v7 = sub_10007A050;
    v8 = v10;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10007A050()
{
  v20 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[7];

  v7 = sub_10007C8D0(v2, v6);

  swift_bridgeObjectRelease_n();

  v8 = sub_1000DA350();
  v9 = sub_1000DBDD0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[15];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v0[10] = v10;
    sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    sub_10007CA88();
    v13 = sub_1000DB890();
    v15 = sub_1000848C8(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Successfully fetched all relevant headlines for symbols=[%s]", v11, 0xCu);
    sub_100006D0C(v12);
  }

  v16 = v0[19];

  v17 = v0[1];

  return v17(v7);
}

uint64_t sub_10007A248()
{
  v1 = v0[26];
  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10007A2AC()
{
  sub_100006D0C(v0 + 2);
  v1 = v0[30];
  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

void sub_10007A318(uint64_t *a1, uint64_t *a2, uint64_t a3, NSObject *a4)
{
  v6 = *a2;
  v5 = a2[1];
  v51 = a4;
  v52 = v6;
  v53 = v5;
  v7 = a2[2];
  v49 = a1;
  v50 = v7;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = (*(a3 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(*(a3 + 56) + 8 * v16);
      v55[0] = v52;
      v55[1] = v53;
      __chkstk_darwin(v13);
      v47[2] = v55;

      v21 = v54;
      v22 = sub_10007420C(sub_10007CC98, v47, v20);
      v54 = v21;
      if (v22)
      {
        break;
      }

      v11 &= v11 - 1;

      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v28 = v50;
    if (*(v50 + 16))
    {
      swift_bridgeObjectRetain_n();

      v29 = sub_1000DA350();
      v30 = sub_1000DBDD0();

      if (os_log_type_enabled(v29, v30))
      {
        LODWORD(v53) = v30;
        v31 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v55[0] = v52;
        *v31 = 136315394;
        v32 = *(v28 + 16);
        v33 = _swiftEmptyArrayStorage;
        if (v32)
        {
          v48 = v31;
          v51 = v29;
          v56 = _swiftEmptyArrayStorage;
          sub_10007BC5C(0, v32, 0);
          v33 = v56;
          v34 = (v28 + 40);
          do
          {
            v35 = *(v34 - 1);
            v36 = *v34;
            v56 = v33;
            v38 = v33[2];
            v37 = v33[3];

            if (v38 >= v37 >> 1)
            {
              sub_10007BC5C((v37 > 1), v38 + 1, 1);
              v33 = v56;
            }

            v33[2] = v38 + 1;
            v39 = &v33[2 * v38];
            v39[4] = v35;
            v39[5] = v36;
            v34 += 4;
            --v32;
          }

          while (v32);
          v28 = v50;
          v29 = v51;
          v31 = v48;
        }

        v56 = v33;
        sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
        sub_10007CA88();
        v40 = sub_1000DB890();
        v42 = v41;

        v43 = sub_1000848C8(v40, v42, v55);

        *(v31 + 4) = v43;
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_1000848C8(v19, v18, v55);
        _os_log_impl(&_mh_execute_header, v29, v53, "Found relevant headlines for symbol, headlineIDs=[%s], symbol=%s", v31, 0x16u);
        swift_arrayDestroy();
      }

      v44 = v49;
      v45 = *v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55[0] = *v44;
      sub_10007C72C(v28, v19, v18, isUniquelyReferenced_nonNull_native);

      *v44 = v55[0];
    }

    else
    {
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return;
      }

      if (v15 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    v23 = v53;

    v24 = sub_1000DA350();
    v25 = sub_1000DBDD0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v55[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1000848C8(v52, v23, v55);
      _os_log_impl(&_mh_execute_header, v24, v25, "No symbol found matching feedID=%s", v26, 0xCu);
      sub_100006D0C(v27);
    }
  }
}

void sub_10007A814(uint64_t *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v41 = a3;
  v55 = a2;
  sub_10007CBA8(0, &qword_100114E38, &type metadata accessor for Headline, &type metadata accessor for Optional);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_1000D9C30();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v43 = &v40 - v14;
  __chkstk_darwin(v15);
  v42 = &v40 - v16;
  __chkstk_darwin(v17);
  v46 = &v40 - v18;
  v19 = *a1;
  v52 = *(*a1 + 16);
  if (v52)
  {
    v20 = 0;
    v58 = (v9 + 8);
    v59 = v9 + 16;
    v45 = (v9 + 32);
    v47 = (v9 + 56);
    v48 = v19 + 32;
    v54 = _swiftEmptyArrayStorage;
    v49 = v19;
    v50 = v7;
    v44 = v9;
    while (v20 < *(v19 + 16))
    {
      v57 = v20;
      v23 = (v48 + 32 * v20);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v53 = v23[2];
      v27 = *(v55 + 16);

      v56 = v26;

      if (v27)
      {
        v28 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v60 = *(v44 + 72);
        v51 = v28;
        v29 = v55 + v28;
        v30 = *(v44 + 16);
        while (1)
        {
          v30(v12, v29, v8);
          if (sub_1000D9BE0() == v24 && v31 == v25)
          {
            break;
          }

          v32 = sub_1000DC360();

          if (v32)
          {
            goto LABEL_14;
          }

          (*v58)(v12, v8);
          v29 += v60;
          if (!--v27)
          {
            goto LABEL_3;
          }
        }

LABEL_14:
        v33 = *v45;
        v34 = v43;
        (*v45)(v43, v12, v8);
        v35 = v42;
        v33(v42, v34, v8);
        if (v56)
        {
          v36 = v50;
          sub_10007AD5C(v35, v53, v56, v50);

          (*v58)(v35, v8);
        }

        else
        {

          v36 = v50;
          v33(v50, v35, v8);
        }

        v19 = v49;
        v22 = v57;
        (*v47)(v36, 0, 1, v8);
        v33(v46, v36, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_10007B8FC(0, *(v54 + 2) + 1, 1, v54, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
        }

        v38 = *(v54 + 2);
        v37 = *(v54 + 3);
        if (v38 >= v37 >> 1)
        {
          v54 = sub_10007B8FC(v37 > 1, v38 + 1, 1, v54, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
        }

        v39 = v54;
        *(v54 + 2) = v38 + 1;
        v33(&v39[v51 + v38 * v60], v46, v8);
      }

      else
      {
LABEL_3:

        v21 = v50;
        (*v47)(v50, 1, 1, v8);
        sub_10007CC0C(v21);
        v19 = v49;
        v22 = v57;
      }

      v20 = v22 + 1;
      if (v20 == v52)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v54 = _swiftEmptyArrayStorage;
LABEL_23:
    *v41 = v54;
  }
}

uint64_t sub_10007AD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1000D9BD0();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v13[4] = sub_10007B3CC;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10007AF34;
  v13[3] = &unk_10010AF78;
  v9 = _Block_copy(v13);
  swift_unknownObjectRetain();

  v10 = FCMutateHeadlineWithBlock();
  _Block_release(v9);
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_1000D9BF0();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = sub_1000D9C30();
    (*(*(v11 - 8) + 16))(a4, a1, v11);
  }

  return swift_unknownObjectRelease();
}

void sub_10007AECC(void *a1)
{
  if (a1)
  {
    v2 = sub_1000DB910();
    [a1 setTitle:v2];
  }
}

void sub_10007AF34(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10007AFA0()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  sub_100006D0C(v0 + 16);
  sub_100006D0C(v0 + 21);
  v2 = OBJC_IVAR____TtC12StocksWidget36WidgetConfigMandatoryHeadlineService_logger;
  v3 = sub_1000DA370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10007B06C()
{
  result = sub_1000DA370();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10007B10C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001557C;

  return sub_1000776BC(a1, a2);
}

uint64_t sub_10007B1B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100011054;

  return sub_100078FE8(a1);
}

uint64_t sub_10007B244(uint64_t a1)
{
  result = sub_10007B2F4(&qword_100118330, type metadata accessor for WidgetConfigMandatoryHeadlineService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10007B29C(uint64_t a1)
{
  result = sub_10007B2F4(&qword_100118338, type metadata accessor for TopStoriesMandatoryHeadlineService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10007B2F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007B33C(uint64_t a1)
{
  result = sub_10007B2F4(&qword_100118340, type metadata accessor for MandatoryHeadlineService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10007B394()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_10007B3CC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_10007AECC(a1);
}

uint64_t sub_10007B3D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_10007B454(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007CE24(0, &qword_100115350, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10007B5AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007CE24(0, &qword_100118350, &type metadata for WidgetSectionConfigRecord.SymbolConfiguration.Article, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10007B738(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007CBA8(0, &qword_100116370, sub_100028708, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_10007B8FC(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10007CBA8(0, a5, a6, &type metadata accessor for _ContiguousArrayStorage);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_10007BAF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007CE24(0, &qword_100118390, &type metadata for Double, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_10007BC0C(size_t a1, int64_t a2, char a3)
{
  result = sub_10007C12C(a1, a2, a3, *v3, &qword_100115378, type metadata accessor for WidgetStock, type metadata accessor for WidgetStock);
  *v3 = result;
  return result;
}

char *sub_10007BC5C(char *a1, int64_t a2, char a3)
{
  result = sub_10007BD5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007BC7C(void *a1, int64_t a2, char a3)
{
  result = sub_10007BE80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10007BC9C(size_t a1, int64_t a2, char a3)
{
  result = sub_10007C12C(a1, a2, a3, *v3, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
  *v3 = result;
  return result;
}

char *sub_10007BCEC(char *a1, int64_t a2, char a3)
{
  result = sub_10007BFC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10007BD0C(size_t a1, int64_t a2, char a3)
{
  result = sub_10007C12C(a1, a2, a3, *v3, &qword_100118388, &type metadata accessor for Stock, &type metadata accessor for Stock);
  *v3 = result;
  return result;
}

char *sub_10007BD5C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007CE24(0, &qword_100115350, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10007BE80(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007CD40();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007CE24(0, &qword_100115C60, &type metadata for String, &type metadata accessor for Optional);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10007BFC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007CE24(0, &qword_100115340, &type metadata for QuoteDetailItem, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10007C12C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10007CBA8(0, a5, a6, &type metadata accessor for _ContiguousArrayStorage);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10007C320(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v7 = *(*v3 + 24);
  }

  a3(0);
  v39 = a2;
  result = sub_1000DC120();
  v9 = result;
  if (*(v6 + 16))
  {
    v37 = v4;
    v38 = v6;
    v10 = 0;
    v11 = (v6 + 64);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v22 = v19 | (v10 << 6);
      v23 = (*(v6 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v6 + 56) + 8 * v22);
      if ((v39 & 1) == 0)
      {
        v27 = v23[1];
      }

      v28 = *(v9 + 40);
      sub_1000DC420();
      sub_1000DB9F0();
      result = sub_1000DC460();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v6 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v4 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v6 + 32);
    v4 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v6 + 16) = 0;
  }

LABEL_35:
  *v4 = v9;
  return result;
}

void *sub_10007C5C0(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1000DC110();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_10007C72C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100033210(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10007C320(v16, a4 & 1, sub_10007CCB4);
      v20 = *v5;
      v11 = sub_100033210(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1000DC3A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10007C5C0(sub_10007CCB4);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_10007C8D0(uint64_t a1, uint64_t a2)
{
  sub_10007CB10();
  result = sub_1000DC110();
  v5 = 0;
  v26 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v25 = result + 64;
  v28 = result;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v26 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v30 = *(*(v26 + 56) + 8 * v16);

      sub_10007A814(&v30, a2, &v29);

      if (v2)
      {
        break;
      }

      *(v25 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v28;
      v20 = v29;
      v21 = (v28[6] + 16 * v16);
      *v21 = v18;
      v21[1] = v19;
      *(v28[7] + 8 * v16) = v20;
      v22 = v28[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v28[2] = v24;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    return v28;
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_10007CA88()
{
  result = qword_100114E30;
  if (!qword_100114E30)
  {
    sub_10007CE24(255, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114E30);
  }

  return result;
}

uint64_t sub_10007CB04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_10007CB10()
{
  if (!qword_100115D58)
  {
    sub_10007CBA8(255, &qword_100115D60, &type metadata accessor for Headline, &type metadata accessor for Array);
    v0 = sub_1000DC140();
    if (!v1)
    {
      atomic_store(v0, &qword_100115D58);
    }
  }
}

void sub_10007CBA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10007CC0C(uint64_t a1)
{
  sub_10007CBA8(0, &qword_100114E38, &type metadata accessor for Headline, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10007CCB4()
{
  if (!qword_100118358)
  {
    sub_10007CE24(255, &qword_100117AA8, &type metadata for WidgetSectionConfigRecord.SymbolConfiguration.Article, &type metadata accessor for Array);
    v0 = sub_1000DC140();
    if (!v1)
    {
      atomic_store(v0, &qword_100118358);
    }
  }
}

void sub_10007CD40()
{
  if (!qword_100118360)
  {
    sub_10007CE24(255, &qword_100115C60, &type metadata for String, &type metadata accessor for Optional);
    v0 = sub_1000DC330();
    if (!v1)
    {
      atomic_store(v0, &qword_100118360);
    }
  }
}

uint64_t sub_10007CDBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10007CDCC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000DC360() & 1;
  }
}

void sub_10007CE24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10007CEB8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_100071F74(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_10007D024(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  sub_100023704(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

void sub_10007D058(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10007D0D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  sub_100071F74(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_10007D024(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  sub_100023704(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

void sub_10007D25C()
{
  sub_100082BC8(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100071F74(319);
    if (v1 <= 0x3F)
    {
      sub_10007D024(319);
      if (v2 <= 0x3F)
      {
        sub_100023704(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

double sub_10007D368@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v3 = sub_1000D90C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D90B0();
  v8 = sub_1000D90A0();
  v36 = v9;
  v37 = v8;
  (*(v4 + 8))(v7, v3);
  v42._countAndFlagsBits = 46;
  v42._object = 0xE100000000000000;
  v10 = sub_1000DBA30(v42, 3);
  v34 = v11;
  v35 = v10;
  v43._countAndFlagsBits = 46;
  v43._object = 0xE100000000000000;
  v12 = sub_1000DBA30(v43, 5);
  v14 = v13;
  v44._countAndFlagsBits = 46;
  v44._object = 0xE100000000000000;
  v15 = sub_1000DBA30(v44, 9);
  v17 = v16;
  v18 = type metadata accessor for TickerCellViewModel(0);
  v19 = v18[10];
  sub_10006F9D8(a2 + v19);
  v20 = type metadata accessor for PreparedSparkline(0);
  (*(*(v20 - 8) + 56))(a2 + v19, 0, 1, v20);
  v40 = xmmword_100119468;
  v21 = unk_100119480;
  v41 = qword_100119478;
  v39[0] = xmmword_100119488;
  *(v39 + 9) = *(&xmmword_100119488 + 9);
  v22 = v18[12];
  v23 = sub_1000D8F30();
  (*(*(v23 - 8) + 56))(a2 + v22, 1, 1, v23);
  v24 = v18[13];
  v25 = qword_100114118;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_1000D9450();
  v27 = sub_100015294(v26, qword_100128EC0);
  v28 = *(v26 - 8);
  (*(v28 + 16))(a2 + v24, v27, v26);
  (*(v28 + 56))(a2 + v24, 0, 1, v26);
  *a2 = v38;
  v29 = v36;
  *(a2 + 8) = v37;
  *(a2 + 16) = v29;
  v30 = v34;
  *(a2 + 24) = v35;
  *(a2 + 32) = v30;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = v17;
  *(a2 + 72) = 2;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v31 = a2 + v18[11];
  *v31 = v40;
  *(v31 + 16) = v41;
  *(v31 + 24) = v21;
  *(v31 + 32) = v39[0];
  result = *(v39 + 9);
  *(v31 + 41) = *(v39 + 9);
  return result;
}

uint64_t sub_10007D67C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

unint64_t sub_10007D68C()
{
  result = qword_100118448;
  if (!qword_100118448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118448);
  }

  return result;
}

double sub_10007D6E0@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v56 = a2;
  sub_100023704(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for WidgetStock();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000D9AB0();
  v54 = v14;
  v55 = v13;
  sub_100082D80(a1, v12, type metadata accessor for WidgetStock);
  v15 = sub_1000D9AC0();
  v52 = v16;
  v53 = v15;
  v17 = sub_1000D9B30();
  v50 = v18;
  v51 = v17;
  sub_10007DA7C(v12, type metadata accessor for WidgetStock);
  v19 = sub_1000D9AF0();
  v48 = v20;
  v49 = v19;
  v21 = *(v9 + 20);
  sub_100082D80(a1 + v21, v8, sub_100023704);
  v22 = sub_1000D9450();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v8, 1, v22) == 1)
  {
    sub_10007DA7C(v8, sub_100023704);
    v24 = 2;
  }

  else
  {
    v25 = COERCE_DOUBLE(sub_1000D93D0());
    v27 = v26;
    (*(v23 + 8))(v8, v22);
    if (v27)
    {
      v24 = 2;
    }

    else
    {
      v24 = v25 < 0.0;
    }
  }

  v47 = v24;
  v28 = sub_1000BA50C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = *(v9 + 24);
  v36 = type metadata accessor for TickerCellViewModel(0);
  sub_100082D80(a1 + v35, a3 + v36[10], sub_100071F74);
  sub_100082D80(a1, v12, type metadata accessor for WidgetStock);
  sub_10009FCB4(v12, v57);
  v37 = v36[12];
  sub_1000D9AD0();
  v38 = sub_1000D8F30();
  (*(*(v38 - 8) + 56))(a3 + v37, 0, 1, v38);
  sub_100082D80(a1 + v21, a3 + v36[13], sub_100023704);
  sub_10007DA7C(a1, type metadata accessor for WidgetStock);
  *a3 = v56;
  v39 = v54;
  *(a3 + 8) = v55;
  *(a3 + 16) = v39;
  v40 = v52;
  *(a3 + 24) = v53;
  *(a3 + 32) = v40;
  v41 = v50;
  *(a3 + 40) = v51;
  *(a3 + 48) = v41;
  v42 = v48;
  *(a3 + 56) = v49;
  *(a3 + 64) = v42;
  *(a3 + 72) = v47;
  *(a3 + 80) = v28;
  *(a3 + 88) = v30 & 1;
  *(a3 + 96) = v32;
  *(a3 + 104) = v34;
  v43 = (a3 + v36[11]);
  v44 = v57[1];
  *v43 = v57[0];
  v43[1] = v44;
  v43[2] = v58[0];
  result = *(v58 + 9);
  *(v43 + 41) = *(v58 + 9);
  return result;
}

uint64_t sub_10007DA7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007DADC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v74 = 9666786;
  v3 = sub_1000D9690();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  __chkstk_darwin(v3);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = _s11FormatStyleVMa_0();
  v6 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000DAE60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081C4C();
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000829D8();
  v20 = *(v19 - 8);
  v64 = v19;
  v65 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081D94(0, &qword_100118668, sub_1000829D8, &type metadata accessor for AccessibilityAttachmentModifier, &type metadata accessor for ModifiedContent);
  v69 = v24;
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v63 - v26;
  sub_10007E1A4(v2, v18);
  sub_1000DAE30();
  v28 = sub_100082A5C();
  sub_1000DB2A0();
  (*(v10 + 8))(v13, v9);
  sub_10007DA7C(v18, sub_100081C4C);
  v29 = *(v2 + 64);
  v77 = *(v2 + 56);
  v78 = v29;

  v79._countAndFlagsBits = 8236;
  v79._object = 0xE200000000000000;
  sub_1000DBA00(v79);
  v30 = *(v2 + 40);
  v31 = *(v2 + 48);

  v80._countAndFlagsBits = v30;
  v80._object = v31;
  sub_1000DBA00(v80);

  v75 = v15;
  v76 = v28;
  swift_getOpaqueTypeConformance2();
  v32 = sub_100017740();
  v68 = v27;
  v33 = v64;
  v66 = v32;
  sub_1000DB280();

  (*(v65 + 8))(v23, v33);
  if (*(v2 + 88))
  {
    goto LABEL_7;
  }

  v34 = *(v2 + 80);
  if (qword_1001140F8 != -1)
  {
    swift_once();
  }

  v35 = sub_10002999C(0, 3, 1, v34);
  [v35 setNumberStyle:1];
  v36 = [objc_allocWithZone(NSNumber) initWithDouble:v34];
  v37 = [v35 stringFromNumber:v36];

  if (!v37)
  {

LABEL_7:
    v65 = 0xA300000000000000;
    goto LABEL_8;
  }

  v74 = sub_1000DB950();
  v65 = v38;

LABEL_8:
  v39 = v2 + *(type metadata accessor for TickerCellViewModel(0) + 44);
  v40 = *v39;
  v41 = *(v39 + 8);
  v42 = *(v39 + 32);
  v43 = *(v39 + 40);
  v44 = *(v39 + 48);
  v45 = *(v39 + 56);
  v46 = *(type metadata accessor for TickerCellView(0) + 20);
  sub_10004CF98(v8);
  v47 = v67;
  v8[*(v67 + 20)] = 0;
  v8[v47[6]] = 0;
  v8[v47[7]] = 1;
  v48 = &v8[v47[8]];
  *v48 = 0;
  *(v48 + 1) = 0xE000000000000000;
  v49 = sub_100086C3C(v40, v41, v42, v43, v44, v45);
  v51 = v50;
  sub_10007DA7C(v8, _s11FormatStyleVMa_0);
  sub_100082BC8(0, &qword_100115350, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1000DE440;
  v53 = v65;
  *(v52 + 32) = v74;
  *(v52 + 40) = v53;
  v54 = v70;
  sub_10004CF98(v70);
  v55 = sub_100049030();
  v57 = v56;
  (*(v71 + 8))(v54, v72);
  *(v52 + 48) = v55;
  *(v52 + 56) = v57;
  *(v52 + 64) = v49;
  *(v52 + 72) = v51;
  v77 = v52;
  sub_100082BC8(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
  sub_10007CA88();
  v58 = sub_1000DB890();
  v60 = v59;

  v77 = v58;
  v78 = v60;
  v61 = v68;
  sub_1000DA920();

  return sub_100082C18(v61);
}

uint64_t sub_10007E1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[2] = a2;
  sub_100081CE8();
  v33 = v3;
  v32[0] = *(v3 - 8);
  v4 = *(v32[0] + 64);
  __chkstk_darwin(v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081D94(0, &qword_100118670, sub_100081CE8, sub_100081D4C, &type metadata accessor for _ConditionalContent.Storage);
  v32[1] = v7;
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v32 - v9;
  sub_100081D4C(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007D024(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000D8F30();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v32 - v25;
  v27 = type metadata accessor for TickerCellViewModel(0);
  sub_100082D80(a1 + *(v27 + 48), v18, sub_10007D024);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10007DA7C(v18, sub_10007D024);
    sub_10007E694(v14);
    sub_100082D80(v14, v10, sub_100081D4C);
    swift_storeEnumTagMultiPayload();
    sub_10008183C(&qword_100118660, sub_100081CE8);
    sub_10008279C();
    sub_1000DAD90();
    return sub_10007DA7C(v14, sub_100081D4C);
  }

  else
  {
    (*(v20 + 32))(v26, v18, v19);
    v29 = (*(v20 + 16))(v23, v26, v19);
    __chkstk_darwin(v29);
    v32[-2] = a1;
    sub_10008279C();
    sub_1000DB0B0();
    v30 = v32[0];
    v31 = v33;
    (*(v32[0] + 16))(v10, v6, v33);
    swift_storeEnumTagMultiPayload();
    sub_10008183C(&qword_100118660, sub_100081CE8);
    sub_1000DAD90();
    (*(v30 + 8))(v6, v31);
    return (*(v20 + 8))(v26, v19);
  }
}

uint64_t sub_10007E694@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v75 = type metadata accessor for LineTicker();
  v2 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081D94(0, &qword_100118678, type metadata accessor for RowWithChartTicker, type metadata accessor for LineTicker, &type metadata accessor for _ConditionalContent.Storage);
  v72 = v5;
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v74 = &v68 - v7;
  sub_100082754(0);
  v80 = v8;
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v76 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for RowWithChartTicker();
  v11 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000822B4();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081D94(0, &qword_100118680, sub_100081E18, sub_100082754, &type metadata accessor for _ConditionalContent.Storage);
  v77 = v18;
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v79 = &v68 - v20;
  sub_100081D94(0, &qword_100118688, sub_100081E60, sub_1000822B4, &type metadata accessor for _ConditionalContent.Storage);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v68 - v23;
  sub_100081E18(0);
  v78 = v25;
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081E60();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      v71 = v1[72];
      v37 = *(v1 + 3);
      v36 = *(v1 + 4);
      v39 = *(v1 + 5);
      v38 = *(v1 + 6);
      v40 = *(v1 + 8);
      v70 = *(v1 + 7);
      v69 = *(v1 + 10);
      v68 = v1[88];
      v42 = *(v1 + 12);
      v41 = *(v1 + 13);
      v43 = type metadata accessor for TickerCellViewModel(0);
      v44 = &v1[*(v43 + 44)];
      v45 = *(v44 + 2);
      v84 = *(v44 + 1);
      v85[0] = v45;
      *(v85 + 9) = *(v44 + 41);
      v83 = *v44;
      v87 = v84;
      *v88 = v45;
      *&v88[9] = *(v85 + 9);
      v86 = v83;
      v46 = v73;
      sub_100082D80(&v1[*(v43 + 40)], &v13[*(v73 + 36)], sub_100071F74);
      v47 = v87;
      *(v13 + 88) = v86;
      *v13 = v71;
      *(v13 + 1) = v37;
      *(v13 + 2) = v36;
      *(v13 + 3) = v39;
      *(v13 + 4) = v38;
      *(v13 + 5) = v70;
      *(v13 + 6) = v40;
      v48 = v68;
      *(v13 + 7) = v69;
      *(v13 + 8) = v48;
      *(v13 + 9) = v42;
      *(v13 + 10) = v41;
      *(v13 + 104) = v47;
      *(v13 + 120) = *v88;
      *(v13 + 129) = *&v88[9];
      v49 = *(v46 + 40);

      sub_10002B068(&v83, v82);
      if (qword_100114158 != -1)
      {
        swift_once();
      }

      sub_100002540();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();

      *&v13[v49] = sub_1000D9DD0();
      v53 = *(v46 + 44);
      *&v13[v53] = swift_getKeyPath();
      sub_10007D058(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
      swift_storeEnumTagMultiPayload();
      sub_100082D80(v13, v74, type metadata accessor for RowWithChartTicker);
      swift_storeEnumTagMultiPayload();
      sub_10008183C(&qword_100118638, type metadata accessor for RowWithChartTicker);
      sub_10008183C(&qword_100118640, type metadata accessor for LineTicker);
      v54 = v76;
      sub_1000DAD90();
      sub_100082D80(v54, v79, sub_100082754);
      swift_storeEnumTagMultiPayload();
      sub_10008281C();
      sub_1000828F8();
      sub_1000DAD90();
      sub_10007DA7C(v54, sub_100082754);
      v34 = type metadata accessor for RowWithChartTicker;
      v35 = v13;
    }

    else
    {
      v56 = v1[72];
      v57 = *(v1 + 3);
      v58 = *(v1 + 4);
      v59 = *(v1 + 5);
      v60 = *(v1 + 6);
      v61 = *(v1 + 10);
      v62 = v1[88];
      v63 = *(v1 + 12);
      v64 = *(v1 + 13);
      *v4 = v56;
      *(v4 + 1) = v57;
      *(v4 + 2) = v58;
      *(v4 + 3) = v59;
      *(v4 + 4) = v60;
      *(v4 + 5) = v61;
      *(v4 + 6) = v62;
      *(v4 + 7) = v63;
      *(v4 + 8) = v64;
      v65 = *(v75 + 28);
      *&v4[v65] = swift_getKeyPath();
      sub_10007D058(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
      swift_storeEnumTagMultiPayload();
      sub_100082D80(v4, v74, type metadata accessor for LineTicker);
      swift_storeEnumTagMultiPayload();
      sub_10008183C(&qword_100118638, type metadata accessor for RowWithChartTicker);
      sub_10008183C(&qword_100118640, type metadata accessor for LineTicker);

      v66 = v76;
      sub_1000DAD90();
      sub_100082D80(v66, v79, sub_100082754);
      swift_storeEnumTagMultiPayload();
      sub_10008281C();
      sub_1000828F8();
      sub_1000DAD90();
      sub_10007DA7C(v66, sub_100082754);
      v34 = type metadata accessor for LineTicker;
      v35 = v4;
    }
  }

  else if (*v1)
  {
    *v17 = sub_1000DAD00();
    *(v17 + 1) = 0x4000000000000000;
    v17[16] = 0;
    sub_100082CE8(0, &qword_100118690, sub_100082348);
    sub_10007FDF8(v1, &v17[*(v55 + 44)]);
    sub_100082D80(v17, v24, sub_1000822B4);
    swift_storeEnumTagMultiPayload();
    sub_10008183C(&qword_100118620, sub_100081E60);
    sub_10008183C(&qword_100118628, sub_1000822B4);
    sub_1000DAD90();
    sub_100082D80(v28, v79, sub_100081E18);
    swift_storeEnumTagMultiPayload();
    sub_10008281C();
    sub_1000828F8();
    sub_1000DAD90();
    sub_10007DA7C(v28, sub_100081E18);
    v34 = sub_1000822B4;
    v35 = v17;
  }

  else
  {
    *v32 = sub_1000DAD00();
    *(v32 + 1) = 0x4000000000000000;
    v32[16] = 0;
    sub_100082CE8(0, &qword_100118698, sub_100081EF4);
    sub_10007F350(v1, &v32[*(v33 + 44)]);
    sub_100082D80(v32, v24, sub_100081E60);
    swift_storeEnumTagMultiPayload();
    sub_10008183C(&qword_100118620, sub_100081E60);
    sub_10008183C(&qword_100118628, sub_1000822B4);
    sub_1000DAD90();
    sub_100082D80(v28, v79, sub_100081E18);
    swift_storeEnumTagMultiPayload();
    sub_10008281C();
    sub_1000828F8();
    sub_1000DAD90();
    sub_10007DA7C(v28, sub_100081E18);
    v34 = sub_100081E60;
    v35 = v32;
  }

  return sub_10007DA7C(v35, v34);
}

uint64_t sub_10007F350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_100082114(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  sub_100081F7C(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  *v18 = sub_1000DAC50();
  *(v18 + 1) = 0;
  v18[16] = 0;
  sub_100082CE8(0, &qword_100116738, sub_10008202C);
  sub_10007F6B8(a1, &v18[*(v19 + 44)]);
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 1;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  v22 = &v18[*(v12 + 44)];
  *v22 = KeyPath;
  v22[1] = sub_10002B050;
  v22[2] = v21;
  *v10 = sub_1000DAC50();
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_100082CE8(0, &qword_1001186A0, sub_1000821C8);
  sub_10007FBD0(a1, &v10[*(v23 + 44)]);
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = &v10[*(v4 + 44)];
  *v26 = v24;
  v26[1] = sub_10002B5D4;
  v26[2] = v25;
  sub_100082D80(v18, v15, sub_100081F7C);
  sub_100082D80(v10, v7, sub_100082114);
  v27 = v31;
  sub_100082D80(v15, v31, sub_100081F7C);
  sub_1000823D0(0, &qword_100118548, sub_100081F7C, sub_100082114);
  sub_100082D80(v7, v27 + *(v28 + 48), sub_100082114);
  sub_10007DA7C(v10, sub_100082114);
  sub_10007DA7C(v18, sub_100081F7C);
  sub_10007DA7C(v7, sub_100082114);
  return sub_10007DA7C(v15, sub_100081F7C);
}

uint64_t sub_10007F6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1000DB030();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  __chkstk_darwin(v3);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100045460();
  v52 = v7;
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v54 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (v49 - v11);
  v13 = type metadata accessor for SymbolTrendView();
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v53 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v49 - v18;
  v20 = *(a1 + 72);
  v22 = *(a1 + 24);
  v21 = *(a1 + 32);
  v24 = *(a1 + 40);
  v23 = *(a1 + 48);
  v49[0] = swift_getKeyPath();
  *v19 = v20;
  *(v19 + 1) = v22;
  *(v19 + 2) = v21;
  *(v19 + 3) = v24;
  *(v19 + 4) = v23;
  v25 = v14[8];
  *&v19[v25] = swift_getKeyPath();
  sub_10007D058(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  v49[1] = v26;
  swift_storeEnumTagMultiPayload();
  v27 = v14[9];
  *&v19[v27] = swift_getKeyPath();
  sub_10007D058(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v28 = &v19[v14[10]];
  *v28 = v49[0];
  v28[8] = 0;
  v49[0] = *(a1 + 80);
  v29 = *(a1 + 88);
  v31 = *(a1 + 96);
  v30 = *(a1 + 104);

  sub_1000DB080();
  sub_1000DAF80();

  v33 = v50;
  v32 = v51;
  (*(v50 + 104))(v6, enum case for Font.Leading.tight(_:), v51);
  v34 = sub_1000DB060();

  (*(v33 + 8))(v6, v32);
  KeyPath = swift_getKeyPath();
  *v12 = v49[0];
  v12[1] = v29;
  v12[2] = v31;
  v12[3] = v30;
  v12[4] = v34;
  v36 = type metadata accessor for StockPriceView();
  v37 = v36[6];
  *(v12 + v37) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v38 = v12 + v36[7];
  *v38 = KeyPath;
  v38[8] = 0;
  v39 = v36[8];
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  sub_100002540();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();

  *(v12 + v39) = sub_1000D9DD0();
  v43 = v53;
  *(v12 + *(v52 + 36)) = 0x3FF0000000000000;
  sub_100082D80(v19, v43, type metadata accessor for SymbolTrendView);
  v44 = v54;
  sub_100082D80(v12, v54, sub_100045460);
  v45 = v55;
  sub_100082D80(v43, v55, type metadata accessor for SymbolTrendView);
  sub_100082688(0, &qword_100116718, type metadata accessor for SymbolTrendView, sub_100045460);
  v47 = v45 + *(v46 + 48);
  *v47 = 0x4020000000000000;
  *(v47 + 8) = 0;
  sub_100082D80(v44, v45 + *(v46 + 64), sub_100045460);
  sub_10007DA7C(v12, sub_100045460);
  sub_10007DA7C(v19, type metadata accessor for SymbolTrendView);
  sub_10007DA7C(v44, sub_100045460);
  return sub_10007DA7C(v43, type metadata accessor for SymbolTrendView);
}

uint64_t sub_10007FBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008226C(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v21[-v10];
  v13 = *(a1 + 56);
  v12 = *(a1 + 64);
  v14 = (a1 + *(type metadata accessor for TickerCellViewModel(0) + 44));
  v15 = v14[2];
  v23 = v14[1];
  v24[0] = v15;
  *(v24 + 9) = *(v14 + 41);
  v22 = *v14;
  v26 = v23;
  v27[0] = v15;
  *(v27 + 9) = *(v24 + 9);
  v25 = v22;
  LOBYTE(a1) = *(a1 + 72);
  *v11 = swift_getKeyPath();
  sub_10007D058(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for PriceChangeView();
  v17 = (v11 + *(v16 + 20));
  v18 = v26;
  *v17 = v25;
  v17[1] = v18;
  v17[2] = v27[0];
  *(v17 + 41) = *(v27 + 9);
  *(v11 + *(v16 + 24)) = a1;
  *(v11 + *(v5 + 44)) = 0x3FF0000000000000;
  sub_100082D80(v11, v8, sub_10008226C);
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0x4020000000000000;
  *(a2 + 24) = 0;
  sub_1000821FC();
  sub_100082D80(v8, a2 + *(v19 + 64), sub_10008226C);

  sub_10002B068(&v22, v21);

  sub_10007DA7C(v11, sub_10008226C);
  sub_10007DA7C(v8, sub_10008226C);
}

uint64_t sub_10007FDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_100082598(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  sub_10008244C(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  *v18 = sub_1000DAC50();
  *(v18 + 1) = 0;
  v18[16] = 0;
  sub_100082CE8(0, &qword_1001186A8, sub_100082500);
  sub_100080160(a1, &v18[*(v19 + 44)]);
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 1;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  v22 = &v18[*(v12 + 44)];
  *v22 = KeyPath;
  v22[1] = sub_10002B5D4;
  v22[2] = v21;
  *v10 = sub_1000DAC50();
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_100082CE8(0, &qword_1001186B0, sub_10008264C);
  sub_100080598(a1, &v10[*(v23 + 44)]);
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = &v10[*(v4 + 44)];
  *v26 = v24;
  v26[1] = sub_10002B5D4;
  v26[2] = v25;
  sub_100082D80(v18, v15, sub_10008244C);
  sub_100082D80(v10, v7, sub_100082598);
  v27 = v31;
  sub_100082D80(v15, v31, sub_10008244C);
  sub_1000823D0(0, &qword_1001185A0, sub_10008244C, sub_100082598);
  sub_100082D80(v7, v27 + *(v28 + 48), sub_100082598);
  sub_10007DA7C(v10, sub_100082598);
  sub_10007DA7C(v18, sub_10008244C);
  sub_10007DA7C(v7, sub_100082598);
  return sub_10007DA7C(v15, sub_10008244C);
}

uint64_t sub_100080160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_10008226C(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v40 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&KeyPath - v8);
  v10 = type metadata accessor for SymbolTrendView();
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v37 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &KeyPath - v15;
  v17 = *(a1 + 72);
  v19 = *(a1 + 24);
  v38 = *(a1 + 32);
  v18 = v38;
  v20 = *(a1 + 40);
  v39 = *(a1 + 48);
  v21 = v39;
  KeyPath = swift_getKeyPath();
  *v16 = v17;
  *(v16 + 1) = v19;
  *(v16 + 2) = v18;
  *(v16 + 3) = v20;
  *(v16 + 4) = v21;
  v22 = v11[8];
  *&v16[v22] = swift_getKeyPath();
  sub_10007D058(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v23 = v11[9];
  *&v16[v23] = swift_getKeyPath();
  sub_10007D058(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v24 = &v16[v11[10]];
  *v24 = KeyPath;
  v24[8] = 0;
  v25 = (a1 + *(type metadata accessor for TickerCellViewModel(0) + 44));
  v26 = v25[2];
  v44 = v25[1];
  v45[0] = v26;
  *(v45 + 9) = *(v25 + 41);
  v43 = *v25;
  v47 = v44;
  v48[0] = v26;
  *(v48 + 9) = *(v45 + 9);
  v46 = v43;
  *v9 = swift_getKeyPath();
  sub_10007D058(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v27 = type metadata accessor for PriceChangeView();
  v28 = (v9 + *(v27 + 20));
  v29 = v47;
  *v28 = v46;
  v28[1] = v29;
  v28[2] = v48[0];
  *(v28 + 41) = *(v48 + 9);
  *(v9 + *(v27 + 24)) = v17;
  *(v9 + *(v4 + 44)) = 0x3FF0000000000000;
  v30 = v37;
  sub_100082D80(v16, v37, type metadata accessor for SymbolTrendView);
  v31 = v40;
  sub_100082D80(v9, v40, sub_10008226C);
  v32 = v41;
  sub_100082D80(v30, v41, type metadata accessor for SymbolTrendView);
  sub_100082688(0, &qword_1001185C0, type metadata accessor for SymbolTrendView, sub_10008226C);
  v34 = v32 + *(v33 + 48);
  *v34 = 0x4020000000000000;
  *(v34 + 8) = 0;
  sub_100082D80(v31, v32 + *(v33 + 64), sub_10008226C);

  sub_10002B068(&v43, v42);
  sub_10007DA7C(v9, sub_10008226C);
  sub_10007DA7C(v16, type metadata accessor for SymbolTrendView);
  sub_10007DA7C(v31, sub_10008226C);
  return sub_10007DA7C(v30, type metadata accessor for SymbolTrendView);
}

uint64_t sub_100080598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_10008270C(0);
  v42 = v3;
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v42 - v7);
  v9 = type metadata accessor for StockPriceView();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v43 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v42 - v14);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  v18 = *(a1 + 96);
  v19 = *(a1 + 104);

  sub_1000DB070();
  sub_1000DAFD0();
  v20 = sub_1000DB010();

  KeyPath = swift_getKeyPath();
  *v15 = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  v15[4] = v20;
  v22 = v10[8];
  *(v15 + v22) = swift_getKeyPath();
  sub_10007D058(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v23 = v15 + v10[9];
  *v23 = KeyPath;
  v23[8] = 0;
  v24 = v10[10];
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  sub_100002540();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  *(v15 + v24) = sub_1000D9DD0();
  v28 = (a1 + *(type metadata accessor for TickerCellViewModel(0) + 44));
  v47 = *v28;
  v29 = *(v28 + 3);
  v48 = *(v28 + 2);
  v46[0] = v28[2];
  *(v46 + 9) = *(v28 + 41);
  v30 = *(a1 + 72);
  *v8 = swift_getKeyPath();
  sub_10007D058(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v31 = type metadata accessor for PriceChangeView();
  v32 = v8 + *(v31 + 20);
  *v32 = v47;
  *(v32 + 2) = v48;
  *(v32 + 3) = v29;
  *(v32 + 2) = v46[0];
  *(v32 + 41) = *(v46 + 9);
  *(v8 + *(v31 + 24)) = v30;
  sub_10008226C(0);
  *(v8 + *(v33 + 36)) = 0x3FF0000000000000;
  v34 = swift_getKeyPath();
  v35 = v43;
  v36 = (v8 + *(v42 + 36));
  *v36 = v34;
  v36[1] = sub_100080A10;
  v36[2] = 0;
  sub_100082D80(v15, v35, type metadata accessor for StockPriceView);
  v37 = v45;
  sub_100082D80(v8, v45, sub_10008270C);
  v38 = v44;
  sub_100082D80(v35, v44, type metadata accessor for StockPriceView);
  sub_100082688(0, &qword_1001185E8, type metadata accessor for StockPriceView, sub_10008270C);
  v40 = v38 + *(v39 + 48);
  *v40 = 0x4020000000000000;
  *(v40 + 8) = 0;
  sub_100082D80(v37, v38 + *(v39 + 64), sub_10008270C);

  sub_10007DA7C(v8, sub_10008270C);
  sub_10007DA7C(v15, type metadata accessor for StockPriceView);
  sub_10007DA7C(v37, sub_10008270C);
  return sub_10007DA7C(v35, type metadata accessor for StockPriceView);
}

uint64_t sub_100080A10(uint64_t a1)
{
  v2 = sub_1000D9690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v17 - v9;
  (*(v3 + 32))(&v17 - v9, a1, v2, v8);
  (*(v3 + 16))(v6, v10, v2);
  v11 = (*(v3 + 88))(v6, v2);
  if (v11 == enum case for PriceChangeDisplay.currency(_:))
  {
    (*(v3 + 8))(v10, v2);
    v12 = enum case for PriceChangeDisplay.percentage(_:);
    return (*(v3 + 104))(a1, v12, v2);
  }

  v13 = enum case for PriceChangeDisplay.percentage(_:);
  if (v11 == enum case for PriceChangeDisplay.percentage(_:))
  {
    v14 = v10;
    v15 = enum case for PriceChangeDisplay.currency(_:);
    (*(v3 + 8))(v14, v2);
    v12 = v15;
    return (*(v3 + 104))(a1, v12, v2);
  }

  if (v11 == enum case for PriceChangeDisplay.marketCapitalization(_:))
  {
    (*(v3 + 8))(v10, v2);
    v12 = v13;
    return (*(v3 + 104))(a1, v12, v2);
  }

  result = sub_1000DC350();
  __break(1u);
  return result;
}

BOOL sub_100080C14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1000D9450();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023704(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v88 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008177C(0);
  v90 = v12;
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000D8F30();
  v94 = *(v16 - 8);
  v95 = v16;
  v17 = *(v94 + 64);
  __chkstk_darwin(v16);
  v89 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007D024(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v91 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008179C(0);
  v92 = v22;
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v93 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PreparedSparkline(0);
  v97 = *(v25 - 8);
  v26 = *(v97 + 64);
  __chkstk_darwin(v25);
  v96 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071F74(0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008181C(0);
  v33 = v32;
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v36 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 || (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (sub_1000DC360() & 1) == 0)
  {
    return 0;
  }

  v87 = v8;
  v84 = v15;
  v86 = v5;
  v85 = v4;
  v38 = *(a1 + 5);
  v37 = *(a1 + 6);
  v39 = *(a2 + 5);
  v40 = *(a2 + 6);
  if ((*(a1 + 3) != *(a2 + 3) || *(a1 + 4) != *(a2 + 4)) && (sub_1000DC360() & 1) == 0)
  {
    return 0;
  }

  if ((v38 != v39 || v37 != v40) && (sub_1000DC360() & 1) == 0 || (*(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8)) && (sub_1000DC360() & 1) == 0)
  {
    return 0;
  }

  v41 = a1[72];
  v42 = a2[72];
  if (v41 == 2)
  {
    v43 = v87;
    if (v42 != 2)
    {
      return 0;
    }
  }

  else
  {
    v43 = v87;
    if (v42 == 2)
    {
      return 0;
    }

    if (v41)
    {
      v44 = 1853321060;
    }

    else
    {
      v44 = 28789;
    }

    if (v41)
    {
      v45 = 0xE400000000000000;
    }

    else
    {
      v45 = 0xE200000000000000;
    }

    if (v42)
    {
      v46 = 1853321060;
    }

    else
    {
      v46 = 28789;
    }

    if (v42)
    {
      v47 = 0xE400000000000000;
    }

    else
    {
      v47 = 0xE200000000000000;
    }

    if (v44 == v46 && v45 == v47)
    {
    }

    else
    {
      v48 = sub_1000DC360();

      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v49 = *(a1 + 13);
  v50 = a2[88];
  v51 = *(a2 + 13);
  if (a1[88])
  {
    if (!a2[88])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 10) != *(a2 + 10))
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  if (v49)
  {
    if (!v51 || (*(a1 + 12) != *(a2 + 12) || v49 != v51) && (sub_1000DC360() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  v87 = type metadata accessor for TickerCellViewModel(0);
  v52 = *(v87 + 40);
  v53 = *(v33 + 48);
  sub_100082D80(&a1[v52], v36, sub_100071F74);
  sub_100082D80(&a2[v52], &v36[v53], sub_100071F74);
  v54 = *(v97 + 48);
  if (v54(v36, 1, v25) == 1)
  {
    if (v54(&v36[v53], 1, v25) == 1)
    {
      sub_10007DA7C(v36, sub_100071F74);
      goto LABEL_55;
    }

LABEL_52:
    v55 = sub_10008181C;
    v56 = v36;
LABEL_53:
    sub_10007DA7C(v56, v55);
    return 0;
  }

  sub_100082D80(v36, v31, sub_100071F74);
  if (v54(&v36[v53], 1, v25) == 1)
  {
    sub_10007DA7C(v31, type metadata accessor for PreparedSparkline);
    goto LABEL_52;
  }

  v57 = v96;
  sub_100081884(&v36[v53], v96);
  v58 = sub_100070EA0(v31, v57);
  sub_10007DA7C(v57, type metadata accessor for PreparedSparkline);
  sub_10007DA7C(v31, type metadata accessor for PreparedSparkline);
  sub_10007DA7C(v36, sub_100071F74);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  v59 = v87;
  v60 = &a1[*(v87 + 44)];
  v61 = *(v60 + 2);
  v98[1] = *(v60 + 1);
  v99[0] = v61;
  *(v99 + 9) = *(v60 + 41);
  v98[0] = *v60;
  v62 = &a2[*(v87 + 44)];
  *&v101[9] = *(v62 + 41);
  v63 = *(v62 + 2);
  v100[1] = *(v62 + 1);
  *v101 = v63;
  v100[0] = *v62;
  if (!sub_10009FBBC(v98, v100))
  {
    return 0;
  }

  v64 = *(v59 + 48);
  v65 = *(v92 + 48);
  v66 = v93;
  sub_100082D80(&a1[v64], v93, sub_10007D024);
  sub_100082D80(&a2[v64], v66 + v65, sub_10007D024);
  v68 = v94;
  v67 = v95;
  v69 = *(v94 + 48);
  if (v69(v66, 1, v95) != 1)
  {
    v70 = v91;
    sub_100082D80(v66, v91, sub_10007D024);
    if (v69(v66 + v65, 1, v67) != 1)
    {
      v71 = v89;
      (*(v68 + 32))(v89, v66 + v65, v67);
      sub_10008183C(&qword_100118470, &type metadata accessor for URL);
      v72 = sub_1000DB8D0();
      v73 = *(v68 + 8);
      v73(v71, v67);
      v73(v70, v67);
      sub_10007DA7C(v66, sub_10007D024);
      v59 = v87;
      if ((v72 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_63;
    }

    (*(v68 + 8))(v70, v67);
    goto LABEL_61;
  }

  if (v69(v66 + v65, 1, v67) != 1)
  {
LABEL_61:
    v55 = sub_10008179C;
    v56 = v66;
    goto LABEL_53;
  }

  sub_10007DA7C(v66, sub_10007D024);
LABEL_63:
  v74 = *(v59 + 52);
  v75 = *(v90 + 48);
  v76 = v84;
  sub_100082D80(&a1[v74], v84, sub_100023704);
  sub_100082D80(&a2[v74], v76 + v75, sub_100023704);
  v77 = *(v86 + 48);
  v78 = v85;
  if (v77(v76, 1, v85) == 1)
  {
    if (v77(v76 + v75, 1, v78) == 1)
    {
      sub_10007DA7C(v76, sub_100023704);
      return 1;
    }

    goto LABEL_68;
  }

  v79 = v88;
  sub_100082D80(v76, v88, sub_100023704);
  if (v77(v76 + v75, 1, v78) == 1)
  {
    (*(v86 + 8))(v79, v78);
LABEL_68:
    v55 = sub_10008177C;
    v56 = v76;
    goto LABEL_53;
  }

  v80 = v86;
  (*(v86 + 32))(v43, v76 + v75, v78);
  sub_10008183C(&qword_100118468, &type metadata accessor for WidgetQuote);
  v81 = sub_1000DB8D0();
  v82 = *(v80 + 8);
  v82(v43, v78);
  v82(v79, v78);
  sub_10007DA7C(v76, sub_100023704);
  return (v81 & 1) != 0;
}

void sub_1000817BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_10008183C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100081884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreparedSparkline(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000818FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TickerCellViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_10007D058(0, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100081A30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TickerCellViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_10007D058(0, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_100081B7C()
{
  type metadata accessor for TickerCellViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_10007D058(319, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100081C4C()
{
  if (!qword_100118510)
  {
    sub_100081D94(255, &qword_100118518, sub_100081CE8, sub_100081D4C, &type metadata accessor for _ConditionalContent);
    v0 = sub_1000DB3A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100118510);
    }
  }
}

void sub_100081CE8()
{
  if (!qword_100118520)
  {
    sub_100081D4C(255);
    sub_10008279C();
    v0 = sub_1000DB0C0();
    if (!v1)
    {
      atomic_store(v0, &qword_100118520);
    }
  }
}

void sub_100081D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_100081E60()
{
  if (!qword_100118538)
  {
    sub_100081EF4();
    sub_10008183C(&qword_100118588, sub_100081EF4);
    v0 = sub_1000DB540();
    if (!v1)
    {
      atomic_store(v0, &qword_100118538);
    }
  }
}

void sub_100081EF4()
{
  if (!qword_100118540)
  {
    sub_1000823D0(255, &qword_100118548, sub_100081F7C, sub_100082114);
    v0 = sub_1000DB650();
    if (!v1)
    {
      atomic_store(v0, &qword_100118540);
    }
  }
}

void sub_100081F9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100082BC8(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10008202C()
{
  if (!qword_100116710)
  {
    sub_100082688(255, &qword_100116718, type metadata accessor for SymbolTrendView, sub_100045460);
    v0 = sub_1000DB650();
    if (!v1)
    {
      atomic_store(v0, &qword_100116710);
    }
  }
}

void sub_1000820B4()
{
  if (!qword_100116728)
  {
    sub_1000DADF0();
    v0 = sub_1000DADB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100116728);
    }
  }
}

void sub_100082134()
{
  if (!qword_100118560)
  {
    sub_1000821C8(255);
    sub_10008183C(&qword_100118580, sub_1000821C8);
    v0 = sub_1000DB4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100118560);
    }
  }
}

void sub_1000821FC()
{
  if (!qword_100118570)
  {
    sub_10008226C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100118570);
    }
  }
}

void sub_1000822B4()
{
  if (!qword_100118590)
  {
    sub_100082348();
    sub_10008183C(&qword_100118600, sub_100082348);
    v0 = sub_1000DB540();
    if (!v1)
    {
      atomic_store(v0, &qword_100118590);
    }
  }
}

void sub_100082348()
{
  if (!qword_100118598)
  {
    sub_1000823D0(255, &qword_1001185A0, sub_10008244C, sub_100082598);
    v0 = sub_1000DB650();
    if (!v1)
    {
      atomic_store(v0, &qword_100118598);
    }
  }
}

void sub_1000823D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10008246C()
{
  if (!qword_1001185B0)
  {
    sub_100082500(255);
    sub_10008183C(&qword_1001185C8, sub_100082500);
    v0 = sub_1000DB4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1001185B0);
    }
  }
}

void sub_10008253C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_100082688(255, a3, a4, a5);
    v6 = sub_1000DB650();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000825B8()
{
  if (!qword_1001185D8)
  {
    sub_10008264C(255);
    sub_10008183C(&qword_1001185F8, sub_10008264C);
    v0 = sub_1000DB4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1001185D8);
    }
  }
}

void sub_100082688(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

unint64_t sub_10008279C()
{
  result = qword_100118610;
  if (!qword_100118610)
  {
    sub_100081D4C(255);
    sub_10008281C();
    sub_1000828F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118610);
  }

  return result;
}

unint64_t sub_10008281C()
{
  result = qword_100118618;
  if (!qword_100118618)
  {
    sub_100081E18(255);
    sub_10008183C(&qword_100118620, sub_100081E60);
    sub_10008183C(&qword_100118628, sub_1000822B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118618);
  }

  return result;
}

unint64_t sub_1000828F8()
{
  result = qword_100118630;
  if (!qword_100118630)
  {
    sub_100082754(255);
    sub_10008183C(&qword_100118638, type metadata accessor for RowWithChartTicker);
    sub_10008183C(&qword_100118640, type metadata accessor for LineTicker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118630);
  }

  return result;
}

void sub_1000829D8()
{
  if (!qword_100118648)
  {
    sub_100081C4C();
    sub_100082A5C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100118648);
    }
  }
}

unint64_t sub_100082A5C()
{
  result = qword_100118650;
  if (!qword_100118650)
  {
    sub_100081C4C();
    sub_100082AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118650);
  }

  return result;
}

unint64_t sub_100082AD4()
{
  result = qword_100118658;
  if (!qword_100118658)
  {
    sub_100081D94(255, &qword_100118518, sub_100081CE8, sub_100081D4C, &type metadata accessor for _ConditionalContent);
    sub_10008183C(&qword_100118660, sub_100081CE8);
    sub_10008279C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118658);
  }

  return result;
}

void sub_100082BC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100082C18(uint64_t a1)
{
  sub_100081D94(0, &qword_100118668, sub_1000829D8, &type metadata accessor for AccessibilityAttachmentModifier, &type metadata accessor for ModifiedContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100082CE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DA800();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100082D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100082DEC()
{
  result = qword_1001186B8;
  if (!qword_1001186B8)
  {
    sub_100081D94(255, &qword_100118668, sub_1000829D8, &type metadata accessor for AccessibilityAttachmentModifier, &type metadata accessor for ModifiedContent);
    sub_100081C4C();
    sub_100082A5C();
    swift_getOpaqueTypeConformance2();
    sub_10008183C(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001186B8);
  }

  return result;
}

uint64_t sub_100082F1C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1000DA040();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_1000851A8(0, &qword_100118810, &type metadata accessor for NewsUserProfile, &type metadata accessor for Optional);
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100083050, 0, 0);
}

uint64_t sub_100083050()
{
  v1 = v0[10];
  v0[11] = *(v0[4] + 56);
  sub_1000DA0D0();
  v2 = sub_1000D9510();
  v0[12] = v2;
  v3 = *(v2 - 8);
  v0[13] = v3;
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[10];
  if (v4 == 1)
  {
    v6 = v0[4];
    sub_100085138(v0[10], &qword_100118810, &type metadata accessor for NewsUserProfile);
    v7 = *sub_100006C7C((v6 + 16), *(v6 + 40));
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_100083218;

    return sub_10005A770();
  }

  else
  {
    (*(v3 + 32))(v0[3], v0[10], v2);
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100083218(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_1000837E8;
  }

  else
  {
    v5 = sub_10008332C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10008332C()
{
  v47 = v0;
  v1 = [*(v0 + 120) bundleSubscription];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 bundleChannelIDs];
    v4 = [v3 count];

    v5 = *(v0 + 120);
    if (v4 > 0)
    {
      v6 = [*(v0 + 120) rankedAllSubscribedTagIDs];
      if (v6)
      {
        v7 = v6;
        sub_1000DBB10();
      }

      v20 = [*(v0 + 120) mutedTagIDs];
      if (!v20)
      {
        goto LABEL_12;
      }

      v21 = v20;
      v22 = sub_1000DBCA0();

      v23 = v22[2];
      if (v23)
      {
        while (1)
        {
          v24 = sub_100084840(v23, 0);
          v25 = sub_100084E78(&v46, v24 + 4, v23, v22);
          sub_100084FD0();
          if (v25 == v23)
          {
            break;
          }

          __break(1u);
LABEL_12:
          v22 = _swiftEmptySetSingleton;
          v23 = _swiftEmptySetSingleton[2];
          if (!v23)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
      }

      v26 = [*(v0 + 120) autoFavoriteTagIDs];
      if (v26)
      {
        v27 = v26;
        sub_1000DBB10();
      }

      v28 = [*(v0 + 120) purchasedTagIDs];
      if (v28)
      {
        v29 = v28;
        v30 = sub_1000DBCA0();

        v31 = v30[2];
        if (v31)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v30 = _swiftEmptySetSingleton;
        v31 = _swiftEmptySetSingleton[2];
        if (v31)
        {
LABEL_18:
          v32 = sub_100084840(v31, 0);
          v33 = sub_100084E78(&v46, v32 + 4, v31, v30);
          result = sub_100084FD0();
          if (v33 != v31)
          {
            __break(1u);
            return result;
          }

          goto LABEL_22;
        }
      }

LABEL_22:
      v36 = *(v0 + 96);
      v35 = *(v0 + 104);
      v44 = *(v0 + 88);
      v45 = *(v0 + 120);
      v37 = *(v0 + 72);
      v38 = *(v0 + 24);
      v39 = v2;
      sub_1000D94F0();
      (*(v35 + 16))(v37, v38, v36);
      (*(v35 + 56))(v37, 0, 1, v36);
      sub_1000DA0E0();

      swift_unknownObjectRelease();
      v41 = *(v0 + 72);
      v40 = *(v0 + 80);
      v43 = *(v0 + 56);
      v42 = *(v0 + 64);

      v19 = *(v0 + 8);
      goto LABEL_23;
    }

    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    type metadata accessor for TodayPrivateDataError();
    sub_1000847F8(&qword_100118818, 255, type metadata accessor for TodayPrivateDataError);
    swift_allocError();
    (*(v13 + 56))(v14, 2, 2, v12);
    swift_willThrow();
  }

  else
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    type metadata accessor for TodayPrivateDataError();
    sub_1000847F8(&qword_100118818, 255, type metadata accessor for TodayPrivateDataError);
    swift_allocError();
    (*(v10 + 56))(v11, 1, 2, v9);
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  v16 = *(v0 + 72);
  v15 = *(v0 + 80);
  v18 = *(v0 + 56);
  v17 = *(v0 + 64);

  v19 = *(v0 + 8);
LABEL_23:

  return v19();
}

uint64_t sub_1000837E8()
{
  v0[2] = v0[16];
  v1 = v0[8];
  v2 = v0[5];
  swift_errorRetain();
  sub_10006D25C();
  if (swift_dynamicCast())
  {
    v3 = v0[16];
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[5];
    v7 = v0[6];

    (*(v7 + 32))(v5, v4, v6);
    type metadata accessor for TodayPrivateDataError();
    sub_1000847F8(&qword_100118818, 255, type metadata accessor for TodayPrivateDataError);
    swift_allocError();
    v9 = v8;
    (*(v7 + 16))(v8, v5, v6);
    (*(v7 + 56))(v9, 0, 2, v6);
    swift_willThrow();
    (*(v7 + 8))(v5, v6);
    v10 = v0[2];
  }

  else
  {
    v11 = v0[2];

    v12 = v0[16];
  }

  v14 = v0[9];
  v13 = v0[10];
  v16 = v0[7];
  v15 = v0[8];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000839BC()
{
  sub_100006D0C((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_100083A24()
{
  result = sub_1000DA370();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100083AC0()
{
  sub_1000851A8(0, &qword_100118808, &type metadata accessor for NewsUserProfile, &type metadata accessor for Promise);

  return sub_1000DA120();
}

uint64_t sub_100083CCC()
{
  sub_100084FD8();
  swift_allocError();
  sub_1000851A8(0, &qword_100118828, &type metadata accessor for RemoteNotificationFetchResult, &type metadata accessor for Promise);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1000DA150();
}

uint64_t sub_100083D58()
{
  v1 = sub_1000DA370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v12 = sub_1000D9510();
  sub_1000DA180();
  v16 = qword_100128F28;
  v14 = *(v2 + 16);
  v14(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + qword_100128F28, v1);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v13 = *(v2 + 32);
  v13(v5 + v4, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v6 = sub_1000DA100();
  v12 = sub_1000DA130();

  v14(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v16, v1);
  v7 = swift_allocObject();
  v13(v7 + v4, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v8 = sub_1000DA100();
  v9 = sub_1000DA140();

  return v9;
}

uint64_t sub_100083F98(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1000DA350();
  v4 = sub_1000DBDD0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "fetching news user profile", v5, 2u);
  }

  v6 = a1[2];
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  return sub_1000D98F0();
}

uint64_t sub_10008407C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1000DBF50(60);
  v17._countAndFlagsBits = 40;
  v17._object = 0xE100000000000000;
  sub_1000DBA00(v17);
  v4 = *(sub_1000D94E0() + 16);

  v18._countAndFlagsBits = sub_1000DC320();
  sub_1000DBA00(v18);

  v19._countAndFlagsBits = 0x6154646574756D20;
  v19._object = 0xEE00202C73444967;
  sub_1000DBA00(v19);
  v5 = sub_1000D9500();
  v6 = [v5 bundleChannelIDs];

  [v6 count];
  v20._countAndFlagsBits = sub_1000DC320();
  sub_1000DBA00(v20);

  v21._object = 0x80000001000E9090;
  v21._countAndFlagsBits = 0xD000000000000013;
  sub_1000DBA00(v21);
  v7 = sub_1000D9500();
  v8 = [v7 subscriptionState];

  v16[3] = v8;
  type metadata accessor for FCSubscriptionState(0);
  sub_1000DC0C0();
  v22._countAndFlagsBits = 0xD000000000000014;
  v22._object = 0x80000001000E90B0;
  sub_1000DBA00(v22);

  v9 = sub_1000DA350();
  v10 = sub_1000DBDD0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136446210;
    v13 = sub_1000848C8(0, 0xE000000000000000, v16);

    *(v11 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "fetched news user profile: %{public}s", v11, 0xCu);
    sub_100006D0C(v12);
  }

  else
  {
  }

  v14 = sub_1000D9510();
  return (*(*(v14 - 8) + 16))(a2, a1, v14);
}

void sub_100084388()
{
  swift_errorRetain();
  oslog = sub_1000DA350();
  v0 = sub_1000DBDB0();

  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *v1 = 138543362;
    swift_errorRetain();
    v3 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v3;
    *v2 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v0, "failed to fetch news user profile with error: %{public}@", v1, 0xCu);
    sub_100085138(v2, &qword_100114B48, sub_100006CC0);
  }
}

uint64_t sub_1000844A8()
{
  v1 = *(*v0 + 80);
  v2 = *(*(*v0 + 88) + 8);
  v3 = v0[2];
  return sub_1000DA0A0();
}

uint64_t sub_100084500()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = qword_100128F28;
  v3 = sub_1000DA370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_100084568()
{
  sub_100084500();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1000845EC()
{
  result = qword_1001187F0;
  if (!qword_1001187F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001187F0);
  }

  return result;
}

uint64_t sub_100084710(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000ECF4;

  return sub_100082F1C(a1, v1);
}

uint64_t type metadata accessor for TodayPrivateDataError()
{
  result = qword_1001188A8;
  if (!qword_1001188A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000847F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_100084840(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100024A74(0, &qword_100115350);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1000848C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100084994(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100061EC4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006D0C(v11);
  return v7;
}

unint64_t sub_100084994(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100084AA0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000DC010();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}