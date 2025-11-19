uint64_t sub_8E570@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X7>, uint64_t a7@<X8>, uint64_t *a8, uint64_t a9, uint64_t (*a10)(uint64_t), void (*a11)(uint64_t, id), uint64_t a12, uint64_t a13, uint64_t *a14, void **a15, char *a16)
{
  v222 = a5;
  v228 = a4;
  v223 = a3;
  v231 = a7;
  v225 = sub_2CC760();
  v226 = *(v225 - 8);
  v19 = *(v226 + 64);
  v20 = __chkstk_darwin(v225);
  v221 = &v207 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v224 = &v207 - v22;
  v23 = sub_2CE000();
  v24 = *(v23 - 8);
  v232 = v23;
  v233 = v24;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v229 = &v207 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v227 = &v207 - v29;
  v30 = __chkstk_darwin(v28);
  v230 = &v207 - v31;
  v32 = __chkstk_darwin(v30);
  v219 = &v207 - v33;
  v34 = __chkstk_darwin(v32);
  v218 = &v207 - v35;
  v36 = __chkstk_darwin(v34);
  v220 = &v207 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v207 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v207 - v42;
  __chkstk_darwin(v41);
  v45 = &v207 - v44;
  v46 = sub_334A0(0, a6, a8);
  v238 = v46;
  v239 = a9;
  *&v237 = a2;
  sub_35E0(&v237, v46);
  v47 = a2;
  v48 = &off_34B000;
  if (!sub_2CC120())
  {
    v217 = v46;
    sub_306C(&v237);
    v60 = a10(a1);
    v61 = a1;
    v62 = v232;
    if ((v60 & 1) == 0)
    {
      goto LABEL_24;
    }

    v216 = v47;
    v63 = v228[4];
    sub_35E0(v228, v228[3]);
    v48 = &off_34B000;
    v47 = v216;
    if ((sub_2CBBC0() & 1) == 0)
    {
      v64 = v228[4];
      sub_35E0(v228, v228[3]);
      v48 = &off_34B000;
      v47 = v216;
      if ((sub_2CBBB0() & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    objc_opt_self();
    v65 = swift_dynamicCastObjCClass();
    if (!v65)
    {
      goto LABEL_24;
    }

    v66 = v65;
    v67 = sub_2CC8E0();
    v68 = v47;
    v215 = v67;
    v69 = sub_2CC8D0();
    if (!v69)
    {

LABEL_23:
      v48 = &off_34B000;
LABEL_24:
      if (v48[491] != -1)
      {
        swift_once();
      }

      v99 = sub_3ED0(v62, static Logger.default);
      swift_beginAccess();
      v100 = v233;
      v101 = v230;
      v226 = *(v233 + 16);
      (v226)(v230, v99, v62);
      v102 = v47;
      v103 = sub_2CDFE0();
      v104 = sub_2CE690();

      v105 = os_log_type_enabled(v103, v104);
      v228 = v102;
      if (v105)
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v225 = v99;
        v108 = v107;
        *&v235 = v107;
        *v106 = 136315138;
        v109 = v102;
        v110 = [v109 description];
        v111 = sub_2CE270();
        v113 = v112;

        v114 = v111;
        v62 = v232;
        v115 = v233;
        v116 = sub_3F08(v114, v113, &v235);

        *(v106 + 4) = v116;
        _os_log_impl(&dword_0, v103, v104, "CommonMedia#makeSiriKitIntentHandler for intent: %s", v106, 0xCu);
        sub_306C(v108);
        v99 = v225;

        v117 = *(v115 + 8);
        v117(v230, v62);
      }

      else
      {

        v118 = v101;
        v117 = *(v100 + 8);
        v117(v118, v62);
      }

      if ((sub_8FD94() & 1) == 0)
      {
        (v226)(v229, v99, v62);
        v129 = v228;

        v130 = sub_2CDFE0();
        v131 = sub_2CE670();

        if (os_log_type_enabled(v130, v131))
        {
          v232 = v117;
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          *v132 = 138412546;
          sub_2CCF90();
          if (v134)
          {
            v135 = sub_2CE2F0();
            v137 = v136;

            sub_10C40();
            swift_allocError();
            *v138 = v135;
            v138[1] = v137;
            v139 = _swift_stdlib_bridgeErrorToNSError();
            v140 = v139;
          }

          else
          {
            v139 = 0;
            v140 = 0;
          }

          *(v132 + 4) = v139;
          *v133 = v140;
          *(v132 + 12) = 2112;
          v150 = [v129 launchId];
          if (v150)
          {
            v151 = v150;
            v152 = sub_2CE270();
            v154 = v153;

            sub_10C40();
            swift_allocError();
            *v155 = v152;
            v155[1] = v154;
            v150 = _swift_stdlib_bridgeErrorToNSError();
            v156 = v150;
          }

          else
          {
            v156 = 0;
          }

          *(v132 + 14) = v150;
          v133[1] = v156;
          _os_log_impl(&dword_0, v130, v131, "CommonMedia#makeSiriKitIntentHandler not for 1p music or podcasts (or radio on watch). Bundle: %@, intent launchId: %@", v132, 0x16u);
          sub_20410(&unk_34FC00, &unk_2D0150);
          swift_arrayDestroy();

          v117 = v232;
        }

        v117(v229, v62);
        v146 = sub_2C9880();
        v147 = *(*(v146 - 8) + 56);
        v148 = v231;
        v149 = 1;
        return v147(v148, v149, 1, v146);
      }

      v230 = a16;
      v119 = v227;
      (v226)(v227, v99, v62);
      v120 = sub_2CDFE0();
      v121 = sub_2CE670();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = v117;
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *&v235 = v124;
        *v123 = 136315138;
        if (*a14 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v125 = *a15;
        ObjectType = swift_getObjectType();
        sub_20410(&unk_34FC10, &qword_2D1EE8);
        v126 = sub_2CE2A0();
        v128 = sub_3F08(v126, v127, &v235);

        *(v123 + 4) = v128;
        _os_log_impl(&dword_0, v120, v121, "CommonMedia#makeSiriKitIntentHandler IS for 1p music or podcasts, returning embedded handler: %s", v123, 0xCu);
        sub_306C(v124);

        v122(v227, v232);
      }

      else
      {

        v117(v119, v62);
      }

      v141 = *a14;

      if (v141 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v142 = *a15;
      v143 = v228;
      v144 = v142;
      v145 = v231;
      sub_2C9870();
      v146 = sub_2C9880();
      v147 = *(*(v146 - 8) + 56);
      v148 = v145;
LABEL_41:
      v149 = 0;
      return v147(v148, v149, 1, v146);
    }

    v70 = v69;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v212 = v66;
    v214 = v61;
    v71 = sub_3ED0(v62, static Logger.default);
    swift_beginAccess();
    v72 = v233;
    v73 = *(v233 + 16);
    v211 = v71;
    v210 = v233 + 16;
    v209 = v73;
    v73(v43, v71, v62);
    v74 = v68;

    v75 = sub_2CDFE0();
    v76 = sub_2CE670();
    v213 = v74;

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      *&v237 = v208;
      *v77 = 136315394;
      *&v235 = v70;
      sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext);
      v78 = sub_2CEE70();
      v80 = v70;
      v81 = sub_3F08(v78, v79, &v237);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2080;
      v82 = [v212 debugDescription];
      v83 = sub_2CE270();
      v85 = v84;

      v86 = v83;
      v70 = v80;
      v87 = sub_3F08(v86, v85, &v237);

      *(v77 + 14) = v87;
      _os_log_impl(&dword_0, v75, v76, "CommonMedia#makeSiriKitIntentHandler Handling AirPlay Route setup for 3p app on iOS. Context: %s Intent: %s", v77, 0x16u);
      swift_arrayDestroy();

      v88 = v233;
    }

    else
    {

      v88 = v72;
    }

    v89 = *(v88 + 8);
    v89(v43, v62);
    v90 = v225;
    v91 = v224;
    sub_2CC8B0();
    v92 = (*(v226 + 88))(v91, v90);
    if (v92 == enum case for AirPlayRouteSetupState.none(_:))
    {
      v209(v40, v211, v62);
      v93 = sub_2CDFE0();
      v94 = sub_2CE670();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_0, v93, v94, "CommonMedia#makeSiriKitIntentHandler Suppressing common WHA routes", v95, 2u);
        v90 = v225;
      }

      v89(v40, v62);
      sub_2CE700();
      (*(v226 + 104))(v221, enum case for AirPlayRouteSetupState.suppressedCommonRouteSetup(_:), v90);
      sub_2CC8C0();
      v96 = v223;
      v97 = v223[4];
      sub_35E0(v223, v223[3]);
      sub_EEAC(v96, &v237);
      sub_EEAC(v228, &v235);
      sub_EEAC(v222, v234);
      v98 = swift_allocObject();
      sub_F338(&v237, v98 + 16);
      sub_F338(&v235, v98 + 56);
      sub_F338(v234, v98 + 96);
      sub_2CC660();

LABEL_22:
      v47 = v216;
      goto LABEL_23;
    }

    if (v92 == enum case for AirPlayRouteSetupState.startedDeviceSearch(_:))
    {
      v157 = v223;
      v158 = v223[4];
      sub_35E0(v223, v223[3]);
      sub_2CC690();
      v159 = v157[4];
      sub_35E0(v157, v157[3]);
      sub_2CC670();
    }

    else
    {
      if (v92 == enum case for AirPlayRouteSetupState.startedDeviceSearchWithRouteSetup(_:))
      {
        v160 = v223;
        v161 = v223[4];
        sub_35E0(v223, v223[3]);
        sub_2CC690();
        v162 = v160[3];
        v163 = v160[4];
        v164 = v160;
      }

      else
      {
        if (v92 != enum case for AirPlayRouteSetupState.startedRouteSetup(_:))
        {
          if (v92 != enum case for AirPlayRouteSetupState.complete(_:))
          {
            if (v92 == enum case for AirPlayRouteSetupState.error(_:))
            {
              v180 = v218;
              v209(v218, v211, v62);

              v181 = sub_2CDFE0();
              v182 = sub_2CE680();

              if (os_log_type_enabled(v181, v182))
              {
                v183 = swift_slowAlloc();
                v184 = swift_slowAlloc();
                *&v237 = v184;
                *v183 = 136315138;
                *&v235 = v70;
                sub_91C6C(&qword_34E198, 255, &type metadata accessor for AirPlayRouteSetupContext);
                v185 = sub_2CEE70();
                v187 = sub_3F08(v185, v186, &v237);

                *(v183 + 4) = v187;
                _os_log_impl(&dword_0, v181, v182, "CommonMedia#makeSiriKitIntentHandler Something went wrong setting up AirPlay routes %s. Nothing to do here, will create error dialog in makePreHandleIntentOutput or makeIntentHandledResponse", v183, 0xCu);
                sub_306C(v184);

                v188 = v218;
              }

              else
              {

                v188 = v180;
              }

              v89(v188, v62);
              v204 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

              [v204 init];
              v205 = v213;
              v206 = v231;
              sub_2C9870();

              v146 = sub_2C9880();
              v147 = *(*(v146 - 8) + 56);
              v148 = v206;
              goto LABEL_41;
            }

            v189 = v219;
            v209(v219, v211, v62);
            v190 = v213;

            v191 = sub_2CDFE0();
            v192 = sub_2CE660();

            if (os_log_type_enabled(v191, v192))
            {
              v193 = swift_slowAlloc();
              v223 = swift_slowAlloc();
              *&v237 = v223;
              *v193 = 136315394;
              sub_2CC8B0();
              v194 = sub_2CE2A0();
              v196 = sub_3F08(v194, v195, &v237);
              v228 = v70;
              v197 = v196;

              *(v193 + 4) = v197;
              *(v193 + 12) = 2080;
              v198 = [v190 debugDescription];
              v199 = sub_2CE270();
              v201 = v200;

              v202 = sub_3F08(v199, v201, &v237);

              *(v193 + 14) = v202;
              _os_log_impl(&dword_0, v191, v192, "CommonMedia#makeSiriKitIntentHandler Unexpected state of AirPlay route setup: %s, intent: %s", v193, 0x16u);
              swift_arrayDestroy();
              v90 = v225;

              v203 = v219;
            }

            else
            {

              v203 = v189;
            }

            v89(v203, v62);
            v47 = v216;
            (*(v226 + 8))(v224, v90);
            goto LABEL_23;
          }

          v167 = v220;
          v209(v220, v211, v62);
          v168 = v213;
          v169 = sub_2CDFE0();
          v170 = sub_2CE660();

          if (os_log_type_enabled(v169, v170))
          {
            v171 = swift_slowAlloc();
            v172 = swift_slowAlloc();
            *&v237 = v172;
            *v171 = 136315138;
            v173 = [v168 debugDescription];
            v174 = sub_2CE270();
            v228 = v70;
            v175 = v174;
            v177 = v176;

            v178 = sub_3F08(v175, v177, &v237);

            *(v171 + 4) = v178;
            _os_log_impl(&dword_0, v169, v170, "CommonMedia#makeSiriKitIntentHandler AirPlay route setup is complete, no need to wait before executing Handle, intent: %s", v171, 0xCu);
            sub_306C(v172);

            v179 = v220;
          }

          else
          {

            v179 = v167;
          }

          v89(v179, v62);
          goto LABEL_22;
        }

        v164 = v223;
        v162 = v223[3];
        v165 = v223[4];
      }

      sub_35E0(v164, v162);
      sub_2CC6A0();
    }

    v166 = v213;
    a11(v214, v213);
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v49 = v232;
  v50 = sub_3ED0(v232, static Logger.default);
  swift_beginAccess();
  v51 = v233;
  (*(v233 + 16))(v45, v50, v49);
  v52 = sub_2CDFE0();
  v53 = sub_2CE690();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "CommonMedia#makeSiriKitIntentHandler User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v54, 2u);
  }

  (*(v51 + 8))(v45, v49);
  v55 = objc_allocWithZone(type metadata accessor for DialogProducingIntentHandler());

  [v55 init];
  v56 = v47;
  v57 = v231;
  sub_2C9870();
  v58 = sub_2C9880();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  return sub_306C(&v237);
}

