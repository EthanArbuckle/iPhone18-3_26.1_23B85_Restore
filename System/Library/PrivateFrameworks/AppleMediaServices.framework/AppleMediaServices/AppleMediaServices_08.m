void sub_1000E72B8()
{
  sub_100002A08();
  v100 = v0;
  v102 = v1;
  v3 = v2;
  v4 = type metadata accessor for TimeZone();
  v5 = sub_100003724(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v12 = v11 - v10;
  v13 = type metadata accessor for Date();
  v14 = sub_100003724(v13);
  v103 = v15;
  v104 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_1000037D4();
  v101 = v18;
  sub_100005238();
  __chkstk_darwin(v19);
  sub_100002DD0();
  v105 = v20;
  sub_100005238();
  __chkstk_darwin(v21);
  sub_10000D478();
  v107 = v22;
  v23 = sub_100013FAC();
  v24 = type metadata accessor for TSDataSyncDatasetScheduleInput(v23);
  v106 = v24[5];
  v108 = v3;
  v25 = v3 + v24[8];
  v26 = *(v25 + 40);
  v27 = *(v25 + 48);
  v28 = *(v25 + 56);

  if (v28 == 1)
  {
    v29._countAndFlagsBits = v26;
    v29._object = v27;
    SwifCron.init(_:)(&v111, v29);
    if (!v30)
    {
      v31 = v108;
      SwifCron.next(from:)((v108 + v106), v107);
      sub_1000ED114(&v111);
      goto LABEL_6;
    }

LABEL_16:
    sub_1000048F8();
    return;
  }

  v32._countAndFlagsBits = v26;
  v32._object = v27;
  SwifCron.init(_:)(&v112, v32);
  if (v33)
  {
    goto LABEL_16;
  }

  static TimeZone.autoupdatingCurrent.getter();
  v31 = v108;
  SwifCron.next(from:timeZone:)((v108 + v106), v12, v107);
  v34 = *(v7 + 8);
  v35 = sub_100002E54();
  v36(v35);
  sub_1000ED114(&v112);
LABEL_6:
  v37 = type metadata accessor for TSDataSyncDatasetGroupScheduleInput(0);
  v38 = v102;
  v39 = *(v102 + v37[16]);
  v40 = v105;
  static Date.+ infix(_:_:)();
  if (!*(v31 + v24[6]))
  {
    goto LABEL_11;
  }

  v41 = *(v31 + v24[6]);
  v42 = *(v102 + v37[8]);
  v99 = *(v102 + v37[11]);
  v43 = *(v102 + v37[10]);
  NSDecimal.init(_:)(v99, *(v102 + v37[9]));
  if ((v41 & 0x8000000000000000) == 0)
  {
    pow(_:_:)(v46, v44, v45);
    NSDecimal.init(_:)(v47, v42);
    sub_1000ED3B0();
    sub_100002E54();
    static NSDecimal.+ infix(_:_:)();
    NSDecimal.init(_:)(v48, v99);
    sub_1000ED3B0();
    sub_100005CD0();
    static NSDecimal.* infix(_:_:)();
    NSDecimal._bridgeToObjectiveC()(v49);
    v51 = v50;
    [v50 doubleValue];

    v38 = (v108 + v106);
    v37 = v101;
    Date.addingTimeInterval(_:)();
    v40 = v105;
    if (static Date.< infix(_:_:)())
    {
      (*(v103 + 8))(v105, v104);
      v52 = *(v103 + 32);
      v53 = sub_1000ED3C0();
      v52(v53);
      v54 = sub_100008D74();
      sub_100002728(v54, v55, v56, v104);
      v57 = type metadata accessor for TSDataSyncDatasetSchedule(0);
      v58 = sub_1000ED3D0(v57);
      v52(v58);
      v59 = v38[8];
      type metadata accessor for TSDataSyncTriggerEvent(0);
      sub_100007B78();
      sub_100002728(v60, v61, v62, v63);
      v64 = sub_10000EFE0();
      *(v101 + v68) = 7;
      v69 = v38[7];
      v70 = 2;
LABEL_15:
      *(v37 + v69) = v70;
      v98 = v37 + v38[9];
      *(v98 + 41) = v65;
      *(v98 + 1) = v66;
      *(v98 + 2) = v64;
      *v98 = v67;
      sub_1000BA2CC(&v110, &v109);
      goto LABEL_16;
    }

    (*(v103 + 8))(v101, v104);
LABEL_11:
    sub_1000ED418(v24[10]);
    if (v72 || (v71 & 1) == 0)
    {
      v85 = *(v103 + 32);
      v86 = sub_1000ED3C0();
      v85(v86);
      v87 = sub_100008D74();
      sub_100002728(v87, v88, v89, v104);
      v90 = type metadata accessor for TSDataSyncDatasetSchedule(0);
      v91 = sub_1000ED3D0(v90);
      v85(v91);
      v92 = v38[8];
      type metadata accessor for TSDataSyncTriggerEvent(0);
      sub_100007B78();
      sub_100002728(v93, v94, v95, v96);
      v64 = sub_10000EFE0();
      *(v37 + v97) = 7;
      v69 = v38[7];
      v70 = 9;
    }

    else
    {
      (*(v103 + 8))(v40, v104);
      v73 = *(v103 + 32);
      v74 = sub_1000ED3C0();
      v75(v74);
      v76 = sub_100008D74();
      sub_100002728(v76, v77, v78, v104);
      v38 = type metadata accessor for TSDataSyncDatasetSchedule(0);
      (*(v103 + 16))(v37 + v38[5], v100, v104);
      v79 = v38[8];
      type metadata accessor for TSDataSyncTriggerEvent(0);
      sub_100007B78();
      sub_100002728(v80, v81, v82, v83);
      v64 = sub_10000EFE0();
      v70 = 11;
      *(v37 + v84) = 11;
      v69 = v38[7];
    }

    goto LABEL_15;
  }

  __break(1u);
}

void sub_1000E7844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100002A08();
  a21 = v24;
  a22 = v25;
  v339 = v23;
  v355 = v26;
  v28 = v27;
  v330 = v29;
  v344 = v30;
  v338 = v31;
  v342 = type metadata accessor for TSDataSyncTriggerEvent(0);
  v32 = sub_10000307C(v342);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_10000306C();
  v321 = v36 - v35;
  v37 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  v38 = sub_1000030B8(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v41);
  sub_10000D478();
  v328 = v42;
  v43 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v44 = sub_1000030B8(v43);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v47);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v48);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v49);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v50);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v51);
  sub_10000D478();
  v348 = v52;
  sub_100013FAC();
  v53 = type metadata accessor for Date();
  v54 = sub_100003724(v53);
  v343 = v55;
  v57 = *(v56 + 64);
  __chkstk_darwin(v54);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v58);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v59);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v60);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v61);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v62);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v63);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v64);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v65);
  sub_10000D478();
  v353 = v66;
  v67 = sub_100013FAC();
  v68 = type metadata accessor for TSDataSyncCalculatedEvent(v67);
  v69 = sub_100003724(v68);
  v71 = v70;
  v73 = *(v72 + 64);
  __chkstk_darwin(v69);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v74);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v75);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v76);
  v78 = &v319 - v77;
  v79 = sub_100099DF4(&qword_1002DC250, &qword_100234860);
  v80 = sub_1000030B8(v79);
  v82 = *(v81 + 64);
  __chkstk_darwin(v80);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v83);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v84);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v85);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v86);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v87);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v88);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v89);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v90);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v91);
  sub_1000ED424();
  __chkstk_darwin(v92);
  v351 = &v319 - v93;
  sub_100007B78();
  sub_100002728(v94, v95, v96, v68);
  v350 = v22;
  sub_100007B78();
  sub_100002728(v97, v98, v99, v68);
  v100 = *(v28 + 16);
  v356 = v68;
  if (v100)
  {
    v101 = *(v71 + 80);
    sub_10000AE20();
    v103 = v28 + v102;
    v104 = (v343 + 16);
    v352 = *(v71 + 72);
    v345 = v343 + 32;
    do
    {
      sub_1000ED34C();
      sub_1000ED254();
      v105 = *(v68 + 24);
      sub_1000052BC();
      sub_1000ED20C(&qword_1002DB968, v106);
      v107 = dispatch thunk of static Comparable.< infix(_:_:)();
      v108 = *v104;
      if (v107)
      {
        v108(v354, &v78[v105], v53);
        v109 = sub_10000B390(&a16);
        if (sub_100004DFC(v109, v110, v68))
        {
          sub_100005CC4(&a15);
          sub_100007B78();
          sub_100002728(v111, v112, v113, v53);
          v114 = v347;
          static Date.distantFuture.getter();
          sub_10000B3A0(v105, 1, v53);
          if (!v179)
          {
            sub_100004E24(v349, &qword_1002DA970, &qword_1002318B0);
          }
        }

        else
        {
          v121 = v105 + *(v68 + 24);
          v122 = sub_100005CC4(&a15);
          (v108)(v122);
          sub_10000B7B0();
          sub_100002728(v123, v124, v125, v53);
          sub_100008AA4(&a11);
          v114 = v347;
          v126(v347, v105, v53);
        }

        sub_10000A81C(&a20);
        static Date.< infix(_:_:)();
        v127 = sub_100005114();
        (v105)(v127);
        (v105)(v68, v53);
        if ((v114 & 1) == 0)
        {
          goto LABEL_17;
        }

        v128 = &a16;
      }

      else
      {
        v108(v353, v78, v53);
        v115 = sub_10000B390(&a17);
        if (sub_100004DFC(v115, v116, v68))
        {
          sub_100005CC4(&a14);
          sub_100007B78();
          sub_100002728(v117, v118, v119, v53);
          v120 = v346;
          static Date.distantPast.getter();
          sub_10000B3A0(v105, 1, v53);
          if (!v179)
          {
            sub_100004E24(v348, &qword_1002DA970, &qword_1002318B0);
          }
        }

        else
        {
          v129 = sub_10000A81C(&a14);
          v108(v129, v105, v53);
          sub_10000B7B0();
          sub_100002728(v130, v131, v132, v53);
          sub_100008AA4(&a11);
          v120 = v346;
          v133(v346, v68, v53);
        }

        sub_10000A81C(&a19);
        static Date.> infix(_:_:)();
        v134 = sub_100005114();
        (v105)(v134);
        (v105)(v68, v53);
        if ((v120 & 1) == 0)
        {
LABEL_17:
          sub_100004AAC();
          sub_1000ED2A4(v78, v139);
          v68 = v356;
          goto LABEL_18;
        }

        v128 = &a17;
      }

      v135 = sub_100005CC4(v128);
      sub_100004E24(v135, &qword_1002DC250, &qword_100234860);
      sub_100006640();
      sub_1000ED2FC();
      sub_10000B7B0();
      v68 = v356;
      sub_100002728(v136, v137, v138, v356);
LABEL_18:
      v103 += v352;
      --v100;
    }

    while (v100);
  }

  v140 = v351;
  v141 = v340;
  sub_10000F3D0();
  sub_1000D31EC(v142, v143, v144, v145);
  sub_100004DFC(v141, 1, v68);
  sub_100013FF0();
  sub_100004E24(v146, v147, v148);
  v149 = v341;
  sub_10000F3D0();
  sub_1000D31EC(v150, v151, v152, v153);
  v154 = type metadata accessor for TSDataSyncDatasetScheduleInput(0);
  v155 = v154[6];
  sub_1000ED3A4();
  v158 = *(v157 + v156);
  if (!v158)
  {
    goto LABEL_34;
  }

  v159 = sub_100004F70();
  v140 = v149;
  v160 = v337;
  sub_1000D31EC(v159, v337, &qword_1002DC250, &qword_100234860);
  v161 = sub_100004DFC(v160, 1, v356);
  v162 = v160;
  v149 = v140;
  sub_100004E24(v162, &qword_1002DC250, &qword_100234860);
  if (v161 == 1)
  {
    v163 = v154[10];
    sub_1000ED3A4();
    sub_1000ED418(v164);
    if (v179 || (v165 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v166 = sub_100004F70();
  v167 = v332;
  sub_1000D31EC(v166, v332, v168, v169);
  v170 = sub_10000A218();
  sub_10000B3A0(v170, v171, v356);
  if (v179)
  {
    sub_100004E24(v167, &qword_1002DC250, &qword_100234860);
    goto LABEL_50;
  }

  sub_100006640();
  v172 = v326;
  sub_1000ED2FC();
  v173 = v154[7];
  sub_1000ED3A4();
  v176 = (v175 + v174);
  v177 = v176[1];
  if (!v177)
  {
    sub_100004AAC();
    sub_1000ED2A4(v172, v182);
    goto LABEL_34;
  }

  v178 = (v172 + *(v342 + 32));
  v179 = *v178 == *v176 && v177 == v178[1];
  if (v179)
  {
    sub_100004AAC();
    sub_1000ED2A4(v172, v239);
    goto LABEL_50;
  }

  v180 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_100004AAC();
  sub_1000ED2A4(v172, v181);
  if ((v180 & 1) == 0)
  {
LABEL_34:
    v183 = v154[10];
    sub_1000ED3A4();
    sub_1000ED418(v184);
    if (!v179 && (v185 & 1) != 0)
    {
      v186 = v322;
      sub_1000D31EC(v149, v322, &qword_1002DC250, &qword_100234860);
      v187 = v356;
      sub_10000B3A0(v186, 1, v356);
      v188 = v343;
      if (v179)
      {
        sub_100004E24(v186, &qword_1002DC250, &qword_100234860);
        sub_100007B78();
        sub_100002728(v189, v190, v191, v53);
        (*(v188 + 16))(v331, v355, v53);
      }

      else
      {
        v213 = *(v343 + 16);
        v214 = v186 + *(v187 + 20);
        v354 = v154;
        v215 = sub_10000A81C(&v358);
        v213(v215);
        sub_100004AAC();
        sub_1000ED2A4(v186, v216);
        v154 = v354;
        sub_10000B7B0();
        sub_100002728(v217, v218, v219, v53);
        (v213)(v331, v355, v53);
      }

      v220 = v323;
      sub_1000D31EC(v149, v323, &qword_1002DC250, &qword_100234860);
      v221 = sub_10000A218();
      sub_10000B3A0(v221, v222, v187);
      if (v179)
      {
        sub_100004E24(v220, &qword_1002DC250, &qword_100234860);
        v225 = 11;
      }

      else
      {
        sub_100007F78();
        v223 = v321;
        sub_1000ED254();
        sub_100004AAC();
        sub_1000ED2A4(v220, v224);
        v225 = *(v223 + *(v342 + 20));
        sub_100007BE8();
        sub_1000ED2A4(v223, v226);
      }

      v227 = v324;
      sub_1000D3234(v149, v324, &qword_1002DC250, &qword_100234860);
      sub_10000B3A0(v227, 1, v187);
      if (v179)
      {
        sub_100004E24(v227, &qword_1002DC250, &qword_100234860);
        v230 = 1;
        v228 = v325;
      }

      else
      {
        sub_100007F78();
        v228 = v325;
        sub_1000ED254();
        sub_100004AAC();
        sub_1000ED2A4(v227, v229);
        v230 = 0;
      }

      sub_100002728(v228, v230, 1, v342);
      sub_10000BFF8(v154[8]);
      sub_100013DF4(v359);
      sub_1000D3234(v231, v232, v233, v234);
      v235 = type metadata accessor for TSDataSyncDatasetSchedule(0);
      (*(v343 + 32))(v140 + v235[5], v331, v53);
      *(v140 + v235[6]) = v225;
      *(v140 + v235[7]) = 11;
      sub_1000D3234(v228, v140 + v235[8], &qword_1002DBC20, &unk_100234B00);
      sub_100013C64(v140 + v235[9]);
      v236 = sub_100008D74();
      sub_100003FEC(v236, v237, v238);
      goto LABEL_68;
    }

    v192 = v334;
    sub_1000D3234(v149, v334, &qword_1002DC250, &qword_100234860);
    v193 = sub_10000A218();
    v194 = v356;
    sub_10000B3A0(v193, v195, v356);
    v196 = v343;
    if (v179)
    {
      sub_100004E24(v192, &qword_1002DC250, &qword_100234860);
      type metadata accessor for TSDataSyncDatasetSchedule(0);
      sub_100007B78();
      sub_100002728(v197, v198, v199, v200);
LABEL_68:
      sub_100013FF0();
      sub_100004E24(v313, v314, v315);
      sub_100004F70();
      sub_100013FF0();
      sub_100004E24(v316, v317, v318);
      sub_1000048F8();
      return;
    }

    sub_100006640();
    sub_100013DF4(&v357);
    sub_1000ED2FC();
    v201 = *(v196 + 16);
    v201(v336, v140 + *(v194 + 20), v53);
    sub_10000B7B0();
    sub_100002728(v202, v203, v204, v53);
    v201(v335, v140 + *(v194 + 24), v53);
    v205 = v342;
    v206 = *(v140 + *(v342 + 20));
    LODWORD(v356) = byte_10023488A[v206];
    v207 = type metadata accessor for TSDataSyncDatasetSchedule(0);
    v208 = v207[8];
    sub_100007F78();
    sub_10000BEF4();
    sub_100004AAC();
    sub_1000ED2A4(v140, v209);
    sub_10000B7B0();
    sub_100002728(v210, v211, v212, v205);
    sub_10000BFF8(v154[8]);
    sub_1000D3234(v336, v154, &qword_1002DA970, &qword_1002318B0);
    (*(v196 + 32))(v154 + v207[5], v335, v53);
    *(v154 + v207[6]) = v206;
LABEL_56:
    *(v154 + v207[7]) = v356;
    sub_100013C64(v154 + v207[9]);
    sub_10000B7B0();
    sub_100003FEC(v283, v284, v285);
    goto LABEL_68;
  }

LABEL_50:
  v240 = type metadata accessor for TSDataSyncDatasetGroupScheduleInput(0);
  v241 = *(v330 + v240[8]);
  v242 = v240[11];
  v243 = *(v242 + v330);
  v244 = *(v330 + v240[10]);
  v245 = v154[5];
  NSDecimal.init(_:)(v242, *(v330 + v240[9]));
  if ((v158 & 0x8000000000000000) == 0)
  {
    v354 = v154;
    pow(_:_:)(&a20, v246, v247);
    NSDecimal.init(_:)(v248, v241);
    sub_1000ED3B0();
    static NSDecimal.+ infix(_:_:)();
    NSDecimal.init(_:)(v249, v243);
    sub_1000ED3B0();
    v250 = v350;
    static NSDecimal.* infix(_:_:)();
    NSDecimal._bridgeToObjectiveC()(v251);
    v253 = v252;
    [v252 doubleValue];

    v154 = v333;
    Date.addingTimeInterval(_:)();
    v254 = v250;
    v255 = v329;
    sub_1000D31EC(v254, v329, &qword_1002DC250, &qword_100234860);
    v256 = v356;
    sub_10000B3A0(v255, 1, v356);
    if (v179)
    {
      v266 = &qword_1002DC250;
      sub_100013FF0();
      sub_100004E24(v257, v258, v259);
      sub_100013FF0();
      sub_100004E24(v260, v261, v262);
      v263 = v343;
    }

    else
    {
      sub_100006640();
      sub_100013DF4(&v350);
      sub_1000ED2FC();
      v264 = *(v256 + 24);
      v265 = v256;
      v266 = static Date.< infix(_:_:)();
      sub_100004E24(v140, &qword_1002DC250, &qword_100234860);
      v263 = v343;
      if (v266)
      {
        (*(v343 + 8))(v154, v53);
        v267 = *(v265 + 20);
        v268 = *(v263 + 16);
        v269 = v320;
        v268(v320, v140 + v267, v53);
        sub_10000B7B0();
        sub_100002728(v270, v271, v272, v53);
        v273 = v140 + v264;
        v274 = v319;
        v268(v319, v273, v53);
        v275 = v342;
        v355 = *(v140 + *(v342 + 20));
        LODWORD(v356) = byte_10023488A[v355];
        v207 = type metadata accessor for TSDataSyncDatasetSchedule(0);
        v276 = v263;
        v277 = v207[8];
        sub_100007F78();
        sub_10000BEF4();
        sub_100004AAC();
        sub_1000ED2A4(v140, v278);
        sub_10000B7B0();
        sub_100002728(v279, v280, v281, v275);
        sub_10000BCD4();
        sub_10000BFF8(*(v282 + 32));
        sub_1000D3234(v269, v154, &qword_1002DA970, &qword_1002318B0);
        (*(v276 + 32))(v154 + v207[5], v274, v53);
        *(v154 + v207[6]) = v355;
        goto LABEL_56;
      }

      sub_100004AAC();
      sub_1000ED2A4(v140, v286);
    }

    v287 = sub_10000B390(&a17);
    v288 = v356;
    sub_100004DFC(v287, v289, v356);
    v290 = v327;
    sub_10000BCD4();
    if (v292)
    {
      v293 = *(v291 + 40);
      sub_1000ED3A4();
      sub_1000ED418(v294);
      if (v179 || (v295 & 1) == 0)
      {
        v296 = 3;
      }

      else
      {
        v296 = 11;
      }

      LODWORD(v355) = v296;
      v297 = 1;
      v298 = v266;
      v288 = v356;
    }

    else
    {
      LODWORD(v355) = *(v266 + *(v342 + 20));
      (*(v263 + 16))(v290, v266 + *(v288 + 20), v53);
      v297 = 0;
      v298 = v266;
    }

    v299 = 1;
    sub_100002728(v290, v297, 1, v53);
    v300 = *(v263 + 32);
    v301 = sub_10000A81C(&v356);
    v300(v301, v333, v53);
    v302 = sub_100004DFC(v298, 1, v288);
    v303 = v328;
    if (!v302)
    {
      sub_100007F78();
      sub_100004F70();
      sub_1000ED254();
      v299 = 0;
    }

    sub_100002728(v303, v299, 1, v342);
    sub_10000BCD4();
    sub_10000BFF8(*(v304 + 32));
    sub_100013DF4(v359);
    sub_1000D3234(v305, v306, v307, v308);
    v309 = type metadata accessor for TSDataSyncDatasetSchedule(0);
    v300(v140 + v309[5], v154, v53);
    *(v140 + v309[6]) = v355;
    *(v140 + v309[7]) = 2;
    sub_1000D3234(v303, v140 + v309[8], &qword_1002DBC20, &unk_100234B00);
    sub_100013C64(v140 + v309[9]);
    v310 = sub_100008D74();
    sub_100003FEC(v310, v311, v312);
    goto LABEL_68;
  }

  __break(1u);
}

int *sub_1000E8C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v139 = a3;
  v137 = a1;
  v140 = a6;
  v9 = type metadata accessor for TSDataSyncDatasetScheduleInput(0);
  v10 = sub_100003724(v9);
  v145 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_10000308C();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = v134 - v18;
  v20 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  v21 = sub_1000030B8(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v147 = v134 - v24;
  v25 = sub_100013FAC();
  v26 = type metadata accessor for TSDataSyncDatasetState(v25);
  v27 = sub_100003724(v26);
  v141 = v28;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  sub_10000306C();
  v33 = (v32 - v31);
  v35 = a5[13];
  v34 = a5[14];
  v36 = a5[15];
  v136 = a5[16];
  v37 = a5[17];
  sub_1000D6484();
  v146 = v9;
  v38 = Dictionary.init(dictionaryLiteral:)();
  v135 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v39 = *(v135 + 24);
  v138 = a2;
  v40 = *(a2 + v39);
  v41 = *(v40 + 16);
  if (!v41)
  {
LABEL_19:
    sub_10000D4E8();
    v114 = v140;
    sub_1000ED254();
    *v154 = 0;
    v152 = 0u;
    v153 = 0u;
    v115 = sub_10012370C(&v152, 0);
    v117 = v116;
    sub_100004E24(&v152, &qword_1002DB958, &qword_100232B60);
    v118 = type metadata accessor for TSDataSyncDatasetGroupScheduleInput(0);
    v119 = v118[7];
    v120 = type metadata accessor for AccountIdentity();
    sub_100003BF0(v120);
    (*(v121 + 16))(v114 + v119, v137);
    v122 = type metadata accessor for TSDataSyncDatasetGroupState(0);
    v123 = v118[13];
    sub_1000041F8(*(v122 + 28));
    v124 = v118[14];
    sub_1000041F8(*(v122 + 24));
    v125 = *(v135 + 20);
    v126 = v118[15];
    v127 = type metadata accessor for URL();
    sub_100003BF0(v127);
    (*(v128 + 16))(v114 + v126, v138 + v125);
    result = type metadata accessor for TSDataSyncDeviceState(0);
    v130 = *(v139 + result[14]);
    v131 = *(v139 + result[11]);
    v132 = *(v139 + result[12]);
    *(v114 + v118[5]) = v38;
    v133 = (v114 + v118[6]);
    *v133 = v115;
    v133[1] = v117;
    *(v114 + v118[8]) = v35;
    *(v114 + v118[9]) = v34;
    *(v114 + v118[10]) = v36;
    *(v114 + v118[11]) = v136;
    *(v114 + v118[12]) = v37;
    *(v114 + v118[16]) = v130;
    *(v114 + v118[17]) = v131;
    *(v114 + v118[18]) = v132;
    return result;
  }

  v42 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  v43 = 0;
  v44 = *(v42 + 20);
  v134[1] = a4;
  v45 = *(a4 + v44);
  v46 = (v40 + 32);
  v142 = v41 - 1;
  v143 = v45;
  v144 = v40;
  while (v43 < v41)
  {
    v149 = v43;
    v48 = v46[1];
    v47 = v46[2];
    v49 = *(v46 + 41);
    v148 = v46;
    v50 = *v46;
    *&v154[9] = v49;
    v153 = v48;
    *v154 = v47;
    v152 = v50;
    v51 = v50;
    v52 = *(v45 + 16);
    v150 = v50;
    if (v52)
    {
      sub_1000BA2CC(&v152, v151);

      v53 = sub_10014EB30(v51, *(&v51 + 1));
      if (v54)
      {
        v55 = *(v45 + 56) + *(v141 + 72) * v53;
        sub_1000ED254();
        sub_10000B7B0();
        sub_100002728(v56, v57, v58, v26);
        sub_1000ED2FC();
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000BA2CC(&v152, v151);
    }

    v59 = v147;
    sub_100007B78();
    sub_100002728(v60, v61, v62, v26);
    v63 = v26[8];
    v64 = type metadata accessor for Date();
    sub_100007B78();
    sub_100002728(v65, v66, v67, v64);
    v68 = v33 + v26[9];
    static Date.distantPast.getter();
    v69 = v26[10];
    sub_100007B78();
    sub_100002728(v70, v71, v72, v64);
    v73 = v26[12];
    sub_100007B78();
    sub_100002728(v74, v75, v76, v64);
    v77 = Dictionary.init(dictionaryLiteral:)();
    v78 = v26[20];
    type metadata accessor for TSDataSyncDatasetMetricsFields(0);
    sub_100007B78();
    sub_100002728(v79, v80, v81, v82);
    *v33 = 0;
    v33[1] = 0xE000000000000000;
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0xE000000000000000;
    v33[6] = 0;
    v33[7] = 0;
    *(v33 + v26[11]) = 0;
    v83 = (v33 + v26[13]);
    *v83 = 0;
    v83[1] = 0;
    v84 = v33 + v26[14];
    *v84 = 0;
    v84[8] = 1;
    v85 = (v33 + v26[15]);
    *v85 = 0;
    v85[1] = 0;
    *(v33 + v26[16]) = 0;
    *(v33 + v26[17]) = 0;
    *(v33 + v26[18]) = v77;
    *(v33 + v26[19]) = _swiftEmptyArrayStorage;
    if (sub_100004DFC(v59, 1, v26) != 1)
    {
      v86 = sub_100004F70();
      sub_100004E24(v86, &qword_1002DBC28, &qword_100232F70);
    }

LABEL_10:
    sub_1000D31EC(v33 + v26[8], v19, &qword_1002DA970, &qword_1002318B0);
    v87 = v26[9];
    v88 = v146;
    v89 = v146[5];
    v90 = type metadata accessor for Date();
    sub_100003BF0(v90);
    (*(v91 + 16))(&v19[v89], v33 + v87);
    v92 = (v33 + v26[13]);
    v93 = *(v33 + v26[19]);
    v94 = *(v33 + v26[17]);
    v95 = *v92;
    v96 = v92[1];
    *&v19[v88[6]] = *(v33 + v26[11]);
    v97 = &v19[v88[7]];
    *v97 = v95;
    *(v97 + 1) = v96;
    v98 = &v19[v88[8]];
    *(v98 + 41) = *&v154[9];
    v99 = *v154;
    *(v98 + 1) = v153;
    *(v98 + 2) = v99;
    *v98 = v152;
    *&v19[v88[9]] = v93;
    v19[v88[10]] = v94;
    sub_1000ED364();
    v100 = v16;
    sub_1000ED254();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v38;
    sub_10014EB30(v150, *(&v51 + 1));
    v103 = *(v38 + 16);
    v104 = (v102 & 1) == 0;
    v105 = v103 + v104;
    if (__OFADD__(v103, v104))
    {
      goto LABEL_21;
    }

    v106 = v102;
    sub_100099DF4(&qword_1002DC258, &qword_100234868);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v105))
    {
      sub_10014EB30(v150, *(&v51 + 1));
      if ((v106 & 1) != (v107 & 1))
      {
        goto LABEL_23;
      }
    }

    v16 = v100;
    if (v106)
    {

      v38 = v151[0];
      sub_1000ED3E8();
      sub_1000ED1BC();
      sub_10000318C();
      sub_1000ED2A4(v19, v108);
      sub_1000ED37C();
    }

    else
    {
      v38 = v151[0];
      *(v151[0] + 8 * (v51 >> 6) + 64) |= 1 << v51;
      v109 = (*(v38 + 48) + 16 * v51);
      *v109 = v150;
      v109[1] = *(&v51 + 1);
      sub_1000ED3E8();
      sub_10000AACC();
      sub_1000ED2FC();
      sub_10000318C();
      sub_1000ED2A4(v19, v110);
      sub_1000ED37C();
      v111 = *(v38 + 16);
      v112 = __OFADD__(v111, 1);
      v113 = v111 + 1;
      if (v112)
      {
        goto LABEL_22;
      }

      *(v38 + 16) = v113;
    }

    v45 = v143;
    if (v142 == v149)
    {
      goto LABEL_19;
    }

    v41 = *(v144 + 16);
    v46 = v148 + 4;
    v43 = v149 + 1;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E9504@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v188 = a3;
  v179 = a2;
  v173 = a4;
  v170 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  v7 = sub_10000307C(v170);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v171 = &v168 - v10;
  sub_100013FAC();
  v11 = type metadata accessor for Date();
  v12 = sub_100003724(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v17);
  v18 = sub_100002878();
  v187 = type metadata accessor for TSDataSyncDatasetSchedule(v18);
  v19 = sub_100003724(v187);
  v184 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_1000037D4();
  v196 = v23;
  sub_100005238();
  __chkstk_darwin(v24);
  sub_10000D478();
  v183 = v25;
  v26 = sub_100099DF4(&qword_1002DC210, &qword_100234838);
  v27 = sub_1000030B8(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_1000037D4();
  v191 = v30;
  sub_100005238();
  __chkstk_darwin(v31);
  sub_10000D478();
  v190 = v32;
  v33 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v34 = sub_1000030B8(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v37);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v38);
  v40 = &v168 - v39;
  __chkstk_darwin(v41);
  v43 = &v168 - v42;
  __chkstk_darwin(v44);
  sub_100008AB0();
  __chkstk_darwin(v45);
  v199 = &_swiftEmptySetSingleton;
  v192 = &v168 - v46;
  sub_100007B78();
  sub_100002728(v47, v48, v49, v11);
  v193 = v4;
  sub_100007B78();
  v189 = v11;
  sub_100002728(v50, v51, v52, v11);
  v177 = type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
  v53 = *(v177 + 20);
  v181 = a1;
  v54 = *(a1 + v53);
  v56 = *(v54 + 64);
  v55 = v54 + 64;
  v57 = 1 << *(*(a1 + v53) + 32);
  sub_1000069C0();
  v60 = v59 & v58;
  v62 = (v61 + 63) >> 6;
  v176 = (v14 + 32);
  v174 = (v14 + 8);
  v194 = v14 + 16;
  v185 = v63;

  v65 = 0;
  v182 = v43;
  v180 = v55;
  v186 = v62;
  v175 = v5;
  v178 = v40;
  while (v60)
  {
    v66 = v65;
    v67 = v189;
LABEL_9:
    v70 = __clz(__rbit64(v60));
    v60 &= v60 - 1;
    v71 = *(v185 + 56);
    v72 = (*(v185 + 48) + 16 * (v70 | (v66 << 6)));
    v74 = *v72;
    v73 = v72[1];
    v75 = *(v184 + 72);
    sub_1000ED254();
    v76 = sub_100099DF4(&qword_1002DC218, &unk_100237580);
    v77 = *(v76 + 48);
    v78 = v191;
    *v191 = v74;
    v78[1] = v73;
    v69 = v78;
    sub_100006D04();
    sub_1000ED2FC();
    sub_10000B7B0();
    sub_100002728(v79, v80, v81, v76);

    v68 = v190;
LABEL_10:
    sub_1000D3234(v69, v68, &qword_1002DC210, &qword_100234838);
    v82 = sub_100002E54();
    v84 = sub_100099DF4(v82, v83);
    v85 = sub_10000A218();
    if (sub_100004DFC(v85, v86, v84) == 1)
    {

      v136 = v193;
      v137 = v172;
      sub_1000D31EC(v193, v172, &qword_1002DA970, &qword_1002318B0);
      if (sub_100004DFC(v137, 1, v67) == 1)
      {
        sub_100013FF0();
        sub_100004E24(v138, v139, v140);
        sub_100013FF0();
        sub_100004E24(v141, v142, v143);
        v144 = 0;
        v145 = v173;
LABEL_50:
        *v145 = v199;
        v167 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
        result = sub_1000D3234(v192, v145 + *(v167 + 20), &qword_1002DA970, &qword_1002318B0);
        *(v145 + *(v167 + 24)) = v144 & 1;
        return result;
      }

      sub_100013FF0();
      sub_100004E24(v146, v147, v148);
      v149 = *(v170 + 48);
      sub_100013DF4(&v200);
      sub_10000F3D0();
      sub_1000D31EC(v150, v151, v152, v153);
      sub_10000F3D0();
      sub_1000D31EC(v154, v155, v156, v157);
      sub_10000AF94(&unk_100237580);
      v145 = v173;
      if (v127)
      {
        sub_100004E24(v136, &qword_1002DA970, &qword_1002318B0);
        sub_10000AF94(&unk_100237580 + v149);
        if (v127)
        {
          sub_100004E24(&unk_100237580, &qword_1002DA970, &qword_1002318B0);
          v144 = 1;
          goto LABEL_50;
        }
      }

      else
      {
        v158 = v169;
        sub_1000D31EC(&unk_100237580, v169, &qword_1002DA970, &qword_1002318B0);
        sub_10000AF94(&unk_100237580 + v149);
        if (!v159)
        {
          sub_100008AA4(&v202);
          v161 = &unk_100237580 + v149;
          v162 = v168;
          v163(v168, v161, v67);
          sub_1000052BC();
          sub_1000ED20C(v164, v165);
          v144 = dispatch thunk of static Equatable.== infix(_:_:)();
          v166 = *v174;
          (*v174)(v162, v67);
          sub_100004E24(v136, &qword_1002DA970, &qword_1002318B0);
          v166(v158, v67);
          sub_100004E24(&unk_100237580, &qword_1002DA970, &qword_1002318B0);
          goto LABEL_50;
        }

        sub_100004E24(v136, &qword_1002DA970, &qword_1002318B0);
        sub_100008AA4(&v201);
        v160(v158, v67);
      }

      sub_100004E24(&unk_100237580, &qword_1002DACF0, &qword_100232140);
      v144 = 0;
      goto LABEL_50;
    }

    v87 = v68[1];
    v197 = *v68;
    v88 = *(v84 + 48);
    sub_100006D04();
    sub_1000ED2FC();
    v89 = *(v187 + 20);
    sub_1000052BC();
    sub_1000ED20C(&qword_1002DB968, v90);
    v195 = v89;
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v91 = v178;
      sub_1000D31EC(v192, v178, &qword_1002DA970, &qword_1002318B0);
      sub_10000AF94(v91);
      v92 = v182;
      if (v127)
      {
        sub_100013FF0();
        sub_100004E24(v93, v94, v95);
        sub_100013FF0();
        sub_100004E24(v96, v97, v98);
LABEL_21:
        sub_1000109D4();
        v110(v92);
        goto LABEL_22;
      }

      v100 = v192;
      v101 = *v176;
      v102 = v67;
      v103 = v175;
      (*v176)(v175, v91, v102);
      v104 = static Date.< infix(_:_:)();
      sub_100004E24(v100, &qword_1002DA970, &qword_1002318B0);
      if ((v104 & 1) == 0)
      {
        sub_100008AA4(&v201);
        v109(v103, v102);
        v67 = v102;
        v92 = v182;
        v55 = v180;
        goto LABEL_21;
      }

      v101(v182, v103, v102);
      v67 = v102;
      v55 = v180;
LABEL_22:
      v111 = sub_100008D74();
      sub_100002728(v111, v112, v113, v67);
      sub_10000F3D0();
      sub_1000D3234(v114, v115, v116, v117);
      sub_10000BCD4();
      v119 = *(v118 + 168);
      if (v119)
      {
        v120 = v67;
        v121 = *(v119 + 16);
        if (v121)
        {
          v122 = *v181;
          v123 = v181[1];
          v124 = (v119 + 56);
          do
          {
            v125 = *(v124 - 1);
            v126 = *v124;
            v127 = v122 == *(v124 - 3) && v123 == *(v124 - 2);
            if (v127 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v128 = v197 == v125 && v87 == v126;
              if (v128 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v129 = v193;
                sub_100004E24(v193, &qword_1002DA970, &qword_1002318B0);
                sub_1000109D4();
                v130(v129);
                sub_10000B7B0();
                sub_100002728(v131, v132, v133, v120);
              }
            }

            v124 += 4;
            --v121;
          }

          while (v121);
        }

        sub_100003884();
        result = sub_1000ED2A4(v196, v134);
        v55 = v180;
        v62 = v186;
      }

      else
      {
LABEL_38:
        sub_100003884();
        sub_1000ED2A4(v196, v135);

        v62 = v186;
      }
    }

    else
    {
      if (v199[2] >= *(v181 + *(v177 + 28)))
      {
        goto LABEL_38;
      }

      sub_1000EAC8C(&v198, v197, v87);

      sub_100003884();
      result = sub_1000ED2A4(v196, v99);
      v62 = v186;
    }
  }

  v68 = v190;
  v69 = v191;
  v67 = v189;
  while (1)
  {
    v66 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v66 >= v62)
    {
      sub_100099DF4(&qword_1002DC218, &unk_100237580);
      sub_100007B78();
      sub_100002728(v105, v106, v107, v108);
      v60 = 0;
      goto LABEL_10;
    }

    v60 = *(v55 + 8 * v66);
    ++v65;
    if (v60)
    {
      v65 = v66;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E9FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v86 = a3;
  v7 = sub_100099DF4(&qword_1002DC208, &qword_100234830);
  v8 = sub_1000030B8(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000037D4();
  v83 = v11;
  sub_100005238();
  __chkstk_darwin(v12);
  sub_1000ED438();
  __chkstk_darwin(v13);
  sub_1000ED424();
  __chkstk_darwin(v14);
  v16 = &v79 - v15;
  v17 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v18 = sub_1000030B8(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_1000037D4();
  v82 = v21;
  sub_100005238();
  __chkstk_darwin(v22);
  v24 = &v79 - v23;
  __chkstk_darwin(v25);
  sub_100008AB0();
  __chkstk_darwin(v26);
  v28 = &v79 - v27;
  v29 = type metadata accessor for Date();
  v30 = sub_100003724(v29);
  v81 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_10000308C();
  v36 = (v34 - v35);
  __chkstk_darwin(v37);
  v39 = &v79 - v38;
  v84 = a1;
  sub_1000D31EC(a1, v16, &qword_1002DC208, &qword_100234830);
  v40 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  sub_10000AF94(v16);
  if (v45)
  {
    sub_100004E24(v16, &qword_1002DC208, &qword_100234830);
    sub_100007B78();
    sub_100002728(v41, v42, v43, v29);
LABEL_6:
    v4 = v28;
    v65 = v85;
    goto LABEL_7;
  }

  sub_1000D31EC(&v16[*(v40 + 20)], v28, &qword_1002DA970, &qword_1002318B0);
  sub_100007270();
  sub_1000ED2A4(v16, v44);
  sub_100010DCC(v28);
  if (v45)
  {
    goto LABEL_6;
  }

  v80 = *(v81 + 32);
  v80(v39, v28, v29);
  v65 = v85;
  sub_1000D31EC(v85, v3, &qword_1002DC208, &qword_100234830);
  sub_10000AF94(v3);
  if (v66)
  {
    sub_100004E24(v3, &qword_1002DC208, &qword_100234830);
    sub_100007B78();
    sub_100002728(v67, v68, v69, v29);
  }

  else
  {
    sub_1000D31EC(v3 + *(v40 + 20), v4, &qword_1002DA970, &qword_1002318B0);
    sub_100007270();
    sub_1000ED2A4(v3, v71);
    sub_100010DCC(v4);
    if (!v72)
    {
      v80(v36, v4, v29);
      v76 = static Date.< infix(_:_:)();
      v77 = *(v81 + 8);
      v77(v36, v29);
      v78 = sub_100005CD0();
      (v77)(v78);
      if (v76)
      {
        v70 = v84;
        return sub_1000D31EC(v70, v86, &qword_1002DC208, &qword_100234830);
      }

      goto LABEL_21;
    }
  }

  v73 = *(v81 + 8);
  v74 = sub_100005CD0();
  v75(v74);
LABEL_7:
  sub_100004E24(v4, &qword_1002DA970, &qword_1002318B0);
  v46 = v84;
  sub_1000D31EC(v84, v5, &qword_1002DC208, &qword_100234830);
  sub_10000AF94(v5);
  if (v45)
  {
    sub_100004E24(v5, &qword_1002DC208, &qword_100234830);
    sub_100007B78();
    sub_100002728(v47, v48, v49, v29);
    goto LABEL_12;
  }

  sub_1000D31EC(v5 + *(v40 + 20), v24, &qword_1002DA970, &qword_1002318B0);
  sub_100007270();
  sub_1000ED2A4(v5, v50);
  sub_100010DCC(v24);
  if (v51)
  {
LABEL_12:
    sub_100004E24(v24, &qword_1002DA970, &qword_1002318B0);
    v52 = v83;
    sub_1000D31EC(v65, v83, &qword_1002DC208, &qword_100234830);
    sub_10000AF94(v52);
    if (v45)
    {
      sub_100004E24(v52, &qword_1002DC208, &qword_100234830);
      v56 = v82;
      sub_100007B78();
      sub_100002728(v53, v54, v55, v29);
    }

    else
    {
      v56 = v82;
      sub_1000D31EC(v52 + *(v40 + 20), v82, &qword_1002DA970, &qword_1002318B0);
      sub_100007270();
      sub_1000ED2A4(v52, v57);
      v58 = sub_10000A218();
      v60 = sub_100004DFC(v58, v59, v29);
      if (v60 != 1)
      {
        sub_100004E24(v56, &qword_1002DA970, &qword_1002318B0);
LABEL_21:
        v70 = v65;
        return sub_1000D31EC(v70, v86, &qword_1002DC208, &qword_100234830);
      }
    }

    sub_100004E24(v56, &qword_1002DA970, &qword_1002318B0);
    sub_100007B78();
    return sub_100002728(v61, v62, v63, v40);
  }

  sub_100004E24(v24, &qword_1002DA970, &qword_1002318B0);
  v70 = v46;
  return sub_1000D31EC(v70, v86, &qword_1002DC208, &qword_100234830);
}

uint64_t sub_1000EA578(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100234820;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1000EA5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v5 = sub_100003724(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000308C();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  sub_10000D478();
  v45 = v14;
  v46 = v2;
  v15 = *v2;
  v16 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v17 = *(a2 + 16);
  v55 = *a2;
  v56 = v17;
  v57 = *(a2 + 32);
  sub_1000B72B8();
  v18 = *(v4 + 20);
  type metadata accessor for URL();
  sub_1000ED20C(&qword_1002DAC98, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v48 = a2;
  v47 = *(a2 + *(v4 + 24));
  sub_10011404C(v54, v47);
  v19 = Hasher._finalize()();
  v20 = -1 << *(v15 + 32);
  v21 = v19 & ~v20;
  if ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v52 = ~v20;
    v22 = v56;
    v23 = v55;
    v50 = v57;
    v51 = *(&v56 + 1);
    v53 = *(v7 + 72);
    v49 = v56;
    do
    {
      v24 = *(v15 + 48);
      sub_100004580();
      sub_1000ED254();
      v25 = *(v12 + 16);
      v26 = *(v12 + 24);
      v27 = *(v12 + 32);
      v28 = *v12 == v23 && *(v12 + 8) == *(&v23 + 1);
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_40;
      }

      v29 = 0x4449746E65696C63;
      if (v25 == 1)
      {
        v29 = 0x444972657375;
      }

      v30 = 0xE600000000000000;
      if (v25 != 1)
      {
        v30 = 0xE800000000000000;
      }

      if (v25)
      {
        v31 = v29;
      }

      else
      {
        v31 = 1684632420;
      }

      if (v25)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xE400000000000000;
      }

      if (v22)
      {
        if (v22 == 1)
        {
          v33 = 0x444972657375;
        }

        else
        {
          v33 = 0x4449746E65696C63;
        }

        if (v22 == 1)
        {
          v34 = 0xE600000000000000;
        }

        else
        {
          v34 = 0xE800000000000000;
        }
      }

      else
      {
        v34 = 0xE400000000000000;
        v33 = 1684632420;
      }

      if (v31 == v33 && v32 == v34)
      {

        v22 = v49;
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v22 = v49;
        if ((v36 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v37 = v26 == v51 && v27 == v50;
      if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_10000BCD4();
        v39 = v12 + *(v38 + 20);
        if (static URL.== infix(_:_:)())
        {
          sub_10000BCD4();
          if (sub_100143328(*(v12 + *(v40 + 24)), v47))
          {
            sub_1000ED2A4(v12, type metadata accessor for TSDataSyncDatasetGroupConfig);
            sub_1000ED2A4(v48, type metadata accessor for TSDataSyncDatasetGroupConfig);
            v44 = *(v15 + 48);
            sub_100004580();
            sub_1000ED254();
            return 0;
          }
        }
      }

LABEL_40:
      sub_1000ED2A4(v12, type metadata accessor for TSDataSyncDatasetGroupConfig);
      v21 = (v21 + 1) & v52;
    }

    while (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
  }

  v41 = *v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100004580();
  sub_1000ED254();
  v54[0] = *v46;
  sub_1000EB8A8(v45, v21, isUniquelyReferenced_nonNull_native);
  *v46 = v54[0];
  sub_1000ED2FC();
  return 1;
}

BOOL sub_1000EAA70(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_1000EBD30(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_1000EABBC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = static Hasher._hash(seed:_:)();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_1000EBE98(a2, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_1000EAC8C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_1000EBF9C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_1000EADD8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100099DF4(&qword_1002DC260, &qword_100234870);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v40 = v2;
  v41 = v8;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v20 = v13[v12];
      ++v19;
      if (v20)
      {
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v39 = 1 << *(v8 + 32);
    if (v39 >= 64)
    {
      sub_1000EA578(0, (v39 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v39;
    }

    v2 = v40;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v16 &= v16 - 1;
LABEL_14:
    v21 = *(v8 + 48);
    v44 = *(v42 + 72);
    sub_1000ED2FC();
    v22 = *(v11 + 40);
    Hasher.init(_seed:)();
    v23 = *v7;
    v24 = *(v7 + 1);
    v25 = v7[16];
    v26 = *(v7 + 3);
    v27 = *(v7 + 4);
    String.hash(into:)();
    String.hash(into:)();

    String.hash(into:)();
    v28 = v43;
    v29 = *(v43 + 20);
    type metadata accessor for URL();
    sub_1000ED20C(&qword_1002DAC98, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    sub_10011404C(v45, *&v7[*(v28 + 24)]);
    result = Hasher._finalize()();
    v30 = -1 << *(v11 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v8 = v41;
LABEL_23:
    *(v18 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v38 = *(v11 + 48) + v33 * v44;
    result = sub_1000ED2FC();
    ++*(v11 + 16);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v34 = 0;
  v35 = (63 - v30) >> 6;
  v8 = v41;
  while (++v32 != v35 || (v34 & 1) == 0)
  {
    v36 = v32 == v35;
    if (v32 == v35)
    {
      v32 = 0;
    }

    v34 |= v36;
    v37 = *(v18 + 8 * v32);
    if (v37 != -1)
    {
      v33 = __clz(__rbit64(~v37)) + (v32 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000EB1CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100099DF4(&qword_1002DC268, &qword_100234878);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1000EA578(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000EB428(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100099DF4(&qword_1002DC270, &qword_100234880);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_1000EA578(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = static Hasher._hash(seed:_:)();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000EB64C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100099DF4(&qword_1002DC220, &qword_100234840);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1000EA578(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000EB8A8(__int128 *a1, unint64_t a2, char a3)
{
  v49 = a1;
  v50 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v50);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v47 = v3;
  v46 = v6;
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000EADD8(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_1000EC104();
        goto LABEL_48;
      }

      sub_1000EC6FC(v10 + 1);
    }

    v12 = *v3;
    v13 = *(*v3 + 40);
    Hasher.init(_seed:)();
    v14 = v49;
    v15 = v49[1];
    v58 = *v49;
    v59 = v15;
    v60 = *(v49 + 4);
    sub_1000B72B8();
    v16 = v50;
    v17 = *(v50 + 20);
    type metadata accessor for URL();
    sub_1000ED20C(&qword_1002DAC98, &type metadata accessor for URL);
    v48 = v17;
    dispatch thunk of Hashable.hash(into:)();
    v45 = *(v14 + *(v16 + 24));
    sub_10011404C(v57, v45);
    v18 = Hasher._finalize()();
    v19 = v12 + 56;
    v55 = v12 + 56;
    v56 = v12;
    v20 = -1 << *(v12 + 32);
    a2 = v18 & ~v20;
    if ((*(v19 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v54 = ~v20;
      v21 = v59;
      v22 = v58;
      v51 = v60;
      v52 = *(&v59 + 1);
      v53 = *(v6 + 72);
      do
      {
        v23 = *(v56 + 48);
        sub_1000ED254();
        v24 = v9[16];
        v26 = *(v9 + 3);
        v25 = *(v9 + 4);
        v27 = *v9 == v22 && *(v9 + 1) == *(&v22 + 1);
        if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_47;
        }

        v28 = 0x4449746E65696C63;
        if (v24 == 1)
        {
          v28 = 0x444972657375;
        }

        v29 = 0xE600000000000000;
        if (v24 != 1)
        {
          v29 = 0xE800000000000000;
        }

        if (v24)
        {
          v30 = v28;
        }

        else
        {
          v30 = 1684632420;
        }

        if (v24)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0xE400000000000000;
        }

        if (v21)
        {
          if (v21 == 1)
          {
            v32 = 0x444972657375;
          }

          else
          {
            v32 = 0x4449746E65696C63;
          }

          if (v21 == 1)
          {
            v33 = 0xE600000000000000;
          }

          else
          {
            v33 = 0xE800000000000000;
          }
        }

        else
        {
          v33 = 0xE400000000000000;
          v32 = 1684632420;
        }

        if (v30 == v32 && v31 == v33)
        {
        }

        else
        {
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v35 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v36 = v26 == v52 && v25 == v51;
        if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v37 = &v9[*(v50 + 20)];
          if (static URL.== infix(_:_:)() & 1) != 0 && (sub_100143328(*&v9[*(v50 + 24)], v45))
          {
            goto LABEL_51;
          }
        }

LABEL_47:
        sub_1000ED2A4(v9, type metadata accessor for TSDataSyncDatasetGroupConfig);
        a2 = (a2 + 1) & v54;
      }

      while (((*(v55 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_48:
  v38 = *v47;
  *(*v47 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v39 = *(v38 + 48) + *(v46 + 72) * a2;
  result = sub_1000ED2FC();
  v41 = *(v38 + 16);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
LABEL_51:
    sub_1000ED2A4(v9, type metadata accessor for TSDataSyncDatasetGroupConfig);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v43;
  }

  return result;
}

Swift::Int sub_1000EBD30(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1000EB1CC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1000ECAC0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1000EC30C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1000EBE98(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000EB428(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1000ECCF4(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = static Hasher._hash(seed:_:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1000EC464();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

Swift::Int sub_1000EBF9C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1000EB64C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1000ECEE0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1000EC5A4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1000EC104()
{
  v1 = v0;
  v2 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100099DF4(&qword_1002DC260, &qword_100234870);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 56 + 8 * v9)
    {
      result = memmove(result, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 56);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = *(v5 + 48);
        v21 = *(v3 + 72) * (v17 | (v11 << 6));
        sub_1000ED254();
        v22 = *(v7 + 48);
        result = sub_1000ED2FC();
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v7;
  }

  return result;
}

void *sub_1000EC30C()
{
  v1 = v0;
  sub_100099DF4(&qword_1002DC268, &qword_100234878);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

void *sub_1000EC464()
{
  v1 = v0;
  sub_100099DF4(&qword_1002DC270, &qword_100234880);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_1000EC5A4()
{
  v1 = v0;
  sub_100099DF4(&qword_1002DC220, &qword_100234840);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_1000EC6FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100099DF4(&qword_1002DC260, &qword_100234870);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    if (v16)
    {
      while (1)
      {
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v8 + 48);
        v43 = *(v41 + 72);
        sub_1000ED254();
        v22 = *(v11 + 40);
        Hasher.init(_seed:)();
        v23 = *v7;
        v24 = *(v7 + 1);
        v25 = v7[16];
        v26 = *(v7 + 3);
        v27 = *(v7 + 4);
        String.hash(into:)();
        String.hash(into:)();

        String.hash(into:)();
        v28 = v42;
        v29 = *(v42 + 20);
        type metadata accessor for URL();
        sub_1000ED20C(&qword_1002DAC98, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        sub_10011404C(v44, *&v7[*(v28 + 24)]);
        result = Hasher._finalize()();
        v30 = -1 << *(v11 + 32);
        v31 = result & ~v30;
        v32 = v31 >> 6;
        if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
        {
          break;
        }

        v33 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
        v8 = v40;
LABEL_23:
        *(v18 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        v38 = *(v11 + 48) + v33 * v43;
        result = sub_1000ED2FC();
        ++*(v11 + 16);
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v34 = 0;
      v35 = (63 - v30) >> 6;
      v8 = v40;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v18 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v19 = v12;
      while (1)
      {
        v12 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v39;
          goto LABEL_27;
        }

        v20 = *(v13 + 8 * v12);
        ++v19;
        if (v20)
        {
          v16 = (v20 - 1) & v20;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1000ECAC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100099DF4(&qword_1002DC268, &qword_100234878);
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000ECCF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100099DF4(&qword_1002DC270, &qword_100234880);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = static Hasher._hash(seed:_:)();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000ECEE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100099DF4(&qword_1002DC220, &qword_100234840);
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_1000ED168()
{
  result = qword_1002DC248;
  if (!qword_1002DC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC248);
  }

  return result;
}

uint64_t sub_1000ED1BC()
{
  v1 = sub_10000C62C();
  v3 = v2(v1);
  sub_100003BF0(v3);
  v5 = *(v4 + 40);
  v6 = sub_1000050CC();
  v7(v6);
  return v0;
}

uint64_t sub_1000ED20C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000ED254()
{
  v1 = sub_10000C62C();
  v3 = v2(v1);
  sub_100003BF0(v3);
  v5 = *(v4 + 16);
  v6 = sub_1000050CC();
  v7(v6);
  return v0;
}

uint64_t sub_1000ED2A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000ED2FC()
{
  v1 = sub_10000C62C();
  v3 = v2(v1);
  sub_100003BF0(v3);
  v5 = *(v4 + 32);
  v6 = sub_1000050CC();
  v7(v6);
  return v0;
}

uint64_t sub_1000ED37C()
{

  return sub_1000ED2A4(v0, type metadata accessor for TSDataSyncDatasetState);
}

uint64_t sub_1000ED3C0()
{
  result = *(v0 + 32);
  v2 = *(v0 + 80);
  return result;
}

uint64_t sub_1000ED400(uint64_t a1)
{

  return sub_100004E24(a1, v1, v2);
}

unint64_t sub_1000ED460()
{
  result = qword_1002DC278;
  if (!qword_1002DC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC278);
  }

  return result;
}

void sub_1000ED4B4()
{
  sub_100004168();
  v3 = sub_1000F8350();
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v9);
  v11 = *(v10 + 64);
  sub_100003774();
  __chkstk_darwin(v12);
  sub_100004880();
  v13 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C(v13);
  v15 = *(v14 + 64);
  sub_100003774();
  __chkstk_darwin(v16);
  sub_1000AC3B8();
  if ((sub_1000B940C(*v1, *v0) & 1) == 0)
  {
    goto LABEL_11;
  }

  v32 = v6;
  v31 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  v17 = *(v31 + 20);
  v18 = *(v13 + 48);
  sub_1000F83F8();
  sub_1000F83D8();
  sub_1000071D8(v2);
  if (v19)
  {
    sub_1000071D8(v2 + v18);
    if (v19)
    {
      sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
LABEL_13:
      v30 = *(v1 + *(v31 + 24)) ^ *(v0 + *(v31 + 24)) ^ 1u;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_10000B80C();
  sub_10003D1E4();
  sub_1000071D8(v2 + v18);
  if (v19)
  {
    v20 = sub_1000F828C();
    v21(v20, v3);
LABEL_10:
    sub_100004E24(v2, &qword_1002DACF0, &qword_100232140);
    goto LABEL_11;
  }

  sub_100002E60();
  v22 = sub_1000035AC();
  v23(v22);
  sub_100004AC4();
  sub_1000F5EC0(v24, v25);
  v26 = sub_100010DEC();
  v27 = *(v32 + 8);
  v28 = sub_1000049C0();
  v27(v28);
  v29 = sub_1000B31F0();
  v27(v29);
  sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
  if (v26)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_1000027F8();
}

void sub_1000ED73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v23;
  a20 = v24;
  v25 = sub_1000F82F8();
  v26 = sub_100003724(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_10000306C();
  sub_1000AC3B8();
  v31 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v31);
  v33 = *(v32 + 64);
  sub_100003774();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  sub_1000A92EC(v20, *v21);
  v37 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  v38 = *(v37 + 20);
  sub_10003D1E4();
  sub_10000B3A0(v36, 1, v25);
  if (v39)
  {
    sub_100008C3C();
  }

  else
  {
    v40 = sub_1000F82B0(v28);
    v41(v40);
    sub_100005C20();
    sub_100004AC4();
    sub_1000F5EC0(v42, v43);
    sub_100004218();
    (*(v28 + 8))(v22, v25);
  }

  Hasher._combine(_:)(*(v21 + *(v37 + 24)));
  sub_1000027F8();
}

uint64_t sub_1000ED8C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000100273890 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6970784561746164 && a2 == 0xEB00000000646572;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6168436C61636F6CLL && a2 == 0xEB0000000065676ELL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4674736575716572 && a2 == 0xED000064656C6961;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x70556D6574737973 && a2 == 0xEC00000065746164;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6843616D65686373 && a2 == 0xEC00000065676E61;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E696C6C6F70 && a2 == 0xE700000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656C756465686373 && a2 == 0xE900000000000064;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x646563726F66 && a2 == 0xE600000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6C6F486563616C70 && a2 == 0xEB00000000726564;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x79536C61756E616DLL && a2 == 0xEA0000000000636ELL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000011 && 0x80000001002738B0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x4950416C61636F6CLL && a2 == 0xE800000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
}

unint64_t sub_1000EDCE4(char a1)
{
  result = 0x6970784561746164;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6168436C61636F6CLL;
      break;
    case 3:
      result = 0x4674736575716572;
      break;
    case 4:
      result = 0x70556D6574737973;
      break;
    case 5:
      result = 0x6843616D65686373;
      break;
    case 6:
      result = 0x676E696C6C6F70;
      break;
    case 7:
      result = 0x656C756465686373;
      break;
    case 8:
      result = 0x646563726F66;
      break;
    case 9:
      result = 0x6C6F486563616C70;
      break;
    case 10:
      result = 0x79536C61756E616DLL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x4950416C61636F6CLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1000EDE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  a26 = v28;
  a27 = v29;
  v143 = v30;
  v31 = sub_100099DF4(&qword_1002DC368, &qword_1002349F0);
  v32 = sub_100003724(v31);
  v141 = v33;
  v142 = v32;
  v35 = *(v34 + 64);
  sub_100003774();
  __chkstk_darwin(v36);
  sub_100003018();
  sub_1000F83CC(v37);
  v38 = sub_100099DF4(&qword_1002DC370, &qword_1002349F8);
  v39 = sub_100003724(v38);
  v138 = v40;
  v139 = v39;
  v42 = *(v41 + 64);
  sub_100003774();
  __chkstk_darwin(v43);
  sub_100003018();
  sub_100003E9C(v44);
  v45 = sub_100099DF4(&qword_1002DC378, &qword_100234A00);
  v46 = sub_100003724(v45);
  v136 = v47;
  v137 = v46;
  v49 = *(v48 + 64);
  sub_100003774();
  __chkstk_darwin(v50);
  sub_1000F8278(v51, v128[0]);
  v52 = sub_100099DF4(&qword_1002DC380, &qword_100234A08);
  v53 = sub_100003724(v52);
  v134 = v54;
  v135 = v53;
  v56 = *(v55 + 64);
  sub_100003774();
  __chkstk_darwin(v57);
  sub_100003018();
  v133 = v58;
  v59 = sub_100099DF4(&qword_1002DC388, &qword_100234A10);
  v60 = sub_100003724(v59);
  v131 = v61;
  v132 = v60;
  v63 = *(v62 + 64);
  sub_100003774();
  __chkstk_darwin(v64);
  sub_100003018();
  v130 = v65;
  v129 = sub_100099DF4(&qword_1002DC390, &qword_100234A18);
  sub_100003724(v129);
  v128[19] = v66;
  v68 = *(v67 + 64);
  sub_100003774();
  __chkstk_darwin(v69);
  sub_100003018();
  sub_10000A1C0(v70);
  v71 = sub_100099DF4(&qword_1002DC398, &qword_100234A20);
  sub_100007F90(v71, &a23);
  v128[16] = v72;
  v74 = *(v73 + 64);
  sub_100003774();
  __chkstk_darwin(v75);
  sub_100003018();
  sub_10000A1C0(v76);
  v77 = sub_100099DF4(&qword_1002DC3A0, &qword_100234A28);
  sub_100007F90(v77, &a20);
  v128[13] = v78;
  v80 = *(v79 + 64);
  sub_100003774();
  __chkstk_darwin(v81);
  sub_100003018();
  sub_10000A1C0(v82);
  v83 = sub_100099DF4(&qword_1002DC3A8, &qword_100234A30);
  sub_100007F90(v83, &a10);
  v128[10] = v84;
  v86 = *(v85 + 64);
  sub_100003774();
  __chkstk_darwin(v87);
  sub_100003018();
  sub_10000A1C0(v88);
  v89 = sub_100099DF4(&qword_1002DC3B0, &qword_100234A38);
  sub_100007F90(v89, v147);
  v128[7] = v90;
  v92 = *(v91 + 64);
  sub_100003774();
  __chkstk_darwin(v93);
  sub_100003018();
  sub_10000A1C0(v94);
  v95 = sub_100099DF4(&qword_1002DC3B8, &qword_100234A40);
  sub_100007F90(v95, &v144);
  v128[4] = v96;
  v98 = *(v97 + 64);
  sub_100003774();
  __chkstk_darwin(v99);
  sub_100003018();
  sub_10000A1C0(v100);
  v101 = sub_100099DF4(&qword_1002DC3C0, &qword_100234A48);
  sub_100003724(v101);
  v128[2] = v102;
  v104 = *(v103 + 64);
  sub_100003774();
  __chkstk_darwin(v105);
  v107 = v128 - v106;
  v108 = sub_100099DF4(&qword_1002DC3C8, &qword_100234A50);
  sub_100003724(v108);
  v128[1] = v109;
  v111 = *(v110 + 64);
  sub_100003774();
  __chkstk_darwin(v112);
  sub_100004880();
  v145 = sub_100099DF4(&qword_1002DC3D0, &qword_100234A58);
  sub_100003724(v145);
  v114 = v113;
  v116 = *(v115 + 64);
  sub_100003774();
  __chkstk_darwin(v117);
  sub_10000AF24();
  sub_100002810();
  sub_1000F239C();
  v144 = v27;
  sub_10000A484();
  v118 = (v114 + 8);
  switch(v143)
  {
    case 1:
      v147[4] = 1;
      sub_1000F5168();
      sub_10003CF68();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000EDE8(&v141);
      v123(v107, v101);
      v124 = *v118;
      v125 = sub_10000DBC0();
      goto LABEL_18;
    case 2:
      v147[5] = 2;
      sub_1000F5114();
      sub_100007288(&v142);
      v119 = sub_1000069D4(&v143);
      v122 = &v144;
      goto LABEL_13;
    case 3:
      v147[6] = 3;
      sub_1000F50C0();
      sub_100007288(&v145);
      v119 = sub_1000069D4(&v146);
      v122 = v147;
      goto LABEL_13;
    case 4:
      v147[7] = 4;
      sub_1000F506C();
      sub_100007288(&v148);
      v119 = sub_1000069D4(&a9);
      v122 = &a10;
      goto LABEL_13;
    case 5:
      a10 = 5;
      sub_1000F5018();
      sub_100007288(&a18);
      v119 = sub_1000069D4(&a19);
      v122 = &a20;
      goto LABEL_13;
    case 6:
      a11 = 6;
      sub_1000F4FC4();
      sub_100007288(&a21);
      v119 = sub_1000069D4(&a22);
      v122 = &a23;
LABEL_13:
      v121 = *(v122 - 32);
      break;
    case 7:
      a12 = 7;
      sub_1000F4F70();
      sub_100007288(&a24);
      v119 = sub_1000069D4(&a25);
      v121 = v129;
      break;
    case 8:
      a13 = 8;
      sub_1000F4F1C();
      sub_100008304();
      goto LABEL_16;
    case 9:
      a14 = 9;
      sub_1000F4EC8();
      sub_100008304();
      goto LABEL_16;
    case 10:
      a15 = 10;
      sub_1000F4E74();
      sub_100008304();
      goto LABEL_16;
    case 11:
      a16 = 11;
      sub_1000F4E20();
      sub_100008304();
      goto LABEL_16;
    case 12:
      a17 = 12;
      sub_1000F4DCC();
      sub_100008304();
LABEL_16:
      v119 = sub_100008D84();
      break;
    default:
      v147[3] = 0;
      sub_1000F51BC();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v119 = sub_100003C24(&v140);
      v121 = v108;
      break;
  }

  v120(v119, v121);
  v127 = *v118;
  v125 = sub_1000F8344();
LABEL_18:
  v126(v125);
  sub_100005074();
}

void sub_1000EE7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  a26 = v30;
  a27 = v31;
  v184 = v27;
  v33 = v32;
  v179 = sub_100099DF4(&qword_1002DC280, &qword_100234978);
  sub_100003724(v179);
  v174 = v34;
  v36 = *(v35 + 64);
  sub_100003774();
  __chkstk_darwin(v37);
  sub_100003018();
  sub_1000F83CC(v38);
  v39 = sub_100099DF4(&qword_1002DC288, &qword_100234980);
  v40 = sub_100003724(v39);
  v172 = v41;
  v173 = v40;
  v43 = *(v42 + 64);
  sub_100003774();
  __chkstk_darwin(v44);
  sub_100003018();
  v178[1] = v45;
  v46 = sub_100099DF4(&qword_1002DC290, &qword_100234988);
  v47 = sub_100003724(v46);
  v170 = v48;
  v171 = v47;
  v50 = *(v49 + 64);
  sub_100003774();
  __chkstk_darwin(v51);
  sub_100003018();
  v178[0] = v52;
  v169 = sub_100099DF4(&qword_1002DC298, &qword_100234990);
  sub_100003724(v169);
  v168 = v53;
  v55 = *(v54 + 64);
  sub_100003774();
  __chkstk_darwin(v56);
  sub_100003018();
  sub_100003E9C(v57);
  v58 = sub_100099DF4(&qword_1002DC2A0, &qword_100234998);
  sub_100007F90(v58, &a24);
  v167 = v59;
  v61 = *(v60 + 64);
  sub_100003774();
  __chkstk_darwin(v62);
  sub_100003018();
  v177 = v63;
  v64 = sub_100099DF4(&qword_1002DC2A8, &qword_1002349A0);
  sub_100007F90(v64, &a21);
  v166 = v65;
  v67 = *(v66 + 64);
  sub_100003774();
  __chkstk_darwin(v68);
  sub_100003018();
  v182 = v69;
  v70 = sub_100099DF4(&qword_1002DC2B0, &qword_1002349A8);
  sub_100007F90(v70, &a19);
  v165 = v71;
  v73 = *(v72 + 64);
  sub_100003774();
  __chkstk_darwin(v74);
  sub_100003018();
  v181 = v75;
  v76 = sub_100099DF4(&qword_1002DC2B8, &qword_1002349B0);
  sub_100007F90(v76, &a18);
  v164 = v77;
  v79 = *(v78 + 64);
  sub_100003774();
  __chkstk_darwin(v80);
  sub_100003018();
  v180 = v81;
  v82 = sub_100099DF4(&qword_1002DC2C0, &qword_1002349B8);
  sub_100007F90(v82, &a9);
  v163 = v83;
  v85 = *(v84 + 64);
  sub_100003774();
  __chkstk_darwin(v86);
  sub_100003018();
  v176 = v87;
  v88 = sub_100099DF4(&qword_1002DC2C8, &qword_1002349C0);
  sub_100007F90(v88, v185);
  v162 = v89;
  v91 = *(v90 + 64);
  sub_100003774();
  __chkstk_darwin(v92);
  sub_1000F8278(v93, v154[0]);
  v94 = sub_100099DF4(&qword_1002DC2D0, &qword_1002349C8);
  sub_100007F90(v94, &v183);
  v161 = v95;
  v97 = *(v96 + 64);
  sub_100003774();
  __chkstk_darwin(v98);
  sub_100003018();
  v175 = v99;
  v100 = sub_100099DF4(&qword_1002DC2D8, &qword_1002349D0);
  sub_100007F90(v100, &v181);
  v160 = v101;
  v103 = *(v102 + 64);
  sub_100003774();
  __chkstk_darwin(v104);
  v106 = v154 - v105;
  v107 = sub_100099DF4(&qword_1002DC2E0, &qword_1002349D8);
  sub_100003724(v107);
  v159 = v108;
  v110 = *(v109 + 64);
  sub_100003774();
  __chkstk_darwin(v111);
  sub_100004880();
  v112 = sub_100099DF4(&qword_1002DC2E8, &unk_1002349E0);
  sub_100003724(v112);
  v114 = v113;
  v116 = *(v115 + 64);
  sub_100003774();
  __chkstk_darwin(v117);
  sub_10000AF24();
  v118 = v33[3];
  v119 = v33[4];
  v183 = v33;
  v120 = sub_1000F8344();
  sub_10000C4FC(v120, v121);
  sub_1000F239C();
  v122 = v184;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v122)
  {
    goto LABEL_9;
  }

  v157 = v29;
  v156 = v107;
  v158 = v106;
  v123 = v181;
  v124 = v182;
  v184 = v114;
  v125 = v28;
  v126 = KeyedDecodingContainer.allKeys.getter();
  v127 = sub_1000F4D84(v126, 0);
  if (v129 == v130 >> 1)
  {
LABEL_8:
    v143 = type metadata accessor for DecodingError();
    swift_allocError();
    v145 = v144;
    v146 = *(sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0) + 48);
    *v145 = &type metadata for TSDataSyncDatasetGroupTrigger;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000401C();
    (*(*(v143 - 8) + 104))(v145, enum case for DecodingError.typeMismatch(_:), v143);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v184 + 8))(v125, v112);
LABEL_9:
    sub_100004118(v183);
LABEL_10:
    sub_100005074();
    return;
  }

  v155 = v112;
  v154[0] = 0;
  if (v129 < (v130 >> 1))
  {
    v131 = *(v128 + v129);
    v132 = sub_10003CE24(v129 + 1, v130 >> 1, v127, v128, v129, v130);
    v134 = v133;
    v136 = v135;
    swift_unknownObjectRelease();
    v154[1] = v132;
    if (v134 == v136 >> 1)
    {
      v137 = v154[0];
      v138 = v184;
      v139 = v179;
      switch(v131)
      {
        case 1:
          v185[4] = 1;
          sub_1000F5168();
          sub_10000A554();
          sub_10000DBA8();
          v140 = sub_100003C24(&v180);
          v142 = &v181;
          goto LABEL_27;
        case 2:
          v185[5] = 2;
          sub_1000F5114();
          sub_10000A554();
          sub_10000DBA8();
          v140 = sub_100003C24(&v182);
          v142 = &v183;
          goto LABEL_27;
        case 3:
          v185[6] = 3;
          sub_1000F50C0();
          sub_10000A554();
          sub_10000DBA8();
          v140 = sub_100003C24(&v184);
          v142 = v185;
          goto LABEL_27;
        case 4:
          v185[7] = 4;
          sub_1000F506C();
          sub_10000A554();
          sub_10000DBA8();
          v140 = sub_100003C24(&v186);
          v142 = &a9;
          goto LABEL_27;
        case 5:
          a10 = 5;
          sub_1000F5018();
          sub_10000A554();
          sub_10000DBA8();
          v140 = sub_100003C24(&a10);
          v142 = &a18;
          goto LABEL_27;
        case 6:
          a11 = 6;
          sub_1000F4FC4();
          sub_10003CF68();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v137)
          {
            goto LABEL_26;
          }

          sub_10000DBA8();
          sub_10000EDE8(&a20);
          v140 = v123;
          v142 = &a19;
          goto LABEL_27;
        case 7:
          a12 = 7;
          sub_1000F4F70();
          sub_10003CF68();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v137)
          {
LABEL_26:
            v148 = *(v138 + 8);
            v149 = sub_10000DBC0();
            v150(v149);
            sub_10000DBA8();
            goto LABEL_9;
          }

          sub_10000DBA8();
          sub_10000EDE8(&a22);
          v140 = v124;
          v142 = &a21;
LABEL_27:
          v147 = *(v142 - 32);
LABEL_28:
          v141(v140, v147);
          v151 = *(v138 + 8);
          v152 = sub_10000DBC0();
          v153(v152);
          sub_100004118(v183);
          break;
        case 8:
          a13 = 8;
          sub_1000F4F1C();
          sub_10000A554();
          sub_10000DBA8();
          v140 = sub_100003C24(&a23);
          v142 = &a24;
          goto LABEL_27;
        case 9:
          a14 = 9;
          sub_1000F4EC8();
          sub_10000A554();
          sub_10000DBA8();
          v140 = sub_100003C24(&a25);
          v147 = v169;
          goto LABEL_28;
        case 10:
          a15 = 10;
          sub_1000F4E74();
          sub_10000A554();
          goto LABEL_24;
        case 11:
          a16 = 11;
          sub_1000F4E20();
          sub_10000A554();
LABEL_24:
          sub_10000DBA8();
          v140 = sub_1000F828C();
          goto LABEL_28;
        case 12:
          a17 = 12;
          sub_1000F4DCC();
          sub_10000A554();
          sub_10000DBA8();
          v140 = sub_1000F828C();
          v147 = v139;
          goto LABEL_28;
        default:
          v185[3] = 0;
          sub_1000F51BC();
          sub_10000A554();
          sub_10000DBA8();
          v140 = sub_100003C24(&v179);
          v142 = v178;
          goto LABEL_27;
      }

      goto LABEL_10;
    }

    v112 = v155;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1000EF3E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xEC000000636E7953;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4974706D65747461 && a2 == 0xEF746867696C666ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x526572756C696166 && a2 == 0xEC00000079727465;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7466417972746572 && a2 == 0xEA00000000007265;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E696C6C6F70 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C6C6143697061 && a2 == 0xE700000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x8000000100273890 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6970784561746164 && a2 == 0xEB00000000646572;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6843616D65686373 && a2 == 0xEC00000065676E61;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656C756465686373 && a2 == 0xE900000000000064;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x79536C61756E616DLL && a2 == 0xEA0000000000636ELL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000011 && 0x80000001002738B0 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1000EF7C0(char a1)
{
  result = 0x647261646E617473;
  switch(a1)
  {
    case 1:
      result = 0x4974706D65747461;
      break;
    case 2:
      result = 0x526572756C696166;
      break;
    case 3:
      result = 0x7466417972746572;
      break;
    case 4:
      result = 0x676E696C6C6F70;
      break;
    case 5:
      result = 0x6C6C6143697061;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6970784561746164;
      break;
    case 8:
      result = 0x6843616D65686373;
      break;
    case 9:
      result = 0x656C756465686373;
      break;
    case 10:
      result = 0x79536C61756E616DLL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000EF94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  a26 = v28;
  a27 = v29;
  v142 = v30;
  v32 = v31;
  v33 = sub_100099DF4(&qword_1002DCA58, &qword_100235A58);
  v34 = sub_100003724(v33);
  v140 = v35;
  v141 = v34;
  v37 = *(v36 + 64);
  sub_100003774();
  __chkstk_darwin(v38);
  sub_100003018();
  sub_1000F83CC(v39);
  v40 = sub_100099DF4(&qword_1002DCA60, &qword_100235A60);
  v41 = sub_100003724(v40);
  v138 = v42;
  v139 = v41;
  v44 = *(v43 + 64);
  sub_100003774();
  __chkstk_darwin(v45);
  sub_100003018();
  sub_100003E9C(v46);
  v47 = sub_100099DF4(&qword_1002DCA68, &qword_100235A68);
  v48 = sub_100003724(v47);
  v136 = v49;
  v137 = v48;
  v51 = *(v50 + 64);
  sub_100003774();
  __chkstk_darwin(v52);
  sub_1000F8278(v53, v128[0]);
  v54 = sub_100099DF4(&qword_1002DCA70, &qword_100235A70);
  v55 = sub_100003724(v54);
  v134 = v56;
  v135 = v55;
  v58 = *(v57 + 64);
  sub_100003774();
  __chkstk_darwin(v59);
  sub_100003018();
  v133 = v60;
  v61 = sub_100099DF4(&qword_1002DCA78, &qword_100235A78);
  v62 = sub_100003724(v61);
  v131 = v63;
  v132 = v62;
  v65 = *(v64 + 64);
  sub_100003774();
  __chkstk_darwin(v66);
  sub_100003018();
  v130 = v67;
  v129 = sub_100099DF4(&qword_1002DCA80, &qword_100235A80);
  sub_100003724(v129);
  v128[15] = v68;
  v70 = *(v69 + 64);
  sub_100003774();
  __chkstk_darwin(v71);
  sub_100003018();
  sub_10000A1C0(v72);
  v73 = sub_100099DF4(&qword_1002DCA88, &qword_100235A88);
  sub_100007F90(v73, &a23);
  v128[12] = v74;
  v76 = *(v75 + 64);
  sub_100003774();
  __chkstk_darwin(v77);
  sub_100003018();
  sub_10000A1C0(v78);
  v79 = sub_100099DF4(&qword_1002DCA90, &qword_100235A90);
  sub_100007F90(v79, &a20);
  v128[9] = v80;
  v82 = *(v81 + 64);
  sub_100003774();
  __chkstk_darwin(v83);
  sub_100003018();
  sub_10000A1C0(v84);
  v85 = sub_100099DF4(&qword_1002DCA98, &qword_100235A98);
  sub_100007F90(v85, &a10);
  v128[6] = v86;
  v88 = *(v87 + 64);
  sub_100003774();
  __chkstk_darwin(v89);
  sub_100003018();
  sub_10000A1C0(v90);
  v91 = sub_100099DF4(&qword_1002DCAA0, &qword_100235AA0);
  sub_100007F90(v91, v146);
  v128[3] = v92;
  v94 = *(v93 + 64);
  sub_100003774();
  __chkstk_darwin(v95);
  sub_100003018();
  sub_10000A1C0(v96);
  v97 = sub_100099DF4(&qword_1002DCAA8, &qword_100235AA8);
  sub_100003724(v97);
  v128[1] = v98;
  v100 = *(v99 + 64);
  sub_100003774();
  __chkstk_darwin(v101);
  sub_10000AF24();
  v102 = sub_100099DF4(&qword_1002DCAB0, &qword_100235AB0);
  sub_100003724(v102);
  v128[0] = v103;
  v105 = *(v104 + 64);
  sub_100003774();
  __chkstk_darwin(v106);
  v108 = v128 - v107;
  v144 = sub_100099DF4(&qword_1002DCAB8, &qword_100235AB8);
  sub_100003724(v144);
  v110 = v109;
  v112 = *(v111 + 64);
  sub_100003774();
  __chkstk_darwin(v113);
  sub_100003B38();
  v114 = *(v32 + 24);
  v115 = *(v32 + 32);
  v116 = sub_100005CD0();
  sub_10000C4FC(v116, v117);
  sub_1000F6D44();
  v143 = v27;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v118 = (v110 + 8);
  switch(v142)
  {
    case 1:
      v146[5] = 1;
      sub_1000F70E0();
      sub_100008304();
      v123 = sub_1000069D4(&v143);
      v126 = v97;
      goto LABEL_16;
    case 2:
      v146[6] = 2;
      sub_1000F708C();
      sub_100007288(&v144);
      v123 = sub_1000069D4(&v145);
      v125 = v146;
      goto LABEL_11;
    case 3:
      v146[7] = 3;
      sub_1000F7038();
      sub_100007288(&v147);
      v123 = sub_1000069D4(&a9);
      v125 = &a10;
      goto LABEL_11;
    case 4:
      a10 = 4;
      sub_1000F6FE4();
      sub_100007288(&a18);
      v123 = sub_1000069D4(&a19);
      v125 = &a20;
      goto LABEL_11;
    case 5:
      a11 = 5;
      sub_1000F6F90();
      sub_100007288(&a21);
      v123 = sub_1000069D4(&a22);
      v125 = &a23;
LABEL_11:
      v126 = *(v125 - 32);
      goto LABEL_16;
    case 6:
      a12 = 6;
      sub_1000F6F3C();
      sub_100007288(&a24);
      v123 = sub_1000069D4(&a25);
      v126 = v129;
      goto LABEL_16;
    case 7:
      a13 = 7;
      sub_1000F6EE8();
      sub_100008304();
      goto LABEL_15;
    case 8:
      a14 = 8;
      sub_1000F6E94();
      sub_100008304();
      goto LABEL_15;
    case 9:
      a15 = 9;
      sub_1000F6E40();
      sub_100008304();
      goto LABEL_15;
    case 10:
      a16 = 10;
      sub_1000F6DEC();
      sub_100008304();
      goto LABEL_15;
    case 11:
      a17 = 11;
      sub_1000F6D98();
      sub_100008304();
LABEL_15:
      v123 = sub_100008D84();
LABEL_16:
      v124(v123, v126);
      v127 = *v118;
      v121 = sub_1000F8344();
      break;
    default:
      v146[4] = 0;
      sub_1000F7134();
      sub_10003CF68();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000EDE8(&v142);
      v119(v108, v102);
      v120 = *v118;
      v121 = sub_10000DBC0();
      break;
  }

  v122(v121);
  sub_100005074();
}

void sub_1000F0210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  a26 = v31;
  a27 = v32;
  v170 = v27;
  v34 = v33;
  v166[0] = sub_100099DF4(&qword_1002DC988, &qword_1002359F0);
  sub_100003724(v166[0]);
  v161 = v35;
  v37 = *(v36 + 64);
  sub_100003774();
  __chkstk_darwin(v38);
  sub_100003018();
  sub_1000F83CC(v39);
  v40 = sub_100099DF4(&qword_1002DC990, &qword_1002359F8);
  v41 = sub_100003724(v40);
  v159 = v42;
  v160 = v41;
  v44 = *(v43 + 64);
  sub_100003774();
  __chkstk_darwin(v45);
  sub_100003018();
  v165 = v46;
  v47 = sub_100099DF4(&qword_1002DC998, &qword_100235A00);
  v48 = sub_100003724(v47);
  v157 = v49;
  v158 = v48;
  v51 = *(v50 + 64);
  sub_100003774();
  __chkstk_darwin(v52);
  sub_100003018();
  v164 = v53;
  v54 = sub_100099DF4(&qword_1002DC9A0, &qword_100235A08);
  v55 = sub_100003724(v54);
  v155 = v56;
  v156 = v55;
  v58 = *(v57 + 64);
  sub_100003774();
  __chkstk_darwin(v59);
  sub_100003018();
  sub_100003E9C(v60);
  v61 = sub_100099DF4(&qword_1002DC9A8, &qword_100235A10);
  sub_100007F90(v61, &a24);
  v154 = v62;
  v64 = *(v63 + 64);
  sub_100003774();
  __chkstk_darwin(v65);
  sub_100003018();
  v168 = v66;
  v67 = sub_100099DF4(&qword_1002DC9B0, &qword_100235A18);
  sub_100007F90(v67, &a22);
  v153 = v68;
  v70 = *(v69 + 64);
  sub_100003774();
  __chkstk_darwin(v71);
  sub_100003018();
  v167 = v72;
  v73 = sub_100099DF4(&qword_1002DC9B8, &qword_100235A20);
  sub_100007F90(v73, &a21);
  v152 = v74;
  v76 = *(v75 + 64);
  sub_100003774();
  __chkstk_darwin(v77);
  sub_100003018();
  v166[1] = v78;
  v79 = sub_100099DF4(&qword_1002DC9C0, &qword_100235A28);
  sub_100007F90(v79, &a19);
  v151 = v80;
  v82 = *(v81 + 64);
  sub_100003774();
  __chkstk_darwin(v83);
  sub_100003018();
  v163 = v84;
  v85 = sub_100099DF4(&qword_1002DC9C8, &qword_100235A30);
  sub_100007F90(v85, &a10);
  v150 = v86;
  v88 = *(v87 + 64);
  sub_100003774();
  __chkstk_darwin(v89);
  sub_100003018();
  v162 = v90;
  v91 = sub_100099DF4(&qword_1002DC9D0, &qword_100235A38);
  sub_100007F90(v91, &v172);
  v149 = v92;
  v94 = *(v93 + 64);
  sub_100003774();
  __chkstk_darwin(v95);
  sub_1000F8278(v96, v143);
  v97 = sub_100099DF4(&qword_1002DC9D8, &qword_100235A40);
  sub_100007F90(v97, &v170);
  v148 = v98;
  v100 = *(v99 + 64);
  sub_100003774();
  __chkstk_darwin(v101);
  sub_100003B38();
  v102 = sub_100099DF4(&qword_1002DC9E0, &qword_100235A48);
  sub_100003724(v102);
  v147 = v103;
  v105 = *(v104 + 64);
  sub_100003774();
  __chkstk_darwin(v106);
  sub_10000AF24();
  v107 = sub_100099DF4(&qword_1002DC9E8, &qword_100235A50);
  sub_100003724(v107);
  v109 = v108;
  v111 = *(v110 + 64);
  sub_100003774();
  __chkstk_darwin(v112);
  sub_1000AC3B8();
  v113 = v34[3];
  v114 = v34[4];
  v169 = v34;
  v115 = sub_100005CD0();
  sub_10000C4FC(v115, v116);
  sub_1000F6D44();
  v117 = v170;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v117)
  {
    goto LABEL_10;
  }

  v145 = v28;
  v144 = v102;
  v146 = v30;
  v170 = v109;
  v118 = KeyedDecodingContainer.allKeys.getter();
  v119 = sub_1000F4D84(v118, 0);
  v123 = v107;
  if (v121 == v122 >> 1)
  {
    v124 = v29;
    v125 = v170;
LABEL_9:
    v135 = type metadata accessor for DecodingError();
    swift_allocError();
    v137 = v136;
    v138 = *(sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0) + 48);
    *v137 = &type metadata for TSDataSyncDatasetGroupReason;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000401C();
    (*(*(v135 - 8) + 104))(v137, enum case for DecodingError.typeMismatch(_:), v135);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v125 + 8))(v124, v123);
LABEL_10:
    sub_100004118(v169);
LABEL_11:
    sub_100005074();
    return;
  }

  if (v121 < (v122 >> 1))
  {
    v126 = *(v120 + v121);
    sub_10003CE24(v121 + 1, v122 >> 1, v119, v120, v121, v122);
    v128 = v127;
    v130 = v129;
    swift_unknownObjectRelease();
    if (v128 == v130 >> 1)
    {
      v131 = v170;
      switch(v126)
      {
        case 1:
          v171[5] = 1;
          sub_1000F70E0();
          sub_10000389C();
          sub_10000DED8();
          v132 = sub_1000069D4(&v169);
          v134 = &v170;
          goto LABEL_21;
        case 2:
          v171[6] = 2;
          sub_1000F708C();
          sub_10000389C();
          sub_10000DED8();
          v132 = sub_1000069D4(v171);
          v134 = &v172;
          goto LABEL_21;
        case 3:
          v171[7] = 3;
          sub_1000F7038();
          sub_10000389C();
          sub_10000DED8();
          v132 = sub_1000069D4(&a9);
          v134 = &a10;
          goto LABEL_21;
        case 4:
          a10 = 4;
          sub_1000F6FE4();
          sub_10000389C();
          sub_10000DED8();
          v132 = sub_1000069D4(&a18);
          v134 = &a19;
          goto LABEL_21;
        case 5:
          a11 = 5;
          sub_1000F6F90();
          sub_10000389C();
          sub_10000DED8();
          v132 = sub_1000069D4(&a20);
          v134 = &a21;
          goto LABEL_21;
        case 6:
          a12 = 6;
          sub_1000F6F3C();
          sub_10000BA2C();
          sub_10000DED8();
          sub_10000EDE8(&a23);
          v132 = v167;
          v134 = &a22;
          goto LABEL_21;
        case 7:
          a13 = 7;
          sub_1000F6EE8();
          sub_10000BA2C();
          sub_10000DED8();
          sub_10000EDE8(&a25);
          v132 = v168;
          v134 = &a24;
          goto LABEL_21;
        case 8:
          a14 = 8;
          sub_1000F6E94();
          sub_10000389C();
          sub_10000DED8();
          goto LABEL_24;
        case 9:
          a15 = 9;
          sub_1000F6E40();
          sub_10000389C();
          sub_10000DED8();
          goto LABEL_24;
        case 10:
          a16 = 10;
          sub_1000F6DEC();
          sub_10000389C();
          sub_10000DED8();
LABEL_24:
          v132 = sub_100008D84();
          break;
        case 11:
          a17 = 11;
          sub_1000F6D98();
          sub_10000389C();
          sub_10000DED8();
          v132 = sub_100008D84();
          v139 = v166[0];
          break;
        default:
          v171[4] = 0;
          sub_1000F7134();
          sub_10000389C();
          sub_10000DED8();
          v132 = sub_1000069D4(&v168);
          v134 = v166;
LABEL_21:
          v139 = *(v134 - 32);
          break;
      }

      v133(v132, v139);
      v140 = *(v131 + 8);
      v141 = sub_1000F8344();
      v142(v141);
      sub_100004118(v169);
      goto LABEL_11;
    }

    v124 = v29;
    v125 = v170;
    v123 = v107;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1000F0D50()
{
  sub_100004168();
  v2 = sub_1000F8350();
  v3 = sub_100003724(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v9 = sub_1000030B8(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10000308C();
  __chkstk_darwin(v12);
  v14 = &v65[-v13];
  v15 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  v16 = sub_10000307C(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000308C();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = &v65[-v23];
  v25 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100152BEC(*(v1 + 16), *(v0 + 16)))
  {
    v26 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v27 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
      if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v28 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
        sub_10003CF3C(*(v28 + 32));
        if (static AccountIdentity.== infix(_:_:)())
        {
          v69 = v5;
          v29 = type metadata accessor for TSDataSyncDatasetGroupScheduleInput(0);
          v30 = v29[5];
          v31 = *(v1 + v30);
          v32 = *(v0 + v30);
          sub_100112F4C();
          if (v33)
          {
            sub_1000F83B8(v29[6]);
            v36 = v25 && v34 == v35;
            if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              sub_10003CF3C(v29[7]);
              if (static AccountIdentity.== infix(_:_:)())
              {
                sub_100013C80(v29[8]);
                if (v25)
                {
                  sub_100013C80(v29[9]);
                  if (v25)
                  {
                    sub_100013C80(v29[10]);
                    if (v25)
                    {
                      sub_100002A28(v29[11]);
                      if (v25)
                      {
                        sub_100013C80(v29[12]);
                        if (v25)
                        {
                          v37 = v29[13];
                          v67 = v29;
                          v68 = v37;
                          v38 = *(v15 + 48);
                          sub_10003D1E4();
                          v68 = v38;
                          sub_10003D1E4();
                          sub_1000071D8(v24);
                          if (v25)
                          {
                            sub_1000071D8(v68 + v24);
                            if (v25)
                            {
                              sub_100004E24(v24, &qword_1002DA970, &qword_1002318B0);
LABEL_45:
                              v49 = v67[14];
                              v50 = *(v15 + 48);
                              sub_1000F83F8();
                              sub_1000F83D8();
                              sub_1000071D8(v21);
                              if (v25)
                              {
                                sub_1000071D8(v21 + v50);
                                if (v25)
                                {
                                  sub_100004E24(v21, &qword_1002DA970, &qword_1002318B0);
LABEL_57:
                                  v64 = v67;
                                  sub_10003CF3C(v67[15]);
                                  if (static URL.== infix(_:_:)())
                                  {
                                    sub_100013C80(v64[16]);
                                    if (v25)
                                    {
                                      sub_100013C80(v64[17]);
                                      if (v25)
                                      {
                                        sub_100002A28(v67[18]);
                                      }
                                    }
                                  }

                                  goto LABEL_55;
                                }
                              }

                              else
                              {
                                sub_10000B80C();
                                sub_10003D1E4();
                                sub_1000071D8(v21 + v50);
                                if (!v51)
                                {
                                  v54 = v69;
                                  v55 = *(v69 + 32);
                                  v56 = sub_1000035AC();
                                  v57(v56);
                                  sub_100004AC4();
                                  sub_1000F5EC0(v58, v59);
                                  v60 = sub_100010DEC();
                                  v61 = *(v54 + 8);
                                  v62 = sub_1000049C0();
                                  v61(v62);
                                  v63 = sub_1000B31F0();
                                  v61(v63);
                                  sub_100004E24(v21, &qword_1002DA970, &qword_1002318B0);
                                  if ((v60 & 1) == 0)
                                  {
                                    goto LABEL_55;
                                  }

                                  goto LABEL_57;
                                }

                                v52 = sub_1000F828C();
                                v53(v52, v2);
                              }

                              v40 = v21;
LABEL_54:
                              sub_100004E24(v40, &qword_1002DACF0, &qword_100232140);
                              goto LABEL_55;
                            }
                          }

                          else
                          {
                            sub_10003D1E4();
                            sub_1000071D8(v68 + v24);
                            if (!v39)
                            {
                              v41 = v69;
                              v42 = *(v69 + 32);
                              v43 = sub_1000035AC();
                              v44(v43);
                              sub_100004AC4();
                              sub_1000F5EC0(v45, v46);
                              v66 = dispatch thunk of static Equatable.== infix(_:_:)();
                              v68 = *(v41 + 8);
                              v47 = sub_1000049C0();
                              v48(v47);
                              v68(v14, v2);
                              sub_100004E24(v24, &qword_1002DA970, &qword_1002318B0);
                              if ((v66 & 1) == 0)
                              {
                                goto LABEL_55;
                              }

                              goto LABEL_45;
                            }

                            (*(v69 + 8))(v14, v2);
                          }

                          v40 = v24;
                          goto LABEL_54;
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

LABEL_55:
  sub_1000027F8();
}

void sub_1000F12D8()
{
  v3 = sub_1000F82F8();
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v13 = sub_1000030B8(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10000308C();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = v54 - v20;
  sub_1001113D4();
  v22 = type metadata accessor for TSDataSyncDatasetGroupScheduleInput(0);
  v23 = sub_1000F8390(v22);
  sub_100115A3C(v23, v24, v25, v26, v27, v28, v29, v30, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v54[9], v54[10], v54[11]);
  v31 = (v0 + v2[6]);
  v32 = *v31;
  v33 = v31[1];
  String.hash(into:)();
  v34 = v2[7];
  type metadata accessor for AccountIdentity();
  sub_1000F5EC0(&qword_1002DE9E0, &type metadata accessor for AccountIdentity);
  sub_10000B380();
  dispatch thunk of Hashable.hash(into:)();
  v35 = *(v1 + v2[8]);
  if (v35 == 0.0)
  {
    v35 = 0.0;
  }

  Hasher._combine(_:)(*&v35);
  sub_1000052D4(v2[9]);
  Hasher._combine(_:)(v36);
  sub_1000052D4(v2[10]);
  Hasher._combine(_:)(v37);
  Hasher._combine(_:)(*(v1 + v2[11]));
  sub_1000052D4(v2[12]);
  Hasher._combine(_:)(v38);
  v39 = v2[13];
  sub_10003D1E4();
  sub_10000B3A0(v21, 1, v3);
  if (v40)
  {
    sub_100008C3C();
  }

  else
  {
    sub_100002E60();
    v41(v11, v21, v3);
    sub_100005C20();
    sub_100004AC4();
    sub_1000F5EC0(v42, v43);
    sub_10000AD48();
    (*(v6 + 8))(v11, v3);
  }

  v44 = v2[14];
  sub_10003D1E4();
  sub_10000B3A0(v18, 1, v3);
  if (v40)
  {
    sub_100008C3C();
  }

  else
  {
    sub_100002E60();
    v45 = sub_1000DBA50();
    v46(v45);
    sub_100005C20();
    sub_100004AC4();
    sub_1000F5EC0(v47, v48);
    sub_10000AD48();
    (*(v6 + 8))(v11, v3);
  }

  v49 = v2[15];
  type metadata accessor for URL();
  sub_100006658();
  sub_1000F5EC0(v50, v51);
  sub_10000B380();
  dispatch thunk of Hashable.hash(into:)();
  sub_1000052D4(v2[16]);
  Hasher._combine(_:)(v52);
  sub_1000052D4(v2[17]);
  Hasher._combine(_:)(v53);
  Hasher._combine(_:)(*(v1 + v2[18]));
}

void sub_1000F1650()
{
  sub_100004168();
  v3 = sub_1000F8350();
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v9);
  v11 = *(v10 + 64);
  sub_100003774();
  __chkstk_darwin(v12);
  sub_100004880();
  v13 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_1000030B8(v13);
  v15 = *(v14 + 64);
  sub_100003774();
  __chkstk_darwin(v16);
  sub_1000AC3B8();
  v18 = *(v17 + 56);
  sub_10003D1E4();
  sub_10003D1E4();
  sub_1000071D8(v2);
  if (v19)
  {
    sub_1000071D8(v2 + v18);
    if (v19)
    {
      sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_11;
    }

LABEL_9:
    sub_100004E24(v2, &qword_1002DACF0, &qword_100232140);
    goto LABEL_26;
  }

  sub_10000B80C();
  sub_10003D1E4();
  sub_1000071D8(v2 + v18);
  if (v19)
  {
    v20 = *(v6 + 8);
    v21 = sub_1000B31F0();
    v22(v21);
    goto LABEL_9;
  }

  sub_100002E60();
  v23 = sub_1000035AC();
  v24(v23);
  sub_100004AC4();
  sub_1000F5EC0(v25, v26);
  v27 = sub_100010DEC();
  v28 = *(v6 + 8);
  v29 = sub_1000049C0();
  v28(v29);
  v30 = sub_1000B31F0();
  v28(v30);
  sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  v31 = type metadata accessor for TSDataSyncDatasetScheduleInput(0);
  sub_10003CF3C(v31[5]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_100002A28(v31[6]);
  if (!v19)
  {
    goto LABEL_26;
  }

  v32 = v31[7];
  v33 = (v1 + v32);
  v34 = *(v1 + v32 + 8);
  v35 = (v0 + v32);
  v36 = v35[1];
  if (!v34)
  {
    if (v36)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v36)
  {
    v37 = *v33 == *v35 && v34 == v36;
    if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
LABEL_23:
      v38 = (v1 + v31[8]);
      v39 = v38[2];
      v44[1] = v38[1];
      *v45 = v39;
      *&v45[9] = *(v38 + 41);
      v44[0] = *v38;
      v40 = (v0 + v31[8]);
      *&v48[9] = *(v40 + 41);
      v41 = v40[2];
      v47 = v40[1];
      *v48 = v41;
      v46 = *v40;
      if (sub_1000B821C(v44) & 1) != 0 && (sub_100142CA4(*(v1 + v31[9]), *(v0 + v31[9])))
      {
        v42 = v31[10];
        v43 = *(v1 + v42);
        LODWORD(v42) = *(v0 + v42);
      }
    }
  }

LABEL_26:
  sub_1000027F8();
}

void sub_1000F19AC()
{
  sub_100004168();
  v3 = sub_1000F82F8();
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  sub_1000AC3B8();
  v9 = sub_1000DBA50();
  v11 = sub_100099DF4(v9, v10);
  sub_1000030B8(v11);
  v13 = *(v12 + 64);
  sub_100003774();
  __chkstk_darwin(v14);
  sub_100004F7C();
  sub_10000B3A0(v0, 1, v3);
  if (v15)
  {
    sub_100008C3C();
  }

  else
  {
    v16 = sub_1000F82B0(v6);
    v17(v16);
    sub_100005C20();
    sub_100004AC4();
    sub_1000F5EC0(v18, v19);
    sub_100004218();
    (*(v6 + 8))(v2, v3);
  }

  v20 = type metadata accessor for TSDataSyncDatasetScheduleInput(0);
  v21 = v20[5];
  sub_100004AC4();
  sub_1000F5EC0(v22, v23);
  sub_10000B380();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v20[6]));
  v24 = (v1 + v20[7]);
  if (v24[1])
  {
    v25 = *v24;
    sub_100005C20();
    String.hash(into:)();
  }

  else
  {
    sub_100008C3C();
  }

  v26 = (v1 + v20[8]);
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  v30 = v26[3];
  v31 = v26[5];
  v32 = v26[6];
  v33 = *(v26 + 56);
  v34 = *(v26 + 32);
  String.hash(into:)();
  sub_1000050CC();
  String.hash(into:)();
  sub_1000B9204(v34);
  sub_1000F836C();

  String.hash(into:)();
  Hasher._combine(_:)(v33);
  v35 = *(v1 + v20[9]);
  sub_10011476C();
  v36 = *(v1 + v20[10]);
  if (v36 == 2)
  {
    v37 = 0;
  }

  else
  {
    sub_100005C20();
    v37 = v36 & 1;
  }

  Hasher._combine(_:)(v37);
  sub_1000027F8();
}

uint64_t sub_1000F1C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000ED8C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F1C98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EDCDC();
  *a1 = result;
  return result;
}

uint64_t sub_1000F1CC0(uint64_t a1)
{
  v2 = sub_1000F239C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1CFC(uint64_t a1)
{
  v2 = sub_1000F239C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1D3C(uint64_t a1)
{
  v2 = sub_1000F5168();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1D78(uint64_t a1)
{
  v2 = sub_1000F5168();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1DB4(uint64_t a1)
{
  v2 = sub_1000F4F1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1DF0(uint64_t a1)
{
  v2 = sub_1000F4F1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1E2C(uint64_t a1)
{
  v2 = sub_1000F4DCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1E68(uint64_t a1)
{
  v2 = sub_1000F4DCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1EA4(uint64_t a1)
{
  v2 = sub_1000F5114();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1EE0(uint64_t a1)
{
  v2 = sub_1000F5114();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1F1C(uint64_t a1)
{
  v2 = sub_1000F4E74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1F58(uint64_t a1)
{
  v2 = sub_1000F4E74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1F94(uint64_t a1)
{
  v2 = sub_1000F4EC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1FD0(uint64_t a1)
{
  v2 = sub_1000F4EC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F200C(uint64_t a1)
{
  v2 = sub_1000F4FC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2048(uint64_t a1)
{
  v2 = sub_1000F4FC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2084(uint64_t a1)
{
  v2 = sub_1000F51BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F20C0(uint64_t a1)
{
  v2 = sub_1000F51BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F20FC(uint64_t a1)
{
  v2 = sub_1000F50C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2138(uint64_t a1)
{
  v2 = sub_1000F50C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2174(uint64_t a1)
{
  v2 = sub_1000F4E20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F21B0(uint64_t a1)
{
  v2 = sub_1000F4E20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F21EC(uint64_t a1)
{
  v2 = sub_1000F4F70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2228(uint64_t a1)
{
  v2 = sub_1000F4F70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2264(uint64_t a1)
{
  v2 = sub_1000F5018();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F22A0(uint64_t a1)
{
  v2 = sub_1000F5018();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F22DC(uint64_t a1)
{
  v2 = sub_1000F506C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2318(uint64_t a1)
{
  v2 = sub_1000F506C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000F239C()
{
  result = qword_1002DC2F0;
  if (!qword_1002DC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC2F0);
  }

  return result;
}

uint64_t sub_1000F23F0(uint64_t a1)
{
  v2 = sub_1000F6F90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F242C(uint64_t a1)
{
  v2 = sub_1000F6F90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2468(uint64_t a1)
{
  v2 = sub_1000F70E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F24A4(uint64_t a1)
{
  v2 = sub_1000F70E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F24E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EF3E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F2510@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EF7B8();
  *a1 = result;
  return result;
}

uint64_t sub_1000F2538(uint64_t a1)
{
  v2 = sub_1000F6D44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2574(uint64_t a1)
{
  v2 = sub_1000F6D44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F25B0(uint64_t a1)
{
  v2 = sub_1000F6EE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F25EC(uint64_t a1)
{
  v2 = sub_1000F6EE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2628(uint64_t a1)
{
  v2 = sub_1000F708C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2664(uint64_t a1)
{
  v2 = sub_1000F708C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F26A0(uint64_t a1)
{
  v2 = sub_1000F6DEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F26DC(uint64_t a1)
{
  v2 = sub_1000F6DEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2718(uint64_t a1)
{
  v2 = sub_1000F6FE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2754(uint64_t a1)
{
  v2 = sub_1000F6FE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2790(uint64_t a1)
{
  v2 = sub_1000F6F3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F27CC(uint64_t a1)
{
  v2 = sub_1000F6F3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2808(uint64_t a1)
{
  v2 = sub_1000F6D98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2844(uint64_t a1)
{
  v2 = sub_1000F6D98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2880(uint64_t a1)
{
  v2 = sub_1000F7038();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F28BC(uint64_t a1)
{
  v2 = sub_1000F7038();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F28F8(uint64_t a1)
{
  v2 = sub_1000F6E40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2934(uint64_t a1)
{
  v2 = sub_1000F6E40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2970(uint64_t a1)
{
  v2 = sub_1000F6E94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F29AC(uint64_t a1)
{
  v2 = sub_1000F6E94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F29E8(uint64_t a1)
{
  v2 = sub_1000F7134();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2A24(uint64_t a1)
{
  v2 = sub_1000F7134();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2B58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001002738D0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72657474696ALL && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001002725D0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x44496B736174 && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

unint64_t sub_1000F2D54(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x72657474696ALL;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x44496B736174;
      break;
    case 5:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000F2E08()
{
  sub_100002FBC();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_100152BEC(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for TSDataSyncDatasetGroupIdentifier(0) + 32);
  if ((static AccountIdentity.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
  v8 = v7[5];
  v9 = *(v1 + v8);
  v10 = *(v0 + v8);
  sub_100113274();
  if ((v11 & 1) == 0 || *(v1 + v7[6]) != *(v0 + v7[6]) || *(v1 + v7[7]) != *(v0 + v7[7]))
  {
    return 0;
  }

  sub_1000F83B8(v7[8]);
  v14 = v3 && v12 == v13;
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = v7[9];

  return static URL.== infix(_:_:)();
}

uint64_t sub_1000F2F58()
{
  v3 = sub_100099DF4(&qword_1002DC960, &qword_1002359E0);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_10000AF24();
  sub_100002810();
  sub_1000F6A20();
  sub_10000A484();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_1000F8298();
  sub_1000F5EC0(v9, v10);
  sub_1000F82C4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v11 = type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
    v19 = *(v0 + v11[5]);
    sub_100099DF4(&qword_1002DC940, &qword_1002359D8);
    sub_1000F6BDC();
    sub_1000F82C4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v0 + v11[6]);
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v0 + v11[7]);
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = (v0 + v11[8]);
    v20 = *v14;
    v21 = v14[1];
    sub_1000AEE94();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v11[9];
    type metadata accessor for URL();
    sub_100006658();
    sub_1000F5EC0(v16, v17);
    sub_1000F82C4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v2, v3);
}

void sub_1000F32A4()
{
  sub_100004868();
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = sub_100003724(v3);
  v35 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v12 = sub_10000307C(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10000306C();
  v15 = sub_100099DF4(&qword_1002DC930, &qword_1002359D0);
  sub_100003724(v15);
  v36 = v16;
  v18 = *(v17 + 64);
  sub_100003774();
  __chkstk_darwin(v19);
  sub_100003B38();
  v37 = type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
  v20 = sub_10000307C(v37);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_10000306C();
  v38 = v24 - v23;
  v25 = v2[4];
  sub_10000C4FC(v2, v2[3]);
  sub_1000F6A20();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_1000F8298();
    sub_1000F5EC0(v26, v27);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000F6CEC();
    sub_100099DF4(&qword_1002DC940, &qword_1002359D8);
    sub_1000F6A74();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v38 + v37[5]) = v39;
    sub_1000F83A4(2);
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v38 + v37[6]) = v28;
    sub_1000F83A4(3);
    *(v38 + v37[7]) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000AEE40();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = (v38 + v37[8]);
    *v29 = v39;
    v29[1] = v40;
    sub_100006658();
    sub_1000F5EC0(v30, v31);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = *(v36 + 8);
    v33 = sub_100005CD0();
    v34(v33);
    (*(v35 + 32))(v38 + v37[9], v10, v3);
    sub_1000F7284();
    sub_100004118(v2);
    sub_1000F6B84(v38, type metadata accessor for TSDataSyncDatasetGroupSchedule);
  }

  sub_100005074();
}

uint64_t sub_1000F378C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x537478654E776172 && a2 == 0xED00007441636E79;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636E79537478656ELL && a2 == 0xEA00000000007441;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000)
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

uint64_t sub_1000F3978(char a1)
{
  result = 0x537478654E776172;
  switch(a1)
  {
    case 1:
      result = 0x636E79537478656ELL;
      break;
    case 2:
      result = 0x72656767697274;
      break;
    case 3:
      result = 0x6E6F73616572;
      break;
    case 4:
      result = 0x746E657665;
      break;
    case 5:
      result = 0x6769666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000F3A30()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v72 = type metadata accessor for TSDataSyncTriggerEvent(0);
  v4 = sub_10000307C(v72);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  sub_10000A1C0(v8 - v7);
  v9 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  sub_1000030B8(v9);
  v11 = *(v10 + 64);
  sub_100003774();
  __chkstk_darwin(v12);
  sub_100003018();
  sub_10000A1C0(v13);
  v71 = sub_100099DF4(&qword_1002DC980, &qword_1002359E8);
  sub_10000307C(v71);
  v15 = *(v14 + 64);
  sub_100003774();
  __chkstk_darwin(v16);
  sub_100003018();
  v73 = v17;
  v18 = type metadata accessor for Date();
  v19 = sub_100003724(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_10000306C();
  v26 = v25 - v24;
  v27 = sub_1000DBA50();
  v29 = sub_100099DF4(v27, v28);
  sub_1000030B8(v29);
  v31 = *(v30 + 64);
  sub_100003774();
  __chkstk_darwin(v32);
  sub_10000AF24();
  v33 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_1000030B8(v33);
  v35 = *(v34 + 64);
  sub_100003774();
  __chkstk_darwin(v36);
  v38 = v70 - v37;
  v40 = *(v39 + 56);
  v74 = v3;
  sub_10003D1E4();
  sub_10003D1E4();
  sub_1000071D8(v38);
  if (v41)
  {
    sub_1000071D8(&v38[v40]);
    if (v41)
    {
      sub_100004E24(v38, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_12;
    }

LABEL_9:
    v45 = &qword_1002DACF0;
    v46 = &qword_100232140;
    v47 = v38;
LABEL_10:
    sub_100004E24(v47, v45, v46);
    goto LABEL_26;
  }

  sub_10003D1E4();
  sub_1000071D8(&v38[v40]);
  if (v41)
  {
    v42 = *(v21 + 8);
    v43 = sub_1000049C0();
    v44(v43);
    goto LABEL_9;
  }

  (*(v21 + 32))(v26, &v38[v40], v18);
  sub_100004AC4();
  sub_1000F5EC0(v48, v49);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v21 + 8);
  v51(v26, v18);
  v52 = sub_1000049C0();
  (v51)(v52);
  sub_100004E24(v38, &qword_1002DA970, &qword_1002318B0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  v53 = type metadata accessor for TSDataSyncDatasetSchedule(0);
  v54 = v53[5];
  v55 = v74;
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(v55 + v53[6]) != *(v1 + v53[6]) || *(v55 + v53[7]) != *(v1 + v53[7]))
  {
    goto LABEL_26;
  }

  v56 = v53[8];
  v57 = *(v71 + 48);
  v58 = v73;
  sub_10003D1E4();
  sub_10003D1E4();
  v59 = v72;
  sub_10000B3A0(v58, 1, v72);
  if (v41)
  {
    sub_10000B3A0(v58 + v57, 1, v59);
    if (v41)
    {
      sub_100004E24(v58, &qword_1002DBC20, &unk_100234B00);
LABEL_25:
      v66 = (v55 + v53[9]);
      v67 = v66[2];
      v75[1] = v66[1];
      *v76 = v67;
      *&v76[9] = *(v66 + 41);
      v75[0] = *v66;
      v68 = (v1 + v53[9]);
      *&v79[9] = *(v68 + 41);
      v69 = v68[2];
      v78 = v68[1];
      *v79 = v69;
      v77 = *v68;
      sub_1000B821C(v75);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v60 = v70[1];
  sub_10003D1E4();
  sub_10000B3A0(v58 + v57, 1, v59);
  if (v61)
  {
    sub_1000F6B84(v60, type metadata accessor for TSDataSyncTriggerEvent);
LABEL_23:
    v45 = &qword_1002DC980;
    v46 = &qword_1002359E8;
    v47 = v58;
    goto LABEL_10;
  }

  v62 = v70[0];
  sub_1000F6CEC();
  v63 = sub_10010F534();
  sub_1000F6B84(v62, type metadata accessor for TSDataSyncTriggerEvent);
  v64 = sub_10000B80C();
  sub_1000F6B84(v64, v65);
  sub_100004E24(v58, &qword_1002DBC20, &unk_100234B00);
  if (v63)
  {
    goto LABEL_25;
  }

LABEL_26:
  sub_1000027F8();
}

void sub_1000F3FA0()
{
  sub_100004868();
  v3 = sub_100099DF4(&qword_1002DCAE8, &qword_100235AC8);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_10000AF24();
  sub_100002810();
  sub_1000F7188();
  sub_10000A484();
  LOBYTE(v25[0]) = 0;
  type metadata accessor for Date();
  sub_100004AC4();
  sub_1000F5EC0(v9, v10);
  sub_100003B2C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
    (*(v5 + 8))(v2, v3);
  }

  else
  {
    v11 = type metadata accessor for TSDataSyncDatasetSchedule(0);
    v12 = v11[5];
    LOBYTE(v25[0]) = 1;
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v25[0]) = *(v0 + v11[6]);
    LOBYTE(v22) = 2;
    sub_1000F72DC();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v25[0]) = *(v0 + v11[7]);
    LOBYTE(v22) = 3;
    sub_1000F7330();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v11[8];
    type metadata accessor for TSDataSyncTriggerEvent(0);
    sub_100013FFC();
    sub_1000F5EC0(v14, v15);
    sub_1000F82C4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = (v0 + v11[9]);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    v19 = *v16;
    v18 = v16[1];
    *v26 = v16[2];
    *&v26[9] = *(v16 + 41);
    v22 = v19;
    v23 = v18;
    *v24 = v16[2];
    *&v24[9] = *(v16 + 41);
    sub_1000BA2CC(v25, v20);
    sub_1000BA1D0();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20[0] = v22;
    v20[1] = v23;
    *v21 = *v24;
    *&v21[9] = *&v24[9];
    sub_1000BA304(v20);
    (*(v5 + 8))(v2, v3);
  }

  sub_100005074();
}

void sub_1000F42B0()
{
  v3 = sub_1000F82F8();
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  sub_1000AC3B8();
  v9 = sub_1000DBA50();
  v11 = sub_100099DF4(v9, v10);
  sub_1000030B8(v11);
  v13 = *(v12 + 64);
  sub_100003774();
  __chkstk_darwin(v14);
  sub_100004F7C();
  sub_10000B3A0(v0, 1, v3);
  if (v15)
  {
    sub_100008C3C();
  }

  else
  {
    v16 = sub_1000F82B0(v6);
    v17(v16);
    sub_100005C20();
    sub_100004AC4();
    sub_1000F5EC0(v18, v19);
    sub_100004218();
    (*(v6 + 8))(v2, v3);
  }

  v20 = type metadata accessor for TSDataSyncDatasetSchedule(0);
  v21 = v20[5];
  sub_100004AC4();
  sub_1000F5EC0(v22, v23);
  sub_10000B380();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v20[6]));
  Hasher._combine(_:)(*(v1 + v20[7]));
  v24 = v1 + v20[8];
  sub_100114BF4();
  v25 = (v1 + v20[9]);
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  v29 = v25[3];
  v30 = v25[5];
  v31 = v25[6];
  v32 = *(v25 + 56);
  v33 = *(v25 + 32);
  String.hash(into:)();
  sub_1000050CC();
  String.hash(into:)();
  sub_1000B9204(v33);
  sub_1000F836C();

  String.hash(into:)();
  Hasher._combine(_:)(v32);
}

Swift::Int sub_1000F44C4(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

void sub_1000F450C()
{
  sub_100004868();
  v2 = v1;
  v44 = v3;
  v4 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  sub_1000030B8(v4);
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_1000F8278(v8, v44);
  v9 = type metadata accessor for Date();
  v10 = sub_100003724(v9);
  v45 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v16 = v15 - v14;
  v17 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v17);
  v19 = *(v18 + 64);
  sub_100003774();
  __chkstk_darwin(v20);
  sub_100003B38();
  v48 = sub_100099DF4(&qword_1002DCAC0, &qword_100235AC0);
  sub_100003724(v48);
  v46 = v21;
  v23 = *(v22 + 64);
  sub_100003774();
  __chkstk_darwin(v24);
  sub_100004880();
  v47 = type metadata accessor for TSDataSyncDatasetSchedule(0);
  v25 = sub_10000307C(v47);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_10000306C();
  v30 = v29 - v28;
  v31 = v2[3];
  v32 = v2[4];
  v33 = sub_10000DBC0();
  sub_10000C4FC(v33, v34);
  sub_1000F7188();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_100004AC4();
    sub_1000F5EC0(v35, v36);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100012D44();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v45 + 32))(v30 + v47[5], v16, v9);
    sub_1000F71DC();
    sub_1000F82D4();
    *(v30 + v47[6]) = 1;
    sub_1000F7230();
    sub_1000F82D4();
    *(v30 + v47[7]) = 1;
    type metadata accessor for TSDataSyncTriggerEvent(0);
    LOBYTE(v49) = 4;
    sub_100013FFC();
    sub_1000F5EC0(v37, v38);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v39 = v47[8];
    sub_100012D44();
    sub_1000BA0B0();
    sub_1000F82D4();
    v40 = *(v46 + 8);
    v41 = sub_1000F8338();
    v42(v41);
    v43 = (v30 + v47[9]);
    *v43 = v49;
    v43[1] = v50;
    v43[2] = *v51;
    *(v43 + 41) = *&v51[9];
    sub_1000F7284();
    sub_100004118(v2);
    sub_1000F6B84(v30, type metadata accessor for TSDataSyncDatasetSchedule);
  }

  sub_100005074();
}

uint64_t sub_1000F4A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F2B58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F4AB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000F2D4C();
  *a1 = result;
  return result;
}

uint64_t sub_1000F4ADC(uint64_t a1)
{
  v2 = sub_1000F6A20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F4B18(uint64_t a1)
{
  v2 = sub_1000F6A20();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000F4BD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_1000F4C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F378C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F4C4C(uint64_t a1)
{
  v2 = sub_1000F7188();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F4C88(uint64_t a1)
{
  v2 = sub_1000F7188();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000F4D0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1000F4D84(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
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

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000F4DCC()
{
  result = qword_1002DC300;
  if (!qword_1002DC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC300);
  }

  return result;
}

unint64_t sub_1000F4E20()
{
  result = qword_1002DC308;
  if (!qword_1002DC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC308);
  }

  return result;
}

unint64_t sub_1000F4E74()
{
  result = qword_1002DC310;
  if (!qword_1002DC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC310);
  }

  return result;
}

unint64_t sub_1000F4EC8()
{
  result = qword_1002DC318;
  if (!qword_1002DC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC318);
  }

  return result;
}

unint64_t sub_1000F4F1C()
{
  result = qword_1002DC320;
  if (!qword_1002DC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC320);
  }

  return result;
}

unint64_t sub_1000F4F70()
{
  result = qword_1002DC328;
  if (!qword_1002DC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC328);
  }

  return result;
}

unint64_t sub_1000F4FC4()
{
  result = qword_1002DC330;
  if (!qword_1002DC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC330);
  }

  return result;
}

unint64_t sub_1000F5018()
{
  result = qword_1002DC338;
  if (!qword_1002DC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC338);
  }

  return result;
}

unint64_t sub_1000F506C()
{
  result = qword_1002DC340;
  if (!qword_1002DC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC340);
  }

  return result;
}

unint64_t sub_1000F50C0()
{
  result = qword_1002DC348;
  if (!qword_1002DC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC348);
  }

  return result;
}

unint64_t sub_1000F5114()
{
  result = qword_1002DC350;
  if (!qword_1002DC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC350);
  }

  return result;
}

unint64_t sub_1000F5168()
{
  result = qword_1002DC358;
  if (!qword_1002DC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC358);
  }

  return result;
}

unint64_t sub_1000F51BC()
{
  result = qword_1002DC360;
  if (!qword_1002DC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC360);
  }

  return result;
}

void sub_1000F5258()
{
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_1000F563C(319, &unk_1002DC440, type metadata accessor for TSDataSyncDatasetScheduleInput);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AccountIdentity();
      if (v2 <= 0x3F)
      {
        sub_1000F59A4(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          type metadata accessor for URL();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000F5408()
{
  sub_1000F54C4();
  if (v0 <= 0x3F)
  {
    sub_1000F59A4(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F54C4()
{
  if (!qword_1002DC510)
  {
    sub_1000D6484();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DC510);
    }
  }
}

void sub_1000F5568()
{
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_1000F563C(319, &unk_1002DC5B0, type metadata accessor for TSDataSyncDatasetSchedule);
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000F563C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000D6484();
    v4 = type metadata accessor for Dictionary();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000F5704()
{
  sub_1000F59A4(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1000F59A4(319, &unk_1002DC658, type metadata accessor for TSDataSyncTriggerEvent, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000F5848()
{
  sub_1000F59A4(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_10003D104(319, &qword_1002DA9F0);
      if (v2 <= 0x3F)
      {
        sub_1000F59A4(319, &qword_1002DC700, type metadata accessor for TSDataSyncTriggerEvent, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_10003D104(319, &unk_1002DC708);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000F59A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000F5A50()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccountIdentity();
    if (v1 <= 0x3F)
    {
      sub_10003D104(319, &qword_1002DC7B8);
      if (v2 <= 0x3F)
      {
        sub_1000F5B48();
        if (v3 <= 0x3F)
        {
          sub_10003D104(319, &qword_1002DA9F0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000F5B48()
{
  if (!qword_1002DC7C0)
  {
    type metadata accessor for TSDataSyncDatasetGroupIdentifier(255);
    sub_10009A468(&qword_1002DC7C8, &qword_100236CA0);
    sub_1000F5EC0(&unk_1002DC7D0, type metadata accessor for TSDataSyncDatasetGroupIdentifier);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DC7C0);
    }
  }
}

uint64_t sub_1000F5C00(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100004918(-1);
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return sub_100004918((*a1 | (v4 << 8)) - 13);
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

      return sub_100004918((*a1 | (v4 << 8)) - 13);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100004918((*a1 | (v4 << 8)) - 13);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_100004918(v8);
}

_BYTE *sub_1000F5C84(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result = sub_10000512C(result, v6);
        break;
      case 2:
        result = sub_100008B94(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100004FA8(result, v6);
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
          result = sub_100006284(result, a2 + 12);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000F5E24()
{
  result = qword_1002DC818;
  if (!qword_1002DC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC818);
  }

  return result;
}

uint64_t sub_1000F5EC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F5F54()
{
  result = qword_1002DC830;
  if (!qword_1002DC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC830);
  }

  return result;
}

unint64_t sub_1000F6084()
{
  result = qword_1002DC850;
  if (!qword_1002DC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC850);
  }

  return result;
}

unint64_t sub_1000F60DC()
{
  result = qword_1002DC858;
  if (!qword_1002DC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC858);
  }

  return result;
}

unint64_t sub_1000F6134()
{
  result = qword_1002DC860;
  if (!qword_1002DC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC860);
  }

  return result;
}

unint64_t sub_1000F618C()
{
  result = qword_1002DC868;
  if (!qword_1002DC868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC868);
  }

  return result;
}

unint64_t sub_1000F61E4()
{
  result = qword_1002DC870;
  if (!qword_1002DC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC870);
  }

  return result;
}

unint64_t sub_1000F623C()
{
  result = qword_1002DC878;
  if (!qword_1002DC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC878);
  }

  return result;
}

unint64_t sub_1000F6294()
{
  result = qword_1002DC880;
  if (!qword_1002DC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC880);
  }

  return result;
}

unint64_t sub_1000F62EC()
{
  result = qword_1002DC888;
  if (!qword_1002DC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC888);
  }

  return result;
}

unint64_t sub_1000F6344()
{
  result = qword_1002DC890;
  if (!qword_1002DC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC890);
  }

  return result;
}

unint64_t sub_1000F639C()
{
  result = qword_1002DC898;
  if (!qword_1002DC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC898);
  }

  return result;
}

unint64_t sub_1000F63F4()
{
  result = qword_1002DC8A0;
  if (!qword_1002DC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC8A0);
  }

  return result;
}

unint64_t sub_1000F644C()
{
  result = qword_1002DC8A8;
  if (!qword_1002DC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC8A8);
  }

  return result;
}

unint64_t sub_1000F64A4()
{
  result = qword_1002DC8B0;
  if (!qword_1002DC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC8B0);
  }

  return result;
}

unint64_t sub_1000F64FC()
{
  result = qword_1002DC8B8;
  if (!qword_1002DC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC8B8);
  }

  return result;
}

unint64_t sub_1000F6554()
{
  result = qword_1002DC8C0;
  if (!qword_1002DC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC8C0);
  }

  return result;
}

unint64_t sub_1000F65AC()
{
  result = qword_1002DC8C8;
  if (!qword_1002DC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC8C8);
  }

  return result;
}

unint64_t sub_1000F6604()
{
  result = qword_1002DC8D0;
  if (!qword_1002DC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC8D0);
  }

  return result;
}

unint64_t sub_1000F665C()
{
  result = qword_1002DC8D8;
  if (!qword_1002DC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC8D8);
  }

  return result;
}

unint64_t sub_1000F66B4()
{
  result = qword_1002DC8E0;
  if (!qword_1002DC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC8E0);
  }

  return result;
}

unint64_t sub_1000F670C()
{
  result = qword_1002DC8E8;
  if (!qword_1002DC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC8E8);
  }

  return result;
}

unint64_t sub_1000F6764()
{
  result = qword_1002DC8F0;
  if (!qword_1002DC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC8F0);
  }

  return result;
}

unint64_t sub_1000F67BC()
{
  result = qword_1002DC8F8;
  if (!qword_1002DC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC8F8);
  }

  return result;
}

unint64_t sub_1000F6814()
{
  result = qword_1002DC900;
  if (!qword_1002DC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC900);
  }

  return result;
}

unint64_t sub_1000F686C()
{
  result = qword_1002DC908;
  if (!qword_1002DC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC908);
  }

  return result;
}

unint64_t sub_1000F68C4()
{
  result = qword_1002DC910;
  if (!qword_1002DC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC910);
  }

  return result;
}

unint64_t sub_1000F691C()
{
  result = qword_1002DC918;
  if (!qword_1002DC918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC918);
  }

  return result;
}

unint64_t sub_1000F6974()
{
  result = qword_1002DC920;
  if (!qword_1002DC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC920);
  }

  return result;
}

unint64_t sub_1000F69CC()
{
  result = qword_1002DC928;
  if (!qword_1002DC928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC928);
  }

  return result;
}

unint64_t sub_1000F6A20()
{
  result = qword_1002DC938;
  if (!qword_1002DC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC938);
  }

  return result;
}

unint64_t sub_1000F6A74()
{
  result = qword_1002DC948;
  if (!qword_1002DC948)
  {
    sub_10009A468(&qword_1002DC940, &qword_1002359D8);
    sub_1000F6B30();
    sub_1000F5EC0(&qword_1002DC958, type metadata accessor for TSDataSyncDatasetSchedule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC948);
  }

  return result;
}

unint64_t sub_1000F6B30()
{
  result = qword_1002DC950;
  if (!qword_1002DC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC950);
  }

  return result;
}

uint64_t sub_1000F6B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1000F6BDC()
{
  result = qword_1002DC968;
  if (!qword_1002DC968)
  {
    sub_10009A468(&qword_1002DC940, &qword_1002359D8);
    sub_1000F6C98();
    sub_1000F5EC0(&qword_1002DC978, type metadata accessor for TSDataSyncDatasetSchedule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC968);
  }

  return result;
}

unint64_t sub_1000F6C98()
{
  result = qword_1002DC970;
  if (!qword_1002DC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC970);
  }

  return result;
}

uint64_t sub_1000F6CEC()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000307C(v2);
  v4 = *(v3 + 32);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

unint64_t sub_1000F6D44()
{
  result = qword_1002DC9F0;
  if (!qword_1002DC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC9F0);
  }

  return result;
}

unint64_t sub_1000F6D98()
{
  result = qword_1002DC9F8;
  if (!qword_1002DC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC9F8);
  }

  return result;
}

unint64_t sub_1000F6DEC()
{
  result = qword_1002DCA00;
  if (!qword_1002DCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCA00);
  }

  return result;
}

unint64_t sub_1000F6E40()
{
  result = qword_1002DCA08;
  if (!qword_1002DCA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCA08);
  }

  return result;
}

unint64_t sub_1000F6E94()
{
  result = qword_1002DCA10;
  if (!qword_1002DCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCA10);
  }

  return result;
}

unint64_t sub_1000F6EE8()
{
  result = qword_1002DCA18;
  if (!qword_1002DCA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCA18);
  }

  return result;
}

unint64_t sub_1000F6F3C()
{
  result = qword_1002DCA20;
  if (!qword_1002DCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCA20);
  }

  return result;
}

unint64_t sub_1000F6F90()
{
  result = qword_1002DCA28;
  if (!qword_1002DCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCA28);
  }

  return result;
}

unint64_t sub_1000F6FE4()
{
  result = qword_1002DCA30;
  if (!qword_1002DCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCA30);
  }

  return result;
}

unint64_t sub_1000F7038()
{
  result = qword_1002DCA38;
  if (!qword_1002DCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCA38);
  }

  return result;
}

unint64_t sub_1000F708C()
{
  result = qword_1002DCA40;
  if (!qword_1002DCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCA40);
  }

  return result;
}

unint64_t sub_1000F70E0()
{
  result = qword_1002DCA48;
  if (!qword_1002DCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCA48);
  }

  return result;
}

unint64_t sub_1000F7134()
{
  result = qword_1002DCA50;
  if (!qword_1002DCA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCA50);
  }

  return result;
}

unint64_t sub_1000F7188()
{
  result = qword_1002DCAC8;
  if (!qword_1002DCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCAC8);
  }

  return result;
}

unint64_t sub_1000F71DC()
{
  result = qword_1002DCAD0;
  if (!qword_1002DCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCAD0);
  }

  return result;
}

unint64_t sub_1000F7230()
{
  result = qword_1002DCAD8;
  if (!qword_1002DCAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCAD8);
  }

  return result;
}

uint64_t sub_1000F7284()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000307C(v2);
  v4 = *(v3 + 16);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

unint64_t sub_1000F72DC()
{
  result = qword_1002DCAF0;
  if (!qword_1002DCAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCAF0);
  }

  return result;
}

unint64_t sub_1000F7330()
{
  result = qword_1002DCAF8;
  if (!qword_1002DCAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCAF8);
  }

  return result;
}

uint64_t sub_1000F7394(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100004918(-1);
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return sub_100004918((*a1 | (v4 << 8)) - 12);
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

      return sub_100004918((*a1 | (v4 << 8)) - 12);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100004918((*a1 | (v4 << 8)) - 12);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_100004918(v8);
}

_BYTE *sub_1000F7418(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result = sub_10000512C(result, v6);
        break;
      case 2:
        result = sub_100008B94(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100004FA8(result, v6);
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
          result = sub_100006284(result, a2 + 11);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000F75A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100004918(-1);
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
      return sub_100004918((*a1 | (v4 << 8)) - 6);
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

      return sub_100004918((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100004918((*a1 | (v4 << 8)) - 6);
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

  return sub_100004918(v8);
}

_BYTE *sub_1000F7628(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_10000512C(result, v6);
        break;
      case 2:
        result = sub_100008B94(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100004FA8(result, v6);
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
          result = sub_100006284(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000F76F8()
{
  result = qword_1002DCB08;
  if (!qword_1002DCB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB08);
  }

  return result;
}

unint64_t sub_1000F7750()
{
  result = qword_1002DCB10;
  if (!qword_1002DCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB10);
  }

  return result;
}

unint64_t sub_1000F77A8()
{
  result = qword_1002DCB18;
  if (!qword_1002DCB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB18);
  }

  return result;
}

unint64_t sub_1000F7800()
{
  result = qword_1002DCB20;
  if (!qword_1002DCB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB20);
  }

  return result;
}

unint64_t sub_1000F7858()
{
  result = qword_1002DCB28;
  if (!qword_1002DCB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB28);
  }

  return result;
}

unint64_t sub_1000F78B0()
{
  result = qword_1002DCB30;
  if (!qword_1002DCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB30);
  }

  return result;
}

unint64_t sub_1000F7908()
{
  result = qword_1002DCB38;
  if (!qword_1002DCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB38);
  }

  return result;
}

unint64_t sub_1000F7960()
{
  result = qword_1002DCB40;
  if (!qword_1002DCB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB40);
  }

  return result;
}

unint64_t sub_1000F79B8()
{
  result = qword_1002DCB48;
  if (!qword_1002DCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB48);
  }

  return result;
}

unint64_t sub_1000F7A10()
{
  result = qword_1002DCB50;
  if (!qword_1002DCB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB50);
  }

  return result;
}

unint64_t sub_1000F7A68()
{
  result = qword_1002DCB58;
  if (!qword_1002DCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB58);
  }

  return result;
}

unint64_t sub_1000F7AC0()
{
  result = qword_1002DCB60;
  if (!qword_1002DCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB60);
  }

  return result;
}

unint64_t sub_1000F7B18()
{
  result = qword_1002DCB68;
  if (!qword_1002DCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB68);
  }

  return result;
}

unint64_t sub_1000F7B70()
{
  result = qword_1002DCB70;
  if (!qword_1002DCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB70);
  }

  return result;
}

unint64_t sub_1000F7BC8()
{
  result = qword_1002DCB78;
  if (!qword_1002DCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB78);
  }

  return result;
}

unint64_t sub_1000F7C20()
{
  result = qword_1002DCB80;
  if (!qword_1002DCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB80);
  }

  return result;
}

unint64_t sub_1000F7C78()
{
  result = qword_1002DCB88;
  if (!qword_1002DCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB88);
  }

  return result;
}

unint64_t sub_1000F7CD0()
{
  result = qword_1002DCB90;
  if (!qword_1002DCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB90);
  }

  return result;
}

unint64_t sub_1000F7D28()
{
  result = qword_1002DCB98;
  if (!qword_1002DCB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCB98);
  }

  return result;
}

unint64_t sub_1000F7D80()
{
  result = qword_1002DCBA0;
  if (!qword_1002DCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCBA0);
  }

  return result;
}

unint64_t sub_1000F7DD8()
{
  result = qword_1002DCBA8;
  if (!qword_1002DCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCBA8);
  }

  return result;
}

unint64_t sub_1000F7E30()
{
  result = qword_1002DCBB0;
  if (!qword_1002DCBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCBB0);
  }

  return result;
}

unint64_t sub_1000F7E88()
{
  result = qword_1002DCBB8;
  if (!qword_1002DCBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCBB8);
  }

  return result;
}

unint64_t sub_1000F7EE0()
{
  result = qword_1002DCBC0;
  if (!qword_1002DCBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCBC0);
  }

  return result;
}

unint64_t sub_1000F7F38()
{
  result = qword_1002DCBC8;
  if (!qword_1002DCBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCBC8);
  }

  return result;
}

unint64_t sub_1000F7F90()
{
  result = qword_1002DCBD0;
  if (!qword_1002DCBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCBD0);
  }

  return result;
}

unint64_t sub_1000F7FE8()
{
  result = qword_1002DCBD8;
  if (!qword_1002DCBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCBD8);
  }

  return result;
}

unint64_t sub_1000F8040()
{
  result = qword_1002DCBE0;
  if (!qword_1002DCBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCBE0);
  }

  return result;
}

unint64_t sub_1000F8098()
{
  result = qword_1002DCBE8;
  if (!qword_1002DCBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCBE8);
  }

  return result;
}

unint64_t sub_1000F80F0()
{
  result = qword_1002DCBF0;
  if (!qword_1002DCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCBF0);
  }

  return result;
}

unint64_t sub_1000F8148()
{
  result = qword_1002DCBF8;
  if (!qword_1002DCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCBF8);
  }

  return result;
}

unint64_t sub_1000F81A0()
{
  result = qword_1002DCC00;
  if (!qword_1002DCC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCC00);
  }

  return result;
}

unint64_t sub_1000F81F8()
{
  result = qword_1002DCC08;
  if (!qword_1002DCC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DCC08);
  }

  return result;
}

uint64_t sub_1000F82D4()
{
  v2 = *(v0 - 168);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000F82F8()
{

  return type metadata accessor for Date();
}

uint64_t sub_1000F8338()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

uint64_t sub_1000F8350()
{

  return type metadata accessor for Date();
}

uint64_t sub_1000F836C()
{

  return String.hash(into:)();
}

uint64_t sub_1000F83B8@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v4 = v1[1];
  v5 = (v2 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t sub_1000F83D8()
{

  return sub_10003D1E4();
}

uint64_t sub_1000F83F8()
{

  return sub_10003D1E4();
}

void sub_1000F8418(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a2;
  v5 = type metadata accessor for TSDataSyncTriggerEvent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v22[2] = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  v12 = 0;
  v13 = *(a3 + 16);
  v23 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v13 == v12)
    {

      return;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = *(v6 + 72);
    sub_100107DFC();
    v16 = v24(v11);
    if (v3)
    {
      sub_100107DA4(v11, type metadata accessor for TSDataSyncTriggerEvent);

      return;
    }

    if (v16)
    {
      sub_100107FA0();
      v17 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = v17[2];
        sub_100107150();
        v17 = v26;
      }

      v20 = v17[2];
      v21 = (v20 + 1);
      if (v20 >= v17[3] >> 1)
      {
        v23 = (v20 + 1);
        v22[1] = v20;
        sub_100107150();
        v21 = v23;
        v17 = v26;
      }

      ++v12;
      v17[2] = v21;
      v23 = v17;
      sub_100107FA0();
    }

    else
    {
      sub_100107DA4(v11, type metadata accessor for TSDataSyncTriggerEvent);
      ++v12;
    }
  }

  __break(1u);
}

void sub_1000F86AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100107130();
    v5 = sub_1000C87E4(a1);
    v6 = 0;
    v7 = a1 + 64;
    v24 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v25 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(a1 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];

        if (v13 >= v12 >> 1)
        {
          sub_100107130();
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        v14 = &_swiftEmptyArrayStorage[2 * v13];
        v14[4] = v10;
        v14[5] = v11;
        v15 = 1 << *(a1 + 32);
        if (v5 >= v15)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v16 = *(a1 + 64 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v27)
        {
          goto LABEL_27;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v18 = v24;
        }

        else
        {
          v19 = v8 << 6;
          v20 = v8 + 1;
          v18 = v24;
          v21 = (a1 + 72 + 8 * v8);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1000C87D4(v5, v27, v25 & 1);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_18;
            }
          }

          sub_1000C87D4(v5, v27, v25 & 1);
        }

LABEL_18:
        v6 = v26 + 1;
        if (v26 + 1 == v18)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void sub_1000F88E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v20;
  a20 = v21;
  v309 = v22;
  v24 = v23;
  v26 = v25;
  v28 = sub_10010834C(v27);
  v29 = type metadata accessor for TSDataSyncDatasetGroupState(v28);
  v30 = sub_10000307C(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v33);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v34);
  sub_10000D478();
  v36 = sub_100008280(v35);
  v274 = type metadata accessor for TSDataSyncTriggerEvent(v36);
  v37 = sub_100003724(v274);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v40);
  sub_10000D478();
  v42 = sub_100008280(v41);
  v43 = type metadata accessor for TSDataSyncDatasetState(v42);
  v44 = sub_100003724(v43);
  v298 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v48);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v49);
  sub_100002DD0();
  v310 = v50;
  sub_100005238();
  __chkstk_darwin(v51);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v52);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v53);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v54);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v55);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v56);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v57);
  sub_10000D478();
  v59 = sub_100008280(v58);
  v60 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(v59);
  v61 = sub_1000030B8(v60);
  v63 = *(v62 + 64);
  __chkstk_darwin(v61);
  sub_10000306C();
  v66 = v65 - v64;
  v299 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  v67 = *(v26 + *(v299 + 28));

  sub_1000F86AC(v68);
  v70 = v69;

  v316 = v70;

  sub_1001072CC(&v316);

  v71 = v316;
  sub_1000031A4();
  v300 = v26;
  sub_10000AE2C();
  sub_100107DFC();
  v72 = *(v24 + v29[5]);
  v73 = *(v71 + 16);
  v268 = v71;
  sub_100108510();
  if (!v73)
  {
    swift_bridgeObjectRetain_n();
    v313 = v72;
LABEL_38:
    sub_100107FA0();
    v222 = v29[6];
    sub_10003D1E4();
    v223 = v29[7];
    sub_10003D1E4();
    v224 = v29[9];
    v312 = *(v24 + v29[8]);
    v225 = v312;
    v314 = *(v24 + v224);
    v226 = v314;
    v227 = (v24 + v29[10]);
    v228 = *v227;
    v229 = v227[1];
    v230 = v29;
    v231 = v227[2];
    v232 = v227[3];
    *(v269 + v230[5]) = v72;
    *(v269 + v230[8]) = v225;
    *(v269 + v230[9]) = v226;
    v233 = (v269 + v230[10]);
    *v233 = v228;
    v233[1] = v229;
    v234 = v228;
    v233[2] = v231;
    v233[3] = v232;
    v235 = v231;
    sub_1000031A4();
    v315 = v236;
    sub_100107DFC();
    v311 = v230[6];
    sub_10003D1E4();
    v237 = v230[7];
    sub_10003D1E4();
    sub_100108210();
    sub_1001071F4(v238, v239);
    sub_100108210();
    sub_1001071F4(v240, v241);
    v242 = v312;

    sub_100108210();
    sub_1001071F4(v243, v244);

    sub_10000764C();
    v310 = v245;
    sub_100107DA4(v269, v246);
    v247 = v313;
    *(v270 + v230[5]) = v313;
    *(v270 + v230[8]) = v242;
    sub_100108540();
    v248 = v234;
    *(v249 + 16) = v235;
    *(v249 + 24) = v232;
    v250 = v230[7];
    v307 = v235;
    v308 = v250;
    v251 = type metadata accessor for Date();
    sub_10000307C(v251);
    (*(v252 + 16))(v250 + v271, v309, v251);
    sub_10000B7B0();
    sub_100002728(v253, v254, v255, v251);
    sub_100107DFC();
    v309 = v230[6];
    sub_10003D1E4();

    v256 = v248;
    sub_100108210();
    sub_1001071F4(v257, v258);
    v259 = v312;

    v260 = v314;

    sub_100107DA4(v270, v310);
    *(v271 + v230[5]) = v247;
    *(v271 + v230[8]) = v259;
    *(v271 + v230[9]) = v260;
    v261 = (v271 + v230[10]);
    *v261 = v256;
    v261[1] = v229;
    v262 = v307;
    v261[2] = v307;
    v261[3] = v232;
    sub_100107DFC();
    v263 = v230[6];
    sub_10003D1E4();
    v264 = v230[7];
    sub_10003D1E4();

    v265 = sub_1000050CC();
    sub_100107DA4(v265, v266);
    *(v272 + v230[5]) = v247;
    *(v272 + v230[8]) = v268;
    sub_100108540();
    *(v267 + 16) = v262;
    *(v267 + 24) = v232;
    sub_1000027F8();
    return;
  }

  swift_bridgeObjectRetain_n();
  v74 = (v71 + 40);
  v313 = v72;
  v296 = v72;
  v297 = v29;
  v295 = v24;
  v294 = v66;
  while (1)
  {
    v311 = v74;
    v312 = v73;
    v75 = *(v74 - 1);
    v76 = *v74;
    v77 = *(v72 + 16);

    v314 = v76;
    v315 = v75;
    if (v77)
    {
      sub_10014EB30(v75, v76);
      if (v78)
      {
        v79 = *(v72 + 56);
        v275 = *(v298 + 72);
        sub_100006D1C();
        sub_100108708(&v294);
        sub_100107DFC();
        sub_100007FA8();
        sub_100108204(&a15);
        sub_100107FA0();
        v80 = v283 + v43[8];
        v81 = type metadata accessor for Date();
        sub_10000307C(v81);
        v83 = *(v82 + 16);
        (v83)(v80, v309, v81);
        sub_10000B7B0();
        sub_100002728(v84, v85, v86, v81);
        v87 = *(v24 + 8);
        v308 = *v24;
        v88 = *(v24 + 24);
        v307 = *(v24 + 16);
        sub_1001081E0(v88);
        v89 = *(v24 + 40);
        v306 = *(v24 + 32);
        sub_10010869C(v89);
        v90 = *(v24 + 56);
        v305 = *(v24 + 48);
        v301 = v90;
        v281 = v283 + v43[9];
        v292 = v81;
        v83();
        v279 = v283 + v43[10];
        sub_10003D1E4();
        v91 = v43[12];
        v304 = *(v24 + v43[11]);
        sub_100007664();
        sub_10003D1E4();
        v92 = v43[14];
        v93 = (v24 + v43[13]);
        v290 = *v93;
        v276 = v93[1];
        v303 = *(v24 + v92);
        v94 = *(v24 + v92 + 8);
        v95 = (v24 + v43[15]);
        v96 = *(v24 + v43[16]);
        v97 = *v95;
        v288 = v95[1];
        v98 = v43[19];
        v99 = v43[20];
        v100 = *(v24 + v43[17]);
        v302 = *(v24 + v43[18]);
        v101 = *(v24 + v98);
        sub_10003D1E4();
        v102 = v307;
        *v283 = v308;
        v283[1] = v87;
        v283[2] = v102;
        v283[3] = v291;
        v283[4] = v306;
        v283[5] = v287;
        v103 = v304;
        v104 = v301;
        v283[6] = v305;
        v283[7] = v104;
        *(v283 + v43[11]) = v103;
        v105 = (v283 + v43[13]);
        *v105 = v290;
        v105[1] = v276;
        sub_1001080C4((v283 + v43[14]));
        *(v106 + 8) = v94;
        v107 = (v283 + v43[15]);
        v289 = v97;
        *v107 = v97;
        v107[1] = v288;
        *(v283 + v43[16]) = v96;
        *(v283 + v43[17]) = v100;
        *(v283 + v43[18]) = v302;
        *(v283 + v43[19]) = v101;
        v108 = *(v300 + *(v299 + 36));
        v109 = *(v108 + 16);

        sub_100108690(&v313);

        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_100108334();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_10010881C();
        swift_bridgeObjectRetain_n();
        sub_100108510();
        swift_bridgeObjectRetain_n();
        if (v109)
        {
          sub_10014EB30(v315, v76);
          if (v110)
          {
            v111 = *(v108 + 56);
            sub_100108558();
            sub_10000C020();
            sub_100108708(&v292);
            sub_100107DFC();
            v112 = (v108 + *(v274 + 32));
            v109 = *v112;
            v113 = v112[1];

            sub_100008324();
            sub_100107DA4(v108, v114);
LABEL_24:
            v277 = v43[8];
            sub_1001082C4();
            sub_10003D1E4();
            sub_1001082B8(v43[9]);
            sub_100010F9C();
            v180();
            v282 = v43[10];
            sub_100007664();
            sub_10003D1E4();
            v280 = v43[12];
            sub_100007664();
            sub_10003D1E4();
            v181 = v76 + v43[20];
            sub_10003D1E4();

            sub_100004ADC();
            v278 = v182;
            sub_100107DA4(v283, v183);
            *v76 = v308;
            v76[1] = v87;
            v76[2] = v307;
            v76[3] = v291;
            v76[4] = v306;
            v76[5] = v287;
            v184 = v304;
            v185 = v301;
            v76[6] = v305;
            v76[7] = v185;
            *(v76 + v43[11]) = v184;
            v186 = (v76 + v43[13]);
            *v186 = v109;
            v186[1] = v113;
            sub_1001080C4((v76 + v43[14]));
            sub_100010E0C(v187);
            v188 = (v76 + v43[15]);
            *v188 = v289;
            v188[1] = v288;
            sub_100108278(v43[16]);
            sub_100108278(v43[17]);
            *(v76 + v43[18]) = v302;
            *(v76 + v43[19]) = v286;
            v189 = v43[20];

            sub_1000F9CE4();
            type metadata accessor for TSDataSyncDatasetMetricsFields(0);
            sub_10000B7B0();
            sub_100002728(v190, v191, v192, v193);
            v194 = v43[8];
            sub_100004920();
            sub_10003D1E4();
            v195 = v43[9];
            sub_1001086E4();
            sub_100010F9C();
            v196();
            v197 = v43[10];
            sub_100004920();
            sub_10010861C();
            sub_10003D1E4();
            v198 = v43[12];
            sub_100004920();
            sub_10010861C();
            sub_10003D1E4();
            sub_1001080B8(&v313);

            sub_100107DA4(v76, v278);
            v199 = v307;
            *v273 = v308;
            v273[1] = v87;
            v273[2] = v199;
            v273[3] = v291;
            v200 = v305;
            v273[4] = v306;
            v273[5] = v287;
            v273[6] = v200;
            v273[7] = v185;
            *(v273 + v43[11]) = v304;
            sub_100002A38((v273 + v43[13]));
            sub_1001080C4((v273 + v43[14]));
            sub_100010E0C(v201);
            v202 = v273 + v43[15];
            sub_1000ED3A4();
            *v203 = v204;
            v203[1] = v288;
            *(v273 + v43[16]) = v96;
            *(v273 + v43[17]) = v100;
            *(v273 + v43[18]) = v302;
            *(v273 + v43[19]) = &qword_1002318B0;
            sub_100007FA8();
            sub_100108204(&v297);
            sub_100107FA0();
            v205 = v313;
            swift_isUniquelyReferenced_nonNull_native();
            v316 = v205;
            v206 = sub_10000AE2C();
            sub_10014EB30(v206, v207);
            sub_10000B818();
            if (__OFADD__(v210, v211))
            {
              goto LABEL_41;
            }

            v212 = v208;
            v213 = v209;
            sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
            if (sub_100108840())
            {
              v214 = sub_10000AE2C();
              sub_10014EB30(v214, v215);
              sub_10000A224();
              v72 = v296;
              v29 = v297;
              if (!v174)
              {
                goto LABEL_43;
              }

              v212 = v216;
            }

            else
            {
              v72 = v296;
              v29 = v297;
            }

            v175 = v316;
            if (v213)
            {
              sub_1001087F0(*(v316 + 56));
              sub_100107190(&qword_1002318B0, v217);
            }

            else
            {
              sub_1000035B8(v316 + 8 * (v212 >> 6));
              sub_10010867C();
              sub_1001087F0(v218);
              sub_100007FA8();
              sub_100107FA0();
              v219 = *(v175 + 16);
              v178 = __OFADD__(v219, 1);
              v220 = v219 + 1;
              if (v178)
              {
                goto LABEL_42;
              }

              *(v175 + 16) = v220;
            }

            sub_100004ADC();
            sub_100107DA4(v293, v221);
            goto LABEL_35;
          }

          v109 = 0;
        }

        v113 = 0;
        goto LABEL_24;
      }
    }

    v115 = v43[8];
    v116 = type metadata accessor for Date();
    sub_100007B78();
    sub_100002728(v117, v118, v119, v116);
    v120 = v43[9];
    static Date.distantPast.getter();
    v304 = v43[10];
    v121 = sub_10000D500(v304);
    sub_100002728(v121, v122, v123, v116);
    v303 = v43[12];
    v124 = sub_10000D500(v303);
    sub_100002728(v124, v125, v126, v116);
    v127 = Dictionary.init(dictionaryLiteral:)();
    v128 = v43[20];
    type metadata accessor for TSDataSyncDatasetMetricsFields(0);
    sub_100007B78();
    sub_100002728(v129, v130, v131, v132);
    sub_100108074();
    *(v285 + v43[11]) = 0;
    v133 = (v285 + v43[13]);
    *v133 = 0;
    v133[1] = 0;
    sub_100108004(v285 + v43[14]);
    v134 = (v285 + v43[15]);
    *v134 = 0;
    v134[1] = 0;
    *(v285 + v43[16]) = 0;
    *(v285 + v43[17]) = 0;
    *(v285 + v43[18]) = v127;
    *(v285 + v43[19]) = _swiftEmptyArrayStorage;
    v135 = v43[8];
    v136 = *(v116 - 8);
    v137 = *(v136 + 16);
    v138 = (v136 + 16);
    v139 = v310;
    v137(v135 + v310, v309, v116);
    v306 = v135;
    sub_10000B7B0();
    sub_100002728(v140, v141, v142, v116);
    v305 = v43[9];
    v307 = v138;
    v308 = v137;
    v137(v305 + v139, v285 + v120, v116);
    v143 = v43[10];
    sub_10003D1E4();
    v304 = v43[12];
    sub_100108228();
    v144 = v127;
    sub_10003D1E4();
    v303 = v43[20];
    sub_10003D1E4();

    sub_100004ADC();
    sub_100107DA4(v285, v145);
    *v139 = 0;
    *(v139 + 1) = 0xE000000000000000;
    *(v139 + 2) = 0;
    *(v139 + 3) = 0;
    *(v139 + 4) = 0;
    *(v139 + 5) = 0xE000000000000000;
    *(v139 + 6) = 0;
    *(v139 + 7) = 0;
    *&v139[v43[11]] = 0;
    sub_10010873C(v43[13]);
    sub_100108004(&v139[v43[14]]);
    sub_10010873C(v43[15]);
    v139[v43[16]] = 0;
    v139[v43[17]] = 0;
    *&v139[v43[18]] = v127;
    *&v139[v43[19]] = _swiftEmptyArrayStorage;
    v146 = *(v300 + *(v299 + 36));
    v147 = *(v146 + 16);

    if (!v147)
    {
      goto LABEL_11;
    }

    sub_10014EB30(v315, v314);
    if (v148)
    {
      v149 = *(v146 + 56);
      sub_100108558();
      sub_10000C020();
      sub_100108204(&v293);
      sub_100107DFC();
      v150 = (v147 + *(v274 + 32));
      v152 = *v150;
      v151 = v150[1];

      sub_100008324();
      sub_100107DA4(v147, v153);
    }

    else
    {
LABEL_11:
      v152 = 0;
      v151 = 0;
    }

    v154 = v43[8];
    v155 = v310;
    sub_10003D1E4();
    v308(&v284[v43[9]], v305 + v155, v116);
    v156 = v43[10];
    sub_100108210();
    sub_10003D1E4();
    v157 = v43[12];
    sub_100108210();
    sub_10003D1E4();
    v158 = v43[20];
    sub_10003D1E4();
    sub_100004ADC();
    sub_100107DA4(v155, v159);
    *v284 = 0;
    *(v284 + 1) = 0xE000000000000000;
    *(v284 + 2) = 0;
    *(v284 + 3) = 0;
    *(v284 + 4) = 0;
    *(v284 + 5) = 0xE000000000000000;
    *(v284 + 6) = 0;
    *(v284 + 7) = 0;
    *&v284[v43[11]] = 0;
    v160 = &v284[v43[13]];
    *v160 = v152;
    *(v160 + 1) = v151;
    sub_100108004(&v284[v43[14]]);
    v161 = &v284[v43[15]];
    *v161 = 0;
    *(v161 + 1) = 0;
    v284[v43[16]] = 0;
    v284[v43[17]] = 0;
    *&v284[v43[18]] = v144;
    *&v284[v43[19]] = _swiftEmptyArrayStorage;
    sub_100007FA8();
    sub_100108204(&v312);
    sub_100107FA0();
    v162 = v313;
    swift_isUniquelyReferenced_nonNull_native();
    v316 = v162;
    v163 = sub_10000AE2C();
    sub_10014EB30(v163, v164);
    sub_10000B818();
    if (__OFADD__(v167, v168))
    {
      break;
    }

    v169 = v165;
    v170 = v166;
    sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
    if (sub_100108840())
    {
      v171 = sub_10000AE2C();
      sub_10014EB30(v171, v172);
      sub_10000A224();
      v29 = v297;
      v72 = v296;
      if (!v174)
      {
        goto LABEL_43;
      }

      v169 = v173;
    }

    else
    {
      v29 = v297;
      v72 = v296;
    }

    v175 = v316;
    if (v170)
    {
      sub_100107190(v284, *(v316 + 56) + *(v298 + 72) * v169);
    }

    else
    {
      sub_1000035B8(v316 + 8 * (v169 >> 6));
      sub_10010867C();
      v176 = *(v298 + 72);
      sub_100007FA8();
      sub_100107FA0();
      v177 = *(v175 + 16);
      v178 = __OFADD__(v177, 1);
      v179 = v177 + 1;
      if (v178)
      {
        goto LABEL_40;
      }

      *(v175 + 16) = v179;
    }

LABEL_35:
    v24 = v295;
    v313 = v175;
    v74 = v311 + 2;
    v73 = v312 - 1;
    if (v312 == 1)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
}