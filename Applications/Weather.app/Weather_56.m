unint64_t sub_10060C7A4()
{
  result = qword_100CCBB90;
  if (!qword_100CCBB90)
  {
    sub_10022E824(&qword_100CA64A8);
    sub_10060CE70(&qword_100CC7ED8, 255, &type metadata accessor for LocationOfInterest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCBB90);
  }

  return result;
}

uint64_t sub_10060C86C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000926F8;

  return sub_100608818(a1, v4, v5, v1 + 32);
}

void sub_10060C94C()
{
  sub_10013DB50();
  if (v0 <= 0x3F)
  {
    sub_10060CA78(319, &qword_100CCBD08, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_10060CA78(319, &qword_100CCBD10, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100081C98();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10060CA78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10022E824(&qword_100CCBBD8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10060CB4C()
{
  result = qword_100CCBD50;
  if (!qword_100CCBD50)
  {
    sub_10022E824(&qword_100CCBD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCBD50);
  }

  return result;
}

uint64_t sub_10060CBC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCBD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10060CC38()
{
  result = qword_100CCBD60;
  if (!qword_100CCBD60)
  {
    sub_10022E824(&qword_100CCBD18);
    sub_10022E824(&qword_100CCBD30);
    type metadata accessor for SegmentedPickerStyle();
    sub_100006F64(&qword_100CCBD58, &qword_100CCBD30);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCBD60);
  }

  return result;
}

unint64_t sub_10060CD54()
{
  result = qword_100CCBD68;
  if (!qword_100CCBD68)
  {
    sub_10022E824(&qword_100CCBD20);
    sub_100006F64(&qword_100CB6698, &qword_100CB66A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCBD68);
  }

  return result;
}

uint64_t sub_10060CE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElevationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10060CE70(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10060CEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElevationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10060CFB0()
{
  v0 = type metadata accessor for ChartKind();
  if (v1 <= 0x3F)
  {
    sub_10060D338(319, &qword_100CA51A8, &type metadata accessor for Array);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v4 = type metadata accessor for DetailChartExtrema();
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_10060D27C();
      if (v6 > 0x3F)
      {
        return v4;
      }

      sub_10060D2E0();
      if (v7 > 0x3F)
      {
        return v4;
      }

      v4 = type metadata accessor for ChartDateStep();
      if (v8 > 0x3F)
      {
        return v4;
      }

      v4 = type metadata accessor for ChartViewModel.Background(319);
      if (v9 > 0x3F)
      {
        return v4;
      }

      v4 = type metadata accessor for ChartDarkeningScrim();
      if (v10 > 0x3F)
      {
        return v4;
      }

      sub_100118BF4(319, &qword_100CC2610, &type metadata accessor for Array);
      if (v11 > 0x3F)
      {
        return v4;
      }

      v4 = type metadata accessor for Date();
      if (v12 > 0x3F)
      {
        return v4;
      }

      sub_10060D338(319, &unk_100CCBEE0, &type metadata accessor for Optional);
      if (v13 > 0x3F)
      {
        return v4;
      }

      v4 = type metadata accessor for ChartPeakMarkStyle();
      if (v14 > 0x3F)
      {
        return v4;
      }

      else
      {
        v0 = type metadata accessor for ChartViewModelInterpolationMode();
        if (v15 <= 0x3F)
        {
          v0 = type metadata accessor for ChartPastDataTreatment();
          if (v16 <= 0x3F)
          {
            sub_100118BF4(319, &qword_100CA45C0, &type metadata accessor for Optional);
            v0 = v17;
            if (v18 <= 0x3F)
            {
              v0 = sub_10013DB50();
              if (v19 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_10060D27C()
{
  if (!qword_100CCBED0)
  {
    sub_10022E824(&qword_100CBAE30);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CCBED0);
    }
  }
}

void sub_10060D2E0()
{
  if (!qword_100CCBED8)
  {
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &qword_100CCBED8);
    }
  }
}

void sub_10060D338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DetailChartDataElement();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10060D3D0()
{
  sub_10060D428();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_10060D428()
{
  if (!qword_100CCC000)
  {
    sub_10022E824(&unk_100CB2CF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CCC000);
    }
  }
}

void sub_10060D4A0(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, uint64_t)@<X7>, unint64_t *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, unsigned __int8 a14, void (*a15)(void), void (*a16)(void), void (*a17)(void (*)(void), uint64_t), uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void), uint64_t a22, uint64_t a23, void (*a24)(char *, uint64_t, uint64_t), unsigned __int8 a25, void (*a26)(uint64_t, uint64_t), uint64_t a27, void (*a28)(char *, uint64_t, uint64_t), uint64_t a29, uint64_t a30, void (*a31)(char *, uint64_t, uint64_t), uint64_t a32, void (**a33)(unint64_t, uint64_t, uint64_t), uint64_t a34, unint64_t a35, uint64_t a36, unint64_t a37, uint64_t a38, uint64_t a39)
{
  v231 = a8;
  v253 = a7;
  v233 = a6;
  v250 = a5;
  v234 = a4;
  v235 = a3;
  v251 = a2;
  v249 = a1;
  v224 = a27;
  v225 = a26;
  v226 = a19;
  v227 = a17;
  v228 = a16;
  v229 = a15;
  v244 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v252 = v43;
  __chkstk_darwin(v44);
  sub_100003848();
  v247 = v45;
  __chkstk_darwin(v46);
  sub_10000E70C();
  sub_100003918(v47);
  v237 = type metadata accessor for ChartPastDataTreatment();
  sub_1000037C4();
  v236 = v48;
  __chkstk_darwin(v49);
  sub_1000037D8();
  sub_100003918(v51 - v50);
  type metadata accessor for ChartViewModelInterpolationMode();
  sub_1000037C4();
  v239 = v53;
  v240 = v52;
  __chkstk_darwin(v52);
  sub_1000037D8();
  v230 = v55 - v54;
  v56 = sub_10022C350(&unk_100CB2CF0);
  v57 = sub_100003810(v56);
  __chkstk_darwin(v57);
  sub_100003848();
  v248 = v58;
  __chkstk_darwin(v59);
  sub_10000E70C();
  sub_100003918(v60);
  v246 = type metadata accessor for ChartPeakMarkStyle();
  sub_1000037C4();
  v223 = v61;
  __chkstk_darwin(v62);
  sub_1000037D8();
  v243 = v64 - v63;
  v65 = sub_10022C350(&qword_100CAB930);
  v66 = sub_100003810(v65);
  __chkstk_darwin(v66);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003908();
  __chkstk_darwin(v68);
  sub_10000E70C();
  v242 = v69;
  v245 = type metadata accessor for ChartDarkeningScrim();
  sub_1000037C4();
  v222 = v70;
  __chkstk_darwin(v71);
  sub_1000037D8();
  v241 = (v73 - v72);
  v74 = type metadata accessor for ChartViewModel.Background(0);
  v75 = sub_100003810(v74);
  __chkstk_darwin(v75);
  sub_1000037D8();
  v78 = v77 - v76;
  v79 = type metadata accessor for ChartDateStep();
  v80 = sub_100003810(v79);
  __chkstk_darwin(v80);
  sub_1000037D8();
  v83 = v82 - v81;
  v84 = type metadata accessor for DetailChartExtrema();
  sub_1000037C4();
  v86 = v85;
  __chkstk_darwin(v87);
  sub_1000037D8();
  v90 = (v89 - v88);
  v91 = type metadata accessor for Date();
  sub_1000037C4();
  v93 = v92;
  __chkstk_darwin(v94);
  sub_100003848();
  sub_100003908();
  v96 = __chkstk_darwin(v95);
  v98 = &v194 - v97;
  __chkstk_darwin(v96);
  v100 = &v194 - v99;
  type metadata accessor for ChartKind();
  sub_1000037C4();
  __chkstk_darwin(v101);
  sub_1000037D8();
  v104 = v103 - v102;
  v197 = v105;
  v106 = *(v105 + 16);
  v215 = v104;
  v216 = v107;
  v205 = v105 + 16;
  v203 = v106;
  v106();
  v218 = v93;
  v108 = *(v93 + 16);
  v217 = v100;
  v213 = (v93 + 16);
  v212 = v108;
  v108(v100, v234, v91);
  v198 = v86;
  v109 = *(v86 + 16);
  v219 = v90;
  v110 = v90;
  v111 = v252;
  v238 = v84;
  v204 = v86 + 16;
  v202 = v109;
  v109(v110, v233, v84);
  sub_100008A9C();
  v220 = v83;
  sub_100610594(v231, v83, v112);
  sub_100010588();
  v221 = v78;
  v113 = v78;
  v114 = v201;
  sub_100610594(v229, v113, v115);
  v116 = v222 + 16;
  v117 = *(v222 + 16);
  v117(v241, v228, v245);
  sub_100035AD0(v227, v242, &qword_100CAB930);
  v118 = v223 + 16;
  v119 = *(v223 + 16);
  v120 = v244;
  v119(v243, v226, v246);
  sub_1003DF9A4(v250, v114);
  sub_1000038B4(v114, 1, v120);
  v209 = v118;
  v208 = v119;
  v207 = v116;
  if (v121)
  {
    sub_1000180EC(v114, &qword_100CAB930);
    v122 = v210;
    sub_10001B350(v210, 1, 1, v91);
    static WeatherClock.date.getter();
    sub_1000038B4(v122, 1, v91);
    v124 = v218;
    v125 = v98;
    if (!v121)
    {
      sub_1000180EC(v122, &unk_100CB2CF0);
    }
  }

  else
  {
    v123 = v210;
    DetailChartDataElement.date.getter();
    (*(v111 + 8))(v114, v120);
    sub_1000185D0();
    v124 = v218;
    (*(v218 + 32))(v98, v123, v91);
    v125 = v98;
  }

  v210 = a20;
  v201 = a18;
  v200 = a14;
  v199 = a13;
  v126 = v211;
  sub_1002F5488(v250, v211);
  v127 = v244;
  sub_1000038B4(v126, 1, v244);
  v128 = v236;
  v206 = v117;
  if (v121)
  {
    sub_1000180EC(v126, &qword_100CAB930);
    v129 = v248;
    sub_10001B350(v248, 1, 1, v91);
    v132 = v214;
    static WeatherClock.date.getter();
    sub_1000038B4(v129, 1, v91);
    v133 = v240;
    if (!v121)
    {
      sub_1000180EC(v129, &unk_100CB2CF0);
    }
  }

  else
  {
    v130 = v248;
    DetailChartDataElement.date.getter();
    (*(v252 + 8))(v126, v127);
    sub_1000185D0();
    v131 = *(v124 + 32);
    v132 = v214;
    v131(v214, v130, v91);
    v133 = v240;
  }

  (*(v239 + 16))(v230, v225, v133);
  v134 = v237;
  (*(v128 + 16))(v232, v224, v237);
  v135 = v215;
  ChartKind.showSecondLine.getter();
  v136 = v251;
  *a9 = v249;
  a9[1] = v136;
  v137 = type metadata accessor for ChartViewModel(0);
  (v203)(a9 + v137[5], v135, v216);
  v138 = v212;
  v212(a9 + v137[18], v217, v91);
  v139 = v250;
  *(a9 + v137[6]) = v250;
  v202(a9 + v137[7], v219, v238);
  *(a9 + v137[8]) = v253;
  v140 = (a9 + v137[10]);
  *v140 = a10;
  v140[1] = a11;
  sub_100008A9C();
  sub_100610594(v220, a9 + v141, v142);
  v143 = a9 + v137[13];
  *v143 = v199;
  v143[8] = v200 & 1;
  sub_100010588();
  sub_100610594(v221, a9 + v144, v145);
  *(a9 + v137[15]) = a12;
  v206(a9 + v137[16], v241, v245);
  sub_100035AD0(v242, a9 + v137[21], &qword_100CAB930);
  *(a9 + v137[22]) = v201;
  v208(a9 + v137[23], v243, v246);
  *(a9 + v137[24]) = v210;
  v146 = a9 + v137[19];
  v211 = v125;
  v138(v146, v125, v91);
  v138(a9 + v137[20], v132, v91);
  sub_10000C70C(0, &qword_100CA53F0);

  v147 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  v148 = 0;
  v213 = v137;
  *(a9 + v137[17]) = v147;
  v149 = *(v139 + 16);
  v253 = v149 - 1;
  v150 = v244;
  v151 = v247;
  if (v149 >= 2)
  {
    sub_10000EBFC();
    while (1)
    {
      v148 = v152 + 1;
      if (__OFADD__(v152, 1))
      {
        break;
      }

      sub_100020938();
      if (v153 == v154)
      {
        goto LABEL_13;
      }
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_13:
  v254 = _swiftEmptyArrayStorage;
  sub_1006A7AB4();
  if ((v148 & 0x8000000000000000) == 0)
  {
    v155 = v254;
    v196 = a9;
    v195 = v91;
    if (v148)
    {
      v156 = 0;
      v157 = v252;
      v158 = v250;
      v251 = (*(v252 + 80) + 32) & ~*(v252 + 80);
      v249 = v250 + v251;
      v248 = v252 + 16;
      v159 = (v252 + 32);
      do
      {
        if (v156 >= v253)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (__OFADD__(v156, 2))
        {
          v160 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v160 = v156 + 2;
        }

        if (v156 < 0)
        {
          goto LABEL_45;
        }

        if (v156 >= *(v158 + 16))
        {
          goto LABEL_46;
        }

        v161 = v158;
        v162 = *(v157 + 72);
        (*(v157 + 16))(v151, v249 + v162 * v156, v150);
        v254 = v155;
        v164 = v155[2];
        v163 = v155[3];
        if (v164 >= v163 >> 1)
        {
          sub_100049A18(v163);
          sub_1006A7AB4();
          v161 = v250;
          v155 = v254;
        }

        v155[2] = v164 + 1;
        (*v159)(v155 + v251 + v164 * v162, v151, v150);
        v156 = v160;
        --v148;
        v157 = v252;
        v158 = v161;
      }

      while (v148);
      v165 = v194;
      if (v160 < v253)
      {
        v166 = v251;
        goto LABEL_29;
      }

LABEL_41:

      v134 = v237;
      v128 = v236;
    }

    else
    {
      v158 = v250;
      if (v149 >= 2)
      {
        v160 = 0;
        v157 = v252;
        v166 = (*(v252 + 80) + 32) & ~*(v252 + 80);
        v165 = v194;
LABEL_29:
        v249 = v158 + v166;
        v247 = (v157 + 32);
        v248 = v157 + 16;
        v167 = v160;
        v251 = v166;
        while (1)
        {
          v168 = __OFADD__(v167, 2);
          if (v160 < 0)
          {
            break;
          }

          if (v167 >= *(v158 + 16))
          {
            goto LABEL_49;
          }

          v169 = *(v157 + 72);
          (*(v157 + 16))(v165, v249 + v169 * v167, v150);
          v254 = v155;
          v170 = v150;
          v172 = v155[2];
          v171 = v155[3];
          if (v172 >= v171 >> 1)
          {
            sub_100049A18(v171);
            sub_1006A7AB4();
            v155 = v254;
          }

          v155[2] = v172 + 1;
          (*v247)(v155 + v251 + v172 * v169, v165, v170);
          v157 = v252;
          v173 = (v167 + 2) >= v253 || v168;
          v167 += 2;
          v150 = v170;
          v158 = v250;
          if (v173 == 1)
          {
            goto LABEL_41;
          }
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    v252 = a38;
    v253 = a39;
    v250 = a36;
    v251 = a37;
    v248 = a34;
    v249 = a35;
    v247 = a33;
    v244 = a32;
    v212 = a31;
    v210 = a30;
    v209 = a29;
    v208 = a28;
    LODWORD(v207) = a25;
    v206 = a24;
    v205 = a23;
    v204 = a22;
    v203 = a21;
    (*(v128 + 8))(v224, v134);
    (*(v239 + 8))(v225, v240);
    v225 = *(v223 + 8);
    v225(v226, v246);
    sub_1000180EC(v227, &qword_100CAB930);
    v227 = *(v222 + 8);
    v227(v228, v245);
    sub_10001C7F4();
    v228 = v174;
    sub_1006105F4(v229, v175);
    sub_1000287F4();
    v229 = v176;
    sub_1006105F4(v231, v177);
    v231 = *(v198 + 8);
    v231(v233, v238);
    v178 = *(v218 + 8);
    v179 = v195;
    v178(v234, v195);
    v180 = *(v197 + 8);
    v181 = v216;
    v180(v235, v216);
    v178(v214, v179);
    v178(v211, v179);
    v225(v243, v246);
    sub_1000180EC(v242, &qword_100CAB930);
    v227(v241, v245);
    sub_1006105F4(v221, v228);
    sub_1006105F4(v220, v229);
    v231(v219, v238);
    v178(v217, v179);
    v180(v215, v181);
    v182 = v213;
    v183 = v196;
    *(v196 + v213[25]) = v155;
    (*(v236 + 32))(&v183[v182[27]], v232, v237);
    *&v183[v182[9]] = v203;
    sub_1000179EC(&v183[v182[11]]);
    *(v184 + 16) = v206;
    *(v184 + 24) = v207;
    (*(v239 + 32))(&v183[v182[26]], v230, v240);
    sub_1000179EC(&v183[v182[28]]);
    sub_1000179EC(&v183[v182[29]]);
    v185 = &v183[v182[30]];
    v187 = v247;
    v186 = v248;
    *v185 = v244;
    *(v185 + 1) = v187;
    v188 = &v183[v182[31]];
    *v188 = v186;
    v189 = v250;
    v188[1] = v249;
    v190 = &v183[v182[32]];
    v192 = v251;
    v191 = v252;
    *v190 = v189;
    v190[1] = v192;
    v193 = &v183[v182[33]];
    *v193 = v191;
    *(v193 + 1) = v253;
    return;
  }

LABEL_50:
  __break(1u);
}

void sub_10060E78C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v125 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v128 = v51;
  __chkstk_darwin(v52);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_10000E70C();
  v113 = v54;
  ChartKind.showSecondLine.getter();
  *a9 = a1;
  *(a9 + 1) = a2;
  v55 = type metadata accessor for ChartViewModel(0);
  v56 = v55[5];
  type metadata accessor for ChartKind();
  sub_100003928();
  v124 = a3;
  v120 = v58;
  (*(v57 + 16))(&a9[v56], a3);
  v59 = v55[18];
  v60 = type metadata accessor for Date();
  sub_100003928();
  v118 = v61;
  v62 = *(v61 + 16);
  v123 = a4;
  v62(&a9[v59], a4, v60);
  *&a9[v55[6]] = a5;
  v63 = v55[7];
  type metadata accessor for DetailChartExtrema();
  sub_100003928();
  v122 = a6;
  v117 = v65;
  (*(v64 + 16))(&a9[v63], a6);
  *&a9[v55[8]] = a7;
  v66 = &a9[v55[10]];
  *v66 = a10;
  v66[1] = a11;
  sub_100008A9C();
  v121 = a8;
  sub_100610594(a8, &a9[v67], v68);
  v69 = &a9[v55[13]];
  *v69 = a13;
  v69[8] = a14 & 1;
  sub_100010588();
  sub_100610594(a15, &a9[v70], v71);
  *&a9[v55[15]] = a12;
  v72 = v55[16];
  v73 = type metadata accessor for ChartDarkeningScrim();
  sub_100003928();
  (*(v74 + 16))(&a9[v72], a16, v73);
  sub_100035AD0(a17, &a9[v55[21]], &qword_100CAB930);
  *&a9[v55[22]] = a18;
  v75 = v55[23];
  type metadata accessor for ChartPeakMarkStyle();
  sub_100003928();
  v116 = v77;
  (*(v76 + 16))(&a9[v75], a19);
  *&a9[v55[24]] = a20;
  v62(&a9[v55[19]], a21, v60);
  v119 = v60;
  v62(&a9[v55[20]], a22, v60);
  sub_10000C70C(0, &qword_100CA53F0);

  v78 = 0;
  *&a9[v55[17]] = static NSDateFormatter.prevailingPeriodSymbols.getter();
  v79 = *(a5 + 16);
  v130 = v79 - 1;
  if (v79 >= 2)
  {
    sub_10000EBFC();
    while (1)
    {
      v78 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      sub_100020938();
      if (v81 == v82)
      {
        goto LABEL_5;
      }
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_5:
  sub_1006A7AB4();
  if ((v78 & 0x8000000000000000) == 0)
  {
    v115 = v55;
    if (v78)
    {
      v83 = 0;
      v84 = v128;
      v85 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v86 = v125;
      do
      {
        if (v83 >= v130)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v87 = v83 + 2;
        if (__OFADD__(v83, 2))
        {
          v88 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v88 = v83 + 2;
        }

        if (v83 < 0)
        {
          goto LABEL_35;
        }

        if (v83 >= *(a5 + 16))
        {
          goto LABEL_36;
        }

        v89 = *(v84 + 72);
        (*(v84 + 16))(v114, a5 + v85 + v89 * v83, v125);
        v91 = _swiftEmptyArrayStorage[2];
        v90 = _swiftEmptyArrayStorage[3];
        if (v91 >= v90 >> 1)
        {
          sub_100049A18(v90);
          sub_1006A7AB4();
        }

        _swiftEmptyArrayStorage[2] = v91 + 1;
        (*(v128 + 32))(_swiftEmptyArrayStorage + v85 + v91 * v89, v114, v125);
        v83 = v88;
        --v78;
        v84 = v128;
      }

      while (v78);
      if (v88 < v130)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v86 = v125;
      v84 = v128;
      if (v79 >= 2)
      {
        v87 = 0;
        v85 = (*(v128 + 80) + 32) & ~*(v128 + 80);
LABEL_21:
        v126 = (v84 + 32);
        while (1)
        {
          v92 = __OFADD__(v87, 2);
          if ((v87 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v87 >= *(a5 + 16))
          {
            goto LABEL_39;
          }

          v93 = *(v84 + 72);
          (*(v84 + 16))(v113, a5 + v85 + v93 * v87, v86);
          v95 = _swiftEmptyArrayStorage[2];
          v94 = _swiftEmptyArrayStorage[3];
          if (v95 >= v94 >> 1)
          {
            sub_100049A18(v94);
            sub_1006A7AB4();
          }

          _swiftEmptyArrayStorage[2] = v95 + 1;
          (*v126)(_swiftEmptyArrayStorage + v85 + v95 * v93, v113, v86);
          v96 = (v87 + 2) >= v130 || v92;
          v87 += 2;
          v84 = v128;
          if (v96 == 1)
          {
            goto LABEL_33;
          }
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

LABEL_33:

    v97 = *(v118 + 8);
    v97(a22, v119);
    v97(a21, v119);
    sub_10000E73C();
    v98(a19, v116);
    sub_1000180EC(a17, &qword_100CAB930);
    sub_10000E73C();
    v99(a16, v73);
    sub_10001C7F4();
    sub_1006105F4(a15, v100);
    sub_1000287F4();
    sub_1006105F4(v121, v101);
    sub_10000E73C();
    v102(v122, v117);
    v97(v123, v119);
    sub_10000E73C();
    v103(v124, v120);
    *&a9[v115[25]] = _swiftEmptyArrayStorage;
    v104 = v115[27];
    type metadata accessor for ChartPastDataTreatment();
    sub_1000037E8();
    (*(v105 + 32))(&a9[v104], a29);
    *&a9[v115[9]] = a23;
    v106 = &a9[v115[11]];
    *v106 = a24;
    *(v106 + 1) = a25;
    *(v106 + 2) = a26;
    v106[24] = a27;
    v107 = v115[26];
    type metadata accessor for ChartViewModelInterpolationMode();
    sub_1000037E8();
    (*(v108 + 32))(&a9[v107], a28);
    sub_1000179EC(&a9[v115[28]]);
    sub_1000179EC(&a9[v115[29]]);
    v109 = &a9[v115[30]];
    *v109 = a34;
    *(v109 + 1) = a35;
    v110 = &a9[v115[31]];
    *v110 = a36;
    *(v110 + 1) = a37;
    v111 = &a9[v115[32]];
    *v111 = a38;
    *(v111 + 1) = a39;
    v112 = &a9[v115[33]];
    *v112 = a40;
    *(v112 + 1) = a41;
    return;
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_10060F100@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of SessionEventsAndDataCoordinator.lastPushedTemperatureUnit();
  *a1 = result;
  return result;
}

uint64_t sub_10060F134@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1008B9FF0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10060F16C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100549A38(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10060F1A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1005C96DC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10060F204(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for Date();
  sub_1000037C4();
  v58 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v57 = v7 - v6;
  v8 = sub_10022C350(qword_100CA4F80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v57 - v10;
  v12 = sub_10022C350(&unk_100CB2CF0);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_100003848();
  v59 = v14;
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  __chkstk_darwin(v18);
  v20 = &v57 - v19;
  v21 = type metadata accessor for ChartViewModel.Background(0);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  v26 = sub_10022C350(&qword_100CCC070);
  sub_100003810(v26);
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v57 - v28;
  v31 = &v57 + *(v30 + 56) - v28;
  sub_100610594(a1, &v57 - v28, type metadata accessor for ChartViewModel.Background);
  sub_100610594(a2, v31, type metadata accessor for ChartViewModel.Background);
  v32 = sub_10022C350(&qword_100CAC418);
  sub_1000038B4(v29, 1, v32);
  if (v37)
  {
    sub_1000038B4(v31, 1, v32);
    if (v37)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_100010588();
    sub_100610594(v29, v25, v35);
    v36 = *(v32 + 48);
    sub_1000038B4(v31, 1, v32);
    if (!v37)
    {
      sub_100237E84(v25 + v36, v20);
      sub_100237E84(&v31[v36], v17);
      v38 = static Color.== infix(_:_:)();
      if (v38)
      {
        v39 = *(v8 + 48);
        sub_100035AD0(v20, v11, &unk_100CB2CF0);
        sub_100035AD0(v17, &v11[v39], &unk_100CB2CF0);
        v40 = v60;
        sub_1000038B4(v11, 1, v60);
        if (v37)
        {

          v41 = sub_10003C310();
          sub_1000180EC(v41, v42);
          sub_1000180EC(v20, &unk_100CB2CF0);
          sub_1000038B4(&v11[v39], 1, v40);
          if (v37)
          {
            sub_1000180EC(v11, &unk_100CB2CF0);
            goto LABEL_5;
          }
        }

        else
        {
          v47 = v59;
          sub_100035AD0(v11, v59, &unk_100CB2CF0);
          sub_1000038B4(&v11[v39], 1, v40);
          if (!v48)
          {
            v52 = v58;
            v53 = &v11[v39];
            v54 = v57;
            (*(v58 + 32))(v57, v53, v40);
            sub_10061064C(&qword_100CA39D0, &type metadata accessor for Date);
            v55 = dispatch thunk of static Equatable.== infix(_:_:)();

            v56 = *(v52 + 8);
            v56(v54, v40);
            sub_1000180EC(v17, &unk_100CB2CF0);
            sub_1000180EC(v20, &unk_100CB2CF0);
            v56(v59, v40);
            sub_1000180EC(v11, &unk_100CB2CF0);
            if ((v55 & 1) == 0)
            {
              goto LABEL_22;
            }

LABEL_5:
            sub_10001C7F4();
            sub_1006105F4(v29, v33);
            return 1;
          }

          v49 = sub_10003C310();
          sub_1000180EC(v49, v50);
          sub_1000180EC(v20, &unk_100CB2CF0);
          (*(v58 + 8))(v47, v40);
        }

        v46 = qword_100CA4F80;
        v45 = v11;
      }

      else
      {

        v43 = sub_10003C310();
        sub_1000180EC(v43, v44);
        v45 = v20;
        v46 = &unk_100CB2CF0;
      }

      sub_1000180EC(v45, v46);
LABEL_22:
      sub_10001C7F4();
      sub_1006105F4(v29, v51);
      return 0;
    }

    sub_1000180EC(v25 + v36, &unk_100CB2CF0);
  }

  sub_1000180EC(v29, &qword_100CCC070);
  return 0;
}

uint64_t sub_10060F7C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100309F2C();
  *a1 = result;
  return result;
}

unint64_t sub_10060F7F0()
{
  result = qword_100CCC028;
  if (!qword_100CCC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC028);
  }

  return result;
}

unint64_t sub_10060F848()
{
  result = qword_100CCC030;
  if (!qword_100CCC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC030);
  }

  return result;
}

unint64_t sub_10060F8A0()
{
  result = qword_100CCC038;
  if (!qword_100CCC038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC038);
  }

  return result;
}

unint64_t sub_10060F8F8()
{
  result = qword_100CCC040;
  if (!qword_100CCC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC040);
  }

  return result;
}

uint64_t sub_10060F94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CAB930);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  v15 = sub_10022C350(&qword_100CCC048);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v63 - v17;
  v19 = type metadata accessor for ChartViewModel(0);
  sub_10001136C(v19[5]);
  if ((static ChartKind.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100037BE0(v19[6]);
  sub_1009E9B70();
  if ((v20 & 1) == 0)
  {
    goto LABEL_58;
  }

  v64 = v6;
  v21 = v19[8];
  v22 = *(a2 + v21);
  if (*(a1 + v21))
  {
    if (!v22)
    {
      goto LABEL_58;
    }

    sub_1009E9B70();
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else if (v22)
  {
    goto LABEL_58;
  }

  v25 = v19[10];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v26 == *v28 && v27 == v28[1];
  if (!v29)
  {
    goto LABEL_58;
  }

  v30 = v19[12];
  if ((sub_1005C0D58(a1 + v30, a2 + v30) & 1) == 0 || (sub_1005C0D58(a1 + v30, a2 + v30) & 1) == 0)
  {
    goto LABEL_58;
  }

  v31 = v19[21];
  v32 = *(v15 + 48);
  sub_100035AD0(a1 + v31, v18, &qword_100CAB930);
  sub_100035AD0(a2 + v31, &v18[v32], &qword_100CAB930);
  sub_1000038B4(v18, 1, v4);
  if (!v29)
  {
    sub_100035AD0(v18, v14, &qword_100CAB930);
    sub_1000038B4(&v18[v32], 1, v4);
    if (!v33)
    {
      v36 = v64;
      (*(v64 + 32))(v10, &v18[v32], v4);
      sub_10061064C(&qword_100CCC050, &type metadata accessor for DetailChartDataElement);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v36 + 8);
      v38(v10, v4);
      v39 = sub_10003C310();
      (v38)(v39);
      sub_1000180EC(v18, &qword_100CAB930);
      if (v37)
      {
        goto LABEL_25;
      }

LABEL_58:
      v60 = 0;
      return v60 & 1;
    }

    v34 = sub_10003C310();
    v35(v34);
LABEL_23:
    sub_1000180EC(v18, &qword_100CCC048);
    goto LABEL_58;
  }

  sub_1000038B4(&v18[v32], 1, v4);
  if (!v29)
  {
    goto LABEL_23;
  }

  sub_1000180EC(v18, &qword_100CAB930);
LABEL_25:
  sub_100037BE0(v19[22]);
  sub_1009E9B70();
  if ((v40 & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_10001136C(v19[19]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_10001136C(v19[20]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100037BE0(v19[17]);
  sub_1001CAA30();
  if ((v41 & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100037BE0(v19[25]);
  sub_1009E9B70();
  if ((v42 & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_10001136C(v19[26]);
  if ((static ChartViewModelInterpolationMode.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100004680(v19[28]);
  v45 = v29 && v43 == v44;
  if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100004680(v19[29]);
  v48 = v29 && v46 == v47;
  if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100004680(v19[30]);
  v51 = v29 && v49 == v50;
  if (!v51 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100004680(v19[31]);
  v54 = v29 && v52 == v53;
  if (!v54 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  v55 = v19[32];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (a2 + v55);
  v59 = v58[1];
  v60 = (v57 | v59) == 0;
  if (v57 && v59)
  {
    if (*v56 == *v58 && v57 == v59)
    {
      v60 = 1;
    }

    else
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v60 & 1;
}

uint64_t sub_10060FE04()
{
  v1 = v0;
  v2 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for ChartViewModel(0);
  v10 = *(v0 + v9[6]);
  v11 = *(v10 + 16);
  v63 = v2;
  v52 = v4;
  v57 = v10;
  v58 = v9;
  if (v11)
  {

    sub_10000369C(0, v11, 0);
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v14 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v59 = *(v12 + 56);
    v62 = v13;
    v15 = (v12 - 8);
    do
    {
      v62(v8, v14, v2);
      v16 = DetailChartDataElement.accessibilityDateString.getter();
      v18 = v17;
      (*v15)(v8, v2);
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_10000369C((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      v14 += v59;
      --v11;
      v2 = v63;
    }

    while (v11);
    v9 = v58;
    v1 = v0;
    v4 = v52;
  }

  else
  {
  }

  v22 = objc_allocWithZone(AXCategoricalDataAxisDescriptor);
  v23 = sub_100610470();
  sub_10000C70C(0, &qword_100CCC058);
  v24 = (v1 + v9[31]);
  v25 = *v24;
  v26 = v24[1];
  swift_bridgeObjectRetain_n();

  v60 = v25;
  v55 = v26;
  v27 = AXNumericDataAxisDescriptor.init(title:range:gridlinePositions:valueDescriptionProvider:)();
  v53 = ChartKind.isContinuous.getter();
  v28 = *(v57 + 16);
  if (v28)
  {
    v50 = v23;
    specialized ContiguousArray.reserveCapacity(_:)();
    v29 = sub_10000C70C(0, &qword_100CCC060);
    sub_10004E7B8(v29);
    v30 = (v4 - 8);
    do
    {
      v62(v8, v23, v63);
      DetailChartDataElement.accessibilityDateString.getter();
      DetailChartDataElement.value.getter();
      v31._countAndFlagsBits = sub_10000CD18();
      AXDataPoint.init(x:y:additionalValues:label:)(v31, v65, v32, _swiftEmptyArrayStorage);
      (*v30)(v8, v63);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v23 += v1;
      --v28;
    }

    while (v28);
    v9 = v58;
    v1 = v0;
    v23 = v50;
  }

  v33 = &_s10Foundation16AttributedStringVAA0bC8ProtocolAAMc_ptr;
  v34 = objc_allocWithZone(AXDataSeriesDescriptor);
  v35 = sub_1006104F0(v60, v55, v53 & 1);
  sub_10022C350(&unk_100CE49D0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100A3BD20;
  *(v36 + 32) = v35;
  v64 = v36;
  v61 = v35;
  if (ChartKind.showSecondLine.getter())
  {
    v37 = (v1 + v9[32]);
    if (v37[1])
    {
      v54 = *v37;
      v56 = v37[1];

      v38 = ChartKind.isContinuous.getter();
      v39 = v38;
      v40 = *(v57 + 16);
      if (v40)
      {
        v49 = v38;
        v51 = v23;
        specialized ContiguousArray.reserveCapacity(_:)();
        v41 = sub_10000C70C(0, &qword_100CCC060);
        sub_10004E7B8(v41);
        do
        {
          v62(v8, v23, v63);
          DetailChartDataElement.accessibilityDateString.getter();
          DetailChartDataElement.secondValue.getter();
          v42._countAndFlagsBits = sub_10000CD18();
          AXDataPoint.init(x:y:additionalValues:label:)(v42, v66, v43, _swiftEmptyArrayStorage);
          (*(v52 - 8))(v8, v63);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v23 += v1;
          --v40;
        }

        while (v40);
        v23 = v51;
        v33 = &_s10Foundation16AttributedStringVAA0bC8ProtocolAAMc_ptr;
        v39 = v49;
      }

      v44 = objc_allocWithZone(v33[118]);
      sub_1006104F0(v54, v56, v39 & 1);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_10000C70C(0, &qword_100CCC068);

  v45 = v23;
  v46 = v27;
  v47 = AXChartDescriptor.init(title:summary:xAxis:yAxis:additionalAxes:series:)();

  return v47;
}

id sub_100610470()
{
  v1 = String._bridgeToObjectiveC()();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v0 initWithTitle:v1 categoryOrder:isa];

  return v3;
}

id sub_1006104F0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  sub_10000C70C(0, &qword_100CCC060);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v3 initWithName:v5 isContinuous:a3 & 1 dataPoints:isa];

  return v7;
}

uint64_t sub_100610594(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1006105F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10061064C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100610770()
{
  sub_10022C350(&qword_100CAC610);
  sub_100003828();
  __chkstk_darwin(v0);
  v2 = &v6 - v1;
  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v3 = type metadata accessor for SymbolRenderingMode();
  sub_10001B350(v2, 0, 1, v3);
  v4 = Image.symbolRenderingMode(_:)();

  sub_10030FE60(v2);
  return v4;
}

uint64_t sub_100610848()
{
  sub_10022C350(&qword_100CA5570);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_100610CFC()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_100007074(v0, qword_100D90550);
  sub_10000703C(v0, qword_100D90550);
  sub_10022C350(&qword_100CA55A8);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100610E4C()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA2350 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D90550);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_100611078@<X0>(uint64_t *a1@<X8>)
{
  sub_10023594C();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1006110BC()
{
  result = qword_100CCC078;
  if (!qword_100CCC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC078);
  }

  return result;
}

uint64_t sub_100611110()
{
  swift_getKeyPath();
  sub_1000105A0();
  sub_100611CC8(v1, v2);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_1006111A0(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100611248();
  }

  return result;
}

void sub_100611300()
{
  type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_10001C80C();
  v2 = sub_100040690();
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = sub_100008AB4();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = sub_100006354();
  v6(v5);
  if (v2)
  {
    sub_100198888(1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1006113E8()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10001C80C();
  v7 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  sub_1000037C4();
  __chkstk_darwin(v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v28 - v19;
  if (!*(v2 + 16))
  {
    v34 = v9;
    v35 = v7;
    v21 = *(v2 + 40);
    v29 = *(v2 + 32);
    *(v2 + 16) = 1;
    v22 = v18;
    sub_100040690();
    v33 = v5;
    v30 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v23 = *(v22 + 8);
    v31 = v22 + 8;
    v32 = v23;
    v23(v16, v13);
    v24 = swift_allocObject();
    v25 = v29;
    v24[2] = v2;
    v24[3] = v25;
    v24[4] = v21;
    aBlock[4] = sub_100611CBC;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000742F0;
    aBlock[3] = &unk_100C62D80;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100611CC8(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680);
    sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v30;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v26);

    (*(v33 + 8))(v1, v3);
    (*(v34 + 8))(v12, v35);
    v32(v20, v13);
  }
}

uint64_t sub_1006117B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;

  sub_10095D5E4();
}

uint64_t sub_100611848()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() setFrameStallSkipRequest:1];
  v5[1] = 0;

  Transaction.animation.setter();
  static os_signpost_type_t.event.getter();
  if (qword_100CA2710 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v1 + 8))(v3, v0);
  sub_1001CAEBC();
  withTransaction<A>(_:_:)();
}

_BYTE *storeEnumTagSinglePayload for WireframeContentManager.ContentLoadState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100611AE0()
{
  result = qword_100CCC210;
  if (!qword_100CCC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC210);
  }

  return result;
}

uint64_t sub_100611B34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CCC218);
  type metadata accessor for WireframeContentManager();
  sub_100006F64(&qword_100CCC220, &qword_100CCC218);
  sub_1000105A0();
  sub_100611CC8(v4, v5);
  View.environment<A>(_:)();
  type metadata accessor for VisibilityState();
  swift_allocObject();

  sub_1004459FC();
  State.init(wrappedValue:)();
  result = sub_10022C350(&qword_100CCC228);
  v7 = (a2 + *(result + 36));
  *v7 = v8;
  v7[1] = v9;
  v7[2] = sub_100198620;
  v7[3] = a1;
  return result;
}

uint64_t sub_100611CC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100611D4C()
{
  result = qword_100CCC230;
  if (!qword_100CCC230)
  {
    sub_10022E824(&qword_100CCC228);
    sub_10022E824(&qword_100CCC218);
    type metadata accessor for WireframeContentManager();
    sub_100006F64(&qword_100CCC220, &qword_100CCC218);
    sub_100611CC8(&qword_100CC1948, type metadata accessor for WireframeContentManager);
    swift_getOpaqueTypeConformance2();
    sub_100611E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC230);
  }

  return result;
}

unint64_t sub_100611E98()
{
  result = qword_100CCC238;
  if (!qword_100CCC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC238);
  }

  return result;
}

uint64_t sub_100611EEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC2F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v29)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4C50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4B60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v28)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4BD8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v20 = v29;
  v21 = v30;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4460);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v8 = v25;
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v5;
  v10 = v26;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4468);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v24)
  {
    v11 = type metadata accessor for ListModule();
    ObjectType = swift_getObjectType();
    v13 = sub_10002D7F8(v27, v28);
    v14 = __chkstk_darwin(v13);
    v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16, v14);
    v18 = sub_1008740C0(v20, v21, v9, v6, v16, v7, v8, &v23, v11, ObjectType, &type metadata for ContentStatusBannerViewFactory, v10, &off_100C78818);
    result = sub_100006F14(v27);
    v19 = v22;
    v22[3] = v11;
    v19[4] = &off_100C719F0;
    *v19 = v18;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100612274(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = Tracker.chain(name:identifier:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006122F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (result)
  {
    a2[3] = &type metadata for ListTracker;
    a2[4] = &off_100C539E0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10061237C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v25;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC2F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA720);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB2FD8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v7 = result;
    v8 = sub_10002D7F8(v22, v23);
    __chkstk_darwin(v8);
    v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v11 + 16))(v10);
    v12 = sub_10002D7F8(v18, v19);
    __chkstk_darwin(v12);
    v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v15 + 16))(v14);
    v16 = sub_1006132A0(v5, v6, *v10, v20, *v14, v7);
    sub_100006F14(v18);
    result = sub_100006F14(v22);
    *a2 = v16;
    a2[1] = &off_100C645C0;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10061269C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ListInputFactory();
  result = swift_allocObject();
  *(result + 16) = 3;
  a1[3] = v2;
  a1[4] = &off_100C59158;
  *a1 = result;
  return result;
}

uint64_t sub_1006126EC(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v22;
  v4 = v23;
  v6 = v21;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC300);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v18, v19);
  v16 = type metadata accessor for ListInputFactory();
  v17 = &off_100C59158;
  v15[0] = v7;
  sub_100035B30(v15, v14);
  v8 = swift_allocObject();
  sub_100013188(v14, v8 + 16);

  sub_100006F14(v15);
  sub_100006F14(v18);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100613290;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5638);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v10 = *sub_1000161C0(v18, v19);
    v16 = type metadata accessor for ListViewModelFactory();
    v17 = &off_100C5CAD0;
    v15[0] = v10;
    sub_100035B30(v15, v14);
    v11 = swift_allocObject();
    sub_100013188(v14, v11 + 16);

    sub_100006F14(v15);
    sub_100006F14(v18);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10009F868;
    *(v12 + 24) = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100613298;
    *(v13 + 24) = v11;
    sub_10022C350(&qword_100CA4C50);
    swift_allocObject();
    return sub_10024B65C(v3, v6, v5, v4, sub_1005DCAD0, 0, sub_10009F81C, v12, sub_1000E87D0, v13);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100612A84(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v24;
  v4 = v25;
  v6 = v23;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95D8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v20, v21);
  active = type metadata accessor for ActiveLocationInputFactory();
  v19 = &off_100C4F948;
  v17[0] = v7;
  sub_100035B30(v17, v16);
  v8 = swift_allocObject();
  sub_100013188(v16, v8 + 16);

  sub_100006F14(v17);
  sub_100006F14(v20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1005DE3B0;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000E7EFC;
  *(v10 + 24) = v9;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v11 = *sub_1000161C0(v20, v21);
    active = type metadata accessor for ActiveLocationModelFactory();
    v19 = &off_100C4F938;
    v17[0] = v11;
    sub_100035B30(v17, v16);
    v12 = swift_allocObject();
    sub_100013188(v16, v12 + 16);

    sub_100006F14(v17);
    sub_100006F14(v20);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1005DE3B8;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1000E7F08;
    *(v14 + 24) = v10;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000E8AE8;
    *(v15 + 24) = v13;
    sub_10022C350(&qword_100CA4B60);
    swift_allocObject();
    return sub_10009CDA0(v3, v6, v5, v4, sub_1000D5B6C, 0, sub_10009F81C, v14, sub_1000E87D0, v15);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100612E18@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_100612E68(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v21;
  v4 = v22;
  v6 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE58);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v17, v18);
  v15 = type metadata accessor for WeatherConditionBackgroundModelInputFactory();
  v16 = &off_100C74B10;
  *&v14 = v7;
  sub_100035B30(&v14, v13);
  v8 = swift_allocObject();
  sub_100013188(v13, v8 + 16);

  sub_100006F14(&v14);
  sub_100006F14(v17);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100110E20;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA738);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    sub_100035B30(v17, &v14);
    v10 = swift_allocObject();
    sub_100013188(&v14, v10 + 16);
    sub_100006F14(v17);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1001140B4;
    *(v11 + 24) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1001141C0;
    *(v12 + 24) = v11;
    sub_10022C350(&qword_100CA4BD8);
    swift_allocObject();
    return sub_1000EEA3C(v3, v6, v5, v4, sub_1001715F4, 0, sub_100613288, v9, sub_1000E87D0, v12);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100613134@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA740);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v12)
  {
    v4 = sub_10002D7F8(v11, v12);
    v5 = __chkstk_darwin(v4);
    v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v8 + 16))(v7, v5);
    v9 = sub_10009B7DC(0, *v7);
    sub_100006F14(v11);
    *(v9 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_forceTileGradientPresentationContext) = 1;
    result = type metadata accessor for WeatherConditionBackgroundModelInputFactory();
    a2[3] = result;
    a2[4] = &off_100C74B10;
    *a2 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006132A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32[3] = &type metadata for ListTracker;
  v32[4] = &off_100C539E0;
  v32[0] = a3;
  v11 = type metadata accessor for LocalSearchRequestManager();
  v31[3] = v11;
  v31[4] = &off_100C6CB98;
  v31[0] = a5;
  type metadata accessor for ListInteractor();
  v12 = swift_allocObject();
  v13 = sub_10002D7F8(v32, &type metadata for ListTracker);
  __chkstk_darwin(v13);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v15);
  v17 = sub_10002D7F8(v31, v11);
  __chkstk_darwin(v17);
  v19 = &v28[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v20 + 16))(v19);
  v21 = *v15;
  v22 = *v19;
  v30[3] = &type metadata for ListTracker;
  v30[4] = &off_100C539E0;
  v29[4] = &off_100C6CB98;
  v30[0] = v21;
  v29[3] = v11;
  v29[0] = v22;
  v12[2] = a1;
  v12[3] = a2;
  sub_100035B30(v30, (v12 + 4));
  sub_100035B30(a4, (v12 + 9));
  sub_100035B30(v29, (v12 + 14));
  v12[19] = a6;
  swift_beginAccess();
  v23 = v12[12];
  v24 = v12[13];
  sub_10002D7F8((v12 + 9), v23);
  v25 = *(v24 + 16);

  v25(v26, &off_100C64598, v23, v24);
  swift_endAccess();

  sub_100006F14(a4);
  sub_100006F14(v29);
  sub_100006F14(v30);
  sub_100006F14(v31);
  sub_100006F14(v32);
  return v12;
}

uint64_t sub_100613620()
{
  sub_10022C350(&qword_100CAC610);
  sub_100003828();
  __chkstk_darwin(v0);
  v2 = &v6 - v1;
  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v3 = type metadata accessor for SymbolRenderingMode();
  sub_10001B350(v2, 0, 1, v3);
  v4 = Image.symbolRenderingMode(_:)();

  sub_10030FE60(v2);
  return v4;
}

uint64_t sub_1006136F8()
{
  sub_10022C350(&qword_100CA5570);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_100613BAC()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_100007074(v0, qword_100D90568);
  sub_10000703C(v0, qword_100D90568);
  sub_10022C350(&qword_100CA55A8);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100613CFC()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA2358 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D90568);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_100613F28@<X0>(uint64_t *a1@<X8>)
{
  sub_1002359A0();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100613F6C()
{
  result = qword_100CCC320;
  if (!qword_100CCC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC320);
  }

  return result;
}

uint64_t sub_100613FC0()
{
  v1 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  if (*(v0 + 32))
  {
    v8 = *(v0 + 32);
  }

  else
  {
    (*(v3 + 104))(v7, enum case for Font.TextStyle.largeTitle(_:), v1);
    static Font.Weight.medium.getter();
    v8 = static Font.system(_:weight:)();
    (*(v3 + 8))(v7, v1);
    *(v0 + 32) = v8;
  }

  return v8;
}

uint64_t sub_1006140D8()
{
  v1 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  if (*(v0 + 48))
  {
    v15 = *(v0 + 48);
  }

  else
  {
    (*(v10 + 104))(v14, enum case for Font.TextStyle.largeTitle(_:), v8);
    static Font.Weight.medium.getter();
    static Font.system(_:weight:)();
    (*(v10 + 8))(v14, v8);
    (*(v3 + 104))(v7, enum case for Font.Leading.tight(_:), v1);
    v15 = Font.leading(_:)();

    (*(v3 + 8))(v7, v1);
    *(v0 + 48) = v15;
  }

  return v15;
}

double sub_1006142B4()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  *(v0 + 64) = 0x4010000000000000;
  *(v0 + 72) = 0;
  return 4.0;
}

uint64_t sub_1006142D8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_100613FC0();
    *(v0 + 80) = v1;
  }

  return v1;
}

void sub_1006143E8()
{
  type metadata accessor for UVIndexChartHeaderStyle();
  v0 = swift_allocObject();
  sub_1004669B4();
  qword_100D90580 = v0;
}

void LocationSearchEntity.init(id:name:placemark:isLocal:)()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_10022C350(&qword_100CA2DA8);
  sub_100004698();
  v12 = EntityProperty<>.init(title:)();
  sub_10022C350(&qword_100CA2DB0);

  sub_10001C828();
  sub_10002880C();
  v13 = EntityProperty<>.init(title:)();

  EntityProperty.wrappedValue.setter();
  v14 = v3;
  EntityProperty.wrappedValue.setter();

  *v9 = v7;
  *(v9 + 8) = v5;
  *(v9 + 16) = v12;
  *(v9 + 24) = v13;
  *(v9 + 32) = v1;
  sub_10000536C();
}

void static LocationSearchEntity.makeCurrentLocation()()
{
  sub_10000C778();
  v1 = v0;
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v4 = [objc_opt_self() mainBundle];
  v16._object = 0x8000000100AD7FB0;
  v5._countAndFlagsBits = 0x7461636F4C20794DLL;
  v5._object = 0xEB000000006E6F69;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000046;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v16);

  sub_10000C70C(0, &qword_100CADA18);
  v8 = [objc_allocWithZone(CLLocation) initWithLatitude:0.0 longitude:0.0];

  v9 = sub_1001476E4(v8, v7._countAndFlagsBits, v7._object, 0);
  v10 = static Location.currentLocationID.getter();
  v12 = v11;
  sub_10022C350(&qword_100CA2DA8);
  sub_100004698();
  v13 = EntityProperty<>.init(title:)();
  sub_10022C350(&qword_100CA2DB0);

  sub_10001C828();
  sub_10002880C();
  v14 = EntityProperty<>.init(title:)();

  EntityProperty.wrappedValue.setter();
  v15 = v9;
  EntityProperty.wrappedValue.setter();

  *v1 = v10;
  *(v1 + 8) = v12;
  *(v1 + 16) = v13;
  *(v1 + 24) = v14;
  *(v1 + 32) = 1;
  sub_10000536C();
}

void static LocationSearchEntity.makeFromLocationEntity(_:)()
{
  sub_10000C778();
  v1 = v0;
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  LocationEntity.id.getter();
  sub_10002D5A4();
  sub_100008AC8();
  v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v6 = v5;

  v7._countAndFlagsBits = 58;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  LocationEntity.name.getter();
  sub_100008AC8();
  v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  LocationEntity.name.getter();
  v12 = LocationEntity.placemark.getter();
  sub_10022C350(&qword_100CA2DA8);
  sub_100004698();
  v13 = EntityProperty<>.init(title:)();
  sub_10022C350(&qword_100CA2DB0);

  sub_10001C828();
  sub_10002880C();
  v14 = EntityProperty<>.init(title:)();

  EntityProperty.wrappedValue.setter();
  v15 = v12;
  EntityProperty.wrappedValue.setter();

  *v1 = v4;
  *(v1 + 8) = v6;
  *(v1 + 16) = v13;
  *(v1 + 24) = v14;
  *(v1 + 32) = 0;
  sub_10000536C();
}

uint64_t LocationSearchEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*LocationSearchEntity.name.modify(void *a1))()
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = EntityProperty.wrappedValue.modify();
  return sub_100614B1C;
}