uint64_t sub_8FD94()
{
  v0 = sub_2CCF90();
  v2 = v1;
  v3 = sub_2CBE10();
  if (v2)
  {
    if (v0 == v3 && v2 == v4)
    {
      goto LABEL_16;
    }

    v5 = sub_2CEEA0();

    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v6 = sub_2CCF90();
  v8 = v7;
  v9 = sub_2CBE30();
  if (!v8)
  {

    goto LABEL_13;
  }

  if (v6 == v9 && v8 == v10)
  {
    goto LABEL_16;
  }

  v11 = sub_2CEEA0();

  if ((v11 & 1) == 0)
  {
LABEL_13:
    v13 = sub_2CCF90();
    v15 = v14;
    v16 = sub_2CBDD0();
    if (!v15)
    {
      v12 = 0;
      goto LABEL_18;
    }

    if (v13 != v16 || v15 != v17)
    {
      v12 = sub_2CEEA0();
      goto LABEL_17;
    }

LABEL_16:
    v12 = 1;
LABEL_17:

LABEL_18:

    return v12 & 1;
  }

LABEL_11:
  v12 = 1;
  return v12 & 1;
}

unint64_t sub_8FF78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E190, &unk_2D1ED8);
    v3 = sub_2CEDE0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_4F538(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_90074(uint64_t a1)
{
  v2 = sub_20410(&qword_34E130, &qword_2D1E78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_20410(&qword_34E138, &qword_2D1E80);
    v8 = sub_2CEDE0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_F3F4(v10, v6, &qword_34E130, &qword_2D1E78);
      result = sub_4F660(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2CD540();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_9025C(uint64_t a1)
{
  v2 = sub_20410(&qword_34E140, &qword_2D1E88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_20410(&qword_34E148, &qword_2D1E90);
    v8 = sub_2CEDE0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_F3F4(v10, v6, &qword_34E140, &qword_2D1E88);
      result = sub_4F734(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2CD4B0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_90444(uint64_t a1)
{
  v2 = sub_20410(&qword_34E150, &qword_2D1E98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_20410(&qword_34E158, &qword_2D1EA0);
    v8 = sub_2CEDE0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_F3F4(v10, v6, &qword_34E150, &qword_2D1E98);
      result = sub_4F808(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2CD4D0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_9062C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E180, &qword_2D7FE0);
    v3 = sub_2CEDE0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_4F538(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_90728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E188, &qword_2D1ED0);
    v3 = sub_2CEDE0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_4F538(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_9082C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E1B0, &qword_2D1F10);
    v3 = sub_2CEDE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_F3F4(v4, v13, &qword_34E1B8, &qword_2D1F18);
      result = sub_4F5B0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_E2DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_90968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E1A0, &qword_2D1F00);
    v3 = sub_2CEDE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_F3F4(v4, &v13, &qword_34E1A8, &qword_2D1F08);
      v5 = v13;
      v6 = v14;
      result = sub_4F538(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_420A4(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_90A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20410(&qword_34E178, &unk_2D1EC0);
    v3 = sub_2CEDE0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_4F538(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_90BB0(uint64_t a1)
{
  v2 = sub_20410(&qword_34E160, &qword_2D1EA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_20410(&qword_34E168, &qword_2D1EB0);
    v8 = sub_2CEDE0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_F3F4(v10, v6, &qword_34E160, &qword_2D1EA8);
      result = sub_4F9B4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2CB0A0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_90DA8()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);

  return _swift_deallocObject(v0, 136);
}

uint64_t sub_90E20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v132 = a5;
  v133 = a6;
  v126 = a4;
  v137 = a1;
  v8 = sub_2C9B80();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v125 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CA630();
  v130 = *(v11 - 8);
  v131 = v11;
  v12 = *(v130 + 64);
  v13 = __chkstk_darwin(v11);
  v127 = v14;
  v128 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v129 = &v105 - v15;
  v112 = sub_2CB260();
  v111 = *(v112 - 8);
  v16 = *(v111 + 64);
  __chkstk_darwin(v112);
  v110 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v123 = *(v113 - 8);
  v18 = *(v123 + 64);
  v19 = __chkstk_darwin(v113);
  v136 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v20;
  __chkstk_darwin(v19);
  v22 = &v105 - v21;
  v23 = sub_2CE000();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = __chkstk_darwin(v23);
  v135 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v105 - v28;
  v30 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v120 = *(v30 - 8);
  v31 = *(v120 + 64);
  v32 = __chkstk_darwin(v30);
  v122 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v114 = &v105 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v105 - v37;
  v121 = v39;
  __chkstk_darwin(v36);
  v41 = &v105 - v40;
  v42 = sub_2CA130();
  v43 = *(v42 - 8);
  v44 = *(v43 + 16);
  v45 = a2;
  v46 = v41;
  v109 = v42;
  v44(v41, v45);
  *&v41[*(v30 + 48)] = a3;
  v47 = qword_34BF58;
  v48 = a3;
  if (v47 != -1)
  {
    swift_once();
  }

  v49 = sub_3ED0(v23, static Logger.default);
  swift_beginAccess();
  v50 = v24[2];
  v119 = v49;
  v118 = v24 + 2;
  v117 = v50;
  v50(v29, v49, v23);
  sub_F3F4(v137, v22, &unk_3530C0, &unk_2D0A40);
  sub_F3F4(v46, v38, &qword_34C6E8, &unk_2D0FF0);
  v51 = sub_2CDFE0();
  v52 = sub_2CE670();
  v53 = os_log_type_enabled(v51, v52);
  v134 = v46;
  v116 = v23;
  v115 = v24;
  if (v53)
  {
    v107 = v52;
    v108 = v29;
    v54 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v138 = v106;
    *v54 = 136315650;
    sub_F3F4(v22, v136, &unk_3530C0, &unk_2D0A40);
    v55 = sub_2CE2A0();
    v57 = v56;
    sub_30B8(v22, &unk_3530C0, &unk_2D0A40);
    v58 = sub_3F08(v55, v57, &v138);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    v59 = v114;
    sub_F3F4(v38, v114, &qword_34C6E8, &unk_2D0FF0);
    v60 = *(v59 + *(v30 + 48));
    v61 = [v60 dialog];

    sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
    v62 = sub_2CE410();

    if (v62 >> 62)
    {
      result = sub_2CEDA0();
    }

    else
    {
      result = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
    }

    v64 = v108;
    if (result)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v65 = sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v65 = *(v62 + 32);
      }

      v66 = v65;

      v67 = [v66 fullPrint];

      v68 = sub_2CE270();
      v70 = v69;
    }

    else
    {

      v68 = 0;
      v70 = 0xE000000000000000;
    }

    (*(v43 + 8))(v59, v109);
    sub_30B8(v38, &qword_34C6E8, &unk_2D0FF0);
    v72 = sub_3F08(v68, v70, &v138);

    *(v54 + 14) = v72;
    *(v54 + 22) = 2082;
    v73 = sub_2CCCA0();
    v75 = sub_3F08(v73, v74, &v138);

    *(v54 + 24) = v75;
    _os_log_impl(&dword_0, v51, v107, "HandleIntentStrategy#handleResponse with snippet: %s, dialog: %s %{public}s", v54, 0x20u);
    swift_arrayDestroy();

    v71 = v115[1];
    v76 = v64;
    v23 = v116;
    v71(v76, v116);
    v46 = v134;
  }

  else
  {

    sub_30B8(v38, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v22, &unk_3530C0, &unk_2D0A40);
    v71 = v24[1];
    v71(v29, v23);
  }

  v77 = sub_2CB460();
  v78 = v135;
  if (v77)
  {
    v79 = v77;
    v80 = v46;
  }

  else
  {
    v80 = v46;
    sub_2CB180();
    v79 = sub_2CB170();
  }

  v117(v78, v119, v23);

  v81 = sub_2CDFE0();
  v82 = sub_2CE660();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v138 = v84;
    *v83 = 136315138;
    sub_2CB130();
    v85 = v110;
    sub_2CD3C0();

    v86 = sub_2CB200();
    v88 = v87;
    (*(v111 + 8))(v85, v112);
    v89 = sub_3F08(v86, v88, &v138);

    *(v83 + 4) = v89;
    _os_log_impl(&dword_0, v81, v82, "AddMedia+HandleIntentStrategy#handleResponse with responseMode = %s", v83, 0xCu);
    sub_306C(v84);

    v90 = v135;
    v91 = v116;
  }

  else
  {

    v90 = v78;
    v91 = v23;
  }

  v71(v90, v91);
  v92 = v123;
  v114 = v79;
  v93 = sub_2C9B20();
  __chkstk_darwin(v93);
  *(&v105 - 4) = v126;
  *(&v105 - 3) = v79;
  *(&v105 - 2) = v80;
  v94 = v129;
  sub_2CA560();
  v95 = v136;
  sub_F3F4(v137, v136, &unk_3530C0, &unk_2D0A40);
  v96 = v80;
  v97 = v122;
  sub_F3F4(v96, v122, &qword_34C6E8, &unk_2D0FF0);
  v98 = v130;
  v99 = v131;
  v100 = v128;
  (*(v130 + 16))(v128, v94, v131);
  v101 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v102 = (v124 + *(v120 + 80) + v101) & ~*(v120 + 80);
  v103 = (v121 + *(v98 + 80) + v102) & ~*(v98 + 80);
  v104 = swift_allocObject();
  sub_14A58(v95, v104 + v101, &unk_3530C0, &unk_2D0A40);
  sub_14A58(v97, v104 + v102, &qword_34C6E8, &unk_2D0FF0);
  (*(v98 + 32))(v104 + v103, v100, v99);
  sub_20410(&unk_353030, &unk_2D1450);
  sub_2CE4F0();

  (*(v98 + 8))(v94, v99);
  return sub_30B8(v134, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_91AB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&unk_3530C0, &unk_2D0A40) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_86144(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_91C6C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_91CC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_91D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB920;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_923E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB900;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_92A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB8E0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000019;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000019, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000019;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_930EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB8C0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_93770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB8A0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001BLL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001BLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001BLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_93DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB880;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ELL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001ELL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001ELL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_94478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB850;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_94AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB820;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000002ALL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000002ALL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000002ALL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_95180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB7F0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000020;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000020, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000020;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_95804(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = v5[5];
  v56 = v5[4];
  v63 = v17;
  v50 = v5[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v11;
  v21 = *(v11 + 32);
  v61 = v10;
  v21(v20 + v19, v14);
  v22 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v53;
  v22[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "DontKnowTitle");
  *(v23 + 86) = -4864;

  v48 = v23;
  LOBYTE(v47) = 2;
  v46 = 125;
  v53 = v16;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v51 = v26;
  v52 = v20;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x776F6E4B746E6F44, 0xED0000656C746954, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x776F6E4B746E6F44;
  v67._object = 0xED0000656C746954;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_95E98(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = v5[5];
  v56 = v5[4];
  v63 = v17;
  v50 = v5[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v11;
  v21 = *(v11 + 32);
  v61 = v10;
  v21(v20 + v19, v14);
  v22 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v53;
  v22[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "DontKnowAlbum");
  *(v23 + 86) = -4864;

  v48 = v23;
  LOBYTE(v47) = 2;
  v46 = 125;
  v53 = v16;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v51 = v26;
  v52 = v20;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x776F6E4B746E6F44, 0xED00006D75626C41, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x776F6E4B746E6F44;
  v67._object = 0xED00006D75626C41;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_9652C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = v5[5];
  v56 = v5[4];
  v63 = v17;
  v50 = v5[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v11;
  v21 = *(v11 + 32);
  v61 = v10;
  v21(v20 + v19, v14);
  v22 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v53;
  v22[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "DontKnowArtist");
  *(v23 + 87) = -18;

  v48 = v23;
  LOBYTE(v47) = 2;
  v46 = 125;
  v53 = v16;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v51 = v26;
  v52 = v20;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x776F6E4B746E6F44, 0xEE00747369747241, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x776F6E4B746E6F44;
  v67._object = 0xEE00747369747241;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_96BC0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = v5[5];
  v56 = v5[4];
  v63 = v17;
  v50 = v5[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v11;
  v21 = *(v11 + 32);
  v61 = v10;
  v21(v20 + v19, v14);
  v22 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v53;
  v22[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "DontKnowRadio");
  *(v23 + 86) = -4864;

  v48 = v23;
  LOBYTE(v47) = 2;
  v46 = 125;
  v53 = v16;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v51 = v26;
  v52 = v20;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x776F6E4B746E6F44, 0xED00006F69646152, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x776F6E4B746E6F44;
  v67._object = 0xED00006F69646152;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_97254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB7D0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000010;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000010, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000010;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_978D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB7B0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000016;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000016, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000016;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_97F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB790;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000016;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000016, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000016;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_985E0(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_2CE000();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  __chkstk_darwin(v4);
  v54 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = v2[5];
  v51 = v2[4];
  v15 = v2[6];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v52 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v55 = v13;
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v47 = v8;
  v20 = *(v8 + 32);
  v53 = v7;
  v20(v19 + v17, v11);
  v21 = (v19 + v18);
  *v21 = v48;
  v21[1] = a2;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v48 = v14;
  *(v22 + 32) = v14;
  *(v22 + 40) = v15;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  strcpy((v22 + 72), "NothingPlaying");
  *(v22 + 87) = -18;

  v43 = v22;
  LOBYTE(v42) = 2;
  v41 = 125;
  sub_2CDF90();

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D7C;
  *(v24 + 24) = v19;
  v45 = v24;
  v25 = qword_34BF58;
  v46 = v19;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v50;
  sub_3ED0(v50, static Logger.default);
  swift_beginAccess();
  v27 = v49;
  v28 = v54;
  (*(v49 + 16))();

  v29 = sub_2CDFE0();
  v30 = sub_2CE660();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v31 = 136315394;
    v32 = v48;
    *(v31 + 4) = sub_3F08(v48, v15, &v56);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_3F08(0x50676E6968746F4ELL, 0xEE00676E6979616CLL, &v56);
    _os_log_impl(&dword_0, v29, v30, "Evaluating CAT family:%s id:%s...", v31, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v54, v26);
  }

  else
  {

    (*(v27 + 8))(v28, v26);
    v32 = v48;
  }

  v56 = v32;
  v57 = v15;

  v60._countAndFlagsBits = 35;
  v60._object = 0xE100000000000000;
  sub_2CE350(v60);
  v61._countAndFlagsBits = 0x50676E6968746F4ELL;
  v61._object = 0xEE00676E6979616CLL;
  sub_2CE350(v61);
  v33 = v56;
  v34 = v57;
  v35 = sub_2CB460();
  if (!v35)
  {
    sub_2CB180();
    v35 = sub_2CB170();
  }

  v36 = v35;
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = sub_13D84;
  v37[4] = v45;
  v38 = sub_2CB180();
  __chkstk_darwin(v38);
  v39 = v52;
  *(&v44 - 10) = v51;
  *(&v44 - 9) = v39;
  *(&v44 - 8) = 0;
  *(&v44 - 7) = v58;
  *(&v44 - 6) = 0;
  *(&v44 - 5) = v33;
  v41 = v34;
  v42 = sub_3E010;
  v43 = v37;

  sub_2CB0F0();

  (*(v47 + 8))(v55, v53);
  return sub_48E38(v58);
}

uint64_t initializeBufferWithCopyOfBuffer for ConfirmInterruptionFlow.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_98CC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_98D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void *sub_98D6C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v4 = *(a2 + 16);
    result = _swiftEmptyArrayStorage;
    if (v4)
    {
      v12 = _swiftEmptyArrayStorage;
      sub_2CED20();
      v6 = *(sub_2CE0A0() - 8);
      v7 = (a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
      v8 = *(v6 + 72);
      do
      {
        sub_9A100(v7, &v11);
        sub_2CED00();
        v9 = v12[2];
        sub_2CED30();
        sub_2CED40();
        sub_2CED10();
        v7 += v8;
        --v4;
      }

      while (v4);
      return v12;
    }
  }

  else
  {
    v10[2] = __chkstk_darwin(a1);
    return sub_98ED0(sub_5B6EC, v10, a2);
  }

  return result;
}

void *sub_98ED0(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_2CEDA0())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v16 = _swiftEmptyArrayStorage;
    sub_2CED20();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = sub_2CECD0();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_2CED00();
      v12 = v16[2];
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void *sub_99044(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v31 = _swiftEmptyArrayStorage;
    sub_2CED20();
    v9 = a3 + 32;
    for (i = v6 - 1; ; --i)
    {
      v11 = *(v9 + 16);
      v12 = *(v9 + 48);
      v28 = *(v9 + 32);
      v29 = v12;
      v13 = *(v9 + 16);
      v27[0] = *v9;
      v27[1] = v13;
      v14 = *(v9 + 48);
      v23 = v28;
      v24 = v14;
      v30 = *(v9 + 64);
      v25 = *(v9 + 64);
      v21 = v27[0];
      v22 = v11;
      sub_333FC(v27, &v16);
      a1(&v26, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v16 = v21;
      v17 = v22;
      sub_9AA00(&v16);
      sub_2CED00();
      v15 = v31[2];
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      if (!i)
      {
        return v31;
      }

      v9 += 72;
    }

    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    sub_9AA00(&v16);

    __break(1u);
  }

  return result;
}

uint64_t sub_991B0()
{
  v0 = sub_2CC360();
  sub_9A944(v0, qword_34E3E0);
  sub_3ED0(v0, qword_34E3E0);
  return sub_2CC350();
}

void sub_991FC(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v118 = sub_2CA760();
  v117 = *(v118 - 8);
  v7 = *(v117 + 64);
  __chkstk_darwin(v118);
  v119 = (&v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = sub_2CC360();
  v130 = *(v131 - 8);
  v9 = *(v130 + 64);
  __chkstk_darwin(v131);
  v129 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_20410(&unk_3519B0, &qword_2D1230);
  v11 = *(*(v125 - 1) + 64);
  v12 = __chkstk_darwin(v125);
  v122 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v124 = &v115 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v120 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v134 = &v115 - v21;
  __chkstk_darwin(v20);
  v23 = &v115 - v22;
  v24 = *a1;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v26 = v16[2];
  v128 = v25;
  v127 = v16 + 2;
  v126 = v26;
  v26(v23, v25, v15);
  v27 = v24;
  v28 = sub_2CDFE0();
  v29 = sub_2CE670();

  LODWORD(v123) = v29;
  v30 = os_log_type_enabled(v28, v29);
  v135 = v16;
  v136 = v15;
  v132 = a3;
  v133 = v3;
  if (v30)
  {
    v121 = a2;
    v31 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v139 = v116;
    *v31 = 136315650;
    v32 = [v27 title];
    if (v32)
    {
      v33 = v32;
      v34 = sub_2CE270();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v137 = v34;
    v138 = v36;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v37 = sub_2CE2A0();
    v39 = sub_3F08(v37, v38, &v139);

    *(v31 + 4) = v39;
    *(v31 + 12) = 2080;
    v40 = [v27 artist];
    if (v40)
    {
      v41 = v40;
      v42 = sub_2CE270();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v137 = v42;
    v138 = v44;
    v45 = sub_2CE2A0();
    v47 = sub_3F08(v45, v46, &v139);

    *(v31 + 14) = v47;
    *(v31 + 22) = 2080;
    v48 = [v27 artwork];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 _uri];

      v51 = v124;
      if (v50)
      {
        v52 = v122;
        sub_2C8D60();

        v53 = 0;
      }

      else
      {
        v53 = 1;
        v52 = v122;
      }

      v55 = sub_2C8D90();
      (*(*(v55 - 8) + 56))(v52, v53, 1, v55);
      sub_7FD30(v52, v51);
    }

    else
    {
      v54 = sub_2C8D90();
      (*(*(v54 - 8) + 56))(v124, 1, 1, v54);
    }

    v56 = sub_2CE2A0();
    v58 = sub_3F08(v56, v57, &v139);

    *(v31 + 24) = v58;
    _os_log_impl(&dword_0, v28, v123, "Converting mediaItem for disambiguation. Title: %s artist: %s artwork: %s", v31, 0x20u);
    swift_arrayDestroy();

    v125 = v135[1];
    v125(v23, v136);
  }

  else
  {

    v125 = v16[1];
    v125(v23, v15);
  }

  v59 = sub_2CA520();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  sub_2CA510();
  v62 = [v27 identifier];
  if (v62)
  {
    v63 = v62;
    sub_2CE270();
  }

  sub_2CA4F0();

  sub_2CBD50();
  sub_2CA4F0();

  sub_2CA4F0();

  v116 = sub_2CA500();
  v124 = v64;

  v65 = [v27 identifier];
  if (v65)
  {
    v66 = v65;
    v67 = sub_2CE270();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0xE000000000000000;
  }

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x64496D657469;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v67;
  *(inited + 56) = v69;

  v71 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v123 = sub_237DEC(0xD000000000000034, 0x80000000002DA910, v71);

  v72 = [v27 title];
  if (v72)
  {
    v73 = v72;
    sub_2CE270();
  }

  sub_2C99A0();
  sub_2C9970();

  v122 = sub_2C9990();

  v74 = [v27 artist];
  if (v74)
  {
    v75 = v74;
    sub_2CE270();
  }

  sub_2C9970();

  v121 = sub_2C9990();

  if (qword_34BF38 != -1)
  {
    swift_once();
  }

  v76 = v131;
  v77 = sub_3ED0(v131, qword_34E3E0);
  v78 = v130;
  v79 = v129;
  (*(v130 + 16))(v129, v77, v76);
  sub_1E93D4([v27 type]);
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v81 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CC340();

  (*(v78 + 8))(v79, v76);
  sub_2C9970();

  v82 = sub_2C9990();

  v83 = [v27 artwork];
  if (v83)
  {
    v84 = v83;
    v85 = v136;
    v126(v134, v128, v136);
    v86 = v27;
    v87 = sub_2CDFE0();
    v88 = sub_2CE670();

    v89 = os_log_type_enabled(v87, v88);
    v90 = v132;
    if (v89)
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v91 = 138412290;
      *(v91 + 4) = v86;
      *v92 = v86;
      v93 = v86;
      _os_log_impl(&dword_0, v87, v88, "Successfully created disambiguation for item: %@", v91, 0xCu);
      sub_30B8(v92, &unk_34FC00, &unk_2D0150);
      v85 = v136;
    }

    v125(v134, v85);
    sub_20410(&unk_351900, &unk_2D0960);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_2D1F90;
    v95 = v121;
    *(v94 + 32) = v122;
    *(v94 + 40) = v95;
    *(v94 + 48) = v82;
    v96 = v119;
    *v119 = v84;
    (*(v117 + 104))(v96, enum case for Image.fromApp(_:), v118);
    v97 = sub_2C9930();
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    swift_allocObject();
    v100 = sub_2C9920();
  }

  else
  {
    v101 = v136;
    v126(v120, v128, v136);
    v102 = v27;
    v103 = sub_2CDFE0();
    v104 = sub_2CE670();

    v105 = os_log_type_enabled(v103, v104);
    v90 = v132;
    if (v105)
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v106 = 138412290;
      *(v106 + 4) = v102;
      *v107 = v102;
      v108 = v102;
      _os_log_impl(&dword_0, v103, v104, "Missing image for disambiguation item: %@", v106, 0xCu);
      sub_30B8(v107, &unk_34FC00, &unk_2D0150);
    }

    v125(v120, v101);
    v109 = v123;

    sub_20410(&unk_351900, &unk_2D0960);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_2D1F90;
    v111 = v121;
    *(v110 + 32) = v122;
    *(v110 + 40) = v111;
    *(v110 + 48) = v82;
    v112 = sub_2C9930();
    v113 = *(v112 + 48);
    v114 = *(v112 + 52);
    swift_allocObject();
    v100 = sub_2C9910();
  }

  *v90 = v100;
}

void sub_9A100(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v82 = a2;
  v3 = sub_2CE0A0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v80 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v70 - v8;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v70 - v16;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v83 = v15;
  v18 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v19 = v11[2];
  v78 = v18;
  v77 = v11 + 2;
  v76 = v19;
  v19(v17, v18, v10);
  v20 = v4[2];
  v79 = a1;
  v75 = v4 + 2;
  v74 = v20;
  v20(v9, a1, v3);
  v21 = sub_2CDFE0();
  v22 = sub_2CE670();
  v23 = os_log_type_enabled(v21, v22);
  v84 = v11;
  v81 = v4;
  v71 = v3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v70 = v10;
    v25 = v3;
    v26 = v24;
    v27 = swift_slowAlloc();
    v86 = v27;
    *v26 = 136315138;
    v85[0] = sub_2CE060();
    v85[1] = v28;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v29 = sub_2CE2A0();
    v30 = v4;
    v32 = v31;
    v73 = v30[1];
    v73(v9, v25);
    v33 = sub_3F08(v29, v32, &v86);

    *(v26 + 4) = v33;
    _os_log_impl(&dword_0, v21, v22, "Converting mediaDestination for disambiguation. Playlist: %s", v26, 0xCu);
    sub_306C(v27);

    v34 = v70;
    v72 = v84[1];
    v72(v17, v70);
  }

  else
  {

    v73 = v4[1];
    v73(v9, v3);
    v72 = v11[1];
    v72(v17, v10);
    v34 = v10;
  }

  v35 = sub_2CA520();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_2CA510();
  sub_2CBD50();
  sub_2CA4F0();

  sub_2CA4F0();

  sub_2CA500();
  v70 = v38;

  v39 = v79;
  v40 = sub_2CE060();
  if (v41)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0;
  }

  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x64496D657469;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v42;
  *(inited + 56) = v43;

  v45 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v46 = sub_237DEC(0xD000000000000034, 0x80000000002DA910, v45);

  sub_2CE060();
  sub_2C99A0();
  sub_2C9970();

  v47 = sub_2C9990();

  v48 = v83;
  v76(v83, v78, v34);
  v49 = v80;
  v50 = v71;
  v74(v80, v39, v71);
  v51 = sub_2CDFE0();
  v52 = sub_2CE670();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v79 = v46;
    v55 = v54;
    v85[0] = v54;
    *v53 = 136315138;
    sub_9A9A8();
    v56 = sub_2CEE70();
    v57 = v49;
    v58 = v34;
    v60 = v59;
    v73(v57, v50);
    v61 = sub_3F08(v56, v60, v85);

    *(v53 + 4) = v61;
    _os_log_impl(&dword_0, v51, v52, "Successfully created disambiguation for mediaDestination: %s", v53, 0xCu);
    sub_306C(v55);
    v46 = v79;

    v62 = v83;
    v63 = v58;
  }

  else
  {

    v73(v49, v50);
    v62 = v48;
    v63 = v34;
  }

  v72(v62, v63);
  v64 = v46;

  sub_20410(&unk_351900, &unk_2D0960);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_2D0770;
  *(v65 + 32) = v47;
  v66 = sub_2C9930();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();

  v69 = sub_2C9910();

  *v82 = v69;
}

uint64_t *sub_9A944(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_9A9A8()
{
  result = qword_34CCB8;
  if (!qword_34CCB8)
  {
    sub_2CE0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CCB8);
  }

  return result;
}

void CommonFlowStrategy.actionForInput(input:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v220 = a1;
  v216 = a2;
  v211 = *v2;
  v3 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v202 = &v179 - v5;
  v209 = sub_2CD490();
  v208 = *(v209 - 1);
  v6 = *(v208 + 64);
  v7 = __chkstk_darwin(v209);
  v197 = &v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v203 = &v179 - v10;
  __chkstk_darwin(v9);
  v206 = &v179 - v11;
  v184 = sub_2CD500();
  v183 = *(v184 - 8);
  v12 = *(v183 + 64);
  __chkstk_darwin(v184);
  v182 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_2CD4C0();
  v198 = *(v204 - 8);
  v14 = *(v198 + 64);
  __chkstk_darwin(v204);
  v185 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v16 = *(*(v195 - 8) + 64);
  v17 = __chkstk_darwin(v195);
  v187 = &v179 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v191 = &v179 - v19;
  v20 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v181 = &v179 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v188 = &v179 - v25;
  v26 = __chkstk_darwin(v24);
  v190 = &v179 - v27;
  v28 = __chkstk_darwin(v26);
  v186 = &v179 - v29;
  v30 = __chkstk_darwin(v28);
  v193 = &v179 - v31;
  v32 = __chkstk_darwin(v30);
  v194 = &v179 - v33;
  __chkstk_darwin(v32);
  v196 = &v179 - v34;
  v205 = sub_2CA810();
  v207 = *(v205 - 8);
  v35 = *(v207 + 64);
  __chkstk_darwin(v205);
  v212 = &v179 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_2CA870();
  v219 = *(v218 - 8);
  v37 = v219[8];
  v38 = __chkstk_darwin(v218);
  v210 = &v179 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = (&v179 - v40);
  v42 = sub_2CE000();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = __chkstk_darwin(v42);
  v201 = &v179 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v199 = &v179 - v48;
  v49 = __chkstk_darwin(v47);
  v51 = &v179 - v50;
  v52 = __chkstk_darwin(v49);
  v54 = &v179 - v53;
  v55 = __chkstk_darwin(v52);
  v192 = &v179 - v56;
  v57 = __chkstk_darwin(v55);
  v189 = &v179 - v58;
  v59 = __chkstk_darwin(v57);
  v180 = &v179 - v60;
  v61 = __chkstk_darwin(v59);
  v63 = &v179 - v62;
  v64 = __chkstk_darwin(v61);
  v66 = &v179 - v65;
  __chkstk_darwin(v64);
  v68 = &v179 - v67;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v69 = sub_3ED0(v42, static Logger.default);
  swift_beginAccess();
  v70 = v42;
  v71 = v43;
  v72 = *(v43 + 16);
  v213 = v69;
  v217 = v70;
  v215 = v43 + 16;
  v214 = v72;
  (v72)(v68, v69);
  v73 = sub_2CDFE0();
  v74 = sub_2CE660();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_0, v73, v74, "CommonFlowStrategy#actionForInput...", v75, 2u);
  }

  v77 = v71 + 8;
  v76 = *(v71 + 8);
  v78 = v217;
  v76(v68, v217);
  sub_2CA790();
  v79 = v219;
  v80 = v218;
  v81 = (v219[11])(v41, v218);
  if (v81 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (v79[12])(v41, v80);
    v82 = *(v41 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v83 = sub_2CA830();
    v85 = *(v211 + 80);
    v84 = *(v211 + 88);
    swift_getAssociatedTypeWitness();
    if (!swift_dynamicCastUnknownClass())
    {

      v214(v66, v213, v78);
      v105 = sub_2CDFE0();
      v106 = sub_2CE660();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_0, v105, v106, "CommonFlowStrategy#actionForInput received unexpected NLv3IntentPlusServerConversion parse, ignoring", v107, 2u);
        v78 = v217;
      }

      v76(v66, v78);
      sub_2C9CF0();

      v108 = sub_2CAFE0();
      (*(*(v108 - 8) + 8))(v41, v108);
      return;
    }

    v86 = sub_2CAFE0();
    (*(*(v86 - 8) + 8))(v41, v86);
    v87 = v209;
    v80 = v218;
    goto LABEL_8;
  }

  if (v81 == enum case for Parse.directInvocation(_:))
  {
    (v79[12])(v41, v80);
    v94 = v207;
    v95 = v80;
    v96 = v212;
    v97 = v205;
    (*(v207 + 32))(v212, v41, v205);
    sub_238E4C(v96, &v225);
    if (v228 != 4)
    {
      if (v228 != 255)
      {
        sub_30B8(&v225, &qword_34CCB0, &qword_2D5710);
      }

      v214(v54, v213, v78);
      v98 = sub_2CDFE0();
      v99 = sub_2CE680();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_0, v98, v99, "CommonFlowStrategy#actionForInput received unsupported directinvocation parse", v100, 2u);
      }

      v76(v54, v78);
      sub_2C9CF0();
LABEL_19:
      (*(v94 + 8))(v212, v97);
      return;
    }

    v120 = v225;

    v121 = v210;
    sub_2CA790();
    v122 = sub_D2F98(v121, &v221);
    (v79[1])(v121, v95, v122);
    if (!v222)
    {
      sub_30B8(&v221, &qword_34CF98, &unk_2D1A40);
      goto LABEL_52;
    }

    v123 = v120;
    v220 = v77;
    sub_420A4(&v221, &v223);
    sub_35E0(&v223, v224);
    v124 = v196;
    sub_2CD840();
    v125 = v198;
    v126 = *(v198 + 48);
    v127 = v126(v124, 1, v204);
    sub_30B8(v124, &qword_34D6B8, &qword_2D15B0);
    if (v127 == 1)
    {
LABEL_87:
      sub_2C9CE0();

      (*(v207 + 8))(v212, v97);
      v150 = &v223;
      goto LABEL_60;
    }

    v219 = v120;
    sub_35E0(&v223, v224);
    v128 = v194;
    sub_2CD840();
    v129 = *(v125 + 104);
    v130 = v193;
    v218 = v125 + 104;
    v210 = v129;
    (v129)(v193, enum case for CommonAudio.Verb.play(_:), v204);
    v131 = *(v125 + 56);
    v211 = v125 + 56;
    v209 = v131;
    (v131)(v130, 0, 1, v204);
    v132 = *(v195 + 48);
    v133 = v191;
    sub_F3F4(v128, v191, &qword_34D6B8, &qword_2D15B0);
    v134 = v204;
    sub_F3F4(v130, v133 + v132, &qword_34D6B8, &qword_2D15B0);
    if (v126(v133, 1, v134) == 1)
    {
      sub_30B8(v130, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v128, &qword_34D6B8, &qword_2D15B0);
      if (v126(v133 + v132, 1, v204) == 1)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v155 = v186;
      sub_F3F4(v133, v186, &qword_34D6B8, &qword_2D15B0);
      if (v126(v133 + v132, 1, v134) != 1)
      {
        v169 = v198;
        v170 = v133 + v132;
        v171 = v185;
        (*(v198 + 32))(v185, v170, v134);
        sub_A3100(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
        v172 = sub_2CE250();
        v173 = *(v169 + 8);
        v173(v171, v204);
        sub_30B8(v193, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v194, &qword_34D6B8, &qword_2D15B0);
        v173(v155, v204);
        v97 = v205;
        sub_30B8(v133, &qword_34D6B8, &qword_2D15B0);
        v123 = v219;
        if (v172)
        {
          goto LABEL_87;
        }

LABEL_72:
        sub_35E0(&v223, v224);
        v156 = v190;
        sub_2CD840();
        v157 = v188;
        (v210)(v188, enum case for CommonAudio.Verb.start(_:), v204);
        (v209)(v157, 0, 1, v204);
        v158 = *(v195 + 48);
        v133 = v187;
        sub_F3F4(v156, v187, &qword_34D6B8, &qword_2D15B0);
        v159 = v204;
        sub_F3F4(v157, v133 + v158, &qword_34D6B8, &qword_2D15B0);
        if (v126(v133, 1, v159) == 1)
        {
          sub_30B8(v157, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v156, &qword_34D6B8, &qword_2D15B0);
          if (v126(v133 + v158, 1, v159) == 1)
          {
LABEL_74:
            sub_30B8(v133, &qword_34D6B8, &qword_2D15B0);
            v123 = v219;
            goto LABEL_87;
          }
        }

        else
        {
          v160 = v181;
          sub_F3F4(v133, v181, &qword_34D6B8, &qword_2D15B0);
          if (v126(v133 + v158, 1, v159) != 1)
          {
            v174 = v198;
            v175 = v133 + v158;
            v176 = v185;
            (*(v198 + 32))(v185, v175, v159);
            sub_A3100(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
            v177 = sub_2CE250();
            v178 = *(v174 + 8);
            v178(v176, v159);
            sub_30B8(v188, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v190, &qword_34D6B8, &qword_2D15B0);
            v178(v160, v159);
            sub_30B8(v133, &qword_34D6B8, &qword_2D15B0);
            v123 = v219;
            if (v177)
            {
              goto LABEL_87;
            }

            goto LABEL_78;
          }

          sub_30B8(v157, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v190, &qword_34D6B8, &qword_2D15B0);
          (*(v198 + 8))(v160, v159);
        }

        sub_30B8(v133, &qword_34D6B0, &unk_2D4FC0);
        v123 = v219;
LABEL_78:
        sub_35E0(&v223, v224);
        v161 = v183;
        v162 = v182;
        v163 = v184;
        (*(v183 + 104))(v182, enum case for CommonAudio.Attribute.playNext(_:), v184);
        v164 = sub_2CD910();
        (*(v161 + 8))(v162, v163);
        if (v164)
        {
          goto LABEL_87;
        }

        sub_306C(&v223);
        v78 = v217;
        v94 = v207;
        v120 = v123;
LABEL_52:
        v140 = v192;
        v214(v192, v213, v78);
        v141 = sub_2CDFE0();
        v142 = sub_2CE680();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&dword_0, v141, v142, "PlayMediaFlowStrategy#actionForInput received unsupported pommesResponse", v143, 2u);
        }

        v76(v140, v78);
        sub_2C9CF0();

        goto LABEL_19;
      }

      sub_30B8(v193, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v194, &qword_34D6B8, &qword_2D15B0);
      (*(v198 + 8))(v155, v204);
    }

    sub_30B8(v133, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_72;
  }

  if (v81 == enum case for Parse.pommesResponse(_:))
  {
    (v79[12])(v41, v80);
    v101 = *v41;
    v214(v63, v213, v78);
    v102 = sub_2CDFE0();
    v103 = sub_2CE660();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_0, v102, v103, "CommonFlowStrategy#actionForInput received pommesResponse parse", v104, 2u);
      v78 = v217;
    }

    v76(v63, v78);
    (*(*v200 + 280))(v101, v220);

    return;
  }

  if (v81 != enum case for Parse.uso(_:))
  {
    v214(v51, v213, v78);
    v135 = sub_2CDFE0();
    v136 = sub_2CE680();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&dword_0, v135, v136, "CommonFlowStrategy#actionForInput received unsupported parse", v137, 2u);
    }

    v76(v51, v78);
    sub_2C9CF0();
    (v219[1])(v41, v218);
    return;
  }

  v113 = v77;
  v114 = v210;
  sub_2CA790();
  v115 = sub_2CA7C0();
  v116 = v219[1];
  v116(v114, v80);
  if (!v115)
  {
    v151 = v189;
    v214(v189, v213, v78);
    v152 = sub_2CDFE0();
    v153 = sub_2CE680();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&dword_0, v152, v153, "CommonFlowStrategy#actionForInput failed to get uso task from parse", v154, 2u);
    }

    v76(v151, v78);
    sub_2C9CF0();
    goto LABEL_83;
  }

  sub_2CAD10();
  if (!v226)
  {
    sub_30B8(&v225, &qword_34CEA0, &qword_2D0FC0);
    v87 = v209;
LABEL_65:
    if (sub_43C3C() & 1) != 0 || (sub_43638())
    {
      goto LABEL_67;
    }

    v165 = v180;
    v214(v180, v213, v78);
    v166 = sub_2CDFE0();
    v167 = sub_2CE680();
    if (os_log_type_enabled(v166, v167))
    {
      v168 = swift_slowAlloc();
      *v168 = 0;
      _os_log_impl(&dword_0, v166, v167, "CommonFlowStrategy#actionForInput uso parse is not a shuffle media item or play on shuffle, ignoring", v168, 2u);
      v78 = v217;
    }

    v76(v165, v78);
    sub_2C9CF0();

LABEL_83:
    v116(v41, v218);
    return;
  }

  sub_2CAEC0();
  v117 = swift_dynamicCast();
  v87 = v209;
  if ((v117 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_67:

  v116(v41, v80);
  v77 = v113;
LABEL_8:
  v88 = v210;
  sub_2CA790();
  v89 = sub_D2F98(v88, &v223);
  (v219[1])(v88, v80, v89);
  if (v224)
  {
    sub_420A4(&v223, &v225);
    v90 = v227;
    sub_35E0(&v225, v226);
    v91 = *(v90 + 8);
    v92 = v202;
    sub_2CD480();
    v93 = v208;
    if ((*(v208 + 48))(v92, 1, v87) == 1)
    {
      sub_30B8(v92, &qword_34CCE8, &unk_2D0E20);
LABEL_11:
      sub_2C9CE0();
LABEL_59:
      v150 = &v225;
LABEL_60:
      sub_306C(v150);
      return;
    }

    v220 = v77;
    (*(v93 + 32))(v206, v92, v87);
    v118 = *(v93 + 104);
    v118(v203, enum case for CommonAudio.Confirmation.cancel(_:), v87);
    sub_A3100(&qword_34CCF8, &type metadata accessor for CommonAudio.Confirmation);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v223 == v221 && *(&v223 + 1) == *(&v221 + 1))
    {
      v119 = 1;
    }

    else
    {
      v119 = sub_2CEEA0();
    }

    v138 = *(v208 + 8);
    v138(v203, v87);

    if ((v119 & 1) == 0)
    {
      v139 = v197;
      v118(v197, enum case for CommonAudio.Confirmation.no(_:), v87);
      sub_2CE3E0();
      sub_2CE3E0();
      if (v223 == v221 && *(&v223 + 1) == *(&v221 + 1))
      {
        v138(v139, v87);
      }

      else
      {
        v144 = sub_2CEEA0();
        v138(v139, v87);

        if ((v144 & 1) == 0)
        {
          v138(v206, v87);
          goto LABEL_11;
        }
      }
    }

    v145 = v199;
    v146 = v217;
    v214(v199, v213, v217);
    v147 = sub_2CDFE0();
    v148 = sub_2CE690();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&dword_0, v147, v148, "CommonFlowStrategy#actionForInput found cancellation node - treating state as cancelled", v149, 2u);
    }

    v76(v145, v146);
    sub_2C9CD0();
    v138(v206, v87);
    goto LABEL_59;
  }

  sub_30B8(&v223, &qword_34CF98, &unk_2D1A40);
  v109 = v201;
  v214(v201, v213, v78);
  v110 = sub_2CDFE0();
  v111 = sub_2CE690();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_0, v110, v111, "CommonFlowStrategy#actionForInput received invalid NL intent", v112, 2u);
  }

  v76(v109, v78);
  sub_2C9CF0();
}

