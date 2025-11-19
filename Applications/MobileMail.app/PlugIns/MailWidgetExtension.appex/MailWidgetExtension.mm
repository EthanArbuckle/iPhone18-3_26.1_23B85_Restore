uint64_t sub_100001F28()
{
  v2 = sub_10007CEF8();
  sub_100001F90(v2, qword_10009A5D8);
  sub_10000202C(v2, qword_10009A5D8);
  v0 = type metadata accessor for AvailabilityQueue();
  return sub_100016180(v0, v0);
}

uint64_t sub_100001F90(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t sub_10000202C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t type metadata accessor for AvailabilityQueue()
{
  v1 = qword_10009A700;
  if (!qword_10009A700)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1000020F8()
{
  if (qword_10009A5D0 != -1)
  {
    swift_once();
  }

  v0 = sub_10007CEF8();
  return sub_10000202C(v0, qword_10009A5D8);
}

uint64_t sub_100002164@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000020F8();
  v1 = sub_10007CEF8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1000021C8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
  swift_beginAccess();
  sub_100002224(v3, a1);
  return swift_endAccess();
}

void *sub_100002224(const void *a1, void *a2)
{
  v6 = type metadata accessor for AvailabilityQueue.State();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_10007CE28();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t type metadata accessor for AvailabilityQueue.State()
{
  v1 = qword_10009A820;
  if (!qword_10009A820)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1000023C0(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(type metadata accessor for AvailabilityQueue.State() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v5 = &v4 - v4;
  sub_100002224(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
  v7 = &v9;
  swift_beginAccess();
  sub_100002484(v5, v6);
  swift_endAccess();
  return sub_1000025C4(v8);
}

void *sub_100002484(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1000025C4(a2);
    v4 = type metadata accessor for AvailabilityQueue.State();
    if (swift_getEnumCaseMultiPayload() < 2)
    {
      v2 = sub_10007CE28();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_1000025C4(uint64_t a1)
{
  type metadata accessor for AvailabilityQueue.State();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v1 = sub_10007CE28();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_100002690()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_pendingTasks);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1000026F0(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_pendingTasks);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_100002760()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_availabilityHandler);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1000027CC(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_availabilityHandler);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_10000284C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1000028B8(a1, a2, a3, a4, a5);
}

uint64_t sub_1000028B8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  type metadata accessor for AvailabilityQueue.State();
  swift_storeEnumTagMultiPayload();
  v8 = OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_pendingTasks;
  sub_10007D658();
  *(v5 + v8) = sub_10007DEC8();
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;

  v6 = (v5 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_availabilityHandler);
  *v6 = a2;
  v6[1] = a3;

  return v14;
}

uint64_t sub_1000029C4(uint64_t a1)
{
  v240 = a1;
  v237 = 0;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  v279 = 0;
  v283 = 0;
  v226 = 0;
  v271 = 0;
  v227 = sub_10007CEF8();
  v228 = *(v227 - 8);
  v229 = v228;
  v233 = *(v228 + 64);
  v2 = __chkstk_darwin(0);
  v235 = (v233 + 15) & 0xFFFFFFFFFFFFFFF0;
  v230 = v65 - v235;
  v3 = __chkstk_darwin(v2);
  v231 = v65 - v235;
  v4 = __chkstk_darwin(v3);
  v232 = v65 - v235;
  v5 = __chkstk_darwin(v4);
  v234 = v65 - v235;
  __chkstk_darwin(v5);
  v236 = v65 - v235;
  v238 = type metadata accessor for AvailabilityQueue.State();
  v6 = *(*(v238 - 8) + 64);
  __chkstk_darwin(v237);
  v239 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_10007CE28();
  v242 = *(v241 - 8);
  v243 = v242;
  v248 = v242[8];
  v244 = v248;
  v8 = __chkstk_darwin(v240);
  v250 = (v248 + 15) & 0xFFFFFFFFFFFFFFF0;
  v245 = v65 - v250;
  v9 = __chkstk_darwin(v8);
  v246 = v65 - v250;
  v283 = v65 - v250;
  v10 = __chkstk_darwin(v9);
  v247 = v65 - v250;
  v282 = v65 - v250;
  v11 = __chkstk_darwin(v10);
  v249 = v65 - v250;
  v281 = v65 - v250;
  v12 = __chkstk_darwin(v11);
  v251 = v65 - v250;
  v280 = v12;
  v279 = v1;
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    sub_10007D898("enqueue() has to be called from the main thread", 0x2FuLL, 1);
    v64 = 0;
    v63 = 50;
    sub_10007DDB8();
    __break(1u);
  }

  v222 = (v225 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
  v223 = &v278;
  swift_beginAccess();
  sub_100002224(v222, v239);
  swift_endAccess();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v13 = v236;
        v14 = sub_1000020F8();
        (*(v229 + 16))(v13, v14, v227);
        v220 = sub_10007CED8();
        v217 = v220;
        v219 = sub_10007DBC8();
        v218 = v219;
        sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
        v221 = sub_10007DEC8();
        if (os_log_type_enabled(v220, v219))
        {
          v15 = v226;
          v208 = sub_10007DC88();
          v204 = v208;
          v205 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
          v206 = 0;
          v209 = sub_10000742C(0);
          v207 = v209;
          v210 = sub_10000742C(v206);
          v255 = v208;
          v254 = v209;
          v253 = v210;
          v211 = 0;
          v212 = &v255;
          sub_100007480(0, &v255);
          sub_100007480(v211, v212);
          v252 = v221;
          v213 = v65;
          __chkstk_darwin(v65);
          v214 = &v65[-6];
          v65[-4] = v16;
          v65[-3] = &v254;
          v63 = &v253;
          v215 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
          sub_1000097D8();
          sub_10007D948();
          v216 = v15;
          if (v15)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&_mh_execute_header, v217, v218, "State is undefined, adding pending task", v204, 2u);
            v202 = 0;
            sub_1000074E0(v207);
            sub_1000074E0(v210);
            sub_10007DC68();

            v203 = v216;
          }
        }

        else
        {

          v203 = v226;
        }

        v200 = v203;

        (*(v229 + 8))(v236, v227);

        v256[3] = v240;
        v199 = v256;
        swift_beginAccess();
        sub_1000094DC(&qword_10009A6A8, &unk_10007EE10);
        sub_10007D9F8();
        swift_endAccess();
        sub_100004460();
        return v200;
      }

      else
      {
        v17 = v234;
        v18 = sub_1000020F8();
        (*(v229 + 16))(v17, v18, v227);
        v197 = sub_10007CED8();
        v194 = v197;
        v196 = sub_10007DBC8();
        v195 = v196;
        sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
        v198 = sub_10007DEC8();
        if (os_log_type_enabled(v197, v196))
        {
          v20 = v226;
          v185 = sub_10007DC88();
          v181 = v185;
          v182 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
          v183 = 0;
          v186 = sub_10000742C(0);
          v184 = v186;
          v187 = sub_10000742C(v183);
          v259 = v185;
          v258 = v186;
          v257 = v187;
          v188 = 0;
          v189 = &v259;
          sub_100007480(0, &v259);
          sub_100007480(v188, v189);
          v256[4] = v198;
          v190 = v65;
          __chkstk_darwin(v65);
          v191 = &v65[-6];
          v65[-4] = v21;
          v65[-3] = &v258;
          v63 = &v257;
          v192 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
          sub_1000097D8();
          sub_10007D948();
          v193 = v20;
          if (v20)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&_mh_execute_header, v194, v195, "State is currently checked, adding pending task", v181, 2u);
            v179 = 0;
            sub_1000074E0(v184);
            sub_1000074E0(v187);
            sub_10007DC68();

            v180 = v193;
          }
        }

        else
        {

          v180 = v226;
        }

        v178 = v180;

        (*(v229 + 8))(v234, v227);

        v260[3] = v240;
        v177 = v260;
        swift_beginAccess();
        sub_1000094DC(&qword_10009A6A8, &unk_10007EE10);
        sub_10007D9F8();
        swift_endAccess();
        return v178;
      }
    }

    v147 = v243[2];
    v148 = (v243 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v147(v247, v239, v241);
    sub_10007CDE8();
    if (*(v225 + 24) < -v27)
    {
      v147(v251, v247, v241);
      v146 = v243[1];
      v145 = v243 + 1;
      v146(v247, v241);
      v146(v239, v241);
      goto LABEL_29;
    }

    v45 = v230;
    v85 = v243[1];
    v86 = (v243 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v85(v247, v241);
    v89 = v243[4];
    v88 = v243 + 4;
    v89(v246, v239, v241);
    v283 = v246;
    v46 = sub_1000020F8();
    (*(v229 + 16))(v45, v46, v227);
    v147(v245, v246, v241);
    v87 = (*(v88 + 48) + 16) & ~*(v88 + 48);
    v90 = swift_allocObject();
    v89((v90 + v87), v245, v241);

    v96 = 32;
    v97 = 7;
    v47 = swift_allocObject();
    v48 = v90;
    v98 = v47;
    *(v47 + 16) = sub_100004740;
    *(v47 + 24) = v48;

    v108 = sub_10007CED8();
    v91 = v108;
    v107 = sub_10007DBB8();
    v92 = v107;
    v93 = 17;
    v101 = swift_allocObject();
    v94 = v101;
    *(v101 + 16) = 34;
    v102 = swift_allocObject();
    v95 = v102;
    *(v102 + 16) = 8;
    v49 = swift_allocObject();
    v50 = v98;
    v99 = v49;
    *(v49 + 16) = sub_10000766C;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v99;
    v105 = v51;
    v100 = v51;
    *(v51 + 16) = sub_100009484;
    *(v51 + 24) = v52;
    v106 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v103 = sub_10007DEC8();
    v104 = v53;

    v54 = v101;
    v55 = v104;
    *v104 = sub_100009410;
    v55[1] = v54;

    v56 = v102;
    v57 = v104;
    v104[2] = sub_100009410;
    v57[3] = v56;

    v58 = v104;
    v59 = v105;
    v104[4] = sub_1000094D0;
    v58[5] = v59;
    sub_100006FD4();

    if (os_log_type_enabled(v108, v107))
    {
      v60 = v226;
      v78 = sub_10007DC88();
      v75 = v78;
      v76 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v79 = sub_10000742C(0);
      v77 = v79;
      v81 = 1;
      v80 = sub_10000742C(1);
      v276 = v78;
      v275 = v79;
      v274 = v80;
      v82 = &v276;
      sub_100007480(2, &v276);
      sub_100007480(v81, v82);
      v272 = sub_100009410;
      v273 = v94;
      sub_100007494(&v272, v82, &v275, &v274);
      v83 = v60;
      v84 = v60;
      if (v60)
      {
        v73 = 0;

        __break(1u);
      }

      else
      {
        v272 = sub_100009410;
        v273 = v95;
        sub_100007494(&v272, &v276, &v275, &v274);
        v71 = 0;
        v72 = 0;
        v272 = sub_1000094D0;
        v273 = v100;
        sub_100007494(&v272, &v276, &v275, &v274);
        v69 = 0;
        v70 = 0;
        _os_log_impl(&_mh_execute_header, v91, v92, "Device is locked (since %{public}s), tasks will be ignored", v75, 0xCu);
        sub_1000074E0(v77);
        sub_1000074E0(v80);
        sub_10007DC68();

        v74 = v69;
      }
    }

    else
    {
      v61 = v226;

      v74 = v61;
    }

    v68 = v74;

    (*(v229 + 8))(v230, v227);
    v67 = &v277;
    v65[1] = 0;
    swift_beginAccess();
    sub_10007D658();
    v66 = sub_1000047B4();
    sub_1000094DC(&qword_10009A6A8, &unk_10007EE10);
    sub_10007DA08(v66 & 1);
    swift_endAccess();
    v85(v246, v241);
    return v68;
  }

  else
  {
    v175 = v243[2];
    v176 = (v243 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v175(v249, v239, v241);
    sub_10007CDE8();
    if (*(v225 + 24) < -v22)
    {
      v175(v251, v249, v241);
      v174 = v243[1];
      v173 = v243 + 1;
      v174(v249, v241);
      v174(v239, v241);
LABEL_29:
      v28 = v231;
      v271 = v251;
      v29 = sub_1000020F8();
      (*(v229 + 16))(v28, v29, v227);

      v132 = 32;
      v133 = 7;
      v30 = swift_allocObject();
      v31 = v225;
      v134 = v30;
      *(v30 + 16) = sub_100009548;
      *(v30 + 24) = v31;

      v144 = sub_10007CED8();
      v127 = v144;
      v143 = sub_10007DBC8();
      v128 = v143;
      v129 = 17;
      v137 = swift_allocObject();
      v130 = v137;
      *(v137 + 16) = 34;
      v138 = swift_allocObject();
      v131 = v138;
      *(v138 + 16) = 8;
      v32 = swift_allocObject();
      v33 = v134;
      v135 = v32;
      *(v32 + 16) = sub_100009590;
      *(v32 + 24) = v33;
      v34 = swift_allocObject();
      v35 = v135;
      v141 = v34;
      v136 = v34;
      *(v34 + 16) = sub_100009484;
      *(v34 + 24) = v35;
      v142 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
      v139 = sub_10007DEC8();
      v140 = v36;

      v37 = v137;
      v38 = v140;
      *v140 = sub_100009410;
      v38[1] = v37;

      v39 = v138;
      v40 = v140;
      v140[2] = sub_100009410;
      v40[3] = v39;

      v41 = v140;
      v42 = v141;
      v140[4] = sub_1000094D0;
      v41[5] = v42;
      sub_100006FD4();

      if (os_log_type_enabled(v144, v143))
      {
        v43 = v226;
        v120 = sub_10007DC88();
        v117 = v120;
        v118 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
        v121 = sub_10000742C(0);
        v119 = v121;
        v123 = 1;
        v122 = sub_10000742C(1);
        v268 = v120;
        v267 = v121;
        v266 = v122;
        v124 = &v268;
        sub_100007480(2, &v268);
        sub_100007480(v123, v124);
        v264 = sub_100009410;
        v265 = v130;
        sub_100007494(&v264, v124, &v267, &v266);
        v125 = v43;
        v126 = v43;
        if (v43)
        {
          v115 = 0;

          __break(1u);
        }

        else
        {
          v264 = sub_100009410;
          v265 = v131;
          sub_100007494(&v264, &v268, &v267, &v266);
          v113 = 0;
          v114 = 0;
          v264 = sub_1000094D0;
          v265 = v136;
          sub_100007494(&v264, &v268, &v267, &v266);
          v111 = 0;
          v112 = 0;
          _os_log_impl(&_mh_execute_header, v127, v128, "State (%{public}s) expired, check state again", v117, 0xCu);
          sub_1000074E0(v119);
          sub_1000074E0(v122);
          sub_10007DC68();

          v116 = v111;
        }
      }

      else
      {
        v44 = v226;

        v116 = v44;
      }

      v110 = v116;

      (*(v229 + 8))(v231, v227);

      v270 = v240;
      v109 = &v269;
      swift_beginAccess();
      sub_1000094DC(&qword_10009A6A8, &unk_10007EE10);
      sub_10007D9F8();
      swift_endAccess();
      sub_100004460();
      (v243[1])(v251, v241);
      return v110;
    }

    v23 = v232;
    v166 = v243[1];
    v167 = (v243 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v166(v249, v241);
    v24 = sub_1000020F8();
    (*(v229 + 16))(v23, v24, v227);
    v171 = sub_10007CED8();
    v168 = v171;
    v170 = sub_10007DBC8();
    v169 = v170;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v172 = sub_10007DEC8();
    if (os_log_type_enabled(v171, v170))
    {
      v25 = v226;
      v157 = sub_10007DC88();
      v153 = v157;
      v154 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v155 = 0;
      v158 = sub_10000742C(0);
      v156 = v158;
      v159 = sub_10000742C(v155);
      v263 = v157;
      v262 = v158;
      v261 = v159;
      v160 = 0;
      v161 = &v263;
      sub_100007480(0, &v263);
      sub_100007480(v160, v161);
      v260[4] = v172;
      v162 = v65;
      __chkstk_darwin(v65);
      v163 = &v65[-6];
      v65[-4] = v26;
      v65[-3] = &v262;
      v63 = &v261;
      v164 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v165 = v25;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v168, v169, "Data is available, executing task immediateley", v153, 2u);
        v151 = 0;
        sub_1000074E0(v156);
        sub_1000074E0(v159);
        sub_10007DC68();

        v152 = v165;
      }
    }

    else
    {

      v152 = v226;
    }

    v150 = v152;

    (*(v229 + 8))(v232, v227);
    sub_100009744();
    v149 = sub_10007DC08();
    sub_10007DC28();

    v166(v239, v241);
    return v150;
  }
}

uint64_t sub_100004460()
{
  v8[1] = 0;
  v15 = sub_100009954;
  v14 = *v0;
  v20 = 0;
  v16 = 0;
  v1 = type metadata accessor for AvailabilityQueue.State();
  v8[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v9 = v8 - v8[0];
  v20 = v0;
  swift_storeEnumTagMultiPayload();
  v10 = v0 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state;
  v11 = &v19;
  swift_beginAccess();
  sub_100002484(v9, v10);
  swift_endAccess();
  v13 = 7;
  v18 = swift_allocObject();

  v12 = v0;
  swift_weakInit();

  v2 = swift_allocObject();
  v3 = v14;
  v4 = v15;
  v5 = v2;
  v6 = v16;
  v17 = v5;
  *(v5 + 16) = v18;
  *(v5 + 24) = v3;
  sub_100005444(v6, v4, v5);
}

uint64_t sub_100004674()
{
  v3 = *(sub_10007CE28() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_100004740@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007CE28();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_100004614(v3, a1);
}

uint64_t sub_1000047CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
  swift_beginAccess();
  sub_100002224(v3, a2);
  return swift_endAccess();
}

uint64_t sub_100004828(unsigned int a1, uint64_t a2)
{
  v123 = a2;
  v122 = a1;
  v112 = a1;
  v151 = 0;
  v121 = 0;
  v150 = 0;
  v148 = 0;
  v113 = 0;
  v140 = 0;
  v138[1] = 0;
  v138[0] = 0;
  v135 = 0;
  v114 = sub_10007CEF8();
  v115 = *(v114 - 8);
  v116 = v115;
  v117 = *(v115 + 64);
  v2 = __chkstk_darwin(0);
  v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  v118 = &v28 - v119;
  __chkstk_darwin(v2);
  v120 = &v28 - v119;
  v124 = type metadata accessor for AvailabilityQueue.State();
  v3 = *(*(v124 - 8) + 64);
  v4 = __chkstk_darwin(v122);
  v125 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v4;
  v126 = v6 + 16;
  v150 = v6 + 16;
  v127 = &v149;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v128 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return v113;
  }

  v111 = v128;
  v109 = v111;
  v148 = v111;
  if (v112)
  {
    sub_10007CE18();
    v92 = 0;
    swift_storeEnumTagMultiPayload();
    v78 = (v109 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
    v84 = 33;
    v79 = &v142;
    v85 = 0;
    swift_beginAccess();
    sub_100002484(v125, v78);
    swift_endAccess();
    p_ivars = &MFGetMailboxIntentResponse__classData.ivars;
    v80 = (v109 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_pendingTasks);
    v96 = 32;
    v82 = &v141;
    swift_beginAccess();
    v89 = *v80;
    v81 = v89;

    swift_endAccess();
    v140 = v89;
    v7 = p_ivars[209] + v109;
    v88 = &v139;
    swift_beginAccess();
    sub_10007D658();
    v86 = sub_1000047B4();
    v87 = sub_1000094DC(&qword_10009A6A8, &unk_10007EE10);
    sub_10007DA08(v86 & 1);
    v8 = v120;
    swift_endAccess();
    v9 = sub_1000020F8();
    (*(v116 + 16))(v8, v9, v114);

    v97 = 7;
    v98 = swift_allocObject();
    *(v98 + 16) = v89;
    v108 = sub_10007CED8();
    v90 = v108;
    v107 = sub_10007DBC8();
    v91 = v107;
    v93 = 17;
    v101 = swift_allocObject();
    v94 = v101;
    *(v101 + 16) = v92;
    v102 = swift_allocObject();
    v95 = v102;
    *(v102 + 16) = 8;
    v10 = swift_allocObject();
    v11 = v98;
    v99 = v10;
    *(v10 + 16) = sub_10000A6B4;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v99;
    v105 = v12;
    v100 = v12;
    *(v12 + 16) = sub_10000A754;
    *(v12 + 24) = v13;
    v106 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v103 = sub_10007DEC8();
    v104 = v14;

    v15 = v101;
    v16 = v104;
    *v104 = sub_100009410;
    v16[1] = v15;

    v17 = v102;
    v18 = v104;
    v104[2] = sub_100009410;
    v18[3] = v17;

    v19 = v104;
    v20 = v105;
    v104[4] = sub_10000A7A0;
    v19[5] = v20;
    sub_100006FD4();

    if (os_log_type_enabled(v108, v107))
    {
      v21 = v113;
      v72 = sub_10007DC88();
      v68 = v72;
      v69 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v70 = 0;
      v73 = sub_10000742C(0);
      v71 = v73;
      v74 = sub_10000742C(v70);
      v134 = v72;
      v133 = v73;
      v132 = v74;
      v75 = &v134;
      sub_100007480(0, &v134);
      sub_100007480(1, v75);
      v130 = sub_100009410;
      v131 = v94;
      sub_100007494(&v130, v75, &v133, &v132);
      v76 = v21;
      v77 = v21;
      if (v21)
      {
        v66 = 0;

        __break(1u);
      }

      else
      {
        v130 = sub_100009410;
        v131 = v95;
        sub_100007494(&v130, &v134, &v133, &v132);
        v64 = 0;
        v65 = 0;
        v130 = sub_10000A7A0;
        v131 = v100;
        sub_100007494(&v130, &v134, &v133, &v132);
        v62 = 0;
        v63 = 0;
        _os_log_impl(&_mh_execute_header, v90, v91, "Availability check succeeded, executing %ld tasks", v68, 0xCu);
        v61 = 0;
        sub_1000074E0(v71);
        sub_1000074E0(v74);
        sub_10007DC68();

        v67 = v62;
      }
    }

    else
    {
      v22 = v113;

      v67 = v22;
    }

    v59 = v67;

    (*(v116 + 8))(v120, v114);

    v137 = v81;
    sub_10000A88C();
    sub_10007DB68();
    for (i = v59; ; i = v54)
    {
      v57 = i;
      sub_1000094DC(&qword_10009A8D0, &qword_10007F0E8);
      sub_10007DD88();
      v58 = v136;
      if (!v136)
      {
        break;
      }

      v56 = v58;
      v53 = v58;
      v54 = v57;
      v135 = v58;
      sub_100009744();
      v52 = sub_10007DC08();
      sub_10007DC28();
    }

    sub_10000A480(v138);

    v55 = v57;
  }

  else
  {
    v23 = v118;
    v24 = sub_1000020F8();
    (*(v116 + 16))(v23, v24, v114);
    v50 = sub_10007CED8();
    v47 = v50;
    v49 = sub_10007DBC8();
    v48 = v49;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v51 = sub_10007DEC8();
    if (os_log_type_enabled(v50, v49))
    {
      v25 = v113;
      v38 = sub_10007DC88();
      v34 = v38;
      v35 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v36 = 0;
      v39 = sub_10000742C(0);
      v37 = v39;
      v40 = sub_10000742C(v36);
      v146 = v38;
      v145 = v39;
      v144 = v40;
      v41 = 0;
      v42 = &v146;
      sub_100007480(0, &v146);
      sub_100007480(v41, v42);
      v143 = v51;
      v43 = &v28;
      __chkstk_darwin(&v28);
      v44 = &v28 - 6;
      *(&v28 - 4) = v26;
      *(&v28 - 3) = &v145;
      *(&v28 - 2) = &v144;
      v45 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v46 = v25;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v47, v48, "Availability check failed", v34, 2u);
        v32 = 0;
        sub_1000074E0(v37);
        sub_1000074E0(v40);
        sub_10007DC68();

        v33 = v46;
      }
    }

    else
    {

      v33 = v113;
    }

    v31 = v33;

    (*(v116 + 8))(v118, v114);
    sub_10007CE18();
    swift_storeEnumTagMultiPayload();
    v29 = (v109 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
    v30 = &v147;
    swift_beginAccess();
    sub_100002484(v125, v29);
    swift_endAccess();
    v55 = v31;
  }

  v28 = v55;

  return v28;
}