void LocationSearchEntity.placemark.setter(void *a1)
{
  v1 = a1;
  EntityProperty.wrappedValue.setter();
}

uint64_t (*LocationSearchEntity.placemark.modify(void *a1))()
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = EntityProperty.wrappedValue.modify();
  return sub_100615B0C;
}

void sub_100614C18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100614C88()
{
  result = LocationSearchEntityQuery.init()();
  static LocationSearchEntity.defaultQuery = result;
  unk_100D90590 = v1;
  qword_100D90598 = v2;
  return result;
}

uint64_t *LocationSearchEntity.defaultQuery.unsafeMutableAddressor()
{
  if (qword_100CA2368 != -1)
  {
    sub_100014B08();
  }

  return &static LocationSearchEntity.defaultQuery;
}

uint64_t static LocationSearchEntity.defaultQuery.getter()
{
  if (qword_100CA2368 != -1)
  {
    sub_100014B08();
  }

  v0 = static LocationSearchEntity.defaultQuery;

  return v0;
}

uint64_t LocationSearchEntity.displayRepresentation.getter()
{
  v1 = sub_10022C350(&qword_100CBCC00);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10022C350(&qword_100CA2D70);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100022E2C();
  type metadata accessor for LocalizedStringResource();
  sub_100016C5C();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  LocalizedStringResource.init(stringInterpolation:)();
  sub_100003934();
  sub_10001B350(v10, v11, v12, v0);
  type metadata accessor for DisplayRepresentation.Image();
  sub_100003934();
  sub_10001B350(v13, v14, v15, v16);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

void static LocationSearchEntity.typeDisplayRepresentation.getter()
{
  sub_10000C778();
  v2 = sub_10022C350(&qword_100CA2D70);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_100022E2C();
  v8 = type metadata accessor for Locale();
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000037D8();
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000037D8();
  type metadata accessor for LocalizedStringResource();
  sub_100016C5C();
  __chkstk_darwin(v12);
  sub_1000037D8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v0, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_100003934();
  sub_10001B350(v13, v14, v15, v1);
  TypeDisplayRepresentation.init(name:numericFormat:)();
  sub_10000536C();
}

uint64_t LocationSearchEntity.urlRepresentationParameter.getter()
{
  v1 = 0x3D6C61636F4C7369;
  if ((*(v0 + 32) & 1) == 0)
  {
    EntityProperty.wrappedValue.getter();
    v2 = [v15 location];

    if (v2)
    {
      [v2 coordinate];
      v3 = Double.description.getter();
      v5 = v4;
      [v2 coordinate];
      v6 = Double.description.getter();
      v8 = v7;
      _StringGuts.grow(_:)(21);

      v9._countAndFlagsBits = v3;
      v9._object = v5;
      String.append(_:)(v9);

      v10._countAndFlagsBits = 0x3D676E6C26;
      v10._object = 0xE500000000000000;
      String.append(_:)(v10);
      v11._countAndFlagsBits = v6;
      v11._object = v8;
      String.append(_:)(v11);

      v12._countAndFlagsBits = 0x3D7974696326;
      v12._object = 0xE600000000000000;
      String.append(_:)(v12);
      EntityProperty.wrappedValue.getter();
      String.append(_:)(v14);

      return 1031037292;
    }
  }

  return v1;
}

uint64_t static LocationSearchEntity.makeFromIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v60 = a3;
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CAD9F8);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v14 = sub_10022C350(&qword_100CADA00);
  sub_1000037C4();
  v59 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  v19 = sub_10022C350(&qword_100CADA08);
  sub_1000037C4();
  v21 = v20;
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v50 - v23;
  sub_10022C350(&qword_100CADA10);
  Regex.init(_regexString:version:)();
  Regex.wholeMatch(in:)();
  v55 = v9;
  v56 = v24;
  v57 = v21;
  v58 = v19;
  v54 = a1;
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    (*(v57 + 8))(v56, v58);
    result = sub_100332D80(v13);