void CommonFlowStrategy.makeIntentFromParse(parse:currentIntent:completion:)(char *a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v110 = a4;
  v112 = a2;
  v107 = *v4;
  v108 = a3;
  v6 = sub_2CA870();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v109 = (&v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v13 = &v91 - v12;
  __chkstk_darwin(v11);
  v15 = &v91 - v14;
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v97 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v98 = &v91 - v22;
  v23 = __chkstk_darwin(v21);
  v95 = &v91 - v24;
  __chkstk_darwin(v23);
  v26 = &v91 - v25;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v27 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v28 = *(v17 + 16);
  v102 = v17 + 16;
  v103 = v27;
  v101 = v28;
  v28(v26, v27, v16);
  v29 = *(v7 + 16);
  v106 = a1;
  v111 = v29;
  v29(v15, a1, v6);
  v30 = v112;
  v105 = v17;
  v31 = v30;
  v32 = sub_2CDFE0();
  v104 = v16;
  v33 = v32;
  v34 = sub_2CE670();
  v99 = v31;

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v93 = v34;
    v36 = v13;
    v37 = v6;
    v38 = v35;
    v94 = swift_slowAlloc();
    v114 = v94;
    *v38 = 136446722;
    v39 = sub_2CCCC0();
    v41 = sub_3F08(v39, v40, &v114);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    v111(v36, v15, v37);
    v42 = v37;
    v92 = v37;
    v43 = sub_2CE2A0();
    v45 = v44;
    v96 = *(v7 + 8);
    v96(v15, v42);
    v46 = sub_3F08(v43, v45, &v114);

    *(v38 + 14) = v46;
    *(v38 + 22) = 2080;
    v47 = v109;
    v113 = v112;
    v49 = *(v107 + 80);
    v48 = *(v107 + 88);
    swift_getAssociatedTypeWitness();
    sub_2CEB90();
    v50 = v99;
    v51 = sub_2CE2A0();
    v53 = sub_3F08(v51, v52, &v114);

    *(v38 + 24) = v53;
    _os_log_impl(&dword_0, v33, v93, "CommonFlowStrategy#makeIntentFromParse %{public}s for parse:%s and previousIntent:%s", v38, 0x20u);
    swift_arrayDestroy();

    v54 = v104;
    v55 = *(v105 + 8);
    v55(v26, v104);
    v56 = v92;
  }

  else
  {

    v96 = *(v7 + 8);
    v96(v15, v6);
    v57 = v104;
    v55 = *(v105 + 8);
    v55(v26, v104);
    v56 = v6;
    v54 = v57;
    v47 = v109;
  }

  v111(v47, v106, v56);
  v58 = (*(v7 + 88))(v47, v56);
  if (v58 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v7 + 96))(v47, v56);
    v59 = *(v47 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v60 = sub_2CA830();
    v62 = *(v107 + 80);
    v61 = *(v107 + 88);
    swift_getAssociatedTypeWitness();
    v63 = swift_dynamicCastUnknownClass();
    if (v63)
    {
      v64 = v63;
      v65 = sub_2CA840();
      v66 = v100[2];
      v100[2] = v65;

      v67 = v60;
      v108(v64, 0);
    }

    else
    {

      v83 = v95;
      v101(v95, v103, v54);
      v84 = sub_2CDFE0();
      v85 = sub_2CE670();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_0, v84, v85, "CommonFlowStrategy#makeIntentFromParse received unsupported NLv3IntentPlusServerConversion parse, ignoring", v86, 2u);
      }

      v55(v83, v54);
      v87 = sub_2CB850();
      sub_A3100(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v88 = swift_allocError();
      (*(*(v87 - 8) + 104))(v89, enum case for PlaybackCode.ceGE13(_:), v87);
      v108(v88, 1);
    }

    v90 = sub_2CAFE0();
    (*(*(v90 - 8) + 8))(v47, v90);
  }

  else if (v58 == enum case for Parse.pommesResponse(_:))
  {
    (*(v7 + 96))(v47, v56);
    v68 = *v47;
    v69 = v98;
    v101(v98, v103, v54);
    v70 = v68;
    v71 = sub_2CDFE0();
    v72 = sub_2CE690();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138477827;
      *(v73 + 4) = v70;
      *v74 = v70;
      v75 = v70;
      _os_log_impl(&dword_0, v71, v72, "CommonFlowStrategy#makeIntentFromParse received pommesResponse: %{private}@", v73, 0xCu);
      sub_30B8(v74, &unk_34FC00, &unk_2D0150);
    }

    v55(v69, v54);
    (*(*v100 + 272))(v70, v108, v110);
  }

  else
  {
    v76 = v97;
    v101(v97, v103, v54);
    v77 = sub_2CDFE0();
    v78 = sub_2CE680();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_0, v77, v78, "CommonFlowStrategy#makeIntentFromParse received non NLv3IntentPlusServerConversion or NLv3IntentOnly parse", v79, 2u);
    }

    v55(v76, v54);
    v80 = sub_2CB850();
    sub_A3100(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v81 = swift_allocError();
    (*(*(v80 - 8) + 104))(v82, enum case for PlaybackCode.ceGE14(_:), v80);
    v108(v81, 1);

    v96(v47, v56);
  }
}

uint64_t CommonFlowStrategy.makeSiriKitIntentHandler(app:intent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *v3;
  v29 = a2;
  v30 = v7;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);

  v14 = sub_2CDFE0();
  v15 = sub_2CE670();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = a1;
    v32 = v27;
    *v16 = 136315138;
    sub_2CCFB0();
    v28 = a3;
    sub_A3100(&qword_34C170, &type metadata accessor for App);
    v17 = sub_2CEE70();
    v19 = sub_3F08(v17, v18, &v32);

    *(v16 + 4) = v19;
    _os_log_impl(&dword_0, v14, v15, "CommonFlowStrategy#makeSiriKitIntentHandler Saving app name %s", v16, 0xCu);
    sub_306C(v27);
  }

  (*(v9 + 8))(v12, v8);
  v20 = v4[4];
  v4[4] = a1;

  v21 = v4[5];
  v22 = v29;
  v4[5] = v29;
  v23 = v22;

  v24 = *(v30 + 80);
  return (*(*(v30 + 88) + 32))(a1, v23);
}

uint64_t sub_9D7D4(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_2CDFE0();
  v10 = sub_2CE680();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "CommonFlowStrategy#makeIntentFrom pommesResponse unsupported", v11, 2u);
  }

  (*(v4 + 8))(v7, v3);
  v12 = sub_2CB850();
  sub_A3100(&qword_34CCA8, &type metadata accessor for PlaybackCode);
  v13 = swift_allocError();
  (*(*(v12 - 8) + 104))(v14, enum case for PlaybackCode.ceGE15(_:), v12);
  a2(v13, 1);
}

uint64_t sub_9DA38()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v5 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2CDFE0();
  v7 = sub_2CE680();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "CommonFlowStrategy#actionForInput received pommesResponse which is unsupported", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return sub_2C9CF0();
}