uint64_t sub_100005444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v5 = v3 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_availabilityHandler;
  swift_beginAccess();
  v10 = *v5;
  v13 = *(v5 + 1);

  swift_endAccess();
  v12 = swift_allocObject();

  swift_weakInit();

  v11 = swift_allocObject();
  v11[2] = v12;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a1;
  v11[6] = v9;
  v10(sub_1000099AC);
}

uint64_t sub_1000055F8(unsigned int a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v138 = a5;
  v137 = a4;
  v136 = a3;
  v140 = a2;
  v139 = a1;
  v118 = a1;
  v174 = 0;
  v128 = 0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v168 = 0;
  v119 = 0;
  v120 = sub_10007D5E8();
  v121 = *(v120 - 8);
  v122 = v121;
  v5 = *(v121 + 64);
  __chkstk_darwin(0);
  v123 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10007D608();
  v125 = *(v124 - 8);
  v126 = v125;
  v7 = *(v125 + 64);
  __chkstk_darwin(v128);
  v127 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_10007D628();
  v130 = *(v129 - 8);
  v131 = v130;
  v132 = *(v130 + 64);
  v9 = __chkstk_darwin(v128);
  v134 = (v132 + 15) & 0xFFFFFFFFFFFFFFF0;
  v133 = &v41 - v134;
  __chkstk_darwin(v9);
  v135 = &v41 - v134;
  v141 = sub_10007CEF8();
  v142 = *(v141 - 8);
  v143 = v142;
  v145 = *(v142 + 64);
  v10 = __chkstk_darwin(v139);
  v147 = (v145 + 15) & 0xFFFFFFFFFFFFFFF0;
  v144 = &v41 - v147;
  v11 = __chkstk_darwin(v10);
  v146 = &v41 - v147;
  v12 = __chkstk_darwin(v11);
  v148 = &v41 - v147;
  v174 = v12;
  v149 = v13 + 16;
  v173 = v13 + 16;
  v171 = v14;
  v172 = v15;
  v170 = v16;
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    sub_10007D898("availabilityHandler has to complete on the main thread", 0x36uLL, 1);
    v40 = 0;
    v39 = 101;
    sub_10007DDB8();
    __break(1u);
  }

  v115 = &v169;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v116 = Strong;
  swift_endAccess();
  result = Strong;
  if (!Strong)
  {
    return v119;
  }

  v114 = v116;
  v112 = v114;
  v168 = v114;
  if (v118)
  {
    v18 = v148;
    v19 = sub_1000020F8();
    (*(v143 + 16))(v18, v19, v141);
    v110 = sub_10007CED8();
    v107 = v110;
    v109 = sub_10007DB98();
    v108 = v109;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v111 = sub_10007DEC8();
    if (os_log_type_enabled(v110, v109))
    {
      v20 = v119;
      v98 = sub_10007DC88();
      v94 = v98;
      v95 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v96 = 0;
      v99 = sub_10000742C(0);
      v97 = v99;
      v100 = sub_10000742C(v96);
      v153[0] = v98;
      v152 = v99;
      v151 = v100;
      v101 = 0;
      v102 = v153;
      sub_100007480(0, v153);
      sub_100007480(v101, v102);
      v150 = v111;
      v103 = &v41;
      __chkstk_darwin(&v41);
      v104 = &v41 - 6;
      *(&v41 - 4) = v21;
      *(&v41 - 3) = &v152;
      v39 = &v151;
      v105 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v106 = v20;
      if (v20)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v107, v108, "Data is accessible", v94, 2u);
        v92 = 0;
        sub_1000074E0(v97);
        sub_1000074E0(v100);
        sub_10007DC68();

        v93 = v106;
      }
    }

    else
    {

      v93 = v119;
    }

    v90 = v93;

    (*(v143 + 8))(v148, v141);

    v136(1);

    v91 = v90;
LABEL_32:
    v41 = v91;

    return v41;
  }

  v22 = *(v112 + 16);
  v23 = v22 - 1;
  v24 = __OFSUB__(v22, 1);
  v89 = v23;
  if (!v24)
  {
    if (v138 < v89)
    {
      v25 = v146;
      v26 = sub_1000020F8();
      (*(v143 + 16))(v25, v26, v141);
      v87 = sub_10007CED8();
      v84 = v87;
      v86 = sub_10007DBB8();
      v85 = v86;
      sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
      v88 = sub_10007DEC8();
      if (os_log_type_enabled(v87, v86))
      {
        v27 = v119;
        v75 = sub_10007DC88();
        v71 = v75;
        v72 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
        v73 = 0;
        v76 = sub_10000742C(0);
        v74 = v76;
        v77 = sub_10000742C(v73);
        v156 = v75;
        v155 = v76;
        v154 = v77;
        v78 = 0;
        v79 = &v156;
        sub_100007480(0, &v156);
        sub_100007480(v78, v79);
        v153[1] = v88;
        v80 = &v41;
        __chkstk_darwin(&v41);
        v81 = &v41 - 6;
        *(&v41 - 4) = v28;
        *(&v41 - 3) = &v155;
        v39 = &v154;
        v82 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
        sub_1000097D8();
        sub_10007D948();
        v83 = v27;
        if (v27)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&_mh_execute_header, v84, v85, "Data is not accessible, retry…", v71, 2u);
          v69 = 0;
          sub_1000074E0(v74);
          sub_1000074E0(v77);
          sub_10007DC68();

          v70 = v83;
        }
      }

      else
      {

        v70 = v119;
      }

      v67 = v70;

      (*(v143 + 8))(v146, v141);
      sub_100009744();
      v66 = sub_10007DC08();
      sub_10007D618();
      v29 = *(v112 + 32);
      sub_10007D678();
      v65 = *(v131 + 8);
      v64 = v131 + 8;
      v65(v133, v129);

      v30 = swift_allocObject();
      v31 = v138;
      v32 = v136;
      v33 = v137;
      v30[2] = v112;
      v30[3] = v31;
      v30[4] = v32;
      v30[5] = v33;
      v162 = sub_10000A4F4;
      v163 = v30;
      aBlock = _NSConcreteStackBlock;
      v158 = 1107296256;
      v159 = 0;
      v160 = sub_10000AAE4;
      v161 = &unk_100091BA8;
      v63 = _Block_copy(&aBlock);

      sub_100006978();
      sub_100006990();
      sub_10007DBE8();
      (*(v122 + 8))(v123, v120);
      (*(v126 + 8))(v127, v124);
      _Block_release(v63);
      v65(v135, v129);

      v68 = v67;
    }

    else
    {
      v34 = v144;
      v35 = sub_1000020F8();
      (*(v143 + 16))(v34, v35, v141);
      v61 = sub_10007CED8();
      v58 = v61;
      v60 = sub_10007DBB8();
      v59 = v60;
      sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
      v62 = sub_10007DEC8();
      if (os_log_type_enabled(v61, v60))
      {
        v37 = v119;
        v49 = sub_10007DC88();
        v45 = v49;
        v46 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
        v47 = 0;
        v50 = sub_10000742C(0);
        v48 = v50;
        v51 = sub_10000742C(v47);
        v167 = v49;
        v166 = v50;
        v165 = v51;
        v52 = 0;
        v53 = &v167;
        sub_100007480(0, &v167);
        sub_100007480(v52, v53);
        v164 = v62;
        v54 = &v41;
        __chkstk_darwin(&v41);
        v55 = &v41 - 6;
        *(&v41 - 4) = v38;
        *(&v41 - 3) = &v166;
        v39 = &v165;
        v56 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
        sub_1000097D8();
        sub_10007D948();
        v57 = v37;
        if (v37)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&_mh_execute_header, v58, v59, "Data is not accessible, retry count exceeded", v45, 2u);
          v43 = 0;
          sub_1000074E0(v48);
          sub_1000074E0(v51);
          sub_10007DC68();

          v44 = v57;
        }
      }

      else
      {

        v44 = v119;
      }

      v42 = v44;

      (*(v143 + 8))(v144, v141);

      v136(0);

      v68 = v42;
    }

    v91 = v68;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000068FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!__OFADD__(a2, 1))
  {
    return sub_100005444(a2 + 1, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100006990()
{
  sub_100054C54(0);
  sub_10007D5E8();
  sub_10000A56C();
  sub_1000094DC(&unk_10009A8B0, &qword_10007F0E0);
  sub_10000A5EC();
  return sub_10007DCF8();
}

uint64_t sub_100006A30()
{
  sub_1000025C4(v0 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_state);
  sub_10000A480((v0 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_pendingTasks));
  v1 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension17AvailabilityQueue_availabilityHandler + 8);

  return v3;
}

uint64_t sub_100006A90()
{
  v0 = *sub_100006A30();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_100006AF4()
{
  v45 = 0;
  v44 = 0;
  v46 = 0;
  v29 = 0;
  v30 = sub_10007CE28();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v34 = &object - v33;
  v46 = &object - v33;
  v37 = type metadata accessor for AvailabilityQueue.State();
  v36 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(v35);
  v38 = &object - v36;
  v45 = v0;
  sub_100002224(v0, &object - v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = v34;
      (*(v31 + 32))(v34, v38, v30);
      v44 = v34;
      v10 = 1;
      v5 = sub_10007DEB8();
      v13 = &v42;
      v42 = v5;
      v43 = v6;
      v11 = 1;
      v49._countAndFlagsBits = sub_10007D898("Protected (", 0xBuLL, 1);
      object = v49._object;
      sub_10007DEA8(v49);

      sub_1000076C8();
      sub_10007DE88();
      v50._countAndFlagsBits = sub_10007D898(")", v10, v11 & 1);
      v12 = v50._object;
      sub_10007DEA8(v50);

      v15 = v42;
      v14 = v43;

      sub_1000099C8(v13);
      v16 = sub_10007D888();
      v17 = v7;
      (*(v31 + 8))(v34, v30);
      v27 = v16;
      v28 = v17;
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v27 = sub_10007D898("Undefined", 9uLL, 1);
      }

      else
      {
        v27 = sub_10007D898("Checking", 8uLL, 1);
      }

      v28 = v1;
    }
  }

  else
  {
    (*(v31 + 32))(v34, v38, v30);
    v46 = v34;
    v19 = 1;
    v2 = sub_10007DEB8();
    v22 = &v40;
    v40 = v2;
    v41 = v3;
    v20 = 1;
    v47._countAndFlagsBits = sub_10007D898("Accessible (", 0xCuLL, 1);
    v18 = v47._object;
    sub_10007DEA8(v47);

    sub_1000076C8();
    sub_10007DE88();
    v48._countAndFlagsBits = sub_10007D898(")", v19, v20 & 1);
    v21 = v48._object;
    sub_10007DEA8(v48);

    v24 = v40;
    v23 = v41;

    sub_1000099C8(v22);
    v25 = sub_10007D888();
    v26 = v4;
    (*(v31 + 8))(v34, v30);
    v27 = v25;
    v28 = v26;
  }

  return v27;
}

uint64_t sub_100007020()
{
  sub_10000A308();
  sub_10000A388();
  return sub_10007DE48();
}

uint64_t sub_10000705C()
{
  sub_10000A308();
  sub_10000A388();
  return sub_10007DE18();
}

uint64_t sub_1000070A8()
{
  sub_10000A308();
  sub_10000A388();
  return sub_10007DE28() & 1;
}

uint64_t sub_1000070F8()
{
  sub_10000A308();
  sub_10000A388();
  return sub_10007DE38();
}