LABEL_3:
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_4;
  }

  (*(v59 + 32))(v18, v13, v14);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v51 = Double.init(_:)();
  v53 = v31;
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v50 = Double.init(_:)();
  v33 = v32;
  swift_getKeyPath();
  v52 = v14;
  Regex.Match.subscript.getter();

  v34 = v58;
  if (v63)
  {
    v35 = static String._fromSubstring(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v27 = a2;
  v38 = v56;
  v39 = v57;
  if (v53 & 1) != 0 || (v33)
  {

    v48 = sub_100049A28();
    v49(v48);
    result = (*(v39 + 8))(v38, v34);
    goto LABEL_3;
  }

  v41 = *&v50;
  v40 = *&v51;
  sub_10000C70C(0, &qword_100CADA18);
  v42 = [objc_allocWithZone(CLLocation) initWithLatitude:v40 longitude:v41];

  v43 = sub_1001476E4(v42, v35, v37, 0);
  if (!v37)
  {
    v35 = 11565;
  }

  v44 = 0xE200000000000000;
  if (v37)
  {
    v44 = v37;
  }

  v55 = v44;
  sub_10022C350(&qword_100CA2DA8);
  sub_100004698();
  v28 = EntityProperty<>.init(title:)();
  sub_10022C350(&qword_100CA2DB0);

  sub_10001C828();
  sub_10002880C();
  v29 = EntityProperty<>.init(title:)();
  v61 = v35;
  v62 = v55;

  EntityProperty.wrappedValue.setter();
  v61 = v43;
  v45 = v43;
  EntityProperty.wrappedValue.setter();

  v46 = sub_100049A28();
  v47(v46);
  (*(v39 + 8))(v38, v58);

  v26 = v54;
LABEL_4:
  v30 = v60;
  *v60 = v26;
  v30[1] = v27;
  v30[2] = v28;
  v30[3] = v29;
  *(v30 + 32) = 0;
  return result;
}

uint64_t sub_100615818@<X0>(void *a1@<X8>)
{
  LocationSearchEntity.defaultQuery.unsafeMutableAddressor();
  v2 = unk_100D90590;
  v3 = qword_100D90598;
  *a1 = static LocationSearchEntity.defaultQuery;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_10061587C()
{
  v1 = LocationSearchEntity.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1006158DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000926F8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1006159A4(uint64_t a1)
{
  v2 = sub_10015E074();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1006159F0(uint64_t a1)
{
  v2 = sub_10015E288();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100615A3C()
{
  result = qword_100CCC440;
  if (!qword_100CCC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC440);
  }

  return result;
}

unint64_t sub_100615A94()
{
  result = qword_100CCC468;
  if (!qword_100CCC468)
  {
    sub_10022E824(&qword_100CCC470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC468);
  }

  return result;
}

uint64_t sub_100615B10(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return 1;
    }

    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }

  if (a4)
  {
    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }

  return a1 == a3;
}

uint64_t static ExternalSearchQuery.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }

  if (a4)
  {
    return static VerticalSizingBehaviorKey.defaultValue.getter();
  }

  return 1;
}

uint64_t sub_100615B60(uint64_t a1, __int16 a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15)
{
  if ((a2 & 0x100) != 0)
  {
    a1 = *(a15 + 16);
    v25 = *(a15 + 24);
  }

  else
  {
    v25 = a2;
  }

  if (a3 == 2)
  {
    a3 = *(a15 + 25);
  }

  if (a4 == 2)
  {
    a4 = *(a15 + 26);
  }

  if (a5 == 3)
  {
    a5 = *(a15 + 27);
  }

  v28 = a4;
  v29 = a5;
  v26 = a3;
  if (a7)
  {
    v24 = a7;
  }

  else
  {
    a6 = *(a15 + 32);
    v24 = *(a15 + 40);
  }

  v16 = a10;
  v31 = a8;
  v17 = a9;
  if (a9 == 1)
  {
    a8 = *(a15 + 48);
    v17 = *(a15 + 56);
  }

  if (a10 == 2)
  {
    v16 = *(a15 + 64);
  }

  v19 = a13;
  v20 = a12;
  if (!a12)
  {
    a11 = *(a15 + 72);
    v20 = *(a15 + 80);
  }

  v21 = a14;
  if (a13 == 2)
  {
    v19 = *(a15 + 88);
  }

  if (a14 == 2)
  {
    v21 = *(a15 + 89);
  }

  type metadata accessor for ListViewState._Storage();
  swift_allocObject();
  v22 = sub_100042DA8(a1, v25 & 1, v26 & 1, v28 & 1, v29, a6, v24, a8, v17, v16 & 1, a11, v20, v19 & 1, v21 & 1);

  sub_100088528(v31, a9);

  return v22;
}