uint64_t sub_9DBF0(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a4;
  v58 = a5;
  v59 = a2;
  v56 = *v5;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CDDB0();
  v55 = *(v14 - 8);
  v15 = *(v55 + 64);
  v16 = __chkstk_darwin(v14);
  v17 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v54 - v18;
  if (sub_A3CA0(a3))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v20 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    (*(v10 + 16))(v13, v20, v9);
    v21 = sub_2CDFE0();
    v22 = sub_2CE680();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "CommonFlowStrategy#makeErrorResponse Barge-In error", v23, 2u);
    }

    (*(v10 + 8))(v13, v9);
    v24 = v6[7];
    if (a1)
    {
      v25 = a1;
    }

    else
    {
      sub_2CCFB0();
      sub_2CBE10();
      v25 = sub_2CCF80();
    }

    v44 = v59;
    v45 = swift_allocObject();
    *(v45 + 16) = v6;
    *(v45 + 24) = a1;
    v46 = v57;
    v47 = v58;
    *(v45 + 32) = v44;
    *(v45 + 40) = v46;
    *(v45 + 48) = v47;
    v48 = v44;
    swift_retain_n();

    sub_2822EC(v25, sub_A4284, v45);
  }

  *&v60[0] = a3;
  swift_errorRetain();
  sub_20410(&qword_34C6E0, &unk_2D0730);
  sub_2C9D40();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = v59;
    v42 = v6[7];
    if (!a1)
    {
LABEL_19:
      sub_2CCFB0();
      sub_2CBE10();
      v43 = sub_2CCF80();
      goto LABEL_20;
    }

LABEL_15:
    v43 = a1;
LABEL_20:
    v50 = swift_allocObject();
    v50[2] = v6;
    v50[3] = a1;
    v51 = v57;
    v52 = v58;
    v50[4] = v28;
    v50[5] = v51;
    v50[6] = v52;
    v50[7] = a3;

    swift_errorRetain();
    v53 = v28;

    sub_281B14(v43, sub_A41B8, v50);
  }

  v26 = v62;
  v27 = sub_2C9D30();
  v28 = v59;
  if (v27 != 1307)
  {

    v49 = v6[7];
    if (!a1)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_2C9D00();
  sub_2CDDC0();

  v54[1] = v6[7];
  v54[2] = v26;
  if (!v28 || (v62 = v28, v30 = *(v56 + 80), v29 = *(v56 + 88), swift_getAssociatedTypeWitness(), v31 = v28, sub_20410(&unk_3530B0, &qword_2D2270), (swift_dynamicCast() & 1) == 0))
  {
    v61 = 0;
    memset(v60, 0, sizeof(v60));
  }

  v32 = v55;
  (*(v55 + 16))(v17, v19, v14);
  v33 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v54[0] = (v15 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v54[0] + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v56;
  *(v35 + 2) = *(v56 + 80);
  *(v35 + 3) = *(v36 + 88);
  *(v35 + 4) = a1;
  (*(v32 + 32))(&v35[v33], v17, v14);
  *&v35[v54[0]] = v6;
  v37 = v59;
  *&v35[v34] = v59;
  v38 = &v35[(v34 + 15) & 0xFFFFFFFFFFFFFFF8];
  v39 = v58;
  *v38 = v57;
  *(v38 + 1) = v39;

  v40 = v37;
  sub_2881BC(a1, v60, sub_A41C8, v35);

  (*(v32 + 8))(v19, v14);
  return sub_30B8(v60, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_9E220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v117 = a5;
  v118 = a6;
  v115 = a3;
  v116 = a4;
  v119 = a2;
  v106 = a1;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v105 = v100 - v8;
  v101 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v9 = *(*(v101 - 8) + 64);
  v10 = __chkstk_darwin(v101);
  v104 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v102 = v100 - v13;
  v14 = __chkstk_darwin(v12);
  v103 = v100 - v15;
  __chkstk_darwin(v14);
  v17 = v100 - v16;
  v18 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v114 = v100 - v20;
  v21 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v113 = v100 - v23;
  v24 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v112 = v100 - v26;
  v27 = sub_2CCB30();
  v110 = *(v27 - 8);
  v111 = v27;
  v28 = *(v110 + 64);
  __chkstk_darwin(v27);
  v107 = v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2CCAC0();
  v108 = *(v30 - 8);
  v109 = v30;
  v31 = *(v108 + 64);
  __chkstk_darwin(v30);
  v33 = v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2CE000();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v39 = v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = v100 - v40;
  v42 = sub_20410(&unk_3519A0, &qword_2D0980);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v45 = (v100 - v44);
  sub_F3F4(v106, v100 - v44, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v106 = *v45;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v46 = sub_3ED0(v34, static Logger.default);
    swift_beginAccess();
    (*(v35 + 16))(v41, v46, v34);
    v47 = sub_2CDFE0();
    v48 = sub_2CE680();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "CommonFlowStrategy#makeErrorResponse FAILED to create BargeIn error dialog", v49, 2u);
    }

    (*(v35 + 8))(v41, v34);
    v51 = v108;
    v50 = v109;
    (*(v108 + 104))(v33, enum case for AdditionalMetricsDescription.ModuleName.cfs(_:), v109);
    v53 = v110;
    v52 = v111;
    v54 = v107;
    (*(v110 + 104))(v107, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v111);
    v105 = sub_2CCAE0();
    (*(v53 + 8))(v54, v52);
    (*(v51 + 8))(v33, v50);
    sub_EEAC(v119 + 64, v120);
    sub_35E0(v120, v121);
    v55 = enum case for ActivityType.failed(_:);
    v56 = sub_2C9C20();
    v57 = *(v56 - 8);
    v58 = v112;
    (*(v57 + 104))(v112, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    v59 = sub_2CA130();
    v60 = v113;
    (*(*(v59 - 8) + 56))(v113, 1, 1, v59);
    v61 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v62 = sub_2C98F0();
    v63 = *(v62 - 8);
    v64 = v114;
    (*(v63 + 104))(v114, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    sub_2CB4E0();

    sub_30B8(v64, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v60, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v58, &qword_34CB88, &unk_2D0D90);
    sub_306C(v120);
    v120[0] = v106;
    v122 = 1;
    swift_errorRetain();
    v117(v120);

    return sub_30B8(v120, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v45, v17);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v106 = v17;
    v66 = sub_3ED0(v34, static Logger.default);
    swift_beginAccess();
    (*(v35 + 16))(v39, v66, v34);
    v67 = sub_2CDFE0();
    v68 = sub_2CE690();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_0, v67, v68, "CommonFlowStrategy#makeErrorResponse successfully created BargeIn error dialog", v69, 2u);
    }

    (*(v35 + 8))(v39, v34);
    v71 = v108;
    v70 = v109;
    (*(v108 + 104))(v33, enum case for AdditionalMetricsDescription.ModuleName.cfs(_:), v109);
    v73 = v110;
    v72 = v111;
    v74 = v107;
    (*(v110 + 104))(v107, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v111);
    v100[2] = sub_2CCAE0();
    v100[1] = v75;
    (*(v73 + 8))(v74, v72);
    (*(v71 + 8))(v33, v70);
    sub_EEAC(v119 + 64, v120);
    v111 = sub_35E0(v120, v121);
    v76 = enum case for ActivityType.completed(_:);
    v77 = sub_2C9C20();
    v78 = *(v77 - 8);
    v79 = v112;
    (*(v78 + 104))(v112, v76, v77);
    (*(v78 + 56))(v79, 0, 1, v77);
    v80 = sub_2CA130();
    v81 = *(v80 - 8);
    v82 = v113;
    (*(v81 + 56))(v113, 1, 1, v80);
    v83 = enum case for SiriKitReliabilityCodes.success(_:);
    v84 = sub_2C98F0();
    v85 = *(v84 - 8);
    v86 = v114;
    (*(v85 + 104))(v114, v83, v84);
    (*(v85 + 56))(v86, 0, 1, v84);
    sub_2CB4E0();

    sub_30B8(v86, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v82, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v79, &qword_34CB88, &unk_2D0D90);
    sub_306C(v120);
    v87 = sub_35E0((v119 + 104), *(v119 + 128));
    v88 = v106;
    v89 = v103;
    sub_F3F4(v106, v103, &qword_34C6E8, &unk_2D0FF0);
    v90 = v101;
    v91 = *(v89 + *(v101 + 48));
    v92 = sub_2CA000();
    v93 = v105;
    (*(*(v92 - 8) + 56))(v105, 1, 1, v92);
    v94 = *v87;
    v95 = v102;
    (*(v81 + 16))(v102, v89, v80);
    *(v95 + *(v90 + 48)) = v91;
    v96 = v104;
    sub_F3F4(v95, v104, &qword_34C6E8, &unk_2D0FF0);
    v97 = *(v96 + *(v90 + 48));
    v98 = v91;
    sub_1C3480(v96, v97, v93, _swiftEmptyArrayStorage, v117, v118);

    sub_30B8(v95, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v93, &unk_353020, &unk_2D0970);
    sub_30B8(v88, &qword_34C6E8, &unk_2D0FF0);
    v99 = *(v81 + 8);
    v99(v96, v80);
    return (v99)(v89, v80);
  }
}

uint64_t sub_9F048(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7)
{
  v102 = a7;
  v119 = a5;
  v120 = a6;
  v118 = a4;
  v117 = a3;
  v121 = a2;
  v108 = a1;
  v7 = sub_20410(&unk_353020, &unk_2D0970);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v107 = v101 - v9;
  v103 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v10 = *(*(v103 - 8) + 64);
  v11 = __chkstk_darwin(v103);
  v106 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v104 = v101 - v14;
  v15 = __chkstk_darwin(v13);
  v105 = v101 - v16;
  __chkstk_darwin(v15);
  v18 = v101 - v17;
  v19 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v116 = v101 - v21;
  v22 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v115 = v101 - v24;
  v25 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v114 = v101 - v27;
  v113 = sub_2CCB30();
  v112 = *(v113 - 8);
  v28 = *(v112 + 64);
  __chkstk_darwin(v113);
  v109 = v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_2CCAC0();
  v110 = *(v111 - 8);
  v30 = *(v110 + 64);
  __chkstk_darwin(v111);
  v32 = v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2CE000();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v38 = v101 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = v101 - v39;
  v41 = sub_20410(&unk_3519A0, &qword_2D0980);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v44 = (v101 - v43);
  sub_F3F4(v108, v101 - v43, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v44;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v46 = sub_3ED0(v33, static Logger.default);
    swift_beginAccess();
    (*(v34 + 16))(v40, v46, v33);
    v47 = sub_2CDFE0();
    v48 = sub_2CE680();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "CommonFlowStrategy#makeErrorResponse FAILED to create generic error dialog", v49, 2u);
    }

    (*(v34 + 8))(v40, v33);
    v50 = v110;
    v51 = v111;
    (*(v110 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.cfs(_:), v111);
    v52 = v112;
    v53 = v109;
    v54 = v113;
    (*(v112 + 104))(v109, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v113);
    swift_getErrorValue();
    sub_2CEEF0();
    v108 = sub_2CCAE0();

    (*(v52 + 8))(v53, v54);
    (*(v50 + 8))(v32, v51);
    sub_EEAC((v121 + 8), v122);
    v121 = sub_35E0(v122, v123);
    v55 = enum case for ActivityType.failed(_:);
    v56 = sub_2C9C20();
    v57 = v45;
    v58 = *(v56 - 8);
    v59 = v114;
    (*(v58 + 104))(v114, v55, v56);
    (*(v58 + 56))(v59, 0, 1, v56);
    v60 = sub_2CA130();
    v61 = v115;
    (*(*(v60 - 8) + 56))(v115, 1, 1, v60);
    v62 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v63 = sub_2C98F0();
    v64 = *(v63 - 8);
    v65 = v116;
    (*(v64 + 104))(v116, v62, v63);
    (*(v64 + 56))(v65, 0, 1, v63);
    sub_2CB4E0();

    sub_30B8(v65, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v61, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v59, &qword_34CB88, &unk_2D0D90);
    sub_306C(v122);
    v122[0] = v57;
    v124 = 1;
    swift_errorRetain();
    v119(v122);

    return sub_30B8(v122, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v44, v18);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v108 = v18;
    v67 = sub_3ED0(v33, static Logger.default);
    swift_beginAccess();
    (*(v34 + 16))(v38, v67, v33);
    v68 = sub_2CDFE0();
    v69 = sub_2CE690();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_0, v68, v69, "CommonFlowStrategy#makeErrorResponse successfully created generic error dialog", v70, 2u);
    }

    (*(v34 + 8))(v38, v33);
    v71 = v110;
    v72 = v111;
    (*(v110 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.cfs(_:), v111);
    v73 = v112;
    v74 = v109;
    v75 = v113;
    (*(v112 + 104))(v109, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v113);
    swift_getErrorValue();
    sub_2CEEF0();
    v102 = sub_2CCAE0();
    v101[1] = v76;

    (*(v73 + 8))(v74, v75);
    (*(v71 + 8))(v32, v72);
    sub_EEAC((v121 + 8), v122);
    v113 = sub_35E0(v122, v123);
    v77 = enum case for ActivityType.failed(_:);
    v78 = sub_2C9C20();
    v79 = *(v78 - 8);
    v80 = v114;
    (*(v79 + 104))(v114, v77, v78);
    (*(v79 + 56))(v80, 0, 1, v78);
    v81 = sub_2CA130();
    v82 = *(v81 - 8);
    v83 = v115;
    (*(v82 + 56))(v115, 1, 1, v81);
    v84 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v85 = sub_2C98F0();
    v86 = *(v85 - 8);
    v87 = v116;
    (*(v86 + 104))(v116, v84, v85);
    (*(v86 + 56))(v87, 0, 1, v85);
    sub_2CB4E0();

    sub_30B8(v87, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v83, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v80, &qword_34CB88, &unk_2D0D90);
    sub_306C(v122);
    v88 = sub_35E0(v121 + 13, v121[16]);
    v89 = v108;
    v90 = v105;
    sub_F3F4(v108, v105, &qword_34C6E8, &unk_2D0FF0);
    v91 = v103;
    v92 = *(v90 + *(v103 + 48));
    v93 = sub_2CA000();
    v94 = v107;
    (*(*(v93 - 8) + 56))(v107, 1, 1, v93);
    v95 = *v88;
    v96 = v104;
    (*(v82 + 16))(v104, v90, v81);
    *(v96 + *(v91 + 48)) = v92;
    v97 = v106;
    sub_F3F4(v96, v106, &qword_34C6E8, &unk_2D0FF0);
    v98 = *(v97 + *(v91 + 48));
    v99 = v92;
    sub_1C3480(v97, v98, v94, _swiftEmptyArrayStorage, v119, v120);

    sub_30B8(v96, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v94, &unk_353020, &unk_2D0970);
    sub_30B8(v89, &qword_34C6E8, &unk_2D0FF0);
    v100 = *(v82 + 8);
    v100(v97, v81);
    return (v100)(v90, v81);
  }
}

uint64_t sub_9FF38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v126 = a6;
  v127 = a7;
  v118 = a1;
  v129 = a4;
  v9 = *a4;
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v113 = &v110 - v12;
  v120 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v13 = *(*(v120 - 8) + 64);
  v14 = __chkstk_darwin(v120);
  v112 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v110 = &v110 - v17;
  v18 = __chkstk_darwin(v16);
  v111 = &v110 - v19;
  __chkstk_darwin(v18);
  v131 = &v110 - v20;
  v21 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v123 = &v110 - v23;
  v24 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v122 = &v110 - v26;
  v27 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v121 = &v110 - v29;
  v114 = sub_20410(&unk_3519A0, &qword_2D0980);
  v30 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v115 = (&v110 - v31);
  v32 = sub_2CE000();
  v130 = *(v32 - 8);
  v33 = v130[8];
  v34 = __chkstk_darwin(v32);
  v117 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v116 = &v110 - v37;
  __chkstk_darwin(v36);
  v39 = &v110 - v38;
  v124 = a2;
  if (a2 && (v40 = sub_2CCF90(), v41))
  {
    v42 = v40;
    v43 = v41;
  }

  else
  {

    v43 = 0xEA00000000007070;
    v42 = 0x416E776F6E6B6E55;
  }

  v44 = sub_2CDDA0();
  v46 = v45;

  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {
    v48 = sub_2CDDA0();
    v50 = v49;
  }

  else
  {
    v50 = 0xE100000000000000;
    v48 = 48;
  }

  v51 = *(v9 + 80);
  v52 = *(v9 + 88);
  v125 = a5;
  v53 = sub_A3F38(a5);
  v55 = v54;
  v132 = v42;
  v133 = v43;

  v136._countAndFlagsBits = 61;
  v136._object = 0xE100000000000000;
  sub_2CE350(v136);

  v137._countAndFlagsBits = v53;
  v137._object = v55;
  sub_2CE350(v137);

  v138._countAndFlagsBits = v48;
  v138._object = v50;
  sub_2CE350(v138);

  v56 = v133;
  v128 = v132;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v57 = sub_3ED0(v32, static Logger.default);
  swift_beginAccess();
  v58 = v130;
  v59 = v130[2];
  v59(v39, v57, v32);

  v60 = sub_2CDFE0();
  v61 = sub_2CE670();

  v62 = os_log_type_enabled(v60, v61);
  v119 = v56;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v132 = v64;
    *v63 = 136315138;
    *(v63 + 4) = sub_3F08(v128, v56, &v132);
    _os_log_impl(&dword_0, v60, v61, "CommonFlowStrategy#makeErrorResponse encDesc: %s", v63, 0xCu);
    sub_306C(v64);
    v58 = v130;
  }

  v65 = v58[1];
  v65(v39, v32);
  v66 = v115;
  sub_F3F4(v118, v115, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = *v66;
    v59(v116, v57, v32);
    v68 = sub_2CDFE0();
    v69 = sub_2CE680();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_0, v68, v69, "CommonFlowStrategy#makeErrorResponse FAILED to create app timeout dialog", v70, 2u);
    }

    v65(v116, v32);
    sub_EEAC((v129 + 8), &v132);
    sub_35E0(&v132, v134);
    v71 = enum case for ActivityType.failed(_:);
    v72 = sub_2C9C20();
    v73 = *(v72 - 8);
    v74 = v121;
    (*(v73 + 104))(v121, v71, v72);
    (*(v73 + 56))(v74, 0, 1, v72);
    v75 = sub_2CA130();
    v76 = v122;
    (*(*(v75 - 8) + 56))(v122, 1, 1, v75);
    v77 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v78 = sub_2C98F0();
    v79 = *(v78 - 8);
    v80 = v123;
    (*(v79 + 104))(v123, v77, v78);
    (*(v79 + 56))(v80, 0, 1, v78);
    sub_2CB4E0();

    sub_30B8(v80, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v76, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v74, &qword_34CB88, &unk_2D0D90);
    sub_306C(&v132);
    v132 = v67;
    v135 = 1;
    swift_errorRetain();
    v126(&v132);

    return sub_30B8(&v132, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v66, v131);
    v59(v117, v57, v32);
    v82 = sub_2CDFE0();
    v83 = sub_2CE690();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_0, v82, v83, "CommonFlowStrategy#makeErrorResponse successfully created app timeout dialog", v84, 2u);
    }

    v65(v117, v32);
    sub_EEAC((v129 + 8), &v132);
    v130 = sub_35E0(&v132, v134);
    v85 = enum case for ActivityType.failed(_:);
    v86 = sub_2C9C20();
    v87 = *(v86 - 8);
    v88 = v121;
    (*(v87 + 104))(v121, v85, v86);
    (*(v87 + 56))(v88, 0, 1, v86);
    v89 = v111;
    sub_F3F4(v131, v111, &qword_34C6E8, &unk_2D0FF0);

    v90 = sub_2CA130();
    v118 = v90;
    v91 = *(v90 - 8);
    v92 = v122;
    (*(v91 + 32))(v122, v89, v90);
    (*(v91 + 56))(v92, 0, 1, v90);
    v93 = enum case for SiriKitReliabilityCodes.handleIntentTimeOut(_:);
    v94 = sub_2C98F0();
    v95 = *(v94 - 8);
    v96 = v123;
    (*(v95 + 104))(v123, v93, v94);
    (*(v95 + 56))(v96, 0, 1, v94);
    sub_2CB4E0();

    sub_30B8(v96, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v92, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v88, &qword_34CB88, &unk_2D0D90);
    sub_306C(&v132);
    v97 = sub_35E0(v129 + 13, v129[16]);
    sub_F3F4(v131, v89, &qword_34C6E8, &unk_2D0FF0);
    v98 = v120;
    v99 = *(v89 + *(v120 + 48));
    v100 = sub_2CA000();
    v101 = v113;
    (*(*(v100 - 8) + 56))(v113, 1, 1, v100);
    v102 = *v97;
    v103 = v110;
    v104 = v118;
    (*(v91 + 16))(v110, v89, v118);
    v105 = v98;
    *(v103 + *(v98 + 48)) = v99;
    v106 = v112;
    sub_F3F4(v103, v112, &qword_34C6E8, &unk_2D0FF0);
    v107 = *(v106 + *(v105 + 48));
    v108 = v99;
    sub_1C3480(v106, v107, v101, _swiftEmptyArrayStorage, v126, v127);

    sub_30B8(v103, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v101, &unk_353020, &unk_2D0970);
    sub_30B8(v131, &qword_34C6E8, &unk_2D0FF0);
    v109 = *(v91 + 8);
    v109(v106, v104);
    return (v109)(v89, v104);
  }
}