void sub_100007190(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  sub_1000071CC();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_1000071F0(void *a1@<X8>)
{
  v2 = *v1;
  MFGetAccountsIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t sub_10000723C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100007280@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1000072B0()
{
  v2 = *v0;
  sub_10000A400();
  sub_10000A308();
  return sub_10007DDF8();
}

uint64_t sub_10000742C(uint64_t a1)
{
  if (a1)
  {
    return sub_10007DC88();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100007480(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_1000074E0(uint64_t a1)
{
  if (a1)
  {
    sub_10007DC78();
    sub_10007DC68();
  }
}

uint64_t sub_100007548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_10007DE58();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_10000762C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000766C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_10007CE28();
  v1 = sub_1000076C8();

  return sub_100007548(v5, v3, v4, v1);
}

unint64_t sub_1000076C8()
{
  v2 = qword_10009A698;
  if (!qword_10009A698)
  {
    sub_10007CE28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A698);
    return WitnessTable;
  }

  return v2;
}

void *sub_10000777C(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_100007818(v4, v5, a3);
  v8 = *a1;

  sub_10007DCA8();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_100007818(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_1000079BC(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_10000A9B4(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_10000A914(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_10000A9B4(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_10000A914(v13);
  }

  return v11;
}

uint64_t sub_1000079BC(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_10007DDA8();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_100007D74(v22, v17, v16);
        sub_10007DCB8();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_100007EF0(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_10007DD28();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_10007DDA8();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_100007D74(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_10007DDC8();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_10007DDC8();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_100007EF0(uint64_t a1, uint64_t a2)
{
  v7 = sub_100007FAC(a1, a2);
  sub_1000094DC(&qword_10009A8D8, &unk_10007F0F0);
  inited = swift_initStackObject();
  v3 = sub_1000087BC(inited, 1);
  *v4 = 0;
  sub_100008808();
  sub_10000883C(v3);

  v8 = sub_100008BE4(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_100007FAC(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_10007D8C8();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_100009104();
  }

  v10 = sub_100008BFC(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_10007DDC8();
    __break(1u);
    return sub_100009104();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_100008D40(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_10007DD28();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_100008D40(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_10007DD18();
  if (v2)
  {
LABEL_29:
    sub_10007DDA8();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_10007DDA8();
    __break(1u);
  }

  sub_1000099C8(v17);
  return v10;
}

uint64_t sub_1000087BC(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_10000883C(uint64_t a1)
{
  v20 = sub_100008BE4(a1);
  v2 = sub_100008BE4(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = sub_100009134(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    sub_10007DDC8();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1000092A0(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    sub_10007DDA8();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    sub_10007DDA8();
    __break(1u);
    goto LABEL_21;
  }

  sub_100008D40((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_100007748();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_100008BFC(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_1000094DC(&qword_10009A8D8, &unk_10007F0F0);
    v5 = swift_allocObject();

    if (sub_10000AA18())
    {
      v3 = sub_10000AA24(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_100008D40(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_10007DDC8();
    __break(1u);
  }

  result = sub_10007DDC8();
  __break(1u);
  return result;
}

uint64_t sub_100008E90(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_10007D8E8();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_10007DDA8();
    __break(1u);
  }

  v5 = sub_10007D908();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_100009134(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_100008BFC(v4, v6);
  if (v7)
  {
    sub_1000092A8((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_100008D40((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_1000092A8(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_10007DDC8();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_1000093D0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100009444()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100009490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000094DC(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t sub_100009550()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100009590()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for AvailabilityQueue.State();
  v1 = sub_1000095EC();

  return sub_100007548(v5, v3, v4, v1);
}

unint64_t sub_1000095EC()
{
  v2 = qword_10009A6B8;
  if (!qword_10009A6B8)
  {
    type metadata accessor for AvailabilityQueue.State();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A6B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000096C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100009704()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_100009744()
{
  v2 = qword_10009A6C0;
  if (!qword_10009A6C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009A6C0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1000097D8()
{
  v2 = qword_10009A6D0;
  if (!qword_10009A6D0)
  {
    sub_100009860(&qword_10009BB70, &qword_10007EE20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A6D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100009860(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t sub_100009914()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100009964()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1000099C8(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_100009A10()
{
  v2 = type metadata accessor for AvailabilityQueue.State();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_100009B9C()
{
  v2 = sub_10007CE28();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t type metadata accessor for MUIBucket()
{
  v4 = qword_10009A858;
  if (!qword_10009A858)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_10009A858);
      return v1;
    }
  }

  return v4;
}

__n128 sub_100009CC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100009CD4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100009DE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t type metadata accessor for CGSize()
{
  v4 = qword_10009A860;
  if (!qword_10009A860)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_10009A860);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for ECMailboxType()
{
  v4 = qword_10009A868;
  if (!qword_10009A868)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_10009A868);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_10000A0D8()
{
  v2 = qword_10009A870;
  if (!qword_10009A870)
  {
    type metadata accessor for ECMailboxType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A170()
{
  v2 = qword_10009A878;
  if (!qword_10009A878)
  {
    type metadata accessor for ECMailboxType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A208()
{
  v2 = qword_10009A880;
  if (!qword_10009A880)
  {
    type metadata accessor for ECMailboxType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A288()
{
  v2 = qword_10009A888;
  if (!qword_10009A888)
  {
    type metadata accessor for MUIBucket();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A888);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A308()
{
  v2 = qword_10009A890;
  if (!qword_10009A890)
  {
    type metadata accessor for ECMailboxType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A890);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A388()
{
  v2 = qword_10009A898;
  if (!qword_10009A898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A400()
{
  v2 = qword_10009A8A0;
  if (!qword_10009A8A0)
  {
    type metadata accessor for ECMailboxType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A8A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_10000A480(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_10000A4AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_10000A508(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_10000A56C()
{
  v2 = qword_10009BD10;
  if (!qword_10009BD10)
  {
    sub_10007D5E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BD10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A5EC()
{
  v2 = qword_10009BD20;
  if (!qword_10009BD20)
  {
    sub_100009860(&unk_10009A8B0, &qword_10007F0E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BD20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000A674()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10000A714()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000A760()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10000A7A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_10000A814();

  return sub_10002CE44(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

unint64_t sub_10000A814()
{
  v2 = qword_10009A8C0;
  if (!qword_10009A8C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A8C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000A88C()
{
  v2 = qword_10009A8C8;
  if (!qword_10009A8C8)
  {
    sub_100009860(&qword_10009A6A8, &unk_10007EE10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009A8C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000A914(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_10000A9B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t type metadata accessor for Base64DecodingOptions()
{
  v4 = qword_10009A8E0;
  if (!qword_10009A8E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_10009A8E0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_10000AAE4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v1);
}

BOOL sub_10000AB34(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_10000ADF4()
{
  v2 = qword_10009ABA8;
  if (!qword_10009ABA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009ABA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000AF44()
{
  v2 = sub_10007CEF8();
  sub_100001F90(v2, qword_10009AB90);
  sub_10000202C(v2, qword_10009AB90);
  v0 = type metadata accessor for DaemonDataSource();
  return sub_100016180(v0, v0);
}

uint64_t sub_10000AFD4()
{
  if (qword_10009A5F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10007CEF8();
  return sub_10000202C(v0, qword_10009AB90);
}

uint64_t sub_10000B040@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000AFD4();
  v1 = sub_10007CEF8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void *sub_10000B0D4()
{
  v2 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_daemon);
  _objc_retain(v2);
  return v2;
}

void *sub_10000B11C()
{
  v2 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_messagesDataSource);
  _objc_retain(v2);
  return v2;
}

void *sub_10000B164()
{
  v2 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_statusDataSource);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_10000B1AC()
{
  v2 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_mailboxDataSource);

  return v2;
}

void *sub_10000B1EC()
{
  v2 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_focusController);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_10000B234()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_queue);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_10000B29C(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_queue);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_10000B320()
{
  v11 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_daemon);
  _objc_retain(v8);
  [v8 vipManager];
  _objc_release(v8);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v6 = v9;
  }

  else
  {
    swift_unknownObjectRelease();
    v6 = 0;
  }

  if (v6)
  {
    v5 = [v6 allVIPWaitForResult];
    sub_10000B624();
    sub_10000B688();
    sub_10007DA78();
    v4 = sub_10007DAA8();

    _objc_release(v5);
    _objc_release(v6);
    return (v4 ^ 1) & 1;
  }

  else
  {
    _objc_retain(v7);
    v10[0] = sub_10007DEB8();
    v10[1] = v2;
    v12._countAndFlagsBits = sub_10007D898("Unexpected class for VIP manager (", 0x22uLL, 1);
    sub_10007DEA8(v12);

    v3 = *&v7[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_daemon];
    _objc_retain(v3);
    [v3 vipManager];
    _objc_release(v3);
    swift_getObjectType();
    sub_1000162A8();
    swift_unknownObjectRelease();
    v13._countAndFlagsBits = sub_10007D898(")", 1uLL, 1);
    sub_10007DEA8(v13);

    sub_1000099C8(v10);
    sub_10007D888();
    result = sub_10007DDB8();
    __break(1u);
  }

  return result;
}

unint64_t sub_10000B624()
{
  v2 = qword_10009ABE0;
  if (!qword_10009ABE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009ABE0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10000B688()
{
  v2 = qword_10009ABE8;
  if (!qword_10009ABE8)
  {
    sub_10000B624();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009ABE8);
    return WitnessTable;
  }

  return v2;
}

char *sub_10000B744(void *a1)
{
  ObjectType = swift_getObjectType();
  v9 = a1;
  v10 = v1;
  _objc_retain(a1);
  *&v1[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_daemon] = a1;
  type metadata accessor for MessagesDataSource();
  *&v10[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_messagesDataSource] = sub_10004CF54([a1 messageRepository]);
  type metadata accessor for MailboxDataSource();
  *&v10[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_mailboxDataSource] = sub_10001BCB4([a1 mailboxRepository]);
  type metadata accessor for MailStatusDataSource();
  *&v10[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_statusDataSource] = sub_100020150([a1 messageRepository]);
  sub_10000B9A4();
  *&v10[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_focusController] = sub_10000BA08();
  v4 = v10;
  type metadata accessor for AvailabilityQueue();
  _objc_retain(a1);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *&v4[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_queue] = sub_10000284C(3, sub_10000BED4, v2, 20.0, 1.0);
  v8.receiver = v10;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, "init");
  _objc_retain(v7);
  v10 = v7;
  _objc_release(a1);
  _objc_release(v10);
  return v7;
}

unint64_t sub_10000B9A4()
{
  v2 = qword_10009ABF0;
  if (!qword_10009ABF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009ABF0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10000BA38(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = a1;
  v35 = a2;
  v33 = a3;
  v21 = sub_10001488C;
  v36 = sub_100014944;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v49 = 0;
  v24 = 0;
  v29 = sub_10007D628();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v18 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v27 = &v18 - v18;
  v19 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v28 = &v18 - v19;
  v20 = (*(*(sub_10007D5E8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v22 = &v18 - v20;
  v58 = v5;
  v59 = v6;
  v57 = v7;
  sub_10007D658();

  v34 = 7;
  v8 = swift_allocObject();
  v9 = v21;
  v10 = v35;
  *(v8 + 16) = v38;
  *(v8 + 24) = v10;
  v55 = v9;
  v56 = v8;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v51 = 1107296256;
  v52 = 0;
  v53 = sub_10000AAE4;
  v54 = &unk_1000929A8;
  v23 = _Block_copy(&aBlock);
  sub_100006990();
  v41 = sub_10007D638();

  v49 = v41;
  sub_100009744();
  v32 = sub_10007DC08();
  sub_10007D618();
  sub_10007D678();
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v31(v27, v29);
  sub_10007DBF8();
  v31(v28, v29);
  _objc_release(v32);
  v40 = [v33 messageRepository];

  v11 = swift_allocObject();
  v12 = v35;
  v13 = v36;
  v14 = v37;
  v15 = v11;
  v16 = v38;
  v15[2] = v41;
  v15[3] = v16;
  v15[4] = v12;
  v47 = v13;
  v48 = v15;
  v42 = _NSConcreteStackBlock;
  v43 = v14;
  v44 = 0;
  v45 = sub_10000C270;
  v46 = &unk_1000929F8;
  v39 = _Block_copy(&v42);

  [v40 isDataAccessible:v39];
  _Block_release(v39);
  _objc_release(v40);
}

uint64_t sub_10000BEDC(void (*a1)(void))
{

  a1(0);
}

void sub_10000BF44(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v15 = a3;
  v16 = a4;
  v17 = sub_1000149FC;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v19 = 0;
  v23 = sub_10007D5E8();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v13 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v22 = &v12 - v13;
  v27 = sub_10007D608();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v14 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v26 = &v12 - v14;
  v40 = v5 & 1;
  v39 = a2;
  v37 = v6;
  v38 = v7;
  sub_10007D648();
  sub_100009744();
  v29 = sub_10007DC08();

  v8 = swift_allocObject();
  v9 = v16;
  v10 = v17;
  v11 = v8;
  LOBYTE(v8) = v18;
  *(v11 + 16) = v15;
  *(v11 + 24) = v9;
  *(v11 + 32) = v8;
  v35 = v10;
  v36 = v11;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = 0;
  v33 = sub_10000AAE4;
  v34 = &unk_100092A48;
  v28 = _Block_copy(&aBlock);

  sub_100006978();
  sub_100006990();
  sub_10007DC18();
  (*(v20 + 8))(v22, v23);
  (*(v24 + 8))(v26, v27);
  _Block_release(v28);
  _objc_release(v29);
}

uint64_t sub_10000C1F4(void (*a1)(void), uint64_t a2, char a3)
{

  a1(a3 & 1);
}

uint64_t sub_10000C270(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10000C2C8(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v31 = a2;
  v35 = a3;
  v36 = a4;
  v45 = 0;
  v38 = sub_10000E508;
  ObjectType = swift_getObjectType();
  v63 = 0;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v51 = 0;
  v24 = 0;
  v23 = (*(*(sub_10007D5E8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v41 = &v23 - v23;
  v25 = *(type metadata accessor for Mailbox() - 8);
  v28 = v25;
  v29 = *(v25 + 64);
  v26 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v33 = (&v23 - v26);
  v63 = v5;
  v62 = v6 & 1;
  v60 = v7;
  v61 = v8;
  v59 = v4;
  sub_10007D658();
  v30 = 7;
  v44 = swift_allocObject();
  _objc_retain(v43);
  swift_unknownObjectWeakInit();
  _objc_release(v43);

  sub_10000DFBC(v27, v33);

  v32 = (*(v28 + 80) + 25) & ~*(v28 + 80);
  v34 = (v32 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v10 = v31;
  v11 = v32;
  v12 = v9;
  v13 = v33;
  v39 = v12;
  *(v12 + 16) = v44;
  *(v12 + 24) = v10;
  sub_10000E380(v13, v12 + v11);
  v14 = v36;
  v15 = v37;
  v16 = v38;
  v17 = v39;
  v18 = ObjectType;
  v19 = (v39 + v34);
  *v19 = v35;
  v19[1] = v14;
  *(v17 + v15) = v18;
  v57 = v16;
  v58 = v17;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = 0;
  v55 = sub_10000AAE4;
  v56 = &unk_100091D38;
  v42 = _Block_copy(&aBlock);
  sub_100006990();
  v20 = sub_10007D638();
  v21 = v43;
  v49 = v20;

  v51 = v49;
  v46 = &v21[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_queue];
  v47 = &v50;
  swift_beginAccess();
  v48 = *v46;

  swift_endAccess();
  sub_1000029C4(v49);
}

void sub_10000C72C(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v255 = a1;
  v254 = a2;
  v250 = a3;
  v251 = a4;
  v252 = a5;
  v199 = a6;
  v253 = 0;
  v200 = sub_100013124;
  v201 = sub_100009484;
  v202 = sub_10001315C;
  v203 = sub_1000134D0;
  v204 = sub_10001351C;
  v205 = sub_100013568;
  v206 = sub_1000132FC;
  v207 = sub_100009484;
  v208 = sub_100009410;
  v209 = sub_100009410;
  v210 = sub_1000094D0;
  v211 = sub_100009410;
  v212 = sub_100009410;
  v213 = sub_1000135B4;
  v214 = sub_100009410;
  v215 = sub_100009410;
  v216 = sub_1000094D0;
  v217 = sub_100013124;
  v218 = sub_100009484;
  v219 = sub_100009410;
  v220 = sub_100009410;
  v221 = sub_1000094D0;
  v222 = sub_100013B08;
  v223 = sub_1000138F0;
  v224 = sub_100013960;
  v225 = sub_100013A30;
  v301 = 0;
  v300 = 0;
  v299 = 0;
  v297 = 0;
  v298 = 0;
  v295 = 0;
  v293 = 0;
  v294 = 0;
  v292 = 0;
  v291 = 0;
  v290 = 0;
  v289 = 0;
  v288 = 0;
  v226 = 0;
  v242 = 0;
  v227 = sub_10007D5E8();
  v228 = *(v227 - 8);
  v229 = v227 - 8;
  v230 = (*(v228 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v231 = &v107 - v230;
  v232 = sub_10007D608();
  v233 = *(v232 - 8);
  v234 = v232 - 8;
  v235 = (*(v233 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v242);
  v236 = &v107 - v235;
  v237 = *(type metadata accessor for Mailbox() - 8);
  v238 = v237;
  v239 = *(v237 + 64);
  v240 = (v239 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v242);
  v241 = (&v107 - v240);
  v243 = sub_10007CEF8();
  v244 = *(v243 - 8);
  v245 = v243 - 8;
  v246 = (v244[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v242);
  v247 = &v107 - v246;
  v248 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v249 = &v107 - v248;
  v256 = sub_10007CE58();
  v257 = *(v256 - 8);
  v258 = v256 - 8;
  v259 = (*(v257 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v255);
  v260 = &v107 - v259;
  v261 = v8 + 16;
  v301 = v8 + 16;
  v300 = v9 & 1;
  v299 = v10;
  v297 = v11;
  v298 = v12;
  v262 = &v296;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v198 = Strong;
    v159 = Strong;
    v295 = Strong;
    sub_10007CE48();
    v13 = sub_10007CE38();
    v14 = v249;
    v168 = v13;
    v169 = v15;
    v293 = v13;
    v294 = v15;
    (*(v257 + 8))(v260, v256);
    v160 = dispatch_group_create();
    v292 = v160;
    v180 = 32;
    v181 = 7;
    v16 = swift_allocObject();
    v161 = v16;
    v291 = v16 + 16;
    *(v16 + 16) = 0;
    *(v16 + 24) = 1;
    v163 = 24;
    v162 = swift_allocObject();
    v290 = v162 + 16;
    *(v162 + 16) = 0;
    v178 = 17;
    v164 = swift_allocObject();
    v289 = v164 + 16;
    *(v164 + 16) = 2;
    v165 = swift_allocObject();
    v288 = v165 + 16;
    *(v165 + 16) = 0;
    v17 = sub_10000AFD4();
    v166 = v244[2];
    v167 = v244 + 2;
    v166(v14, v17, v243);

    v18 = swift_allocObject();
    v19 = v169;
    v171 = v18;
    *(v18 + 16) = v168;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v241;
    v22 = v20;
    v23 = v250;
    v173 = v22;
    *(v22 + 16) = v254;
    sub_10000DFBC(v23, v21);
    v170 = (*(v238 + 80) + 16) & ~*(v238 + 80);
    v182 = swift_allocObject();
    sub_10000E380(v241, v182 + v170);
    v196 = sub_10007CED8();
    v197 = sub_10007DBC8();
    v184 = swift_allocObject();
    v177 = 34;
    *(v184 + 16) = 34;
    v185 = swift_allocObject();
    v179 = 8;
    *(v185 + 16) = 8;
    v24 = swift_allocObject();
    v25 = v171;
    v172 = v24;
    *(v24 + 16) = v200;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v172;
    v186 = v26;
    *(v26 + 16) = v201;
    *(v26 + 24) = v27;
    v187 = swift_allocObject();
    *(v187 + 16) = 0;
    v188 = swift_allocObject();
    *(v188 + 16) = 4;
    v28 = swift_allocObject();
    v29 = v173;
    v174 = v28;
    *(v28 + 16) = v202;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v174;
    v175 = v30;
    *(v30 + 16) = v203;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v175;
    v176 = v32;
    *(v32 + 16) = v204;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v176;
    v189 = v34;
    *(v34 + 16) = v205;
    *(v34 + 24) = v35;
    v190 = swift_allocObject();
    *(v190 + 16) = v177;
    v191 = swift_allocObject();
    *(v191 + 16) = v179;
    v36 = swift_allocObject();
    v37 = v182;
    v183 = v36;
    *(v36 + 16) = v206;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v183;
    v193 = v38;
    *(v38 + 16) = v207;
    *(v38 + 24) = v39;
    v195 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v192 = sub_10007DEC8();
    v194 = v40;

    v41 = v184;
    v42 = v194;
    *v194 = v208;
    v42[1] = v41;

    v43 = v185;
    v44 = v194;
    v194[2] = v209;
    v44[3] = v43;

    v45 = v186;
    v46 = v194;
    v194[4] = v210;
    v46[5] = v45;

    v47 = v187;
    v48 = v194;
    v194[6] = v211;
    v48[7] = v47;

    v49 = v188;
    v50 = v194;
    v194[8] = v212;
    v50[9] = v49;

    v51 = v189;
    v52 = v194;
    v194[10] = v213;
    v52[11] = v51;

    v53 = v190;
    v54 = v194;
    v194[12] = v214;
    v54[13] = v53;

    v55 = v191;
    v56 = v194;
    v194[14] = v215;
    v56[15] = v55;

    v57 = v193;
    v58 = v194;
    v194[16] = v216;
    v58[17] = v57;
    sub_100006FD4();

    if (os_log_type_enabled(v196, v197))
    {
      v59 = v226;
      v152 = sub_10007DC88();
      v151 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v153 = sub_10000742C(0);
      v154 = sub_10000742C(2);
      v155 = &v268;
      v268 = v152;
      v156 = &v267;
      v267 = v153;
      v157 = &v266;
      v266 = v154;
      sub_100007480(2, &v268);
      sub_100007480(3, v155);
      v264 = v208;
      v265 = v184;
      sub_100007494(&v264, v155, v156, v157);
      v158 = v59;
      if (v59)
      {

        __break(1u);
      }

      else
      {
        v264 = v209;
        v265 = v185;
        sub_100007494(&v264, &v268, &v267, &v266);
        v149 = 0;
        v264 = v210;
        v265 = v186;
        sub_100007494(&v264, &v268, &v267, &v266);
        v148 = 0;
        v264 = v211;
        v265 = v187;
        sub_100007494(&v264, &v268, &v267, &v266);
        v147 = 0;
        v264 = v212;
        v265 = v188;
        sub_100007494(&v264, &v268, &v267, &v266);
        v146 = 0;
        v264 = v213;
        v265 = v189;
        sub_100007494(&v264, &v268, &v267, &v266);
        v145 = 0;
        v264 = v214;
        v265 = v190;
        sub_100007494(&v264, &v268, &v267, &v266);
        v144 = 0;
        v264 = v215;
        v265 = v191;
        sub_100007494(&v264, &v268, &v267, &v266);
        v143 = 0;
        v264 = v216;
        v265 = v193;
        sub_100007494(&v264, &v268, &v267, &v266);
        v142 = 0;
        _os_log_impl(&_mh_execute_header, v196, v197, "[%{public}s] Fetch messages & count (threaded: %{BOOL}d) for mailbox: %{public}s", v152, 0x1Cu);
        sub_1000074E0(v153);
        sub_1000074E0(v154);
        sub_10007DC68();

        v150 = v142;
      }
    }

    else
    {
      v60 = v226;

      v150 = v60;
    }

    v139 = v150;
    _objc_release(v196);
    v140 = v244[1];
    v141 = v244 + 1;
    v140(v249, v243);
    if (sub_100018CB4())
    {
      dispatch_group_enter(v160);
      v138 = *&v159[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_statusDataSource];
      _objc_retain(v138);

      _objc_retain(v160);
      v61 = swift_allocObject();
      v62 = v169;
      v63 = v161;
      v64 = v160;
      v65 = v199;
      v66 = v222;
      v67 = v61;
      v68 = v250;
      v137 = v67;
      v67[2] = v168;
      v67[3] = v62;
      v67[4] = v63;
      v67[5] = v64;
      v67[6] = v65;
      sub_10002018C(v68, 10, v66, v67);

      _objc_release(v138);
    }

    else
    {
      v69 = v247;
      v70 = sub_10000AFD4();
      v166(v69, v70, v243);

      v126 = 32;
      v127 = 7;
      v71 = swift_allocObject();
      v72 = v169;
      v128 = v71;
      *(v71 + 16) = v168;
      *(v71 + 24) = v72;
      v135 = sub_10007CED8();
      v136 = sub_10007DBB8();
      v125 = 17;
      v130 = swift_allocObject();
      *(v130 + 16) = 34;
      v131 = swift_allocObject();
      *(v131 + 16) = 8;
      v73 = swift_allocObject();
      v74 = v128;
      v129 = v73;
      *(v73 + 16) = v217;
      *(v73 + 24) = v74;
      v75 = swift_allocObject();
      v76 = v129;
      v133 = v75;
      *(v75 + 16) = v218;
      *(v75 + 24) = v76;
      v132 = sub_10007DEC8();
      v134 = v77;

      v78 = v130;
      v79 = v134;
      *v134 = v219;
      v79[1] = v78;

      v80 = v131;
      v81 = v134;
      v134[2] = v220;
      v81[3] = v80;

      v82 = v133;
      v83 = v134;
      v134[4] = v221;
      v83[5] = v82;
      sub_100006FD4();

      if (os_log_type_enabled(v135, v136))
      {
        v84 = v139;
        v118 = sub_10007DC88();
        v117 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
        v119 = sub_10000742C(0);
        v120 = sub_10000742C(1);
        v121 = &v273;
        v273 = v118;
        v122 = &v272;
        v272 = v119;
        v123 = &v271;
        v271 = v120;
        sub_100007480(2, &v273);
        sub_100007480(1, v121);
        v269 = v219;
        v270 = v130;
        sub_100007494(&v269, v121, v122, v123);
        v124 = v84;
        if (v84)
        {

          __break(1u);
        }

        else
        {
          v269 = v220;
          v270 = v131;
          sub_100007494(&v269, &v273, &v272, &v271);
          v116 = 0;
          v269 = v221;
          v270 = v133;
          sub_100007494(&v269, &v273, &v272, &v271);
          _os_log_impl(&_mh_execute_header, v135, v136, "[%{public}s] Cannot fetch unread count. Mailbox is invalid.", v118, 0xCu);
          sub_1000074E0(v119);
          sub_1000074E0(v120);
          sub_10007DC68();
        }
      }

      else
      {
      }

      _objc_release(v135);
      v140(v247, v243);
      v85 = v161;
      *(v161 + 16) = 0;
      *(v85 + 24) = 0;
    }

    dispatch_group_enter(v160);
    v108 = *&v159[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_messagesDataSource];
    _objc_retain(v108);

    _objc_retain(v160);
    v111 = 64;
    v112 = 7;
    v86 = swift_allocObject();
    v87 = v199;
    v88 = v254;
    v89 = v223;
    v90 = v165;
    v91 = v162;
    v92 = v160;
    v93 = v169;
    v94 = v86;
    v95 = v250;
    v107 = v94;
    v94[2] = v168;
    v94[3] = v93;
    v94[4] = v91;
    v94[5] = v90;
    v94[6] = v92;
    v94[7] = v87;
    sub_10004CF90(v95, v88 & 1, v89, v94);

    _objc_release(v108);
    dispatch_group_enter(v160);
    v110 = *&v159[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_focusController];
    _objc_retain(v110);

    _objc_retain(v160);
    v96 = swift_allocObject();
    v97 = v224;
    v98 = v160;
    *(v96 + 16) = v164;
    *(v96 + 24) = v98;
    v286 = v97;
    v287 = v96;
    aBlock = _NSConcreteStackBlock;
    v113 = 1107296256;
    v282 = 1107296256;
    v283 = 0;
    v284 = sub_100010C30;
    v285 = &unk_100092430;
    v109 = _Block_copy(&aBlock);

    [v110 getCurrentFocus:v109];
    _Block_release(v109);
    _objc_release(v110);
    sub_100009744();
    v115 = sub_10007DC08();

    v99 = swift_allocObject();
    v100 = v251;
    v101 = v252;
    v102 = v225;
    v103 = v113;
    v104 = v165;
    v105 = v164;
    v106 = v161;
    v99[2] = v162;
    v99[3] = v106;
    v99[4] = v105;
    v99[5] = v104;
    v99[6] = v100;
    v99[7] = v101;
    v279 = v102;
    v280 = v99;
    v274 = _NSConcreteStackBlock;
    v275 = v103;
    v276 = 0;
    v277 = sub_10000AAE4;
    v278 = &unk_100092480;
    v114 = _Block_copy(&v274);
    sub_100006978();
    sub_100006990();
    sub_10007DBD8();
    (*(v228 + 8))(v231, v227);
    (*(v233 + 8))(v236, v232);
    _Block_release(v114);

    _objc_release(v115);

    _objc_release(v160);

    _objc_release(v159);
  }
}

void *sub_10000DFBC(void *a1, void *a2)
{
  *a2 = *a1;
  v10 = a1[1];

  a2[1] = v10;
  v13 = a1[2];

  a2[2] = v13;
  if (a1[4] > 5uLL)
  {
    a2[3] = a1[3];
    v9 = a1[4];

    a2[4] = v9;
  }

  else
  {
    *(a2 + 3) = *(a1 + 3);
  }

  v2 = type metadata accessor for Mailbox();
  __dst = a2 + *(v2 + 28);
  __src = a1 + *(v2 + 28);
  v7 = sub_10007CD98();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(__src, 1))
  {
    v3 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(__dst, __src, v7);
    (*(v8 + 56))(__dst, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_10000E1A8()
{
  v12 = type metadata accessor for Mailbox();
  v1 = *(*(v12 - 8) + 80);
  v14 = (v1 + 25) & ~v1;
  v13 = (v14 + *(*(v12 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v0 + 16);

  v3 = *(v0 + v14 + 8);

  v4 = *(v0 + v14 + 16);

  if (*(v0 + v14 + 32) > 5uLL)
  {
    v5 = *(v11 + v14 + 32);
  }

  v8 = v11 + v14 + *(v12 + 28);
  v9 = sub_10007CD98();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1))
  {
    (*(v10 + 8))(v8, v9);
  }

  v6 = *(v11 + v13 + 8);

  return swift_deallocObject();
}

uint64_t sub_10000E380(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v5 = *(type metadata accessor for Mailbox() + 28);
  v7 = sub_10007CD98();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1 + v5, 1))
  {
    v2 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy((a2 + v5), (a1 + v5), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))();
    (*(v8 + 56))(a2 + v5, 0, 1, v7);
  }

  return a2;
}

void sub_10000E508()
{
  v8 = *(type metadata accessor for Mailbox() - 8);
  v1 = (*(v8 + 80) + 25) & ~*(v8 + 80);
  v2 = (v1 + *(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + 16);
  v4 = *(v0 + v2);
  v5 = *(v0 + v2 + 8);
  v6 = *(v0 + ((v2 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + 24) & 1;

  sub_10000C72C(v3, v7, (v0 + v1), v4, v5, v6);
}

uint64_t sub_10000E5CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_10000E690(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v61 = a1;
  v62 = a2;
  v59 = a3;
  v60 = a4;
  v52 = a5;
  v53 = a6;
  v64 = sub_100013124;
  v66 = sub_100009484;
  v70 = sub_100013B90;
  v74 = sub_10000A754;
  v76 = sub_100009410;
  v78 = sub_100009410;
  v80 = sub_1000094D0;
  v82 = sub_100009410;
  v84 = sub_100009410;
  v87 = sub_10000A7A0;
  v103 = 0;
  v104 = 0;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v99 = 0;
  v51 = 0;
  v58 = sub_10007CEF8();
  v56 = *(v58 - 8);
  v57 = v58 - 8;
  v54 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = v42 - v54;
  v55 = v42 - v54;
  v103 = __chkstk_darwin(v61);
  v63 = 1;
  v104 = v7 & 1;
  v101 = v8;
  v102 = v9;
  v100 = v10 + 16;
  v99 = v11;
  v12 = sub_10000AFD4();
  (*(v56 + 16))(v6, v12, v58);

  v71 = 32;
  v72 = 7;
  v13 = swift_allocObject();
  v14 = v60;
  v65 = v13;
  *(v13 + 16) = v59;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v62;
  v17 = v63;
  v73 = v15;
  *(v15 + 16) = v61;
  *(v15 + 24) = v16 & 1 & v17;
  v91 = sub_10007CED8();
  v92 = sub_10007DBC8();
  v68 = 17;
  v77 = swift_allocObject();
  *(v77 + 16) = 34;
  v79 = swift_allocObject();
  v69 = 8;
  *(v79 + 16) = 8;
  v18 = swift_allocObject();
  v19 = v65;
  v67 = v18;
  *(v18 + 16) = v64;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v67;
  v81 = v20;
  *(v20 + 16) = v66;
  *(v20 + 24) = v21;
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  v85 = swift_allocObject();
  *(v85 + 16) = v69;
  v22 = swift_allocObject();
  v23 = v73;
  v75 = v22;
  *(v22 + 16) = v70;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v75;
  v88 = v24;
  *(v24 + 16) = v74;
  *(v24 + 24) = v25;
  v90 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v86 = sub_10007DEC8();
  v89 = v26;

  v27 = v77;
  v28 = v89;
  *v89 = v76;
  v28[1] = v27;

  v29 = v79;
  v30 = v89;
  v89[2] = v78;
  v30[3] = v29;

  v31 = v81;
  v32 = v89;
  v89[4] = v80;
  v32[5] = v31;

  v33 = v83;
  v34 = v89;
  v89[6] = v82;
  v34[7] = v33;

  v35 = v85;
  v36 = v89;
  v89[8] = v84;
  v36[9] = v35;

  v37 = v88;
  v38 = v89;
  v89[10] = v87;
  v38[11] = v37;
  sub_100006FD4();

  if (os_log_type_enabled(v91, v92))
  {
    v39 = v51;
    v43 = sub_10007DC88();
    v42[6] = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v44 = sub_10000742C(0);
    v45 = sub_10000742C(1);
    v47 = &v97;
    v97 = v43;
    v48 = &v96;
    v96 = v44;
    v49 = &v95;
    v95 = v45;
    v46 = 2;
    sub_100007480(2, &v97);
    sub_100007480(v46, v47);
    v93 = v76;
    v94 = v77;
    sub_100007494(&v93, v47, v48, v49);
    v50 = v39;
    if (v39)
    {

      __break(1u);
    }

    else
    {
      v93 = v78;
      v94 = v79;
      sub_100007494(&v93, &v97, &v96, &v95);
      v42[4] = 0;
      v93 = v80;
      v94 = v81;
      sub_100007494(&v93, &v97, &v96, &v95);
      v42[3] = 0;
      v93 = v82;
      v94 = v83;
      sub_100007494(&v93, &v97, &v96, &v95);
      v42[2] = 0;
      v93 = v84;
      v94 = v85;
      sub_100007494(&v93, &v97, &v96, &v95);
      v42[1] = 0;
      v93 = v87;
      v94 = v88;
      sub_100007494(&v93, &v97, &v96, &v95);
      _os_log_impl(&_mh_execute_header, v91, v92, "[%{public}s] Received count:%ld", v43, 0x16u);
      sub_1000074E0(v44);
      sub_1000074E0(v45);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v91);
  (*(v56 + 8))(v55, v58);
  v42[0] = &v98;
  swift_beginAccess();
  v40 = v62;
  v41 = v52;
  *(v52 + 16) = v61;
  *(v41 + 24) = v40 & 1;
  swift_endAccess();
  dispatch_group_leave(v53);
}

uint64_t sub_10000F11C(uint64_t a1, char a2)
{
  if (a2)
  {
    return -1;
  }

  return a1;
}

void sub_10000F178(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v162 = a1;
  v161 = a2;
  v156 = a3;
  v157 = a4;
  v158 = a5;
  v159 = a6;
  v160 = a7;
  v135 = sub_100013124;
  v136 = sub_100009484;
  v137 = sub_1000140C4;
  v138 = sub_100009484;
  v139 = sub_100009410;
  v140 = sub_100009410;
  v141 = sub_1000094D0;
  v142 = sub_100009410;
  v143 = sub_100009410;
  v144 = sub_1000094D0;
  v145 = sub_100013124;
  v146 = sub_100009484;
  v147 = sub_100013E8C;
  v148 = sub_100009484;
  v149 = sub_100009410;
  v150 = sub_100009410;
  v151 = sub_1000094D0;
  v152 = sub_100009410;
  v153 = sub_100009410;
  v154 = sub_1000094D0;
  v189 = 0;
  v190 = 0;
  v187 = 0;
  v188 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v155 = 0;
  v176 = 0;
  v163 = sub_10007CEF8();
  v164 = *(v163 - 8);
  v165 = v163 - 8;
  v166 = (*(v164 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v162);
  v167 = v70 - v166;
  v168 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7);
  v169 = v70 - v168;
  v189 = v9;
  v190 = v10 & 1;
  v187 = v11;
  v188 = v12;
  v186 = v13 + 16;
  v185 = v14 + 16;
  v184 = v15;
  if (v10)
  {
    v133 = v162;
    v43 = v167;
    v79 = v162;
    swift_errorRetain();
    v183 = v79;
    v44 = sub_10000AFD4();
    (*(v164 + 16))(v43, v44, v163);

    v84 = 32;
    v85 = 7;
    v45 = swift_allocObject();
    v46 = v157;
    v80 = v45;
    *(v45 + 16) = v156;
    *(v45 + 24) = v46;
    swift_errorRetain();
    v86 = swift_allocObject();
    *(v86 + 16) = v79;
    v97 = sub_10007CED8();
    v98 = sub_10007DBB8();
    v82 = 17;
    v88 = swift_allocObject();
    *(v88 + 16) = 34;
    v89 = swift_allocObject();
    v83 = 8;
    *(v89 + 16) = 8;
    v47 = swift_allocObject();
    v48 = v80;
    v81 = v47;
    *(v47 + 16) = v145;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v81;
    v90 = v49;
    *(v49 + 16) = v146;
    *(v49 + 24) = v50;
    v91 = swift_allocObject();
    *(v91 + 16) = 32;
    v92 = swift_allocObject();
    *(v92 + 16) = v83;
    v51 = swift_allocObject();
    v52 = v86;
    v87 = v51;
    *(v51 + 16) = v147;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v87;
    v94 = v53;
    *(v53 + 16) = v148;
    *(v53 + 24) = v54;
    v96 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v93 = sub_10007DEC8();
    v95 = v55;

    v56 = v88;
    v57 = v95;
    *v95 = v149;
    v57[1] = v56;

    v58 = v89;
    v59 = v95;
    v95[2] = v150;
    v59[3] = v58;

    v60 = v90;
    v61 = v95;
    v95[4] = v151;
    v61[5] = v60;

    v62 = v91;
    v63 = v95;
    v95[6] = v152;
    v63[7] = v62;

    v64 = v92;
    v65 = v95;
    v95[8] = v153;
    v65[9] = v64;

    v66 = v94;
    v67 = v95;
    v95[10] = v154;
    v67[11] = v66;
    sub_100006FD4();

    if (os_log_type_enabled(v97, v98))
    {
      v68 = v155;
      v71 = sub_10007DC88();
      v70[6] = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v72 = sub_10000742C(0);
      v73 = sub_10000742C(2);
      v75 = &v181;
      v181 = v71;
      v76 = &v180;
      v180 = v72;
      v77 = &v179;
      v179 = v73;
      v74 = 2;
      sub_100007480(2, &v181);
      sub_100007480(v74, v75);
      v177 = v149;
      v178 = v88;
      sub_100007494(&v177, v75, v76, v77);
      v78 = v68;
      if (v68)
      {

        __break(1u);
      }

      else
      {
        v177 = v150;
        v178 = v89;
        sub_100007494(&v177, &v181, &v180, &v179);
        v70[5] = 0;
        v177 = v151;
        v178 = v90;
        sub_100007494(&v177, &v181, &v180, &v179);
        v70[4] = 0;
        v177 = v152;
        v178 = v91;
        sub_100007494(&v177, &v181, &v180, &v179);
        v70[3] = 0;
        v177 = v153;
        v178 = v92;
        sub_100007494(&v177, &v181, &v180, &v179);
        v70[2] = 0;
        v177 = v154;
        v178 = v94;
        sub_100007494(&v177, &v181, &v180, &v179);
        _os_log_impl(&_mh_execute_header, v97, v98, "[%{public}s] Fetching messages failed with error: %s", v71, 0x16u);
        sub_1000074E0(v72);
        sub_1000074E0(v73);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v97);
    (*(v164 + 8))(v167, v163);
    swift_errorRetain();
    v70[1] = &v182;
    swift_beginAccess();
    v69 = *(v159 + 16);
    *(v159 + 16) = v79;

    swift_endAccess();
  }

  else
  {
    v134 = v162;
    v16 = v169;
    v113 = v162;

    v176 = v113;
    v17 = sub_10000AFD4();
    (*(v164 + 16))(v16, v17, v163);

    v118 = 32;
    v119 = 7;
    v18 = swift_allocObject();
    v19 = v157;
    v114 = v18;
    *(v18 + 16) = v156;
    *(v18 + 24) = v19;

    v120 = swift_allocObject();
    *(v120 + 16) = v113;
    v131 = sub_10007CED8();
    v132 = sub_10007DBC8();
    v116 = 17;
    v122 = swift_allocObject();
    *(v122 + 16) = 34;
    v123 = swift_allocObject();
    v117 = 8;
    *(v123 + 16) = 8;
    v20 = swift_allocObject();
    v21 = v114;
    v115 = v20;
    *(v20 + 16) = v135;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v115;
    v124 = v22;
    *(v22 + 16) = v136;
    *(v22 + 24) = v23;
    v125 = swift_allocObject();
    *(v125 + 16) = 32;
    v126 = swift_allocObject();
    *(v126 + 16) = v117;
    v24 = swift_allocObject();
    v25 = v120;
    v121 = v24;
    *(v24 + 16) = v137;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v121;
    v128 = v26;
    *(v26 + 16) = v138;
    *(v26 + 24) = v27;
    v130 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v127 = sub_10007DEC8();
    v129 = v28;

    v29 = v122;
    v30 = v129;
    *v129 = v139;
    v30[1] = v29;

    v31 = v123;
    v32 = v129;
    v129[2] = v140;
    v32[3] = v31;

    v33 = v124;
    v34 = v129;
    v129[4] = v141;
    v34[5] = v33;

    v35 = v125;
    v36 = v129;
    v129[6] = v142;
    v36[7] = v35;

    v37 = v126;
    v38 = v129;
    v129[8] = v143;
    v38[9] = v37;

    v39 = v128;
    v40 = v129;
    v129[10] = v144;
    v40[11] = v39;
    sub_100006FD4();

    if (os_log_type_enabled(v131, v132))
    {
      v41 = v155;
      v105 = sub_10007DC88();
      v104 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v106 = sub_10000742C(0);
      v107 = sub_10000742C(2);
      v109 = &v174;
      v174 = v105;
      v110 = &v173;
      v173 = v106;
      v111 = &v172;
      v172 = v107;
      v108 = 2;
      sub_100007480(2, &v174);
      sub_100007480(v108, v109);
      v170 = v139;
      v171 = v122;
      sub_100007494(&v170, v109, v110, v111);
      v112 = v41;
      if (v41)
      {

        __break(1u);
      }

      else
      {
        v170 = v140;
        v171 = v123;
        sub_100007494(&v170, &v174, &v173, &v172);
        v103 = 0;
        v170 = v141;
        v171 = v124;
        sub_100007494(&v170, &v174, &v173, &v172);
        v102 = 0;
        v170 = v142;
        v171 = v125;
        sub_100007494(&v170, &v174, &v173, &v172);
        v101 = 0;
        v170 = v143;
        v171 = v126;
        sub_100007494(&v170, &v174, &v173, &v172);
        v100 = 0;
        v170 = v144;
        v171 = v128;
        sub_100007494(&v170, &v174, &v173, &v172);
        _os_log_impl(&_mh_execute_header, v131, v132, "[%{public}s] Received messages:\n\t%s", v105, 0x16u);
        sub_1000074E0(v106);
        sub_1000074E0(v107);
        sub_10007DC68();
      }
    }

    else
    {
    }

    _objc_release(v131);
    (*(v164 + 8))(v169, v163);

    v99 = &v175;
    swift_beginAccess();
    v42 = *(v158 + 16);
    *(v158 + 16) = v113;

    swift_endAccess();
  }

  dispatch_group_leave(v160);
}

uint64_t sub_1000107F8(uint64_t a1)
{
  v8[1] = a1;
  KeyPath = swift_getKeyPath();

  v6 = sub_1000094DC(&qword_10009AC30, &qword_10007F260);
  v1 = sub_1000142C8();
  v3 = sub_10001BD00(sub_100014294, KeyPath, v6, &type metadata for String, &type metadata for Never, v1, &protocol witness table for Never, v7);

  v8[0] = v3;
  sub_10007D898("\n\t", 2uLL, 1);
  sub_1000094DC(&qword_10009AC40, &unk_10007F268);
  sub_100014350();
  v4 = sub_10007D828();

  sub_10000A480(v8);
  return v4;
}

char *sub_10001095C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for Message() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v12 = &v9 - v10;
  sub_1000143D8(v2, &v9 - v10);
  v3 = sub_100031168();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_100014700(v6);
}

char *sub_100010A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a3;
  v5 = a1;
  v8 = a2;
  v6 = (*(*(type metadata accessor for Message() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v5);
  v9 = &v5 - v6;
  sub_1000143D8(v3, &v5 - v6);

  swift_getAtKeyPath();

  return sub_100014700(v9);
}

uint64_t sub_100010AC0()
{
  swift_errorRetain();
  v1 = sub_10007CD68();
  v2 = [v1 ef_publicDescription];
  v3 = sub_10007D868();
  _objc_release(v1);
  _objc_release(v2);

  return v3;
}

void sub_100010B48(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = a1 != 0;
  swift_beginAccess();
  *(a2 + 16) = v3;
  swift_endAccess();
  dispatch_group_leave(a3);
}

uint64_t sub_100010C30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);

  _objc_retain(a2);
  v3(a2);
  _objc_release(a2);
}

uint64_t sub_100010CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void))
{
  swift_beginAccess();
  v19 = *(a1 + 16);

  swift_endAccess();
  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  swift_endAccess();
  swift_beginAccess();
  v16 = *(a3 + 16);
  swift_endAccess();
  swift_beginAccess();
  v18 = *(a4 + 16);
  swift_errorRetain();
  swift_endAccess();
  if (!v19 || v16 == 2)
  {
    if (v18)
    {
      swift_errorRetain();

      swift_errorRetain();
      LOWORD(v21) = 0;
      BYTE2(v21) = 1;
      a5(v18, 0, v21);
      sub_100013DCC(v18, 0, 0, 1);
    }

    else
    {

      sub_100013D50();
      v8 = swift_allocError();
      *v7 = 0;
      LOWORD(v22) = 0;
      BYTE2(v22) = 1;
      a5(v8, 0, v22);
      sub_100013DCC(v8, 0, 0, 1);
    }
  }

  else
  {

    v5 = v16 & 1;
    v9 = v14 & 1 | (v5 << 8);
    LOWORD(v20) = v14 & 1 | (v5 << 8);
    BYTE2(v20) = 0;
    a5(v19, v13, v20);
    sub_100013DCC(v19, v13, v9, 0);
  }
}

uint64_t sub_1000110BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v33 = a2;
  v36 = a3;
  v37 = a4;
  v44 = 0;
  v38 = sub_1000117D4;
  v62 = 0;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v50 = 0;
  v24 = 0;
  v23 = (*(*(sub_10007D5E8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v40 = &v22 - v23;
  v25 = *(type metadata accessor for Mailbox() - 8);
  v28 = v25;
  v29 = *(v25 + 64);
  v26 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v32 = (&v22 - v26);
  v62 = v5;
  v61 = v6;
  v59 = v7;
  v60 = v8;
  v58 = v4;
  sub_10007D658();
  v30 = 7;
  v43 = swift_allocObject();
  _objc_retain(v42);
  swift_unknownObjectWeakInit();
  _objc_release(v42);

  sub_10000DFBC(v27, v32);

  v31 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v34 = (v31 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v10 = v31;
  v11 = v9;
  v12 = v32;
  v39 = v11;
  *(v11 + 16) = v43;
  sub_10000E380(v12, v11 + v10);
  v13 = v35;
  v14 = v36;
  v15 = v37;
  v16 = v38;
  v17 = v39;
  *(v39 + v34) = v33;
  v18 = (v17 + v13);
  *v18 = v14;
  v18[1] = v15;
  v56 = v16;
  v57 = v17;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = 0;
  v54 = sub_10000AAE4;
  v55 = &unk_100091D88;
  v41 = _Block_copy(&aBlock);
  sub_100006990();
  v19 = sub_10007D638();
  v20 = v42;
  v48 = v19;

  v50 = v48;
  v45 = &v20[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_queue];
  v46 = &v49;
  swift_beginAccess();
  v47 = *v45;

  swift_endAccess();
  sub_1000029C4(v48);
}

uint64_t sub_1000114C8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v12[8] = (a1 + 16);
  v12[7] = a2;
  v12[6] = a3;
  v12[4] = a4;
  v12[5] = a5;
  swift_beginAccess();
  v12[0] = swift_unknownObjectWeakLoadStrong();
  if (v12[0])
  {
    v6 = v12[0];
    _objc_retain(v12[0]);
    sub_100012FD8(v12);
    swift_endAccess();
    v7 = *&v6[OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_mailboxDataSource];

    _objc_release(v6);
    sub_10001C5E4(a2, a3, a4, a5);
  }

  else
  {
    sub_100012FD8(v12);
    return swift_endAccess();
  }
}

uint64_t sub_1000115E8()
{
  v13 = type metadata accessor for Mailbox();
  v1 = *(*(v13 - 8) + 80);
  v15 = (v1 + 24) & ~v1;
  v14 = (v15 + *(*(v13 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v0 + 16);

  v3 = *(v0 + v15 + 8);

  v4 = *(v0 + v15 + 16);

  if (*(v0 + v15 + 32) > 5uLL)
  {
    v5 = *(v12 + v15 + 32);
  }

  v9 = v12 + v15 + *(v13 + 28);
  v10 = sub_10007CD98();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1))
  {
    (*(v11 + 8))(v9, v10);
  }

  v6 = *(v12 + v14);

  v7 = *(v12 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1000117D4()
{
  v9 = *(type metadata accessor for Mailbox() - 8);
  v1 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v2 = (v1 + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + 16);
  v4 = *(v0 + v2);
  v5 = v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1000114C8(v3, (v0 + v1), v4, v6, v7);
}

uint64_t sub_100011890(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_1000118F4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v17 = a1;
  v18 = a2;
  v16 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC19MailWidgetExtension16DaemonDataSource_focusController);
  _objc_retain(v8);

  v3 = swift_allocObject();
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = ObjectType;
  v14 = sub_100011D44;
  v15 = v3;
  aBlock = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = 0;
  v12 = sub_100010C30;
  v13 = &unk_100091DD8;
  v7 = _Block_copy(&aBlock);

  [v8 getCurrentFocus:v7];
  _Block_release(v7);
  _objc_release(v8);
}

void sub_100011A54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = sub_100012E00;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v20 = 0;
  v24 = sub_10007D5E8();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v13 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v23 = &v12 - v13;
  v28 = sub_10007D608();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v14 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v27 = &v12 - v14;
  v40 = v4;
  v38 = v5;
  v39 = v6;
  sub_100009744();
  v30 = sub_10007DC08();
  _objc_retain(v19);

  v7 = swift_allocObject();
  v8 = v15;
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v7[2] = v19;
  v7[3] = v8;
  v7[4] = v9;
  v7[5] = v10;
  v36 = v11;
  v37 = v7;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = 0;
  v34 = sub_10000AAE4;
  v35 = &unk_100091EE0;
  v29 = _Block_copy(&aBlock);

  sub_100006978();
  sub_100006990();
  sub_10007DC18();
  (*(v21 + 8))(v23, v24);
  (*(v25 + 8))(v27, v28);
  _Block_release(v29);
  _objc_release(v30);
}

uint64_t sub_100011D04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100011D54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100011DB8(void *a1, void (*a2)(void), uint64_t a3)
{
  v72 = a1;
  v66 = a2;
  v65 = a3;
  v59 = sub_100012EB8;
  v60 = sub_10000A754;
  v61 = sub_100009410;
  v62 = sub_100009410;
  v63 = sub_10000A7A0;
  v83 = 0;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  v64 = 0;
  v67 = sub_10007CEF8();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = &v21 - v70;
  v83 = __chkstk_darwin(v72);
  v81 = v3;
  v82 = v4;
  _objc_retain(v83);
  if (v72)
  {
    v58 = v72;
    v55 = v72;
    v5 = [v72 focusedAccountIdentifiers];
    v56 = v5;
    if (v5)
    {
      v54 = v56;
      v51 = v56;
      v52 = sub_10007DA78();
      _objc_release(v51);
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v50 = v53;
    _objc_release(v55);
    v57 = v50;
  }

  else
  {
    v57 = 0;
  }

  v6 = v71;
  v36 = v57;
  v80 = v57;
  v7 = sub_10000AFD4();
  (*(v68 + 16))(v6, v7, v67);

  v39 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  v48 = sub_10007CED8();
  v49 = sub_10007DBC8();
  v37 = 17;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v38 = 32;
  v8 = swift_allocObject();
  v9 = v40;
  v41 = v8;
  *(v8 + 16) = v59;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v41;
  v45 = v10;
  *(v10 + 16) = v60;
  *(v10 + 24) = v11;
  v47 = sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
  v44 = sub_10007DEC8();
  v46 = v12;

  v13 = v42;
  v14 = v46;
  *v46 = v61;
  v14[1] = v13;

  v15 = v43;
  v16 = v46;
  v46[2] = v62;
  v16[3] = v15;

  v17 = v45;
  v18 = v46;
  v46[4] = v63;
  v18[5] = v17;
  sub_100006FD4();

  if (os_log_type_enabled(v48, v49))
  {
    v19 = v64;
    v29 = sub_10007DC88();
    v27 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
    v28 = 0;
    v30 = sub_10000742C(0);
    v31 = sub_10000742C(v28);
    v32 = &v77;
    v77 = v29;
    v33 = &v76;
    v76 = v30;
    v34 = &v75;
    v75 = v31;
    sub_100007480(0, &v77);
    sub_100007480(1, v32);
    v73 = v61;
    v74 = v42;
    sub_100007494(&v73, v32, v33, v34);
    v35 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v73 = v62;
      v74 = v43;
      sub_100007494(&v73, &v77, &v76, &v75);
      v26 = 0;
      v73 = v63;
      v74 = v45;
      sub_100007494(&v73, &v77, &v76, &v75);
      _os_log_impl(&_mh_execute_header, v48, v49, "Received %ld focused account identifiers", v29, 0xCu);
      v25 = 0;
      sub_1000074E0(v30);
      sub_1000074E0(v31);
      sub_10007DC68();
    }
  }

  else
  {
  }

  _objc_release(v48);
  (*(v68 + 8))(v71, v67);

  v78 = v36;
  if (v36)
  {
    v79 = v78;
  }

  else
  {
    v24 = &type metadata for String;
    sub_10007DEC8();
    v79 = sub_10007DA88();
    if (v78)
    {
      sub_10000A480(&v78);
    }
  }

  v22 = v79;
  v23 = 0;
  v66();
  sub_100012F98(v22, v23 & 1);
}

uint64_t sub_100012650(uint64_t a1)
{

  if (a1)
  {
    v3 = sub_10007DA98();

    v4 = v3;
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  if (v5)
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

id sub_1000127C0()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100012970(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100012AD8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_100012D10()
{
  v2 = qword_10009AC20;
  if (!qword_10009AC20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AC20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100012DB0()
{
  _objc_release(*(v0 + 16));
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_100012E14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100012E78()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100012F18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100012F58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100012F98(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100013038()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000130A4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000130E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013124()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10000E630();
  return result;
}

uint64_t sub_100013168()
{
  v10 = type metadata accessor for Mailbox();
  v1 = *(*(v10 - 8) + 80);
  v11 = (v1 + 16) & ~v1;
  v12 = v11 + *(*(v10 - 8) + 64);
  v2 = *(v0 + v11 + 8);

  v3 = *(v0 + v11 + 16);

  if (*(v0 + v11 + 32) > 5uLL)
  {
    v4 = *(v9 + v11 + 32);
  }

  v6 = v9 + v11 + *(v10 + 28);
  v7 = sub_10007CD98();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1))
  {
    (*(v8 + 8))(v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1000132FC()
{
  v1 = *(type metadata accessor for Mailbox() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10000E66C();
}

uint64_t sub_1000133B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000133F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000134DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013528()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013574()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000135B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_100013628();

  return sub_10002CE44(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

unint64_t sub_100013628()
{
  v2 = qword_10009AC28;
  if (!qword_10009AC28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AC28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000136F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013778()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013850()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013890()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  _objc_release(*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_100013910()
{
  v1 = *(v0 + 16);

  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_10001396C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1000139D0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_100013A4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100013AB0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  _objc_release(*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_100013B24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013BF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013C38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013CD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013D10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_100013D50()
{
  v2 = qword_10009BBA0;
  if (!qword_10009BBA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BBA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100013DCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_100013E0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013E4C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100013EEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013F2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100013FC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100014004()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100014044()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100014084()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100014124()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100014164()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000141FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10001423C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1000142C8()
{
  v2 = qword_10009AC38;
  if (!qword_10009AC38)
  {
    sub_100009860(&qword_10009AC30, &qword_10007F260);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AC38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100014350()
{
  v2 = qword_10009AC48;
  if (!qword_10009AC48)
  {
    sub_100009860(&qword_10009AC40, &unk_10007F268);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AC48);
    return WitnessTable;
  }

  return v2;
}

char *sub_1000143D8(char *a1, char *a2)
{
  *a2 = *a1;
  v7 = *(a1 + 1);

  *(a2 + 1) = v7;
  *(a2 + 2) = *(a1 + 2);
  v8 = *(a1 + 3);

  *(a2 + 3) = v8;
  *(a2 + 4) = *(a1 + 4);
  v9 = *(a1 + 5);

  *(a2 + 5) = v9;
  *(a2 + 6) = *(a1 + 6);
  v10 = *(a1 + 7);

  *(a2 + 7) = v10;
  v13 = type metadata accessor for Message();
  v11 = v13[8];
  v2 = sub_10007CE28();
  (*(*(v2 - 8) + 16))(&a2[v11], &a1[v11]);
  a2[v13[9]] = a1[v13[9]];
  a2[v13[10]] = a1[v13[10]];
  a2[v13[11]] = a1[v13[11]];
  a2[v13[12]] = a1[v13[12]];
  v3 = v13[13];
  v4 = &a2[v3];
  *v4 = *&a1[v3];
  v4[8] = a1[v3 + 8];
  a2[v13[14]] = a1[v13[14]];
  v14 = v13[15];
  v16 = sub_10007CD98();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(&a1[v14], 1))
  {
    v5 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(&a2[v14], &a1[v14], *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v17 + 16))();
    (*(v17 + 56))(&a2[v14], 0, 1, v16);
  }

  return a2;
}

char *sub_100014700(char *a1)
{
  v1 = *(a1 + 1);

  v2 = *(a1 + 3);

  v3 = *(a1 + 5);

  v4 = *(a1 + 7);

  v8 = type metadata accessor for Message();
  v7 = *(v8 + 32);
  v5 = sub_10007CE28();
  (*(*(v5 - 8) + 8))(&a1[v7]);
  v9 = *(v8 + 60);
  v11 = sub_10007CD98();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(&a1[v9], 1))
  {
    (*(v12 + 8))(&a1[v9], v11);
  }

  return a1;
}

uint64_t sub_10001484C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100014898(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1000148FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_100014958(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1000149BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100014A10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_100014A74(void *a1)
{
  v10 = a1[3];
  v11 = a1[4];
  sub_100014D28(v10, v11);
  switch(v11)
  {
    case 0uLL:
      sub_100014D64(v10, 0);
LABEL_10:
      v6 = a1[2];

      if (v6)
      {
        v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

        sub_100014EA4();
        sub_1000094DC(&qword_10009AC58, qword_10007F3E0);
        sub_100014F08();
        sub_100014F88();
        sub_10007DAB8();
        isa = sub_10007DA68().super.isa;

        v5 = [v3 initWithMailboxTypes:0 excludeTypes:0 mailboxObjectIDs:isa excludeMailboxes:0];
        _objc_release(isa);
        _objc_retain(v5);
        v12 = v5;

        v8 = v5;
        goto LABEL_14;
      }

LABEL_15:
      sub_100014DA0(a1);
      return 0;
    case 1uLL:
      sub_100014D64(v10, 1uLL);
      goto LABEL_10;
    case 2uLL:
      goto LABEL_13;
  }

  if (v11 != 3)
  {
    if (v11 - 4 > 1)
    {
      sub_100014D64(v10, v11);
      goto LABEL_10;
    }

LABEL_13:
    sub_100014D64(v10, v11);
    goto LABEL_15;
  }

  v7 = [swift_getObjCClassFromMetadata() mailboxScopeForMailboxType:7 forExclusion:0];
  _objc_retain(v7);
  v12 = v7;
  sub_100014D64(v10, 3uLL);
  v8 = v7;
LABEL_14:
  sub_100014DA0(a1);
  _objc_release(v12);
  return v8;
}

uint64_t sub_100014D28(uint64_t a1, unint64_t a2)
{
  if (a2 > 5)
  {
  }

  return result;
}

uint64_t sub_100014D64(uint64_t a1, unint64_t a2)
{
  if (a2 > 5)
  {
  }

  return result;
}

void *sub_100014DA0(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  if (a1[4] > 5uLL)
  {
    v3 = a1[4];
  }

  v5 = a1 + *(type metadata accessor for Mailbox() + 28);
  v6 = sub_10007CD98();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1))
  {
    (*(v7 + 8))(v5, v6);
  }

  return a1;
}

unint64_t sub_100014EA4()
{
  v2 = qword_10009AC50;
  if (!qword_10009AC50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009AC50);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100014F08()
{
  v2 = qword_10009AC60;
  if (!qword_10009AC60)
  {
    sub_100014EA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AC60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100014F88()
{
  v2 = qword_10009AC68;
  if (!qword_10009AC68)
  {
    sub_100009860(&qword_10009AC58, qword_10007F3E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AC68);
    return WitnessTable;
  }

  return v2;
}

void sub_100015010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = sub_1000094DC(&unk_10009ACD0, &qword_10007F288);
  v44 = a1;
  v42 = a2;
  v43 = a3;
  v41 = v3;
  v10 = objc_opt_self();

  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  isa = sub_10007D998().super.isa;

  v9 = [v7 messageListItemsForItemIDs:isa];
  _objc_release(isa);
  sub_1000094DC(&unk_10009ACE0, &qword_10007F298);
  sub_10007D9A8();
  v11 = sub_10007D998().super.isa;

  _objc_release(v9);
  v13 = [v10 join:v11];
  _objc_release(v11);
  v39 = sub_100015408;
  v40 = 0;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = 0;
  v37 = sub_100015764;
  v38 = &unk_100092A70;
  v12 = _Block_copy(&aBlock);
  v18 = [v13 then:?];
  _Block_release(v12);
  _objc_release(v13);
  v33 = v18;

  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  v31 = sub_1000159F0;
  v32 = v4;
  v26 = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = 0;
  v29 = sub_1000159FC;
  v30 = &unk_100092AC0;
  v14 = _Block_copy(&v26);

  [v18 addSuccessBlock:v14];
  _Block_release(v14);

  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v24 = sub_100015B8C;
  v25 = v5;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = 0;
  v22 = sub_100015B98;
  v23 = &unk_100092B10;
  v17 = _Block_copy(&v19);

  [v18 addFailureBlock:v17];
  _Block_release(v17);
  _objc_release(v18);
}

id sub_100015408(uint64_t a1)
{
  v11[2] = a1;
  v10 = objc_opt_self();
  v11[1] = a1;
  sub_100015F58();
  sub_100015FBC();
  sub_100016020();
  v11[0] = sub_10007D928();
  KeyPath = swift_getKeyPath();

  v6 = sub_1000094DC(&qword_10009AD10, &qword_10007F2E0);
  v7 = sub_1000094DC(&unk_10009ACE0, &qword_10007F298);
  v1 = sub_1000160F8();
  sub_10001BD00(sub_1000160C4, KeyPath, v6, v7, &type metadata for Never, v1, &protocol witness table for Never, v8);

  sub_10000A480(v11);
  isa = sub_10007D998().super.isa;

  v4 = [v10 join:isa];
  _objc_release(isa);
  return v4;
}

uint64_t sub_1000155F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;
  sub_10000A9B4(a1, v4);
  sub_100015FBC();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

void sub_100015678(id *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = [v2 displayMessage];
  _objc_release(v2);
}

uint64_t sub_1000156EC(id *a1)
{
  v2 = *a1;
  _objc_retain(*a1);

  swift_getAtKeyPath();
  _objc_release(v2);
}

id sub_100015764(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);

  _objc_retain(a2);
  v6 = v3(a2);
  _objc_release(a2);

  return v6;
}

uint64_t sub_1000157F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_10001585C(uint64_t a1, void (*a2)(void))
{
  swift_unknownObjectRetain();
  sub_1000094DC(&qword_10009ACF0, qword_10007F2A0);
  if (swift_dynamicCast())
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {

    (a2)(v3, 0);
  }

  else
  {
    a2(0);
  }
}

uint64_t sub_1000159B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000159FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v3(a2);
  swift_unknownObjectRelease();
}

uint64_t sub_100015A64(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100015AC8(uint64_t a1, void (*a2)(void, uint64_t))
{

  swift_errorRetain();
  a2(0, a1);
}

uint64_t sub_100015B4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100015B98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);

  _objc_retain(a2);
  v3(a2);
}

uint64_t sub_100015C08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_100015D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if (a1)
  {
    sub_100015EF4();
    isa = sub_10007D998().super.isa;

    v6 = isa;
  }

  else
  {
    v6 = 0;
  }

  swift_errorRetain();
  if (a2)
  {
    v3 = sub_10007CD68();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  (*(a3 + 16))(a3, v6);
  _objc_release(v4);
  _objc_release(v6);
}

unint64_t sub_100015EF4()
{
  v2 = qword_10009B060;
  if (!qword_10009B060)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B060);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100015F58()
{
  v2 = qword_10009ACF8;
  if (!qword_10009ACF8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009ACF8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100015FBC()
{
  v2 = qword_10009AD00;
  if (!qword_10009AD00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009AD00);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100016020()
{
  v2 = qword_10009AD08;
  if (!qword_10009AD08)
  {
    sub_100015F58();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000160F8()
{
  v2 = qword_10009AD18;
  if (!qword_10009AD18)
  {
    sub_100009860(&qword_10009AD10, &qword_10007F2E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100016180(uint64_t a1, uint64_t a2)
{
  v4[3] = a2;
  v4[2] = a1;
  sub_10007D898("com.apple.mobilemail.mailwidgetextension", 0x28uLL, 1);
  v4[0] = sub_10007DEB8();
  v4[1] = v2;
  v5._countAndFlagsBits = sub_10007D898("", 0, 1);
  sub_10007DEA8(v5);

  sub_1000162A8();
  v6._countAndFlagsBits = sub_10007D898("", 0, 1);
  sub_10007DEA8(v6);

  sub_1000099C8(v4);
  sub_10007D888();
  return sub_10007CEE8();
}

uint64_t sub_1000162A8()
{
  v1._countAndFlagsBits = sub_10007DF68();
  sub_10007D8B8(v1);
}

BOOL sub_1000162E0(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_1000164C8()
{
  v2 = qword_10009AD20;
  if (!qword_10009AD20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD20);
    return WitnessTable;
  }

  return v2;
}

void sub_1000165A0(void *a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v56 = a1;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v53 = 0;
  v48 = sub_10007CD98();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v52 = v13 - v51;
  v54 = (*(*(sub_1000094DC(&qword_10009B2F0, &qword_10007F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v55 = v13 - v54;
  v57 = (*(*(type metadata accessor for Mailbox() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v56);
  v58 = (v13 - v57);
  v59 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v60 = (v13 - v59);
  v69 = v13 - v59;
  v68 = v4;
  v61 = [v4 mailbox];
  if (!v61)
  {
    sub_100016CFC();
    v44 = swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v45 = v44;
LABEL_20:
    v13[1] = v45;
    _objc_release(v56);
    return;
  }

  v46 = v61;
  v42 = v61;
  v67 = v61;
  _objc_retain(v61);
  v6 = [v42 identifier];
  v43 = v6;
  if (v6)
  {
    v41 = v43;
    v36 = v43;
    v37 = sub_10007D868();
    v38 = v7;
    _objc_release(v36);
    v39 = v37;
    v40 = v38;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v34 = v40;
  v35 = v39;
  if (!v40)
  {
    _objc_release(v42);
    sub_100016CFC();
    v31 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    _objc_release(v42);
    v45 = v31;
    goto LABEL_20;
  }

  v32 = v35;
  v33 = v34;
  v27 = v34;
  v28 = v35;
  v65 = v35;
  v66 = v34;
  _objc_release(v42);
  _objc_retain(v42);
  v9 = sub_100016D78(v42);
  v29 = v9;
  v30 = v10;
  if (v10 == 6)
  {
    sub_100016CFC();
    v24 = swift_allocError();
    *v11 = 2;
    swift_willThrow();

    _objc_release(v42);
    v45 = v24;
    goto LABEL_20;
  }

  v25 = v29;
  v26 = v30;
  v22 = v30;
  v23 = v29;
  v63 = v29;
  v64 = v30;

  v12 = [v56 mailbox];
  v62 = v12;
  if (v12)
  {
    v18 = &v62;
    v19 = v62;
    _objc_retain(v62);
    sub_100012FD8(v18);
    v20 = sub_100072798();
    _objc_release(v19);
    v21 = v20;
  }

  else
  {
    sub_100012FD8(&v62);
    v21 = 0;
  }

  v16 = v21;
  v17 = [v42 url];
  if (v17)
  {
    v15 = v17;
    v14 = v17;
    sub_10007CD88();
    (*(v49 + 32))(v55, v52, v48);
    (*(v49 + 56))(v55, 0, 1, v48);
    _objc_release(v14);
  }

  else
  {
    (*(v49 + 56))(v55, 1, 1, v48);
  }

  sub_100018E68(v28, v27, v16, v23, v22, v55, v58);
  sub_10000E380(v58, v60);

  _objc_release(v42);
  sub_10000DFBC(v60, v47);
  _objc_release(v56);
  sub_100014DA0(v60);
}

unint64_t sub_100016CFC()
{
  v2 = qword_10009AD28;
  if (!qword_10009AD28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100016D78(void *a1)
{
  v22 = a1;
  v15 = [a1 kind];
  v21 = v15;
  if (v15)
  {
    if (v15 == 1)
    {
      v23 = 0;
      v24 = 0;
      v7 = 0;
    }

    else if (v15 == 2)
    {
      v23 = 0;
      v24 = 1;
      v7 = 0;
    }

    else if (v15 == 3)
    {
      v23 = 0;
      v24 = 2;
      v7 = 0;
    }

    else if (v15 == 4)
    {
      v23 = 0;
      v24 = 3;
      v7 = 0;
    }

    else if (v15 == 5)
    {
      v23 = 0;
      v24 = 4;
      v7 = 0;
    }

    else if (v15 == 6)
    {
      v23 = 0;
      v24 = 5;
      v7 = 0;
    }

    else if (v15 == 7)
    {
      v13 = [a1 name];
      if (v13)
      {
        v9 = sub_10007D868();
        v10 = v1;
        _objc_release(v13);
        v11 = v9;
        v12 = v10;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      v16 = v11;
      v17 = v12;
      _objc_retain(a1);
      if (v12)
      {
        v18 = v16;
        v19 = v17;
      }

      else
      {
        _objc_retain(a1);
        v8 = [a1 displayString];
        v18 = sub_10007D868();
        v19 = v2;
        _objc_release(a1);
        _objc_release(v8);
      }

      _objc_release(a1);
      v5 = v18;
      v6 = v19;
      sub_100014D28(v18, v19);
      v23 = v5;
      v24 = v6;
      v7 = v5;
    }

    else
    {
      v20 = v15;
      sub_10007DEF8();
      __break(1u);
    }

    _objc_release(a1);
    sub_1000170F8(&v23);
    return v7;
  }

  else
  {
    _objc_release(a1);
    return 0;
  }
}

uint64_t sub_1000170F8(uint64_t a1)
{
  if (*(a1 + 8) > 5uLL)
  {
    v1 = *(a1 + 8);
  }

  return a1;
}

void *sub_100017140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v71 = a4;
  v91 = a1;
  v90 = a2;
  v89 = a3;
  v73 = sub_1000160C4;
  v74 = sub_1000160C4;
  v108 = 0;
  v107 = 0;
  v105 = 0;
  v106 = 0;
  v102 = 0;
  v100 = 0;
  v101 = 0;
  v80 = 0;
  v75 = sub_10007CD98();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v75);
  v79 = v29 - v78;
  v81 = (*(*(sub_1000094DC(&qword_10009B2F0, &qword_10007F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v80);
  v82 = v29 - v81;
  v83 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v84 = v29 - v83;
  v85 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v86 = v29 - v85;
  v87 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v88 = v29 - v87;
  v92 = (*(*(type metadata accessor for Mailbox() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v91);
  v93 = (v29 - v92);
  v94 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v10);
  v95 = (v29 - v94);
  v96 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v12);
  v97 = (v29 - v96);
  v108 = v29 - v96;
  v107 = v14;
  v105 = v15;
  v106 = v16;
  if (!v16)
  {
    v62 = NSStringFromEMSmartMailboxType();
    v63 = sub_10007D868();
    v64 = v17;
    v98 = v91;
    KeyPath = swift_getKeyPath();

    v66 = sub_1000094DC(&qword_10009AD30, qword_10007F2F0);
    v67 = sub_100014EA4();
    v18 = sub_100017DE8();
    v19 = v72;
    v20 = sub_10001BD00(v73, KeyPath, v66, v67, &type metadata for Never, v18, &protocol witness table for Never, v68);
    v69 = v19;
    v70 = v20;
    if (!v19)
    {
      v60 = v70;

      sub_100014D28(v90, v89);
      (*(v76 + 56))(v88, 1, 1, v75);
      sub_100018E68(v63, v64, v60, v90, v89, v88, v95);
      _objc_release(v62);
      sub_10000E380(v95, v97);
      v61 = v69;
LABEL_28:
      v29[2] = v61;
      sub_10000DFBC(v97, v71);
      sub_100014D64(v90, v89);

      return sub_100014DA0(v97);
    }

    __break(1u);
LABEL_30:

    __break(1u);
    goto LABEL_31;
  }

  if (v89 == 1 || v89 - 2 > 3)
  {
    v104 = v91;
    v57 = sub_1000094DC(&qword_10009AD30, qword_10007F2F0);
    v58 = sub_100017DE8();
    sub_10007DB38();
    v59 = v103;
    if (v103)
    {
      v56 = v59;
      v55 = v59;
      v102 = v59;
      sub_100017E70();
      if (sub_10007D9D8() == 1)
      {
        v53 = [v55 objectID];
        v54 = [v53 url];
        if (v54)
        {
          v52 = v54;
          v51 = v54;
          sub_10007CD88();
          (*(v76 + 32))(v84, v79, v75);
          (*(v76 + 56))(v84, 0, 1, v75);
          _objc_release(v51);
        }

        else
        {
          (*(v76 + 56))(v84, 1, 1, v75);
        }

        sub_100017ED4(v84, v86);
        _objc_release(v53);
        if ((*(v76 + 48))(v86, 1, v75) == 1)
        {
          sub_100017FFC(v86);
          v49 = 0;
          v50 = 0;
        }

        else
        {
          v47 = sub_10007CD78();
          v48 = v21;
          (*(v76 + 8))(v86, v75);
          v49 = v47;
          v50 = v48;
        }

        v45 = v50;
        v46 = v49;
        if (!v50)
        {
          sub_100013D50();
          v41 = swift_allocError();
          *v22 = 3;
          swift_willThrow();
          _objc_release(v55);
          v42 = v41;
          goto LABEL_31;
        }

        v43 = v46;
        v44 = v45;
        v36 = v45;
        v37 = v46;
        v100 = v46;
        v101 = v45;

        v99 = v91;
        v38 = swift_getKeyPath();

        v23 = sub_100014EA4();
        v24 = v72;
        v25 = sub_10001BD00(v74, v38, v57, v23, &type metadata for Never, v58, &protocol witness table for Never, v68);
        v39 = v24;
        v40 = v25;
        if (!v24)
        {
          v34 = v40;

          sub_100014D28(v90, v89);
          v35 = [v55 externalURL];
          if (v35)
          {
            v33 = v35;
            v32 = v35;
            sub_10007CD88();
            (*(v76 + 32))(v82, v79, v75);
            (*(v76 + 56))(v82, 0, 1, v75);
            _objc_release(v32);
          }

          else
          {
            (*(v76 + 56))(v82, 1, 1, v75);
          }

          sub_100018E68(v37, v36, v34, v90, v89, v82, v93);
          sub_10000E380(v93, v97);

          _objc_release(v55);
          v61 = v39;
          goto LABEL_28;
        }

        goto LABEL_30;
      }

      _objc_release(v55);
    }

    sub_100013D50();
    v31 = swift_allocError();
    *v26 = 4;
    swift_willThrow();
    v42 = v31;
    goto LABEL_31;
  }

  sub_100013D50();
  v30 = swift_allocError();
  *v27 = 3;
  swift_willThrow();
  v42 = v30;
LABEL_31:
  v29[1] = v42;
  sub_100014D64(v90, v89);
}

unint64_t sub_100017DE8()
{
  v2 = qword_10009AD38;
  if (!qword_10009AD38)
  {
    sub_100009860(&qword_10009AD30, qword_10007F2F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100017E70()
{
  v2 = qword_10009AD40;
  if (!qword_10009AD40)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009AD40);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_100017ED4(const void *a1, void *a2)
{
  v6 = sub_10007CD98();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_100017FFC(uint64_t a1)
{
  v3 = sub_10007CD98();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void sub_1000180B0(id *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = [v2 objectID];
  _objc_release(v2);
}

id *sub_10001813C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v30 = a1;
  v29 = a2;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v31 = sub_10007CD48();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v30);
  v35 = &v10 - v34;
  v36 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v37 = &v10 - v36;
  v41 = &v10 - v36;
  v39 = v5;
  v40 = v6;
  if (v6)
  {
    switch(v29)
    {
      case 1:
LABEL_7:
        v38 = 0;
        v27 = 0;
        break;
      case 2:
        v25 = MFCombinedMailboxFlagged;
        _objc_retain(MFCombinedMailboxFlagged);
        _objc_retain(v25);
        v38 = v25;
        v27 = v25;
        break;
      case 3:
        v24 = MFCombinedMailboxUnread;
        _objc_retain(MFCombinedMailboxUnread);
        _objc_retain(v24);
        v38 = v24;
        v27 = v24;
        break;
      case 4:
        v23 = MFCombinedMailboxVIP;
        _objc_retain(MFCombinedMailboxVIP);
        _objc_retain(v23);
        v38 = v23;
        v27 = v23;
        break;
      case 5:
        v22 = MFCombinedMailboxToday;
        _objc_retain(MFCombinedMailboxToday);
        _objc_retain(v22);
        v38 = v22;
        v27 = v22;
        break;
      default:
        goto LABEL_7;
    }
  }

  else
  {
    v26 = MFCombinedMailboxAllInbox;
    _objc_retain(MFCombinedMailboxAllInbox);
    _objc_retain(v26);
    v38 = v26;
    v27 = v26;
  }

  v21 = v27;
  sub_10007CD38();
  v18 = EMAppleMailboxURLScheme;
  _objc_retain(EMAppleMailboxURLScheme);
  v19 = sub_100018548(v18);
  v20 = v7;
  _objc_release(v18);
  sub_10007CD28();
  if (v21)
  {
    v17 = v21;
    v12 = v21;
    v13 = sub_100018548(v21);
    v14 = v8;
    _objc_release(v12);
    v15 = v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  sub_10007CD18();
  (*(v32 + 16))(v35, v37, v31);
  sub_10007CD08();
  v11 = *(v32 + 8);
  v10 = v32 + 8;
  v11(v35, v31);
  v11(v37, v31);
  result = &v38;
  sub_100012FD8(&v38);
  return result;
}

uint64_t sub_100018548(void *a1)
{
  _objc_retain(a1);
  v3 = sub_10007D868();
  _objc_release(a1);
  return v3;
}

uint64_t sub_1000185A8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100018710(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_100018938()
{
  v2 = qword_10009AD48;
  if (!qword_10009AD48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000189B4()
{
  v22 = 0;
  v23 = 0;
  v28 = v0;
  v19 = sub_1000196A8();
  if (v19)
  {
    v13 = [v19 ef_publicDescription];
    v14 = sub_10007D868();
    v15 = v1;
    _objc_release(v19);
    _objc_release(v13);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v24 = v16;
  v25 = v17;
  if (v17)
  {
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = sub_10007D898("<nil>", 5uLL, 1);
    v27 = v2;
  }

  v6 = v26;
  v11 = v27;
  v22 = v26;
  v23 = v27;
  v21[0] = sub_10007DEB8();
  v21[1] = v3;
  v29._countAndFlagsBits = sub_10007D898("id:", 3uLL, 1);
  sub_10007DEA8(v29);

  v20[2] = v6;
  v20[3] = v11;
  sub_10007DE98();
  v30._countAndFlagsBits = sub_10007D898(", name:", 7uLL, 1);
  sub_10007DEA8(v30);

  v7 = *(v18 + 24);
  v8 = *(v18 + 32);
  sub_100014D28(v7, v8);
  v9 = sub_10001A6A8(v7, v8);
  v10 = v4;
  sub_100014D64(v7, v8);
  v20[0] = v9;
  v20[1] = v10;
  sub_10007DE98();
  sub_1000099C8(v20);
  v31._countAndFlagsBits = sub_10007D898("", 0, 1);
  sub_10007DEA8(v31);

  sub_1000099C8(v21);
  v12 = sub_10007D888();

  return v12;
}

uint64_t sub_100018CB4()
{
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  sub_100014D28(v8, v9);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_100014D64(v8, 1uLL);
    }

    else
    {
      if (v9 - 2 <= 3)
      {
        sub_100014D64(v8, v9);
        v2 = 1;
        return v2 & 1;
      }

      sub_100014D64(v8, v9);
    }
  }

  else
  {
    sub_100014D64(v8, 0);
  }

  v6 = *(v7 + 16);

  if (v6)
  {
    sub_1000094DC(&qword_10009AC58, qword_10007F3E0);
    sub_10001AA34();
    v4 = sub_10007DB58();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v5;
  }

  v2 = v3 ^ 1;
  return v2 & 1;
}

void *sub_100018E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v25 = a7;
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v37 = a4;
  v36 = a5;
  v35 = a6;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v7 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v26 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v39 = &v24 - v26;
  v27 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v24 - v26);
  v28 = &v24 - v27;
  v38 = 0;
  v29 = type metadata accessor for Mailbox();
  v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v32);
  v34 = (&v24 - v30);
  v51 = &v24 - v30;
  v49 = v10;
  v50 = v9;
  v48 = v11;
  v46 = v12;
  v47 = v13;
  v45 = v14;

  v15 = v32;
  v16 = v34;
  *v34 = v31;
  v16[1] = v15;

  v17 = v37;
  v18 = v36;
  v34[2] = v33;
  sub_100014D28(v17, v18);
  v19 = v34;
  v20 = v35;
  v21 = v36;
  v22 = v39;
  v34[3] = v37;
  v19[4] = v21;
  sub_10001AB30(v20, v22);
  sub_100014D28(v37, v36);
  v40 = sub_10007CD98();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = *(v41 + 48);
  v44 = v41 + 48;
  if ((v43)(v39, 1) == 1)
  {
    sub_10001813C(v37, v36, v28);
    if (v43(v39, 1, v40) != 1)
    {
      sub_100017FFC(v39);
    }
  }

  else
  {
    (*(v41 + 32))(v28, v39, v40);
    (*(v41 + 56))(v28, 0, 1, v40);
  }

  sub_100014D64(v37, v36);
  sub_100017ED4(v28, v34 + *(v29 + 28));
  sub_10000DFBC(v34, v25);
  sub_100017FFC(v35);
  sub_100014D64(v37, v36);

  return sub_100014DA0(v34);
}

uint64_t sub_1000191C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100014D28(a1, a2);
  sub_100014D28(a3, a4);
  switch(a2)
  {
    case 0uLL:
      if (!a4)
      {
        sub_100014D64(a1, 0);
        sub_100014D64(a3, 0);
        v5 = 1;
        return v5 & 1;
      }

LABEL_23:
      sub_100014D64(a1, a2);
      sub_100014D64(a3, a4);
      v5 = 0;
      return v5 & 1;
    case 1uLL:
      if (a4 == 1)
      {
        sub_100014D64(a1, 1uLL);
        sub_100014D64(a3, 1uLL);
        v5 = 1;
        return v5 & 1;
      }

      goto LABEL_23;
    case 2uLL:
      if (a4 == 2)
      {
        sub_100014D64(a1, 2uLL);
        sub_100014D64(a3, 2uLL);
        v5 = 1;
        return v5 & 1;
      }

      goto LABEL_23;
    case 3uLL:
      if (a4 == 3)
      {
        sub_100014D64(a1, 3uLL);
        sub_100014D64(a3, 3uLL);
        v5 = 1;
        return v5 & 1;
      }

      goto LABEL_23;
    case 4uLL:
      if (a4 == 4)
      {
        sub_100014D64(a1, 4uLL);
        sub_100014D64(a3, 4uLL);
        v5 = 1;
        return v5 & 1;
      }

      goto LABEL_23;
    case 5uLL:
      if (a4 == 5)
      {
        sub_100014D64(a1, 5uLL);
        sub_100014D64(a3, 5uLL);
        v5 = 1;
        return v5 & 1;
      }

      goto LABEL_23;
  }

  if (a4 <= 5)
  {
    goto LABEL_23;
  }

  if (sub_10007D8A8())
  {

    sub_100014D64(a1, a2);
    sub_100014D64(a3, a4);
    v5 = 1;
  }

  else
  {

    sub_100014D64(a1, a2);
    sub_100014D64(a3, a4);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1000195D4()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_10001960C()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_100019638()
{
  v2 = *(v0 + 24);
  sub_100014D28(v2, *(v0 + 32));
  return v2;
}

uint64_t sub_1000196A8()
{
  v3 = *(v0 + 16);

  if (!v3)
  {
    return 0;
  }

  sub_1000094DC(&qword_10009AC58, qword_10007F3E0);
  sub_10001AA34();
  sub_10007DB38();

  return v4;
}

void *sub_100019764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v28 = a7;
  v26 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v29 = a6;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v7 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v17 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v25 = &v16 - v17;
  v19 = *(*(type metadata accessor for Mailbox() - 8) + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v29);
  v27 = (&v16 - v18);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v8);
  v30 = (&v16 - v20);
  v37 = &v16 - v20;
  v35 = v26;
  v36 = v10;
  v34 = v11;
  v32 = v12;
  v33 = v13;
  v31 = v9;
  sub_10001AB30(v9, v14);
  sub_100018E68(v26, v21, v22, v23, v24, v25, v27);
  sub_10000E380(v27, v30);
  sub_10000DFBC(v30, v28);
  sub_100017FFC(v29);
  return sub_100014DA0(v30);
}

void *sub_100019934()
{
  v0 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v13 = &v4 - v5;
  v12 = 0;
  v7 = type metadata accessor for Mailbox();
  v6 = qword_10009DC00;
  sub_100001F90(v7, qword_10009DC00);
  v9 = sub_10000202C(v7, v6);
  v8 = 1;
  v10 = sub_10007D898("VIP", 3uLL, 1);
  v11 = v1;
  v2 = sub_10007CD98();
  (*(*(v2 - 8) + 56))(v13, v8);
  return sub_100018E68(v10, v11, v12, v12, 4uLL, v13, v9);
}

uint64_t sub_100019A70()
{
  if (qword_10009A600 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Mailbox();
  return sub_10000202C(v0, qword_10009DC00);
}

void *sub_100019B08()
{
  v0 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v13 = &v4 - v5;
  v12 = 0;
  v7 = type metadata accessor for Mailbox();
  v6 = qword_10009DC18;
  sub_100001F90(v7, qword_10009DC18);
  v9 = sub_10000202C(v7, v6);
  v8 = 1;
  v10 = sub_10007D898("ALL_INBOXES", 0xBuLL, 1);
  v11 = v1;
  v2 = sub_10007CD98();
  (*(*(v2 - 8) + 56))(v13, v8);
  return sub_100018E68(v10, v11, v12, v12, v12, v13, v9);
}

uint64_t sub_100019C40()
{
  if (qword_10009A608 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Mailbox();
  return sub_10000202C(v0, qword_10009DC18);
}

uint64_t sub_100019CD8()
{
  v64 = *(v0 + 24);
  v65 = *(v0 + 32);
  sub_100014D28(v64, v65);
  if (v65)
  {
    switch(v65)
    {
      case 1uLL:
        v48 = sub_10007D898("INBOX", 5uLL, 1);
        v51 = v11;
        sub_10007D898("Title of the 'Inbox' mailbox displayed in the widget header", 0x3BuLL, 1);
        v50 = v12;
        v49 = sub_10001A2B0();
        v13 = sub_10001A2F0();
        v14.super.isa = v49;
        v80._countAndFlagsBits = v13;
        v68._countAndFlagsBits = v48;
        v80._object = v15;
        v68._object = v51;
        v32._countAndFlagsBits = v50;
        v74.value._object = 0;
        v74.value._countAndFlagsBits = 0;
        v52 = sub_10007CD58(v68, v74, v14, v80, v32);

        _objc_release(v49);

        return v52;
      case 2uLL:
        v43 = sub_10007D898("FLAGGED", 7uLL, 1);
        v46 = v16;
        sub_10007D898("Title of the 'Flag' mailbox displayed in the widget header", 0x3AuLL, 1);
        v45 = v17;
        v44 = sub_10001A2B0();
        v18 = sub_10001A2F0();
        v19.super.isa = v44;
        v81._countAndFlagsBits = v18;
        v69._countAndFlagsBits = v43;
        v81._object = v20;
        v69._object = v46;
        v32._countAndFlagsBits = v45;
        v75.value._object = 0;
        v75.value._countAndFlagsBits = 0;
        v47 = sub_10007CD58(v69, v75, v19, v81, v32);

        _objc_release(v44);

        return v47;
      case 3uLL:
        v38 = sub_10007D898("UNREAD", 6uLL, 1);
        v41 = v21;
        sub_10007D898("Title of the 'Unread' mailbox displayed in the widget header", 0x3CuLL, 1);
        v40 = v22;
        v39 = sub_10001A2B0();
        v23 = sub_10001A2F0();
        v24.super.isa = v39;
        v82._countAndFlagsBits = v23;
        v70._countAndFlagsBits = v38;
        v82._object = v25;
        v70._object = v41;
        v32._countAndFlagsBits = v40;
        v76.value._object = 0;
        v76.value._countAndFlagsBits = 0;
        v42 = sub_10007CD58(v70, v76, v24, v82, v32);

        _objc_release(v39);

        return v42;
      case 4uLL:
        v58 = sub_10007D898("VIP", 3uLL, 1);
        v61 = v1;
        sub_10007D898("Title of the 'VIP' mailbox displayed in the widget header", 0x39uLL, 1);
        v60 = v2;
        v59 = sub_10001A2B0();
        v3 = sub_10001A2F0();
        v4.super.isa = v59;
        v78._countAndFlagsBits = v3;
        v66._countAndFlagsBits = v58;
        v78._object = v5;
        v66._object = v61;
        v32._countAndFlagsBits = v60;
        v72.value._object = 0;
        v72.value._countAndFlagsBits = 0;
        v62 = sub_10007CD58(v66, v72, v4, v78, v32);

        _objc_release(v59);

        return v62;
      case 5uLL:
        HIDWORD(v32._object) = 1;
        v33 = sub_10007D898("TODAY", 5uLL, 1);
        v36 = v26;
        sub_10007D898("Title of the 'Today' mailbox displayed in the widget header", 0x3BuLL, 1);
        v35 = v27;
        v34 = sub_10001A2B0();
        v28 = sub_10001A2F0();
        v29.super.isa = v34;
        v83._countAndFlagsBits = v28;
        v71._countAndFlagsBits = v33;
        v83._object = v30;
        v71._object = v36;
        v32._countAndFlagsBits = v35;
        v77.value._object = 0;
        v77.value._countAndFlagsBits = 0;
        v37 = sub_10007CD58(v71, v77, v29, v83, v32);

        _objc_release(v34);

        return v37;
      default:
        return v64;
    }
  }

  else
  {
    v53 = sub_10007D898("ALL_INBOXES", 0xBuLL, 1);
    v56 = v6;
    sub_10007D898("Title of the 'All Inboxes' mailbox displayed in the widget header", 0x41uLL, 1);
    v55 = v7;
    v54 = sub_10001A2B0();
    v8 = sub_10001A2F0();
    v9.super.isa = v54;
    v79._countAndFlagsBits = v8;
    v67._countAndFlagsBits = v53;
    v79._object = v10;
    v67._object = v56;
    v32._countAndFlagsBits = v55;
    v73.value._object = 0;
    v73.value._countAndFlagsBits = 0;
    v57 = sub_10007CD58(v67, v73, v9, v79, v32);

    _objc_release(v54);

    return v57;
  }
}

id sub_10001A2B0()
{
  v0 = [objc_opt_self() mainBundle];

  return v0;
}

id sub_10001A31C()
{
  sub_10007DC38();
  sub_10007DC58();
  sub_10007DC48();
  result = sub_10001A374();
  qword_10009AD50 = result;
  return result;
}

uint64_t *sub_10001A3B4()
{
  if (qword_10009A610 != -1)
  {
    swift_once();
  }

  return &qword_10009AD50;
}

void *sub_10001A414()
{
  v1 = *sub_10001A3B4();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_10001A44C()
{
  if (EMBlackPearlIsFeatureEnabled())
  {
    v14 = v16[3];
    v13 = v16[4];
    sub_100014D28(v14, v13);
    v15 = sub_1000191C0(v14, v13, 0, 1uLL);
    sub_100014D64(v14, v13);
    if (v15)
    {
      v12 = 1;
    }

    else
    {
      v10 = v16[3];
      v9 = v16[4];
      sub_100014D28(v10, v9);
      v11 = sub_1000191C0(v10, v9, 0, 0);
      sub_100014D64(v10, v9);
      v12 = v11;
    }

    if (v12)
    {
      type metadata accessor for MailboxConfiguration();
      v2 = *v16;
      v3 = v16[1];

      v17 = sub_10001B6B4(v2, v3, 1);
      v6 = *sub_10001A3B4();
      _objc_retain(v6);
      sub_1000094DC(&qword_10009ADD0, &qword_10007F3F8);
      sub_10007DEC8();
      v4 = v0;
      _objc_retain(v17);
      *v4 = v17;
      sub_100006FD4();
      isa = sub_10007D998().super.isa;

      v7 = [v6 isBucketBarHiddenForMailboxes:isa];
      _objc_release(isa);
      _objc_release(v6);
      _objc_release(v17);
      v8 = v7 ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_10001A6A8(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return sub_10007D898("All Inboxes", 0xBuLL, 1);
    case 1:
      return sub_10007D898("Inbox", 5uLL, 1);
    case 2:
      return sub_10007D898("Flag", 4uLL, 1);
    case 3:
      return sub_10007D898("Unread", 6uLL, 1);
    case 4:
      return sub_10007D898("VIP", 3uLL, 1);
    case 5:
      return sub_10007D898("Today", 5uLL, 1);
  }

  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 isInternal];
  _objc_release(v13);
  if (v14)
  {
    v8 = objc_opt_self();

    v9 = sub_10007D858();

    v10 = [v8 partiallyRedactedStringForString:v9];
    _objc_release(v9);
    v11 = sub_10007D868();
    _objc_release(v10);
    v12 = v11;
  }

  else
  {
    v4 = objc_opt_self();

    v5 = sub_10007D858();

    v6 = [v4 fullyRedactedStringForString:v5];
    _objc_release(v5);
    v7 = sub_10007D868();
    _objc_release(v6);
    v12 = v7;
  }

  return v12;
}

unint64_t sub_10001AA34()
{
  v2 = qword_10009AD60;
  if (!qword_10009AD60)
  {
    sub_100009860(&qword_10009AC58, qword_10007F3E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AD60);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for Mailbox()
{
  v1 = qword_10009AE30;
  if (!qword_10009AE30)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_10001AB30(const void *a1, void *a2)
{
  v6 = sub_10007CD98();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_10001AD00(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < &_mh_execute_header)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 28), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_10001AE4C(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 28), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10001AF48()
{
  v3 = sub_10001B038();
  if (v0 <= 0x3F)
  {
    v3 = sub_10001B0DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_10001B038()
{
  v4 = qword_10009AE40;
  if (!qword_10009AE40)
  {
    sub_100009860(&qword_10009AC58, qword_10007F3E0);
    v3 = sub_10007DC98();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_10009AE40);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_10001B0DC()
{
  v4 = qword_10009AE48;
  if (!qword_10009AE48)
  {
    sub_10007CD98();
    v3 = sub_10007DC98();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_10009AE48);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_10001B178(uint64_t a1)
{
  v2 = -1;
  if (*(a1 + 8) < &_mh_execute_header)
  {
    v2 = *(a1 + 8);
  }

  return (v2 + 1);
}

uint64_t sub_10001B2B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF9 && *(a1 + 16))
    {
      v5 = *a1 + 2147483641;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 6;
      if (v4 - 6 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10001B40C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF9)
  {
    *result = a2 - 2147483642;
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

id sub_10001B66C()
{
  v2 = [v0 initWithProvider:?];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_10001B76C()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension20MailboxConfiguration_isInboxMailbox);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_10001B834(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19MailWidgetExtension20MailboxConfiguration_isInboxMailbox);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_10001B934()
{
  v2 = (v0 + OBJC_IVAR____TtC19MailWidgetExtension20MailboxConfiguration_bucketBarConfigurationIdentifier);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_10001BA24(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19MailWidgetExtension20MailboxConfiguration_bucketBarConfigurationIdentifier);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

id sub_10001BAC4(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v13 = a1;
  v14 = a2;
  v12 = a3 & 1;
  v15 = v3;

  v4 = &v3[OBJC_IVAR____TtC19MailWidgetExtension20MailboxConfiguration_bucketBarConfigurationIdentifier];
  *v4 = a1;
  v4[1] = a2;
  v15[OBJC_IVAR____TtC19MailWidgetExtension20MailboxConfiguration_isInboxMailbox] = a3;
  v11.receiver = v15;
  v11.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v11, "init");
  _objc_retain(v10);
  v15 = v10;

  _objc_release(v15);
  return v10;
}

uint64_t sub_10001BD00(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a1;
  v38 = a2;
  v62 = a3;
  v52 = a4;
  v39 = a5;
  v61 = a6;
  v41 = a8;
  v42 = "Fatal error";
  v43 = "Range requires lowerBound <= upperBound";
  v44 = "Swift/Range.swift";
  v45 = "Index out of range";
  v46 = "invalid Collection: count differed in successive traversals";
  v47 = "Swift/ArrayShared.swift";
  v72[3] = a3;
  v72[2] = a4;
  v72[1] = a5;
  v48 = *(a5 - 8);
  v49 = a5 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v51 = &v18 - v50;
  v9 = *(v8 + 8);
  v53 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v53);
  v58 = &v18 - v57;
  v59 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v60 = &v18 - v59;
  v63 = swift_getAssociatedTypeWitness();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v62);
  v67 = &v18 - v66;
  v68 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v69 = &v18 - v68;
  v70 = sub_10007DAF8();
  if (!v70)
  {
    goto LABEL_24;
  }

  v72[0] = sub_10007DD58();
  v36 = sub_10007DD68();
  sub_10007DD38(v70);
  result = sub_10007DAE8();
  if (v70 < 0)
  {
    sub_10007DDA8();
    __break(1u);
LABEL_24:
    v20 = sub_10007D9B8();
    v21 = v40;
    return v20;
  }

  if (!v70)
  {
LABEL_19:
    v26 = v40;
LABEL_20:
    v22 = v26;
    sub_10007DB08();
    v17 = *(swift_getAssociatedConformanceWitness() + 8);
    v25 = sub_10007D848();
    v23 = *(v64 + 8);
    v24 = v64 + 8;
    v23(v67, v63);
    if ((v25 & 1) == 0)
    {
      sub_10007DDC8();
      __break(1u);
    }

    v23(v69, v63);
    v19 = v72[0];

    v20 = v19;
    v21 = v22;
    return v20;
  }

  v34 = 0;
  for (i = v40; ; i = v30)
  {
    v32 = i;
    v33 = v34;
    if (v34 < 0 || v33 >= v70)
    {
      goto LABEL_18;
    }

    if (v70 < 0)
    {
      sub_10007DDA8();
      __break(1u);
LABEL_18:
      sub_10007DDC8();
      __break(1u);
      goto LABEL_19;
    }

    v31 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    v29 = &v71;
    v28 = sub_10007DB78();
    (*(v55 + 16))(v58);
    v28();
    v16 = v32;
    v37(v58, v51);
    v30 = v16;
    if (v16)
    {
      (*(v55 + 8))(v58, AssociatedTypeWitness);
      (*(v64 + 8))(v69, v63);
      sub_10001DFF8(v72);
      (*(v48 + 32))(v41, v51, v39);
      return v27;
    }

    (*(v55 + 8))(v58, AssociatedTypeWitness);
    sub_10007DD48();
    sub_10007DB18();
    if (v31 == v70)
    {
      v26 = v30;
      goto LABEL_20;
    }

    result = v30;
    v34 = v31;
  }

  __break(1u);
  return result;
}

void sub_10001C5E4(void *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v60 = a1;
  v59 = a2;
  v57 = a3;
  v58 = a4;
  v51 = sub_10001D174;
  v52 = sub_10001D830;
  v82 = 0;
  v81 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v53 = 0;
  v67 = 0;
  v54 = sub_1000094DC(&qword_10009AEC8, " P");
  v55 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v54);
  v56 = (v25 - v55);
  v61 = *(type metadata accessor for Mailbox() - 8);
  v62 = v61;
  v63 = *(v61 + 64);
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v60);
  v65 = (v25 - v64);
  v82 = v5;
  v81 = v6;
  v79 = v7;
  v80 = v8;
  v78 = v4;
  v66 = sub_10001CD80(v5);
  if (v66)
  {
    v49 = v66;
    v77 = v66;
    if (sub_10007DAA8())
    {
      v48 = 0;
    }

    else
    {
      v46 = v60[3];
      v45 = v60[4];
      sub_100014D28(v46, v45);
      v47 = sub_1000191C0(v46, v45, 0, 0);
      sub_100014D64(v46, v45);
      v48 = v47;
    }

    if ((v48 & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = v53;
    v40 = 0;
    v39 = sub_10001DE00();
    v68 = v59;
    v41 = sub_1000094DC(&qword_10009AED8, &qword_10007F538);
    v42 = sub_10001DE64();
    v10 = sub_10001DEC8();
    v44 = sub_10001BD00(v51, 0, v41, v42, &type metadata for Never, v10, &protocol witness table for Never, v43);
    if (!v9)
    {
      v38 = sub_10001D23C();
      v67 = v38;
      v37 = sub_10007DEC8();
      v36 = v11;
      v35 = v77;
      _objc_retain(v77);
      v12 = v38;
      *v36 = v35;
      _objc_retain(v12);
      v36[1] = v38;
      sub_100006FD4();
      v13 = sub_100020F5C();
      v14 = v77;
      v77 = v13;
      _objc_release(v14);
      _objc_release(v38);
LABEL_8:
      sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
      v26 = 0;
      v28 = sub_100017E70();
      v29 = v77;
      _objc_retain(v77);
      sub_10001D110();
      v27 = sub_10007DEC8();
      v15 = sub_10007D898("Widget.DaemonDataSource.Mailboxes", 0x21uLL, 1);
      v34 = sub_100020FE0(v28, v29, v27, 8, v15, v16);
      v76 = v34;
      v33 = *(v50 + 16);
      _objc_retain(v33);

      sub_10000DFBC(v60, v65);
      v30 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v17 = swift_allocObject();
      v18 = v58;
      v19 = v30;
      v20 = v17;
      v21 = v65;
      v31 = v20;
      *(v20 + 16) = v57;
      *(v20 + 24) = v18;
      sub_10000E380(v21, v20 + v19);
      v74 = v52;
      v75 = v31;
      aBlock = _NSConcreteStackBlock;
      v70 = 1107296256;
      v71 = 0;
      v72 = sub_10001DC6C;
      v73 = &unk_100092CC8;
      v32 = _Block_copy(&aBlock);

      [v33 performQuery:v34 completionHandler:v32];
      _Block_release(v32);
      _objc_release(v33);
      _objc_release(v34);
      _objc_release(v77);
      return;
    }

    __break(1u);
  }

  else
  {

    sub_100013D50();
    v25[1] = 1;
    v22 = swift_allocError();
    v23 = v56;
    *v24 = 3;
    *v23 = v22;
    swift_storeEnumTagMultiPayload();
    v57(v56);
    sub_10001CFC8(v56);
  }
}

void *sub_10001CCE8()
{
  v2 = *(v0 + 16);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_10001CD1C(void *a1)
{
  _objc_retain(a1);
  *(v1 + 16) = a1;
  _objc_release(a1);
  return v4;
}

id sub_10001CD80(uint64_t a1)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  sub_100014D28(v9, v10);
  if (!v10)
  {
    sub_100014D64(v9, 0);
    return [objc_opt_self() predicateForMailboxType:7];
  }

  if (v10 == 1)
  {
    sub_100014D64(v9, 1uLL);
    return [objc_opt_self() predicateForMailboxType:7];
  }

  if (v10 - 2 > 3)
  {

    sub_10001DE00();
    sub_10001DE64();
    sub_10007DEC8();
    v6 = v1;
    *v1 = [objc_opt_self() predicateForMailboxType:0];
    v3 = objc_opt_self();

    v4 = sub_10007D858();

    v5 = [v3 predicateForMailboxName:v4];
    _objc_release(v4);
    v6[1] = v5;
    sub_100006FD4();
    v7 = sub_100020F5C();

    sub_100014D64(v9, v10);
    return v7;
  }

  else
  {
    sub_100014D64(v9, v10);
    return 0;
  }
}

uint64_t *sub_10001CFC8(uint64_t *a1)
{
  sub_1000094DC(&qword_10009AEC8, " P");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a1;
  }

  else
  {
    v1 = a1[1];

    v2 = a1[2];

    if (a1[4] > 5)
    {
      v3 = a1[4];
    }

    v6 = a1 + *(type metadata accessor for Mailbox() + 28);
    v7 = sub_10007CD98();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v6, 1))
    {
      (*(v8 + 8))(v6, v7);
    }
  }

  return a1;
}

unint64_t sub_10001D110()
{
  v2 = qword_10009AED0;
  if (!qword_10009AED0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009AED0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_10001D174@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_opt_self();

  v6 = sub_10007D858();

  v7 = [v5 predicateForMailboxAccountIdentifier:v6 topLevelOnly:0];
  _objc_release(v6);
  result = v7;
  *a2 = v7;
  return result;
}

id sub_10001D23C()
{
  sub_10001DE64();
  isa = sub_10007D998().super.isa;
  v2 = [swift_getObjCClassFromMetadata() orPredicateWithSubpredicates:isa];
  _objc_release(isa);

  return v2;
}

void sub_10001D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v22 = a5;
  v31 = sub_10001E1D4;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v33 = 0;
  v37 = sub_10007D5E8();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v18 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v36 = &v17 - v18;
  v41 = sub_10007D608();
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v19 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v40 = &v17 - v19;
  v20 = *(type metadata accessor for Mailbox() - 8);
  v23 = v20;
  v24 = *(v20 + 64);
  v21 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v30 = (&v17 - v21);
  v55 = v5;
  v54 = v6;
  v52 = v7;
  v53 = v8;
  v51 = v9;
  sub_100009744();
  v43 = sub_10007DC08();
  swift_errorRetain();

  sub_10000DFBC(v22, v30);
  v29 = (*(v23 + 80) + 48) & ~*(v23 + 80);
  v10 = swift_allocObject();
  v11 = v26;
  v12 = v27;
  v13 = v28;
  v14 = v29;
  v15 = v10;
  v16 = v30;
  v32 = v15;
  v15[2] = v25;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  sub_10000E380(v16, v15 + v14);
  v49 = v31;
  v50 = v32;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = 0;
  v47 = sub_10000AAE4;
  v48 = &unk_100092D18;
  v42 = _Block_copy(&aBlock);

  sub_100006978();
  sub_100006990();
  sub_10007DC18();
  (*(v34 + 8))(v36, v37);
  (*(v38 + 8))(v40, v41);
  _Block_release(v42);
  _objc_release(v43);
}

uint64_t sub_10001D690()
{
  v11 = type metadata accessor for Mailbox();
  v1 = *(*(v11 - 8) + 80);
  v13 = (v1 + 32) & ~v1;
  v12 = v13 + *(*(v11 - 8) + 64);
  v2 = *(v0 + 24);

  v3 = *(v0 + v13 + 8);

  v4 = *(v0 + v13 + 16);

  if (*(v0 + v13 + 32) > 5uLL)
  {
    v5 = *(v10 + v13 + 32);
  }

  v7 = v10 + v13 + *(v11 + 28);
  v8 = sub_10007CD98();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1))
  {
    (*(v9 + 8))(v7, v8);
  }

  return swift_deallocObject();
}

void sub_10001D830(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Mailbox();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = (v2 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)));

  sub_10001D2C0(a1, a2, v4, v5, v6);
}

uint64_t sub_10001D8B8(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a1;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v44 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v25 = 0;
  v37 = 0;
  v36 = 0;
  v5 = type metadata accessor for Mailbox();
  v26 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v27 = (v16 - v26);
  v44 = v16 - v26;
  v32 = sub_1000094DC(&qword_10009AEC8, " P");
  v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v35);
  v34 = (v16 - v33);
  v43 = v6;
  v41 = v7;
  v42 = v8;
  v40 = v9;
  v39 = v10;
  swift_errorRetain();
  if (v35)
  {
    v24 = v35;
    v22 = v35;
    v36 = v35;

    swift_errorRetain();
    *v34 = v22;
    swift_storeEnumTagMultiPayload();
    v28(v34);
    sub_10001CFC8(v34);
  }

  else
  {

    if (v30)
    {
      v23 = v30;
      v15 = v25;
      v17 = v30;
      v38 = v30;

      v18 = *(v31 + 24);
      v19 = *(v31 + 32);
      sub_100014D28(v18, v19);
      sub_100017140(v17, v18, v19, v27);
      v20 = v15;
      if (v15)
      {
        v16[0] = v20;
        swift_errorRetain();
        v37 = v16[0];

        swift_errorRetain();
        *v34 = v16[0];
        swift_storeEnumTagMultiPayload();
        v28(v34);
        sub_10001CFC8(v34);
      }

      else
      {

        sub_10000DFBC(v27, v34);
        swift_storeEnumTagMultiPayload();
        v28(v34);
        sub_10001CFC8(v34);

        sub_100014DA0(v27);
      }
    }

    else
    {

      sub_100013D50();
      v21 = 1;
      v12 = swift_allocError();
      v13 = v34;
      *v14 = 0;
      *v13 = v12;
      swift_storeEnumTagMultiPayload();
      v28(v34);
      sub_10001CFC8(v34);
    }
  }
}

uint64_t sub_10001DC6C(uint64_t a1, void *a2, void *a3)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  _objc_retain(a2);
  if (a2)
  {
    sub_100017E70();
    v4 = sub_10007D9A8();
    _objc_release(a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_retain(a3);
  v7(v5);
}

uint64_t sub_10001DD9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_10001DE00()
{
  v2 = qword_10009B050;
  if (!qword_10009B050)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009B050);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10001DE64()
{
  v2 = qword_10009BB50;
  if (!qword_10009BB50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009BB50);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10001DEC8()
{
  v2 = qword_10009AEE0;
  if (!qword_10009AEE0)
  {
    sub_100009860(&qword_10009AED8, &qword_10007F538);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009AEE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_10001DFF8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_10001E024()
{
  v13 = type metadata accessor for Mailbox();
  v1 = *(*(v13 - 8) + 80);
  v15 = (v1 + 48) & ~v1;
  v14 = v15 + *(*(v13 - 8) + 64);
  v2 = v0[2];

  v3 = v0[4];

  v4 = v0[5];

  v5 = *(v0 + v15 + 8);

  v6 = *(v0 + v15 + 16);

  if (*(v0 + v15 + 32) > 5uLL)
  {
    v7 = *(v12 + v15 + 32);
  }

  v9 = v12 + v15 + *(v13 + 28);
  v10 = sub_10007CD98();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1))
  {
    (*(v11 + 8))(v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_10001E1D4()
{
  v1 = *(type metadata accessor for Mailbox() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_10001D8B8(v2, v3, v4, v5, v6);
}

uint64_t sub_10001E248(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_10001E2CC(void *a1, void *a2)
{
  *a2 = *a1;
  v14 = a1[1];

  a2[1] = v14;
  v17 = a1[2];

  a2[2] = v17;
  if (a1[4] > 5uLL)
  {
    a2[3] = a1[3];
    v13 = a1[4];

    a2[4] = v13;
  }

  else
  {
    *(a2 + 3) = *(a1 + 3);
  }

  v2 = type metadata accessor for Mailbox();
  __dst = a2 + *(v2 + 28);
  __src = a1 + *(v2 + 28);
  v11 = sub_10007CD98();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(__src, 1))
  {
    v3 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(__dst, __src, v11);
    (*(v12 + 56))(__dst, 0, 1, v11);
  }

  v4 = type metadata accessor for Snapshot();
  v7 = a2 + *(v4 + 20);
  v8 = a1 + *(v4 + 20);
  if (*v8 < 2uLL)
  {
    *v7 = *v8;
    *(v7 + 8) = *(v8 + 8);
  }

  else
  {
    v6 = *v8;

    *v7 = v6;
    *(v7 + 1) = *(v8 + 1);
    v7[16] = v8[16];
    v7[17] = v8[17];
  }

  return a2;
}

uint64_t type metadata accessor for MailEntry()
{
  v1 = qword_10009AFE8;
  if (!qword_10009AFE8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_10001E604(const void *a1, void *a2)
{
  v6 = sub_10007D768();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_10001E72C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for MailEntry() + 24);
  v2 = sub_10007CE28();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

void *sub_10001E7BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v18 = a4;
  v27 = a1;
  v25 = a2;
  v22 = a3;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v14 = 0;
  v21 = sub_10007CE28();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v9 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v16 = &v9 - v9;
  v10 = (*(*(sub_1000094DC(&qword_10009AF88, &unk_10007F7B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v15 = &v9 - v10;
  v11 = (*(*(type metadata accessor for Snapshot() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v13 = &v9 - v11;
  v17 = type metadata accessor for MailEntry();
  v12 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v27);
  v28 = &v9 - v12;
  v32 = &v9 - v12;
  v31 = v4;
  v30 = v5;
  v29 = v6;
  sub_10001E2CC(v4, v7);
  sub_10001EB30(v13, v28);
  v26 = sub_10007D768();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  (*(v23 + 16))(v15, v25);
  (*(v23 + 56))(v15, 0, 1, v26);
  sub_10001ECEC(v15, &v28[*(v17 + 20)]);
  (*(v19 + 16))(v16, v22, v21);
  (*(v19 + 32))(&v28[*(v17 + 24)], v16, v21);
  sub_10001EE14(v28, v18);
  (*(v19 + 8))(v22, v21);
  (*(v23 + 8))(v25, v26);
  sub_10001F234(v27);
  return sub_10001F380(v28);
}

__n128 sub_10001EB30(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v8 = *(type metadata accessor for Mailbox() + 28);
  v10 = sub_10007CD98();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v2 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy((a2 + v8), (a1 + v8), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  v3 = type metadata accessor for Snapshot();
  v4 = (a2 + *(v3 + 20));
  v5 = (a1 + *(v3 + 20));
  result = *v5;
  *v4 = *v5;
  v4[1].n128_u16[0] = v5[1].n128_u16[0];
  return result;
}

void *sub_10001ECEC(const void *a1, void *a2)
{
  v6 = sub_10007D768();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_10001EE14(void *a1, void *a2)
{
  *a2 = *a1;
  v23 = a1[1];

  a2[1] = v23;
  v26 = a1[2];

  a2[2] = v26;
  if (a1[4] > 5uLL)
  {
    a2[3] = a1[3];
    v22 = a1[4];

    a2[4] = v22;
  }

  else
  {
    *(a2 + 3) = *(a1 + 3);
  }

  v2 = type metadata accessor for Mailbox();
  v18 = a2 + *(v2 + 28);
  v19 = a1 + *(v2 + 28);
  v20 = sub_10007CD98();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1))
  {
    v3 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy(v18, v19, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v21 + 16))(v18, v19, v20);
    (*(v21 + 56))(v18, 0, 1, v20);
  }

  v4 = type metadata accessor for Snapshot();
  v16 = a2 + *(v4 + 20);
  v17 = a1 + *(v4 + 20);
  if (*v17 < 2uLL)
  {
    *v16 = *v17;
    *(v16 + 8) = *(v17 + 8);
  }

  else
  {
    v15 = *v17;

    *v16 = v15;
    *(v16 + 1) = *(v17 + 1);
    v16[16] = v17[16];
    v16[17] = v17[17];
  }

  v10 = type metadata accessor for MailEntry();
  __dst = a2 + *(v10 + 20);
  __src = a1 + *(v10 + 20);
  v13 = sub_10007D768();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(__src, 1))
  {
    v5 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(__dst, __src, v13);
    (*(v14 + 56))(__dst, 0, 1, v13);
  }

  v9 = a2 + *(v10 + 24);
  v8 = a1 + *(v10 + 24);
  v6 = sub_10007CE28();
  (*(*(v6 - 8) + 16))(v9, v8);
  return a2;
}

void *sub_10001F234(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  if (a1[4] > 5uLL)
  {
    v3 = a1[4];
  }

  v7 = a1 + *(type metadata accessor for Mailbox() + 28);
  v8 = sub_10007CD98();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1))
  {
    (*(v9 + 8))(v7, v8);
  }

  v6 = (a1 + *(type metadata accessor for Snapshot() + 20));
  if (*v6 >= 2)
  {
    v4 = *v6;
  }

  return a1;
}

void *sub_10001F380(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  if (a1[4] > 5uLL)
  {
    v3 = a1[4];
  }

  v13 = a1 + *(type metadata accessor for Mailbox() + 28);
  v14 = sub_10007CD98();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1))
  {
    (*(v15 + 8))(v13, v14);
  }

  v12 = (a1 + *(type metadata accessor for Snapshot() + 20));
  if (*v12 >= 2)
  {
    v4 = *v12;
  }

  v8 = type metadata accessor for MailEntry();
  v9 = a1 + *(v8 + 20);
  v10 = sub_10007D768();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1))
  {
    (*(v11 + 8))(v9, v10);
  }

  v7 = a1 + *(v8 + 24);
  v5 = sub_10007CE28();
  (*(*(v5 - 8) + 8))(v7);
  return a1;
}

void *sub_10001F5C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v19 = a1;
  v22 = 0;
  v21 = 0;
  v10 = 0;
  v8 = (*(*(sub_10007CE28() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v16 = &v7 - v8;
  v9 = (*(*(sub_10007D768() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v15 = &v7 - v9;
  v11 = (*(*(type metadata accessor for Snapshot() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v14 = (&v7 - v11);
  v3 = type metadata accessor for MailEntry();
  v12 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v17 = (&v7 - v12);
  v13 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v12);
  v20 = (&v7 - v13);
  v22 = &v7 - v13;
  v21 = a1;
  sub_10001E2CC(a1, v5);
  sub_100073F44(v15);
  sub_10001E7A4();
  sub_10001E7BC(v14, v15, v16, v17);
  sub_10001F7F0(v17, v20);
  sub_10001EE14(v20, v18);
  sub_10001F234(v19);
  return sub_10001F380(v20);
}

uint64_t sub_10001F7F0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v17 = *(type metadata accessor for Mailbox() + 28);
  v19 = sub_10007CD98();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(a1 + v17, 1))
  {
    v2 = sub_1000094DC(&qword_10009B2F0, &qword_10007F530);
    memcpy((a2 + v17), (a1 + v17), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v20 + 32))();
    (*(v20 + 56))(a2 + v17, 0, 1, v19);
  }

  v3 = type metadata accessor for Snapshot();
  v4 = a2 + *(v3 + 20);
  v5 = a1 + *(v3 + 20);
  *v4 = *v5;
  *(v4 + 16) = *(v5 + 16);
  v11 = type metadata accessor for MailEntry();
  __dst = (a2 + *(v11 + 20));
  __src = (a1 + *(v11 + 20));
  v14 = sub_10007D768();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(__src, 1))
  {
    v6 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  v10 = a2 + *(v11 + 24);
  v9 = a1 + *(v11 + 24);
  v7 = sub_10007CE28();
  (*(*(v7 - 8) + 32))(v10, v9);
  return a2;
}

uint64_t sub_10001FB98(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = type metadata accessor for Snapshot();
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 20), a2, v5);
    }

    else
    {
      v4 = sub_10007CE28();
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(a1 + *(a3 + 24), a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v6;
}

uint64_t sub_10001FDB8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v10 = type metadata accessor for Snapshot();
  if (a3 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 56))(a1, a2, a2, v10);
  }

  v5 = sub_1000094DC(&qword_10009AF88, &unk_10007F7B0);
  if (a3 == *(*(v5 - 8) + 84))
  {
    return (*(*(v5 - 8) + 56))(a1 + *(a4 + 20), a2, a2, v5);
  }

  result = sub_10007CE28();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 24), a2, a2, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001FFB0()
{
  v4 = type metadata accessor for Snapshot();
  if (v0 <= 0x3F)
  {
    v4 = sub_1000200B4();
    if (v1 <= 0x3F)
    {
      v4 = sub_10007CE28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1000200B4()
{
  v4 = qword_10009AFF8;
  if (!qword_10009AFF8)
  {
    sub_10007D768();
    v3 = sub_10007DC98();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_10009AFF8);
      return v1;
    }
  }

  return v4;
}

uint64_t *sub_10002018C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v128 = a4;
  v127 = a3;
  v129 = a2;
  v138 = a1;
  ObjectType = swift_getObjectType();
  v141 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v166 = 0;
  v165 = 0;
  v155 = 0;
  v154 = 0;
  v152 = 0;
  v151 = 0;
  v149 = 0;
  v113 = 0;
  v114 = sub_10007D5D8();
  v115 = *(v114 - 8);
  v116 = v115;
  v5 = *(v115 + 64);
  __chkstk_darwin(0);
  v117 = (v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = sub_10007D628();
  v119 = *(v118 - 8);
  v120 = v119;
  v121 = *(v119 + 64);
  v7 = __chkstk_darwin(v141);
  v123 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  v122 = v49 - v123;
  __chkstk_darwin(v7);
  v124 = v49 - v123;
  v8 = *(*(type metadata accessor for Mailbox() - 8) + 64);
  __chkstk_darwin(v141);
  v125 = (v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*(sub_10007D5E8() - 8) + 64);
  __chkstk_darwin(v141);
  v126 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_10007CEF8();
  v131 = *(v130 - 8);
  v132 = v131;
  v133 = *(v131 + 64);
  __chkstk_darwin(v141);
  v134 = v49 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v12;
  v174 = v13;
  v172 = v14;
  v173 = v15;
  v171 = v4;
  v136 = sub_10001DE64();
  v137 = sub_10007DEC8();
  v135 = v16;
  v17 = sub_100072DF8(v138);
  v18 = v137;
  *v135 = v17;
  sub_100006FD4();
  v170 = v18;
  v139 = v138[3];
  v140 = v138[4];
  sub_100014D28(v139, v140);
  v169[0] = v139;
  v169[1] = v140;
  v167 = v141;
  v168 = 3;
  v142 = sub_1000191C0(v139, v140, v141, 3uLL);
  sub_1000170F8(v169);
  if ((v142 & 1) == 0)
  {
    v143 = [objc_opt_self() predicateForUnreadMessages];
    sub_1000094DC(&qword_10009B0C8, &qword_10007F5F0);
    sub_10007D9F8();
  }

  v105 = 0;
  sub_10001DE00();
  v96 = v170;

  v101 = sub_100020F5C();
  v97 = v101;
  v166 = v101;
  v108 = sub_1000094DC(&unk_10009BB40, &qword_10007F5B0);
  v100 = sub_100015EF4();
  v19 = v101;
  v98 = sub_10001D110();
  v99 = sub_10007DEC8();
  v20 = sub_10007D898("Widget.DaemonDataSource.UnreadCount", 0x23uLL, 1);
  v104 = sub_100020FE0(v100, v101, v99, 8, v20, v21);
  v102 = v104;
  v165 = v104;
  v22 = v104;
  v103 = &v111[OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_state];
  swift_beginAccess();
  v107 = *v103;
  v163 = v104;
  v109 = type metadata accessor for MailStatusDataSource.State();
  v106 = v109;
  sub_100021A14();
  sub_10007D7F8();

  v110 = v164;
  if (v164)
  {
    v95 = v110;
    v23 = v134;
    v89 = v110;
    v149 = v110;
    swift_endAccess();
    v24 = sub_100021534();
    (*(v132 + 16))(v23, v24, v130);
    v93 = sub_10007CED8();
    v90 = v93;
    v92 = sub_10007DBC8();
    v91 = v92;
    sub_1000094DC(&qword_10009A6A0, &qword_10007F230);
    v94 = sub_10007DEC8();
    if (os_log_type_enabled(v93, v92))
    {
      v25 = v113;
      v80 = sub_10007DC88();
      v76 = v80;
      v77 = sub_1000094DC(&qword_10009A6B0, &unk_10007F5E0);
      v78 = 0;
      v81 = sub_10000742C(0);
      v79 = v81;
      v82 = sub_10000742C(v78);
      v147 = v80;
      v146 = v81;
      v145 = v82;
      v83 = 0;
      v84 = &v147;
      sub_100007480(0, &v147);
      sub_100007480(v83, v84);
      v144 = v94;
      v85 = v49;
      __chkstk_darwin(v49);
      v86 = &v49[-6];
      v49[-4] = v26;
      v49[-3] = &v146;
      v49[-2] = &v145;
      v87 = sub_1000094DC(&qword_10009BB70, &qword_10007EE20);
      sub_1000097D8();
      sub_10007D948();
      v88 = v25;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v90, v91, "Query in progress. Appending completion handler", v76, 2u);
        v74 = 0;
        sub_1000074E0(v79);
        sub_1000074E0(v82);
        sub_10007DC68();

        v75 = v88;
      }
    }

    else
    {

      v75 = v113;
    }

    v72 = v75;

    (*(v132 + 8))(v134, v130);

    v27 = swift_allocObject();
    v28 = v128;
    *(v27 + 16) = v127;
    *(v27 + 24) = v28;
    v148[3] = sub_100023B50;
    v148[4] = v27;
    v71 = v148;
    swift_beginAccess();
    sub_1000094DC(&unk_10009B0B8, &qword_10007F5D8);
    sub_10007D9F8();
    swift_endAccess();

    v73 = v72;
  }

  else
  {
    swift_endAccess();
    v63 = 0;
    sub_10007D658();
    v52 = &unk_100092D50;
    v51 = 24;
    v55 = 7;
    v50 = swift_allocObject();
    v49[1] = v50 + 16;
    v29 = v111;
    swift_unknownObjectWeakInit();

    v30 = v102;
    v54 = 40;
    v31 = swift_allocObject();
    v32 = ObjectType;
    v33 = v102;
    v31[2] = v50;
    v31[3] = v33;
    v31[4] = v32;
    v161 = sub_100022700;
    v162 = v31;
    aBlock = _NSConcreteStackBlock;
    v157 = 1107296256;
    v158 = 0;
    v159 = sub_10000AAE4;
    v160 = &unk_100092D90;
    v49[2] = _Block_copy(&aBlock);
    sub_100006990();
    v70 = sub_10007D638();

    v155 = v70;
    sub_100022774();
    v56 = [objc_opt_self() mainThreadScheduler];
    v57 = swift_allocObject();
    v53 = v57 + 16;
    v34 = v111;
    swift_unknownObjectWeakInit();

    v35 = v102;
    v36 = swift_allocObject();
    v37 = ObjectType;
    v38 = v102;
    v39 = v63;
    v40 = v36;
    v41 = v56;
    v40[2] = v57;
    v40[3] = v38;
    v40[4] = v37;
    v69 = sub_100023A4C(v41, v39, sub_100023228, v40, 0.5);

    v154 = v69;
    v42 = v102;
    v43 = v69;
    v153[4] = v69;
    v153[3] = v102;
    v61 = 33;
    v58 = v153;
    swift_beginAccess();
    sub_1000094DC(&qword_10009B090, &unk_10007F5B8);
    sub_10007D808();
    swift_endAccess();
    v60 = *&v111[OBJC_IVAR____TtC19MailWidgetExtension20MailStatusDataSource_messageRepository];
    v44 = v60;
    sub_100023AAC();
    sub_10000DFBC(v138, v125);
    v59 = sub_100014A74(v125);
    v45 = v111;
    v68 = [v60 startCountingQuery:v102 includingServerCountsForMailboxScope:v59 withObserver:v111];
    swift_unknownObjectRelease();

    v152 = v68;
    swift_unknownObjectRetain();

    v67 = sub_100021264(v68, v70, v127, v128);
    v151 = v67;
    v46 = v102;

    v150[4] = v67;
    v150[3] = v102;
    v62 = v150;
    swift_beginAccess();
    sub_1000094DC(&qword_10009B0B0, &unk_10007F5C8);
    sub_10007D808();
    swift_endAccess();
    sub_100009744();
    v66 = sub_10007DC08();
    sub_10007D618();
    v47 = v116;
    *v117 = v129;
    (*(v47 + 104))();
    sub_10007D668();
    (*(v116 + 8))(v117, v114);
    v65 = *(v120 + 8);
    v64 = v120 + 8;
    v65(v122, v118);
    sub_10007DBF8();
    v65(v124, v118);

    swift_unknownObjectRelease();

    v73 = v113;
  }

  return sub_10000A480(&v170);
}