uint64_t sub_100615D24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6974696465 && a2 == 0xE700000000000000;
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

uint64_t sub_100615DEC(char a1)
{
  if (a1)
  {
    return 1970169197;
  }

  else
  {
    return 0x676E6974696465;
  }
}

uint64_t sub_100615E1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000)
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

void sub_100615EAC()
{
  sub_10000E8AC();
  v25 = v0;
  v26 = v2;
  v23 = v3;
  v5 = v4;
  v24 = sub_10022C350(&qword_100CCC5D8);
  sub_1000037C4();
  v22 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v21 = sub_10022C350(&qword_100CCC5E0);
  sub_1000037C4();
  v11 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_10001320C();
  v13 = sub_10022C350(&qword_100CCC5E8);
  sub_1000037C4();
  v15 = v14;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v20 - v17;
  sub_1000161C0(v5, v5[3]);
  sub_1006188D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v26)
  {
    sub_10061897C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v11 + 8))(v1, v21);
  }

  else
  {
    sub_1000168D0();
    sub_100618928();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = v24;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v22 + 8))(v9, v19);
  }

  (*(v15 + 8))(v18, v13);
  sub_10000C8F4();
}

void sub_100616158()
{
  sub_10000E8AC();
  v3 = v2;
  sub_10022C350(&qword_100CCC5A8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100003CB4();
  v5 = sub_10022C350(&qword_100CCC5B0);
  sub_1000037C4();
  v31 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_10001634C();
  sub_10022C350(&qword_100CCC5B8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_10001320C();
  v9 = v3[4];
  sub_10000E890(v3);
  sub_1006188D4();
  sub_100028824();
  if (v0)
  {
    goto LABEL_8;
  }

  v30 = v1;
  v10 = KeyedDecodingContainer.allKeys.getter();
  sub_100618010(v10, 0);
  v12 = v11;
  if (v14 == v13 >> 1)
  {
LABEL_7:
    type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    sub_10022C350(&qword_100CA7610);
    sub_10002094C(&unk_100C632C0);
    sub_100019BA8();
    sub_100022F14();
    (*(v23 + 104))(v22);
    swift_willThrow();
    swift_unknownObjectRelease();
    v24 = sub_10004E7D8();
    v25(v24);
LABEL_8:
    sub_100006F14(v3);
LABEL_9:
    sub_10000C8F4();
    return;
  }

  sub_1000168B4();
  if (v19 < (v15 >> 1))
  {
    v20 = *(v18 + v16);
    sub_100618858(v16 + 1, v15 >> 1, v12, v18, v16, v17);
    sub_100013A38();
    swift_unknownObjectRelease();
    if (!v9)
    {
      if (v20)
      {
        sub_1000168D0();
        sub_100618928();
        sub_100008ADC();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedDecodingContainer.decode(_:forKey:)();
        swift_unknownObjectRelease();
        v26 = sub_1000046B4();
        v27(v26);
        v28 = sub_100006368();
      }

      else
      {
        sub_10061897C();
        sub_100008ADC();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_unknownObjectRelease();
        (*(v31 + 8))(v30, v5);
        v28 = sub_100014474();
      }

      v29(v28);
      sub_100006F14(v3);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1006165D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100615D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100616600(uint64_t a1)
{
  v2 = sub_1006188D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10061663C(uint64_t a1)
{
  v2 = sub_1006188D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100616678(uint64_t a1)
{
  v2 = sub_10061897C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006166B4(uint64_t a1)
{
  v2 = sub_10061897C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006166F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100615E1C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100616720(uint64_t a1)
{
  v2 = sub_100618928();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10061675C(uint64_t a1)
{
  v2 = sub_100618928();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1006167B4(uint64_t a1@<X8>)
{
  sub_100616158();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
  }
}

uint64_t sub_100616808@<X0>(uint64_t a1@<X8>)
{
  result = sub_100759F10();
  if (!v1)
  {
    *a1 = result;
    *(a1 + 8) = v4 & 1;
  }

  return result;
}

uint64_t sub_10061685C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E75614C707061 && a2 == 0xE900000000000068;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6976614E72657375 && a2 == 0xEE006E6F69746167)
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

uint64_t sub_100616934(char a1)
{
  if (a1)
  {
    return 0x6976614E72657375;
  }

  else
  {
    return 0x636E75614C707061;
  }
}

uint64_t sub_10061697C(uint64_t a1)
{
  v2 = sub_100616E0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006169B8(uint64_t a1)
{
  v2 = sub_100616E0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006169FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10061685C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100616A24(uint64_t a1)
{
  v2 = sub_100616D64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100616A60(uint64_t a1)
{
  v2 = sub_100616D64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100616A9C(uint64_t a1)
{
  v2 = sub_100616DB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100616AD8(uint64_t a1)
{
  v2 = sub_100616DB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ListSessionTrigger.encode(to:)()
{
  sub_10000E8AC();
  v21 = v2;
  v4 = v3;
  sub_10022C350(&qword_100CCC478);
  sub_1000037C4();
  v19 = v6;
  v20 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100003CB4();
  v18 = sub_10022C350(&qword_100CCC480);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001634C();
  v11 = sub_10022C350(&qword_100CCC488);
  sub_1000037C4();
  v13 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v18 - v15;
  sub_10000E890(v4);
  sub_100616D64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v13 + 8);
  if (v21)
  {
    sub_1000168D0();
    sub_100616DB8();
    sub_100037BEC();
    (*(v19 + 8))(v0, v20);
  }

  else
  {
    sub_100616E0C();
    sub_100037BEC();
    (*(v9 + 8))(v1, v18);
  }

  (*v17)(v16, v11);
  sub_10000C8F4();
}

unint64_t sub_100616D64()
{
  result = qword_100CCC490;
  if (!qword_100CCC490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC490);
  }

  return result;
}

unint64_t sub_100616DB8()
{
  result = qword_100CCC498;
  if (!qword_100CCC498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC498);
  }

  return result;
}

unint64_t sub_100616E0C()
{
  result = qword_100CCC4A0;
  if (!qword_100CCC4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC4A0);
  }

  return result;
}

void ListSessionTrigger.init(from:)()
{
  sub_10000E8AC();
  v49 = v0;
  v3 = v2;
  v48 = sub_10022C350(&qword_100CCC4A8);
  sub_1000037C4();
  v46 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v8 = sub_10022C350(&qword_100CCC4B0);
  sub_1000037C4();
  v45 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001634C();
  sub_10022C350(&qword_100CCC4B8);
  sub_1000037C4();
  v47 = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_100003CB4();
  v13 = v3[4];
  sub_10000E890(v3);
  sub_100616D64();
  sub_100028824();
  if (v0)
  {
    goto LABEL_10;
  }

  v43 = v8;
  v44 = v1;
  v49 = v3;
  v14 = v48;
  v15 = KeyedDecodingContainer.allKeys.getter();
  sub_100618010(v15, 0);
  v17 = v16;
  if (v19 == v18 >> 1)
  {
    goto LABEL_8;
  }

  sub_1000168B4();
  v42 = 0;
  if (v24 < (v20 >> 1))
  {
    v25 = *(v23 + v21);
    sub_100618858(v21 + 1, v20 >> 1, v17, v23, v21, v22);
    sub_100013A38();
    swift_unknownObjectRelease();
    if (!v13)
    {
      if (v25)
      {
        LODWORD(v45) = v25;
        sub_1000168D0();
        sub_100616DB8();
        sub_100008ADC();
        v26 = v42;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v26)
        {
          v27 = sub_100014474();
          v28(v27);
          swift_unknownObjectRelease();
          v3 = v49;
LABEL_10:
          sub_100006F14(v3);
LABEL_11:
          sub_10000C8F4();
          return;
        }

        swift_unknownObjectRelease();
        (*(v46 + 8))(v7, v14);
        v38 = sub_100014474();
        v39(v38);
LABEL_16:
        sub_100006F14(v49);
        goto LABEL_11;
      }

      sub_100616E0C();
      v34 = v44;
      sub_100008ADC();
      v35 = v42;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v35)
      {
        swift_unknownObjectRelease();
        (*(v45 + 8))(v34, v43);
        v40 = sub_100014474();
        v41(v40);
        goto LABEL_16;
      }

      v36 = sub_100014474();
      v37(v36);
      swift_unknownObjectRelease();
LABEL_9:
      v3 = v49;
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    sub_10022C350(&qword_100CA7610);
    sub_10002094C(&type metadata for ListSessionTrigger);
    sub_100019BA8();
    sub_100022F14();
    (*(v31 + 104))(v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    v32 = sub_10004E7D8();
    v33(v32);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_100617288(_BYTE *a1@<X8>)
{
  ListSessionTrigger.init(from:)();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_1006172D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7551686372616573 && a2 == 0xEB00000000797265)
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

uint64_t sub_1006173A0(char a1)
{
  if (a1)
  {
    return 0x7551686372616573;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1006173E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006172D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100617408(uint64_t a1)
{
  v2 = sub_100618048();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100617444(uint64_t a1)
{
  v2 = sub_100618048();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100617480(uint64_t a1)
{
  v2 = sub_1006180F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006174BC(uint64_t a1)
{
  v2 = sub_1006180F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006174F8(uint64_t a1)
{
  v2 = sub_10061809C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100617534(uint64_t a1)
{
  v2 = sub_10061809C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ExternalSearchQuery.encode(to:)()
{
  sub_10000E8AC();
  v25 = v2;
  v26 = v0;
  v24 = v3;
  v5 = v4;
  v6 = sub_10022C350(&qword_100CCC4C0);
  sub_1000037C4();
  v23 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_10022C350(&qword_100CCC4C8);
  sub_1000037C4();
  v21 = v12;
  v22 = v11;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_100003CB4();
  v14 = sub_10022C350(&qword_100CCC4D0);
  sub_1000037C4();
  v16 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v21 - v18;
  sub_1000161C0(v5, v5[3]);
  sub_100618048();
  v20 = v25;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v20)
  {
    sub_1000168D0();
    sub_10061809C();
    sub_100037BEC();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v23 + 8))(v10, v6);
  }

  else
  {
    sub_1006180F0();
    sub_100037BEC();
    (*(v21 + 8))(v1, v22);
  }

  (*(v16 + 8))(v19, v14);
  sub_10000C8F4();
}

void ExternalSearchQuery.init(from:)()
{
  sub_10000E8AC();
  v3 = v2;
  sub_10022C350(&qword_100CCC4F0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100003CB4();
  v5 = sub_10022C350(&qword_100CCC4F8);
  sub_1000037C4();
  v30 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_10001634C();
  sub_10022C350(&qword_100CCC500);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_10001320C();
  v9 = v3[4];
  sub_10000E890(v3);
  sub_100618048();
  sub_100028824();
  if (v0)
  {
    goto LABEL_9;
  }

  v31 = v1;
  v10 = KeyedDecodingContainer.allKeys.getter();
  sub_100618010(v10, 0);
  v12 = v11;
  if (v14 == v13 >> 1)
  {
    v15 = v3;
LABEL_8:
    type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    sub_10022C350(&qword_100CA7610);
    sub_10002094C(&type metadata for ExternalSearchQuery);
    sub_100019BA8();
    sub_100022F14();
    (*(v23 + 104))(v22);
    swift_willThrow();
    swift_unknownObjectRelease();
    v24 = sub_10004E7D8();
    v25(v24);
    v3 = v15;
LABEL_9:
    sub_100006F14(v3);
LABEL_10:
    sub_10000C8F4();
    return;
  }

  sub_1000168B4();
  if (v20 < (v16 >> 1))
  {
    v15 = v3;
    v32 = *(v19 + v17);
    sub_100618858(v17 + 1, v16 >> 1, v12, v19, v17, v18);
    sub_100013A38();
    swift_unknownObjectRelease();
    if (!v9)
    {
      if (v32)
      {
        sub_1000168D0();
        sub_10061809C();
        sub_100008ADC();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedDecodingContainer.decode(_:forKey:)();
        swift_unknownObjectRelease();
        v26 = sub_1000046B4();
        v27(v26);
        v28 = sub_100006368();
      }

      else
      {
        sub_1006180F0();
        sub_100008ADC();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_unknownObjectRelease();
        (*(v30 + 8))(v31, v5);
        v28 = sub_100014474();
      }

      v29(v28);
      sub_100006F14(v3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_100617C8C(void *a1@<X8>)
{
  ExternalSearchQuery.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_100617CD4@<X0>(uint64_t *a1@<X8>)
{
  result = static ExternalSearchQuery.read(from:)();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_100617D30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3F990;
  sub_1000103C4();
  *(v5 + 32) = 0xD000000000000010;
  *(v5 + 40) = v6;
  v7 = *(a1 + 24);
  *(v5 + 48) = *(a1 + 16);
  *(v5 + 56) = v7;
  sub_1000103C4();
  *(v8 + 72) = v9;
  *(v8 + 80) = 0xD000000000000019;
  *(v8 + 88) = v10;
  *(v8 + 96) = *(a1 + 25);
  sub_1000103C4();
  v11[15] = &type metadata for Bool;
  v11[16] = 0xD00000000000001CLL;
  v11[17] = v12;
  if (*(a1 + 27))
  {
    if (*(a1 + 27) == 1)
    {
      v13 = 0xEE006465696E6544;
      v14 = 0x6E6F697461636F6CLL;
    }

    else
    {
      sub_1000103C4();
      v14 = 0xD000000000000013;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    v14 = 0x6E6564646968;
  }

  *(inited + 144) = v14;
  *(inited + 152) = v13;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x6863726165537369;
  *(inited + 184) = 0xEB00000000676E69;
  *(inited + 192) = *(a1 + 64);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x697469736E617274;
  *(inited + 232) = 0xEF6449676E696E6FLL;
  v16 = *(a1 + 72);
  v15 = *(a1 + 80);
  v17 = sub_10022C350(&qword_100CA6078);
  *(inited + 240) = v16;
  *(inited + 248) = v15;
  *(inited + 264) = v17;
  *(inited + 272) = 0x72656767697274;
  *(inited + 280) = 0xE700000000000000;
  *(inited + 288) = *(a1 + 88);
  sub_1000103C4();
  *(inited + 312) = v18;
  *(inited + 320) = 0xD00000000000001FLL;
  *(inited + 328) = v19;
  LOBYTE(v19) = *(a1 + 89);
  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = v19;

  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CCC590);
  a2[4] = sub_1006187A0();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100617FD4()
{
  sub_100618804();

  return ShortDescribable.description.getter();
}

void sub_100618010(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1000105B8();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_100618048()
{
  result = qword_100CCC4D8;
  if (!qword_100CCC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC4D8);
  }

  return result;
}

unint64_t sub_10061809C()
{
  result = qword_100CCC4E0;
  if (!qword_100CCC4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC4E0);
  }

  return result;
}

unint64_t sub_1006180F0()
{
  result = qword_100CCC4E8;
  if (!qword_100CCC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC4E8);
  }

  return result;
}

unint64_t sub_100618148()
{
  result = qword_100CCC508;
  if (!qword_100CCC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC508);
  }

  return result;
}

unint64_t sub_100618224()
{
  result = qword_100CCC510;
  if (!qword_100CCC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC510);
  }

  return result;
}

unint64_t sub_10061827C()
{
  result = qword_100CCC518;
  if (!qword_100CCC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC518);
  }

  return result;
}

unint64_t sub_1006182D4()
{
  result = qword_100CCC520;
  if (!qword_100CCC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC520);
  }

  return result;
}

unint64_t sub_10061832C()
{
  result = qword_100CCC528;
  if (!qword_100CCC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC528);
  }

  return result;
}

unint64_t sub_100618384()
{
  result = qword_100CCC530;
  if (!qword_100CCC530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC530);
  }

  return result;
}

unint64_t sub_1006183DC()
{
  result = qword_100CCC538;
  if (!qword_100CCC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC538);
  }

  return result;
}

unint64_t sub_100618434()
{
  result = qword_100CCC540;
  if (!qword_100CCC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC540);
  }

  return result;
}

unint64_t sub_10061848C()
{
  result = qword_100CCC548;
  if (!qword_100CCC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC548);
  }

  return result;
}

unint64_t sub_1006184E4()
{
  result = qword_100CCC550;
  if (!qword_100CCC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC550);
  }

  return result;
}

unint64_t sub_10061853C()
{
  result = qword_100CCC558;
  if (!qword_100CCC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC558);
  }

  return result;
}

unint64_t sub_100618594()
{
  result = qword_100CCC560;
  if (!qword_100CCC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC560);
  }

  return result;
}

unint64_t sub_1006185EC()
{
  result = qword_100CCC568;
  if (!qword_100CCC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC568);
  }

  return result;
}

unint64_t sub_100618644()
{
  result = qword_100CCC570;
  if (!qword_100CCC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC570);
  }

  return result;
}

unint64_t sub_10061869C()
{
  result = qword_100CCC578;
  if (!qword_100CCC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC578);
  }

  return result;
}

unint64_t sub_1006186F4()
{
  result = qword_100CCC580;
  if (!qword_100CCC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC580);
  }

  return result;
}

unint64_t sub_10061874C()
{
  result = qword_100CCC588;
  if (!qword_100CCC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC588);
  }

  return result;
}

unint64_t sub_1006187A0()
{
  result = qword_100CCC598;
  if (!qword_100CCC598)
  {
    sub_10022E824(&qword_100CCC590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC598);
  }

  return result;
}

unint64_t sub_100618804()
{
  result = qword_100CCC5A0;
  if (!qword_100CCC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC5A0);
  }

  return result;
}

uint64_t sub_100618858(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1006188D4()
{
  result = qword_100CCC5C0;
  if (!qword_100CCC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC5C0);
  }

  return result;
}

unint64_t sub_100618928()
{
  result = qword_100CCC5C8;
  if (!qword_100CCC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC5C8);
  }

  return result;
}

unint64_t sub_10061897C()
{
  result = qword_100CCC5D0;
  if (!qword_100CCC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC5D0);
  }

  return result;
}

_BYTE *sub_1006189D0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100618ABC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return static VerticalSizingBehaviorKey.defaultValue.getter();
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

_BYTE *sub_100618B08(_BYTE *result, int a2, int a3)
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

unint64_t sub_100618BB8()
{
  result = qword_100CCC5F0;
  if (!qword_100CCC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC5F0);
  }

  return result;
}

unint64_t sub_100618C10()
{
  result = qword_100CCC5F8;
  if (!qword_100CCC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC5F8);
  }

  return result;
}

unint64_t sub_100618C68()
{
  result = qword_100CCC600;
  if (!qword_100CCC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC600);
  }

  return result;
}

unint64_t sub_100618CC0()
{
  result = qword_100CCC608;
  if (!qword_100CCC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC608);
  }

  return result;
}

unint64_t sub_100618D18()
{
  result = qword_100CCC610;
  if (!qword_100CCC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC610);
  }

  return result;
}

unint64_t sub_100618D70()
{
  result = qword_100CCC618;
  if (!qword_100CCC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC618);
  }

  return result;
}

unint64_t sub_100618DC8()
{
  result = qword_100CCC620;
  if (!qword_100CCC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC620);
  }

  return result;
}

unint64_t sub_100618E20()
{
  result = qword_100CCC628;
  if (!qword_100CCC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC628);
  }

  return result;
}

uint64_t sub_100618F5C()
{
  sub_10022C350(&qword_100CAC610);
  sub_100003828();
  __chkstk_darwin(v0);
  v2 = &v6 - v1;
  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v3 = type metadata accessor for SymbolRenderingMode();
  sub_10001B350(v2, 0, 1, v3);
  v4 = Image.symbolRenderingMode(_:)();

  sub_10030FE60(v2);
  return v4;
}

uint64_t sub_100619034()
{
  sub_10022C350(&qword_100CA5570);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_1006194E8()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_100007074(v0, qword_100D905A0);
  sub_10000703C(v0, qword_100D905A0);
  sub_10022C350(&qword_100CA55A8);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100619638()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA2370 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D905A0);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_100619864@<X0>(uint64_t *a1@<X8>)
{
  sub_100235A9C();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1006198A8()
{
  result = qword_100CCC630;
  if (!qword_100CCC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC630);
  }

  return result;
}

uint64_t sub_1006198FC()
{
  if (*(v0 + 8))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    v2 = [objc_opt_self() tertiarySystemFillColor];
    v1 = Color.init(uiColor:)();
    *(v0 + 8) = v1;
  }

  return v1;
}