uint64_t CommonFlowStrategy.makeErrorResponse(app:intent:error:_:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v31 = a4;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);

  v14 = a2;
  swift_errorRetain();
  v15 = sub_2CDFE0();
  v16 = sub_2CE680();

  v17 = a1;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v30 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v17;
    v34 = v29;
    *v19 = 136315650;
    sub_2CCFB0();
    sub_A3100(&qword_34C170, &type metadata accessor for App);
    v28 = v8;
    v21 = sub_2CEE70();
    v23 = sub_3F08(v21, v22, &v34);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v14;
    *v20 = v14;
    *(v19 + 22) = 2112;
    v24 = v14;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v25;
    v20[1] = v25;
    _os_log_impl(&dword_0, v15, v16, "CommonFlowStrategy#makeErrorResponse with App %s, Intent %@, Error %@", v19, 0x20u);
    sub_20410(&unk_34FC00, &unk_2D0150);
    swift_arrayDestroy();

    sub_306C(v29);

    a3 = v30;

    (*(v9 + 8))(v12, v28);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  return sub_9DBF0(v17, v14, a3, v31, v32);
}

void CommonFlowStrategy.makeErrorResponse(error:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  swift_errorRetain();
  v14 = sub_2CDFE0();
  v15 = sub_2CE680();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = a2;
    v17 = a3;
    v18 = v16;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&dword_0, v14, v15, "CommonFlowStrategy#makeErrorResponse with Error %@", v18, 0xCu);
    sub_30B8(v19, &unk_34FC00, &unk_2D0150);

    a3 = v17;
    a2 = v25;
  }

  (*(v9 + 8))(v12, v8);
  v22 = *(v4 + 32);
  v21 = *(v4 + 40);
  v23 = v21;

  sub_9DBF0(v24, v21, a1, a2, a3);
}

uint64_t CommonFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v112 = a5;
  v111 = a4;
  v104 = a2;
  v106 = *v5;
  v115 = sub_2CDFD0();
  v114 = *(v115 - 8);
  v8 = *(v114 + 64);
  v9 = __chkstk_darwin(v115);
  v102 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v10;
  __chkstk_darwin(v9);
  v113 = &v94 - v11;
  v118 = sub_2CE000();
  v117 = *(v118 - 8);
  v12 = *(v117 + 64);
  v13 = __chkstk_darwin(v118);
  v103 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v116 = &v94 - v15;
  v16 = sub_2CCB30();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2CCAC0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a3;
  *&v121[0] = [a3 _code];
  v26 = sub_2CEE70();
  v28 = v27;
  v119 = a1;
  v29 = sub_2CCF90();
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xE000000000000000;
  }

  v96 = v29;
  v109 = sub_2CBDC0();
  (*(v22 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.cfs(_:), v21);
  (*(v17 + 104))(v20, enum case for AdditionalMetricsDescription.SourceFunction.makeFailDlg(_:), v16);
  v97 = v26;
  v110 = v28;
  v108 = sub_2CCAE0();
  v107 = v32;
  v33 = v16;
  v34 = v104;
  (*(v17 + 8))(v20, v33);
  (*(v22 + 8))(v25, v21);
  v35 = v105;
  v36 = *(v106 + 80);
  v37 = *(v106 + 88);
  v38 = sub_A3F38(v34);
  v40 = v39;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v41 = v118;
  v42 = sub_3ED0(v118, static Logger.default);
  swift_beginAccess();
  v43 = v117;
  v44 = *(v117 + 16);
  v45 = v116;
  v106 = v42;
  v99 = v117 + 16;
  v98 = v44;
  v44(v116, v42, v41);

  v46 = sub_2CDFE0();
  v47 = sub_2CE680();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v95 = v38;
    v49 = v48;
    v50 = swift_slowAlloc();
    v94 = v40;
    v51 = v50;
    *&v121[0] = v50;
    *v49 = 136315394;
    v52 = v34;
    v53 = v35;
    v54 = v43;
    v55 = sub_3F08(v96, v31, v121);

    *(v49 + 4) = v55;
    v56 = v54;
    v35 = v53;
    v34 = v52;
    *(v49 + 12) = 1024;
    v57 = v41;
    v58 = v109;
    *(v49 + 14) = v109 & 1;
    _os_log_impl(&dword_0, v46, v47, "CommonFlowStrategy#makeFailureConfirmingIntentResponse with app: '%s', isThirdParty: %{BOOL}d", v49, 0x12u);
    sub_306C(v51);
    v40 = v94;

    v38 = v95;

    v59 = *(v56 + 8);
    v59(v116, v57);
  }

  else
  {

    v59 = *(v43 + 8);
    v59(v45, v41);
    v58 = v109;
  }

  v60 = swift_allocObject();
  v61 = v119;
  *(v60 + 2) = v35;
  *(v60 + 3) = v61;
  *(v60 + 4) = v34;
  *(v60 + 5) = v38;
  v62 = v108;
  *(v60 + 6) = v40;
  *(v60 + 7) = v62;
  v63 = v111;
  *(v60 + 8) = v107;
  *(v60 + 9) = v63;
  *(v60 + 10) = v112;
  if (v58)
  {
    v111 = v59;
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0090;
    *(inited + 32) = 1701080931;
    *(inited + 72) = &type metadata for String;
    v65 = v97;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v65;
    *(inited + 56) = v110;

    v66 = v34;

    v116 = sub_112C0(inited);
    swift_setDeallocating();
    sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
    v112 = *(v35 + 48);
    v122 = 0;
    memset(v121, 0, sizeof(v121));
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v67 = qword_35F760;
    v68 = v113;
    sub_2CDFB0();
    v69 = v114;
    v70 = v102;
    v71 = v115;
    (*(v114 + 16))(v102, v68, v115);
    v72 = (*(v69 + 80) + 33) & ~*(v69 + 80);
    v73 = (v101 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    *(v74 + 16) = "catServiceExecute";
    *(v74 + 24) = 17;
    *(v74 + 32) = 2;
    (*(v69 + 32))(v74 + v72, v70, v71);
    v75 = (v74 + v73);
    *v75 = sub_A404C;
    v75[1] = v60;

    sub_2CE9E0();
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_2D0E40;
    *(v76 + 56) = &type metadata for String;
    v77 = sub_1087C();
    *(v76 + 32) = 0x6964654D79616C50;
    *(v76 + 40) = 0xEF746E65746E4961;
    *(v76 + 96) = &type metadata for String;
    *(v76 + 104) = v77;
    *(v76 + 64) = v77;
    *(v76 + 72) = 0xD000000000000017;
    *(v76 + 80) = 0x80000000002DB940;
    v93 = v76;
    LOBYTE(v92) = 2;
    v91 = 125;
    sub_2CDF90();

    v78 = swift_allocObject();
    *(v78 + 16) = sub_13CD4;
    *(v78 + 24) = v74;
    v79 = v103;
    v80 = v118;
    v98(v103, v106, v118);

    v81 = sub_2CDFE0();
    v82 = sub_2CE660();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v120[0] = swift_slowAlloc();
      *v83 = 136315394;
      *(v83 + 4) = sub_3F08(0x6964654D79616C50, 0xEF746E65746E4961, v120);
      *(v83 + 12) = 2080;
      *(v83 + 14) = sub_3F08(0xD000000000000017, 0x80000000002DB940, v120);
      _os_log_impl(&dword_0, v81, v82, "Evaluating CAT family:%s id:%s...", v83, 0x16u);
      swift_arrayDestroy();
    }

    v111(v79, v80);
    v84 = sub_2CB460();
    if (!v84)
    {
      sub_2CB180();
      v84 = sub_2CB170();
    }

    v85 = v84;
    v86 = swift_allocObject();
    v86[2] = v85;
    v86[3] = sub_13D8C;
    v86[4] = v78;
    v87 = sub_2CB180();
    __chkstk_darwin(v87);
    v88 = v116;
    *(&v94 - 10) = v112;
    *(&v94 - 9) = v88;
    *(&v94 - 8) = v119;
    *(&v94 - 7) = v121;
    *(&v94 - 3) = xmmword_2D2060;
    v91 = 0x80000000002DB960;
    v92 = sub_3E010;
    v93 = v86;

    sub_2CB0F0();

    (*(v114 + 8))(v113, v115);
    return sub_30B8(v121, &qword_34C6C0, &qword_2D0710);
  }

  else
  {

    v34;

    v90 = *(v35 + 56);
    sub_112C0(_swiftEmptyArrayStorage);
    (*(*v90 + 176))();
  }
}

uint64_t sub_A2080(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void (*a9)(uint64_t *), uint64_t a10)
{
  v101._countAndFlagsBits = a7;
  v101._object = a8;
  v99 = a5;
  v100 = a6;
  v102 = a3;
  v103 = a4;
  v95 = a1;
  v96 = a2;
  v104 = a9;
  v105 = a10;
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v94 = v89 - v12;
  v90 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v13 = *(*(v90 - 8) + 64);
  v14 = __chkstk_darwin(v90);
  v93 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v91 = v89 - v17;
  v18 = __chkstk_darwin(v16);
  v92 = v89 - v19;
  __chkstk_darwin(v18);
  v21 = v89 - v20;
  v22 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v98 = v89 - v24;
  v25 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v97 = v89 - v27;
  v28 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = v89 - v30;
  v32 = sub_2CE000();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v37 = v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = v89 - v38;
  v40 = sub_20410(&unk_3519A0, &qword_2D0980);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v43 = (v89 - v42);
  sub_F3F4(v95, v89 - v42, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = *v43;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v45 = sub_3ED0(v32, static Logger.default);
    swift_beginAccess();
    (*(v33 + 16))(v39, v45, v32);
    v46 = sub_2CDFE0();
    v47 = sub_2CE680();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "CommonFlowStrategy#makeFailureConfirmingIntentResponse FAILED to create dialog", v48, 2u);
    }

    (*(v33 + 8))(v39, v32);
    v49 = v96[12];
    sub_35E0(v96 + 8, v96[11]);
    v50 = enum case for ActivityType.failed(_:);
    v51 = sub_2C9C20();
    v52 = *(v51 - 8);
    (*(v52 + 104))(v31, v50, v51);
    (*(v52 + 56))(v31, 0, 1, v51);
    v53 = sub_2CA130();
    v54 = v97;
    (*(*(v53 - 8) + 56))(v97, 1, 1, v53);
    v55 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v56 = sub_2C98F0();
    v57 = *(v56 - 8);
    v58 = v98;
    (*(v57 + 104))(v98, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    v106[0] = v99;
    v106[1] = v100;

    sub_2CE350(v101);
    sub_2CB4E0();

    sub_30B8(v58, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v54, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v31, &qword_34CB88, &unk_2D0D90);
    v106[0] = v44;
    v107 = 1;
    swift_errorRetain();
    v104(v106);

    return sub_30B8(v106, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v43, v21);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v95 = v21;
    v60 = sub_3ED0(v32, static Logger.default);
    swift_beginAccess();
    (*(v33 + 16))(v37, v60, v32);
    v61 = sub_2CDFE0();
    v62 = sub_2CE680();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "CommonFlowStrategy#makeFailureConfirmingIntentResponse successfully created dialog", v63, 2u);
    }

    (*(v33 + 8))(v37, v32);
    v64 = v96;
    v65 = v96[11];
    v89[1] = v96[12];
    v89[2] = sub_35E0(v96 + 8, v65);
    v66 = enum case for ActivityType.failed(_:);
    v67 = sub_2C9C20();
    v68 = *(v67 - 8);
    (*(v68 + 104))(v31, v66, v67);
    (*(v68 + 56))(v31, 0, 1, v67);
    v69 = sub_2CA130();
    v70 = *(v69 - 8);
    v71 = v97;
    (*(v70 + 56))(v97, 1, 1, v69);
    v72 = enum case for SiriKitReliabilityCodes.confirmIntentFailure(_:);
    v73 = sub_2C98F0();
    v74 = *(v73 - 8);
    v75 = v98;
    (*(v74 + 104))(v98, v72, v73);
    (*(v74 + 56))(v75, 0, 1, v73);
    v108 = v99;
    v109 = v100;

    sub_2CE350(v101);
    sub_2CB4E0();

    sub_30B8(v75, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v71, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v31, &qword_34CB88, &unk_2D0D90);
    v76 = sub_35E0(v64 + 13, v64[16]);
    v77 = v95;
    v78 = v92;
    sub_F3F4(v95, v92, &qword_34C6E8, &unk_2D0FF0);
    v79 = v90;
    v80 = *(v78 + *(v90 + 48));
    v81 = sub_2CA000();
    v82 = v94;
    (*(*(v81 - 8) + 56))(v94, 1, 1, v81);
    v83 = *v76;
    v84 = v91;
    (*(v70 + 16))(v91, v78, v69);
    *(v84 + *(v79 + 48)) = v80;
    v85 = v93;
    sub_F3F4(v84, v93, &qword_34C6E8, &unk_2D0FF0);
    v86 = *(v85 + *(v79 + 48));
    v87 = v80;
    sub_1C3480(v85, v86, v82, _swiftEmptyArrayStorage, v104, v105);

    sub_30B8(v84, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v82, &unk_353020, &unk_2D0970);
    sub_30B8(v77, &qword_34C6E8, &unk_2D0FF0);
    v88 = *(v70 + 8);
    v88(v85, v69);
    return (v88)(v78, v69);
  }
}

uint64_t PlayMediaFlowStrategy.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  sub_306C((v0 + 64));
  sub_306C((v0 + 104));
  return v0;
}

uint64_t CommonFlowStrategy.__deallocating_deinit()
{
  PlayMediaFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_A2CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 + 80);
  v12 = *(a5 + 88);
  v13 = type metadata accessor for CommonFlowStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_A2D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 80);
  v5 = *(a2 + 88);
  v7 = type metadata accessor for CommonFlowStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, v7, a3);
}

uint64_t sub_A2E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 80);
  v5 = *(a2 + 88);
  v7 = type metadata accessor for CommonFlowStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v7, a3);
}

uint64_t sub_A2EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 80);
  v8 = *(a3 + 88);
  v9 = type metadata accessor for CommonFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t sub_A2F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(a5 + 80);
  v13 = *(a5 + 88);
  v14 = type metadata accessor for CommonFlowStrategy();

  return a7(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_A2FFC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *sub_A305C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_A30D0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_A3100(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_A3148(_BYTE *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v106 = a3;
  v116 = a2;
  v8 = sub_2CA870();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v117 = &v97[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v103 = &v97[-v14];
  __chkstk_darwin(v13);
  v16 = &v97[-v15];
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v101 = &v97[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v104 = &v97[-v23];
  v24 = __chkstk_darwin(v22);
  v102 = &v97[-v25];
  __chkstk_darwin(v24);
  v27 = &v97[-v26];
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  v114 = v28;
  v29 = qword_34BF58;
  v110 = a4;

  v111 = a5;
  if (v29 != -1)
  {
    swift_once();
  }

  v30 = sub_3ED0(v17, static Logger.default);
  swift_beginAccess();
  v31 = v18[2];
  v108 = v18 + 2;
  v109 = v30;
  v107 = v31;
  v31(v27, v30, v17);
  v32 = *(v9 + 16);
  v113 = a1;
  v115 = v32;
  v32(v16, a1, v8);
  v33 = v116;
  v112 = v27;
  v34 = sub_2CDFE0();
  v35 = sub_2CE670();

  v36 = v8;
  if (os_log_type_enabled(v34, v35))
  {
    v37 = swift_slowAlloc();
    v105 = v9;
    v38 = v8;
    v39 = v37;
    v99 = swift_slowAlloc();
    v119[0] = v99;
    *v39 = 136446722;
    v40 = sub_2CCCC0();
    v100 = v17;
    v42 = sub_3F08(v40, v41, v119);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    v98 = v35;
    v115(v103, v16, v38);
    v43 = sub_2CE2A0();
    v45 = v44;
    v46 = v18;
    v47 = *(v105 + 8);
    v47(v16, v38);
    v48 = v43;
    v49 = v47;
    v50 = sub_3F08(v48, v45, v119);
    v17 = v100;

    *(v39 + 14) = v50;
    *(v39 + 22) = 2080;
    v118 = v116;
    v51 = v33;
    sub_20410(&qword_34E478, &qword_2D2268);
    v52 = sub_2CE2A0();
    v54 = sub_3F08(v52, v53, v119);

    *(v39 + 24) = v54;
    _os_log_impl(&dword_0, v34, v98, "CommonFlowStrategy#makeIntentFromParse %{public}s for parse:%s and previousIntent:%s", v39, 0x20u);
    swift_arrayDestroy();

    v36 = v38;
    v9 = v105;

    v55 = v46[1];
  }

  else
  {

    v49 = *(v9 + 8);
    v49(v16, v36);
    v55 = v18[1];
  }

  v55(v112, v17);
  v56 = v117;
  v115(v117, v113, v36);
  v57 = (*(v9 + 88))(v56, v36);
  if (v57 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v58 = v117;
    (*(v9 + 96))(v117, v36);
    v59 = *(v58 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v60 = sub_2CA830();
    objc_opt_self();
    v61 = swift_dynamicCastObjCClass();
    if (v61)
    {
      v62 = v61;
      v63 = sub_2CA840();
      v64 = v106[2];
      v106[2] = v63;

      v65 = v110;
      swift_beginAccess();
      v66 = *(v65 + 16);
      *(v65 + 16) = v62;
      LOBYTE(v62) = *(v65 + 24);
      *(v65 + 24) = 0;
      v67 = v60;
      sub_A4194(v66, v62);
      dispatch_group_leave(v111);
    }

    else
    {

      v86 = v101;
      v107(v101, v109, v17);
      v87 = sub_2CDFE0();
      v88 = sub_2CE670();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_0, v87, v88, "CommonFlowStrategy#makeIntentFromParse received unsupported NLv3IntentPlusServerConversion parse, ignoring", v89, 2u);
      }

      v55(v86, v17);
      v90 = sub_2CB850();
      sub_A3100(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v91 = swift_allocError();
      (*(*(v90 - 8) + 104))(v92, enum case for PlaybackCode.ceGE13(_:), v90);
      v93 = v110;
      swift_beginAccess();
      v94 = *(v93 + 16);
      *(v93 + 16) = v91;
      v95 = *(v93 + 24);
      *(v93 + 24) = 1;
      sub_A4194(v94, v95);
      dispatch_group_leave(v111);
    }

    v96 = sub_2CAFE0();
    (*(*(v96 - 8) + 8))(v117, v96);
LABEL_20:

    return;
  }

  if (v57 != enum case for Parse.pommesResponse(_:))
  {
    v107(v104, v109, v17);
    v77 = sub_2CDFE0();
    v78 = sub_2CE680();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_0, v77, v78, "CommonFlowStrategy#makeIntentFromParse received non NLv3IntentPlusServerConversion or NLv3IntentOnly parse", v79, 2u);
    }

    v55(v104, v17);
    v80 = sub_2CB850();
    sub_A3100(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v81 = swift_allocError();
    (*(*(v80 - 8) + 104))(v82, enum case for PlaybackCode.ceGE14(_:), v80);
    v83 = v110;
    swift_beginAccess();
    v84 = *(v83 + 16);
    *(v83 + 16) = v81;
    v85 = *(v83 + 24);
    *(v83 + 24) = 1;
    sub_A4194(v84, v85);
    dispatch_group_leave(v111);
    v49(v117, v36);
    goto LABEL_20;
  }

  v68 = v117;
  (*(v9 + 96))(v117, v36);
  v69 = *v68;
  v70 = v102;
  v107(v102, v109, v17);
  v71 = v69;
  v72 = sub_2CDFE0();
  v73 = sub_2CE690();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138477827;
    *(v74 + 4) = v71;
    *v75 = v71;
    v76 = v71;
    _os_log_impl(&dword_0, v72, v73, "CommonFlowStrategy#makeIntentFromParse received pommesResponse: %{private}@", v74, 0xCu);
    sub_30B8(v75, &unk_34FC00, &unk_2D0150);
  }

  v55(v70, v17);
  (*(*v106 + 272))(v71, sub_A4188, v114);
}

uint64_t sub_A3CA0(uint64_t a1)
{
  v2 = sub_2CA2B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2C9C30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v16 - v13;
  v17 = a1;
  swift_errorRetain();
  sub_20410(&qword_34C6E0, &unk_2D0730);
  if (swift_dynamicCast())
  {
    (*(v8 + 8))(v14, v7);
    return 1;
  }

  v17 = a1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if ((*(v3 + 88))(v6, v2) == enum case for SubmitCommandError.internalError(_:))
    {
      (*(v3 + 96))(v6, v2);
      v16 = *v6;
      if (swift_dynamicCast())
      {
        (*(v8 + 8))(v12, v7);

        return 1;
      }
    }

    else
    {
      (*(v3 + 8))(v6, v2);
    }
  }

  return 0;
}

uint64_t sub_A3F38(void *a1)
{
  if (!a1 || (swift_getAssociatedTypeWitness(), v2 = a1, sub_20410(&unk_34FBF0, &qword_2D1EF0), (swift_dynamicCast() & 1) == 0))
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    goto LABEL_7;
  }

  if (!*(&v6 + 1))
  {
LABEL_7:
    sub_30B8(&v5, &qword_3530A0, &qword_2D1EF8);
    return 0;
  }

  sub_F338(&v5, v8);
  sub_35E0(v8, v8[3]);
  v3 = sub_2CC140();
  sub_306C(v8);
  if (v3)
  {
    return 0x2961667328;
  }

  return 0;
}