uint64_t sub_100619964(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2388 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2398 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2390 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2380 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2378 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_100619AD0(char a1, char a2, uint64_t a3)
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
  v37 = sub_100619964(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_map;
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
  sub_10031694C(a3 + *(v39 + 20) + OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
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

uint64_t sub_10061A154(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v116 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v121 = a1;
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
    v122 = xmmword_100A2C3F0;
    *(v16 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_airQuality, v21 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v24 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v118 = v13 + 2 * v14;
    v119 = v14;
    v30 = v14;
    v31 = swift_allocObject();
    v122 = xmmword_100A2D320;
    *(v31 + 16) = xmmword_100A2D320;
    v32 = a1;
    v33 = *(a1 + 16);
    v34 = v32;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v31 + v13 + v30, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v35;
    *(v12 + 144) = v36;
    v120 = v15;
    v37 = swift_allocObject();
    sub_1000056EC(v37);
    v39 = v38 + v13;
    v40 = *(v34 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v39 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v41;
    *(v12 + 168) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v13;
    v46 = v121;
    v47 = *(v121 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v48 = v119;
    sub_10031694C(v47 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v49;
    *(v12 + 192) = v50;
    v51 = sub_10000C998();
    sub_1000056EC(v51);
    v53 = v52 + v13;
    v54 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v53 + v48;
    v56 = v48;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 200) = sub_1001B38A0(v31);
    *(v12 + 208) = v57;
    *(v12 + 216) = v58;
    v59 = sub_10000C998();
    sub_100003E18(v59);
    v61 = v60 + v13;
    v62 = *(v46 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v13, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 224) = sub_1001B38A0(v59);
    *(v12 + 232) = v63;
    *(v12 + 240) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v65 = sub_10022C350(&qword_100CAC7F0);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v70 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v71, v70 + v66, v72);
    *(v12 + 32) = sub_1001B38A0(v70);
    *(v12 + 40) = v73;
    *(v12 + 48) = v74;
    sub_100016B54();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_airQuality, v70 + v66, v7);
    *(v12 + 56) = sub_1001B38A0(v70);
    *(v12 + 64) = v76;
    *(v12 + 72) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v70 + v66, v7);
    *(v12 + 80) = sub_1001B38A0(v70);
    *(v12 + 88) = v79;
    *(v12 + 96) = v80;
    sub_100016B54();
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v70 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v82;
    *(v12 + 120) = v83;
    sub_100016B54();
    v120 = v69;
    v84 = swift_allocObject();
    sub_1000056EC(v84);
    sub_10031694C(v9, v85 + v66, v7);
    *(v12 + 128) = sub_1001B38A0(v70);
    *(v12 + 136) = v86;
    *(v12 + 144) = v87;
    v88 = v67;
    v119 = v68;
    v89 = v66 + 2 * v67;
    v90 = swift_allocObject();
    v116 = xmmword_100A2D320;
    *(v90 + 16) = xmmword_100A2D320;
    *&v122 = v9;
    v91 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v117 = v88;
    sub_10031694C(v91 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v90 + v66 + v88, v7);
    *(v12 + 152) = sub_1001B38A0(v90);
    *(v12 + 160) = v92;
    *(v12 + 168) = v93;
    v118 = v89;
    v94 = swift_allocObject();
    *(v94 + 16) = v116;
    v95 = v121;
    v96 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v94 + v66 + v88, v7);
    *(v12 + 176) = sub_1001B38A0(v94);
    *(v12 + 184) = v97;
    *(v12 + 192) = v98;
    v99 = swift_allocObject();
    *(v99 + 16) = 2;
    *(v99 + 24) = 4;
    v100 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v101 = v117;
    sub_10031694C(v100 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v99 + v66 + v117, v7);
    *(v12 + 200) = sub_1001B38A0(v99);
    *(v12 + 208) = v102;
    *(v12 + 216) = v103;
    v104 = swift_allocObject();
    v105 = sub_100017A70(v104) + v66;
    v106 = v121;
    v107 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v105 + v101, v7);
    *(v12 + 224) = sub_1001B38A0(v104);
    *(v12 + 232) = v108;
    *(v12 + 240) = v109;
    v110 = swift_allocObject();
    v111 = sub_100017A70(v110) + v66;
    v112 = *(v106 + 16);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v111, v7);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v111 + v101, v7);
    *(v12 + 248) = sub_1001B38A0(v110);
    *(v12 + 256) = v113;
    *(v12 + 264) = v114;
    sub_1003169AC(v122, v7);
  }

  return v12;
}

void sub_10061AA14()
{
  v33[0] = xmmword_100A3BB70;
  v33[1] = xmmword_100A2C3F0;
  v32[0] = xmmword_100A2C3F0;
  v32[1] = xmmword_100A3BBF0;
  v34 = v33;
  v35 = v32;
  v31[0] = xmmword_100A3BB70;
  v31[1] = xmmword_100A3BBA0;
  v30[0] = xmmword_100A3BBB0;
  v30[1] = xmmword_100A3BC00;
  v36 = v31;
  v37 = v30;
  v29[0] = xmmword_100A3BB70;
  v29[1] = xmmword_100A3BBD0;
  v28[0] = xmmword_100A2C3F0;
  v28[1] = xmmword_100A3BC00;
  v38 = v29;
  v39 = v28;
  v27[0] = xmmword_100A3BB70;
  v27[1] = xmmword_100A41B80;
  v26[0] = xmmword_100A3BBB0;
  v26[1] = xmmword_100A3BBF0;
  v40 = v27;
  v41 = v26;
  v25[0] = xmmword_100A2C3F0;
  v25[1] = xmmword_100A3BBC0;
  v24[0] = xmmword_100A2C3F0;
  v24[1] = xmmword_100A3BC10;
  v42 = v25;
  v43 = v24;
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BBB0;
  sub_10004E7E8(v23, v12, v13, v14, v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19, v20, v21, v22);
  v16 = v0;
  v17 = v1;
  v44 = v2;
  v45 = &v16;
  sub_100013794(v3, v4, v5, v6, v7, v8, v9, v10, v0);
  qword_100D905C8 = v11;
}

void sub_10061AB1C()
{
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A2C3F0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBA0;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC20;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A3BBD0;
  v9[0] = xmmword_100A2C3F0;
  v9[1] = xmmword_100A3BC20;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = xmmword_100A3BC00;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC10;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC30;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
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
  sub_100552E50();
  qword_100D905D0 = v0;
}

void sub_10061AC2C()
{
  v34[0] = xmmword_100A3BB70;
  v34[1] = xmmword_100A2C3F0;
  v33[0] = xmmword_100A3BC40;
  v33[1] = xmmword_100A3BB80;
  v35 = v34;
  v36 = v33;
  v32[0] = xmmword_100A3BB70;
  v32[1] = xmmword_100A3BBA0;
  v31[0] = xmmword_100A2C3F0;
  v31[1] = xmmword_100A3BB80;
  v37 = v32;
  v38 = v31;
  v29[0] = 0;
  v29[1] = 4;
  v30 = xmmword_100A3BBD0;
  v28[0] = xmmword_100A3BBD0;
  v28[1] = xmmword_100A3BC50;
  v39 = v29;
  v40 = v28;
  v27[0] = xmmword_100A2D320;
  v27[1] = xmmword_100A3BB70;
  v26[0] = xmmword_100A3BC40;
  v26[1] = xmmword_100A3BC50;
  v41 = v27;
  v42 = v26;
  v25[0] = xmmword_100A3BBD0;
  v25[1] = xmmword_100A3BB80;
  v24[0] = xmmword_100A3BBB0;
  v24[1] = xmmword_100A3BB80;
  v43 = v25;
  v44 = v24;
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BBB0;
  sub_10004E7E8(v23, v12, v13, v14, v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19, v20, v21, v22);
  v16 = v0;
  v17 = v0;
  v45 = v1;
  v46 = &v16;
  sub_100013794(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  qword_100D905D8 = v11;
}

void sub_10061AD34()
{
  v14[0] = xmmword_100A2D320;
  v14[1] = xmmword_100A3BBB0;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BC50;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3AEB0;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC50;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A3BC80;
  v10[1] = xmmword_100A2C3F0;
  v9[0] = xmmword_100A3BBD0;
  v9[1] = xmmword_100A3BC60;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BC40;
  v8[1] = xmmword_100A3BC60;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BC50;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A3BBB0;
  v6[1] = xmmword_100A3BC50;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BC40;
  v2[1] = xmmword_100A3BBD0;
  v1[0] = xmmword_100A3BBD0;
  v1[1] = xmmword_100A3BBD0;
  v27 = v2;
  v28 = v1;
  sub_100552E50();
  qword_100D905E0 = v0;
}

void sub_10061AE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v18[0] = xmmword_100A41B90;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC60;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BC90;
  v16[1] = xmmword_100A3BD20;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BC60;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A3BC60;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BC40;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v11[0] = xmmword_100A3BBD0;
  v11[1] = xmmword_100A3BC40;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BC50;
  v10[1] = xmmword_100A3BC40;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v35 = v10;
  v36 = v9;
  sub_100013794(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D905E8 = v8;
}

uint64_t sub_10061AF64(uint64_t a1, void (*a2)(char *))
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

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather38LocationElevatedAqiSevereConfiguration8_Storage_map, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10001B350(v24, 0, 1, v5);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather38LocationElevatedAqiSevereConfiguration8_Storage_airQuality, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather38LocationElevatedAqiSevereConfiguration8_Storage_severeAlert, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v24, v21, &qword_100CA5008);
  sub_10031694C(v13, v31, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v2, v32, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for ElevatedAqiSevereContent._Storage(0);
  swift_allocObject();
  v27 = sub_1002BEE18(v30);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v24, &qword_100CA5008);
  return v27;
}

BOOL sub_10061B2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = sub_10022C350(qword_100CA4F80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for MoonCalendarInput();
  if ((static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v20 = *(v19 + 32);
  v21 = *(v15 + 48);
  sub_1005C1F54(a1 + v20, v18, &unk_100CB2CF0);
  sub_1005C1F54(a2 + v20, &v18[v21], &unk_100CB2CF0);
  sub_1000038B4(v18, 1, v4);
  if (v22)
  {
    sub_1000038B4(&v18[v21], 1, v4);
    if (v22)
    {
      sub_1000180EC(v18, &unk_100CB2CF0);
      return 1;
    }

    goto LABEL_13;
  }

  sub_1005C1F54(v18, v14, &unk_100CB2CF0);
  sub_1000038B4(&v18[v21], 1, v4);
  if (v22)
  {
    (*(v6 + 8))(v14, v4);
LABEL_13:
    sub_1000180EC(v18, qword_100CA4F80);
    return 0;
  }

  (*(v6 + 32))(v10, &v18[v21], v4);
  sub_100014B28();
  sub_1000E16B8(v24, v25);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v6 + 8);
  v28 = sub_100003940();
  v27(v28);
  (v27)(v14, v4);
  sub_1000180EC(v18, &unk_100CB2CF0);
  return (v26 & 1) != 0;
}

uint64_t sub_10061B5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v161 = a2;
  v3 = sub_10022C350(&unk_100CB2CF0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003848();
  v146 = v5;
  sub_10000386C();
  __chkstk_darwin(v6);
  v145 = &v130 - v7;
  sub_10000386C();
  __chkstk_darwin(v8);
  v152 = &v130 - v9;
  sub_1000038CC();
  v10 = type metadata accessor for TimeState();
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000037D8();
  v148 = v13 - v12;
  sub_1000038CC();
  v139 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v138 = v14;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v137 = v17 - v16;
  v18 = sub_1000038CC();
  v135 = type metadata accessor for WeatherData(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  v136 = v21 - v20;
  v22 = sub_10022C350(&qword_100CA37B0);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  v160 = (&v130 - v24);
  v25 = sub_1000038CC();
  v149 = type metadata accessor for LocationWeatherDataState(v25);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_100003848();
  v142 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  v143 = &v130 - v29;
  sub_1000038CC();
  v156 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v162 = v30;
  __chkstk_darwin(v31);
  sub_1000037D8();
  v34 = v33 - v32;
  type metadata accessor for Calendar();
  sub_1000037C4();
  v154 = v36;
  v155 = v35;
  __chkstk_darwin(v35);
  sub_1000037D8();
  v39 = v38 - v37;
  v40 = type metadata accessor for Location();
  sub_1000037C4();
  v42 = v41;
  __chkstk_darwin(v43);
  sub_100003848();
  v151 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  v47 = &v130 - v46;
  v48 = type metadata accessor for Date();
  sub_1000037C4();
  v157 = v49;
  __chkstk_darwin(v50);
  sub_100003848();
  v158 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  v150 = &v130 - v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  v159 = &v130 - v55;
  v56 = sub_10022C350(&qword_100CA75D0);
  sub_100003810(v56);
  sub_100003828();
  __chkstk_darwin(v57);
  v59 = &v130 - v58;
  v60 = type metadata accessor for MoonDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v61);
  sub_1000037D8();
  v64 = v63 - v62;
  sub_1002B6FC4(a1, v59);
  v141 = v60;
  sub_1000038B4(v59, 1, v60);
  if (v75)
  {
    sub_1000180EC(v59, &qword_100CA75D0);
    v65 = type metadata accessor for MoonCalendarInput();
    return sub_10001B350(v161, 1, 1, v65);
  }

  v147 = v48;
  sub_10061D038(v59, v64);
  v133 = v42;
  v67 = *(v42 + 16);
  v134 = v40;
  v132 = v67;
  v67(v47, v64, v40);
  v140 = v47;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v69 = v162 + 8;
  v68 = *(v162 + 8);
  v68(v34, v156);
  v70 = a1;
  v71 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v72 = Location.id.getter();
  v73 = v160;
  sub_1000864C0(v72, v74, v71);

  sub_1000038B4(v73, 1, v149);
  v153 = v39;
  v144 = v64;
  v76 = v70;
  v162 = v69;
  v131 = v34;
  if (v75)
  {
    sub_1000180EC(v160, &qword_100CA37B0);
  }

  else
  {
    v77 = v143;
    sub_10061D038(v160, v143);
    v78 = v142;
    sub_1000863A0(v77, v142);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v80 = sub_10022C350(&qword_100CA75D8);
      v81 = *(v80 + 48);
      v82 = *(v80 + 64);
      v83 = v136;
      sub_10061D038(v78, v136);
      sub_10061D090(v78 + v82, type metadata accessor for NewsDataModel);
      sub_10061D090(v78 + v81, type metadata accessor for PreprocessedWeatherData);
      v84 = v137;
      WeatherDataModel.currentWeather.getter();
      v85 = v159;
      CurrentWeather.date.getter();
      (*(v138 + 8))(v84, v139);
      sub_10061D090(v83, type metadata accessor for WeatherData);
      sub_10061D090(v77, type metadata accessor for LocationWeatherDataState);
      v86 = v147;
      v87 = v157;
      v88 = v140;
      goto LABEL_11;
    }

    sub_10061D090(v77, type metadata accessor for LocationWeatherDataState);
    sub_10061D090(v78, type metadata accessor for LocationWeatherDataState);
  }

  v86 = v147;
  v89 = v148;
  v85 = v159;
  v88 = v140;
  sub_1000863A0(v76 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v148);
  v87 = v157;
  (*(v157 + 32))(v85, v89, v86);
LABEL_11:
  v91 = v151;
  v90 = v152;
  v92 = v158;
  sub_10061C3AC(v85, v152);
  sub_1000038B4(v90, 1, v86);
  if (v75)
  {
    v160 = v68;
    sub_1000180EC(v90, &unk_100CB2CF0);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_10000703C(v93, qword_100D90B68);
    v94 = v134;
    v132(v91, v88, v134);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v163 = v158;
      *v97 = 136446466;
      v98 = v91;
      v99 = v159;
      swift_beginAccess();
      sub_100014B28();
      sub_1000E16B8(v100, v101);
      v102 = dispatch thunk of CustomStringConvertible.description.getter();
      v104 = sub_100078694(v102, v103, &v163);

      *(v97 + 4) = v104;
      *(v97 + 12) = 2082;
      v105 = v131;
      Location.timeZone.getter();
      sub_1000E16B8(&qword_100CCC818, &type metadata accessor for TimeZone);
      v106 = v156;
      v107 = dispatch thunk of CustomStringConvertible.description.getter();
      v109 = v108;
      v160(v105, v106);
      v110 = *(v133 + 8);
      v110(v98, v94);
      v111 = sub_100078694(v107, v109, &v163);
      v87 = v157;

      *(v97 + 14) = v111;
      _os_log_impl(&_mh_execute_header, v95, v96, "Failed to get currentMonth for date %{public}s, timeZone: %{public}s", v97, 0x16u);
      swift_arrayDestroy();
      v86 = v147;

      (*(v154 + 8))(v153, v155);
      v110(v140, v94);
      sub_10001F2EC();
      sub_10061D090(v144, v112);
      v113 = v161;
    }

    else
    {

      v120 = *(v133 + 8);
      v120(v91, v94);
      (*(v154 + 8))(v153, v155);
      v120(v88, v94);
      sub_10001F2EC();
      sub_10061D090(v144, v121);
      v113 = v161;
      v99 = v159;
    }

    v122 = type metadata accessor for MoonCalendarInput();
    sub_10001B350(v113, 1, 1, v122);
    return (*(v87 + 8))(v99, v86);
  }

  else
  {
    v114 = v88;
    v115 = *(v87 + 32);
    v116 = v150;
    v115(v150, v90, v86);
    v117 = v145;
    sub_1005C1F54(v144 + *(v141 + 24), v145, &unk_100CB2CF0);
    sub_1000038B4(v117, 1, v86);
    if (v118)
    {
      (*(v87 + 16))(v92, v116, v86);
      sub_1000038B4(v117, 1, v86);
      v119 = v117;
      v123 = v133;
      if (!v75)
      {
        sub_1000180EC(v119, &unk_100CB2CF0);
      }
    }

    else
    {
      v115(v92, v117, v86);
      v123 = v133;
    }

    v124 = v146;
    v125 = v144;
    v126 = v153;
    sub_10061C64C(v144, v85, v153, v114, v146);
    (*(v154 + 8))(v126, v155);
    sub_10001F2EC();
    sub_10061D090(v125, v127);
    v128 = v161;
    (*(v123 + 32))(v161, v114, v134);
    v129 = type metadata accessor for MoonCalendarInput();
    (*(v87 + 16))(v128 + v129[5], v85, v86);
    v115((v128 + v129[6]), v150, v86);
    v115((v128 + v129[7]), v158, v86);
    sub_100237E84(v124, v128 + v129[8]);
    sub_10001B350(v128, 0, 1, v129);
    return (*(v87 + 8))(v85, v86);
  }
}

uint64_t sub_10061C3AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v18 = type metadata accessor for Date();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DateComponents();
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA53E8);
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A2D320;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, enum case for Calendar.Component.year(_:), v7);
  v13(v12 + v9, enum case for Calendar.Component.month(_:), v7);
  sub_10004BCB0(v11);
  v14 = v18;
  (*(v2 + 16))(v4, v20, v18);
  Calendar.dateComponents(_:from:)();

  (*(v2 + 8))(v4, v14);
  Calendar.date(from:)();
  return (*(v17 + 8))(v6, v19);
}

uint64_t sub_10061C64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a4;
  v78 = a3;
  v79 = a5;
  v70 = a2;
  v6 = type metadata accessor for TimeZone();
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v67 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Location();
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateComponents();
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v66 - v14;
  v16 = sub_10022C350(qword_100CA66A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v66 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v71 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v66 - v24;
  __chkstk_darwin(v23);
  v27 = &v66 - v26;
  v28 = type metadata accessor for MoonDetailViewState();
  sub_1005C1F54(a1 + *(v28 + 20), v18, qword_100CA66A0);
  v29 = type metadata accessor for MoonDetailSelectedDate();
  v30 = sub_100024D10(v18, 1, v29);
  v80 = v20;
  if (v30 == 1)
  {
    sub_1000180EC(v18, qword_100CA66A0);
    (*(v20 + 16))(v27, v70, v19);
  }

  else
  {
    sub_10070B0DC(v25);
    sub_10061D090(v18, type metadata accessor for MoonDetailSelectedDate);
    (*(v20 + 32))(v27, v25, v19);
  }

  sub_10022C350(&qword_100CA53E8);
  v31 = type metadata accessor for Calendar.Component();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100A3BBA0;
  v36 = v35 + v34;
  v37 = *(v32 + 104);
  v37(v36, enum case for Calendar.Component.year(_:), v31);
  v37(v36 + v33, enum case for Calendar.Component.month(_:), v31);
  v37(v36 + 2 * v33, enum case for Calendar.Component.day(_:), v31);
  sub_10004BCB0(v35);
  Calendar.dateComponents(_:from:)();

  Calendar.date(from:)();
  v76[1](v12, v77);
  v38 = v27;
  if (sub_100024D10(v15, 1, v19) == 1)
  {
    sub_1000180EC(v15, &unk_100CB2CF0);
    v39 = v80;
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000703C(v40, qword_100D90B68);
    v41 = v71;
    (*(v39 + 16))(v71, v27, v19);
    v43 = v73;
    v42 = v74;
    v44 = v75;
    (*(v74 + 16))(v73, v72, v75);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v81 = v78;
      *v47 = 136446466;
      sub_1000E16B8(&qword_100CA5720, &type metadata accessor for Date);
      LODWORD(v72) = v46;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v41;
      v51 = v50;
      v52 = *(v39 + 8);
      v80 = v39 + 8;
      v76 = v52;
      v77 = v38;
      (v52)(v49, v19);
      v53 = sub_100078694(v48, v51, &v81);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2082;
      v54 = v67;
      Location.timeZone.getter();
      sub_1000E16B8(&qword_100CCC818, &type metadata accessor for TimeZone);
      v55 = v43;
      v56 = v69;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      (*(v68 + 8))(v54, v56);
      (*(v42 + 8))(v55, v44);
      v60 = sub_100078694(v57, v59, &v81);

      *(v47 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v45, v72, "Failed to get selected day for date %{public}s, timeZone: %{public}s", v47, 0x16u);
      swift_arrayDestroy();

      (v76)(v77, v19);
    }

    else
    {

      (*(v42 + 8))(v43, v44);
      v64 = *(v39 + 8);
      v64(v41, v19);
      v64(v38, v19);
    }

    v63 = 1;
    v62 = v79;
  }

  else
  {
    v61 = v80;
    (*(v80 + 8))(v27, v19);
    v62 = v79;
    (*(v61 + 32))(v79, v15, v19);
    v63 = 0;
  }

  return sub_10001B350(v62, v63, 1, v19);
}

uint64_t type metadata accessor for MoonCalendarInput()
{
  result = qword_100CCC7D0;
  if (!qword_100CCC7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10061CF94()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_10000BB3C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10061D038(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10061D090(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10061D0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v196 = a3;
  v170 = a2;
  v154 = a1;
  v190 = type metadata accessor for TimeState();
  __chkstk_darwin(v190);
  v197 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for NotificationsOptInState();
  __chkstk_darwin(v181);
  v195 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for NotificationsState();
  __chkstk_darwin(v189);
  v194 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for LocationsState();
  __chkstk_darwin(v187);
  v193 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for EnvironmentState();
  __chkstk_darwin(v186);
  v192 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for AppConfigurationState();
  __chkstk_darwin(v185);
  v191 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for ModalViewState(0);
  v9 = __chkstk_darwin(v184);
  v177 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v171 = &v147 - v12;
  __chkstk_darwin(v11);
  v176 = &v147 - v13;
  v14 = sub_10022C350(&qword_100CA65E8);
  v15 = __chkstk_darwin(v14 - 8);
  v168 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v165 = &v147 - v18;
  __chkstk_darwin(v17);
  v166 = &v147 - v19;
  v182 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v182);
  v162 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v149);
  v183 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v150);
  v152 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CA65F0);
  v24 = __chkstk_darwin(v23 - 8);
  *(&v157 + 1) = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v179 = &v147 - v26;
  v27 = sub_10022C350(&qword_100CA65F8);
  v28 = __chkstk_darwin(v27 - 8);
  v155 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v178 = &v147 - v30;
  v31 = sub_10022C350(&qword_100CA6600);
  v32 = __chkstk_darwin(v31 - 8);
  v153 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v180 = &v147 - v35;
  __chkstk_darwin(v34);
  v37 = &v147 - v36;
  v38 = sub_10022C350(&qword_100CA6608);
  v39 = __chkstk_darwin(v38 - 8);
  v41 = &v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v43 = (&v147 - v42);
  v44 = type metadata accessor for ViewState(0);
  v45 = __chkstk_darwin(v44);
  v188 = &v147 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v48 = (&v147 - v47);
  v49 = sub_10022C350(&qword_100CA6610);
  v50 = __chkstk_darwin(v49 - 8);
  v175 = &v147 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v158 = (&v147 - v52);
  v53 = sub_10022C350(&qword_100CA6618);
  v54 = __chkstk_darwin(v53 - 8);
  v174 = &v147 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v57 = &v147 - v56;
  v58 = sub_10022C350(&qword_100CA6620);
  v59 = __chkstk_darwin(v58 - 8);
  v172 = &v147 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v62 = &v147 - v61;
  v63 = sub_10022C350(&qword_100CA6628);
  v64 = __chkstk_darwin(v63 - 8);
  v167 = &v147 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v67 = &v147 - v66;
  v68 = sub_10022C350(&qword_100CA6630);
  v69 = __chkstk_darwin(v68 - 8);
  v163 = &v147 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v72 = &v147 - v71;
  v73 = sub_10022C350(&qword_100CA6638);
  v74 = __chkstk_darwin(v73 - 8);
  v160 = &v147 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v77 = &v147 - v76;
  v78 = sub_10022C350(&qword_100CA6640);
  v79 = __chkstk_darwin(v78 - 8);
  *&v157 = &v147 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v156 = &v147 - v81;
  sub_10001B350(&v147 - v81, 1, 1, v185);
  v159 = v77;
  sub_10001B350(v77, 1, 1, v186);
  v161 = v72;
  v82 = v72;
  v83 = v154;
  sub_10001B350(v82, 1, 1, v187);
  v164 = v67;
  sub_10001B350(v67, 1, 1, v189);
  v169 = v62;
  sub_10001B350(v62, 1, 1, v181);
  v173 = v57;
  v84 = v57;
  v85 = v149;
  sub_10001B350(v84, 1, 1, v190);
  v147 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_1000B7D3C();
  *v43 = v83;
  v86 = v150;
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v43, 0, 1, v86);
  v87 = type metadata accessor for SearchViewState(0);
  v151 = v37;
  sub_10001B350(v37, 1, 1, v87);
  sub_10001B350(v178, 1, 1, v85);
  sub_10001B350(v179, 1, 1, v182);
  v88 = *v48;
  sub_100095588();
  v89 = sub_100024D10(v41, 1, v86);
  v148 = v88;
  if (v89 == 1)
  {
    sub_1000B7D3C();
    v90 = sub_100024D10(v41, 1, v86);

    if (v90 != 1)
    {
      sub_1000180EC(v41, &qword_100CA6608);
    }
  }

  else
  {
    sub_100620EDC();
  }

  LODWORD(v154) = *(v48 + v44[6]);
  v91 = [objc_opt_self() currentDevice];
  v92 = [v91 userInterfaceIdiom];

  sub_1000180EC(v43, &qword_100CA6608);
  v93 = v158;
  if (v92 && *(v48 + v44[9] + 8) == 2)
  {
    v94 = 1;
  }

  else
  {
    v94 = *(v48 + v44[7]);
  }

  LODWORD(v152) = v94;
  v95 = v166;
  v96 = v153;
  sub_100051BBC();
  v97 = sub_100024D10(v96, 1, v87);
  v98 = v165;
  if (v97 == 1)
  {
    sub_100095588();
    if (sub_100024D10(v96, 1, v87) != 1)
    {
      sub_1000180EC(v96, &qword_100CA6600);
    }
  }

  else
  {
    v99 = v180;
    sub_100620EDC();
    sub_10001B350(v99, 0, 1, v87);
  }

  v100 = v155;
  sub_100051BBC();
  v101 = sub_100024D10(v100, 1, v85);
  v102 = v182;
  if (v101 == 1)
  {
    sub_1000B7D3C();
    v103 = sub_100024D10(v100, 1, v85) == 1;
    v104 = v100;
    v105 = v171;
    if (!v103)
    {
      sub_1000180EC(v104, &qword_100CA65F8);
    }
  }

  else
  {
    sub_100620EDC();
    v105 = v171;
  }

  v106 = *(&v157 + 1);
  sub_100051BBC();
  if (sub_100024D10(v106, 1, v102) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v106, 1, v102) != 1)
    {
      sub_1000180EC(v106, &qword_100CA65F0);
    }
  }

  else
  {
    sub_100620EDC();
  }

  v107 = *(v48 + v44[11]);
  sub_10009EEC0(v48, type metadata accessor for ViewState);
  *v93 = v148;
  sub_100620EDC();
  *(v93 + v44[6]) = v154;
  *(v93 + v44[7]) = v152;
  sub_100051BBC();
  sub_100620EDC();
  sub_100620EDC();
  *(v93 + v44[11]) = v107;
  sub_10001B350(v93, 0, 1, v44);
  sub_100095588();
  v108 = v184;
  if (sub_100024D10(v98, 1, v184) == 1)
  {
    v109 = v196;
    sub_1000B7D3C();
    v110 = sub_100024D10(v98, 1, v108);
    v111 = v186;
    if (v110 != 1)
    {
      sub_1000180EC(v98, &qword_100CA65E8);
    }
  }

  else
  {
    sub_100620EDC();
    v109 = v196;
    v111 = v186;
  }

  v112 = v95;
  v113 = v184;
  sub_10001B350(v112, 0, 1, v184);
  sub_1000B7D3C();
  v114 = v168;
  sub_100051BBC();
  if (sub_100024D10(v114, 1, v113) == 1)
  {
    sub_1000180EC(v114, &qword_100CA65E8);
  }

  else
  {
    sub_10009EEC0(v105, type metadata accessor for ModalViewState);
    sub_100620EDC();
  }

  v115 = v185;
  v116 = v167;
  v117 = v160;
  sub_100620EDC();
  v118 = *(v109 + 16);
  LODWORD(v184) = *(v109 + 24);
  v119 = v157;
  sub_100051BBC();
  v120 = sub_100024D10(v119, 1, v115);
  v196 = v118;
  if (v120 == 1)
  {
    sub_1000B7D3C();
    v121 = sub_100024D10(v119, 1, v115);

    if (v121 != 1)
    {
      sub_1000180EC(v119, &qword_100CA6640);
    }
  }

  else
  {
    sub_100620EDC();
  }

  sub_100051BBC();
  if (sub_100024D10(v117, 1, v111) == 1)
  {
    swift_beginAccess();
    sub_1000B7D3C();
    v122 = sub_100024D10(v117, 1, v111);
    v124 = v189;
    v123 = v190;
    if (v122 != 1)
    {
      sub_1000180EC(v117, &qword_100CA6638);
    }
  }

  else
  {
    sub_100620EDC();
    v124 = v189;
    v123 = v190;
  }

  v125 = v163;
  sub_100051BBC();
  v126 = v187;
  if (sub_100024D10(v125, 1, v187) == 1)
  {
    sub_1000B7D3C();
    v127 = sub_100024D10(v125, 1, v126);
    v128 = v172;
    if (v127 != 1)
    {
      sub_1000180EC(v125, &qword_100CA6630);
    }
  }

  else
  {
    sub_100620EDC();
    v128 = v172;
  }

  sub_100051BBC();
  if (sub_100024D10(v116, 1, v124) == 1)
  {
    sub_1000B7D3C();
    v129 = sub_100024D10(v116, 1, v124);
    v130 = v174;
    if (v129 != 1)
    {
      sub_1000180EC(v116, &qword_100CA6628);
    }
  }

  else
  {
    sub_100620EDC();
    v130 = v174;
  }

  sub_100051BBC();
  v131 = v181;
  if (sub_100024D10(v128, 1, v181) == 1)
  {
    sub_1000B7D3C();
    v132 = sub_100024D10(v128, 1, v131);
    v133 = v175;
    if (v132 != 1)
    {
      sub_1000180EC(v128, &qword_100CA6620);
    }
  }

  else
  {
    sub_100620EDC();
    v133 = v175;
  }

  sub_100051BBC();
  if (sub_100024D10(v130, 1, v123) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v130, 1, v123) != 1)
    {
      sub_1000180EC(v130, &qword_100CA6618);
    }
  }

  else
  {
    sub_100620EDC();
  }

  sub_100051BBC();
  if (sub_100024D10(v133, 1, v44) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v133, 1, v44) != 1)
    {
      sub_1000180EC(v133, &qword_100CA6610);
    }
  }

  else
  {
    sub_100620EDC();
  }

  v134 = v177;
  sub_100620EDC();
  v136 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v135 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v138 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v137 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v139 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v141 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v140 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v142 = *(v109 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v146) = v139;
  sub_10003E038(v196, v184, v191, v192, v193, v194, v195, v197, v188, v134, v136, v135, v138, v137, v146, v141, v140, v142, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
  v144 = v143;

  return v144;
}