void sub_A4194(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_A41AC(a1, a2 & 1);
  }
}

void sub_A41AC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_A41C8(uint64_t a1)
{
  v3 = *(sub_2CDDB0() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 32);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_9FF38(a1, v7, v1 + v4, v8, v9, v11, v12);
}

uint64_t sub_A4294(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

Swift::Int sub_A42EC()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CEF60(v1);
  return sub_2CEF80();
}

Swift::Int sub_A4360()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CEF60(v1);
  return sub_2CEF80();
}

uint64_t ExecuteMusicOnRemoteFlow.exitValue.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_A46B4(v1, v2);
  v3 = sub_A4408(v1, v2);
  sub_A46E8(v1, v2);
  return v3;
}

uint64_t sub_A4408(void *a1, unsigned __int8 a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= 1u)
  {
    swift_errorRetain();
    return a1;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      v9 = a1;
      return a1;
    }

    if (a1)
    {
      return 1;
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v10, v4);
  sub_A46B4(a1, a2);
  v11 = sub_2CDFE0();
  v12 = sub_2CE680();
  sub_A46E8(a1, a2);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    v19 = a1;
    v20 = a2;
    sub_A46B4(a1, a2);
    v15 = sub_2CE2A0();
    v17 = sub_3F08(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v11, v12, "ExecuteMusicOnRemoteFlow ExecuteRemoteFlow exit value being read, but we're still in-progress in state=%s", v13, 0xCu);
    sub_306C(v14);
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

id sub_A46B4(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_errorRetain();
  }

  if (a2 == 2 || a2 == 3)
  {
    return result;
  }

  return result;
}

void sub_A46E8(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
    }
  }

  else
  {
  }
}

uint64_t ExecuteMusicOnRemoteFlow.on(input:)(uint64_t a1)
{
  v3 = sub_20410(&qword_34E480, &qword_2D2280);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + 56);
  if (v7 != 2 && (v7 != 4 || *(v1 + 48)))
  {
    return 0;
  }

  v9 = sub_2CA7B0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v6, a1, v9);
  v8 = 1;
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_inputToExecute;
  swift_beginAccess();
  sub_A4888(v6, v1 + v11);
  swift_endAccess();
  return v8;
}

uint64_t sub_A4888(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_A48F8()
{
  v1 = sub_2CA870();
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  v3 = __chkstk_darwin(v1);
  v23 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_20410(&qword_34E480, &qword_2D2280);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_2CA7B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_inputToExecute;
  swift_beginAccess();
  sub_F3F4(v0 + v16, v10, &qword_34E480, &qword_2D2280);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_2CA790();
    v17 = sub_2CA7D0();
    v18 = *(v24 + 8);
    v18(v6, v1);
    if (!v17)
    {
      v19 = v23;
      sub_2CA790();
      if ((*(v24 + 88))(v19, v1) != enum case for Parse.pommesResponse(_:))
      {
        (*(v12 + 8))(v15, v11);
        v18(v19, v1);
        return 0;
      }

      (*(v24 + 96))(v19, v1);
      v20 = *v19;
      v17 = sub_1B8014();
    }

    (*(v12 + 8))(v15, v11);
    return v17;
  }

  sub_30B8(v10, &qword_34E480, &qword_2D2280);
  return 0;
}

uint64_t ExecuteMusicOnRemoteFlow.execute()(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  v3 = *(*(sub_20410(&qword_34CB78, &unk_2D0D80) - 8) + 64) + 15;
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v4 = *(*(sub_20410(&qword_34CB80, &unk_2D0B30) - 8) + 64) + 15;
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v5 = *(*(sub_20410(&qword_34CB88, &unk_2D0D90) - 8) + 64) + 15;
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v6 = sub_2CCB20();
  v2[74] = v6;
  v7 = *(v6 - 8);
  v2[75] = v7;
  v8 = *(v7 + 64) + 15;
  v2[76] = swift_task_alloc();
  v9 = sub_2CCB30();
  v2[77] = v9;
  v10 = *(v9 - 8);
  v2[78] = v10;
  v11 = *(v10 + 64) + 15;
  v2[79] = swift_task_alloc();
  v12 = sub_2CCAC0();
  v2[80] = v12;
  v13 = *(v12 - 8);
  v2[81] = v13;
  v14 = *(v13 + 64) + 15;
  v2[82] = swift_task_alloc();
  v15 = sub_2CE150();
  v2[83] = v15;
  v16 = *(v15 - 8);
  v2[84] = v16;
  v17 = *(v16 + 64) + 15;
  v2[85] = swift_task_alloc();
  v18 = sub_2CE180();
  v2[86] = v18;
  v19 = *(v18 - 8);
  v2[87] = v19;
  v20 = *(v19 + 64) + 15;
  v2[88] = swift_task_alloc();
  v21 = sub_20410(&qword_34E490, &qword_2D2298);
  v2[89] = v21;
  v22 = *(v21 - 8);
  v2[90] = v22;
  v23 = *(v22 + 64) + 15;
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v24 = *(*(sub_20410(&qword_34E498, &qword_2D22A0) - 8) + 64) + 15;
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v25 = sub_20410(&qword_34E4A0, &qword_2D22A8);
  v2[98] = v25;
  v26 = *(v25 - 8);
  v2[99] = v26;
  v27 = *(v26 + 64) + 15;
  v2[100] = swift_task_alloc();
  v28 = *(*(sub_20410(&qword_34E4A8, &unk_2D22B0) - 8) + 64) + 15;
  v2[101] = swift_task_alloc();
  v29 = sub_2CA2B0();
  v2[102] = v29;
  v30 = *(v29 - 8);
  v2[103] = v30;
  v31 = *(v30 + 64) + 15;
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v32 = *(*(sub_20410(&qword_34E4B0, &qword_2D3520) - 8) + 64) + 15;
  v2[107] = swift_task_alloc();
  v33 = sub_2CE000();
  v2[108] = v33;
  v34 = *(v33 - 8);
  v2[109] = v34;
  v35 = *(v34 + 64) + 15;
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();
  v36 = *(*(sub_20410(&qword_34E480, &qword_2D2280) - 8) + 64) + 15;
  v2[126] = swift_task_alloc();
  v37 = sub_2CA7B0();
  v2[127] = v37;
  v38 = *(v37 - 8);
  v2[128] = v38;
  v39 = *(v38 + 64) + 15;
  v2[129] = swift_task_alloc();

  return _swift_task_switch(sub_A533C, 0, 0);
}

uint64_t sub_A533C()
{
  v117 = v0;
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[61];
  v5 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_inputToExecute;
  swift_beginAccess();
  sub_F3F4(v4 + v5, v3, &qword_34E480, &qword_2D2280);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_30B8(v0[126], &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v6 = v0[111];
    v7 = v0[109];
    v8 = v0[108];
    v9 = sub_3ED0(v8, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v6, v9, v8);
    v10 = sub_2CDFE0();
    v11 = sub_2CE680();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "ExecuteMusicOnRemoteFlow#execute() called with no input to execute? If you are pushing this flow from an existing flow, you must provide an initialInput. If this flow was returned as a main flow from makeFlowFor, something has gone wrong and you should file a radar.", v12, 2u);
    }

    v13 = v0[111];
    v14 = v0[109];
    v15 = v0[108];
    v16 = v0[60];
    v17 = v0[61];

    (*(v14 + 8))(v13, v15);
    v18 = *(v17 + 48);
    *(v17 + 48) = 1;
    v19 = *(v17 + 56);
    *(v17 + 56) = 4;
    sub_A46E8(v18, v19);
    sub_2C9EB0();
    goto LABEL_15;
  }

  (*(v0[128] + 32))(v0[129], v0[126], v0[127]);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = v0[125];
  v21 = v0[109];
  v22 = v0[108];
  v23 = v0[61];
  v24 = sub_3ED0(v22, static Logger.default);
  v0[130] = v24;
  swift_beginAccess();
  v25 = *(v21 + 16);
  v0[131] = v25;
  v0[132] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v20, v24, v22);

  v26 = sub_2CDFE0();
  v27 = sub_2CE660();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[125];
  v30 = v0[109];
  v31 = v0[108];
  if (v28)
  {
    v32 = v0[61];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v116 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_3F08(*(v32 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload), *(v32 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload + 8), &v116);
    _os_log_impl(&dword_0, v26, v27, "ExecuteMusicOnRemoteFlow#execute remoteAssistantId = %s", v33, 0xCu);
    sub_306C(v34);
  }

  v35 = *(v30 + 8);
  v35(v29, v31);
  v0[133] = v35;
  v36 = v0[107];
  v37 = v0[61];
  v38 = sub_2CE4D0();
  (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v37;

  v0[134] = sub_AB8D4(0, 0, v36, &unk_2D22C8, v39);
  v40 = *(v37 + 56);
  if (v40 != 2 && (v40 != 4 || *(v37 + 48)))
  {
    v41 = v0[129];
    v42 = v0[128];
    v43 = v0[127];
    v44 = v0[60];
    sub_2C9EB0();

    (*(v42 + 8))(v41, v43);
LABEL_15:
    v45 = v0[129];
    v46 = v0[126];
    v47 = v0[125];
    v48 = v0[124];
    v49 = v0[123];
    v50 = v0[122];
    v51 = v0[121];
    v52 = v0[120];
    v53 = v0[119];
    v54 = v0[118];
    v78 = v0[117];
    v79 = v0[116];
    v80 = v0[115];
    v81 = v0[114];
    v82 = v0[113];
    v83 = v0[112];
    v84 = v0[111];
    v85 = v0[110];
    v86 = v0[107];
    v87 = v0[106];
    v88 = v0[105];
    v89 = v0[104];
    v90 = v0[101];
    v91 = v0[100];
    v92 = v0[97];
    v93 = v0[96];
    v94 = v0[95];
    v95 = v0[94];
    v96 = v0[93];
    v97 = v0[92];
    v98 = v0[91];
    v99 = v0[88];
    v100 = v0[85];
    v101 = v0[82];
    v102 = v0[79];
    v103 = v0[76];
    v104 = v0[73];
    v105 = v0[72];
    v106 = v0[71];
    v107 = v0[70];
    v108 = v0[69];
    v109 = v0[68];
    v110 = v0[67];
    v111 = v0[66];
    v112 = v0[65];
    v113 = v0[64];
    v114 = v0[63];
    v115 = v0[62];

    v55 = v0[1];

    return v55();
  }

  v57 = sub_2CB460();
  if (!v57)
  {
    v58 = v0[61];
    type metadata accessor for ExecuteMusicOnRemoteFlow();
    sub_B0E78(&qword_34E4B8, type metadata accessor for ExecuteMusicOnRemoteFlow);
    v57 = sub_2CB1A0();
  }

  v0[135] = v57;
  v59 = v0[129];
  v60 = v0[61];
  v61 = *(v60 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload);
  v62 = *(v60 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload + 8);
  sub_2CB130();
  v63 = ExecuteMusicOnRemoteFlow.makeExecuteOnRemoteRequest(input:targetDeviceId:currentRequest:)(v59, v61);
  v0[136] = v63;

  v64 = [v63 remoteExecution];
  if (v64)
  {
    v68 = v64;
    v69 = [v64 executionDeviceAssistantId];

    if (v69)
    {
      v70 = sub_2CE270();
      v72 = v71;
    }

    else
    {
      v70 = 0;
      v72 = 0;
    }

    v73 = v0[61];
    v74 = sub_B0340(v63, v70, v72);
    v0[137] = v74;

    v75 = swift_task_alloc();
    v0[138] = v75;
    *(v75 + 16) = v73;
    *(v75 + 24) = v74;
    v76 = async function pointer to Result<>.init(catching:)[1];
    v77 = swift_task_alloc();
    v0[139] = v77;
    v67 = sub_334A0(0, &qword_34E4C8, SAExecuteOnRemoteResponse_ptr);
    *v77 = v0;
    v77[1] = sub_A5C88;
    v65 = &unk_2D22D8;
    v64 = v0 + 54;
    v66 = v75;
  }

  else
  {
    __break(1u);
  }

  return Result<>.init(catching:)(v64, v65, v66, v67);
}

uint64_t sub_A5C88()
{
  v1 = *(*v0 + 1112);
  v2 = *(*v0 + 1104);
  v4 = *v0;

  return _swift_task_switch(sub_A5DA0, 0, 0);
}

id sub_A5DA0()
{
  v202 = v0;
  v1 = *(v0 + 432);
  *(v0 + 1120) = v1;
  if (*(v0 + 440) == 1)
  {
    v2 = *(v0 + 1056);
    (*(v0 + 1048))(*(v0 + 992), *(v0 + 1040), *(v0 + 864));
    swift_errorRetain();
    v3 = sub_2CDFE0();
    v4 = sub_2CE680();
    sub_A41AC(v1, 1);
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 1064);
    v7 = *(v0 + 992);
    v8 = *(v0 + 872);
    v9 = *(v0 + 864);
    if (v5)
    {
      v197 = *(v0 + 1064);
      v10 = swift_slowAlloc();
      v195 = v7;
      v11 = swift_slowAlloc();
      v201[0] = v11;
      *v10 = 136315138;
      *(v0 + 472) = v1;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v12 = sub_2CE2A0();
      v14 = sub_3F08(v12, v13, v201);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v3, v4, "ExecuteMusicOnRemoteFlow#execute Error submitting SAExecuteOnRemoteRequest: %s", v10, 0xCu);
      sub_306C(v11);

      v197(v195, v9);
    }

    else
    {

      v6(v7, v9);
    }

    v19 = *(v0 + 824);
    v20 = *(v0 + 816);
    v21 = *(v0 + 808);
    v22 = *(v0 + 488);
    v23 = *(v22 + 48);
    *(v22 + 48) = v1;
    v24 = *(v22 + 56);
    *(v22 + 56) = 1;
    swift_errorRetain();
    sub_A46E8(v23, v24);
    *(v0 + 456) = v1;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    v25 = swift_dynamicCast();
    v26 = *(v19 + 56);
    if (v25)
    {
      v27 = *(v0 + 848);
      v28 = *(v0 + 840);
      v29 = *(v0 + 824);
      v30 = *(v0 + 816);
      v31 = *(v0 + 808);
      v26(v31, 0, 1, v30);
      (*(v29 + 32))(v27, v31, v30);
      v32 = *(v29 + 16);
      v32(v28, v27, v30);
      v33 = (*(v29 + 88))(v28, v30);
      v34 = *(v0 + 1056);
      v35 = *(v0 + 1048);
      v36 = *(v0 + 1040);
      v37 = *(v0 + 864);
      if (v33 == enum case for SubmitCommandError.failedResponse(_:))
      {
        v38 = *(v0 + 984);
        v39 = *(v0 + 840);
        (*(*(v0 + 824) + 96))(v39, *(v0 + 816));
        v40 = *v39;
        *(v0 + 1152) = v40;
        v35(v38, v36, v37);
        v41 = v40;
        v42 = sub_2CDFE0();
        v43 = sub_2CE680();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = 134218242;
          *(v44 + 4) = [v41 errorCode];

          *(v44 + 12) = 2112;
          v46 = [v41 reason];
          if (v46)
          {
            v47 = v46;
            v48 = sub_2CE270();
            v50 = v49;

            sub_10C40();
            swift_allocError();
            *v51 = v48;
            v51[1] = v50;
            v46 = _swift_stdlib_bridgeErrorToNSError();
            v52 = v46;
          }

          else
          {
            v52 = 0;
          }

          *(v44 + 14) = v46;
          *v45 = v52;
          _os_log_impl(&dword_0, v42, v43, "ExecuteMusicOnRemoteFlow#execute SubmitCommandError.failedResponse errorCode: %ld, reason: %@", v44, 0x16u);
          sub_30B8(v45, &unk_34FC00, &unk_2D0150);
        }

        else
        {

          v42 = v41;
        }

        v96 = *(v0 + 1064);
        v97 = *(v0 + 984);
        v98 = *(v0 + 872);
        v99 = *(v0 + 864);
        v100 = *(v0 + 800);

        v96(v97, v99);
        sub_20410(&qword_34E4E0, &unk_2D22F0);
        sub_2CD110();
        v101 = [v41 reason];
        if (v101)
        {

          result = [v41 reason];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v102 = result;
          v103 = *(v0 + 800);
          v104 = *(v0 + 784);
          v105 = *(v0 + 776);
          sub_2CE270();

          sub_2CD120();
          *(v0 + 1160) = 0;
          v113 = *(v0 + 776);
          v114 = *(v0 + 768);
          v115 = *(v0 + 720);
          v116 = *(v0 + 712);

          sub_F3F4(v113, v114, &qword_34E498, &qword_2D22A0);
          v117 = *(v115 + 48);
          v118 = v117(v114, 1, v116);
          v119 = *(v0 + 768);
          if (v118 == 1)
          {
            sub_30B8(*(v0 + 768), &qword_34E498, &qword_2D22A0);
          }

          else
          {
            (*(*(v0 + 720) + 32))(*(v0 + 744), *(v0 + 768), *(v0 + 712));
            swift_getKeyPath();
            sub_2CD130();

            v120 = *(v0 + 328);
            v121 = *(v0 + 336);
            v122 = *(v0 + 344);
            v123 = *(v0 + 352);
            v124 = sub_2CE2E0();
            v126 = v125;

            v127 = sub_AC15C(v124, v126);
            if ((v128 & 1) == 0)
            {
              v168 = *(*(v0 + 488) + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_companionNotInRangeErrorCodes);
              v169 = *(v168 + 16);
              v170 = (v168 + 32);
              while (v169)
              {
                v171 = *v170++;
                --v169;
                if (v171 == v127)
                {
                  v172 = swift_task_alloc();
                  *(v0 + 1168) = v172;
                  *v172 = v0;
                  v172[1] = sub_A8F84;
                  v173 = *(v0 + 488);
                  v174 = 0xD00000000000001ELL;
                  v175 = 0x80000000002DBBA0;
                  v176 = 1;
                  goto LABEL_62;
                }
              }
            }

            (*(*(v0 + 720) + 8))(*(v0 + 744), *(v0 + 712));
          }

          v129 = *(v0 + 760);
          v130 = *(v0 + 712);
          sub_F3F4(*(v0 + 776), v129, &qword_34E498, &qword_2D22A0);
          v131 = v117(v129, 1, v130);
          v132 = *(v0 + 760);
          if (v131 == 1)
          {
            sub_30B8(*(v0 + 760), &qword_34E498, &qword_2D22A0);
          }

          else
          {
            (*(*(v0 + 720) + 32))(*(v0 + 736), *(v0 + 760), *(v0 + 712));
            swift_getKeyPath();
            sub_2CD130();

            v133 = *(v0 + 296);
            v134 = *(v0 + 304);
            v135 = *(v0 + 312);
            v136 = *(v0 + 320);
            v137 = sub_2CE2E0();
            v139 = v138;

            v140 = sub_AC15C(v137, v139);
            if ((v141 & 1) == 0)
            {
              v177 = *(*(v0 + 488) + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_companionWifiMismatchErrorCodes);
              v178 = *(v177 + 16);
              v179 = (v177 + 32);
              while (v178)
              {
                v180 = *v179++;
                --v178;
                if (v180 == v140)
                {
                  v181 = swift_task_alloc();
                  *(v0 + 1176) = v181;
                  *v181 = v0;
                  v181[1] = sub_A9474;
                  v182 = *(v0 + 488);
                  v174 = 0x6D73694D69666977;
                  v175 = 0xEC00000068637461;
                  v176 = 2;
                  goto LABEL_62;
                }
              }
            }

            (*(*(v0 + 720) + 8))(*(v0 + 736), *(v0 + 712));
          }

          v142 = *(v0 + 752);
          v143 = *(v0 + 712);
          sub_F3F4(*(v0 + 776), v142, &qword_34E498, &qword_2D22A0);
          v144 = v117(v142, 1, v143);
          v145 = *(v0 + 752);
          if (v144 == 1)
          {
            sub_30B8(*(v0 + 752), &qword_34E498, &qword_2D22A0);
          }

          else
          {
            (*(*(v0 + 720) + 32))(*(v0 + 728), *(v0 + 752), *(v0 + 712));
            swift_getKeyPath();
            sub_2CD130();

            v146 = *(v0 + 264);
            v147 = *(v0 + 272);
            v148 = *(v0 + 280);
            v149 = *(v0 + 288);
            v150 = sub_2CE2E0();
            v152 = v151;

            v153 = sub_AC15C(v150, v152);
            if ((v154 & 1) == 0)
            {
              v183 = *(*(v0 + 488) + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_companionConnectionTimedOut);
              v184 = *(v183 + 16);
              v185 = (v183 + 32);
              while (v184)
              {
                v186 = *v185++;
                --v184;
                if (v186 == v153)
                {
                  v187 = swift_task_alloc();
                  *(v0 + 1184) = v187;
                  *v187 = v0;
                  v187[1] = sub_A9964;
                  v188 = *(v0 + 488);
                  v175 = 0x80000000002DBB80;
                  v176 = 3;
                  goto LABEL_61;
                }
              }
            }

            (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
          }

          v155 = *(v0 + 1056);
          (*(v0 + 1048))(*(v0 + 976), *(v0 + 1040), *(v0 + 864));
          v156 = v41;
          v157 = sub_2CDFE0();
          v158 = sub_2CE680();

          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            *v159 = 138412290;
            v161 = [v156 reason];
            if (v161)
            {
              v162 = v161;
              v163 = sub_2CE270();
              v165 = v164;

              sub_10C40();
              swift_allocError();
              *v166 = v163;
              v166[1] = v165;
              v161 = _swift_stdlib_bridgeErrorToNSError();
              v167 = v161;
            }

            else
            {
              v167 = 0;
            }

            *(v159 + 4) = v161;
            *v160 = v167;
            _os_log_impl(&dword_0, v157, v158, "ExecuteMusicOnRemoteFlow#execute Failed parsing failedResponseReason: %@", v159, 0xCu);
            sub_30B8(v160, &unk_34FC00, &unk_2D0150);
          }

          v189 = *(v0 + 1064);
          v190 = *(v0 + 976);
          v191 = *(v0 + 864);

          v189(v190, v191);
          v92 = "siriForAirPlayGenericError2";
          v93 = swift_task_alloc();
          *(v0 + 1192) = v93;
          *v93 = v0;
          v94 = sub_A9E54;
        }

        else
        {
          v106 = *(v0 + 1056);
          (*(v0 + 1048))(*(v0 + 968), *(v0 + 1040), *(v0 + 864));
          v107 = sub_2CDFE0();
          v108 = sub_2CE680();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            *v109 = 0;
            _os_log_impl(&dword_0, v107, v108, "ExecuteMusicOnRemoteFlow#execute Error parsing failedResponse.reason is nil", v109, 2u);
          }

          v110 = *(v0 + 1064);
          v111 = *(v0 + 968);
          v112 = *(v0 + 864);

          v110(v111, v112);
          v92 = "omain Code=(\\d+)/";
          v93 = swift_task_alloc();
          *(v0 + 1200) = v93;
          *v93 = v0;
          v94 = sub_AA31C;
        }
      }

      else
      {
        v199 = *(v0 + 848);
        v71 = *(v0 + 832);
        v72 = *(v0 + 816);
        v35(*(v0 + 960), v36, v37);
        v32(v71, v199, v72);
        v73 = sub_2CDFE0();
        v74 = sub_2CE680();
        v75 = os_log_type_enabled(v73, v74);
        v76 = *(v0 + 1064);
        v77 = *(v0 + 960);
        v78 = *(v0 + 872);
        v79 = *(v0 + 864);
        v80 = *(v0 + 832);
        v81 = *(v0 + 824);
        v82 = *(v0 + 816);
        if (v75)
        {
          v200 = *(v0 + 960);
          v83 = swift_slowAlloc();
          v196 = v79;
          v84 = swift_slowAlloc();
          v201[0] = v84;
          *v83 = 136315138;
          sub_B0E78(&qword_34E4D8, &type metadata accessor for SubmitCommandError);
          v194 = v76;
          v85 = sub_2CEE70();
          v87 = v86;
          v193 = v74;
          v90 = *(v81 + 8);
          v88 = v81 + 8;
          v89 = v90;
          v90(v80, v82);
          v91 = sub_3F08(v85, v87, v201);

          *(v83 + 4) = v91;
          _os_log_impl(&dword_0, v73, v193, "ExecuteMusicOnRemoteFlow#execute SubmitCommandError %s", v83, 0xCu);
          sub_306C(v84);

          v194(v200, v196);
        }

        else
        {

          v95 = *(v81 + 8);
          v88 = v81 + 8;
          v89 = v95;
          v95(v80, v82);
          v76(v77, v79);
        }

        *(v0 + 1216) = v89;
        *(v0 + 1208) = v88;
        v92 = "siriForAirPlayGenericError5";
        v93 = swift_task_alloc();
        *(v0 + 1224) = v93;
        *v93 = v0;
        v94 = sub_AA7C8;
      }
    }

    else
    {
      v53 = *(v0 + 1056);
      v54 = *(v0 + 1048);
      v55 = *(v0 + 1040);
      v56 = *(v0 + 952);
      v57 = *(v0 + 864);
      v58 = *(v0 + 808);
      v26(v58, 1, 1, *(v0 + 816));
      sub_30B8(v58, &qword_34E4A8, &unk_2D22B0);
      v54(v56, v55, v57);
      swift_errorRetain();
      v59 = sub_2CDFE0();
      v60 = sub_2CE680();
      sub_A41AC(v1, 1);
      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 1064);
      v63 = *(v0 + 952);
      v64 = *(v0 + 872);
      v65 = *(v0 + 864);
      if (v61)
      {
        v198 = *(v0 + 1064);
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v201[0] = v67;
        *v66 = 136315138;
        *(v0 + 464) = v1;
        swift_errorRetain();
        v68 = sub_2CE2A0();
        v70 = sub_3F08(v68, v69, v201);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_0, v59, v60, "ExecuteMusicOnRemoteFlow#execute Error submitting SAExecuteOnRemoteRequest: %s", v66, 0xCu);
        sub_306C(v67);

        v198(v63, v65);
      }

      else
      {

        v62(v63, v65);
      }

      v92 = "NeedsServerExecutionReplacement";
      v93 = swift_task_alloc();
      *(v0 + 1232) = v93;
      *v93 = v0;
      v94 = sub_AAC5C;
    }

    v93[1] = v94;
    v192 = *(v0 + 488);
    v175 = v92 | 0x8000000000000000;
    v176 = 0;