uint64_t sub_10061EA14(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v158 = a5;
  v176 = a4;
  v155 = a2;
  v196 = type metadata accessor for TimeState();
  __chkstk_darwin(v196);
  v202 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for NotificationsOptInState();
  __chkstk_darwin(v195);
  v201 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for NotificationsState();
  __chkstk_darwin(v194);
  v200 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for LocationsState();
  __chkstk_darwin(v193);
  v199 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for EnvironmentState();
  __chkstk_darwin(v192);
  v198 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for AppConfigurationState();
  __chkstk_darwin(v190);
  v197 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for ModalViewState(0);
  v12 = __chkstk_darwin(v168);
  v175 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v169 = &v152 - v15;
  __chkstk_darwin(v14);
  v174 = &v152 - v16;
  v17 = sub_10022C350(&qword_100CA65E8);
  v18 = __chkstk_darwin(v17 - 8);
  v166 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v165 = &v152 - v20;
  v184 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v184);
  v187 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v157);
  v185 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CA65F0);
  v24 = __chkstk_darwin(v23 - 8);
  *(&v162 + 1) = &v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v182 = &v152 - v26;
  v27 = sub_10022C350(&qword_100CA65F8);
  v28 = __chkstk_darwin(v27 - 8);
  v160 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v180 = &v152 - v30;
  v31 = sub_10022C350(&qword_100CA6600);
  v32 = __chkstk_darwin(v31 - 8);
  v159 = &v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  *&v162 = &v152 - v35;
  __chkstk_darwin(v34);
  v179 = &v152 - v36;
  v37 = sub_10022C350(&qword_100CA6608);
  v38 = __chkstk_darwin(v37 - 8);
  v40 = &v152 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v178 = &v152 - v41;
  v42 = sub_10022C350(&qword_100CA6610);
  v43 = __chkstk_darwin(v42 - 8);
  v173 = &v152 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v154 = (&v152 - v45);
  v46 = sub_10022C350(&qword_100CA6618);
  v47 = __chkstk_darwin(v46 - 8);
  v172 = &v152 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v191 = &v152 - v49;
  v50 = sub_10022C350(&qword_100CA6620);
  v51 = __chkstk_darwin(v50 - 8);
  v171 = &v152 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v189 = &v152 - v53;
  v54 = sub_10022C350(&qword_100CA6628);
  v55 = __chkstk_darwin(v54 - 8);
  v167 = &v152 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v188 = &v152 - v57;
  v58 = sub_10022C350(&qword_100CA6630);
  v59 = __chkstk_darwin(v58 - 8);
  v164 = &v152 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v186 = &v152 - v61;
  v62 = sub_10022C350(&qword_100CA6638);
  v63 = __chkstk_darwin(v62 - 8);
  v163 = &v152 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v183 = &v152 - v65;
  v66 = sub_10022C350(&qword_100CA6640);
  v67 = __chkstk_darwin(v66 - 8);
  v161 = &v152 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v181 = &v152 - v69;
  v70 = sub_10022C350(&qword_100CA6698);
  __chkstk_darwin(v70 - 8);
  v72 = &v152 - v71;
  v177 = type metadata accessor for WeatherMapPresentationState(0);
  v73 = __chkstk_darwin(v177);
  v156 = &v152 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v76 = &v152 - v75;
  v77 = type metadata accessor for LocationViewerViewAction();
  __chkstk_darwin(v77);
  v79 = &v152 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ViewState(0);
  v81 = __chkstk_darwin(v80);
  v170 = &v152 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v81);
  v84 = (&v152 - v83);
  v85 = sub_10022C350(&qword_100CA5CF8);
  __chkstk_darwin(v85 - 8);
  v87 = &v152 - v86;
  sub_100620480(a3, v176, &v152 - v86);
  v176 = a3;
  v155 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_1000B7D3C();
  sub_1000B7D3C();
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v88 = 0;
  }

  else
  {
    v88 = *(v84 + v80[10]);
    sub_10009EEC0(v79, type metadata accessor for LocationViewerViewAction);
  }

  v89 = v80[10];
  v90 = v84 + v80[9];
  v91 = type metadata accessor for WeatherMapTrackingState(0);
  sub_10001B350(v72, 1, 1, v91);
  v153 = v89;
  sub_1000B0430(v88, v90, v87, v72, v76);
  sub_1000180EC(v72, &qword_100CA6698);
  sub_10001B350(v181, 1, 1, v190);
  sub_10001B350(v183, 1, 1, v192);
  sub_10001B350(v186, 1, 1, v193);
  sub_10001B350(v188, 1, 1, v194);
  sub_10001B350(v189, 1, 1, v195);
  sub_10001B350(v191, 1, 1, v196);
  v92 = v157;
  sub_10001B350(v178, 1, 1, v157);
  v93 = type metadata accessor for SearchViewState(0);
  sub_10001B350(v179, 1, 1, v93);
  sub_10001B350(v180, 1, 1, v184);
  v94 = v182;
  sub_1000B7D3C();
  sub_10001B350(v94, 0, 1, v177);
  v95 = *v84;
  sub_100095588();
  v96 = sub_100024D10(v40, 1, v92);
  v158 = v95;
  if (v96 == 1)
  {
    sub_1000B7D3C();
    v97 = sub_100024D10(v40, 1, v92);

    if (v97 != 1)
    {
      sub_1000180EC(v40, &qword_100CA6608);
    }
  }

  else
  {
    sub_100620EDC();
  }

  LODWORD(v157) = *(v84 + v80[6]);
  v98 = [objc_opt_self() currentDevice];
  v99 = [v98 userInterfaceIdiom];

  sub_1000180EC(v178, &qword_100CA6608);
  sub_10009EEC0(v76, type metadata accessor for WeatherMapPresentationState);
  sub_1000180EC(v87, &qword_100CA5CF8);
  if (v99 && *(v90 + 8) == 2)
  {
    v100 = 1;
  }

  else
  {
    v100 = *(v84 + v80[7]);
  }

  LODWORD(v178) = v100;
  v101 = *(&v162 + 1);
  v102 = v162;
  v103 = v159;
  sub_100051BBC();
  v104 = sub_100024D10(v103, 1, v93);
  v105 = v160;
  if (v104 == 1)
  {
    sub_100095588();
    if (sub_100024D10(v103, 1, v93) != 1)
    {
      sub_1000180EC(v103, &qword_100CA6600);
    }
  }

  else
  {
    sub_100620EDC();
    sub_10001B350(v102, 0, 1, v93);
  }

  sub_100051BBC();
  v106 = v105;
  v107 = v105;
  v108 = v184;
  v109 = sub_100024D10(v106, 1, v184);
  v110 = v192;
  if (v109 == 1)
  {
    sub_1000B7D3C();
    v111 = sub_100024D10(v107, 1, v108);
    v112 = v176;
    v113 = v177;
    if (v111 != 1)
    {
      sub_1000180EC(v107, &qword_100CA65F8);
    }
  }

  else
  {
    sub_100620EDC();
    v112 = v176;
    v113 = v177;
  }

  sub_100051BBC();
  if (sub_100024D10(v101, 1, v113) == 1)
  {
    sub_1000B7D3C();
    v114 = v110;
    if (sub_100024D10(v101, 1, v113) != 1)
    {
      sub_1000180EC(v101, &qword_100CA65F0);
    }
  }

  else
  {
    sub_100620EDC();
    v114 = v110;
  }

  v115 = *(v84 + v80[11]);
  sub_10009EEC0(v84, type metadata accessor for ViewState);
  v116 = v154;
  *v154 = v158;
  sub_100620EDC();
  *(v116 + v80[6]) = v157;
  *(v116 + v80[7]) = v178;
  sub_100051BBC();
  sub_100620EDC();
  sub_100620EDC();
  *(v116 + v80[11]) = v115;
  sub_10001B350(v116, 0, 1, v80);
  v117 = v168;
  sub_10001B350(v165, 1, 1, v168);
  v118 = v169;
  sub_1000B7D3C();
  v119 = v166;
  sub_100051BBC();
  if (sub_100024D10(v119, 1, v117) == 1)
  {
    sub_1000180EC(v119, &qword_100CA65E8);
  }

  else
  {
    sub_10009EEC0(v118, type metadata accessor for ModalViewState);
    sub_100620EDC();
  }

  v120 = v196;
  v121 = v194;
  v122 = v190;
  v123 = v161;
  sub_100620EDC();
  v124 = v112[2];
  LODWORD(v194) = *(v112 + 24);
  sub_100051BBC();
  v125 = sub_100024D10(v123, 1, v122);
  v196 = v124;
  if (v125 == 1)
  {
    sub_1000B7D3C();
    v126 = sub_100024D10(v123, 1, v122);

    v127 = v167;
    if (v126 != 1)
    {
      sub_1000180EC(v123, &qword_100CA6640);
    }
  }

  else
  {
    sub_100620EDC();

    v127 = v167;
  }

  v128 = v163;
  sub_100051BBC();
  if (sub_100024D10(v128, 1, v114) == 1)
  {
    swift_beginAccess();
    sub_1000B7D3C();
    v129 = sub_100024D10(v128, 1, v114);
    v130 = v195;
    if (v129 != 1)
    {
      sub_1000180EC(v128, &qword_100CA6638);
    }
  }

  else
  {
    sub_100620EDC();
    v130 = v195;
  }

  v131 = v164;
  sub_100051BBC();
  v132 = v193;
  if (sub_100024D10(v131, 1, v193) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v131, 1, v132) != 1)
    {
      sub_1000180EC(v131, &qword_100CA6630);
    }
  }

  else
  {
    sub_100620EDC();
  }

  sub_100051BBC();
  if (sub_100024D10(v127, 1, v121) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v127, 1, v121) != 1)
    {
      sub_1000180EC(v127, &qword_100CA6628);
    }
  }

  else
  {
    sub_100620EDC();
  }

  v133 = v171;
  sub_100051BBC();
  if (sub_100024D10(v133, 1, v130) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v133, 1, v130) != 1)
    {
      sub_1000180EC(v133, &qword_100CA6620);
    }
  }

  else
  {
    sub_100620EDC();
  }

  v134 = v172;
  sub_100051BBC();
  if (sub_100024D10(v134, 1, v120) == 1)
  {
    sub_1000B7D3C();
    v135 = sub_100024D10(v134, 1, v120);
    v136 = v170;
    if (v135 != 1)
    {
      sub_1000180EC(v134, &qword_100CA6618);
    }
  }

  else
  {
    sub_100620EDC();
    v136 = v170;
  }

  v137 = v173;
  sub_100051BBC();
  if (sub_100024D10(v137, 1, v80) == 1)
  {
    sub_1000B7D3C();
    if (sub_100024D10(v137, 1, v80) != 1)
    {
      sub_1000180EC(v137, &qword_100CA6610);
    }
  }

  else
  {
    sub_100620EDC();
  }

  v138 = v175;
  sub_100620EDC();
  v140 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v139 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v142 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v141 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v143 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v144 = v112;
  v146 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v145 = *(v112 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v147 = *(v144 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v151) = v143;
  sub_10003E038(v196, v194, v197, v198, v199, v200, v201, v202, v136, v138, v140, v139, v142, v141, v151, v146, v145, v147, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
  v149 = v148;

  return v149;
}

uint64_t sub_100620480@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v74 = a2;
  v83 = a1;
  v84 = a3;
  v3 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v3 - 8);
  v71 = &v70 - v4;
  v5 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v5 - 8);
  v73 = &v70 - v6;
  v75 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v75);
  v70 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v8 - 8);
  v77 = &v70 - v9;
  v78 = type metadata accessor for Location();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v82 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v11 - 8);
  v13 = &v70 - v12;
  v14 = type metadata accessor for LocationsState();
  __chkstk_darwin(v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v17 - 8);
  v19 = &v70 - v18;
  v20 = type metadata accessor for LocationModel();
  v80 = *(v20 - 8);
  v81 = v20;
  __chkstk_darwin(v20);
  v79 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Location.Identifier();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v70 - v27;
  active = type metadata accessor for LocationViewerActiveLocationState();
  __chkstk_darwin(active - 8);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B7D3C();
  v32 = 1;
  if (sub_100024D10(v31, 1, v22) != 1)
  {
    (*(v23 + 32))(v28, v31, v22);
    sub_1000B7D3C();
    static CurrentLocation.placeholderIdentifier.getter();
    v33 = static Location.Identifier.== infix(_:_:)();
    v34 = *(v23 + 8);
    v72 = v23 + 8;
    v35 = v34(v26, v22);
    if (v33)
    {
      sub_10022C350(&qword_100CA38C0);
      type metadata accessor for CurrentLocation();
      swift_storeEnumTagMultiPayload();
      v36 = type metadata accessor for LocationOfInterest();
      sub_10001B350(v13, 1, 1, v36);
      LocationModelData.init(locationOfInterest:isPredictedLocation:)();
      v37 = v80;
      v38 = v81;
      (*(v80 + 13))(v19, enum case for LocationModel.current(_:), v81);
      sub_10001B350(v19, 0, 1, v38);
      v39 = v82;
    }

    else
    {
      __chkstk_darwin(v35);
      *(&v70 - 2) = v28;
      sub_100030C98();
      v38 = v81;
      v39 = v82;
      v37 = v80;
    }

    sub_10009EEC0(v16, type metadata accessor for LocationsState);
    if (sub_100024D10(v19, 1, v38) == 1)
    {
      v34(v28, v22);
      v40 = &unk_100CE2F20;
LABEL_9:
      sub_1000180EC(v19, v40);
LABEL_10:
      v32 = 1;
      goto LABEL_11;
    }

    v41 = v79;
    (*(v37 + 32))(v79, v19, v38);
    v42 = v77;
    LocationModel.location.getter();
    v19 = v42;
    v43 = v42;
    v44 = v78;
    if (sub_100024D10(v43, 1, v78) == 1)
    {
      (*(v37 + 8))(v41, v38);
      v34(v28, v22);
      v40 = &qword_100CA65D8;
      goto LABEL_9;
    }

    v80 = v28;
    v47 = v76;
    (*(v76 + 32))(v39, v19, v44);
    v48 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
    if (*(v83 + *(type metadata accessor for ViewState(0) + 40) + v48 + 1) != 128)
    {
      (*(v47 + 8))(v39, v44);
      (*(v37 + 8))(v41, v38);
      v34(v80, v22);
      goto LABEL_10;
    }

    v49 = *(v83 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v50 = Location.id.getter();
    v51 = v71;
    sub_1000864C0(v50, v52, v49);

    v53 = type metadata accessor for LocationWeatherDataState(0);
    if (sub_100024D10(v51, 1, v53) == 1)
    {
      sub_1000180EC(v51, &qword_100CA37B0);
      v54 = v73;
      sub_10001B350(v73, 1, 1, v75);
      v55 = v79;
    }

    else
    {
      v54 = v73;
      sub_1001A0D3C();
      sub_10009EEC0(v51, type metadata accessor for LocationWeatherDataState);
      v56 = sub_100024D10(v54, 1, v75);
      v55 = v79;
      if (v56 != 1)
      {
        v59 = v70;
        sub_100620EDC();
        v60 = v83 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        v61 = *(v60 + 3) == 4;
        v62 = v47;
        v63 = v55;
        v64 = v74;
        sub_1000161C0(v74 + 7, v74[10]);
        v65 = sub_100922C64(v59, v61);
        v67 = v66;
        sub_1000161C0(v64 + 12, v64[15]);
        v68 = v22;
        v69 = v80;
        sub_100523678(v59 + *(v75 + 24), v65, v67, v80, v84);

        sub_10009EEC0(v59, type metadata accessor for WeatherData);
        (*(v62 + 8))(v82, v78);
        (*(v37 + 8))(v63, v81);
        v57 = v69;
        v58 = v68;
        goto LABEL_19;
      }
    }

    sub_1000180EC(v54, &qword_100CA3898);
    sub_1000161C0(v74 + 12, v74[15]);
    sub_1001A79EC(v84);
    (*(v47 + 8))(v39, v44);
    (*(v37 + 8))(v55, v38);
    v57 = v80;
    v58 = v22;
LABEL_19:
    v34(v57, v58);
    v32 = 0;
  }

LABEL_11:
  v45 = type metadata accessor for WeatherMapOverlayKind();
  return sub_10001B350(v84, v32, 1, v45);
}