LABEL_61:
    v174 = 0xD00000000000001BLL;
LABEL_62:

    return sub_AD088(v176, v174, v175);
  }

  else
  {
    v15 = *(v0 + 488);
    v16 = sub_A48F8();
    *(v0 + 1128) = v16;
    v17 = swift_task_alloc();
    *(v0 + 1136) = v17;
    *v17 = v0;
    v17[1] = sub_A70E4;

    return sub_B096C(v16);
  }
}

uint64_t sub_A70E4(uint64_t a1)
{
  v2 = *(*v1 + 1136);
  v4 = *v1;
  *(*v1 + 1144) = a1;

  return _swift_task_switch(sub_A71E4, 0, 0);
}

uint64_t sub_A71E4()
{
  v329 = v0;
  v1 = (v0 + 16);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1056);
  (*(v0 + 1048))(*(v0 + 944), *(v0 + 1040), *(v0 + 864));
  v4 = v2;
  v5 = sub_2CDFE0();
  v6 = sub_2CE670();
  sub_A41AC(v2, 0);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1120);
    v321 = *(v0 + 944);
    v325 = *(v0 + 1064);
    v309 = *(v0 + 872);
    v315 = *(v0 + 864);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v328[0] = v9;
    *v8 = 136315138;
    v10 = [v7 description];
    v11 = sub_2CE270();
    v13 = v12;

    sub_A41AC(v7, 0);
    v14 = sub_3F08(v11, v13, v328);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_0, v5, v6, "ExecuteMusicOnRemoteFlow#execute Got response from SAExecuteOnRemoteRequest: %s", v8, 0xCu);
    sub_306C(v9);
    v1 = (v0 + 16);

    v325(v321, v315);
  }

  else
  {
    v15 = *(v0 + 1064);
    v16 = *(v0 + 944);
    v17 = *(v0 + 872);
    v18 = *(v0 + 864);

    v15(v16, v18);
  }

  v19 = *(v0 + 1128);
  v326 = *(v0 + 1056);
  v310 = *(v0 + 1040);
  v316 = *(v0 + 1048);
  v295 = *(v0 + 936);
  v301 = *(v0 + 864);
  v20 = *(v0 + 704);
  v21 = *(v0 + 696);
  v291 = *(v0 + 688);
  v22 = *(v0 + 680);
  v23 = *(v0 + 672);
  v24 = *(v0 + 664);
  v25 = sub_2CBA10();
  v26 = swift_allocObject();
  *(v26 + 16) = v19;
  *(v0 + 48) = sub_B0E18;
  *(v0 + 56) = v26;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_A4294;
  *(v0 + 40) = &unk_333680;
  v27 = _Block_copy(v1);
  v322 = v19;
  sub_2CE160();
  *(v0 + 448) = _swiftEmptyArrayStorage;
  sub_B0E78(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v27);

  (*(v23 + 8))(v22, v24);
  (*(v21 + 8))(v20, v291);
  v28 = *(v0 + 56);

  v316(v295, v310, v301);
  v29 = sub_2CDFE0();
  v30 = sub_2CE690();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "ExecuteMusicOnRemoteFlow#execute saving app selection record...", v31, 2u);
  }

  v32 = *(v0 + 1144);
  v33 = *(v0 + 1064);
  v34 = *(v0 + 936);
  v35 = *(v0 + 872);
  v36 = *(v0 + 864);

  v33(v34, v36);
  v37 = sub_2CC070();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v317 = sub_2CC060();
  sub_2CC2B0();
  v40 = swift_allocBox();
  sub_2CC2A0();
  if (v32)
  {

    v41 = sub_2CCF90();
    if (v42)
    {
      v43 = v41;
      v44 = v42;
      v45 = *(v0 + 1056);
      (*(v0 + 1048))(*(v0 + 928), *(v0 + 1040), *(v0 + 864));

      v46 = sub_2CDFE0();
      v47 = sub_2CE670();

      v48 = os_log_type_enabled(v46, v47);
      v49 = *(v0 + 1064);
      v50 = *(v0 + 928);
      v51 = *(v0 + 872);
      v311 = *(v0 + 864);
      if (v48)
      {
        v302 = *(v0 + 928);
        v52 = v43;
        v53 = swift_slowAlloc();
        v296 = v49;
        v54 = swift_slowAlloc();
        v328[0] = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_3F08(v52, v44, v328);
        _os_log_impl(&dword_0, v46, v47, "AppSelectionContext#saveRecord setting lastBundleIdentifier=%s", v53, 0xCu);
        sub_306C(v54);

        v296(v302, v311);
      }

      else
      {

        v49(v50, v311);
      }

      sub_2CC260();
    }
  }

  v55 = *(v0 + 1144);
  v56 = *(v0 + 1128);
  v57 = *(v0 + 1120);
  sub_2CBC60();
  v58 = *(v0 + 96);
  sub_35E0((v0 + 64), *(v0 + 88));
  v59 = sub_2CBE60();
  v61 = v60;
  sub_306C((v0 + 64));
  sub_2CC0E0();
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = v59;
  *(v62 + 32) = v61;
  *(v62 + 40) = v56;
  *(v62 + 48) = v55;
  *(v62 + 56) = v40;
  *(v62 + 64) = v317;
  *(v62 + 72) = 4;
  *(v62 + 80) = 0;

  v63 = v322;

  sub_2CC0C0();

  v323 = v63;
  if (![v57 result])
  {
    goto LABEL_21;
  }

  objc_opt_self();
  v64 = swift_dynamicCastObjCClass();
  if (!v64)
  {
    swift_unknownObjectRelease();
LABEL_21:
    v89 = *(v0 + 1056);
    (*(v0 + 1048))(*(v0 + 896), *(v0 + 1040), *(v0 + 864));
    v90 = sub_2CDFE0();
    v91 = sub_2CE680();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "ExecuteMusicOnRemoteFlow#execute response is not SAIntentGroupRunSiriKitExecutorCompleted.", v92, 2u);
    }

    v313 = *(v0 + 1064);
    v318 = *(v0 + 1128);
    v93 = *(v0 + 896);
    v94 = *(v0 + 872);
    v95 = *(v0 + 864);
    v96 = v90;
    v97 = *(v0 + 648);
    v98 = *(v0 + 640);
    v99 = *(v0 + 632);
    v100 = *(v0 + 624);
    v254 = *(v0 + 656);
    v263 = *(v0 + 616);
    v101 = *(v0 + 608);
    v102 = *(v0 + 600);
    v271 = *(v0 + 560);
    v277 = *(v0 + 592);
    v292 = *(v0 + 528);
    v298 = *(v0 + 496);
    v285 = *(v0 + 488);

    v313(v93, v95);
    (*(v97 + 104))(v254, enum case for AdditionalMetricsDescription.ModuleName.emorf(_:), v98);
    (*(v100 + 104))(v99, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v263);
    (*(v102 + 104))(v101, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v277);
    sub_2CCAD0();
    (*(v102 + 8))(v101, v277);
    (*(v100 + 8))(v99, v263);
    (*(v97 + 8))(v254, v98);
    sub_EEAC(v285 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_siriKitTaskLoggingProvider, v0 + 104);
    v103 = *(v0 + 128);
    v278 = *(v0 + 136);
    sub_35E0((v0 + 104), v103);
    v104 = enum case for ActivityType.resolveSlotNeedsValue(_:);
    v105 = sub_2C9C20();
    v106 = *(v105 - 8);
    (*(v106 + 104))(v271, v104, v105);
    (*(v106 + 56))(v271, 0, 1, v105);
    v107 = sub_2CA130();
    (*(*(v107 - 8) + 56))(v292, 1, 1, v107);
    v108 = enum case for SiriKitReliabilityCodes.success(_:);
    v109 = sub_2C98F0();
    v110 = *(v109 - 8);
    (*(v110 + 104))(v298, v108, v109);
    (*(v110 + 56))(v298, 0, 1, v109);
    if (v318)
    {
      v111 = v323;
      sub_2CE710();
    }

    v112 = *(v0 + 1144);
    v113 = v318 == 0;
    v114 = *(v0 + 1128);
    v272 = *(v0 + 1088);
    v246 = *(v0 + 1096);
    v255 = *(v0 + 1080);
    v264 = *(v0 + 1072);
    v319 = *(v0 + 1032);
    v115 = *(v0 + 1024);
    v293 = *(v0 + 1120);
    v299 = *(v0 + 1016);
    v116 = *(v0 + 560);
    v117 = *(v0 + 528);
    v118 = *(v0 + 488);
    v119 = *(v0 + 496);
    v120 = *(v0 + 480);
    LOBYTE(v209) = v113;
    sub_2CB4E0();

    sub_30B8(v119, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v117, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v116, &qword_34CB88, &unk_2D0D90);
    sub_306C((v0 + 104));
    v121 = [objc_allocWithZone(SAIntentGroupRunSiriKitExecutorCompleted) init];
    v122 = *(v118 + 48);
    *(v118 + 48) = v121;
    v123 = *(v118 + 56);
    *(v118 + 56) = 3;
    sub_A46E8(v122, v123);
    sub_2C9EB0();

    sub_A41AC(v293, 0);
    (*(v115 + 8))(v319, v299);
    goto LABEL_39;
  }

  v65 = v64;
  v312 = v64;
  if ([v64 needsUserInput])
  {
    v66 = *(v0 + 1056);
    (*(v0 + 1048))(*(v0 + 920), *(v0 + 1040), *(v0 + 864));
    v67 = sub_2CDFE0();
    v68 = sub_2CE670();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_0, v67, v68, "ExecuteMusicOnRemoteFlow#execute remote request is waiting on user input. But follow ups are not currently supported by this flow. Returning .complete()", v69, 2u);
    }

    v297 = *(v0 + 1064);
    v303 = *(v0 + 1128);
    v70 = *(v0 + 920);
    v71 = *(v0 + 872);
    v72 = *(v0 + 864);
    v73 = v67;
    v74 = *(v0 + 648);
    v75 = *(v0 + 640);
    v76 = *(v0 + 632);
    v77 = *(v0 + 624);
    v238 = *(v0 + 656);
    v245 = *(v0 + 616);
    v78 = *(v0 + 608);
    v79 = *(v0 + 600);
    v253 = *(v0 + 584);
    v261 = *(v0 + 592);
    v276 = *(v0 + 552);
    v284 = *(v0 + 520);
    v270 = *(v0 + 488);

    v297(v70, v72);
    (*(v74 + 104))(v238, enum case for AdditionalMetricsDescription.ModuleName.emorf(_:), v75);
    (*(v77 + 104))(v76, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v245);
    (*(v79 + 104))(v78, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v261);
    sub_2CCAD0();
    (*(v79 + 8))(v78, v261);
    (*(v77 + 8))(v76, v245);
    (*(v74 + 8))(v238, v75);
    sub_EEAC(v270 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_siriKitTaskLoggingProvider, v0 + 224);
    v262 = *(v0 + 256);
    sub_35E0((v0 + 224), *(v0 + 248));
    v80 = enum case for ActivityType.resolveSlotNeedsValue(_:);
    v81 = sub_2C9C20();
    v82 = *(v81 - 8);
    (*(v82 + 104))(v253, v80, v81);
    (*(v82 + 56))(v253, 0, 1, v81);
    v83 = sub_2CA130();
    (*(*(v83 - 8) + 56))(v276, 1, 1, v83);
    v84 = enum case for SiriKitReliabilityCodes.success(_:);
    v85 = sub_2C98F0();
    v86 = *(v85 - 8);
    (*(v86 + 104))(v284, v84, v85);
    (*(v86 + 56))(v284, 0, 1, v85);
    v87 = v323;
    if (v303)
    {
      v88 = v323;
      sub_2CE710();
    }

    v171 = *(v0 + 1144);
    v172 = *(v0 + 1128);
    v281 = *(v0 + 1120);
    v235 = *(v0 + 1096);
    v241 = *(v0 + 1080);
    v249 = *(v0 + 1072);
    v258 = *(v0 + 1088);
    v306 = *(v0 + 1032);
    v173 = *(v0 + 1024);
    v288 = *(v0 + 1016);
    v174 = *(v0 + 584);
    v175 = *(v0 + 552);
    v176 = *(v0 + 520);
    v177 = *(v0 + 480);
    v178 = *(v0 + 488);
    sub_2CB4E0();

    sub_30B8(v176, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v175, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v174, &qword_34CB88, &unk_2D0D90);
    v179 = (v0 + 224);