uint64_t sub_100620EDC()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100620F34(uint64_t a1)
{
  v248 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v254 = v3;
  sub_1000038CC();
  v247 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v253 = v5;
  sub_1000038CC();
  v246 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v252 = v7;
  sub_1000038CC();
  v244 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v251 = v9;
  sub_1000038CC();
  v243 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  v250 = v11;
  sub_1000038CC();
  v242 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000038E4();
  v249 = v13;
  v14 = sub_1000038CC();
  v228 = type metadata accessor for ModalViewState(v14);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  sub_100003990(v18);
  v19 = sub_10022C350(&qword_100CA65E8);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v225 = v22;
  v23 = sub_1000038CC();
  v212 = type metadata accessor for WeatherMapPresentationState(v23);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000038E4();
  v223 = v25;
  sub_1000038CC();
  v237 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000038E4();
  v241 = v27;
  v28 = sub_1000038CC();
  v213 = type metadata accessor for ViewState.SecondaryViewState(v28);
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_1000038E4();
  sub_100003990(v30);
  v31 = sub_10022C350(&qword_100CA65F0);
  v32 = sub_100003810(v31);
  __chkstk_darwin(v32);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v239 = v34;
  v35 = sub_10022C350(&qword_100CA65F8);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  v238 = v38;
  v39 = sub_10022C350(&qword_100CA6600);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  v240 = &v207 - v42;
  __chkstk_darwin(v43);
  sub_10000E70C();
  sub_100003990(v44);
  v45 = sub_10022C350(&qword_100CA6608);
  v46 = sub_100003810(v45);
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v47);
  v49 = (&v207 - v48);
  v211 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v50);
  sub_100003848();
  v245 = v51;
  __chkstk_darwin(v52);
  sub_10000E70C();
  sub_100003990(v53);
  v54 = sub_10022C350(&qword_100CA6610);
  v55 = sub_100003810(v54);
  __chkstk_darwin(v55);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_10000E70C();
  sub_100003990(v57);
  v58 = sub_10022C350(&qword_100CA6618);
  v59 = sub_100003810(v58);
  __chkstk_darwin(v59);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v60);
  v62 = &v207 - v61;
  v63 = sub_10022C350(&qword_100CA6620);
  v64 = sub_100003810(v63);
  __chkstk_darwin(v64);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v65);
  v67 = &v207 - v66;
  v68 = sub_10022C350(&qword_100CA6628);
  v69 = sub_100003810(v68);
  __chkstk_darwin(v69);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v70);
  v72 = &v207 - v71;
  v73 = sub_10022C350(&qword_100CA6630);
  v74 = sub_100003810(v73);
  __chkstk_darwin(v74);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v75);
  v77 = &v207 - v76;
  v78 = sub_10022C350(&qword_100CA6638);
  v79 = sub_100003810(v78);
  __chkstk_darwin(v79);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v80);
  v82 = &v207 - v81;
  v83 = sub_10022C350(&qword_100CA6640);
  v84 = sub_100003810(v83);
  __chkstk_darwin(v84);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v85);
  v87 = &v207 - v86;
  v88 = sub_100622404(a1);
  v89 = sub_1006224F8();
  v215 = v87;
  sub_100003934();
  sub_10001B350(v90, v91, v92, v242);
  *(&v217 + 1) = v82;
  v93 = v213;
  sub_100003934();
  sub_10001B350(v94, v95, v96, v243);
  v221 = v77;
  v97 = v209;
  sub_100003934();
  sub_10001B350(v98, v99, v100, v244);
  v224 = v72;
  sub_100003934();
  sub_10001B350(v101, v102, v103, v246);
  v229 = v67;
  sub_100003934();
  sub_10001B350(v104, v105, v106, v247);
  v232 = v62;
  sub_100003934();
  sub_10001B350(v107, v108, v109, v248);
  sub_100022F3C();
  v236 = a1;
  v208 = v110;
  sub_100095158();
  *v49 = v89;
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v49, 0, 1, v93);
  v111 = type metadata accessor for SearchViewState(0);
  sub_100003934();
  sub_10001B350(v112, v113, v114, v111);
  sub_100003934();
  sub_10001B350(v115, v116, v117, v118);
  sub_100003934();
  v119 = v212;
  sub_10001B350(v120, v121, v122, v212);
  v123 = v210;
  sub_100095588();
  v124 = v123;
  v125 = sub_10000C7F0();
  sub_1000038B4(v125, v126, v93);
  if (v127)
  {
    v130 = v211;
    v129 = v97;
    sub_100095158();
    v128 = sub_100024D10(v124, 1, v93);
    swift_retain_n();

    if (v128 != 1)
    {
      sub_1000180EC(v124, &qword_100CA6608);
    }
  }

  else
  {
    v129 = v97;
    v130 = v211;
    sub_10002885C();
    sub_1000A0890();
    swift_retain_n();
  }

  v131 = v129;
  LODWORD(v211) = *(v129 + v130[6]);
  v132 = [objc_opt_self() currentDevice];
  v133 = [v132 userInterfaceIdiom];
  v213 = v88;
  v134 = v131;

  v135 = v130;

  sub_1000180EC(v49, &qword_100CA6608);
  v136 = v220;
  if (v133 && *(v134 + v130[9] + 8) == 2)
  {
    v137 = 1;
  }

  else
  {
    v137 = *(v134 + v130[7]);
  }

  LODWORD(v210) = v137;
  v138 = v230;
  v139 = v119;
  v140 = v214;
  sub_100051BBC();
  v141 = sub_1000175DC();
  sub_1000038B4(v141, v142, v111);
  v143 = v218;
  if (v127)
  {
    sub_100095588();
    v144 = sub_1000175DC();
    sub_1000038B4(v144, v145, v111);
    v146 = v140;
    v148 = v237;
    if (!v127)
    {
      sub_1000180EC(v146, &qword_100CA6600);
    }
  }

  else
  {
    v147 = v240;
    sub_1000A0890();
    sub_10001B350(v147, 0, 1, v111);
    v148 = v237;
  }

  v149 = v216;
  sub_100051BBC();
  sub_1000038B4(v149, 1, v148);
  v150 = v243;
  if (v127)
  {
    sub_100019808(v130[9]);
    sub_100095158();
    sub_1000038B4(v149, 1, v148);
    v151 = v217;
    if (!v127)
    {
      sub_1000180EC(v149, &qword_100CA65F8);
    }
  }

  else
  {
    sub_100019BE8();
    sub_1000A0890();
    v151 = v217;
  }

  sub_100051BBC();
  if (sub_100024D10(v143, 1, v139) == 1)
  {
    sub_100019808(v130[10]);
    sub_100095158();
    sub_1000038B4(v143, 1, v139);
    v152 = v219;
    if (!v127)
    {
      sub_1000180EC(v143, &qword_100CA65F0);
    }
  }

  else
  {
    sub_1000046D8();
    sub_100003940();
    sub_1000A0890();
    v152 = v219;
  }

  v153 = *(v134 + v130[11]);
  sub_10009EF18(v134, type metadata accessor for ViewState);
  *v136 = v213;
  sub_10002885C();
  sub_1000A0890();
  *(v136 + v130[6]) = v211;
  *(v136 + v130[7]) = v210;
  sub_100051BBC();
  sub_100019BE8();
  sub_1000A0890();
  sub_1000046D8();
  sub_1000A0890();

  *(v136 + v130[11]) = v153;
  sub_10001B350(v136, 0, 1, v130);
  sub_100003934();
  v154 = v228;
  sub_10001B350(v155, v156, v157, v228);
  v158 = v236;
  sub_100095158();
  v159 = v227;
  sub_100051BBC();
  v160 = sub_10000C7F0();
  sub_1000038B4(v160, v161, v154);
  if (v127)
  {
    sub_1000180EC(v159, &qword_100CA65E8);
  }

  else
  {
    sub_10009EF18(v138, type metadata accessor for ModalViewState);
    sub_100008B04();
    sub_1000A0890();
  }

  v162 = v248;
  v163 = v242;
  sub_100008B04();
  sub_1000A0890();
  v164 = *(v158 + 16);
  LODWORD(v240) = *(v158 + 24);
  sub_100051BBC();
  v165 = sub_1000175DC();
  sub_1000038B4(v165, v166, v163);
  v241 = v164;
  if (v127)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_100095158();
    v167 = sub_1000175DC();
    v169 = sub_100024D10(v167, v168, v163);

    v170 = v222;
    if (v169 != 1)
    {
      sub_1000180EC(v151, &qword_100CA6640);
    }
  }

  else
  {
    sub_1000A0890();

    v170 = v222;
  }

  sub_100051BBC();
  v171 = sub_1000162A4();
  sub_1000038B4(v171, v172, v150);
  if (v127)
  {
    swift_beginAccess();
    sub_100095158();
    v173 = sub_1000162A4();
    sub_1000038B4(v173, v174, v150);
    v175 = v247;
    v176 = v226;
    if (!v127)
    {
      sub_1000180EC(v152, &qword_100CA6638);
    }
  }

  else
  {
    sub_1000A0890();
    v175 = v247;
    v176 = v226;
  }

  sub_100051BBC();
  v177 = v244;
  sub_1000038B4(v170, 1, v244);
  if (v127)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_100095158();
    sub_1000038B4(v170, 1, v177);
    v178 = v231;
    v179 = v246;
    if (!v127)
    {
      sub_1000180EC(v170, &qword_100CA6630);
    }
  }

  else
  {
    sub_1000A0890();
    v178 = v231;
    v179 = v246;
  }

  sub_100051BBC();
  sub_1000038B4(v176, 1, v179);
  if (v127)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_100095158();
    sub_1000038B4(v176, 1, v179);
    v180 = v233;
    if (!v127)
    {
      sub_1000180EC(v176, &qword_100CA6628);
    }
  }

  else
  {
    sub_1000A0890();
    v180 = v233;
  }

  sub_100051BBC();
  v181 = sub_1000175DC();
  sub_1000038B4(v181, v182, v175);
  if (v127)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_100095158();
    v183 = sub_1000175DC();
    sub_1000038B4(v183, v184, v175);
    v185 = v234;
    if (!v127)
    {
      sub_1000180EC(v178, &qword_100CA6620);
    }
  }

  else
  {
    sub_1000A0890();
    v185 = v234;
  }

  sub_100051BBC();
  v186 = sub_1000162A4();
  sub_1000038B4(v186, v187, v162);
  if (v127)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_100095158();
    v188 = sub_1000162A4();
    sub_1000038B4(v188, v189, v162);
    if (!v127)
    {
      sub_1000180EC(v180, &qword_100CA6618);
    }
  }

  else
  {
    sub_1000A0890();
  }

  sub_100051BBC();
  v190 = sub_10000C7F0();
  sub_1000038B4(v190, v191, v135);
  if (v127)
  {
    sub_100022F3C();
    sub_100095158();
    v192 = sub_10000C7F0();
    sub_1000038B4(v192, v193, v135);
    if (!v127)
    {
      sub_1000180EC(v185, &qword_100CA6610);
    }
  }

  else
  {
    sub_1000A0890();
  }

  sub_100008B04();
  v194 = v235;
  sub_1000A0890();
  v196 = *(v158 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v195 = *(v158 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v198 = *(v158 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v197 = *(v158 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v199 = *(v158 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v201 = *(v158 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v200 = *(v158 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v202 = *(v158 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v206) = v199;
  sub_10003E038(v241, v240, v249, v250, v251, v252, v253, v254, v245, v194, v196, v195, v198, v197, v206, v201, v200, v202, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223);
  v204 = v203;

  return v204;
}

uint64_t sub_100622404(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  v4 = *(v1 + 26);
  v5 = *(v1 + 40);
  v16 = *(v1 + 32);
  v6 = *(v1 + 56);
  v14 = *(v1 + 16);
  v15 = *(v1 + 48);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 89);
  v11 = *(v1 + 27);
  type metadata accessor for ListViewState._Storage();
  swift_allocObject();
  v12 = sub_100042DA8(v14, v2, v3, v4, v11, v16, v5, v15, v6, v7, v8, v9, 0, v10);

  return v12;
}

uint64_t sub_1006224F8()
{
  v0 = sub_10022C350(&qword_100CA65B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  active = type metadata accessor for LocationViewerActiveLocationState();
  __chkstk_darwin(active);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v10);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ViewState(0);
  sub_100095158();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10009EF18(v12, type metadata accessor for ViewState.SecondaryViewState);
    v13 = type metadata accessor for Location.Identifier();
    sub_10001B350(v9, 1, 1, v13);
    type metadata accessor for LocationViewerViewState._Storage(0);
    swift_allocObject();
    v14 = v9;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v19 = *v12;
    sub_10001B350(v5, 1, 1, active);
    sub_100051BBC();
    if (sub_100024D10(v2, 1, active) == 1)
    {
      sub_100095158();
      if (sub_100024D10(v2, 1, active) != 1)
      {
        sub_1000180EC(v2, &qword_100CA65B8);
      }
    }

    else
    {
      sub_1000A0890();
    }

    sub_1000A0890();
    v20 = *(v19 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
    v21 = *(v19 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
    v22 = *(v19 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
    v23 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v19);

    type metadata accessor for LocationViewerViewState._Storage(0);
    swift_allocObject();
    v14 = v9;
    v15 = v23;
    v16 = v20;
    v17 = v21;
    v18 = v22;
  }

  return sub_10003DDB8(v14, v15, v16, 2, v17, v18);
}

id sub_10062288C()
{
  v1 = OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController____lazy_storage___dateFormatter);
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

char *sub_100622928(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController____lazy_storage___dateFormatter] = 0;
  v5 = OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_mapView;
  *&v2[v5] = [objc_allocWithZone(MKMapView) init];
  v6 = OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_alert;
  v7 = type metadata accessor for WeatherAlertEntity();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  v9 = _swiftEmptyArrayStorage;
  if (a2)
  {
    v9 = a2;
  }

  *&v2[OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_notifications] = v9;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for DebugIncomingWeatherAlertViewController();
  v10 = objc_msgSendSuper2(&v15, "initWithStyle:", 2);
  v11 = OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_mapView;
  v12 = *&v10[OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_mapView];
  v13 = v10;
  [v12 setDelegate:v13];
  [*&v10[v11] setScrollEnabled:0];
  [*&v10[v11] setZoomEnabled:0];

  (*(v8 + 8))(a1, v7);
  return v13;
}

void sub_100622AA4()
{
  *(v0 + OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController____lazy_storage___dateFormatter) = 0;
  v1 = OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_mapView;
  *(v0 + v1) = [objc_allocWithZone(MKMapView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100622B48()
{
  v2 = v0;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for DebugIncomingWeatherAlertViewController();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  result = [v0 tableView];
  if (result)
  {
    v4 = result;
    sub_1003B3418();
    swift_getObjCClassFromMetadata();
    v5 = sub_100005ECC();
    [v4 registerClass:v1 forCellReuseIdentifier:v5];

    sub_1003C1790(0xD000000000000016, 0x8000000100AD8270, v2);
    v6 = WeatherAlertEntity.boundingBox.getter();
    v7 = *&v2[OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_mapView];
    v8 = sub_1005CCC5C(v6);
    [v7 addOverlay:v8];

    Array<A>.maxLatitude.getter();
    v10 = v9;
    Array<A>.minLatitude.getter();
    v12 = (v10 - v11) * 1.5;
    Array<A>.maxLongitude.getter();
    v14 = v13;
    Array<A>.minLongitude.getter();
    v16 = (v14 - v15) * 1.5;
    Array<A>.center.getter();
    v18 = v17;
    v20 = v19;

    return [v7 setRegion:0 animated:{v18, v20, v12, v16}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100622D24(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 5;
  }

  if (a2 == 2)
  {
    return *(*(v2 + OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_notifications) + 16);
  }

  return a2 == 1;
}

uint64_t sub_100622D84(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return 0;
  }

  else
  {
    return *&aAlert_1[8 * a2];
  }
}

void sub_100622E0C()
{
  v1 = v0;
  v2 = type metadata accessor for SevereNotificationEntity();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  if (IndexPath.section.getter() != 2)
  {
    return;
  }

  v9 = *&v0[OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_notifications];
  v10 = IndexPath.row.getter();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  (*(v4 + 16))(v8, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v2);
  v11 = objc_allocWithZone(type metadata accessor for DebugSevereNotificationViewController());
  v12 = sub_1004932D4(v8);
  v13 = [v1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v12 animated:1];

    v12 = v14;
  }
}

id sub_100623060()
{
  v1 = sub_100005ECC();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [v0 dequeueReusableCellWithIdentifier:v1 forIndexPath:isa];

  [v3 setAccessoryType:0];
  if (IndexPath.section.getter())
  {
    if (IndexPath.section.getter() == 1)
    {
      sub_10062385C(v3);
    }

    else if (IndexPath.section.getter() == 2)
    {
      sub_1006238FC(v3);
    }
  }

  else
  {
    sub_100623398(v3);
  }

  return v3;
}

CGFloat sub_100623250()
{
  v0 = IndexPath.section.getter();
  result = UITableViewAutomaticDimension;
  if (v0 == 1)
  {
    return 400.0;
  }

  return result;
}

uint64_t sub_100623398(void *a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  static UIListContentConfiguration.valueCell()();
  if (!IndexPath.row.getter())
  {
    UIListContentConfiguration.text.setter();
    WeatherAlertEntity.id.getter();
    goto LABEL_7;
  }

  if (IndexPath.row.getter() == 1)
  {
    UIListContentConfiguration.text.setter();
    WeatherAlertEntity.alertIdentifier.getter();
LABEL_7:
    dispatch thunk of Column.value.getter();

    goto LABEL_8;
  }

  if (IndexPath.row.getter() == 2)
  {
    UIListContentConfiguration.text.setter();
    WeatherAlertEntity.channelIdentifier.getter();
    goto LABEL_7;
  }

  if (IndexPath.row.getter() != 3)
  {
    if (IndexPath.row.getter() != 4)
    {
      goto LABEL_9;
    }

    UIListContentConfiguration.text.setter();
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    v18 = WeatherAlertEntity.boundingBox.getter();
    v19 = *(v18 + 16);
    if (v19)
    {
      v33 = v5;
      v34 = a1;
      v35 = v18;
      v36 = _swiftEmptyArrayStorage;
      sub_10000369C(0, v19, 0);
      v20 = v36;
      v21 = 32;
      do
      {
        v22 = Double.description.getter();
        v24 = v23;
        v36 = v20;
        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          sub_10000369C((v25 > 1), v26 + 1, 1);
          v20 = v36;
        }

        v20[2] = v26 + 1;
        v27 = &v20[2 * v26];
        v27[4] = v22;
        v27[5] = v24;
        v21 += 8;
        --v19;
      }

      while (v19);

      v5 = v33;
      a1 = v34;
    }

    else
    {

      v20 = _swiftEmptyArrayStorage;
    }

    v36 = v20;
    sub_10022C350(&qword_100CCC930);
    sub_1001141C8();
    v28 = BidirectionalCollection<>.joined(separator:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

LABEL_8:
    UIListContentConfiguration.secondaryText.setter();
LABEL_9:
    v37[3] = v5;
    v37[4] = &protocol witness table for UIListContentConfiguration;
    v12 = sub_100042FB0(v37);
    (*(v7 + 16))(v12, v11, v5);
    UITableViewCell.contentConfiguration.setter();
    [a1 setSelectionStyle:0];
    [a1 setAccessoryType:0];
    return (*(v7 + 8))(v11, v5);
  }

  UIListContentConfiguration.text.setter();
  v14 = sub_10062288C();
  WeatherAlertEntity.created.getter();
  dispatch thunk of Column.value.getter();
  v15 = type metadata accessor for Date();
  result = sub_100024D10(v4, 1, v15);
  if (result != 1)
  {

    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v15 - 8) + 8))(v4, v15);
    v17 = [v14 stringFromDate:isa];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_10062385C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_mapView);
  [a1 bounds];
  [v3 setFrame:{0.0, 0.0}];
  v4 = [a1 contentView];
  [v4 addSubview:v3];
}

unint64_t sub_1006238FC(void *a1)
{
  v3 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  v41 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for SevereNotificationEntity();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  v19 = *(v1 + OBJC_IVAR____TtC7Weather39DebugIncomingWeatherAlertViewController_notifications);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result >= *(v19 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v39 = v12;
  v40 = a1;
  (*(v14 + 16))(v18, v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * result, v12);
  static UIListContentConfiguration.subtitleCell()();
  SevereNotificationEntity.id.getter();
  dispatch thunk of Column.value.getter();

  UIListContentConfiguration.text.setter();
  v21 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontSizeToFitWidth.setter();
  v21(&v42, 0);
  v22 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v22(&v42, 0);
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v42 = 0x203A65746144;
  v43 = 0xE600000000000000;
  v23 = sub_10062288C();
  SevereNotificationEntity.date.getter();
  dispatch thunk of Column.value.getter();
  v24 = type metadata accessor for Date();
  result = sub_100024D10(v5, 1, v24);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(*(v24 - 8) + 8))(v5, v24);
  v26 = [v23 stringFromDate:isa];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31._object = 0x8000000100AC4760;
  v31._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v31);
  SevereNotificationEntity.subscription.getter();
  dispatch thunk of Column.value.getter();

  if (v47)
  {
    v32 = v46;
  }

  else
  {
    v32 = 0xD000000000000014;
  }

  if (v47)
  {
    v33 = v47;
  }

  else
  {
    v33 = 0x8000000100ABCAE0;
  }

  v34 = v33;
  String.append(_:)(*&v32);

  UIListContentConfiguration.secondaryText.setter();
  v35 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v35(&v42, 0);
  v36 = v41;
  v44 = v41;
  v45 = &protocol witness table for UIListContentConfiguration;
  v37 = sub_100042FB0(&v42);
  (*(v7 + 16))(v37, v11, v36);
  v38 = v40;
  UITableViewCell.contentConfiguration.setter();
  [v38 setAccessoryType:1];
  (*(v7 + 8))(v11, v36);
  return (*(v14 + 8))(v18, v39);
}

id sub_100623E30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugIncomingWeatherAlertViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DebugIncomingWeatherAlertViewController()
{
  result = qword_100CCC918;
  if (!qword_100CCC918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100623F58()
{
  result = type metadata accessor for WeatherAlertEntity();
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

_BYTE *storeEnumTagSinglePayload for AddLocationContext(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10062415C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000100AD8310 == a2)
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

uint64_t sub_1006241F8(void *a1)
{
  v2 = sub_10022C350(&qword_100CCCA40);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_100624674();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

Swift::Int sub_100624344(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_10062438C(void *a1)
{
  v3 = sub_10022C350(&qword_100CCCA30);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_1000161C0(a1, a1[3]);
  sub_100624674();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100006F14(a1);
  return v9 & 1;
}

uint64_t sub_1006244D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10062415C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100624504(uint64_t a1)
{
  v2 = sub_100624674();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100624540(uint64_t a1)
{
  v2 = sub_100624674();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10062458C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1006245D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10062438C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_100624620()
{
  result = qword_100CCCA28;
  if (!qword_100CCCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCCA28);
  }

  return result;
}

unint64_t sub_100624674()
{
  result = qword_100CCCA38;
  if (!qword_100CCCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCCA38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AddLocationContext.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_100624778()
{
  result = qword_100CCCA48;
  if (!qword_100CCCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCCA48);
  }

  return result;
}

unint64_t sub_1006247D0()
{
  result = qword_100CCCA50;
  if (!qword_100CCCA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCCA50);
  }

  return result;
}

unint64_t sub_100624828()
{
  result = qword_100CCCA58;
  if (!qword_100CCCA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCCA58);
  }

  return result;
}

BOOL sub_100624884(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(v4 + 8);
  if (v6(v5, v4) > a2)
  {
    return 0;
  }

  v6(v5, v4);
  return v8 <= a3;
}

uint64_t sub_10062490C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_100024D10(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_100024D10(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_100624A48(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_10001B350(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

void sub_100624CAC()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Font.Context();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100624D78()
{
  type metadata accessor for Font.Context();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100624E88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100004464();
  static Published.subscript.getter();
}

uint64_t sub_100624F08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100004464();
  static Published.subscript.getter();
}

void sub_100624F7C()
{
  sub_10000C778();
  v26 = v0;
  v3 = v2;
  v4 = type metadata accessor for WeatherMapPreviewLocationState();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100014B58();
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Location();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = *(v6 + 16);
  sub_1000206E4();
  v18();
  v19 = sub_100004464();
  if (v20(v19) == enum case for WeatherMapPreviewLocationState.loaded(_:))
  {
    v21 = sub_100004464();
    v22(v21);
    (*(v13 + 32))(v17, v10, v11);
    sub_1009BEC2C(v17);
    (*(v13 + 8))(v17, v11);
  }

  else
  {
    v23 = sub_100004464();
    v24(v23);
  }

  sub_1000206E4();
  v18();
  sub_1006251A4(v1);
  (*(v6 + 8))(v3, v4);
  sub_10000536C();
}

uint64_t sub_1006251A4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapPreviewLocationState();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000206E4();
  v6();

  static Published.subscript.setter();
  return (*(v4 + 8))(a1, v2);
}

id sub_100625358()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillLayoutSubviews");
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result sizeToFit];

    result = [v0 view];
    if (result)
    {
      v3 = result;
      [result frame];
      v5 = v4;
      v7 = v6;

      return [v0 setPreferredContentSize:{v5, v7}];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10062542C(void *a1)
{
  v1 = a1;
  sub_100625358();
}

void sub_100625474()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_100625518(void *a1)
{
  v1 = a1;
  sub_100625474();
}

uint64_t sub_1006255C0()
{

  swift_unknownObjectRelease();
}

uint64_t sub_100625610()
{

  swift_unknownObjectRelease();
}

void (*sub_10062567C(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10023FBC0(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for WeatherMapPreviewLocationState();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = sub_10023FBC0(v6);
  v3[4] = sub_10023FBC0(v6);
  sub_100624E88();
  return sub_100625750;
}

void sub_100625750(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_100624F7C();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_100624F7C();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_100625804(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapPreviewLocationState();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1006251A4(v5);
}

uint64_t sub_1006258D0()
{
  v1 = OBJC_IVAR____TtC7Weather23LocationStateObservable__locationState;
  sub_10022C350(&qword_100CCCE88);
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

void sub_100625998()
{
  sub_100625A28();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100625A28()
{
  if (!qword_100CCCD58)
  {
    type metadata accessor for WeatherMapPreviewLocationState();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100CCCD58);
    }
  }
}

uint64_t sub_100625A80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_100625AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100625B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v22;
  a20 = v23;
  v24 = sub_10022C350(&qword_100CCCE88);
  sub_1000037C4();
  v26 = v25;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &a9 - v28;
  v30 = type metadata accessor for WeatherMapPreviewLocationState();
  sub_1000037C4();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_100014B58();
  v35 = __chkstk_darwin(v34);
  v37 = &a9 - v36;
  v38 = OBJC_IVAR____TtC7Weather23LocationStateObservable__locationState;
  (*(v32 + 104))(&a9 - v36, enum case for WeatherMapPreviewLocationState.loading(_:), v30, v35);
  (*(v32 + 16))(v21, v37, v30);
  Published.init(initialValue:)();
  (*(v32 + 8))(v37, v30);
  (*(v26 + 32))(v20 + v38, v29, v24);
  sub_10000536C();
}

void sub_100625D08()
{
  sub_10000C778();
  v1 = v0;
  v81 = v2;
  active = type metadata accessor for ActiveLocationModel(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v69 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v67 - v6;
  v70 = sub_10022C350(&qword_100CCCDE0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = (&v67 - v9);
  type metadata accessor for Location();
  sub_1000037C4();
  v78 = v12;
  v79 = v11;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v77 = v14 - v13;
  v75 = sub_10022C350(&qword_100CCCDE8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v76 = &v67 - v16;
  v72 = sub_10022C350(&qword_100CCCDF0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  v73 = &v67 - v18;
  v80 = sub_10022C350(&qword_100CCCDF8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v19);
  v74 = &v67 - v20;
  v71 = sub_10022C350(&qword_100CCCE00);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v67 - v22;
  v24 = type metadata accessor for WeatherMapPreviewLocationState();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = v29 - v28;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v31 = (*(v26 + 88))(v30, v24);
  if (v31 == enum case for WeatherMapPreviewLocationState.loaded(_:))
  {
    (*(v26 + 96))(v30, v24);
    v32 = v77;
    (*(v78 + 32))(v77, v30, v79);
    v33 = type metadata accessor for ListLocationRowView(0);
    v34 = v33[7];
    v67 = *(v1 + 80);
    sub_100035B30(v1 + 136, v10 + v34);
    sub_1000161C0((v1 + 40), *(v1 + 64));
    v35 = v33[8];
    swift_unknownObjectRetain();
    sub_1005ABB30(v32, v10 + v35);
    v36 = type metadata accessor for Location.Identifier();
    sub_10001B350(v7, 1, 1, v36);
    v37 = v69;
    v38 = &v7[*(active + 20)];
    *v38 = 0;
    v38[8] = 1;
    sub_100626EB8(v7, v37);
    sub_10022C350(&qword_100CA4B60);
    v39 = sub_100003B6C();
    sub_100626F1C(v37, v39 + *(*v39 + 120));
    sub_10022C350(&qword_100CA4B38);
    swift_storeEnumTagMultiPayload();
    sub_100626F80(v7);
    v40 = Namespace.wrappedValue.getter();
    v83 = 0;
    static Binding.constant(_:)();
    v41 = v85;
    v42 = v86;
    v43 = v87;
    *v10 = swift_getKeyPath();
    sub_10022C350(&qword_100CA2E38);
    swift_storeEnumTagMultiPayload();
    v44 = v10 + v33[5];
    v82 = 0;
    State.init(wrappedValue:)();
    v45 = v84;
    *v44 = v83;
    *(v44 + 1) = v45;
    *(v10 + v33[6]) = v67;
    v46 = (v10 + v33[9]);
    sub_100006390();
    sub_100006F64(v47, &qword_100CA4B60);
    *v46 = ObservedObject.init(wrappedValue:)();
    v46[1] = v48;
    *(v10 + v33[10]) = v40;
    v49 = (v10 + v33[11]);
    *v49 = LocationSearchEntityFromStringResolver.init();
    v49[1] = 0;
    v50 = v10 + v33[12];
    *v50 = v41;
    *(v50 + 1) = v42;
    v50[16] = v43;
    type metadata accessor for LocationViewCollisionOptions();
    sub_100003B6C();
    v51 = sub_100104640();
    sub_100626E70(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions);
    v52 = static ObservableObject.environmentStore.getter();
    v53 = (v10 + *(sub_10022C350(&qword_100CCCE28) + 36));
    *v53 = v52;
    v53[1] = v51;
    v54 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    v56 = (v10 + *(v70 + 36));
    *v56 = KeyPath;
    v56[1] = v54;
    sub_100626FDC(v10, v73);
    swift_storeEnumTagMultiPayload();
    sub_100008B1C();
    sub_100006F64(v57, v58);
    sub_100626CD0();
    v59 = v74;
    _ConditionalContent<>.init(storage:)();
    sub_100035AD0(v59, v76, &qword_100CCCDF8);
    swift_storeEnumTagMultiPayload();
    sub_100626C18();
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v59, &qword_100CCCDF8);
    sub_10062704C(v10);
    (*(v78 + 8))(v77, v79);
  }

  else
  {
    v60 = v73;
    v61 = v74;
    v62 = v76;
    if (v31 == enum case for WeatherMapPreviewLocationState.loading(_:))
    {
      *v23 = static VerticalAlignment.center.getter();
      *(v23 + 1) = 0;
      v23[16] = 1;
      v63 = sub_10022C350(&qword_100CCCE38);
      sub_1006265D8(&v23[*(v63 + 44)]);
      sub_100035AD0(v23, v60, &qword_100CCCE00);
      swift_storeEnumTagMultiPayload();
      sub_100008B1C();
      sub_100006F64(v64, &qword_100CCCE00);
      sub_100626CD0();
      _ConditionalContent<>.init(storage:)();
      sub_100035AD0(v61, v62, &qword_100CCCDF8);
      swift_storeEnumTagMultiPayload();
      sub_100626C18();
      _ConditionalContent<>.init(storage:)();
      sub_1000206E4();
      sub_1000180EC(v65, v66);
      sub_1000180EC(v23, &qword_100CCCE00);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_100626C18();
      _ConditionalContent<>.init(storage:)();
      (*(v26 + 8))(v30, v24);
    }
  }

  sub_10000536C();
}