LABEL_38:
    sub_306C(v179);
    v195 = *(v178 + 48);
    *(v178 + 48) = v312;
    v196 = *(v178 + 56);
    *(v178 + 56) = 3;
    swift_unknownObjectRetain();
    sub_A46E8(v195, v196);
    sub_2C9EB0();

    swift_unknownObjectRelease();

    sub_A41AC(v281, 0);
    (*(v173 + 8))(v306, v288);
    goto LABEL_39;
  }

  v124 = [v65 needsServerExecution];
  v125 = *(v0 + 1056);
  v126 = *(v0 + 1048);
  v127 = *(v0 + 1040);
  v128 = *(v0 + 864);
  if (!v124)
  {
    v126(*(v0 + 904), v127, v128);
    v150 = sub_2CDFE0();
    v151 = sub_2CE670();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&dword_0, v150, v151, "ExecuteMusicOnRemoteFlow#execute remote request is not waiting on user input. Will return .complete", v152, 2u);
    }

    v305 = *(v0 + 1128);
    v153 = *(v0 + 1064);
    v154 = *(v0 + 904);
    v155 = *(v0 + 872);
    v156 = *(v0 + 864);
    v234 = *(v0 + 656);
    v157 = v150;
    v158 = *(v0 + 648);
    v159 = *(v0 + 640);
    v160 = *(v0 + 624);
    v240 = *(v0 + 616);
    v248 = *(v0 + 632);
    v161 = *(v0 + 608);
    v162 = *(v0 + 600);
    v257 = *(v0 + 568);
    v267 = *(v0 + 592);
    v280 = *(v0 + 536);
    v287 = *(v0 + 504);
    v274 = *(v0 + 488);

    v153(v154, v156);
    (*(v158 + 104))(v234, enum case for AdditionalMetricsDescription.ModuleName.emorf(_:), v159);
    (*(v160 + 104))(v248, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v240);
    (*(v162 + 104))(v161, enum case for AdditionalMetricsDescription.StatusReason.unknown(_:), v267);
    sub_2CCAD0();
    (*(v162 + 8))(v161, v267);
    (*(v160 + 8))(v248, v240);
    (*(v158 + 8))(v234, v159);
    sub_EEAC(v274 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_siriKitTaskLoggingProvider, v0 + 144);
    v268 = *(v0 + 176);
    sub_35E0((v0 + 144), *(v0 + 168));
    v163 = enum case for ActivityType.completed(_:);
    v164 = sub_2C9C20();
    v165 = *(v164 - 8);
    (*(v165 + 104))(v257, v163, v164);
    (*(v165 + 56))(v257, 0, 1, v164);
    v166 = sub_2CA130();
    (*(*(v166 - 8) + 56))(v280, 1, 1, v166);
    v167 = enum case for SiriKitReliabilityCodes.success(_:);
    v168 = sub_2C98F0();
    v169 = *(v168 - 8);
    (*(v169 + 104))(v287, v167, v168);
    (*(v169 + 56))(v287, 0, 1, v168);
    v87 = v323;
    if (v305)
    {
      v170 = v323;
      sub_2CE710();
    }

    v189 = *(v0 + 1144);
    v190 = *(v0 + 1128);
    v281 = *(v0 + 1120);
    v235 = *(v0 + 1096);
    v243 = *(v0 + 1080);
    v251 = *(v0 + 1072);
    v258 = *(v0 + 1088);
    v306 = *(v0 + 1032);
    v173 = *(v0 + 1024);
    v288 = *(v0 + 1016);
    v191 = *(v0 + 568);
    v192 = *(v0 + 536);
    v193 = *(v0 + 504);
    v194 = *(v0 + 480);
    v178 = *(v0 + 488);
    sub_2CB4E0();

    sub_30B8(v193, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v192, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v191, &qword_34CB88, &unk_2D0D90);
    v179 = (v0 + 144);
    goto LABEL_38;
  }

  v126(*(v0 + 912), v127, v128);
  v129 = sub_2CDFE0();
  v130 = sub_2CE670();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&dword_0, v129, v130, "ExecuteMusicOnRemoteFlow#execute remote request redirected to the server. Will return .unhandled(reason: .needsServerExecution)", v131, 2u);
  }

  v304 = *(v0 + 1128);
  v132 = *(v0 + 1064);
  v133 = *(v0 + 912);
  v134 = *(v0 + 872);
  v135 = *(v0 + 864);
  v233 = *(v0 + 656);
  v136 = v129;
  v137 = *(v0 + 648);
  v138 = *(v0 + 640);
  v139 = *(v0 + 624);
  v239 = *(v0 + 616);
  v247 = *(v0 + 632);
  v140 = *(v0 + 608);
  v141 = *(v0 + 600);
  v256 = *(v0 + 576);
  v265 = *(v0 + 592);
  v279 = *(v0 + 544);
  v286 = *(v0 + 512);
  v273 = *(v0 + 488);

  v132(v133, v135);
  (*(v137 + 104))(v233, enum case for AdditionalMetricsDescription.ModuleName.emorf(_:), v138);
  (*(v139 + 104))(v247, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v239);
  (*(v141 + 104))(v140, enum case for AdditionalMetricsDescription.StatusReason.needsServerExec(_:), v265);
  sub_2CCAD0();
  (*(v141 + 8))(v140, v265);
  (*(v139 + 8))(v247, v239);
  (*(v137 + 8))(v233, v138);
  sub_EEAC(v273 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_siriKitTaskLoggingProvider, v0 + 184);
  v266 = *(v0 + 216);
  sub_35E0((v0 + 184), *(v0 + 208));
  v142 = enum case for ActivityType.needsServerExecution(_:);
  v143 = sub_2C9C20();
  v144 = *(v143 - 8);
  (*(v144 + 104))(v256, v142, v143);
  (*(v144 + 56))(v256, 0, 1, v143);
  v145 = sub_2CA130();
  (*(*(v145 - 8) + 56))(v279, 1, 1, v145);
  v146 = enum case for SiriKitReliabilityCodes.success(_:);
  v147 = sub_2C98F0();
  v148 = *(v147 - 8);
  (*(v148 + 104))(v286, v146, v147);
  (*(v148 + 56))(v286, 0, 1, v147);
  if (v304)
  {
    v149 = v323;
    sub_2CE710();
  }

  v180 = *(v0 + 1144);
  v181 = *(v0 + 1128);
  v282 = *(v0 + 1120);
  v236 = *(v0 + 1096);
  v242 = *(v0 + 1080);
  v250 = *(v0 + 1072);
  v259 = *(v0 + 1088);
  v307 = *(v0 + 1032);
  v182 = *(v0 + 1024);
  v289 = *(v0 + 1016);
  v183 = *(v0 + 576);
  v184 = *(v0 + 544);
  v185 = *(v0 + 512);
  v186 = *(v0 + 480);
  v187 = *(v0 + 488);
  sub_2CB4E0();

  sub_30B8(v185, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v184, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v183, &qword_34CB88, &unk_2D0D90);
  sub_306C((v0 + 184));
  v188 = *(v187 + 48);
  *(v187 + 48) = v312;
  LOBYTE(v183) = *(v187 + 56);
  *(v187 + 56) = 3;
  swift_unknownObjectRetain();
  sub_A46E8(v188, v183);
  sub_2CC230();
  sub_2CC1E0();
  sub_2C9EB0();

  swift_unknownObjectRelease();

  sub_A41AC(v282, 0);
  (*(v182 + 8))(v307, v289);
LABEL_39:
  v197 = *(v0 + 1032);
  v198 = *(v0 + 1008);
  v199 = *(v0 + 1000);
  v200 = *(v0 + 992);
  v201 = *(v0 + 984);
  v202 = *(v0 + 976);
  v203 = *(v0 + 968);
  v204 = *(v0 + 960);
  v205 = *(v0 + 952);
  v206 = *(v0 + 944);
  v210 = *(v0 + 936);
  v211 = *(v0 + 928);
  v212 = *(v0 + 920);
  v213 = *(v0 + 912);
  v214 = *(v0 + 904);
  v215 = *(v0 + 896);
  v216 = *(v0 + 888);
  v217 = *(v0 + 880);
  v218 = *(v0 + 856);
  v219 = *(v0 + 848);
  v220 = *(v0 + 840);
  v221 = *(v0 + 832);
  v222 = *(v0 + 808);
  v223 = *(v0 + 800);
  v224 = *(v0 + 776);
  v225 = *(v0 + 768);
  v226 = *(v0 + 760);
  v227 = *(v0 + 752);
  v228 = *(v0 + 744);
  v229 = *(v0 + 736);
  v230 = *(v0 + 728);
  v231 = *(v0 + 704);
  v232 = *(v0 + 680);
  v237 = *(v0 + 656);
  v244 = *(v0 + 632);
  v252 = *(v0 + 608);
  v260 = *(v0 + 584);
  v269 = *(v0 + 576);
  v275 = *(v0 + 568);
  v283 = *(v0 + 560);
  v290 = *(v0 + 552);
  v294 = *(v0 + 544);
  v300 = *(v0 + 536);
  v308 = *(v0 + 528);
  v314 = *(v0 + 520);
  v320 = *(v0 + 512);
  v324 = *(v0 + 504);
  v327 = *(v0 + 496);

  v207 = *(v0 + 8);

  return v207();
}

uint64_t sub_A8F84()
{
  v1 = *(*v0 + 1168);
  v3 = *v0;

  return _swift_task_switch(sub_A9080, 0, 0);
}

uint64_t sub_A9080()
{
  v68 = *(v0 + 848);
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);
  v7 = *(v0 + 744);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);

  (*(v8 + 8))(v7, v9);
  sub_30B8(v6, &qword_34E498, &qword_2D22A0);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v68, v2);
  v10 = *(v0 + 1120);
  v11 = *(v0 + 1096);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1080);
  v14 = *(v0 + 1072);
  v15 = *(v0 + 1032);
  v16 = *(v0 + 1024);
  v17 = *(v0 + 1016);
  v18 = *(v0 + 480);
  sub_2C9EB0();

  sub_A41AC(v10, 1);
  (*(v16 + 8))(v15, v17);
  v19 = *(v0 + 1032);
  v20 = *(v0 + 1008);
  v21 = *(v0 + 1000);
  v22 = *(v0 + 992);
  v23 = *(v0 + 984);
  v24 = *(v0 + 976);
  v25 = *(v0 + 968);
  v26 = *(v0 + 960);
  v27 = *(v0 + 952);
  v28 = *(v0 + 944);
  v31 = *(v0 + 936);
  v32 = *(v0 + 928);
  v33 = *(v0 + 920);
  v34 = *(v0 + 912);
  v35 = *(v0 + 904);
  v36 = *(v0 + 896);
  v37 = *(v0 + 888);
  v38 = *(v0 + 880);
  v39 = *(v0 + 856);
  v40 = *(v0 + 848);
  v41 = *(v0 + 840);
  v42 = *(v0 + 832);
  v43 = *(v0 + 808);
  v44 = *(v0 + 800);
  v45 = *(v0 + 776);
  v46 = *(v0 + 768);
  v47 = *(v0 + 760);
  v48 = *(v0 + 752);
  v49 = *(v0 + 744);
  v50 = *(v0 + 736);
  v51 = *(v0 + 728);
  v52 = *(v0 + 704);
  v53 = *(v0 + 680);
  v54 = *(v0 + 656);
  v55 = *(v0 + 632);
  v56 = *(v0 + 608);
  v57 = *(v0 + 584);
  v58 = *(v0 + 576);
  v59 = *(v0 + 568);
  v60 = *(v0 + 560);
  v61 = *(v0 + 552);
  v62 = *(v0 + 544);
  v63 = *(v0 + 536);
  v64 = *(v0 + 528);
  v65 = *(v0 + 520);
  v66 = *(v0 + 512);
  v67 = *(v0 + 504);
  v69 = *(v0 + 496);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_A9474()
{
  v1 = *(*v0 + 1176);
  v3 = *v0;

  return _swift_task_switch(sub_A9570, 0, 0);
}

uint64_t sub_A9570()
{
  v68 = *(v0 + 848);
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);
  v7 = *(v0 + 736);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);

  (*(v8 + 8))(v7, v9);
  sub_30B8(v6, &qword_34E498, &qword_2D22A0);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v68, v2);
  v10 = *(v0 + 1120);
  v11 = *(v0 + 1096);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1080);
  v14 = *(v0 + 1072);
  v15 = *(v0 + 1032);
  v16 = *(v0 + 1024);
  v17 = *(v0 + 1016);
  v18 = *(v0 + 480);
  sub_2C9EB0();

  sub_A41AC(v10, 1);
  (*(v16 + 8))(v15, v17);
  v19 = *(v0 + 1032);
  v20 = *(v0 + 1008);
  v21 = *(v0 + 1000);
  v22 = *(v0 + 992);
  v23 = *(v0 + 984);
  v24 = *(v0 + 976);
  v25 = *(v0 + 968);
  v26 = *(v0 + 960);
  v27 = *(v0 + 952);
  v28 = *(v0 + 944);
  v31 = *(v0 + 936);
  v32 = *(v0 + 928);
  v33 = *(v0 + 920);
  v34 = *(v0 + 912);
  v35 = *(v0 + 904);
  v36 = *(v0 + 896);
  v37 = *(v0 + 888);
  v38 = *(v0 + 880);
  v39 = *(v0 + 856);
  v40 = *(v0 + 848);
  v41 = *(v0 + 840);
  v42 = *(v0 + 832);
  v43 = *(v0 + 808);
  v44 = *(v0 + 800);
  v45 = *(v0 + 776);
  v46 = *(v0 + 768);
  v47 = *(v0 + 760);
  v48 = *(v0 + 752);
  v49 = *(v0 + 744);
  v50 = *(v0 + 736);
  v51 = *(v0 + 728);
  v52 = *(v0 + 704);
  v53 = *(v0 + 680);
  v54 = *(v0 + 656);
  v55 = *(v0 + 632);
  v56 = *(v0 + 608);
  v57 = *(v0 + 584);
  v58 = *(v0 + 576);
  v59 = *(v0 + 568);
  v60 = *(v0 + 560);
  v61 = *(v0 + 552);
  v62 = *(v0 + 544);
  v63 = *(v0 + 536);
  v64 = *(v0 + 528);
  v65 = *(v0 + 520);
  v66 = *(v0 + 512);
  v67 = *(v0 + 504);
  v69 = *(v0 + 496);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_A9964()
{
  v1 = *(*v0 + 1184);
  v3 = *v0;

  return _swift_task_switch(sub_A9A60, 0, 0);
}

uint64_t sub_A9A60()
{
  v68 = *(v0 + 848);
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);
  v7 = *(v0 + 728);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);

  (*(v8 + 8))(v7, v9);
  sub_30B8(v6, &qword_34E498, &qword_2D22A0);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v68, v2);
  v10 = *(v0 + 1120);
  v11 = *(v0 + 1096);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1080);
  v14 = *(v0 + 1072);
  v15 = *(v0 + 1032);
  v16 = *(v0 + 1024);
  v17 = *(v0 + 1016);
  v18 = *(v0 + 480);
  sub_2C9EB0();

  sub_A41AC(v10, 1);
  (*(v16 + 8))(v15, v17);
  v19 = *(v0 + 1032);
  v20 = *(v0 + 1008);
  v21 = *(v0 + 1000);
  v22 = *(v0 + 992);
  v23 = *(v0 + 984);
  v24 = *(v0 + 976);
  v25 = *(v0 + 968);
  v26 = *(v0 + 960);
  v27 = *(v0 + 952);
  v28 = *(v0 + 944);
  v31 = *(v0 + 936);
  v32 = *(v0 + 928);
  v33 = *(v0 + 920);
  v34 = *(v0 + 912);
  v35 = *(v0 + 904);
  v36 = *(v0 + 896);
  v37 = *(v0 + 888);
  v38 = *(v0 + 880);
  v39 = *(v0 + 856);
  v40 = *(v0 + 848);
  v41 = *(v0 + 840);
  v42 = *(v0 + 832);
  v43 = *(v0 + 808);
  v44 = *(v0 + 800);
  v45 = *(v0 + 776);
  v46 = *(v0 + 768);
  v47 = *(v0 + 760);
  v48 = *(v0 + 752);
  v49 = *(v0 + 744);
  v50 = *(v0 + 736);
  v51 = *(v0 + 728);
  v52 = *(v0 + 704);
  v53 = *(v0 + 680);
  v54 = *(v0 + 656);
  v55 = *(v0 + 632);
  v56 = *(v0 + 608);
  v57 = *(v0 + 584);
  v58 = *(v0 + 576);
  v59 = *(v0 + 568);
  v60 = *(v0 + 560);
  v61 = *(v0 + 552);
  v62 = *(v0 + 544);
  v63 = *(v0 + 536);
  v64 = *(v0 + 528);
  v65 = *(v0 + 520);
  v66 = *(v0 + 512);
  v67 = *(v0 + 504);
  v69 = *(v0 + 496);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_A9E54()
{
  v1 = *(*v0 + 1192);
  v3 = *v0;

  return _swift_task_switch(sub_A9F50, 0, 0);
}

uint64_t sub_A9F50()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 800);
  v5 = *(v0 + 792);
  v6 = *(v0 + 784);
  v7 = *(v0 + 776);

  sub_30B8(v7, &qword_34E498, &qword_2D22A0);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = *(v0 + 1120);
  v9 = *(v0 + 1096);
  v10 = *(v0 + 1088);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1072);
  v13 = *(v0 + 1032);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1016);
  v16 = *(v0 + 480);
  sub_2C9EB0();

  sub_A41AC(v8, 1);
  (*(v14 + 8))(v13, v15);
  v17 = *(v0 + 1032);
  v18 = *(v0 + 1008);
  v19 = *(v0 + 1000);
  v20 = *(v0 + 992);
  v21 = *(v0 + 984);
  v22 = *(v0 + 976);
  v23 = *(v0 + 968);
  v24 = *(v0 + 960);
  v25 = *(v0 + 952);
  v26 = *(v0 + 944);
  v29 = *(v0 + 936);
  v30 = *(v0 + 928);
  v31 = *(v0 + 920);
  v32 = *(v0 + 912);
  v33 = *(v0 + 904);
  v34 = *(v0 + 896);
  v35 = *(v0 + 888);
  v36 = *(v0 + 880);
  v37 = *(v0 + 856);
  v38 = *(v0 + 848);
  v39 = *(v0 + 840);
  v40 = *(v0 + 832);
  v41 = *(v0 + 808);
  v42 = *(v0 + 800);
  v43 = *(v0 + 776);
  v44 = *(v0 + 768);
  v45 = *(v0 + 760);
  v46 = *(v0 + 752);
  v47 = *(v0 + 744);
  v48 = *(v0 + 736);
  v49 = *(v0 + 728);
  v50 = *(v0 + 704);
  v51 = *(v0 + 680);
  v52 = *(v0 + 656);
  v53 = *(v0 + 632);
  v54 = *(v0 + 608);
  v55 = *(v0 + 584);
  v56 = *(v0 + 576);
  v57 = *(v0 + 568);
  v58 = *(v0 + 560);
  v59 = *(v0 + 552);
  v60 = *(v0 + 544);
  v61 = *(v0 + 536);
  v62 = *(v0 + 528);
  v63 = *(v0 + 520);
  v64 = *(v0 + 512);
  v65 = *(v0 + 504);
  v66 = *(v0 + 496);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_AA31C()
{
  v1 = *(*v0 + 1200);
  v3 = *v0;

  return _swift_task_switch(sub_AA418, 0, 0);
}

uint64_t sub_AA418()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 800);
  v5 = *(v0 + 792);
  v6 = *(v0 + 784);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 1120);
  v8 = *(v0 + 1096);
  v9 = *(v0 + 1088);
  v10 = *(v0 + 1080);
  v11 = *(v0 + 1072);
  v12 = *(v0 + 1032);
  v13 = *(v0 + 1024);
  v14 = *(v0 + 1016);
  v15 = *(v0 + 480);
  sub_2C9EB0();

  sub_A41AC(v7, 1);
  (*(v13 + 8))(v12, v14);
  v16 = *(v0 + 1032);
  v17 = *(v0 + 1008);
  v18 = *(v0 + 1000);
  v19 = *(v0 + 992);
  v20 = *(v0 + 984);
  v21 = *(v0 + 976);
  v22 = *(v0 + 968);
  v23 = *(v0 + 960);
  v24 = *(v0 + 952);
  v25 = *(v0 + 944);
  v28 = *(v0 + 936);
  v29 = *(v0 + 928);
  v30 = *(v0 + 920);
  v31 = *(v0 + 912);
  v32 = *(v0 + 904);
  v33 = *(v0 + 896);
  v34 = *(v0 + 888);
  v35 = *(v0 + 880);
  v36 = *(v0 + 856);
  v37 = *(v0 + 848);
  v38 = *(v0 + 840);
  v39 = *(v0 + 832);
  v40 = *(v0 + 808);
  v41 = *(v0 + 800);
  v42 = *(v0 + 776);
  v43 = *(v0 + 768);
  v44 = *(v0 + 760);
  v45 = *(v0 + 752);
  v46 = *(v0 + 744);
  v47 = *(v0 + 736);
  v48 = *(v0 + 728);
  v49 = *(v0 + 704);
  v50 = *(v0 + 680);
  v51 = *(v0 + 656);
  v52 = *(v0 + 632);
  v53 = *(v0 + 608);
  v54 = *(v0 + 584);
  v55 = *(v0 + 576);
  v56 = *(v0 + 568);
  v57 = *(v0 + 560);
  v58 = *(v0 + 552);
  v59 = *(v0 + 544);
  v60 = *(v0 + 536);
  v61 = *(v0 + 528);
  v62 = *(v0 + 520);
  v63 = *(v0 + 512);
  v64 = *(v0 + 504);
  v65 = *(v0 + 496);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_AA7C8()
{
  v1 = *(*v0 + 1224);
  v3 = *v0;

  return _swift_task_switch(sub_AA8C4, 0, 0);
}

uint64_t sub_AA8C4()
{
  v1 = v0[152];
  v2 = v0[151];
  v3 = v0[105];
  v4 = v0[102];
  v1(v0[106], v4);
  v1(v3, v4);
  v5 = v0[140];
  v6 = v0[137];
  v7 = v0[136];
  v8 = v0[135];
  v9 = v0[134];
  v10 = v0[129];
  v11 = v0[128];
  v12 = v0[127];
  v13 = v0[60];
  sub_2C9EB0();

  sub_A41AC(v5, 1);
  (*(v11 + 8))(v10, v12);
  v14 = v0[129];
  v15 = v0[126];
  v16 = v0[125];
  v17 = v0[124];
  v18 = v0[123];
  v19 = v0[122];
  v20 = v0[121];
  v21 = v0[120];
  v22 = v0[119];
  v23 = v0[118];
  v26 = v0[117];
  v27 = v0[116];
  v28 = v0[115];
  v29 = v0[114];
  v30 = v0[113];
  v31 = v0[112];
  v32 = v0[111];
  v33 = v0[110];
  v34 = v0[107];
  v35 = v0[106];
  v36 = v0[105];
  v37 = v0[104];
  v38 = v0[101];
  v39 = v0[100];
  v40 = v0[97];
  v41 = v0[96];
  v42 = v0[95];
  v43 = v0[94];
  v44 = v0[93];
  v45 = v0[92];
  v46 = v0[91];
  v47 = v0[88];
  v48 = v0[85];
  v49 = v0[82];
  v50 = v0[79];
  v51 = v0[76];
  v52 = v0[73];
  v53 = v0[72];
  v54 = v0[71];
  v55 = v0[70];
  v56 = v0[69];
  v57 = v0[68];
  v58 = v0[67];
  v59 = v0[66];
  v60 = v0[65];
  v61 = v0[64];
  v62 = v0[63];
  v63 = v0[62];

  v24 = v0[1];

  return v24();
}