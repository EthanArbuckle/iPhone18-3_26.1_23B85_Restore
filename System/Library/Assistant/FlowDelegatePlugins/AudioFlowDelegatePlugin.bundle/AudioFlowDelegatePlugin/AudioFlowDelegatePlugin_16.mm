uint64_t sub_1CC64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa_1();

  return NeedsValueFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_1CC6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa_1();

  return NeedsValueFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_1CC774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = _s18NeedsValueStrategyCMa_1();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_1CC7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = _s18NeedsValueStrategyCMa_1();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_1CC88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = _s18NeedsValueStrategyCMa_1();
  *v15 = v7;
  v15[1] = sub_E664;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_1CC970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = async function pointer to ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)[1];
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = _s18NeedsValueStrategyCMa_1();
  *v17 = v8;
  v17[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v18, a8);
}

uint64_t sub_1CCAAC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v242 = a6;
  v243 = a5;
  v240 = a4;
  v238 = a2;
  v235 = a1;
  v7 = sub_20410(&qword_34CC98, &unk_2D3120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v217 = &v215 - v9;
  v223 = sub_2CE0A0();
  v222 = *(v223 - 8);
  v10 = *(v222 + 64);
  __chkstk_darwin(v223);
  v12 = &v215 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_20410(&qword_3544D8, &unk_2D6620);
  v13 = *(*(v241 - 8) + 64);
  v14 = __chkstk_darwin(v241);
  v225 = &v215 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v237 = (&v215 - v16);
  v248 = sub_2CA870();
  v17 = *(v248 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v248);
  v226 = &v215 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v239 = (&v215 - v22);
  __chkstk_darwin(v21);
  v24 = &v215 - v23;
  v25 = sub_2CE000();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = __chkstk_darwin(v25);
  v30 = &v215 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v220 = &v215 - v32;
  v33 = __chkstk_darwin(v31);
  v233 = &v215 - v34;
  v35 = __chkstk_darwin(v33);
  v219 = &v215 - v36;
  v37 = __chkstk_darwin(v35);
  v227 = &v215 - v38;
  v39 = __chkstk_darwin(v37);
  v230 = &v215 - v40;
  v41 = __chkstk_darwin(v39);
  v218 = &v215 - v42;
  v43 = __chkstk_darwin(v41);
  v229 = &v215 - v44;
  v45 = __chkstk_darwin(v43);
  v228 = &v215 - v46;
  v47 = __chkstk_darwin(v45);
  v224 = &v215 - v48;
  __chkstk_darwin(v47);
  v50 = &v215 - v49;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v221 = v12;
  v51 = sub_3ED0(v25, static Logger.default);
  swift_beginAccess();
  v52 = v26[2];
  v246 = v51;
  v245 = v26 + 2;
  v247 = v52;
  v52(v50, v51, v25);

  v53 = sub_2CDFE0();
  v54 = sub_2CE690();

  v55 = os_log_type_enabled(v53, v54);
  v232 = a3;
  v244 = v26;
  if (v55)
  {
    v56 = v17;
    v57 = v26;
    v58 = v25;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = a3;
    v62 = v60;
    *&v256 = v60;
    *v59 = 136446210;
    *(v59 + 4) = sub_3F08(v238, v61, &v256);
    _os_log_impl(&dword_0, v53, v54, "AddMediaNeedsValueStrategy#parseResponseValue parameter: %{public}s", v59, 0xCu);
    sub_306C(v62);

    v25 = v58;
    v26 = v57;
    v17 = v56;
  }

  v63 = v26[1];
  v63(v50, v25);
  sub_2CA790();
  v64 = sub_D2F98(v24, &v253);
  v65 = *(v17 + 8);
  v65(v24, v248, v64);
  if (v255)
  {
    v236 = v25;
    sub_420A4(&v253, &v256);
    sub_35E0(&v256, v257);
    v66 = sub_2CD760();
    if (v66[2])
    {
      v67 = v66[5];
      v215 = v66[4];
      v231 = v67;
    }

    else
    {
      v215 = 0;
      v231 = 0;
    }

    v216 = v65;
    v234 = v63;

    [v235 copy];
    sub_2CEC00();
    swift_unknownObjectRelease();
    v76 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v252 = 0;
    }

    v77 = v239;
    sub_2CA790();
    v78 = *(v17 + 88);
    v79 = v248;
    v80 = v78(v77, v248);
    v81 = enum case for Parse.NLv3IntentPlusServerConversion(_:);
    if (v80 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      (*(v17 + 96))(v77, v79);
      v82 = *(v77 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
      v83 = sub_2CA830();
      objc_opt_self();
      v84 = swift_dynamicCastObjCClass();
      if (!v84)
      {

        v121 = v224;
        v122 = v236;
        v247(v224, v246, v236);
        v123 = sub_2CDFE0();
        v124 = sub_2CE670();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&dword_0, v123, v124, "AddMediaNeedsValueStrategy#parseResponseValue Ignorning non-server-conversion parse", v125, 2u);
          v122 = v236;
        }

        v234(v121, v122);
        v126 = sub_2CB850();
        sub_1CEAF8(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
        v127 = swift_allocError();
        (*(*(v126 - 8) + 104))(v128, enum case for PlaybackCode.ceGE2(_:), v126);
        v129 = v237;
        *v237 = v127;
        swift_storeEnumTagMultiPayload();
        v243(v129);

        sub_30B8(v129, &qword_3544D8, &unk_2D6620);
        v130 = sub_2CAFE0();
        (*(*(v130 - 8) + 8))(v77, v130);
        goto LABEL_85;
      }

      v85 = v84;

      v86 = v252;
      v252 = v85;

      v87 = sub_2CAFE0();
      (*(*(v87 - 8) + 8))(v77, v87);
      v88 = v236;
      v89 = v232;
      goto LABEL_53;
    }

    v224 = v76;
    v90 = enum case for Parse.pommesResponse(_:);
    if (v80 == enum case for Parse.pommesResponse(_:))
    {
      v91 = v239;
      (*(v17 + 96))(v239, v79);
      v92 = *v91;
      v93 = sub_1B7F14();
      if (!v93)
      {

        v142 = v218;
        v247(v218, v246, v236);
        v143 = sub_2CDFE0();
        v144 = sub_2CE680();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          *v145 = 0;
          _os_log_impl(&dword_0, v143, v144, "AddMediaNeedsValueStrategy#parseResponseValue pommesResponse contains no AudioExperience", v145, 2u);
        }

        v234(v142, v236);
        v146 = sub_2CB850();
        sub_1CEAF8(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
        v147 = swift_allocError();
        (*(*(v146 - 8) + 104))(v148, enum case for PlaybackCode.ceGE3(_:), v146);
        v149 = v237;
        *v237 = v147;
        swift_storeEnumTagMultiPayload();
        v243(v149);

        goto LABEL_74;
      }

      v94 = v93;
      v95 = v257;
      v96 = v258;
      v97 = sub_35E0(&v256, v257);
      v98 = sub_17FF0C(v97, 0, 0, v95, v96);
      sub_2CDBC0();
      sub_2CDBB0();
      sub_2CDAE0();
      v99 = sub_2CDBA0();

      v248 = v99;
      v100 = sub_232644(v94);
      v247(v228, v246, v236);
      v101 = v100;
      v102 = sub_2CDFE0();
      v103 = sub_2CE670();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v104 = 138412290;
        *(v104 + 4) = v101;
        *v105 = v101;
        v106 = v101;
        _os_log_impl(&dword_0, v102, v103, "AddMediaNeedsValueStrategy#parseResponseValue Updating privateAddMediaIntentData with: %@", v104, 0xCu);
        sub_30B8(v105, &unk_34FC00, &unk_2D0150);
      }

      v234(v228, v236);
      if (v252)
      {
        v107 = v252;
        v108 = [v107 backingStore];
        objc_opt_self();
        v109 = swift_dynamicCastObjCClass();
        if (v109)
        {
          v110 = v109;
          v111 = INIntentSlotValueTransformToPrivateAddMediaIntentData();
          [v110 setPrivateAddMediaIntentData:v111];
        }

        else
        {
          v111 = v107;
          v107 = v108;
        }
      }

      v247(v229, v246, v236);
      v150 = v98;
      v151 = sub_2CDFE0();
      v152 = sub_2CE670();

      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        *v153 = 138412290;
        *(v153 + 4) = v150;
        *v154 = v150;
        v155 = v150;
        _os_log_impl(&dword_0, v151, v152, "AddMediaNeedsValueStrategy#parseResponseValue Updating media search with: %@", v153, 0xCu);
        sub_30B8(v154, &unk_34FC00, &unk_2D0150);
      }

      v234(v229, v236);
      v156 = v252;
      if (!v252)
      {

        v88 = v236;
        v89 = v232;
LABEL_52:
        v76 = v224;
LABEL_53:

        v165 = sub_2C5C50(v238, v89);
        v166 = v233;
        switch(v165)
        {
          case 8:

            v181 = v220;
            v247(v220, v246, v88);

            v182 = sub_2CDFE0();
            v183 = sub_2CE680();

            if (os_log_type_enabled(v182, v183))
            {
              v184 = swift_slowAlloc();
              v185 = swift_slowAlloc();
              *&v251 = v185;
              *v184 = 136315138;
              *(v184 + 4) = sub_3F08(v238, v89, &v251);
              _os_log_impl(&dword_0, v182, v183, "AddMediaNeedsValueStrategy#parseConfirmationResponse unexpected parameter: %s", v184, 0xCu);
              sub_306C(v185);
            }

            v234(v181, v88);
            v186 = sub_2CB850();
            sub_1CEAF8(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
            v187 = swift_allocError();
            v189 = v188;
            v190 = &enum case for PlaybackCode.ceGE5(_:);
            break;
          case 1:
            v224 = v76;
            v171 = v215;
            if (!v231)
            {
              v171 = 0;
            }

            v172 = 0xE000000000000000;
            if (v231)
            {
              v172 = v231;
            }

            v173 = v221;
            *v221 = v171;
            v173[1] = v172;
            v174 = v222;
            v175 = v223;
            (*(v222 + 104))(v173, enum case for INMediaDestination.playlist(_:), v223);
            v255 = v175;
            v176 = sub_F390(&v253);
            v177 = *(v174 + 16);
            v177(v176, v173, v175);
            v178 = v252;
            if (v252)
            {
              v179 = v217;
              v177(v217, v173, v175);
              (*(v174 + 56))(v179, 0, 1, v175);
              v180 = v178;
              sub_72E4C(v179);

              sub_30B8(v179, &qword_34CC98, &unk_2D3120);
            }

            (*(v174 + 8))(v173, v175);
            goto LABEL_78;
          case 0:

            if (v252 && (v167 = [v252 mediaItems]) != 0)
            {
              v168 = v167;
              sub_334A0(0, &qword_356F50, INMediaItem_ptr);
              v169 = sub_2CE410();

              v170 = sub_20410(&qword_34CFA8, &unk_2D0FD0);
              if (v169)
              {
LABEL_77:
                v253 = v169;
                v254 = v251;
                v255 = v170;
LABEL_78:
                v247(v166, v246, v88);
                sub_F3F4(&v253, &v251, &qword_34CEA0, &qword_2D0FC0);
                v200 = sub_2CDFE0();
                v201 = sub_2CE690();
                if (os_log_type_enabled(v200, v201))
                {
                  v202 = swift_slowAlloc();
                  v203 = swift_slowAlloc();
                  v250 = v203;
                  *v202 = 136446210;
                  sub_F3F4(&v251, v249, &qword_34CEA0, &qword_2D0FC0);
                  sub_20410(&qword_34CEA0, &qword_2D0FC0);
                  v204 = sub_2CE2A0();
                  v206 = v205;
                  sub_30B8(&v251, &qword_34CEA0, &qword_2D0FC0);
                  v207 = sub_3F08(v204, v206, &v250);

                  *(v202 + 4) = v207;
                  _os_log_impl(&dword_0, v200, v201, "AddMediaNeedsValueStrategy#parseResponseValue returning with: %{public}s", v202, 0xCu);
                  sub_306C(v203);

                  v208 = v166;
                  v209 = v236;
                }

                else
                {

                  sub_30B8(&v251, &qword_34CEA0, &qword_2D0FC0);
                  v208 = v166;
                  v209 = v88;
                }

                v234(v208, v209);
                sub_F3F4(&v253, &v251, &qword_34CEA0, &qword_2D0FC0);
                v210 = v252;
                if (!v252)
                {
                  v211 = v235;
                  v210 = 0;
                }

                v212 = v210;
                v213 = v225;
                sub_2CA220();
                v214 = sub_20410(&qword_3544E0, &unk_2D6630);
                (*(*(v214 - 8) + 56))(v213, 0, 1, v214);
                swift_storeEnumTagMultiPayload();
                v243(v213);
                sub_30B8(v213, &qword_3544D8, &unk_2D6620);
                v197 = &qword_34CEA0;
                v198 = &qword_2D0FC0;
                v199 = &v253;
                goto LABEL_84;
              }
            }

            else
            {
              v170 = sub_20410(&qword_34CFA8, &unk_2D0FD0);
            }

            v169 = _swiftEmptyArrayStorage;
            goto LABEL_77;
          default:

            v191 = v219;
            v247(v219, v246, v88);

            v192 = sub_2CDFE0();
            v193 = sub_2CE680();

            if (os_log_type_enabled(v192, v193))
            {
              v194 = swift_slowAlloc();
              v195 = swift_slowAlloc();
              *&v251 = v195;
              *v194 = 136315138;
              *(v194 + 4) = sub_3F08(v238, v89, &v251);
              _os_log_impl(&dword_0, v192, v193, "AddMediaNeedsValueStrategy#parseResponseValue Unexpected parameter:%s", v194, 0xCu);
              sub_306C(v195);
            }

            v234(v191, v88);
            v186 = sub_2CB850();
            sub_1CEAF8(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
            v187 = swift_allocError();
            v189 = v196;
            v190 = &enum case for PlaybackCode.ceGE6(_:);
            break;
        }

        (*(*(v186 - 8) + 104))(v189, *v190, v186);
        v149 = v237;
        *v237 = v187;
        swift_storeEnumTagMultiPayload();
        v243(v149);
LABEL_74:
        v197 = &qword_3544D8;
        v198 = &unk_2D6620;
        v199 = v149;
LABEL_84:
        sub_30B8(v199, v197, v198);
LABEL_85:

        return sub_306C(&v256);
      }

      objc_opt_self();
      v157 = swift_dynamicCastObjCClass();
      v158 = v150;
      v159 = v156;
      v160 = [v159 backingStore];
      v89 = v232;
      if (v157)
      {
        objc_opt_self();
        v161 = swift_dynamicCastObjCClass();
        if (v161)
        {
          goto LABEL_49;
        }
      }

      else
      {
        objc_opt_self();
        v161 = swift_dynamicCastObjCClass();
        if (v161)
        {
LABEL_49:
          v162 = v161;
          v163 = v89;
          v164 = INIntentSlotValueTransformToMediaSearch();
          [v162 setMediaSearch:v164];

          v89 = v163;

LABEL_51:
          v88 = v236;
          goto LABEL_52;
        }
      }

      goto LABEL_51;
    }

    v112 = v226;
    sub_2CA790();
    v113 = v248;
    v114 = v78(v112, v248);
    v115 = v234;
    if (v114 == v81)
    {
      (*(v17 + 96))(v112, v113);
      v116 = *&v112[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];

      v117 = sub_2CAFE0();
      (*(*(v117 - 8) + 8))(v112, v117);
      v118 = v236;
      v119 = v227;
      v120 = v216;
    }

    else
    {
      v131 = v114;
      v120 = v216;
      v216(v112, v113);
      v118 = v236;
      v119 = v227;
      if (v131 != v90)
      {
LABEL_33:
        v247(v119, v246, v118);
        v135 = sub_2CDFE0();
        v136 = sub_2CE690();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          *v137 = 0;
          _os_log_impl(&dword_0, v135, v136, "AddMediaNeedsValueStrategy#parseResponseValue intent not of right type", v137, 2u);
        }

        v115(v119, v118);
        v138 = sub_2CB850();
        sub_1CEAF8(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
        v139 = swift_allocError();
        (*(*(v138 - 8) + 104))(v140, enum case for PlaybackCode.ceGE4(_:), v138);
        v141 = v237;
        *v237 = v139;
        swift_storeEnumTagMultiPayload();
        v243(v141);
        sub_30B8(v141, &qword_3544D8, &unk_2D6620);
        v120(v239, v248);
        goto LABEL_85;
      }
    }

    v247(v230, v246, v118);
    v132 = sub_2CDFE0();
    v133 = sub_2CE680();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_0, v132, v133, "AddMediaNeedsValueStrategy#parseResponseValue and AddMediaNeedsValueStrategy#actionForInput parse handling need to be the same!", v134, 2u);
      v115 = v234;
    }

    v115(v230, v118);
    goto LABEL_33;
  }

  sub_30B8(&v253, &qword_34CF98, &unk_2D1A40);
  v247(v30, v246, v25);
  v68 = sub_2CDFE0();
  v69 = sub_2CE690();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_0, v68, v69, "AddMediaNeedsValueStrategy#parseResponseValue received invalid NL intent", v70, 2u);
  }

  v63(v30, v25);
  v71 = sub_2CB850();
  sub_1CEAF8(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
  v72 = swift_allocError();
  (*(*(v71 - 8) + 104))(v73, enum case for PlaybackCode.ceGE1(_:), v71);
  v74 = v237;
  *v237 = v72;
  swift_storeEnumTagMultiPayload();
  v243(v74);
  return sub_30B8(v74, &qword_3544D8, &unk_2D6620);
}

uint64_t sub_1CEAF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t GuardedFlow.State.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x456F547964616572;
  }

  return 0x6574656C706D6F63;
}

uint64_t sub_1CEBB0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE00657475636578;
  v3 = 0x456F547964616572;
  v4 = *a1;
  v5 = 0x6574656C706D6F63;
  v6 = 0xE900000000000064;
  if (v4 == 1)
  {
    v5 = 0x456F547964616572;
    v6 = 0xEE00657475636578;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000000002DA3B0;
  }

  if (*a2 != 1)
  {
    v3 = 0x6574656C706D6F63;
    v2 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000000002DA3B0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2CEEA0();
  }

  return v11 & 1;
}

Swift::Int sub_1CECBC()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_1CED74()
{
  *v0;
  *v0;
  sub_2CE310();
}

Swift::Int sub_1CEE18()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_1CEECC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s23AudioFlowDelegatePlugin07GuardedB0C5StateO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1CEEFC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00657475636578;
  v4 = 0x456F547964616572;
  if (v2 != 1)
  {
    v4 = 0x6574656C706D6F63;
    v3 = 0xE900000000000064;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x80000000002DA3B0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1CEF74(char a1)
{
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  if (a1)
  {
    *(v1 + 24) = 2;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v11 = sub_3ED0(v3, static Logger.default);
    swift_beginAccess();
    (*(v4 + 16))(v10, v11, v3);
    v12 = sub_2CDFE0();
    v13 = sub_2CE660();
    if (!os_log_type_enabled(v12, v13))
    {
      v8 = v10;
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "GuardedFlow#processGuardFlowExitValue returned a fail result", v14, 2u);
    v8 = v10;
    goto LABEL_10;
  }

  *(v1 + 24) = 1;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v4 + 16))(v8, v15, v3);
  v12 = sub_2CDFE0();
  v16 = sub_2CE660();
  if (os_log_type_enabled(v12, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v12, v16, "GuardedFlow#processGuardFlowExitValue called the callback", v17, 2u);
LABEL_10:
  }

LABEL_12:

  return (*(v4 + 8))(v8, v3);
}

uint64_t GuardedFlow.execute()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_2CE000();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1CF2FC, 0, 0);
}

uint64_t sub_1CF2FC()
{
  v1 = v0[7];
  if (*(v1 + 24))
  {
    v2 = v0[6];
    if (*(v1 + 24) == 1)
    {
      v3 = *(v1 + 16);
      sub_2C9EA0();
    }

    else
    {
      sub_2C9EB0();
    }
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[8];
    v7 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v4, v7, v6);
    v8 = sub_2CDFE0();
    v9 = sub_2CE660();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "GuardedFlow#execute executing flow with guards", v10, 2u);
    }

    v12 = v0[9];
    v11 = v0[10];
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];

    (*(v12 + 8))(v11, v13);
    v16 = *(v14 + 32);
    v0[5] = sub_2C93A0();
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1CF91C;
    *(v17 + 24) = v14;
    sub_2C95F0();

    sub_2C9E80();
  }

  v18 = v0[10];

  v19 = v0[1];

  return v19();
}

uint64_t GuardedFlow.execute(completion:)()
{
  type metadata accessor for GuardedFlow();
  sub_1CF974();
  return sub_2C97C0();
}

uint64_t GuardedFlow.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t GuardedFlow.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF5F8()
{
  v2 = *v0;
  type metadata accessor for GuardedFlow();
  return sub_2C97C0();
}

uint64_t sub_1CF654(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E664;

  return GuardedFlow.execute()(a1);
}

uint64_t sub_1CF6F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GuardedFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t _s23AudioFlowDelegatePlugin07GuardedB0C5StateO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3308B0;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t _s23AudioFlowDelegatePlugin07GuardedB0C2on5inputSb07SiriKitB05InputV_tF_0()
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
  v7 = sub_2CE660();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "GuardedFlow#on", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return 1;
}

uint64_t sub_1CF924(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_1CF974()
{
  result = qword_3524A8;
  if (!qword_3524A8)
  {
    type metadata accessor for GuardedFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3524A8);
  }

  return result;
}

unint64_t sub_1CF9CC()
{
  result = qword_3544E8;
  if (!qword_3544E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3544E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GuardedFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GuardedFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1CFB70(void *a1, void *a2)
{
  v3 = v2;
  v74 = a2;
  v5 = sub_2CAA00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20410(&qword_34CC90, qword_2D40E0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v73 - v17;
  sub_2CD700();
  v75 = a1;
  sub_2CDA40();
  (*(v6 + 56))(v18, 0, 1, v5);
  v19 = sub_2CD600();
  if (v19)
  {
    v20 = sub_62CF4(v19, 0, 0);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v21 = [v3 backingStore];
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      v23 = v75;
      if (v22)
      {
        v24 = v22;
        v25 = INIntentSlotValueTransformToMediaSearch();
        [v24 setMediaSearch:v25];
      }

      else
      {
        v25 = v20;
        v20 = v21;
      }

      sub_2CDBC0();
      sub_2CDBB0();
      sub_2CDBA0();

      v41 = sub_2CDB80();
      v43 = v42;
      v44 = sub_2CDB60();
      v46 = sub_230B38(v41, v43, v44, v45);

      v47 = [v3 backingStore];
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      v49 = &_sSS4hash4intoys6HasherVz_tF_ptr;
      if (v48)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    v23 = v75;
    if (v37)
    {
      v38 = v3;
      v39 = [v3 backingStore];
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
LABEL_23:
        v58 = v40;
        v59 = INIntentSlotValueTransformToMediaSearch();
        [v58 setMediaSearch:v59];

        goto LABEL_28;
      }

      v59 = v20;
      v20 = v39;
    }

    else
    {
      objc_opt_self();
      v57 = swift_dynamicCastObjCClass();
      v39 = [v3 backingStore];
      if (!v57)
      {
        objc_opt_self();
        v60 = swift_dynamicCastObjCClass();
        if (v60)
        {
          v61 = v60;
          v62 = INIntentSlotValueTransformToMediaSearch();
          [v61 setMediaSearch:v62];
        }

        else
        {
          v62 = v20;
          v20 = v39;
        }

        sub_2CDBC0();
        sub_2CDBB0();
        sub_2CDBA0();

        v68 = sub_2CDB80();
        v70 = v69;
        v71 = sub_2CDB60();
        v46 = sub_230B38(v68, v70, v71, v72);

        v47 = [v3 backingStore];
        v49 = &_sSS4hash4intoys6HasherVz_tF_ptr;
        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (v48)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v38 = v3;
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        goto LABEL_23;
      }

      v59 = v20;
      v20 = v39;
    }

LABEL_28:

    sub_2CDBC0();
    sub_2CDBB0();
    sub_2CDBA0();

    v63 = sub_2CDB80();
    v65 = v64;
    v66 = sub_2CDB60();
    v46 = sub_230B38(v63, v65, v66, v67);

    v47 = [v38 backingStore];
    objc_opt_self();
    v48 = swift_dynamicCastObjCClass();
    v3 = v38;
    v49 = &_sSS4hash4intoys6HasherVz_tF_ptr;
    if (v48)
    {
LABEL_17:
      [v48 setIntentMetadata:v46];

      v50 = sub_22F9F8(v23);
      v51 = [v3 backingStore];
      v52 = v49[316];
      objc_opt_self();
      v53 = swift_dynamicCastObjCClass();
      if (v53)
      {
        v54 = v53;
        v55 = INIntentSlotValueTransformToPrivateSearchForMediaIntentData();
        [v54 setPrivateSearchForMediaIntentData:v55];
      }

      else
      {
      }

      return v3;
    }

LABEL_16:

    goto LABEL_17;
  }

  v73[1] = v9;
  v74 = v3;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v27 = v11;
  (*(v11 + 16))(v14, v26, v10);
  v28 = v75;
  v29 = sub_2CDFE0();
  v30 = sub_2CE680();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v75 = v27;
    v76 = v32;
    v33 = v32;
    *v31 = 136315138;
    sub_2CDA40();
    v34 = sub_2CE2A0();
    v36 = sub_3F08(v34, v35, &v76);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_0, v29, v30, "INSearchForMediaIntent#amend unable to construct AudioUsoIntent from userDialogAct: %s", v31, 0xCu);
    sub_306C(v33);

    (*(v75 + 1))(v14, v10);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  return v74;
}

void sub_1D04A0()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 internalSignals];

    if (v3)
    {
      v4 = sub_2CE410();

      v5 = (v4 + 40);
      v6 = -*(v4 + 16);
      v7 = -1;
      while (1)
      {
        if (v6 + v7 == -1)
        {
LABEL_7:

          return;
        }

        if (++v7 >= *(v4 + 16))
        {
          break;
        }

        v8 = v5 + 2;
        v10 = *(v5 - 1);
        v11 = *v5;
        sub_B96A0();
        v9 = sub_2CEBF0();
        v5 = v8;
        if (v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }
  }
}

id sub_1D05F0(SEL *a1)
{
  result = [v1 mediaItems];
  if (result)
  {
    v4 = result;
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v5 = sub_2CE410();

    if (v5 >> 62)
    {
      result = sub_2CEDA0();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_4:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v6 = *(v5 + 32);
        }

        v7 = v6;

        v8 = [v7 *a1];

        if (v8)
        {
          v9 = sub_2CE270();

          return v9;
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

id sub_1D0718()
{
  v1 = sub_2CE000();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v42 - v8;
  __chkstk_darwin(v7);
  v11 = v42 - v10;
  result = [v0 privatePlayMediaIntentData];
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = [result internalSignals];

  if (!v14)
  {
    return 0;
  }

  v15 = sub_2CE410();

  if (sub_1D2278())
  {

    if (qword_34BF58 != -1)
    {
LABEL_30:
      swift_once();
    }

    v16 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    (v2[2])(v11, v16, v1);
    v17 = sub_2CDFE0();
    v18 = sub_2CE660();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "INPlayMediaIntent#PlayNlsContainer false: playing from library", v19, 2u);
    }

    (v2[1])(v11, v1);
    return 0;
  }

  sub_2CCF90();
  v20 = sub_2CBDB0();

  if ((v20 & 1) == 0)
  {

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    (v2[2])(v6, v30, v1);

    v31 = sub_2CDFE0();
    v32 = sub_2CE660();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = sub_2CCF90();
      if (v36)
      {
        v37 = v35;
        v38 = v36;
        sub_10C40();
        swift_allocError();
        *v39 = v37;
        v39[1] = v38;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v41 = v40;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      *(v33 + 4) = v40;
      *v34 = v41;
      _os_log_impl(&dword_0, v31, v32, "INPlayMediaIntent#PlayNlsContainer false: playing on 3p app %@", v33, 0xCu);
      sub_30B8(v34, &unk_34FC00, &unk_2D0150);
    }

    (v2[1])(v6, v1);
    return 0;
  }

  v42[0] = v2;
  v21 = (v15 + 40);
  v11 = -*(v15 + 16);
  v22 = -1;
  do
  {
    if (&v11[v22] == -1)
    {

      return 0;
    }

    if (++v22 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v2 = v21 + 2;
    v23 = *v21;
    v42[3] = *(v21 - 1);
    v42[4] = v23;
    v42[1] = 0xD000000000000010;
    v42[2] = 0x80000000002DEDB0;
    sub_B96A0();
    v24 = sub_2CEBF0();
    v21 = v2;
  }

  while ((v24 & 1) == 0);

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v1, static Logger.default);
  swift_beginAccess();
  v26 = v42[0];
  (*(v42[0] + 16))(v9, v25, v1);
  v27 = sub_2CDFE0();
  v28 = sub_2CE660();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "INPlayMediaIntent#PlayNlsContainer true", v29, 2u);
  }

  (*(v26 + 8))(v9, v1);
  return &dword_0 + 1;
}

uint64_t sub_1D0CF0()
{
  v1 = v0;
  v2 = sub_2CB8E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CB900();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for PlaybackItem.Scheme.library(_:), v7);
  v12 = sub_2CB8F0();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v31 = v12;
  v32 = v14;
  v33._countAndFlagsBits = 3092282;
  v33._object = 0xE300000000000000;
  sub_2CE350(v33);
  (*(v3 + 104))(v6, enum case for PlaybackItem.ContentOrigin.wholelibrary(_:), v2);
  v15 = sub_2CB8D0();
  v17 = v16;
  (*(v3 + 8))(v6, v2);
  v34._countAndFlagsBits = v15;
  v34._object = v17;
  sub_2CE350(v34);

  v35._countAndFlagsBits = 47;
  v35._object = 0xE100000000000000;
  sub_2CE350(v35);
  v19 = v31;
  v18 = v32;
  v20 = [v1 mediaItems];
  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = v20;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v22 = sub_2CE410();

  if (!(v22 >> 62))
  {
    result = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  result = sub_2CEDA0();
  if (!result)
  {
LABEL_12:

LABEL_13:

    LOBYTE(v26) = 0;
    return v26 & 1;
  }

LABEL_4:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = sub_2CECD0();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
  {
    v24 = *(v22 + 32);
LABEL_7:
    v25 = v24;

    v26 = [v25 identifier];

    if (v26)
    {
      v27 = sub_2CE270();
      v29 = v28;

      v31 = v27;
      v32 = v29;
      v30[0] = v19;
      v30[1] = v18;
      sub_F18AC();
      sub_F1900();
      LOBYTE(v26) = sub_2CE230();
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

id sub_1D1060()
{
  v0 = sub_1D05F0(&selRef_title);
  if (!v1)
  {
    return sub_1D05F0(&selRef_title);
  }

  v2 = v0;
  sub_B96A0();
  v3 = sub_2CEBD0();
  v4 = v2;
  v5 = sub_2CE320();
  result = sub_2CE320();
  if (__OFSUB__(v5, result))
  {
    __break(1u);
  }

  else if (v5 - result <= 34 || sub_2CE320() <= 5)
  {

    return v4;
  }

  else
  {

    return v3;
  }

  return result;
}

id sub_1D119C()
{
  v0 = sub_1D05F0(&selRef_artist);
  if (!v1)
  {
    return sub_1D05F0(&selRef_artist);
  }

  v2 = v0;
  sub_1D05F0(&selRef_title);
  if (!v3)
  {
    sub_1D05F0(&selRef_title);
    if (!v6)
    {
      return v2;
    }

    goto LABEL_10;
  }

  sub_B96A0();
  sub_2CEBD0();
  v4 = sub_2CE320();
  result = sub_2CE320();
  if (!__OFSUB__(v4, result))
  {
    if (v4 - result >= 35)
    {
      sub_2CE320();
    }

LABEL_10:
    if (sub_2CE320() > 59)
    {
    }

    else
    {
      sub_B96A0();
      v7 = sub_2CEBF0();

      if ((v7 & 1) == 0)
      {
        return v2;
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1380()
{
  v1 = sub_1D2364(&off_330098);
  sub_F1954(&unk_3300B8);
  if (v1)
  {
    goto LABEL_9;
  }

  v2 = [v0 mediaSearch];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v2 sortOrder];

  if (v4 != &dword_0 + 1)
  {
    goto LABEL_9;
  }

  v5 = [v0 mediaSearch];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mediaType];
  }

  else
  {
    v7 = 0;
  }

  if (sub_1953FC(v7, v6 == 0, &off_3300C8))
  {
    v8 = sub_2CE710();
    v9 = vdupq_n_s64(v8);
    v10 = vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_330158, v9), vceqq_s64(unk_330168, v9)))) | (v8 == 5);
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10 & 1;
}

id sub_1D14A0()
{
  result = [v0 mediaItems];
  if (result)
  {
    v2 = result;
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v3 = sub_2CE410();

    if (v3 >> 62)
    {
      result = sub_2CEDA0();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_4:
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v4 = *(v3 + 32);
        }

        v5 = v4;

        v6 = [v5 privateMediaItemValueData];

        if (v6)
        {
          v7 = [v6 provider];

          if (v7)
          {
            v8 = sub_2CE270();

            return v8;
          }
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

id sub_1D15EC()
{
  result = [v0 mediaSearch];
  if (result)
  {
    v2 = result;
    v3 = [result genreNames];

    if (v3)
    {
      v4 = sub_2CE410();

      if (v4[2])
      {
        v6 = v4[4];
        v5 = v4[5];

        return v6;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D16A0()
{
  v1 = [v0 privatePlayMediaIntentData];
  v2 = [v1 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v3.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v2)
  {
    v4 = sub_2CEB30();

    v3.super.super.isa = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D1750()
{
  v1 = sub_2CE000();
  v102 = *(v1 - 8);
  v2 = *(v102 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v94 - v7;
  v9 = __chkstk_darwin(v6);
  v97 = &v94 - v10;
  __chkstk_darwin(v9);
  v96 = &v94 - v11;
  v12 = sub_20410(&qword_3545D8, qword_2D6838);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v94 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v94 - v21;
  __chkstk_darwin(v20);
  v24 = &v94 - v23;
  v25 = sub_2C8CB0();
  v26 = *(v25 - 8);
  v100 = v25;
  v101 = v26;
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v98 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v99 = &v94 - v30;
  v31 = sub_1D2364(&off_3301B0);
  sub_F1954(&unk_3301D0);
  if (v31)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v32 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    v33 = v102;
    (*(v102 + 16))(v5, v32, v1);
    v34 = sub_2CDFE0();
    v35 = sub_2CE660();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "INPlayMediaIntent#isQueryStationDecade returning true with internal signal QueryStationDecade", v36, 2u);
    }

    (*(v33 + 8))(v5, v1);
    return 1;
  }

  v38 = sub_1D2364(&off_3301E0);
  sub_F1954(&unk_330200);
  if ((v38 & 1) == 0)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v47 = sub_3ED0(v1, static Logger.default);
    swift_beginAccess();
    v48 = v102;
    (*(v102 + 16))(v8, v47, v1);
    v49 = sub_2CDFE0();
    v50 = sub_2CE660();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "INPlayMediaIntent#isQueryStationDecade not returning false with internal signal QueryStationEditorial", v51, 2u);
    }

    (*(v48 + 8))(v8, v1);
    return 0;
  }

  v39 = [v0 mediaSearch];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 releaseDate];

    if (v41)
    {
      v42 = [v41 startDateComponents];

      if (v42)
      {
        sub_2C8C60();

        v43 = v101;
        v44 = *(v101 + 56);
        v45 = v22;
        v46 = 0;
      }

      else
      {
        v43 = v101;
        v44 = *(v101 + 56);
        v45 = v22;
        v46 = 1;
      }

      v52 = v100;
      v95 = v44;
      v44(v45, v46, 1, v100);
      sub_1D266C(v22, v24);
      v53 = (v43 + 48);
      v54 = *(v43 + 48);
      if (v54(v24, 1, v52) == 1)
      {
        goto LABEL_21;
      }

      v57 = *(v43 + 32);
      v56 = v43 + 32;
      v94 = v57;
      v57(v99, v24, v52);
      v58 = [v0 mediaSearch];
      if (!v58 || (v59 = v58, v60 = [v58 releaseDate], v59, v52 = v100, !v60))
      {
        (*(v101 + 8))(v99, v52);
        v95(v19, 1, 1, v52);
LABEL_32:
        v55 = v19;
        goto LABEL_22;
      }

      v61 = [v60 endDateComponents];

      if (v61)
      {
        sub_2C8C60();

        v62 = 0;
      }

      else
      {
        v62 = 1;
      }

      v63 = v101;
      v95(v16, v62, 1, v52);
      sub_1D266C(v16, v19);
      if (v54(v19, 1, v52) == 1)
      {
        (*(v63 + 8))(v99, v52);
        goto LABEL_32;
      }

      v64 = v98;
      v94(v98, v19, v52);
      v65 = sub_2C8C80();
      if (v66)
      {
        v67 = 0;
      }

      else
      {
        v67 = v65;
      }

      v68 = sub_2C8C80();
      if (v69)
      {
        v70 = 0;
      }

      else
      {
        v70 = v68;
      }

      v71 = __OFSUB__(v67, v70);
      v72 = v67 - v70;
      if (v71)
      {
        __break(1u);
      }

      else
      {
        v56 = v102;
        v53 = v97;
        if (v72 == 9)
        {
          v73 = sub_2C8C90();
          if ((v74 & 1) == 0 && v73 == 1)
          {
            v75 = sub_2C8C70();
            if ((v76 & 1) == 0 && v75 == 1)
            {
              v77 = sub_2C8C90();
              if ((v78 & 1) == 0 && v77 == 12)
              {
                v79 = sub_2C8C70();
                if ((v80 & 1) == 0 && v79 == 31)
                {
                  if (qword_34BF58 != -1)
                  {
                    swift_once();
                  }

                  v81 = sub_3ED0(v1, static Logger.default);
                  swift_beginAccess();
                  v82 = v96;
                  (*(v56 + 16))(v96, v81, v1);
                  v83 = sub_2CDFE0();
                  v84 = sub_2CE660();
                  if (os_log_type_enabled(v83, v84))
                  {
                    v85 = swift_slowAlloc();
                    *v85 = 0;
                    _os_log_impl(&dword_0, v83, v84, "INPlayMediaIntent#isQueryStationDecade returning true with internal signal QueryStationEditorial,  startDateComponents and endDateComponents", v85, 2u);
                  }

                  (*(v56 + 8))(v82, v1);
                  v86 = v100;
                  v87 = *(v101 + 8);
                  v87(v64, v100);
                  v87(v99, v86);
                  return 1;
                }
              }
            }
          }
        }

        if (qword_34BF58 == -1)
        {
          goto LABEL_55;
        }
      }

      swift_once();
LABEL_55:
      v88 = sub_3ED0(v1, static Logger.default);
      swift_beginAccess();
      (*(v56 + 16))(v53, v88, v1);
      v89 = sub_2CDFE0();
      v90 = sub_2CE660();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_0, v89, v90, "INPlayMediaIntent#isQueryStationDecade not returning false as releaseDate matches that of a decade", v91, 2u);
      }

      (*(v56 + 8))(v53, v1);
      v92 = v100;
      v93 = *(v101 + 8);
      v93(v64, v100);
      v93(v99, v92);
      return 0;
    }
  }

  (*(v101 + 56))(v24, 1, 1, v100);
LABEL_21:
  v55 = v24;
LABEL_22:
  sub_30B8(v55, &qword_3545D8, qword_2D6838);
  return 0;
}

id sub_1D21B0()
{
  result = [v0 privatePlayMediaIntentData];
  if (result)
  {
    v2 = result;
    v3 = [result privateMediaIntentData];

    if (v3 && (v4 = [v3 speakerIDInfo], v3, v4))
    {
      if ([v4 speakerIDConfidence] == &dword_4 + 1)
      {

        return &dword_0 + 1;
      }

      else
      {
        v5 = [v4 speakerIDConfidence];

        return (v5 == &dword_4);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D2278()
{
  v1 = [v0 mediaItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v3 = sub_2CE410();

  if (v3 >> 62)
  {
    result = sub_2CEDA0();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = sub_2CECD0();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    v5 = *(v3 + 32);
LABEL_7:
    v6 = v5;

    v7 = sub_2CE5D0();

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2364(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      v6 = [v1 mediaItems];
      if (!v6)
      {
        goto LABEL_3;
      }

      v7 = v6;
      sub_334A0(0, &qword_356F50, INMediaItem_ptr);
      v8 = sub_2CE410();

      if (v8 >> 62)
      {
        result = sub_2CEDA0();
        if (!result)
        {
LABEL_16:

LABEL_3:

          goto LABEL_4;
        }
      }

      else
      {
        result = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
        if (!result)
        {
          goto LABEL_16;
        }
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v10 = sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v10 = *(v8 + 32);
      }

      v11 = v10;

      v12 = [v11 privateMediaItemValueData];

      if (!v12)
      {
        goto LABEL_3;
      }

      v13 = [v12 internalSignals];

      if (!v13)
      {
        goto LABEL_3;
      }

      v14 = sub_2CE410();

      v18 = &v18;
      v19[0] = v4;
      v19[1] = v5;
      __chkstk_darwin(v15);
      v17[2] = v19;
      v16 = sub_13964(sub_13A68, v17, v14);

      if (v16)
      {
        return 1;
      }

LABEL_4:
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return 0;
}

BOOL sub_1D25D4()
{
  v1 = *v0;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  return sub_2CC140() && !sub_2CC000();
}

uint64_t sub_1D266C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_3545D8, qword_2D6838);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D26DC(uint64_t a1, char a2, void *a3)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v35 - v12;
  if (a2)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v14 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v11, v14, v6);
    swift_errorRetain();
    v15 = sub_2CDFE0();
    v16 = sub_2CE680();
    sub_1D33E8(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_0, v15, v16, "SiriRemembersAPI#saveToMemory Donation failed with %@", v17, 0xCu);
      sub_212CC(v18);
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v13, v21, v6);
    v22 = a3;
    v23 = sub_2CDFE0();
    v24 = sub_2CE670();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315138;
      v27 = [v22 identifier];
      if (v27)
      {
        v28 = v27;
        v29 = sub_2CE270();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      v35[0] = v29;
      v35[1] = v31;
      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v32 = sub_2CE2A0();
      v34 = sub_3F08(v32, v33, &v36);

      *(v25 + 4) = v34;
      _os_log_impl(&dword_0, v23, v24, "SiriRemembersAPI#saveToMemory success for intent with uuid %s", v25, 0xCu);
      sub_306C(v26);
    }

    return (*(v7 + 8))(v13, v6);
  }
}

uint64_t sub_1D2AC4(void *a1)
{
  v2 = sub_2CE000();
  v59 = *(v2 - 8);
  v3 = *(v59 + 64);
  v4 = __chkstk_darwin(v2);
  v5 = __chkstk_darwin(v4);
  v7 = &v54 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v54 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v54 - v12;
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = sub_2CB0E0();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v23 = &v54 - v22;
  if (a1)
  {
    v58 = v21;
    v24 = a1;
    if (sub_2CE730())
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v25 = sub_3ED0(v2, static Logger.default);
      swift_beginAccess();
      v26 = v59;
      (*(v59 + 16))(v10, v25, v2);
      v27 = sub_2CDFE0();
      v28 = sub_2CE690();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "SiriRemembersAPI#saveToMemory suppressing as app is inferred", v29, 2u);
      }

      else
      {
      }

      return (*(v26 + 8))(v10, v2);
    }

    else
    {
      v36 = sub_2CE6E0();
      if (v36)
      {
        v37 = v36;
        v38 = [objc_allocWithZone(INInteraction) initWithIntent:v36 response:0];
        [v38 _setDonatedBySiri:1];
        sub_2CE600();
        v57 = v38;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v44 = sub_3ED0(v2, static Logger.default);
        swift_beginAccess();
        v45 = v59;
        (*(v59 + 16))(v15, v44, v2);
        v46 = sub_2CDFE0();
        v56 = sub_2CE690();
        if (os_log_type_enabled(v46, v56))
        {
          v47 = swift_slowAlloc();
          v54 = v47;
          v55 = swift_slowAlloc();
          v60 = v55;
          *v47 = 136315138;
          swift_beginAccess();
          (*(v58 + 16))(v20, v23, v16);
          v48 = sub_2CE2A0();
          v50 = sub_3F08(v48, v49, &v60);

          v51 = v54;
          *(v54 + 1) = v50;
          _os_log_impl(&dword_0, v46, v56, "SiriRemembersAPI#saveToMemory saving with donation %s", v51, 0xCu);
          sub_306C(v55);
        }

        (*(v45 + 8))(v15, v2);
        v52 = v58;
        swift_beginAccess();
        *(swift_allocObject() + 16) = v24;
        v53 = v24;
        sub_2CB0D0();

        return (*(v52 + 8))(v23, v16);
      }

      else
      {
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v39 = sub_3ED0(v2, static Logger.default);
        swift_beginAccess();
        v40 = v59;
        (*(v59 + 16))(v13, v39, v2);
        v41 = sub_2CDFE0();
        v42 = sub_2CE680();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_0, v41, v42, "SiriRemembersAPI#saveToMemory Error getting donations", v43, 2u);
        }

        else
        {
        }

        return (*(v40 + 8))(v13, v2);
      }
    }
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    v31 = v59;
    (*(v59 + 16))(v7, v30, v2);
    v32 = sub_2CDFE0();
    v33 = sub_2CE690();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "SiriRemembersAPI#saveToMemory no media intent to save", v34, 2u);
    }

    return (*(v31 + 8))(v7, v2);
  }
}

uint64_t sub_1D33E8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D33F4()
{
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  sub_285EC(&static StringsBackedAppNameResolver.shared, v7);
  sub_2CB4A0();
  v0 = sub_2CB490();

  sub_2C9A00();
  type metadata accessor for SearchForMediaFlowStrategy();
  v1 = swift_allocObject();
  sub_EEAC(v6, v5);
  sub_285EC(v7, v4);
  v2 = sub_1D3850(v4, v0, v5, v1);

  sub_306C(v6);
  result = sub_28648(v7);
  qword_35F7D0 = v2;
  return result;
}

uint64_t sub_1D34E8()
{
  result = sub_10E8F4();
  qword_35F7D8 = result;
  return result;
}

id sub_1D3508()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  v5 = sub_2CC240();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v13[3] = v0;
    v13[4] = &protocol witness table for FeatureFlagProvider;
    sub_F390(v13);
    sub_2CC2A0();
    v6 = sub_2CBC40();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_2CBC30();
    v12[3] = v6;
    v12[4] = &protocol witness table for AppIntentInvoker;
    v12[0] = v9;
    v10 = objc_allocWithZone(sub_2CD0E0());
    result = sub_2CD0D0();
  }

  else
  {
    result = [objc_allocWithZone(sub_2CD0C0()) init];
  }

  static SearchForMedia.intentHandler = result;
  return result;
}

uint64_t *SearchForMedia.intentHandler.unsafeMutableAddressor()
{
  if (qword_34BFF8 != -1)
  {
    swift_once();
  }

  return &static SearchForMedia.intentHandler;
}

id static SearchForMedia.intentHandler.getter()
{
  if (qword_34BFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static SearchForMedia.intentHandler;

  return v0;
}

void static SearchForMedia.intentHandler.setter(uint64_t a1)
{
  if (qword_34BFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static SearchForMedia.intentHandler;
  static SearchForMedia.intentHandler = a1;
}

uint64_t (*static SearchForMedia.intentHandler.modify())()
{
  if (qword_34BFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void *sub_1D3850(_OWORD *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_2CC2B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CB4A0();
  v55[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v33 = v13;
  v34 = a3;
  v55[3] = v13;
  v55[0] = a2;
  a4[2] = _swiftEmptyArrayStorage;
  a4[3] = 1307;
  a4[4] = 0;
  a4[5] = 0;
  sub_EEAC(a3, &v52);
  LODWORD(a3) = CATDefaultMode;
  v14 = sub_2CBC00();
  v15 = sub_2CBBF0();

  sub_2CC2A0();
  type metadata accessor for CatService();
  v16 = swift_allocObject();
  v50 = &type metadata for StringsBackedAppNameResolver;
  v51 = sub_2869C();
  v17 = swift_allocObject();
  *&v49 = v17;
  v18 = a1[3];
  v17[3] = a1[2];
  v17[4] = v18;
  v17[5] = a1[4];
  v19 = a1[1];
  v17[1] = *a1;
  v17[2] = v19;
  v48[3] = v14;
  v48[4] = &protocol witness table for MorphunProvider;
  v48[0] = v15;
  v47[3] = v8;
  v47[4] = &protocol witness table for FeatureFlagProvider;
  v20 = sub_F390(v47);
  (*(v9 + 16))(v20, v12, v8);
  *(v16 + 296) = a3;
  sub_EEAC(v47, v16 + 256);
  sub_EEAC(&v49, v46);
  sub_EEAC(v48, v45);
  sub_EEAC(&v52, v44);
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v21 = sub_2CCA30();
  v22 = sub_2CCA20();
  v41[3] = v21;
  v41[4] = &protocol witness table for MultiUserConnectionProvider;
  v41[0] = v22;
  v40[3] = sub_2CB9E0();
  v40[4] = &protocol witness table for DeviceProvider;
  sub_F390(v40);
  sub_2CB9C0();
  sub_EEAC(v46, v16 + 16);
  sub_EEAC(v45, v16 + 216);
  sub_EEAC(v44, v16 + 56);
  sub_EEAC(v41, v16 + 96);
  sub_EEAC(v40, v16 + 176);
  sub_286F0(v42, &v35);
  if (v36)
  {

    sub_28760(v42);
    sub_306C(v44);
    sub_306C(v45);
    sub_306C(v46);
    (*(v9 + 8))(v12, v8);
    sub_306C(&v52);
    sub_306C(v47);
    sub_306C(v48);
    sub_306C(&v49);
    sub_306C(v40);
    sub_306C(v41);
    sub_F338(&v35, &v37);
  }

  else
  {
    sub_EEAC(v44, &v37);
    v23 = sub_2C9E60();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = sub_2C9E50();
    v38 = v23;
    v39 = &protocol witness table for ContactsManager;

    *&v37 = v26;
    sub_28760(v42);
    sub_306C(v44);
    sub_306C(v45);
    sub_306C(v46);
    (*(v9 + 8))(v12, v8);
    sub_306C(&v52);
    sub_306C(v47);
    sub_306C(v48);
    sub_306C(&v49);
    sub_306C(v40);
    sub_306C(v41);
    if (v36)
    {
      sub_28760(&v35);
    }
  }

  sub_F338(&v37, v16 + 136);
  a4[6] = v16;
  v53 = sub_2CC360();
  v54 = &protocol witness table for StringsFileResolver;
  sub_F390(&v52);

  sub_2CC350();
  v27 = v33;
  v28 = sub_2CB490();
  v50 = v27;
  v51 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v49 = v28;
  sub_20410(qword_354608, &qword_2D68D0);
  v29 = swift_allocObject();
  v29[13] = 0xD000000000000011;
  v29[14] = 0x80000000002DA8D0;
  v29[2] = v16;
  sub_F338(&v52, (v29 + 3));
  sub_F338(&v49, (v29 + 8));
  a4[7] = v29;
  sub_EEAC(v55, (a4 + 8));
  v53 = v8;
  v54 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v52);
  sub_2CC2A0();
  v30 = type metadata accessor for SiriAudioOutputProvider();
  v31 = swift_allocObject();
  sub_F338(&v52, v31 + 16);
  v53 = v30;
  v54 = &off_337EB0;
  *&v52 = v31;
  sub_306C(v34);
  sub_306C(v55);
  sub_F338(&v52, (a4 + 13));
  return a4;
}

uint64_t CommonAppResolver.postResolve(for:app:resolutionResultType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v21[1] = a5;
  v22 = a4;
  v7 = sub_2CE150();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE180();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CBB80();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = v5;
  aBlock[4] = sub_1DABE0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_3382B8;
  v19 = _Block_copy(aBlock);

  sub_2CE160();
  v23 = _swiftEmptyArrayStorage;
  sub_1DBE14(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v19);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);

  return v22(1);
}

void *CommonAppResolver.deinit()
{
  v0 = sub_2CCF60();
  v1 = *(v0 + *(*v0 + class metadata base offset for CommonAppResolver + 8) + 8);

  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 16)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 24)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 32)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 40)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 48)));
  return v0;
}

uint64_t CommonAppResolver.resolveApp(forIntent:withConversionState:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = a3;
  v62 = a4;
  v64 = a2;
  v65 = v4;
  v7 = *v5;
  v8 = sub_2CDFD0();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  v10 = __chkstk_darwin(v8);
  v11 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v54 - v12;
  v56 = sub_2CE000();
  v14 = *(v56 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v56);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20410(&qword_350438, qword_2D3AA0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = (&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v24 = &v54 - v23;
  v67 = a1;
  v25 = *(v7 + class metadata base offset for CommonAppResolver);
  v66 = a1;
  sub_20410(&unk_34FBF0, &qword_2D1EF0);
  if (swift_dynamicCast())
  {
    sub_35E0(&v68, *(&v69 + 1));
    sub_2CC170();
    sub_306C(&v68);
    v26 = sub_20410(&qword_34E740, &unk_2D68F0);
    if ((*(*(v26 - 8) + 48))(v24, 1, v26) != 1)
    {
      v60 = 0xEE006465766C6F73;
      v27 = 0x6552657250707061;
      goto LABEL_6;
    }
  }

  else
  {
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    sub_30B8(&v68, &qword_3530A0, &qword_2D1EF8);
    v28 = sub_20410(&qword_34E740, &unk_2D68F0);
    (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
  }

  v60 = 0x80000000002DCCF0;
  v27 = 0xD000000000000010;
LABEL_6:
  v59 = v27;
  sub_F3F4(v24, v22, &qword_350438, qword_2D3AA0);
  v29 = sub_20410(&qword_34E740, &unk_2D68F0);
  v30 = (*(*(v29 - 8) + 48))(v22, 1, v29);
  v63 = v24;
  if (v30 == 1)
  {
    sub_30B8(v22, &qword_350438, qword_2D3AA0);
  }

  else
  {
    v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *v22;
    v31 = v22[1];
    v33 = *(v29 + 48);
    v34 = sub_2CC5F0();
    (*(*(v34 - 8) + 8))(v22 + v33, v34);
    if (sub_1DB7D8(v66))
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v35 = v56;
      v36 = sub_3ED0(v56, static Logger.default);
      swift_beginAccess();
      (*(v14 + 16))(v17, v36, v35);

      v37 = sub_2CDFE0();
      v38 = sub_2CE690();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v67 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_3F08(v32, v31, &v67);
        _os_log_impl(&dword_0, v37, v38, "CommonIntentAppResolver#resolveApp setting bundleId: %s", v39, 0xCu);
        sub_306C(v40);

        (*(v14 + 8))(v17, v56);
      }

      else
      {

        (*(v14 + 8))(v17, v35);
      }

      v41 = sub_2CE260();

      [v66 _setLaunchId:v41];
    }

    else
    {
    }

    v11 = v55;
  }

  v42 = swift_allocObject();
  *(v42 + 16) = v61;
  *(v42 + 24) = v62;
  v43 = qword_34BF98;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = qword_35F760;
  sub_2CDFB0();
  v45 = v57;
  v46 = v58;
  (*(v57 + 16))(v11, v13, v58);
  v47 = (*(v45 + 80) + 33) & ~*(v45 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = "commonAppResolver";
  *(v48 + 24) = 17;
  *(v48 + 32) = 2;
  (*(v45 + 32))(v48 + v47, v11, v46);
  v49 = (v48 + ((v9 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v49 = sub_1DB7BC;
  v49[1] = v42;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_2D0090;
  *(v50 + 56) = &type metadata for String;
  *(v50 + 64) = sub_1087C();
  v51 = v60;
  *(v50 + 32) = v59;
  *(v50 + 40) = v51;
  sub_2CDF90();

  v52 = swift_allocObject();
  *(v52 + 16) = sub_1DB7C0;
  *(v52 + 24) = v48;

  sub_1D5084(sub_13D8C, v52, v66, v64, v65);

  (*(v45 + 8))(v13, v46);
  return sub_30B8(v63, &qword_350438, qword_2D3AA0);
}

uint64_t sub_1D4A58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28 = a2;
  v26 = a1;
  v27 = a4;
  v25 = a3;
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = qword_34BF98;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "resolveSelectedApp";
  *(v20 + 24) = 18;
  *(v20 + 32) = 2;
  (*(v9 + 32))(v20 + v18, v12, v8);
  v21 = (v20 + v19);
  *v21 = sub_1DC1A0;
  v21[1] = v15;

  sub_2CE9E0();
  sub_2CDF90();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1DBEB0;
  *(v22 + 24) = v20;

  sub_1D8388(sub_13BD8, v22, v29, v25, v27, v26, v28);

  (*(v9 + 8))(v14, v8);
}

uint64_t sub_1D4D38(uint64_t a1, unint64_t a2)
{
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v2 + class metadata base offset for CommonAppResolver + 24);
  v11 = *(*v2 + class metadata base offset for CommonAppResolver + 32);
  swift_beginAccess();
  sub_EEAC(v2 + v11, v27);
  v12 = sub_DE6CC(a1, a2);
  sub_306C(v27);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  (*(v6 + 16))(v9, v13, v5);

  v14 = sub_2CDFE0();
  v15 = sub_2CE690();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v23 = a1;
    v25 = v12;
    v26 = v18;
    *v17 = 136446466;
    sub_2CCFB0();
    sub_1DBE14(&qword_34C170, &type metadata accessor for App);
    v19 = sub_2CEE70();
    v21 = sub_3F08(v19, v20, &v26);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_3F08(v23, a2, &v26);
    _os_log_impl(&dword_0, v14, v15, "CommonIntentAppResolver#app created app as: %{public}s from bundleIdentifier: %{public}s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  return v12;
}

uint64_t sub_1D5084(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v271 = a4;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v261 = v240 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v264 = v240 - v15;
  v16 = __chkstk_darwin(v14);
  v258 = v240 - v17;
  v18 = __chkstk_darwin(v16);
  v262 = v240 - v19;
  v20 = __chkstk_darwin(v18);
  v263 = v240 - v21;
  v22 = __chkstk_darwin(v20);
  v265 = v240 - v23;
  __chkstk_darwin(v22);
  v25 = v240 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  v270 = v26;
  v27 = qword_34BF58;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v29 = v10 + 2;
  v268 = v10[2];
  v268(v25, v28, v9);
  v30 = a3;
  v31 = sub_2CDFE0();
  v32 = sub_2CE690();

  v33 = os_log_type_enabled(v31, v32);
  v269 = v10;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    *&v276[0] = v259;
    *v34 = 136446466;
    v35 = sub_2CCC80();
    v260 = v25;
    LODWORD(v257) = v32;
    v37 = a5;
    v38 = v30;
    v39 = sub_3F08(v35, v36, v276);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    v40 = [v38 utteranceString];
    v41 = sub_2CE270();
    v42 = v9;
    v43 = v37;
    v44 = v28;
    v46 = v45;

    v47 = v41;
    v30 = v38;
    v48 = sub_3F08(v47, v46, v276);
    v28 = v44;
    a5 = v43;
    v9 = v42;
    v10 = v269;

    *(v34 + 14) = v48;
    _os_log_impl(&dword_0, v31, v257, "CommonIntentAppResolver#resolveApp %{public}s with user utterance: %s", v34, 0x16u);
    swift_arrayDestroy();

    v49 = v10[1];
    v49(v260, v9);
  }

  else
  {

    v49 = v10[1];
    v49(v25, v9);
  }

  v50 = v271;
  sub_EEAC(v271, &v275);
  sub_20410(&qword_354760, &qword_2D69F0);
  v51 = swift_dynamicCast();
  v267 = v9;
  if (v51)
  {
    v276[1] = v273;
    v276[2] = v274;
    v276[0] = v272;
    v52 = *(&v274 + 1);
    objc_opt_self();
    v53 = swift_dynamicCastObjCClass();
    if (v53)
    {
      v260 = v53;
      v266 = v28;
      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();
      if (v54)
      {
        v55 = v54;
        v256 = a5;
        v257 = v49;
        v254 = v30;
        v56 = v30;
        v57 = v52;
        v58 = [v55 isEqual:v260];
        v248 = v55;
        v59 = v9;
        if (sub_2CE730())
        {
          v60 = sub_2CE730() ^ 1;
        }

        else
        {
          v60 = 0;
        }

        v62 = (v58 ^ 1) & v60;
        v268(v265, v266, v9);
        v63 = v56;
        v64 = v57;
        v65 = sub_2CDFE0();
        v66 = sub_2CE690();
        v67 = os_log_type_enabled(v65, v66);
        LODWORD(v259) = v62;
        v245 = v63;
        v253 = v64;
        if (v67)
        {
          v68 = swift_slowAlloc();
          *v68 = 67109888;
          v69 = v63;
          v70 = v248;
          *(v68 + 4) = [v248 isEqual:v260];
          *(v68 + 8) = 1024;
          *(v68 + 10) = sub_2CE730() & 1;

          *(v68 + 14) = 1024;
          *(v68 + 16) = sub_2CE730() & 1;

          *(v68 + 20) = 1024;
          v59 = v267;
          *(v68 + 22) = v259;
          _os_log_impl(&dword_0, v65, v66, "CommonIntentAppResolver#resolveApp intent and updatedIntent are sameIntents: %{BOOL}d. intent has app inferred: %{BOOL}d, updatedIntent has app inferred: %{BOOL}d. This is a disambiguationSelection: %{BOOL}d", v68, 0x1Au);
        }

        else
        {

          v65 = v63;
          v70 = v248;
        }

        v247 = v10 + 1;
        v257(v265, v59);
        v71 = [v70 privatePlayMediaIntentData];
        v30 = &selRef_hasTwoOrMoreRooms;
        v73 = v59;
        if (v71)
        {
          v74 = v71;
          v75 = [v71 audioSearchResults];

          a5 = v256;
          if (v75)
          {
            sub_736BC();
            v76 = sub_2CE410();

            if (v76 >> 62)
            {
LABEL_114:
              v77 = sub_2CEDA0();
            }

            else
            {
              v77 = *(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8));
            }

            v78 = v73;
            v244 = v77 == 0;
LABEL_26:
            v265 = v76;
            v277.value._rawValue = v76;
            v277.is_nil = 0;
            v255 = sub_2CEAD0(v277, v72);
            v252 = v79;
            v80 = [v260 privatePlayMediaIntentData];
            if (v80 && (v82 = v80, v83 = [v80 *(v30 + 1144)], v82, v83))
            {
              sub_736BC();
              v84 = sub_2CE410();

              v85 = v263;
              if (v84 >> 62)
              {
                v86 = sub_2CEDA0();
              }

              else
              {
                v86 = *(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8));
              }

              v87 = v253;
              v250 = v86 == 0;
            }

            else
            {
              v84 = 0;
              v250 = 1;
              v85 = v263;
              v87 = v253;
            }

            v278.value._rawValue = v84;
            v278.is_nil = 0;
            v88 = sub_2CEAD0(v278, v81);
            v251 = v89;
            v249 = v29;
            v268(v85, v266, v78);

            v90 = v87;
            v91 = v84;
            v92 = v252;

            v93 = v265;

            v94 = v92;
            v95 = sub_2CDFE0();
            LODWORD(v92) = sub_2CE690();
            v253 = v90;

            v96 = v91;

            v243 = v92;
            v97 = os_log_type_enabled(v95, v92);
            v246 = v88;
            if (!v97)
            {

              v49 = v257;
              v257(v85, v78);
              v111 = v262;
              v29 = v249;
              v28 = v266;
              v76 = v96;
              v30 = v254;
              goto LABEL_73;
            }

            v98 = swift_slowAlloc();
            v241 = swift_slowAlloc();
            *&v272 = v241;
            *v98 = 67110402;
            *(v98 + 4) = v250;
            *(v98 + 8) = 2082;
            *(v98 + 10) = sub_3F08(v255, v94, &v272);
            *(v98 + 18) = 2082;
            *(v98 + 20) = sub_3F08(v88, v251, &v272);
            v99 = v98;
            *(v98 + 28) = 2082;
            v242 = v95;
            if (v93)
            {
              v76 = v96;
              if (v93 >> 62)
              {
                v100 = sub_2CEDA0();
              }

              else
              {
                v100 = *(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8));
              }

              v29 = v249;
              v28 = v266;
              v101 = v99;
              v30 = v254;
              v102 = _swiftEmptyArrayStorage;
              if (v100)
              {
                v275 = _swiftEmptyArrayStorage;
                v30 = v93;
                v103 = v100 & ~(v100 >> 63);

                sub_2DBFC(0, v103, 0);
                if (v100 < 0)
                {
                  __break(1u);
                  goto LABEL_119;
                }

                v102 = v275;
                if ((v30 & 0xC000000000000001) != 0)
                {
                  v104 = 0;
                  do
                  {
                    sub_2CECD0();
                    v105 = sub_2CE5B0();
                    v107 = v106;
                    swift_unknownObjectRelease();
                    v275 = v102;
                    v109 = v102[2];
                    v108 = v102[3];
                    if (v109 >= v108 >> 1)
                    {
                      sub_2DBFC((v108 > 1), v109 + 1, 1);
                      v102 = v275;
                    }

                    ++v104;
                    v102[2] = v109 + 1;
                    v110 = &v102[2 * v109];
                    v110[4] = v105;
                    v110[5] = v107;
                  }

                  while (v100 != v104);
                }

                else
                {
                  v112 = (v30 + 32);
                  do
                  {
                    v113 = *v112;
                    v114 = sub_2CE5B0();
                    v116 = v115;

                    v275 = v102;
                    v118 = v102[2];
                    v117 = v102[3];
                    if (v118 >= v117 >> 1)
                    {
                      sub_2DBFC((v117 > 1), v118 + 1, 1);
                      v102 = v275;
                    }

                    v102[2] = v118 + 1;
                    v119 = &v102[2 * v118];
                    v119[4] = v114;
                    v119[5] = v116;
                    ++v112;
                    --v100;
                  }

                  while (v100);
                }

                a5 = v256;
                v30 = v254;
                v28 = v266;
                v29 = v249;
              }
            }

            else
            {
              v102 = 0;
              v29 = v249;
              v28 = v266;
              v76 = v96;
              v101 = v99;
              v30 = v254;
            }

            v275 = v102;
            v120 = sub_20410(&qword_353C98, &unk_2D6A00);
            v121 = sub_2CE2A0();
            v123 = sub_3F08(v121, v122, &v272);

            *(v101 + 30) = v123;
            *(v101 + 38) = 2082;
            if (v76)
            {
              v240[1] = v120;
              if (v76 >> 62)
              {
                v124 = sub_2CEDA0();
              }

              else
              {
                v124 = *(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8));
              }

              v125 = _swiftEmptyArrayStorage;
              if (v124)
              {
                v275 = _swiftEmptyArrayStorage;
                v103 = v124 & ~(v124 >> 63);

                sub_2DBFC(0, v103, 0);
                if ((v124 & 0x8000000000000000) == 0)
                {
                  v125 = v275;
                  if ((v76 & 0xC000000000000001) != 0)
                  {
                    v126 = 0;
                    do
                    {
                      sub_2CECD0();
                      v127 = sub_2CE5B0();
                      v129 = v128;
                      swift_unknownObjectRelease();
                      v275 = v125;
                      v131 = v125[2];
                      v130 = v125[3];
                      if (v131 >= v130 >> 1)
                      {
                        sub_2DBFC((v130 > 1), v131 + 1, 1);
                        v125 = v275;
                      }

                      ++v126;
                      v125[2] = v131 + 1;
                      v132 = &v125[2 * v131];
                      v132[4] = v127;
                      v132[5] = v129;
                    }

                    while (v124 != v126);
                  }

                  else
                  {
                    v133 = (v76 + 32);
                    do
                    {
                      v134 = *v133;
                      v135 = sub_2CE5B0();
                      v137 = v136;

                      v275 = v125;
                      v139 = v125[2];
                      v138 = v125[3];
                      if (v139 >= v138 >> 1)
                      {
                        sub_2DBFC((v138 > 1), v139 + 1, 1);
                        v125 = v275;
                      }

                      v125[2] = v139 + 1;
                      v140 = &v125[2 * v139];
                      v140[4] = v135;
                      v140[5] = v137;
                      ++v133;
                      --v124;
                    }

                    while (v124);
                  }

                  a5 = v256;
                  v30 = v254;
                  v28 = v266;
                  v29 = v249;
                  goto LABEL_68;
                }

LABEL_119:
                __break(1u);
                goto LABEL_120;
              }
            }

            else
            {
              v125 = 0;
            }

LABEL_68:
            v275 = v125;
            v141 = sub_2CE2A0();
            v143 = sub_3F08(v141, v142, &v272);

            *(v101 + 40) = v143;
            *(v101 + 48) = 2082;
            v144 = [v260 privatePlayMediaIntentData];
            if (v144)
            {
              v145 = v144;
              v146 = [v144 internalSignals];

              v147 = v263;
              if (v146)
              {
                sub_2CE410();
              }
            }

            else
            {
              v147 = v263;
            }

            v148 = sub_2CE420();
            v150 = v149;

            v151 = sub_3F08(v148, v150, &v272);

            *(v101 + 50) = v151;
            v152 = v242;
            _os_log_impl(&dword_0, v242, v243, "CommonIntentAppResolver#resolveApp for updatedResultsEmpty?:%{BOOL}d originalDefaultBundle:%{public}s, updatedDefaultBundle:%{public}s checking if we should override original search results: %{public}s with search results after disambiguation: %{public}s -- internal signals?:%{public}s", v101, 0x3Au);
            swift_arrayDestroy();

            v49 = v257;
            v257(v147, v267);
            v111 = v262;
            v94 = v252;
LABEL_73:
            v154 = v255 == v246 && v94 == v251;
            LODWORD(v61) = v259;
            if (v250)
            {
              if (v154 || (sub_2CEEA0() & 1) != 0)
              {

LABEL_83:

LABEL_87:
                sub_1DC07C(v276);
                v50 = v271;
                goto LABEL_164;
              }

              v169 = v267;
              v268(v111, v28, v267);
              v170 = sub_2CDFE0();
              v171 = sub_2CE690();
              if (os_log_type_enabled(v170, v171))
              {
                v172 = swift_slowAlloc();
                v173 = swift_slowAlloc();
                *&v272 = v173;
                *v172 = 136446210;
                v174 = sub_2CCC80();
                v176 = sub_3F08(v174, v175, &v272);
                v49 = v257;

                *(v172 + 4) = v176;
                v30 = v254;
                _os_log_impl(&dword_0, v170, v171, "CommonIntentAppResolver#resolveApp %{public}s updating original intent with nil search results as default bundles are not consistent", v172, 0xCu);
                sub_306C(v173);

                v177 = v262;
LABEL_163:
                v49(v177, v169);
                v50 = v271;
                v203 = [v260 privatePlayMediaIntentData];
                [v248 setPrivatePlayMediaIntentData:v203];

                sub_1DC07C(v276);
                a5 = v256;
                goto LABEL_164;
              }

              goto LABEL_162;
            }

            if (v154)
            {

              v103 = v265;
              if (!v244)
              {
LABEL_86:

                goto LABEL_87;
              }
            }

            else
            {
              v155 = sub_2CEEA0();

              v156 = v244 | ~v155;
              v103 = v265;
              if ((v156 & 1) == 0)
              {
                goto LABEL_86;
              }
            }

            if (!v76)
            {
              v178 = 0;
              v263 = 0;
              goto LABEL_126;
            }

            v30 = v76 & 0xFFFFFFFFFFFFFF8;
            if (!(v76 >> 62))
            {
              v157 = *(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8));
              if (v157)
              {
                goto LABEL_92;
              }

              goto LABEL_121;
            }

LABEL_120:
            v157 = sub_2CEDA0();
            if (v157)
            {
LABEL_92:
              v73 = 0;
              v262 = _swiftEmptyArrayStorage;
              do
              {
                v158 = v73;
                while (1)
                {
                  if ((v76 & 0xC000000000000001) != 0)
                  {
                    v159 = sub_2CECD0();
                  }

                  else
                  {
                    if (v158 >= *(v30 + 16))
                    {
                      goto LABEL_113;
                    }

                    v159 = *(v76 + 8 * v158 + 32);
                  }

                  a5 = v159;
                  v73 = v158 + 1;
                  if (__OFADD__(v158, 1))
                  {
                    __break(1u);
LABEL_113:
                    __break(1u);
                    goto LABEL_114;
                  }

                  v160 = [v159 identifier];
                  if (v160)
                  {
                    break;
                  }

                  ++v158;
                  if (v73 == v157)
                  {
                    goto LABEL_122;
                  }
                }

                v161 = v160;
                v263 = sub_2CE270();
                v255 = v162;

                v163 = v29;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v262 = sub_B90C4(0, *(v262 + 2) + 1, 1, v262);
                }

                v165 = *(v262 + 2);
                v164 = *(v262 + 3);
                if (v165 >= v164 >> 1)
                {
                  v262 = sub_B90C4((v164 > 1), v165 + 1, 1, v262);
                }

                v166 = v262;
                *(v262 + 2) = v165 + 1;
                v167 = &v166[16 * v165];
                v168 = v255;
                *(v167 + 4) = v263;
                *(v167 + 5) = v168;
                v29 = v163;
                v103 = v265;
              }

              while (v73 != v157);
              goto LABEL_122;
            }

LABEL_121:
            v262 = _swiftEmptyArrayStorage;
LABEL_122:

            if (*(v262 + 2))
            {
              v178 = *(v262 + 4);
              v263 = *(v262 + 5);
            }

            else
            {

              v178 = 0;
              v263 = 0;
            }

            a5 = v256;
            v30 = v254;
            v28 = v266;
            v49 = v257;
            LODWORD(v61) = v259;
LABEL_126:
            if (v103)
            {
              v179 = v103 & 0xFFFFFFFFFFFFFF8;
              if (v103 >> 62)
              {
LABEL_187:
                v180 = sub_2CEDA0();
              }

              else
              {
                v180 = *(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8));
              }

              v262 = v178;
              if (v180)
              {
                v181 = 0;
                v182 = v103 & 0xC000000000000001;
                v183 = _swiftEmptyArrayStorage;
                v178 = &selRef_hasTwoOrMoreRooms;
                do
                {
                  v184 = v181;
                  while (1)
                  {
                    if (v182)
                    {
                      v185 = sub_2CECD0();
                    }

                    else
                    {
                      if (v184 >= *(v179 + 16))
                      {
                        goto LABEL_186;
                      }

                      v185 = *(v103 + 8 * v184 + 32);
                    }

                    v186 = v185;
                    v181 = v184 + 1;
                    if (__OFADD__(v184, 1))
                    {
                      __break(1u);
LABEL_186:
                      __break(1u);
                      goto LABEL_187;
                    }

                    v187 = [v185 identifier];
                    if (v187)
                    {
                      break;
                    }

                    ++v184;
                    if (v181 == v180)
                    {
                      goto LABEL_148;
                    }
                  }

                  v188 = v187;
                  v255 = sub_2CE270();
                  v252 = v189;

                  v190 = v29;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v183 = sub_B90C4(0, *(v183 + 2) + 1, 1, v183);
                  }

                  v192 = *(v183 + 2);
                  v191 = *(v183 + 3);
                  if (v192 >= v191 >> 1)
                  {
                    v183 = sub_B90C4((v191 > 1), v192 + 1, 1, v183);
                  }

                  *(v183 + 2) = v192 + 1;
                  v193 = &v183[16 * v192];
                  v194 = v252;
                  *(v193 + 4) = v255;
                  *(v193 + 5) = v194;
                  v29 = v190;
                  v103 = v265;
                }

                while (v181 != v180);
              }

              else
              {
                v183 = _swiftEmptyArrayStorage;
              }

LABEL_148:

              if (*(v183 + 2))
              {
                v195 = *(v183 + 4);
                v196 = *(v183 + 5);
              }

              else
              {

                v195 = 0;
                v196 = 0;
              }

              a5 = v256;
              v30 = v254;
              v28 = v266;
              v49 = v257;
              LODWORD(v61) = v259;
              v178 = v262;
            }

            else
            {
              v195 = 0;
              v196 = 0;
            }

            if (v263)
            {
              if (v196)
              {
                if (v178 == v195 && v263 == v196)
                {
                  goto LABEL_86;
                }

                v239 = sub_2CEEA0();

                if (v239)
                {
                  goto LABEL_83;
                }

LABEL_160:
                v111 = v258;
                v169 = v267;
                v268(v258, v28, v267);
                v170 = sub_2CDFE0();
                v197 = sub_2CE690();
                if (os_log_type_enabled(v170, v197))
                {
                  v198 = swift_slowAlloc();
                  v199 = swift_slowAlloc();
                  *&v272 = v199;
                  *v198 = 136446210;
                  v200 = sub_2CCC80();
                  v202 = sub_3F08(v200, v201, &v272);
                  v49 = v257;

                  *(v198 + 4) = v202;
                  v30 = v254;
                  _os_log_impl(&dword_0, v170, v197, "CommonIntentAppResolver#resolveApp %{public}s updating original intent with new search results", v198, 0xCu);
                  sub_306C(v199);

                  v177 = v258;
                  goto LABEL_163;
                }

LABEL_162:

                v177 = v111;
                goto LABEL_163;
              }
            }

            else
            {
              if (!v196)
              {
                goto LABEL_83;
              }

              v263 = v196;
            }

            goto LABEL_160;
          }

          v76 = 0;
          v244 = 1;
        }

        else
        {
          v76 = 0;
          v244 = 1;
          a5 = v256;
        }

        v78 = v73;
        goto LABEL_26;
      }

      sub_1DC07C(v276);
      LODWORD(v61) = 0;
      v28 = v266;
    }

    else
    {
      sub_1DC07C(v276);
      LODWORD(v61) = 0;
    }
  }

  else
  {
    v273 = 0u;
    v274 = 0u;
    v272 = 0u;
    sub_30B8(&v272, &qword_354768, &qword_2D69F8);
    LODWORD(v61) = 0;
  }

LABEL_164:
  v204 = v50[4];
  sub_35E0(v50, v50[3]);
  if (sub_2CCFF0())
  {
    v205 = sub_2CCF90();
    v207 = v206;

    if (v207)
    {

      v208 = sub_2CBD10();
      if (v209)
      {
        if (v205 == v208 && v207 == v209)
        {
          swift_bridgeObjectRelease_n();

          goto LABEL_182;
        }

        v210 = sub_2CEEA0();

        if (v210)
        {
          swift_bridgeObjectRelease_n();
          goto LABEL_182;
        }
      }

      LODWORD(v259) = v61;
      v211 = v264;
      v61 = v267;
      v268(v264, v28, v267);

      v212 = sub_2CDFE0();
      v213 = sub_2CE690();
      v266 = v28;
      v214 = v213;

      LODWORD(v271) = v214;
      if (os_log_type_enabled(v212, v214))
      {
        v215 = swift_slowAlloc();
        v257 = v49;
        v216 = v215;
        *&v276[0] = swift_slowAlloc();
        *v216 = 136446466;
        v217 = sub_2CCC80();
        v219 = v30;
        v220 = sub_3F08(v217, v218, v276);

        *(v216 + 4) = v220;
        v30 = v219;
        *(v216 + 12) = 2082;
        v221 = sub_3F08(v205, v207, v276);

        *(v216 + 14) = v221;
        _os_log_impl(&dword_0, v212, v271, "CommonIntentAppResolver#resolveApp %{public}s updating intent with requested app (differs from launchId): %{public}s", v216, 0x16u);
        swift_arrayDestroy();
        v222 = v266;

        v49 = v257;

        v49(v264, v267);
        LOBYTE(v61) = v259;
      }

      else
      {

        v49(v211, v61);
        LOBYTE(v61) = v259;
        v222 = v266;
      }

      v280._object = 0x80000000002DEF40;
      v279.value._countAndFlagsBits = v205;
      v279.value._object = v207;
      v280._countAndFlagsBits = 0xD00000000000001CLL;
      sub_2CEAA0(v279, v280);

      objc_opt_self();
      v223 = swift_dynamicCastObjCClass();
      if (v223)
      {
        v224 = v223;
        v225 = v30;
        v226 = [v224 backingStore];
        objc_opt_self();
        v227 = swift_dynamicCastObjCClass();
        if (v227)
        {
          v256 = a5;
          v257 = v49;
          v228 = [v227 privatePlayMediaIntentData];
          [v228 setAppInferred:0];

          v268(v261, v222, v267);
          v229 = v225;
          v230 = sub_2CDFE0();
          v231 = sub_2CE690();
          if (os_log_type_enabled(v230, v231))
          {
            v232 = swift_slowAlloc();
            *v232 = 67240192;
            *(v232 + 4) = sub_2CE730() & 1;

            _os_log_impl(&dword_0, v230, v231, "CommonIntentAppResolver#resolveApp set appInferred?:%{BOOL,public}d as using requested app", v232, 8u);

            v233 = v229;
          }

          else
          {

            v233 = v226;
            v230 = v229;
            v226 = v229;
          }

          a5 = v256;

          v257(v261, v267);
          LOBYTE(v61) = v259;
        }

        else
        {
        }
      }
    }
  }

LABEL_182:
  v234 = swift_allocObject();
  *(v234 + 16) = a5;
  *(v234 + 24) = v30;
  *(v234 + 32) = v61;
  v235 = v270;
  *(v234 + 40) = sub_1DC19C;
  *(v234 + 48) = v235;
  v236 = *(*a5 + class metadata base offset for CommonAppResolver + 128);
  v237 = v30;

  v236(v237, sub_1DC06C, v234);
}

uint64_t sub_1D6EF0(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v6 = sub_20410(&qword_354758, &qword_2D69E8);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - v9;
  sub_F3F4(a1, &v12 - v9, &qword_354750, &qword_2D69E0);
  *&v10[*(v7 + 56)] = a2;

  a3(v10);
  return sub_30B8(v10, &qword_354758, &qword_2D69E8);
}

uint64_t sub_1D6FD8(uint64_t a1, uint64_t *a2, void *a3, int a4, void (*a5)(void, void), uint64_t a6)
{
  v163 = a6;
  v162 = a5;
  LODWORD(v158) = a4;
  v164 = *a2;
  v155 = sub_20410(&qword_354750, &qword_2D69E0);
  v9 = *(*(v155 - 1) + 64);
  __chkstk_darwin(v155);
  v156 = (&v145 - v10);
  v11 = sub_2CE000();
  v167 = *(v11 - 8);
  v12 = *(v167 + 8);
  v13 = __chkstk_darwin(v11);
  v154 = (&v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v160 = &v145 - v16;
  __chkstk_darwin(v15);
  v157 = &v145 - v17;
  v18 = sub_2CC5F0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v21 = __chkstk_darwin(v18);
  v153 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v165 = &v145 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v145 - v26;
  v28 = __chkstk_darwin(v25);
  v159 = &v145 - v29;
  __chkstk_darwin(v28);
  v31 = &v145 - v30;
  v32 = type metadata accessor for BundleResolutionResult();
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = (&v145 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DBBE0(a1, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v166 = v11;
  if (EnumCaseMultiPayload != 1)
  {
    v80 = v35[1];
    v165 = *v35;
    v81 = sub_20410(&qword_34E740, &unk_2D68F0);
    (*(v19 + 4))(v31, v35 + *(v81 + 48), v18);
    v82 = *&v164[class metadata base offset for CommonAppResolver];
    sub_1DC0D0(a3);
    v83 = swift_allocBox();
    v85 = v84;
    v86 = *(v19 + 2);
    v164 = v31;
    v156 = v19 + 16;
    v155 = v86;
    v86(v84, v31, v18);
    v87 = v18;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v152 = a3;
    v88 = sub_3ED0(v11, static Logger.default);
    swift_beginAccess();
    v89 = v167;
    v90 = *(v167 + 2);
    v91 = v157;
    v149 = v88;
    v148 = v167 + 16;
    v147 = v90;
    v90(v157, v88, v11);

    v92 = v11;
    v93 = sub_2CDFE0();
    v94 = sub_2CE690();
    v95 = v83;
    v96 = v94;
    v160 = v95;

    if (os_log_type_enabled(v93, v96))
    {
      v97 = swift_slowAlloc();
      v161 = v19;
      v150 = v87;
      v151 = v80;
      v98 = v97;
      v168[0] = swift_slowAlloc();
      *v98 = 136446722;
      v99 = sub_2CCC80();
      v101 = v85;
      v102 = sub_3F08(v99, v100, v168);

      *(v98 + 4) = v102;
      *(v98 + 12) = 2082;
      *(v98 + 14) = sub_3F08(v165, v151, v168);
      *(v98 + 22) = 2082;
      swift_beginAccess();
      v103 = v159;
      v155(v159, v101, v150);
      v104 = sub_2CC5E0();
      v106 = v105;
      (*(v161 + 1))(v103, v150);
      v107 = sub_3F08(v104, v106, v168);
      v85 = v101;

      *(v98 + 24) = v107;
      _os_log_impl(&dword_0, v93, v96, "CommonIntentAppResolver#resolveApp %{public}s BundleResolutionResult selected with bundleIdentifier:%{public}s resolutionResultType:%{public}s", v98, 0x20u);
      swift_arrayDestroy();
      v108 = v167;

      v80 = v151;
      v87 = v150;
      v19 = v161;

      v109 = *(v108 + 1);
      v110 = v166;
      v109(v91, v166);
    }

    else
    {

      v109 = *(v89 + 1);
      v109(v91, v92);
      v110 = v92;
    }

    if (v158)
    {
      v146 = v85;
      v158 = v109;
      v116 = v159;
      (*(v19 + 13))(v159, enum case for ResolutionResultType.UserSelected(_:), v87);
      swift_beginAccess();
      (*(v19 + 5))(v85, v116, v87);
      v117 = v154;
      v147(v154, v149, v110);
      v118 = v153;
      v155(v153, v164, v87);

      v119 = sub_2CDFE0();
      v120 = sub_2CE690();

      LODWORD(v157) = v120;
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v168[0] = swift_slowAlloc();
        *v121 = 136446978;
        v122 = sub_2CCC80();
        v124 = sub_3F08(v122, v123, v168);

        *(v121 + 4) = v124;
        *(v121 + 12) = 2082;
        *(v121 + 14) = sub_3F08(v165, v80, v168);
        *(v121 + 22) = 2082;
        v125 = sub_2CC5E0();
        v126 = v118;
        v127 = v125;
        v129 = v128;
        v151 = v80;
        v130 = v87;
        v131 = v19;
        v161 = v19;
        v132 = v130;
        v133 = v159;
        v134 = *(v131 + 1);
        v134(v126, v130);
        v135 = sub_3F08(v127, v129, v168);

        *(v121 + 24) = v135;
        *(v121 + 32) = 2082;
        v155(v133, v146, v132);
        v136 = sub_2CC5E0();
        v138 = v137;
        v134(v133, v132);
        v80 = v151;
        v87 = v132;
        v19 = v161;
        v139 = sub_3F08(v136, v138, v168);

        *(v121 + 34) = v139;
        _os_log_impl(&dword_0, v119, v157, "CommonIntentAppResolver#resolveApp %{public}s user selected bundleIdentifier from disambiguation list. bundleIdentifier:%{public}s overwriting resolutionResultType from: %{public}s to %{public}s", v121, 0x2Au);
        swift_arrayDestroy();

        v140 = v154;
      }

      else
      {

        (*(v19 + 1))(v118, v87);
        v140 = v117;
      }

      (v158)(v140, v166);
    }

    sub_2CBC60();
    sub_35E0(v168, v168[3]);
    sub_2CBE60();
    sub_306C(v168);
    sub_2CC0E0();
    v141 = swift_allocObject();
    v141[2] = v160;
    v141[3] = a2;
    v141[4] = v165;
    v141[5] = v80;
    v142 = v152;
    v143 = v162;
    v141[6] = v152;
    v141[7] = v143;
    v141[8] = v163;

    v144 = v142;

    sub_2CC0C0();

    (*(v19 + 1))(v164, v87);
  }

  v37 = v19;
  v38 = *v35;
  v39 = sub_20410(&qword_3504D0, &qword_2D3B28);
  (*(v37 + 4))(v27, v35 + *(v39 + 48), v18);
  v40 = *&v164[class metadata base offset for CommonAppResolver];
  sub_1DC0D0(a3);
  sub_20410(&unk_356F30, &qword_2D69C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  v42 = (a2 + *(*a2 + class metadata base offset for CommonAppResolver + 8));
  v43 = v42[1];
  *(inited + 32) = *v42;
  *(inited + 40) = v43;

  *(inited + 48) = sub_2CC5E0();
  *(inited + 56) = v44;
  v45 = sub_90A9C(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_354748, &qword_2D69C8);
  v46 = v18;
  if (qword_34BF58 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v47 = v166;
    v48 = sub_3ED0(v166, static Logger.default);
    swift_beginAccess();
    v49 = v167;
    v50 = v160;
    (*(v167 + 2))(v160, v48, v47);
    (*(v37 + 2))(v165, v27, v46);

    v51 = sub_2CDFE0();
    v52 = v37;
    v53 = sub_2CE690();

    LODWORD(v159) = v53;
    v54 = os_log_type_enabled(v51, v53);
    v161 = v52;
    v164 = v45;
    if (!v54)
    {
      break;
    }

    v55 = swift_slowAlloc();
    v158 = v27;
    v56 = v55;
    v157 = swift_slowAlloc();
    v169 = v157;
    *v56 = 136446978;
    v57 = sub_2CCC80();
    v154 = v51;
    v59 = v46;
    v60 = sub_3F08(v57, v58, &v169);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2082;
    v61 = sub_2CE420();
    v63 = sub_3F08(v61, v62, &v169);

    *(v56 + 14) = v63;
    *(v56 + 22) = 2080;
    v64 = v165;
    v65 = sub_2CC5E0();
    v67 = v66;
    v68 = *(v52 + 1);
    v68(v64, v59);
    v69 = sub_3F08(v65, v67, &v169);
    v46 = v59;

    *(v56 + 24) = v69;
    *(v56 + 32) = 2082;
    v70 = sub_2CE210();
    v72 = sub_3F08(v70, v71, &v169);

    *(v56 + 34) = v72;
    v73 = v154;
    _os_log_impl(&dword_0, v154, v159, "CommonIntentAppResolver#resolveApp %{public}s BundleResolutionResult disambiguate with bundleIdentifiers:%{public}s, resolutionResultType: %s, ResolveApp metadata: %{public}s", v56, 0x2Au);
    swift_arrayDestroy();

    v27 = v158;

    (*(v167 + 1))(v160, v166);
    v74 = *(v38 + 16);
    if (!v74)
    {
      goto LABEL_14;
    }

LABEL_5:
    v167 = v68;
    v37 = v27;
    v45 = v46;
    v169 = _swiftEmptyArrayStorage;
    sub_2CED20();
    v75 = 0;
    v46 = (v38 + 40);
    while (v75 < *(v38 + 16))
    {
      ++v75;
      v76 = *(v46 - 1);
      v77 = *v46;

      v27 = sub_1D4D38(v76, v77);

      sub_2CED00();
      v78 = v169[2];
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      v46 += 2;
      if (v74 == v75)
      {

        v79 = v169;
        v46 = v45;
        v27 = v37;
        v68 = v167;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v68 = *(v52 + 1);
  v68(v165, v46);
  (*(v49 + 1))(v50, v166);
  v74 = *(v38 + 16);
  if (v74)
  {
    goto LABEL_5;
  }

LABEL_14:

  v79 = _swiftEmptyArrayStorage;
LABEL_15:
  v111 = v156;
  *v156 = v79;
  v112 = enum case for AppResolutionResult.needsDisambiguation(_:);
  v113 = sub_2CD050();
  (*(*(v113 - 8) + 104))(v111, v112, v113);
  swift_storeEnumTagMultiPayload();
  v114 = sub_2349AC(v164);

  v162(v111, v114);

  sub_30B8(v111, &qword_354750, &qword_2D69E0);
  return (v68)(v27, v46);
}

uint64_t sub_1D8150(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v25[0] = a6;
  v25[1] = a3;
  v13 = sub_2CC5F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20410(&qword_350D38, &unk_2D3EC0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v25 - v20;
  v22 = swift_projectBox();
  if (a1)
  {
    swift_beginAccess();
    (*(v14 + 16))(v21, v22, v13);
    (*(v14 + 56))(v21, 0, 1, v13);
    sub_2CC090();
  }

  swift_beginAccess();
  (*(v14 + 16))(v17, v22, v13);
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  *(v23 + 24) = a8;

  sub_1D4A58(a4, a5, v17, v25[0], sub_1DC174, v23);

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1D8388(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v60 = a7;
  v62 = a6;
  v53 = a5;
  v54 = *a3;
  v63 = sub_2CC5F0();
  v61 = *(v63 - 8);
  v11 = *(v61 + 64);
  __chkstk_darwin(v63);
  v58 = v12;
  v59 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v57 = v18;
  sub_20410(&unk_356F30, &qword_2D69C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  v20 = *(*a3 + class metadata base offset for CommonAppResolver + 8);
  v56 = a3;
  v21 = (a3 + v20);
  v22 = v21[1];
  *(inited + 32) = *v21;
  *(inited + 40) = v22;

  v23 = a4;

  *(inited + 48) = sub_2CC5E0();
  *(inited + 56) = v24;
  v25 = sub_90A9C(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_354748, &qword_2D69C8);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v17, v26, v13);

  v27 = sub_2CDFE0();
  v28 = sub_2CE670();

  v29 = os_log_type_enabled(v27, v28);
  v55 = v25;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v52 = v13;
    v31 = v30;
    v32 = swift_slowAlloc();
    *&v65 = v32;
    *v31 = 136446210;
    v33 = sub_2CE210();
    v35 = sub_3F08(v33, v34, &v65);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_0, v27, v28, "CommonIntentAppResolver#resolveSelectedApp ResolveApp metadata: %{public}s", v31, 0xCu);
    sub_306C(v32);

    (*(v14 + 8))(v17, v52);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v64 = v53;
  v36 = *(v54 + class metadata base offset for CommonAppResolver);
  v37 = v53;
  sub_20410(&qword_3530E0, &unk_2D69D0);
  if (swift_dynamicCast())
  {
    sub_35E0(&v65, *(&v66 + 1));
    sub_2CCB60();
    v54 = v38;
    sub_306C(&v65);
  }

  else
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    sub_30B8(&v65, &qword_3530D8, &unk_2D5730);
    v54 = 0;
  }

  v39 = v61;
  v40 = v59;
  v41 = v23;
  v42 = v63;
  (*(v61 + 16))(v59, v41, v63);
  v43 = (*(v39 + 80) + 72) & ~*(v39 + 80);
  v44 = (v58 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v56;
  *(v45 + 2) = v36;
  *(v45 + 3) = v46;
  v47 = v62;
  v48 = v60;
  *(v45 + 4) = v62;
  *(v45 + 5) = v48;
  *(v45 + 6) = v37;
  *(v45 + 7) = sub_1DBF84;
  *(v45 + 8) = v57;
  (*(v39 + 32))(&v45[v43], v40, v42);
  *&v45[v44] = v55;
  v49 = v37;

  sub_1DB868(v47, v48, sub_1DBF8C, v45);
}

uint64_t sub_1D8988(char a1, void *a2, uint64_t a3, unint64_t a4, void *a5, void (*a6)(void, void), uint64_t a7, unint64_t a8, uint64_t a9)
{
  v99 = a6;
  v96 = a9;
  v97 = a8;
  v93 = sub_20410(&qword_354750, &qword_2D69E0);
  v15 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v17 = &v81 - v16;
  v18 = sub_2CC5F0();
  v91 = *(v18 - 8);
  v92 = v18;
  v19 = *(v91 + 64);
  __chkstk_darwin(v18);
  v90 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2CE000();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = __chkstk_darwin(v21);
  v98 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  __chkstk_darwin(v26);
  v29 = &v81 - v28;
  if (a1)
  {
    v82 = v27;
    v95 = a3;
    v87 = a5;
    v88 = a2;
    v89 = a7;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v21, static Logger.default);
    swift_beginAccess();
    v31 = v22[2];
    v86 = v30;
    v85 = v22 + 2;
    v84 = v31;
    v31(v29, v30, v21);

    v32 = sub_2CDFE0();
    v33 = sub_2CE670();

    v34 = os_log_type_enabled(v32, v33);
    v94 = a4;
    v83 = v17;
    if (v34)
    {
      v35 = a4;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v100 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_3F08(v95, v35, &v100);
      _os_log_impl(&dword_0, v32, v33, "CommonIntentAppResolver#resolveSelectedApp app IS installed: %{public}s", v36, 0xCu);
      sub_306C(v37);
    }

    v43 = v22[1];
    v43(v29, v21);
    v44 = v88;
    v45 = v87;
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    v47 = v95;
    v48 = v98;
    if (!v46)
    {
      goto LABEL_13;
    }

    v49 = v46;
    v50 = v45;
    if (!_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v49, &off_330918) || (sub_2CBDB0() & 1) != 0)
    {

LABEL_13:
      v84(v48, v86, v21);
      v51 = sub_2CDFE0();
      v52 = sub_2CE670();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_0, v51, v52, "CommonIntentAppResolver#resolveSelectedApp Removing the launchID from the intent", v53, 2u);
      }

      v43(v48, v21);
      v104._object = 0x80000000002DEE60;
      v102.value._countAndFlagsBits = 0;
      v102.value._object = 0;
      v104._countAndFlagsBits = 0xD000000000000024;
      sub_2CEAA0(v102, v104);
      [v45 _setExtensionBundleId:0];
      v54 = sub_1D4D38(v47, v94);
      v55 = swift_allocObject();
      v56 = v99;
      v55[2] = v96;
      v55[3] = v56;
      v55[4] = v89;
      v55[5] = v54;
      v57 = *(*v44 + class metadata base offset for CommonAppResolver + 120);

      v57(v45, v54, v97, sub_1DC044, v55);
    }

    v98 = v50;
    sub_20410(&unk_356F30, &qword_2D69C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0090;
    v59 = (v44 + *(*v44 + class metadata base offset for CommonAppResolver + 8));
    v60 = v59[1];
    *(inited + 32) = *v59;
    *(inited + 40) = v60;
    v62 = v91;
    v61 = v92;
    v63 = v90;
    (*(v91 + 104))(v90, enum case for ResolutionResultType.UnsupportedLyricsSearch(_:), v92);

    v64 = sub_2CC5E0();
    v66 = v65;
    (*(v62 + 8))(v63, v61);
    *(inited + 48) = v64;
    *(inited + 56) = v66;
    v97 = sub_90A9C(inited);
    swift_setDeallocating();
    sub_30B8(inited + 32, &qword_354748, &qword_2D69C8);
    v67 = v82;
    v84(v82, v86, v21);
    v68 = v94;

    v69 = sub_2CDFE0();
    v70 = sub_2CE680();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v100 = v72;
      *v71 = 136446210;
      v73 = v95;
      *(v71 + 4) = sub_3F08(v95, v68, &v100);
      _os_log_impl(&dword_0, v69, v70, "CommonIntentAppResolver#resolveSelectedApp unsupported lyrics search request for 3p: %{public}s", v71, 0xCu);
      sub_306C(v72);

      v43(v67, v21);
    }

    else
    {

      v43(v67, v21);
      v73 = v95;
    }

    v74 = v83;

    v105._countAndFlagsBits = 0xD00000000000002BLL;
    v105._object = 0x80000000002DEE90;
    v103.value._countAndFlagsBits = v73;
    v103.value._object = v68;
    v75 = v98;
    sub_2CEAA0(v103, v105);
    sub_2CCFB0();
    *v74 = sub_2CCF80();
    v76 = enum case for AppResolutionResult.AppResolutionResultError.appNotSupported(_:);
    v77 = sub_2CD040();
    (*(*(v77 - 8) + 104))(v74, v76, v77);
    v78 = enum case for AppResolutionResult.unsuccessful(_:);
    v79 = sub_2CD050();
    (*(*(v79 - 8) + 104))(v74, v78, v79);
    swift_storeEnumTagMultiPayload();
    v80 = sub_2349AC(v97);

    v99(v74, v80);

    return sub_30B8(v74, &qword_354750, &qword_2D69E0);
  }

  else
  {
    v38 = (a2 + *(*a2 + class metadata base offset for CommonAppResolver + 48));
    v39 = v38[4];
    sub_35E0(v38, v38[3]);
    v40 = swift_allocObject();
    v40[2] = a3;
    v40[3] = a4;
    v40[4] = a2;
    v40[5] = a5;
    v40[6] = v99;
    v40[7] = a7;

    v41 = a5;

    sub_2CC6B0();
  }
}

uint64_t sub_1D93F8(char a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, unint64_t), uint64_t a7)
{
  v76 = a7;
  v77 = a6;
  v72 = a5;
  v78 = a2;
  v74 = sub_20410(&qword_354750, &qword_2D69E0);
  v10 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v75 = (&v70 - v11);
  v12 = sub_2CC5F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v70 - v23;
  if (a1)
  {
    v71 = v12;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v25 = sub_3ED0(v17, static Logger.default);
    swift_beginAccess();
    v26 = v18;
    (*(v18 + 16))(v24, v25, v17);

    v27 = sub_2CDFE0();
    v28 = sub_2CE670();

    v29 = a3;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v73 = a3;
      v31 = v30;
      v32 = swift_slowAlloc();
      v79 = v32;
      *v31 = 136446210;
      v70 = a4;
      v33 = v78;
      *(v31 + 4) = sub_3F08(v78, v73, &v79);
      _os_log_impl(&dword_0, v27, v28, "CommonIntentAppResolver#resolveSelectedApp app IS installed but doesn't support any SiriKit audio intents: %{public}s", v31, 0xCu);
      sub_306C(v32);

      v29 = v73;

      v34 = v33;
      a4 = v70;
      (*(v26 + 8))(v24, v17);
    }

    else
    {

      (*(v26 + 8))(v24, v17);
      v34 = v78;
    }

    sub_20410(&unk_356F30, &qword_2D69C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0090;
    v55 = (a4 + *(*a4 + class metadata base offset for CommonAppResolver + 8));
    v56 = v55[1];
    *(inited + 32) = *v55;
    *(inited + 40) = v56;
    v57 = v71;
    (*(v13 + 104))(v16, enum case for ResolutionResultType.IntentsNotSupportedByApp(_:), v71);

    v58 = sub_2CC5E0();
    v60 = v59;
    (*(v13 + 8))(v16, v57);
    *(inited + 48) = v58;
    *(inited + 56) = v60;
    v41 = sub_90A9C(inited);
    swift_setDeallocating();
    sub_30B8(inited + 32, &qword_354748, &qword_2D69C8);

    v82._countAndFlagsBits = 0xD000000000000034;
    v82._object = 0x80000000002DEF00;
    v80.value._countAndFlagsBits = v34;
    v80.value._object = v29;
    sub_2CEAA0(v80, v82);
    sub_2CCFB0();
    v61 = sub_2CCF80();
    v62 = v75;
    *v75 = v61;
    v63 = &enum case for AppResolutionResult.AppResolutionResultError.appNotSupported(_:);
  }

  else
  {
    v73 = a3;
    sub_20410(&unk_356F30, &qword_2D69C0);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_2D0090;
    v36 = (a4 + *(*a4 + class metadata base offset for CommonAppResolver + 8));
    v37 = v36[1];
    *(v35 + 32) = *v36;
    *(v35 + 40) = v37;
    (*(v13 + 104))(v16, enum case for ResolutionResultType.AppNotInstalled(_:), v12);

    v38 = sub_2CC5E0();
    v40 = v39;
    (*(v13 + 8))(v16, v12);
    *(v35 + 48) = v38;
    *(v35 + 56) = v40;
    v41 = sub_90A9C(v35);
    swift_setDeallocating();
    sub_30B8(v35 + 32, &qword_354748, &qword_2D69C8);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v42 = sub_3ED0(v17, static Logger.default);
    swift_beginAccess();
    (*(v18 + 16))(v22, v42, v17);
    v43 = v73;

    v44 = sub_2CDFE0();
    v45 = sub_2CE680();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v78;
    if (v46)
    {
      v48 = swift_slowAlloc();
      v71 = v17;
      v49 = v18;
      v50 = v48;
      v79 = swift_slowAlloc();
      *v50 = 136446466;
      *(v50 + 4) = sub_3F08(v47, v43, &v79);
      *(v50 + 12) = 2082;
      v51 = sub_2CE210();
      v53 = sub_3F08(v51, v52, &v79);
      v43 = v73;

      *(v50 + 14) = v53;
      v47 = v78;
      _os_log_impl(&dword_0, v44, v45, "CommonIntentAppResolver#resolveSelectedApp app NOT installed: %{public}s, overwriting ResolveApp metadata with: %{public}s", v50, 0x16u);
      swift_arrayDestroy();

      (*(v49 + 8))(v22, v71);
    }

    else
    {

      (*(v18 + 8))(v22, v17);
    }

    v62 = v75;
    v83._object = 0x80000000002DEEC0;
    v81.value._countAndFlagsBits = v47;
    v81.value._object = v43;
    v83._countAndFlagsBits = 0xD000000000000031;
    sub_2CEAA0(v81, v83);
    v63 = &enum case for AppResolutionResult.AppResolutionResultError.noAppFound(_:);
  }

  v64 = *v63;
  v65 = sub_2CD040();
  (*(*(v65 - 8) + 104))(v62, v64, v65);
  v66 = enum case for AppResolutionResult.unsuccessful(_:);
  v67 = sub_2CD050();
  (*(*(v67 - 8) + 104))(v62, v66, v67);
  swift_storeEnumTagMultiPayload();
  v68 = sub_2349AC(v41);

  v77(v62, v68);

  return sub_30B8(v62, &qword_354750, &qword_2D69E0);
}

uint64_t sub_1D9D20(int a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v40 = a4;
  LODWORD(v38) = a1;
  v39 = sub_20410(&qword_354750, &qword_2D69E0);
  v8 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v10 = (&v35 - v9);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);

  v17 = v12;
  v18 = v15;
  v19 = sub_2CDFE0();
  v20 = sub_2CE690();

  v37 = v20;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = a3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v41 = v23;
    *v22 = 67240450;
    *(v22 + 4) = v38 & 1;
    *(v22 + 8) = 2082;
    v24 = sub_2CE210();
    v26 = sub_3F08(v24, v25, &v41);
    v38 = v11;
    v27 = v10;
    v28 = a5;
    v29 = a2;
    v30 = v26;

    *(v22 + 10) = v30;
    a2 = v29;
    a5 = v28;
    v10 = v27;
    _os_log_impl(&dword_0, v19, v37, "CommonIntentAppResolver#postResolve complete with success?: %{BOOL,public}d, metadata: %{public}s", v22, 0x12u);
    sub_306C(v23);

    a3 = v36;

    (*(v17 + 8))(v18, v38);
  }

  else
  {

    (*(v17 + 8))(v18, v11);
  }

  *v10 = a5;
  v31 = enum case for AppResolutionResult.selected(_:);
  v32 = sub_2CD050();
  (*(*(v32 - 8) + 104))(v10, v31, v32);
  swift_storeEnumTagMultiPayload();

  v33 = sub_2349AC(a2);
  a3(v10, v33);

  return sub_30B8(v10, &qword_354750, &qword_2D69E0);
}

uint64_t sub_1DA0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v53 = a6;
  v57 = a4;
  v58 = a5;
  v63 = a3;
  v8 = sub_2CE000();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  v10 = __chkstk_darwin(v8);
  v54 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v52 - v12;
  v66 = sub_2CB7D0();
  v13 = *(v66 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v66);
  v65 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = *(v13 + 16);
    v20 = v13 + 16;
    v62 = v21;
    v60 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v22 = a1 + v60;
    v23 = *(v20 + 56);
    v59 = (v20 - 8);
    v64 = (v20 + 16);
    v24 = _swiftEmptyArrayStorage;
    v61 = a2;
    v21(v18, a1 + v60, v66);
    while (1)
    {
      if (sub_2CB7B0() == a2 && v25 == v63)
      {
      }

      else
      {
        v26 = sub_2CEEA0();

        if ((v26 & 1) == 0)
        {
          (*v59)(v18, v66);
          goto LABEL_4;
        }
      }

      v27 = *v64;
      (*v64)(v65, v18, v66);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2DC3C(0, v24[2] + 1, 1);
        v24 = v67;
      }

      v30 = v24[2];
      v29 = v24[3];
      if (v30 >= v29 >> 1)
      {
        sub_2DC3C(v29 > 1, v30 + 1, 1);
        v24 = v67;
      }

      v24[2] = v30 + 1;
      v27(v24 + v60 + v30 * v23, v65, v66);
      a2 = v61;
LABEL_4:
      v22 += v23;
      if (!--v19)
      {
        goto LABEL_16;
      }

      v62(v18, v22, v66);
    }
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_16:
  v31 = v24[2];

  if (v31)
  {
    v33 = v55;
    v32 = v56;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v34 = sub_3ED0(v32, static Logger.default);
    swift_beginAccess();
    v35 = v54;
    (*(v33 + 16))(v54, v34, v32);
    v36 = sub_2CDFE0();
    v37 = sub_2CE690();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "CommonIntentAppResolver#appInstalled app is installed", v38, 2u);
    }

    (*(v33 + 8))(v35, v32);
    return v57(1);
  }

  else
  {
    v41 = v55;
    v40 = v56;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v42 = sub_3ED0(v40, static Logger.default);
    swift_beginAccess();
    v43 = v52;
    (*(v41 + 16))(v52, v42, v40);
    v44 = sub_2CDFE0();
    v45 = sub_2CE670();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v44, v45, "CommonIntentAppResolver#appInstalled app missing (at least from cache), refreshing...", v46, 2u);
    }

    (*(v41 + 8))(v43, v40);
    v47 = (v53 + *(*v53 + class metadata base offset for CommonAppResolver + 48));
    v48 = v47[4];
    sub_35E0(v47, v47[3]);
    v49 = swift_allocObject();
    v49[2] = a2;
    v50 = v57;
    v51 = v58;
    v49[3] = v63;
    v49[4] = v50;
    v49[5] = v51;

    sub_2CC6D0();
  }
}

uint64_t sub_1DA6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL), uint64_t a5)
{
  v42 = a5;
  v43 = a4;
  v49 = a3;
  v7 = sub_2CE000();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v39 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CB7D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v51 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v39 - v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    v19 = *(v11 + 16);
    v18 = v11 + 16;
    v48 = v19;
    v45 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v20 = a1 + v45;
    v21 = *(v18 + 56);
    v44 = (v18 - 8);
    v50 = (v18 + 16);
    v22 = _swiftEmptyArrayStorage;
    v46 = a2;
    v47 = v21;
    while (1)
    {
      v48(v16, v20, v10);
      if (sub_2CB7B0() == a2 && v24 == v49)
      {
        break;
      }

      v25 = sub_2CEEA0();

      if (v25)
      {
        goto LABEL_9;
      }

      (*v44)(v16, v10);
      v23 = v47;
LABEL_4:
      v20 += v23;
      if (!--v17)
      {
        goto LABEL_15;
      }
    }

LABEL_9:
    v26 = *v50;
    (*v50)(v51, v16, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2DC3C(0, v22[2] + 1, 1);
      v22 = v52;
    }

    v29 = v22[2];
    v28 = v22[3];
    if (v29 >= v28 >> 1)
    {
      sub_2DC3C(v28 > 1, v29 + 1, 1);
      v22 = v52;
    }

    v22[2] = v29 + 1;
    v23 = v47;
    v26(v22 + v45 + v29 * v47, v51, v10);
    a2 = v46;
    goto LABEL_4;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_15:
  v30 = v22[2];

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = v41;
  v32 = sub_3ED0(v41, static Logger.default);
  swift_beginAccess();
  v34 = v39;
  v33 = v40;
  (*(v40 + 16))(v39, v32, v31);
  v35 = sub_2CDFE0();
  v36 = sub_2CE690();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 67109120;
    *(v37 + 4) = v30 != 0;
    _os_log_impl(&dword_0, v35, v36, "CommonIntentAppResolver#appInstalled post-refresh app installed?:%{BOOL}d", v37, 8u);
  }

  (*(v33 + 8))(v34, v31);
  return v43(v30 != 0);
}

uint64_t sub_1DAAF4(uint64_t a1, void *a2)
{
  result = sub_2CCF90();
  if (v4)
  {
    v5 = (a2 + *(*a2 + class metadata base offset for CommonAppResolver + 16));
    v6 = v5[4];
    sub_35E0(v5, v5[3]);
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_2CBC50();

    return sub_30B8(v7, &qword_34E970, &qword_2D2910);
  }

  return result;
}

uint64_t sub_1DABE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2CDFE0();
  v11 = sub_2CE670();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v12 = 136446466;
    v13 = sub_2CCC80();
    v15 = sub_3F08(v13, v14, &v24);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v22 = a1;
    v23 = a2;

    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v16 = sub_2CE2A0();
    v18 = sub_3F08(v16, v17, &v24);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_0, v10, v11, "CommonAppResolutionService#postResolve %{public}s App name pre-resolved as: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CommonAppResolver.resolveBundleIdentifier(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*v3 + class metadata base offset for CommonAppResolver + 32);
  v7 = *(*v3 + class metadata base offset for CommonAppResolver + 40);
  v8 = *(*v3 + class metadata base offset for CommonAppResolver + 24);
  swift_beginAccess();
  sub_EEAC(v3 + v6, v13);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_2CEAB0();

  sub_30B8(v11, &qword_34E748, &qword_2D26D0);
  return sub_306C(v13);
}

uint64_t sub_1DAFB4(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v37 = a3;
  v38 = a5;
  v39 = a1;
  v36 = type metadata accessor for BundleResolutionResult();
  v7 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);

  v16 = v10;
  v17 = v14;
  v18 = sub_2CDFE0();
  v19 = sub_2CE690();

  v20 = v18;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v34 = v16;
    v22 = v21;
    v23 = swift_slowAlloc();
    v35 = a4;
    v40 = v23;
    *v22 = 136446466;
    v24 = sub_2CCC80();
    v26 = sub_3F08(v24, v25, &v40);
    v33 = v17;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v28 = v39;
    *(v22 + 14) = sub_3F08(v39, a2, &v40);
    _os_log_impl(&dword_0, v20, v19, "CommonIntentAppResolver#resolveBundleIdentifier %{public}s Default resolveBundleIdentifier resolved bundle: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    a4 = v35;

    (*(v11 + 8))(v33, v34);
  }

  else
  {

    (*(v11 + 8))(v17, v16);
    v28 = v39;
  }

  v29 = *(sub_20410(&qword_34E740, &unk_2D68F0) + 48);
  *v9 = v28;
  v9[1] = a2;
  v30 = sub_2CC5F0();
  (*(*(v30 - 8) + 16))(v9 + v29, v37, v30);
  swift_storeEnumTagMultiPayload();

  a4(v9);
  return sub_F1AE0(v9);
}

uint64_t sub_1DB358()
{
  v1 = *(v0 + *(*v0 + class metadata base offset for CommonAppResolver + 8) + 8);

  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 16)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 24)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 32)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 40)));
  return sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 48)));
}

uint64_t CommonAppResolver.__deallocating_deinit()
{
  CommonAppResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t BundleResolutionResult.description.getter()
{
  v1 = v0;
  v2 = sub_2CC5F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BundleResolutionResult();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DBBE0(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = sub_20410(&qword_3504D0, &qword_2D3B28);
    (*(v3 + 32))(v6, v10 + *(v12 + 48), v2);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_2CECB0(22);
    v24._countAndFlagsBits = 0x69626D617369642ELL;
    v24._object = 0xEF28206574617567;
    sub_2CE350(v24);
    v13 = sub_2CE420();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
  }

  else
  {
    v17 = *v10;
    v18 = v10[1];
    v19 = sub_20410(&qword_34E740, &unk_2D68F0);
    (*(v3 + 32))(v6, v10 + *(v19 + 48), v2);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_2CECB0(18);
    v25._countAndFlagsBits = 0x657463656C65732ELL;
    v25._object = 0xEB00000000282064;
    sub_2CE350(v25);
    v16._countAndFlagsBits = v17;
    v16._object = v18;
  }

  sub_2CE350(v16);

  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  sub_2CE350(v26);
  sub_2CED50();
  v27._countAndFlagsBits = 41;
  v27._object = 0xE100000000000000;
  sub_2CE350(v27);
  v20 = v22;
  (*(v3 + 8))(v6, v2);
  return v20;
}

uint64_t sub_1DB7D8(void *a1)
{
  v1 = [a1 launchId];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2CE270();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = sub_2CBDA0();
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_1DB868(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v23 = a1;
  v24 = a2;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v4 + *(*v4 + class metadata base offset for CommonAppResolver + 24));
  v13 = v12[4];
  sub_35E0(v12, v12[3]);
  if (sub_2CBBD0())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v14 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    (*(v8 + 16))(v11, v14, v7);
    v15 = sub_2CDFE0();
    v16 = sub_2CE690();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "CommonIntentAppResolver#appInstalled assuming HomePod apps are installed", v17, 2u);
    }

    (*(v8 + 8))(v11, v7);
    return a3(1);
  }

  else
  {
    v19 = (v4 + *(*v4 + class metadata base offset for CommonAppResolver + 48));
    v20 = v19[4];
    sub_35E0(v19, v19[3]);
    v21 = swift_allocObject();
    v21[2] = v23;
    v21[3] = v24;
    v21[4] = a3;
    v21[5] = a4;
    v21[6] = v4;

    sub_2CC6D0();
  }
}

uint64_t type metadata accessor for BundleResolutionResult()
{
  result = qword_354700;
  if (!qword_354700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DBBE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleResolutionResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DBCBC()
{
  sub_1DBD30();
  if (v0 <= 0x3F)
  {
    sub_1DBD98();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DBD30()
{
  if (!qword_354710)
  {
    sub_2CC5F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_354710);
    }
  }
}

void sub_1DBD98()
{
  if (!qword_354718)
  {
    sub_2DB30(&qword_353CA0, &unk_2D6090);
    sub_2CC5F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_354718);
    }
  }
}

uint64_t sub_1DBE14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DBE5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_20410(&qword_354758, &qword_2D69E8);
  return v4(a1, *(a1 + *(v5 + 48)));
}

uint64_t sub_1DBEC8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_2CDFD0() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v2 + 32);

  return a2(a1, v6, v7, v11, v2 + v5, v9, v10);
}

uint64_t sub_1DBF8C(char a1)
{
  v3 = *(sub_2CC5F0() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  return sub_1D8988(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1DC0D0(void *a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = a1;
    sub_2CE8D0();
  }
}

uint64_t sub_1DC174()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1DC1B8()
{
  result = sub_2CD690();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v6 = result;
  v7 = sub_2CEDA0();
  result = v6;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_2CECD0();
    goto LABEL_6;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v1 = *(result + 32);

LABEL_6:

    sub_2CAC80();
    v2 = sub_2CCFB0();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    v5 = sub_2CCF70();

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC2D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2CCFC0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1DC344(void *a1)
{
  v2 = v1;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v51[-v10];
  v12 = [v2 backingStore];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = [v13 privatePlayMediaIntentData];
    if (v14)
    {
      v58 = a1;
      v56 = v11;
      v15 = v14;
      v16 = [v14 privateMediaIntentData];

      v57 = v16;
      if (v16)
      {
        v17 = [v58 backingStore];
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18)
        {
          v19 = [v18 privatePlayMediaIntentData];
          if (v19)
          {
            v20 = v19;
            v21 = [v19 privateMediaIntentData];

            if (v21)
            {
              if (qword_34BF58 != -1)
              {
                swift_once();
              }

              v22 = sub_3ED0(v4, static Logger.default);
              swift_beginAccess();
              v23 = v56;
              (*(v5 + 16))(v56, v22, v4);
              v24 = v58;
              v25 = v2;
              v26 = sub_2CDFE0();
              v27 = sub_2CE680();

              if (os_log_type_enabled(v26, v27))
              {
                v28 = swift_slowAlloc();
                v58 = v25;
                v29 = v28;
                v54 = swift_slowAlloc();
                v59 = v54;
                *v29 = 136315394;
                v30 = [v24 description];
                v55 = v24;
                v31 = v30;
                v32 = sub_2CE270();
                v53 = v26;
                v33 = v32;
                v52 = v27;
                v35 = v34;

                v36 = sub_3F08(v33, v35, &v59);

                *(v29 + 4) = v36;
                *(v29 + 12) = 2080;
                v37 = [v58 description];
                v38 = sub_2CE270();
                v40 = v39;

                v41 = sub_3F08(v38, v40, &v59);

                *(v29 + 14) = v41;
                v24 = v55;
                v42 = v53;
                _os_log_impl(&dword_0, v53, v52, "INPlayMediaIntent#copyWholeHouseAudioData Copying over WHA data from %s to %s", v29, 0x16u);
                swift_arrayDestroy();

                v25 = v58;
              }

              else
              {
              }

              (*(v5 + 8))(v23, v4);
              v48 = [v21 wholeHouseAudioMetadata];
              v49 = v57;
              [v57 setWholeHouseAudioMetadata:v48];

              v50 = [v24 hashedRouteUIDs];
              [v25 setHashedRouteUIDs:v50];

              return;
            }
          }

          v43 = v17;
          v17 = v12;
        }

        else
        {
          v43 = v12;
        }

        v12 = v17;
      }
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v44 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v9, v44, v4);
  v45 = sub_2CDFE0();
  v46 = sub_2CE680();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_0, v45, v46, "INPlayMediaIntent#copyWholeHouseAudioData Couldn't find privateMediaIntentData in the intent. Unable to copy over WholeHouseAudioData", v47, 2u);
  }

  (*(v5 + 8))(v9, v4);
}

double sub_1DC8D8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v180 = a1;
  v181 = a2;
  v3 = sub_2CA810();
  v176 = *(v3 - 8);
  v177 = v3;
  v4 = *(v176 + 64);
  v5 = __chkstk_darwin(v3);
  v159 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v168 = &v152 - v8;
  __chkstk_darwin(v7);
  v175 = &v152 - v9;
  v165 = sub_2CA970();
  v164 = *(v165 - 8);
  v10 = *(v164 + 64);
  __chkstk_darwin(v165);
  v163 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_2CAA00();
  v173 = *(v172 - 8);
  v12 = *(v173 + 64);
  v13 = __chkstk_darwin(v172);
  v162 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v161 = &v152 - v16;
  v17 = __chkstk_darwin(v15);
  v160 = &v152 - v18;
  __chkstk_darwin(v17);
  v169 = &v152 - v19;
  v167 = sub_2CA8F0();
  v166 = *(v167 - 8);
  v20 = *(v166 + 64);
  __chkstk_darwin(v167);
  v171 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CA870();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = (&v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_2CE000();
  v178 = *(v27 - 8);
  v179 = v27;
  v28 = *(v178 + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v34 = &v152 - v33;
  v35 = __chkstk_darwin(v32);
  v170 = &v152 - v36;
  v37 = __chkstk_darwin(v35);
  v174 = &v152 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v152 - v40;
  v42 = __chkstk_darwin(v39);
  v157 = &v152 - v43;
  v44 = __chkstk_darwin(v42);
  v158 = &v152 - v45;
  v46 = __chkstk_darwin(v44);
  v156 = &v152 - v47;
  __chkstk_darwin(v46);
  v49 = &v152 - v48;
  v50 = [v2 privatePlayMediaIntentData];
  if (v50)
  {
    v51 = v50;
    v52 = [v50 privateMediaIntentData];

    if (v52)
    {
      v53 = [v52 homeAutomationEntityProvider];

      if (v53)
      {
        v154 = v41;
        v54 = v34;
        v183 = v53;
        v55 = sub_334A0(0, &qword_354798, INHomeAutomationEntityProvider_ptr);
        v56 = sub_1E3EAC();
        v155 = v55;
        v153 = v56;
        if (sub_2CDF10())
        {
          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v57 = v179;
          v58 = sub_3ED0(v179, static Logger.default);
          swift_beginAccess();
          v59 = v178;
          (*(v178 + 16))(v49, v58, v57);
          v60 = sub_2CDFE0();
          v61 = sub_2CE690();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 0;
            _os_log_impl(&dword_0, v60, v61, "INPlayMediaIntent#chooseHomeAutomationEntityProvider INPlayMediaIntent has a valid HomeAutomationEntityProvider. Choosing as the intent homeAutomationProvider", v62, 2u);
          }

          (*(v59 + 8))(v49, v57);
          v64 = v181;
          v65 = v153;
          v181[3] = v155;
          v64[4] = v65;
          *v64 = v53;
          return result;
        }

        v34 = v54;
        v41 = v154;
      }
    }
  }

  v66 = v180;
  (*(v23 + 16))(v26, v180, v22);
  v67 = (*(v23 + 88))(v26, v22);
  if (v67 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v23 + 8))(v26, v22);
    return sub_1DE378(v66, v181);
  }

  if (v67 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v23 + 96))(v26, v22);
    v68 = *(v26 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));

    v69 = sub_2CAFE0();
    (*(*(v69 - 8) + 8))(v26, v69);
    return sub_1DE378(v66, v181);
  }

  if (v67 == enum case for Parse.directInvocation(_:))
  {
    (*(v23 + 96))(v26, v22);
    v71 = v175;
    v70 = v176;
    v72 = v177;
    (*(v176 + 32))(v175, v26, v177);
    sub_238E4C(v71, &v183);
    if (v184 != 4)
    {
      v73 = v178;
      v74 = v179;
      if (v184 != 255)
      {
        sub_30B8(&v183, &qword_34CCB0, &qword_2D5710);
      }

      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v75 = sub_3ED0(v74, static Logger.default);
      swift_beginAccess();
      (*(v73 + 16))(v34, v75, v74);
      v76 = sub_2CDFE0();
      v77 = sub_2CE690();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_0, v76, v77, "INPlayMediaIntent#chooseHomeAutomationEntityProvider Unsupported directinvocation type", v78, 2u);
      }

      (*(v73 + 8))(v34, v74);
      v70[1](v71, v72);
      goto LABEL_91;
    }

    v103 = v183;

    v83 = v178;
    v86 = v179;
    v174 = v103;
    if (v103)
    {
      v104 = v179;
      v180 = v2;
      v84 = v174;
      v105 = v162;
      sub_2CDA40();
      v94 = sub_2CAA80();
      (*(v173 + 8))(v105, v172);
      if (v94 >> 62)
      {
        v132 = sub_2CEDA0();
      }

      else
      {
        v132 = *(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8));
      }

      v86 = v104;
      if (v132)
      {
        if ((v94 & 0xC000000000000001) != 0)
        {
          v133 = sub_2CECD0();
          goto LABEL_64;
        }

        if (*(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8)))
        {
          v133 = *(v94 + 32);

LABEL_64:

          sub_1DE178(v133, v181);

          v70[1](v71, v72);
          return result;
        }

        __break(1u);
        goto LABEL_99;
      }
    }

    if (qword_34BF58 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_82;
  }

  if (v67 == enum case for Parse.pommesResponse(_:))
  {
    v180 = v2;
    (*(v23 + 96))(v26, v22);
    v79 = *v26;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v80 = v179;
    v81 = sub_3ED0(v179, static Logger.default);
    swift_beginAccess();
    v82 = v178;
    v72 = v178 + 16;
    v83 = *(v178 + 16);
    (v83)(v41, v81, v80);
    v84 = v79;
    v85 = sub_2CDFE0();
    v86 = sub_2CE690();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138412290;
      *(v87 + 4) = v84;
      *v88 = v84;
      v89 = v84;
      _os_log_impl(&dword_0, v85, v86, "INPlayMediaIntent#chooseHomeAutomationEntityProvider Unpacking tasks from pommesResponse: %@", v87, 0xCu);
      sub_30B8(v88, &unk_34FC00, &unk_2D0150);
    }

    v90 = *(v82 + 8);
    v71 = v82 + 8;
    v70 = v90;
    (v90)(v41, v179);
    v91 = sub_2CDAD0();
    if (v91 >> 62)
    {
      v137 = v91;
      v138 = sub_2CEDA0();
      v91 = v137;
      if (!v138)
      {
        goto LABEL_86;
      }
    }

    else if (!*(&dword_10 + (v91 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_86;
    }

    if ((v91 & 0xC000000000000001) != 0)
    {
      v92 = sub_2CECD0();
    }

    else
    {
      if (!*(&dword_10 + (v91 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_82:
        swift_once();
LABEL_43:
        v106 = sub_3ED0(v86, static Logger.default);
        swift_beginAccess();
        v107 = v170;
        (*(v83 + 16))(v170, v106, v86);
        v108 = v70[2];
        v109 = v168;
        (v108)(v168, v71, v72);
        v110 = sub_2CDFE0();
        v111 = sub_2CE680();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v180 = swift_slowAlloc();
          v182 = v180;
          *v112 = 136315138;
          (v108)(v159, v109, v72);
          v113 = sub_2CE2A0();
          v115 = v114;
          v116 = v70[1];
          v116(v109, v72);
          v117 = sub_3F08(v113, v115, &v182);

          *(v112 + 4) = v117;
          _os_log_impl(&dword_0, v110, v111, "INPlayMediaIntent#chooseHomeAutomationEntityProvider unable to get audioExperience or the first task: %s", v112, 0xCu);
          sub_306C(v180);

          (*(v178 + 8))(v170, v179);
          v116(v71, v72);
        }

        else
        {

          v124 = v70[1];
          v124(v109, v72);
          (*(v83 + 8))(v107, v179);
          v124(v71, v72);
        }

        goto LABEL_91;
      }

      v92 = *(v91 + 32);
    }

    v93 = v92;

    sub_2CDB90();
    if (!swift_dynamicCastClass())
    {

LABEL_87:
      (v83)(v174, v81, v179);
      v139 = v84;
      v140 = sub_2CDFE0();
      v141 = sub_2CE680();

      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        *v142 = 138412290;
        *(v142 + 4) = v139;
        *v143 = v139;
        v144 = v139;
        _os_log_impl(&dword_0, v140, v141, "INPlayMediaIntent#chooseHomeAutomationEntityProvider unable to get the first task: %@", v142, 0xCu);
        sub_30B8(v143, &unk_34FC00, &unk_2D0150);
      }

      else
      {
        v144 = v140;
        v140 = v139;
      }

      (v70)(v174, v179);
      goto LABEL_91;
    }

    v94 = v93;
    v95 = v161;
    sub_2CDA40();
    v96 = v95;

    v134 = sub_2CAA80();
    (*(v173 + 8))(v96, v172);
    if (v134 >> 62)
    {
      if (sub_2CEDA0())
      {
        goto LABEL_67;
      }
    }

    else if (*(&dword_10 + (v134 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_67:
      if ((v134 & 0xC000000000000001) != 0)
      {
LABEL_99:
        v135 = sub_2CECD0();
        goto LABEL_70;
      }

      if (*(&dword_10 + (v134 & 0xFFFFFFFFFFFFFF8)))
      {
        v135 = *(v134 + 32);

LABEL_70:

        sub_1DE178(v135, v181);

        return result;
      }

      __break(1u);
      goto LABEL_101;
    }

LABEL_86:

    goto LABEL_87;
  }

  if (v67 == enum case for Parse.uso(_:))
  {
    (*(v23 + 96))(v26, v22);
    v71 = v166;
    v83 = v167;
    (*(v166 + 32))(v171, v26, v167);
    v97 = v163;
    sub_2CA8E0();
    v98 = sub_2CA960();
    (*(v164 + 8))(v97, v165);
    if (!*(v98 + 16))
    {

      v125 = v178;
      v126 = v179;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v127 = sub_3ED0(v126, static Logger.default);
      swift_beginAccess();
      v128 = v157;
      (*(v125 + 16))(v157, v127, v126);
      v129 = sub_2CDFE0();
      v130 = sub_2CE690();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        *v131 = 0;
        _os_log_impl(&dword_0, v129, v130, "INPlayMediaIntent#chooseHomeAutomationEntityProvider No user dialog act found in userParse.", v131, 2u);
      }

      (*(v125 + 8))(v128, v126);
      goto LABEL_57;
    }

    v70 = v173;
    v99 = v160;
    v72 = v172;
    (*(v173 + 16))(v160, v98 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v172);

    (v70[4])(v169, v99, v72);
    v100 = sub_2CAA80();
    v101 = v178;
    v102 = v179;
    if (v100 >> 62)
    {
      v146 = v100;
      v147 = sub_2CEDA0();
      v100 = v146;
      if (v147)
      {
        goto LABEL_73;
      }
    }

    else if (*(&dword_10 + (v100 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_73:
      if ((v100 & 0xC000000000000001) != 0)
      {
LABEL_101:
        v136 = sub_2CECD0();
        goto LABEL_76;
      }

      if (*(&dword_10 + (v100 & 0xFFFFFFFFFFFFFF8)))
      {
        v136 = *(v100 + 32);

LABEL_76:

        sub_1DE178(v136, v181);

        v70[1](v169, v72);
        (*(v71 + 8))(v171, v83);
        return result;
      }

      __break(1u);
      goto LABEL_103;
    }

    if (qword_34BF58 == -1)
    {
LABEL_94:
      v148 = sub_3ED0(v102, static Logger.default);
      swift_beginAccess();
      (*(v101 + 16))(v156, v148, v102);
      v149 = sub_2CDFE0();
      v150 = sub_2CE690();
      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        *v151 = 0;
        _os_log_impl(&dword_0, v149, v150, "INPlayMediaIntent#chooseHomeAutomationEntityProvider No tasks found in input", v151, 2u);
      }

      (*(v101 + 8))(v156, v102);
      v70[1](v169, v72);
LABEL_57:
      (*(v71 + 8))(v171, v83);
LABEL_91:
      v145 = v181;
      v181[4] = 0;
      result = 0.0;
      *v145 = 0u;
      *(v145 + 1) = 0u;
      return result;
    }

LABEL_103:
    swift_once();
    goto LABEL_94;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v118 = v179;
  v119 = sub_3ED0(v179, static Logger.default);
  swift_beginAccess();
  (*(v178 + 16))(v31, v119, v118);
  v120 = sub_2CDFE0();
  v121 = sub_2CE690();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    _os_log_impl(&dword_0, v120, v121, "INPlayMediaIntent#chooseHomeAutomationEntityProvider No HomeAutomationProviders found for this intent", v122, 2u);
  }

  (*(v178 + 8))(v31, v179);
  v123 = v181;
  v181[4] = 0;
  *v123 = 0u;
  *(v123 + 1) = 0u;
  (*(v23 + 8))(v26, v22);
  return result;
}

double sub_1DE178@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = a1;
  v9 = sub_2CAFC0();
  if (sub_2CDF10())
  {
    *(a2 + 24) = v9;
    *(a2 + 32) = &protocol witness table for UsoTask;
    *a2 = a1;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v11 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v8, v11, v4);
    v12 = sub_2CDFE0();
    v13 = sub_2CE690();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "INPlayMediaIntent#chooseHomeAutomationEntityProvider No homeAutomation nodes found in Uso Task", v14, 2u);
    }

    (*(v5 + 8))(v8, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1DE378@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_2CE000();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v52 = &v51 - v9;
  __chkstk_darwin(v8);
  v11 = &v51 - v10;
  v12 = sub_2CA870();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_20410(&qword_34D360, &qword_2D11E0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v51 - v19;
  v21 = type metadata accessor for AudioNLv3Intent();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12);
  sub_2B6170(v16, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_30B8(v20, &qword_34D360, &qword_2D11E0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v26 = v54;
    v27 = sub_3ED0(v54, static Logger.default);
    swift_beginAccess();
    v28 = v53;
    (*(v53 + 16))(v7, v27, v26);
    v29 = sub_2CDFE0();
    v30 = sub_2CE680();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "INPlayMediaIntent#chooseHomeAutomationEntityProvider Fatal: Cannot get AudioNLv3Intent from parse", v31, 2u);
    }

    (*(v28 + 8))(v7, v26);
    v32 = v55;
    *(v55 + 32) = 0;
    result = 0.0;
    *v32 = 0u;
    v32[1] = 0u;
  }

  else
  {
    sub_D416C(v20, v25);
    v34 = sub_1E3AE4(&qword_34F608, type metadata accessor for AudioNLv3Intent);
    if (sub_2CDF10())
    {
      v36 = v53;
      v35 = v54;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v37 = sub_3ED0(v35, static Logger.default);
      swift_beginAccess();
      (*(v36 + 16))(v11, v37, v35);
      v38 = sub_2CDFE0();
      v39 = sub_2CE690();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "INPlayMediaIntent#chooseHomeAutomationEntityProvider MediaPlayer NLv3 intent has homeAutomation nodes. Choosing as the intent homeAutomationProvider", v40, 2u);
      }

      (*(v36 + 8))(v11, v35);
      v41 = v55;
      *(v55 + 24) = v21;
      v41[4] = v34;
      v42 = sub_F390(v41);
      sub_D416C(v25, v42);
    }

    else
    {
      v44 = v53;
      v43 = v54;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v45 = sub_3ED0(v43, static Logger.default);
      swift_beginAccess();
      v46 = v52;
      (*(v44 + 16))(v52, v45, v43);
      v47 = sub_2CDFE0();
      v48 = sub_2CE690();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_0, v47, v48, "INPlayMediaIntent#chooseHomeAutomationEntityProvider No homeAutomation nodes found in NLv3 intent", v49, 2u);
      }

      (*(v44 + 8))(v46, v43);
      sub_FED50(v25);
      result = 0.0;
      v50 = v55;
      *v55 = 0u;
      *(v50 + 16) = 0u;
      *(v50 + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_1DE9B4(void *a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v145 = a5;
  v151 = a1;
  v157 = sub_2CDD90();
  v154 = *(v157 - 8);
  v14 = *(v154 + 64);
  __chkstk_darwin(v157);
  v158 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_2CDF60();
  v143 = *(v159 - 1);
  v16 = *(v143 + 64);
  v17 = __chkstk_darwin(v159);
  v152 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v149 = &v131 - v19;
  v20 = sub_2CDFD0();
  v160 = *(v20 - 8);
  v21 = v160[8];
  __chkstk_darwin(v20);
  v156 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2CE000();
  v146 = *(v23 - 8);
  v24 = *(v146 + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v29 = __chkstk_darwin(v28);
  v30 = __chkstk_darwin(v29);
  __chkstk_darwin(v30);
  v35 = &v131 - v34;
  if (a2)
  {
    v155 = v20;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v36 = sub_3ED0(v23, static Logger.default);
    swift_beginAccess();
    v37 = v146;
    (*(v146 + 16))(v27, v36, v23);
    v38 = v151;
    swift_errorRetain();
    v39 = sub_2CDFE0();
    v40 = sub_2CE680();
    sub_1E1074(v38, 1);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v161 = v159;
      *v41 = 136315138;
      swift_getErrorValue();
      v42 = sub_2CEEF0();
      v44 = sub_3F08(v42, v43, &v161);

      *(v41 + 4) = v44;
      _os_log_impl(&dword_0, v39, v40, "INPlayMediaIntent#performRouteResolution Error resolving devices: %s", v41, 0xCu);
      sub_306C(v159);
    }

    (*(v37 + 8))(v27, v23);
    v45 = v155;
    sub_2CE9F0();
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_2D0090;
    *(v46 + 56) = &type metadata for Int;
    *(v46 + 64) = &protocol witness table for Int;
    *(v46 + 32) = -1;
    v47 = v156;
    sub_2CDFC0();
    sub_2CDF90();

    (v160[1])(v47, v45);
    v48 = 258;
    return a3(v48);
  }

  v132 = v33;
  v142 = v32;
  v133 = v31;
  v144 = a4;
  v135 = a6;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v49 = sub_3ED0(v23, static Logger.default);
  swift_beginAccess();
  v50 = v146;
  v51 = *(v146 + 16);
  v140 = v49;
  v139 = v146 + 16;
  v138 = v51;
  v51(v35, v49, v23);
  v52 = v151;

  v53 = sub_2CDFE0();
  v54 = sub_2CE690();
  sub_1E1074(v52, 0);
  v55 = os_log_type_enabled(v53, v54);
  v137 = a7;
  v136 = a8;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v155 = v20;
    v57 = v56;
    v58 = swift_slowAlloc();
    *&v162 = v58;
    *v57 = 136446210;
    v59 = sub_2CE440();
    v61 = a3;
    v62 = sub_3F08(v59, v60, &v162);

    *(v57 + 4) = v62;
    a3 = v61;
    _os_log_impl(&dword_0, v53, v54, "INPlayMediaIntent#performRouteResolution Resolved devices %{public}s", v57, 0xCu);
    sub_306C(v58);

    v20 = v155;
  }

  v63 = *(v50 + 8);
  v63(v35, v23);
  v141 = v23;
  sub_2CE9F0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_2D0090;
  *(v64 + 56) = &type metadata for Int;
  *(v64 + 64) = &protocol witness table for Int;
  *(v64 + 32) = 0;
  v65 = v156;
  sub_2CDFC0();
  sub_2CDF90();

  (v160[1])(v65, v20);
  v66 = v151[2];
  if (!v66)
  {
    v48 = 258;
    return a3(v48);
  }

  v67 = v145[4];
  sub_35E0(v145, v145[3]);

  v68 = sub_1BDF38();
  v134 = a3;
  if (v66 == 1 || !v68)
  {
    goto LABEL_45;
  }

  v131 = v63;
  v155 = *(v143 + 16);
  v148 = (*(v143 + 80) + 32) & ~*(v143 + 80);
  v69 = v151 + v148;
  v70 = *(v143 + 72);
  v154 += 8;
  v147 = (v143 + 32);
  v156 = (v143 + 16);
  v150 = (v143 + 8);
  v160 = _swiftEmptyArrayStorage;
  v71 = v159;
  v72 = v158;
  v73 = v149;
  v153 = v70;
  v155(v149, v151 + v148, v159);
  while (1)
  {
    v75 = sub_2CDF40();
    v77 = v76;
    v78 = sub_2CDD70();
    sub_2CDD80();
    if (*(v78 + 16) && (v79 = sub_4F464(v72), (v80 & 1) != 0))
    {
      v81 = (*(v78 + 56) + 16 * v79);
      v82 = v72;
      v83 = *v81;
      v84 = v81[1];
      v85 = *v154;

      v86 = v82;
      v73 = v149;
      v85(v86, v157);
      v71 = v159;

      if (!v77)
      {
        goto LABEL_19;
      }
    }

    else
    {

      (*v154)(v72, v157);
      v84 = 0xE700000000000000;
      v83 = 0x7674656C707061;
      if (!v77)
      {
LABEL_19:

LABEL_20:
        (*v150)(v73, v71);
        v72 = v158;
        v74 = v153;
        goto LABEL_21;
      }
    }

    if (v75 == v83 && v77 == v84)
    {
    }

    else
    {
      v87 = sub_2CEEA0();

      if ((v87 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v158;
    if (isUniquelyReferenced_nonNull_native)
    {
      v89 = v160;
    }

    else
    {
      v89 = sub_B9474(0, v160[2] + 1, 1, v160);
    }

    v91 = v89[2];
    v90 = v89[3];
    if (v91 >= v90 >> 1)
    {
      v89 = sub_B9474(v90 > 1, v91 + 1, 1, v89);
    }

    v89[2] = v91 + 1;
    v160 = v89;
    v74 = v153;
    (*v147)(v89 + v148 + v91 * v153, v73, v71);
LABEL_21:
    v69 += v74;
    if (!--v66)
    {
      break;
    }

    v155(v73, v69, v71);
  }

  sub_1E1074(v151, 0);
  v92 = v145[3];
  v93 = v145[4];
  sub_35E0(v145, v92);
  v94 = sub_1BDD00(v92, v93);
  a3 = v134;
  if ((v94 & 1) == 0)
  {

    v95 = v141;
    v63 = v131;
LABEL_63:
    v138(v142, v140, v95);
    v128 = sub_2CDFE0();
    v129 = sub_2CE690();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&dword_0, v128, v129, "INPlayMediaIntent#performRouteResolution Request to play music on speaker/homepod/TV, but multiple devices matching the deviceType found. Returning .noSpecificSpeaker", v130, 2u);
    }

    v63(v142, v95);
    v48 = 259;
    return a3(v48);
  }

  v95 = v141;
  v63 = v131;
  if (v160[2] != 1)
  {

    goto LABEL_63;
  }

  v138(v132, v140, v141);
  v96 = sub_2CDFE0();
  v97 = sub_2CE690();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&dword_0, v96, v97, "INPlayMediaIntent#performRouteResolution Request to play music on the TV: multiple TVs resolved but only 1 AppleTV was found. Selecting it and continuing...", v98, 2u);
  }

  v63(v132, v95);
  v151 = v160;
LABEL_45:
  v99 = v145[3];
  v100 = v145[4];
  sub_35E0(v145, v99);
  if ((sub_1BCFC8(v99, v100) & 1) != 0 || sub_1DFB50(v151))
  {
    v101 = v151;
  }

  else
  {
    v102 = v141;
    v138(v133, v140, v141);
    v103 = sub_2CDFE0();
    v104 = sub_2CE690();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_0, v103, v104, "INPlayMediaIntent#performRouteResolution TVs were not explicitely targeted in the intent. Pruning from all devices", v105, 2u);
    }

    v63(v133, v102);
    v106 = v145[3];
    v107 = v145[4];
    sub_35E0(v145, v106);
    v108 = sub_1BE2A4(v106, v107);
    v101 = sub_1DFDF4(v108, v151);
  }

  v109 = v101[2];
  v151 = v101;
  if (v109)
  {
    v160 = *(v143 + 16);
    v110 = v101 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
    v111 = *(v143 + 72);
    v112 = (v143 + 8);
    v113 = _swiftEmptyArrayStorage;
    do
    {
      v115 = v152;
      v116 = v159;
      (v160)(v152, v110, v159);
      v117 = sub_2CDF20();
      v119 = v118;
      (*v112)(v115, v116);
      if (v119)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_B90C4(0, *(v113 + 2) + 1, 1, v113);
        }

        v121 = *(v113 + 2);
        v120 = *(v113 + 3);
        if (v121 >= v120 >> 1)
        {
          v113 = sub_B90C4((v120 > 1), v121 + 1, 1, v113);
        }

        *(v113 + 2) = v121 + 1;
        v114 = &v113[16 * v121];
        *(v114 + 4) = v117;
        *(v114 + 5) = v119;
      }

      v110 += v111;
      --v109;
    }

    while (v109);
  }

  else
  {
    v113 = _swiftEmptyArrayStorage;
  }

  v122 = v135[4];
  sub_35E0(v135, v135[3]);
  sub_EEAC(v145, &v162);
  sub_EEAC(v136, &v161);
  v123 = swift_allocObject();
  v124 = v137;
  v123[2] = v137;
  sub_F338(&v162, (v123 + 3));
  sub_F338(&v161, (v123 + 8));
  v123[13] = v151;
  v123[14] = v113;
  v125 = v144;
  v123[15] = v134;
  v123[16] = v125;
  v126 = v124;

  sub_2CC7F0();
}

BOOL sub_1DFB50(uint64_t a1)
{
  v2 = sub_20410(&qword_354790, &qword_2D6BE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_2CDF60();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v30 = &v26 - v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v11 + 72);
    v28 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v15 = a1 + v28;
    v16 = (v11 + 48);
    v17 = (v11 + 32);
    v18 = _swiftEmptyArrayStorage;
    v29 = v10;
    v26 = (v11 + 48);
    v27 = v14;
    do
    {
      sub_2770BC(v15, v5);
      if ((*v16)(v5, 1, v6) == 1)
      {
        sub_30B8(v5, &qword_354790, &qword_2D6BE0);
      }

      else
      {
        v19 = *v17;
        v20 = v30;
        (*v17)(v30, v5, v6);
        v19(v10, v20, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_B9474(0, v18[2] + 1, 1, v18);
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          v18 = sub_B9474(v21 > 1, v22 + 1, 1, v18);
        }

        v18[2] = v22 + 1;
        v14 = v27;
        v23 = v18 + v28 + v22 * v27;
        v10 = v29;
        v19(v23, v29, v6);
        v16 = v26;
      }

      v15 += v14;
      --v13;
    }

    while (v13);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];

  return v24 == 0;
}

void *sub_1DFDF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CE000();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  __chkstk_darwin(v4);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_354790, &qword_2D6BE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v46 - v9;
  v11 = sub_2CDF60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v56 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v52 = &v46 - v16;

  v18 = 0;
  v19 = sub_1E3B2C(v17);

  v20 = *(a2 + 16);
  v53 = v11;
  if (v20)
  {
    v21 = *(v12 + 72);
    v50 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v22 = a2 + v50;
    v55 = (v12 + 48);
    v23 = (v12 + 32);
    v24 = _swiftEmptyArrayStorage;
    v51 = a1;
    do
    {
      sub_27771C(v22, a1, v19, v10);
      if ((*v55)(v10, 1, v11) == 1)
      {
        sub_30B8(v10, &qword_354790, &qword_2D6BE0);
      }

      else
      {
        v54 = v18;
        v25 = v21;
        v26 = v19;
        v27 = *v23;
        v28 = v52;
        (*v23)(v52, v10, v11);
        v27(v56, v28, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_B9474(0, v24[2] + 1, 1, v24);
        }

        v30 = v24[2];
        v29 = v24[3];
        v31 = v24;
        v19 = v26;
        if (v30 >= v29 >> 1)
        {
          v31 = sub_B9474(v29 > 1, v30 + 1, 1, v24);
        }

        v21 = v25;
        *(v31 + 16) = v30 + 1;
        v24 = v31;
        v32 = v31 + v50 + v30 * v25;
        v11 = v53;
        v27(v32, v56, v53);
        a1 = v51;
        v18 = v54;
      }

      v22 += v21;
      --v20;
    }

    while (v20);
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v33 = v49;
  v34 = sub_3ED0(v49, static Logger.default);
  swift_beginAccess();
  v36 = v47;
  v35 = v48;
  (*(v48 + 16))(v47, v34, v33);

  v37 = v24;
  v38 = sub_2CDFE0();
  v39 = sub_2CE690();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v57 = v41;
    *v40 = 136446210;
    v42 = sub_2CE420();
    v44 = sub_3F08(v42, v43, &v57);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_0, v38, v39, "Devices after pruning: %{public}s)", v40, 0xCu);
    sub_306C(v41);
  }

  (*(v35 + 8))(v36, v33);
  return v37;
}

uint64_t sub_1E02C8(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a2;
  v71 = a6;
  v68 = a3;
  v69 = a5;
  v67 = a4;
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v63 - v17;
  v72 = v16;
  if (a1)
  {
    v19 = a1;
    v20 = [v19 mediaRouteIdentifier];
    if (v20)
    {
      v66 = v19;
      v21 = v20;
      v22 = sub_2CE270();
      v24 = v23;

      *&v73[0] = v22;
      *(&v73[0] + 1) = v24;
      __chkstk_darwin(v25);
      v62 = v73;
      LOBYTE(v21) = sub_13964(sub_13A68, &v60, v71);

      if (v21)
      {
        sub_2CE7F0();
      }

      v26 = swift_allocObject();
      *(v26 + 16) = a7;
      *(v26 + 24) = a8;
      v27 = qword_34BF98;

      v28 = v27 == -1;
      v29 = v72;
      if (!v28)
      {
        swift_once();
      }

      v30 = qword_35F760;
      sub_2CDFB0();
      v31 = *(v12 + 16);
      v64 = v18;
      v31(v15, v18, v29);
      v32 = (*(v12 + 80) + 33) & ~*(v12 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = "resolveWHADestinationDevicesRouteEncryption";
      *(v33 + 24) = 43;
      *(v33 + 32) = 2;
      (*(v12 + 32))(v33 + v32, v15, v29);
      v34 = (v33 + ((v13 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v34 = sub_1E3FF8;
      v34[1] = v26;

      sub_2CE9E0();
      v62 = _swiftEmptyArrayStorage;
      v61 = 2;
      v60 = 21;
      sub_2CDF90();
      v35 = swift_allocObject();
      *(v35 + 16) = sub_1E3FEC;
      *(v35 + 24) = v33;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_1E3FFC;
      *(v36 + 24) = v35;
      v37 = v67[3];
      v65 = v67[4];
      sub_35E0(v67, v37);
      sub_EEAC(v68, v73);
      v38 = swift_allocObject();
      v39 = v70;
      v38[2] = v69;
      v38[3] = v39;
      sub_F338(v73, (v38 + 4));
      v38[9] = sub_1E3FF0;
      v38[10] = v36;

      v40 = v39;
      sub_2CDE10();

      (*(v12 + 8))(v64, v72);
    }
  }

  v41 = swift_allocObject();
  v41[2] = a7;
  v41[3] = a8;
  v66 = v41;
  v42 = qword_34BF98;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = qword_35F760;
  v44 = v18;
  sub_2CDFB0();
  v45 = v12;
  (*(v12 + 16))(v15, v44, v11);
  v46 = *(v12 + 80);
  v47 = v11;
  v48 = (v46 + 33) & ~v46;
  v49 = swift_allocObject();
  *(v49 + 16) = "resolveWHADestinationDevicesRouteEncryption";
  *(v49 + 24) = 43;
  *(v49 + 32) = 2;
  (*(v45 + 32))(v49 + v48, v15, v47);
  v50 = (v49 + ((v13 + v48 + 7) & 0xFFFFFFFFFFFFFFF8));
  v51 = v66;
  *v50 = sub_1E1098;
  v50[1] = v51;

  sub_2CE9E0();
  v62 = _swiftEmptyArrayStorage;
  v61 = 2;
  v60 = 21;
  sub_2CDF90();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1E10A0;
  *(v52 + 24) = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1E10A4;
  *(v53 + 24) = v52;
  v54 = v67[3];
  v65 = v67[4];
  v67 = sub_35E0(v67, v54);
  sub_EEAC(v68, v73);
  v55 = swift_allocObject();
  v56 = v45;
  v57 = v70;
  v55[2] = v69;
  v55[3] = v57;
  sub_F338(v73, (v55 + 4));
  v55[9] = sub_1E10AC;
  v55[10] = v53;

  v58 = v57;

  sub_2CDE10();

  (*(v56 + 8))(v44, v72);
}

void sub_1E09D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v63 = a5;
  v61 = a4;
  v10 = sub_2CDCF0();
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  v12 = __chkstk_darwin(v10);
  v59 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = v52 - v14;
  v15 = sub_2CE000();
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  v17 = __chkstk_darwin(v15);
  v58 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v52 - v19;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v22 = *(v64 + 16);
  v56 = v64 + 16;
  v57 = v21;
  v55 = v22;
  v22(v20, v21, v15);

  v23 = sub_2CDFE0();
  v24 = sub_2CE690();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v54 = a6;
    v26 = v25;
    v65[0] = swift_slowAlloc();
    *v26 = 136315394;
    v27 = sub_2CE420();
    v52[1] = a1;
    v29 = sub_3F08(v27, v28, v65);
    v53 = v10;
    v30 = v15;
    v31 = v29;

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    sub_2CDF60();
    v32 = sub_2CE420();
    v34 = sub_3F08(v32, v33, v65);

    *(v26 + 14) = v34;
    v15 = v30;
    v35 = v64;
    v10 = v53;
    _os_log_impl(&dword_0, v23, v24, "INPlayMediaIntent#whaDestinationDevicesRouteEncryption Encoded routes: %s, devices: %s", v26, 0x16u);
    swift_arrayDestroy();

    v36 = v35;
  }

  else
  {

    v36 = v64;
  }

  v37 = *(v36 + 8);
  v37(v20, v15);
  isa = sub_2CE400().super.isa;
  [a3 setHashedRouteUIDs:isa];

  sub_EEAC(v61, v65);

  v39 = v60;
  sub_2CDCE0();
  v40 = v62;
  v41 = v59;
  (*(v62 + 16))(v59, v39, v10);
  v42 = sub_1E1114(v65, a2, v41);
  (*(v40 + 8))(v39, v10);
  v43 = [a3 backingStore];
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (v44 && (v45 = [v44 privatePlayMediaIntentData]) != 0 && (v46 = v45, v47 = objc_msgSend(v45, "privateMediaIntentData"), v46, v47))
  {
    [v47 setWholeHouseAudioMetadata:v42];
    v63(0);

    v42 = v47;
  }

  else
  {

    v48 = v58;
    v55(v58, v57, v15);
    v49 = sub_2CDFE0();
    v50 = sub_2CE680();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "INPlayMediaIntent#whaDestinationDevicesRouteEncryption Couldn't find privateMediaIntentData in the intent. Cannot attach WholeHouseAudioMetadata", v51, 2u);
    }

    v37(v48, v15);
    v63(256);
  }
}

Swift::Int RouteResolutionError.hashValue.getter(unsigned __int8 a1)
{
  sub_2CEF50();
  sub_2CEF60(a1);
  return sub_2CEF80();
}

unint64_t sub_1E1010()
{
  result = qword_354770;
  if (!qword_354770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354770);
  }

  return result;
}

uint64_t sub_1E1074(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1E10B4()
{
  v1 = *(v0 + 16);

  sub_306C((v0 + 32));
  v2 = *(v0 + 80);

  return _swift_deallocObject(v0, 88);
}

id sub_1E1114(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v274 = a2;
  v255 = sub_2CDDD0();
  v254 = *(v255 - 8);
  v5 = *(v254 + 64);
  __chkstk_darwin(v255);
  v7 = &v242 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_20410(&qword_354160, &unk_2D6BB0);
  v8 = *(*(v253 - 8) + 64);
  __chkstk_darwin(v253);
  v10 = &v242 - v9;
  v11 = sub_20410(&qword_34DA28, qword_2D1908);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v245 = &v242 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v260 = &v242 - v16;
  __chkstk_darwin(v15);
  v261 = &v242 - v17;
  v270 = sub_2CDF70();
  v269 = *(v270 - 8);
  v18 = *(v269 + 64);
  __chkstk_darwin(v270);
  v244 = &v242 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_20410(&qword_354158, &unk_2D6BC0);
  v20 = *(*(v268 - 8) + 64);
  v21 = __chkstk_darwin(v268);
  v252 = &v242 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v251 = &v242 - v23;
  v24 = sub_20410(&qword_34DA18, &qword_2D18F8);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v246 = &v242 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v258 = &v242 - v29;
  v30 = __chkstk_darwin(v28);
  v259 = &v242 - v31;
  v32 = __chkstk_darwin(v30);
  v243 = &v242 - v33;
  v34 = __chkstk_darwin(v32);
  v277 = &v242 - v35;
  __chkstk_darwin(v34);
  v257 = &v242 - v36;
  v283 = sub_2CDF60();
  v272 = *(v283 - 1);
  v37 = *(v272 + 64);
  v38 = __chkstk_darwin(v283);
  v282 = &v242 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v281 = &v242 - v41;
  v42 = __chkstk_darwin(v40);
  v280 = &v242 - v43;
  __chkstk_darwin(v42);
  v279 = &v242 - v44;
  v45 = sub_2CE000();
  v46 = *(v45 - 8);
  v47 = v46[8];
  v48 = __chkstk_darwin(v45);
  v256 = &v242 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v262 = &v242 - v51;
  __chkstk_darwin(v50);
  v53 = &v242 - v52;
  v54 = sub_2CDCF0();
  (*(*(v54 - 8) + 8))(a3, v54);
  result = [objc_allocWithZone(_INPBWholeHouseAudioMetadata) init];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v56 = result;
  v57 = a1[4];
  sub_35E0(a1, a1[3]);
  v276 = v56;
  v290 = sub_2CDEC0();
  v58 = a1[4];
  sub_35E0(a1, a1[3]);
  v59 = sub_2CDED0();
  sub_80D34(v59);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v60 = sub_3ED0(v45, static Logger.default);
  swift_beginAccess();
  v61 = v46[2];
  v62 = v53;
  v265 = v60;
  v264 = v46 + 2;
  v263 = v61;
  v61(v53, v60, v45);
  v63 = sub_2CDFE0();
  v64 = sub_2CE690();
  v65 = os_log_type_enabled(v63, v64);
  v250 = v10;
  v242 = v7;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v287 = v67;
    *v66 = 136315138;
    swift_beginAccess();

    v68 = sub_2CE420();
    v278 = v62;
    v70 = v69;

    v71 = sub_3F08(v68, v70, &v287);

    *(v66 + 4) = v71;
    _os_log_impl(&dword_0, v63, v64, "_INPBWholeHouseAudioMetadata#init Unknown entities: %s", v66, 0xCu);
    sub_306C(v67);

    v72 = v46[1];
    v73 = v278;
  }

  else
  {

    v72 = v46[1];
    v73 = v53;
  }

  v266 = v72;
  v72(v73, v45);
  v267 = v46;
  v271 = v45;
  v275 = a1;
  v74 = *(v274 + 16);
  v273 = v74;
  if (v74)
  {
    v278 = *(v272 + 16);
    v75 = v274 + ((*(v272 + 80) + 32) & ~*(v272 + 80));
    v76 = *(v272 + 72);
    v77 = (v272 + 8);
    v78 = _swiftEmptyArrayStorage;
    do
    {
      v80 = v279;
      v81 = v283;
      (v278)(v279, v75, v283);
      v82 = sub_2CDF50();
      v84 = v83;
      (*v77)(v80, v81);
      if (v84)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_B90C4(0, *(v78 + 2) + 1, 1, v78);
        }

        v86 = *(v78 + 2);
        v85 = *(v78 + 3);
        if (v86 >= v85 >> 1)
        {
          v78 = sub_B90C4((v85 > 1), v86 + 1, 1, v78);
        }

        *(v78 + 2) = v86 + 1;
        v79 = &v78[16 * v86];
        *(v79 + 4) = v82;
        *(v79 + 5) = v84;
      }

      v75 += v76;
      --v74;
    }

    while (v74);
  }

  else
  {
    v78 = _swiftEmptyArrayStorage;
  }

  v87 = v275;
  v88 = v275[4];
  sub_35E0(v275, v275[3]);
  v289 = sub_2CDEE0();
  v89 = v87[4];
  sub_35E0(v87, v87[3]);
  v90 = sub_2CDE80();
  v91 = v87[4];
  sub_35E0(v87, v87[3]);
  v92 = sub_2CDE90();
  v287 = v90;
  sub_80D34(v92);
  v288 = v287;
  swift_beginAccess();
  v93 = v290;

  sub_1E39D8(v94, v78, &v288, &v289);

  swift_bridgeObjectRelease_n();
  v95 = v262;
  v96 = v271;
  v263(v262, v265, v271);
  v97 = sub_2CDFE0();
  v98 = sub_2CE690();
  v99 = os_log_type_enabled(v97, v98);
  v249 = v93;
  if (v99)
  {
    v100 = swift_slowAlloc();
    v286 = swift_slowAlloc();
    *v100 = 136315394;
    swift_beginAccess();

    v101 = sub_2CE420();
    v103 = v102;

    v104 = sub_3F08(v101, v103, &v286);

    *(v100 + 4) = v104;
    *(v100 + 12) = 2080;
    swift_beginAccess();

    v105 = sub_2CE420();
    v107 = v106;

    v108 = sub_3F08(v105, v107, &v286);

    *(v100 + 14) = v108;
    _os_log_impl(&dword_0, v97, v98, "_INPBWholeHouseAudioMetadata#init intent speaker names: %s, intent room names: %s", v100, 0x16u);
    swift_arrayDestroy();
  }

  v266(v95, v96);
  v109 = v273;
  if (v273)
  {
    v279 = *(v272 + 16);
    v110 = v274 + ((*(v272 + 80) + 32) & ~*(v272 + 80));
    v111 = *(v272 + 72);
    v112 = (v272 + 8);
    v113 = _swiftEmptyArrayStorage;
    do
    {
      v115 = v280;
      v116 = v283;
      (v279)(v280, v110, v283);
      v117 = sub_2CDF30();
      v119 = v118;
      (*v112)(v115, v116);
      if (v119)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_B90C4(0, *(v113 + 2) + 1, 1, v113);
        }

        v121 = *(v113 + 2);
        v120 = *(v113 + 3);
        if (v121 >= v120 >> 1)
        {
          v113 = sub_B90C4((v120 > 1), v121 + 1, 1, v113);
        }

        *(v113 + 2) = v121 + 1;
        v114 = &v113[16 * v121];
        *(v114 + 4) = v117;
        *(v114 + 5) = v119;
      }

      v110 += v111;
      --v109;
    }

    while (v109);
  }

  else
  {
    v113 = _swiftEmptyArrayStorage;
  }

  v122 = sub_2BDFB4(v113);

  v286 = v122;
  v123 = sub_20410(&qword_354778, &qword_2D6BD0);
  v124 = sub_1E3A80();
  v278 = v123;
  v262 = v124;
  sub_2CE570();

  v279 = sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
  isa = sub_2CE400().super.isa;

  [v276 setSpeakerNames:isa];

  v126 = v273;
  if (v273)
  {
    v280 = *(v272 + 16);
    v127 = v274 + ((*(v272 + 80) + 32) & ~*(v272 + 80));
    v128 = *(v272 + 72);
    v129 = (v272 + 8);
    v130 = _swiftEmptyArrayStorage;
    do
    {
      v132 = v281;
      v133 = v283;
      (v280)(v281, v127, v283);
      v134 = sub_2CDF50();
      v136 = v135;
      (*v129)(v132, v133);
      if (v136)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = sub_B90C4(0, *(v130 + 2) + 1, 1, v130);
        }

        v138 = *(v130 + 2);
        v137 = *(v130 + 3);
        if (v138 >= v137 >> 1)
        {
          v130 = sub_B90C4((v137 > 1), v138 + 1, 1, v130);
        }

        *(v130 + 2) = v138 + 1;
        v131 = &v130[16 * v138];
        *(v131 + 4) = v134;
        *(v131 + 5) = v136;
      }

      v127 += v128;
      --v126;
    }

    while (v126);
  }

  else
  {
    v130 = _swiftEmptyArrayStorage;
  }

  v139 = sub_2BDFB4(v130);

  v286 = v139;
  sub_2CE570();

  v140 = sub_2CE400().super.isa;

  [v276 setSpeakerRooms:v140];

  swift_beginAccess();
  v141 = *(v289 + 16);
  v248 = v289;
  if (v141)
  {

    v143 = sub_2BDFB4(v142);

    v285[1] = v143;
    sub_2CE570();

    v144.super.isa = sub_2CE400().super.isa;
  }

  else
  {
    v144.super.isa = 0;
  }

  v145 = v277;
  [v276 setIntentSpeakerNames:{v144.super.isa, v242}];

  swift_beginAccess();
  v146 = *(v288 + 16);
  v247 = v288;
  if (v146)
  {

    v148 = sub_2BDFB4(v147);

    v285[0] = v148;
    sub_2CE570();

    v149.super.isa = sub_2CE400().super.isa;
  }

  else
  {
    v149.super.isa = 0;
  }

  [v276 setIntentSpeakerRooms:v149.super.isa];

  v150 = v273;
  if (v273)
  {
    v281 = *(v272 + 16);
    v151 = v274 + ((*(v272 + 80) + 32) & ~*(v272 + 80));
    v280 = *(v272 + 72);
    v152 = (v272 + 8);
    v153 = _swiftEmptyArrayStorage;
    do
    {
      v155 = v282;
      v156 = v283;
      (v281)(v282, v151, v283);
      v157 = sub_2CDF30();
      v159 = v158;
      (*v152)(v155, v156);
      if (v159)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = sub_B90C4(0, *(v153 + 2) + 1, 1, v153);
        }

        v161 = *(v153 + 2);
        v160 = *(v153 + 3);
        if (v161 >= v160 >> 1)
        {
          v153 = sub_B90C4((v160 > 1), v161 + 1, 1, v153);
        }

        *(v153 + 2) = v161 + 1;
        v154 = &v153[16 * v161];
        *(v154 + 4) = v157;
        *(v154 + 5) = v159;
        v145 = v277;
      }

      v151 += v280;
      --v150;
    }

    while (v150);
  }

  else
  {
    v153 = _swiftEmptyArrayStorage;
  }

  v162 = sub_2BDFB4(v153);

  v285[0] = v162;
  sub_2CE570();

  v163 = sub_2CE400().super.isa;

  [v276 setIntentDestinationSpeakers:v163];

  v164 = v275[4];
  sub_35E0(v275, v275[3]);
  v165 = v257;
  sub_2CDE60();
  v166 = v269;
  v167 = *(v269 + 104);
  v168 = v270;
  v167(v145, enum case for PlaceHint.house(_:), v270);
  v169 = *(v166 + 56);
  v282 = (v166 + 56);
  v281 = v169;
  (v169)(v145, 0, 1, v168);
  v170 = *(v268 + 48);
  v171 = v251;
  sub_F3F4(v165, v251, &qword_34DA18, &qword_2D18F8);
  sub_F3F4(v145, v171 + v170, &qword_34DA18, &qword_2D18F8);
  v172 = *(v166 + 48);
  v173 = v172(v171, 1, v168);
  v283 = v172;
  if (v173 != 1)
  {
    v176 = v243;
    sub_F3F4(v171, v243, &qword_34DA18, &qword_2D18F8);
    if (v172(v171 + v170, 1, v168) != 1)
    {
      v179 = v269;
      v180 = v171 + v170;
      v181 = v244;
      (*(v269 + 32))(v244, v180, v168);
      sub_1E3AE4(&qword_354168, &type metadata accessor for PlaceHint);
      LODWORD(v280) = sub_2CE250();
      v182 = *(v179 + 8);
      v182(v181, v168);
      sub_30B8(v277, &qword_34DA18, &qword_2D18F8);
      sub_30B8(v257, &qword_34DA18, &qword_2D18F8);
      v182(v176, v168);
      sub_30B8(v171, &qword_34DA18, &qword_2D18F8);
      v175 = v252;
      if (v280)
      {
        goto LABEL_63;
      }

LABEL_61:
      v177 = 0;
      v178 = v275;
      goto LABEL_64;
    }

    sub_30B8(v277, &qword_34DA18, &qword_2D18F8);
    sub_30B8(v257, &qword_34DA18, &qword_2D18F8);
    (*(v269 + 8))(v176, v168);
    v175 = v252;
LABEL_60:
    sub_30B8(v171, &qword_354158, &unk_2D6BC0);
    goto LABEL_61;
  }

  sub_30B8(v145, &qword_34DA18, &qword_2D18F8);
  sub_30B8(v165, &qword_34DA18, &qword_2D18F8);
  v174 = v172(v171 + v170, 1, v168);
  v175 = v252;
  if (v174 != 1)
  {
    goto LABEL_60;
  }

  sub_30B8(v171, &qword_34DA18, &qword_2D18F8);
LABEL_63:
  v178 = v275;
  v183 = v275[4];
  sub_35E0(v275, v275[3]);
  v177 = !sub_1BCEE8();
LABEL_64:
  [v276 setIsAllSpeakers:v177];
  v184 = v178[4];
  sub_35E0(v178, v178[3]);
  v185 = v259;
  sub_2CDE60();
  v186 = v258;
  v187 = v270;
  v167(v258, enum case for PlaceHint.here(_:), v270);
  (v281)(v186, 0, 1, v187);
  v188 = *(v268 + 48);
  sub_F3F4(v185, v175, &qword_34DA18, &qword_2D18F8);
  sub_F3F4(v186, v175 + v188, &qword_34DA18, &qword_2D18F8);
  v189 = v283;
  if ((v283)(v175, 1, v187) == 1)
  {
    sub_30B8(v186, &qword_34DA18, &qword_2D18F8);
    sub_30B8(v185, &qword_34DA18, &qword_2D18F8);
    v190 = v189(v175 + v188, 1, v187);
    v191 = v275;
    v192 = v255;
    v193 = v250;
    v194 = v254;
    v195 = v261;
    v196 = v260;
    v197 = v253;
    if (v190 == 1)
    {
      sub_30B8(v175, &qword_34DA18, &qword_2D18F8);
      v198 = 1;
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v199 = v246;
  sub_F3F4(v175, v246, &qword_34DA18, &qword_2D18F8);
  v200 = v189(v175 + v188, 1, v187);
  v192 = v255;
  v193 = v250;
  v194 = v254;
  if (v200 == 1)
  {
    sub_30B8(v258, &qword_34DA18, &qword_2D18F8);
    sub_30B8(v259, &qword_34DA18, &qword_2D18F8);
    (*(v269 + 8))(v199, v187);
    v191 = v275;
    v195 = v261;
    v196 = v260;
    v197 = v253;
LABEL_69:
    sub_30B8(v175, &qword_354158, &unk_2D6BC0);
    v198 = 0;
    goto LABEL_71;
  }

  v201 = v269;
  v202 = v175 + v188;
  v203 = v244;
  (*(v269 + 32))(v244, v202, v187);
  sub_1E3AE4(&qword_354168, &type metadata accessor for PlaceHint);
  v198 = sub_2CE250();
  v204 = *(v201 + 8);
  v204(v203, v187);
  sub_30B8(v258, &qword_34DA18, &qword_2D18F8);
  sub_30B8(v259, &qword_34DA18, &qword_2D18F8);
  v204(v246, v187);
  sub_30B8(v175, &qword_34DA18, &qword_2D18F8);
  v191 = v275;
  v195 = v261;
  v196 = v260;
  v197 = v253;
LABEL_71:
  [v276 setIsInHere:v198 & 1];
  v205 = v191[4];
  sub_35E0(v191, v191[3]);
  sub_2CDEF0();
  v206 = v194;
  (*(v194 + 104))(v196, enum case for DeviceQuantifier.except(_:), v192);
  (*(v194 + 56))(v196, 0, 1, v192);
  v207 = *(v197 + 48);
  sub_F3F4(v195, v193, &qword_34DA28, qword_2D1908);
  sub_F3F4(v196, v193 + v207, &qword_34DA28, qword_2D1908);
  v208 = v195;
  v209 = v194;
  v210 = v196;
  v211 = *(v209 + 48);
  if (v211(v193, 1, v192) != 1)
  {
    v216 = v245;
    sub_F3F4(v193, v245, &qword_34DA28, qword_2D1908);
    v217 = v211(v193 + v207, 1, v192);
    v214 = v256;
    if (v217 != 1)
    {
      v218 = v193 + v207;
      v219 = v242;
      (*(v206 + 32))(v242, v218, v192);
      sub_1E3AE4(&qword_354170, &type metadata accessor for DeviceQuantifier);
      v215 = sub_2CE250();
      v220 = *(v206 + 8);
      v220(v219, v192);
      sub_30B8(v260, &qword_34DA28, qword_2D1908);
      sub_30B8(v261, &qword_34DA28, qword_2D1908);
      v220(v216, v192);
      sub_30B8(v193, &qword_34DA28, qword_2D1908);
      v213 = v271;
      goto LABEL_78;
    }

    sub_30B8(v260, &qword_34DA28, qword_2D1908);
    sub_30B8(v261, &qword_34DA28, qword_2D1908);
    (*(v206 + 8))(v216, v192);
    v213 = v271;
    goto LABEL_76;
  }

  sub_30B8(v210, &qword_34DA28, qword_2D1908);
  sub_30B8(v208, &qword_34DA28, qword_2D1908);
  v212 = v211(v193 + v207, 1, v192);
  v213 = v271;
  v214 = v256;
  if (v212 != 1)
  {
LABEL_76:
    sub_30B8(v193, &qword_354160, &unk_2D6BB0);
    v215 = 0;
    goto LABEL_78;
  }

  sub_30B8(v193, &qword_34DA28, qword_2D1908);
  v215 = 1;
LABEL_78:
  v221 = v215 & 1;
  v222 = v276;
  [v276 setHasExcept:v221];
  v263(v214, v265, v213);
  v223 = v222;
  v224 = sub_2CDFE0();
  v225 = sub_2CE690();

  if (os_log_type_enabled(v224, v225))
  {
    v226 = swift_slowAlloc();
    v285[0] = swift_slowAlloc();
    *v226 = 136315394;
    v227 = [v223 intentSpeakerNames];
    if (v227)
    {
      v228 = v227;
      v229 = sub_2CE410();
    }

    else
    {
      v229 = 0;
    }

    v284 = v229;
    sub_20410(&qword_354788, &qword_2D6BD8);
    v232 = sub_2CE2A0();
    v234 = sub_3F08(v232, v233, v285);

    *(v226 + 4) = v234;
    *(v226 + 12) = 2080;
    v235 = [v223 intentSpeakerNames];
    if (v235)
    {
      v236 = v235;
      v237 = sub_2CE410();
    }

    else
    {
      v237 = 0;
    }

    v284 = v237;
    v238 = sub_2CE2A0();
    v240 = v239;

    v241 = sub_3F08(v238, v240, v285);

    *(v226 + 14) = v241;
    _os_log_impl(&dword_0, v224, v225, "_INPBWholeHouseAudioMetadata#init intent speaker names: %s, intent room names: %s", v226, 0x16u);
    swift_arrayDestroy();

    v230 = v214;
    v231 = v271;
  }

  else
  {

    v230 = v214;
    v231 = v213;
  }

  v266(v230, v231);

  sub_306C(v275);
  return v223;
}

uint64_t sub_1E30DC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(unsigned __int8 *), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13)
{
  v89 = a5;
  v90 = a6;
  v85 = a4;
  v86 = a1;
  v84 = a13;
  v94 = sub_2CDFD0();
  v83 = *(v94 - 8);
  v16 = *(v83 + 64);
  v17 = __chkstk_darwin(v94);
  v80 = v18;
  v81 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v82 = &v80 - v19;
  v20 = sub_2CE000();
  v87 = *(v20 - 8);
  v88 = v20;
  v21 = *(v87 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v80 - v26;
  v28 = *(*(a9 - 8) + 64);
  __chkstk_darwin(v25);
  v91 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v30;
  v31 = *(v30 + 16);
  v93 = a9;
  v31();
  v101[3] = a8;
  v101[4] = a11;
  v32 = sub_F390(v101);
  (*(*(a8 - 8) + 16))(v32, a3, a8);
  v100[3] = a10;
  v100[4] = v84;
  v33 = sub_F390(v100);
  (*(*(a10 - 8) + 16))(v33, v85, a10);
  v34 = a7;
  sub_1DC8D8(v86, &v97);
  if (v98)
  {
    sub_F338(&v97, v99);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v86 = a12;
    v35 = v88;
    v36 = sub_3ED0(v88, static Logger.default);
    swift_beginAccess();
    v37 = v87;
    (*(v87 + 16))(v27, v36, v35);
    v38 = v34;
    v39 = sub_2CDFE0();
    v40 = sub_2CE690();

    v41 = os_log_type_enabled(v39, v40);
    v85 = v38;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v97 = v43;
      *v42 = 136446210;
      v44 = sub_2CE770();
      v46 = sub_3F08(v44, v45, &v97);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v39, v40, "INPlayMediaIntent#performRouteResolution This is a WHA request... Running for intent INPlayMediaIntent: %{public}s", v42, 0xCu);
      sub_306C(v43);
    }

    (*(v37 + 8))(v27, v35);
    v47 = swift_allocObject();
    *(v47 + 16) = v89;
    v89 = v47;
    *(v47 + 24) = v90;
    v48 = qword_34BF98;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = qword_35F760;
    v50 = v82;
    sub_2CDFB0();
    v51 = v83;
    v52 = v81;
    v53 = v94;
    (*(v83 + 16))(v81, v50, v94);
    v54 = (*(v51 + 80) + 33) & ~*(v51 + 80);
    v55 = (v80 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = "resolveWHADestinationDevices";
    *(v56 + 24) = 28;
    *(v56 + 32) = 2;
    (*(v51 + 32))(v56 + v54, v52, v53);
    v57 = (v56 + v55);
    v58 = v89;
    *v57 = sub_1E3FF8;
    v57[1] = v58;

    sub_2CE9E0();
    v59 = v50;
    sub_2CDF90();
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1E3FEC;
    *(v60 + 24) = v56;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1E3FFC;
    *(v61 + 24) = v60;
    sub_EEAC(v99, &v97);
    sub_EEAC(v100, v96);
    sub_EEAC(v101, v95);
    v62 = swift_allocObject();
    v62[2] = sub_1E3FF0;
    v62[3] = v61;
    sub_F338(&v97, (v62 + 4));
    sub_F338(v96, (v62 + 9));
    v63 = v85;
    v62[14] = v85;
    sub_F338(v95, (v62 + 15));
    v64 = v63;

    v65 = v91;
    v66 = v93;
    sub_2CDE40();

    (*(v51 + 8))(v59, v94);

    sub_306C(v99);
  }

  else
  {
    v67 = v24;
    sub_30B8(&v97, &qword_3547A8, &unk_2D6BE8);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v68 = v88;
    v69 = sub_3ED0(v88, static Logger.default);
    swift_beginAccess();
    v70 = v87;
    (*(v87 + 16))(v67, v69, v68);
    v71 = v34;
    v72 = sub_2CDFE0();
    v73 = sub_2CE660();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v97 = v75;
      *v74 = 136446210;
      v76 = sub_2CE770();
      v78 = sub_3F08(v76, v77, &v97);

      *(v74 + 4) = v78;
      _os_log_impl(&dword_0, v72, v73, "INPlayMediaIntent#performRouteResolution No homeAutomationProvider was found in the intent: %{public}s. This is expected if no home automation entities were requested", v74, 0xCu);
      sub_306C(v75);
    }

    (*(v70 + 8))(v67, v68);
    v66 = v93;
    v65 = v91;
    v89(0);
  }

  (*(v92 + 8))(v65, v66);
  sub_306C(v101);
  return sub_306C(v100);
}

uint64_t sub_1E39D8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 40); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;

      sub_14F698(v11, a2, a3, a4);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_1E3A80()
{
  result = qword_354780;
  if (!qword_354780)
  {
    sub_2DB30(&qword_354778, &qword_2D6BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_354780);
  }

  return result;
}

uint64_t sub_1E3AE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3B2C(uint64_t a1)
{
  v2 = sub_2CDF60();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v43 - v7;
  v8 = &_swiftEmptyDictionarySingleton;
  v55 = &_swiftEmptyDictionarySingleton;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v11 = *(v6 + 16);
  v10 = v6 + 16;
  v45 = *(v10 + 64);
  v12 = *(v10 + 56);
  v48 = (v45 + 32) & ~v45;
  v49 = v11;
  v13 = a1 + v48;
  v52 = (v10 + 16);
  v44 = xmmword_2D0090;
  v46 = v2;
  v47 = v10;
  v51 = v12;
  while (1)
  {
    v53 = v9;
    v15 = v10;
    v49(v54, v13, v2);
    v19 = sub_2CDF50();
    v21 = v20;
    v23 = sub_4F8DC(v19, v20);
    v24 = v8[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v8[3] < v26)
    {
      sub_236FB0(v26, 1);
      v8 = v55;
      v28 = sub_4F8DC(v19, v21);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v23 = v28;
    }

    if (v27)
    {

      v30 = v8[7];
      v31 = *v52;
      (*v52)(v50, v54, v2);
      v32 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_B9474(0, v32[2] + 1, 1, v32);
        *(v30 + 8 * v23) = v32;
      }

      v35 = v32[2];
      v34 = v32[3];
      if (v35 >= v34 >> 1)
      {
        v32 = sub_B9474(v34 > 1, v35 + 1, 1, v32);
        *(v30 + 8 * v23) = v32;
      }

      v15 = v47;
      v14 = v48;
      v32[2] = v35 + 1;
      v16 = v51;
      v17 = v32 + v14 + v35 * v51;
      v2 = v46;
      v18 = v53;
      v31(v17, v50, v46);
    }

    else
    {
      sub_20410(&qword_34E998, &qword_2D2948);
      v36 = v48;
      v37 = swift_allocObject();
      *(v37 + 16) = v44;
      (*v52)((v37 + v36), v54, v2);
      v8[(v23 >> 6) + 8] |= 1 << v23;
      v38 = (v8[6] + 16 * v23);
      *v38 = v19;
      v38[1] = v21;
      *(v8[7] + 8 * v23) = v37;
      v39 = v8[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_18;
      }

      v8[2] = v41;
      v16 = v51;
      v18 = v53;
    }

    v13 += v16;
    v9 = v18 - 1;
    v10 = v15;
    if (!v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_20410(&qword_34CCC0, &unk_2D0DE0);
  result = sub_2CEEE0();
  __break(1u);
  return result;
}

unint64_t sub_1E3EAC()
{
  result = qword_3547A0;
  if (!qword_3547A0)
  {
    sub_334A0(255, &qword_354798, INHomeAutomationEntityProvider_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3547A0);
  }

  return result;
}

uint64_t sub_1E3F14(_BYTE *a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_211640(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t UpdateMediaAffinity.HandleIntentStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v31 = a4;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
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
    v17 = swift_slowAlloc();
    v29 = a2;
    v18 = v17;
    v34 = a1;
    v35 = v17;
    *v16 = 136315138;
    sub_2CCFB0();
    v30 = a3;
    sub_1E65A8(&qword_34C170, 255, &type metadata accessor for App);
    v19 = sub_2CEE70();
    v21 = sub_3F08(v19, v20, &v35);

    *(v16 + 4) = v21;
    a3 = v30;
    _os_log_impl(&dword_0, v14, v15, "HandleIntentStrategy#makeIntentHandledResponse for app: %s", v16, 0xCu);
    sub_306C(v18);
    a2 = v29;
  }

  (*(v9 + 8))(v12, v8);
  v22 = v32;
  v23 = *(v32 + 104);
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = a1;
  v25 = v31;
  v24[4] = a2;
  v24[5] = v25;
  v24[6] = v33;
  v24[7] = a3;

  v26 = a2;

  v27 = a3;
  sub_1317A4(a1, v26, sub_1E4EC8, v24);
}

uint64_t sub_1E4318(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v76 = a7;
  v90 = a5;
  v91 = a6;
  v92 = a4;
  v88 = a2;
  v89 = a3;
  v81 = a1;
  v79 = sub_2CCB20();
  v78 = *(v79 - 8);
  v7 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v84 = &v76 - v11;
  v82 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = *(*(v82 - 8) + 64);
  v13 = __chkstk_darwin(v82);
  v80 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v83 = &v76 - v15;
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v87 = &v76 - v18;
  v19 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v86 = &v76 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v85 = &v76 - v24;
  v25 = sub_2CCB30();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2CCAC0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20410(&unk_3519A0, &qword_2D0980);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = (&v76 - v37);
  sub_F3F4(v81, &v76 - v37, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v38;
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.umahis(_:), v30);
    (*(v26 + 104))(v29, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v25);
    swift_getErrorValue();
    sub_2CEEF0();
    v84 = sub_2CCAE0();

    (*(v26 + 8))(v29, v25);
    (*(v31 + 8))(v34, v30);
    v40 = v88[7];
    v88 = sub_35E0(v88 + 3, v88[6]);
    v41 = enum case for ActivityType.failed(_:);
    v42 = sub_2C9C20();
    v43 = *(v42 - 8);
    v44 = v85;
    (*(v43 + 104))(v85, v41, v42);
    (*(v43 + 56))(v44, 0, 1, v42);
    v45 = sub_2CA130();
    v46 = v86;
    (*(*(v45 - 8) + 56))(v86, 1, 1, v45);
    v47 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v48 = sub_2C98F0();
    v49 = *(v48 - 8);
    v50 = v87;
    (*(v49 + 104))(v87, v47, v48);
    (*(v49 + 56))(v50, 0, 1, v48);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v50, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v46, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v44, &qword_34CB88, &unk_2D0D90);
    v93[0] = v39;
    v94 = 1;
    swift_errorRetain();
    v90(v93);

    return sub_30B8(v93, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v52 = v83;
    sub_24BE0(v38, v83);
    sub_28D844(v92, v84);
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.umahis(_:), v30);
    (*(v26 + 104))(v29, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v25);
    v53 = v78;
    v54 = v77;
    v55 = v79;
    (*(v78 + 104))(v77, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v79);
    v81 = sub_2CCAD0();
    v76 = v56;
    (*(v53 + 8))(v54, v55);
    (*(v26 + 8))(v29, v25);
    (*(v31 + 8))(v34, v30);
    v57 = v88;
    v77 = v88[6];
    v78 = v88[7];
    v79 = sub_35E0(v88 + 3, v77);
    v58 = enum case for ActivityType.completed(_:);
    v59 = sub_2C9C20();
    v60 = *(v59 - 8);
    v61 = v85;
    (*(v60 + 104))(v85, v58, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    v62 = v80;
    sub_F3F4(v52, v80, &qword_34C6E8, &unk_2D0FF0);

    v63 = sub_2CA130();
    v64 = *(v63 - 8);
    v65 = v86;
    (*(v64 + 32))(v86, v62, v63);
    (*(v64 + 56))(v65, 0, 1, v63);
    v66 = enum case for SiriKitReliabilityCodes.success(_:);
    v67 = sub_2C98F0();
    v68 = *(v67 - 8);
    v69 = v87;
    (*(v68 + 104))(v87, v66, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v69, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v65, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v61, &qword_34CB88, &unk_2D0D90);
    v70 = sub_35E0(v57 + 8, v57[11]);
    v71 = v83;
    sub_F3F4(v83, v62, &qword_34C6E8, &unk_2D0FF0);
    v72 = *(v62 + *(v82 + 48));
    v73 = *v70;
    v74 = v91;

    v75 = v84;
    sub_1C6C10(v62, v72, v84, _swiftEmptyArrayStorage, v73, v90, v74);

    sub_30B8(v75, &unk_353020, &unk_2D0970);
    sub_30B8(v71, &qword_34C6E8, &unk_2D0FF0);
    return (*(v64 + 8))(v62, v63);
  }
}

uint64_t UpdateMediaAffinity.HandleIntentStrategy.makeSiriKitIntentHandler(app:intent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);

  v12 = a2;
  v13 = sub_2CDFE0();
  v14 = sub_2CE690();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = a1;
    v27 = v23;
    *v16 = 136315394;
    sub_2CCFB0();
    v25 = a1;
    sub_1E65A8(&qword_34C170, 255, &type metadata accessor for App);
    v18 = sub_2CEE70();
    v20 = sub_3F08(v18, v19, &v27);
    a1 = v25;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v17 = v12;
    v21 = v12;
    _os_log_impl(&dword_0, v13, v14, "UpdateMediaAffinity#makeSiriKitIntentHandler called with app: %s and intent: %@", v16, 0x16u);
    sub_30B8(v17, &unk_34FC00, &unk_2D0150);

    sub_306C(v23);

    a3 = v24;
  }

  (*(v7 + 8))(v10, v6);
  return _s23AudioFlowDelegatePlugin019UpdateMediaAffinityB8StrategyC24makeSiriKitIntentHandler3app6intent0jkB00jklM0VSg0J13AppResolution0P0C_So08INUpdatefgL0CtF_0(a1, v12, a3);
}

uint64_t UpdateMediaAffinity.HandleIntentStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v36 = a4;
  v37 = a5;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "UpdateMediaAffinity#makeFailureHandlingIntentResponse", v18, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v35 = *(v6 + 104);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  strcpy((inited + 32), "MetricsError");
  *(inited + 16) = xmmword_2D0090;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v20 = 0xE000000000000000;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_2CECB0(50);

  v39 = 0xD00000000000002DLL;
  v40 = 0x80000000002DD970;
  v21 = [a3 userActivity];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 activityType];

    v24 = sub_2CE270();
    v20 = v25;
  }

  else
  {
    v24 = 0;
  }

  v41._countAndFlagsBits = v24;
  v41._object = v20;
  sub_2CE350(v41);

  v42._countAndFlagsBits = 95;
  v42._object = 0xE100000000000000;
  sub_2CE350(v42);
  v38 = [a3 code];
  v43._countAndFlagsBits = sub_2CEE70();
  sub_2CE350(v43);

  v26 = v39;
  v27 = v40;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v26;
  *(inited + 56) = v27;
  v28 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v29 = swift_allocObject();
  *(v29 + 16) = v6;
  *(v29 + 24) = a1;
  v30 = v36;
  v31 = v37;
  *(v29 + 32) = a2;
  *(v29 + 40) = v30;
  *(v29 + 48) = v31;
  *(v29 + 56) = a3;

  v32 = a2;

  v33 = a3;
  sub_E4FD0(v28, a1, sub_1E6530, v29);
}

uint64_t sub_1E55B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, void *a7)
{
  v72 = a7;
  v84 = a5;
  v85 = a6;
  v82 = a3;
  v83 = a4;
  v78 = a2;
  v75 = a1;
  v7 = sub_20410(&unk_353020, &unk_2D0970);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v74 = v71 - v9;
  v76 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v10 = *(*(v76 - 8) + 64);
  v11 = __chkstk_darwin(v76);
  v73 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = v71 - v13;
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v81 = v71 - v16;
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v80 = v71 - v19;
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v79 = v71 - v22;
  v23 = sub_2CCB30();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2CCAC0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20410(&unk_3519A0, &qword_2D0980);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = (v71 - v35);
  sub_F3F4(v75, v71 - v35, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v36;
    (*(v29 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.umahis(_:), v28);
    (*(v24 + 104))(v27, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v23);
    swift_getErrorValue();
    sub_2CEEF0();
    v77 = sub_2CCAE0();

    (*(v24 + 8))(v27, v23);
    (*(v29 + 8))(v32, v28);
    v38 = v78[7];
    v78 = sub_35E0(v78 + 3, v78[6]);
    v39 = enum case for ActivityType.failed(_:);
    v40 = sub_2C9C20();
    v41 = *(v40 - 8);
    v42 = v79;
    (*(v41 + 104))(v79, v39, v40);
    (*(v41 + 56))(v42, 0, 1, v40);
    v43 = sub_2CA130();
    v44 = v80;
    (*(*(v43 - 8) + 56))(v80, 1, 1, v43);
    v45 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v46 = sub_2C98F0();
    v47 = *(v46 - 8);
    v48 = v81;
    (*(v47 + 104))(v81, v45, v46);
    (*(v47 + 56))(v48, 0, 1, v46);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v48, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v44, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v42, &qword_34CB88, &unk_2D0D90);
    v86[0] = v37;
    v87 = 1;
    swift_errorRetain();
    v84(v86);

    return sub_30B8(v86, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v50 = v77;
    sub_24BE0(v36, v77);
    (*(v29 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.umahis(_:), v28);
    (*(v24 + 104))(v27, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v23);
    v86[0] = [v72 code];
    sub_2CEE70();
    v75 = sub_2CCAE0();
    v72 = v51;

    (*(v24 + 8))(v27, v23);
    (*(v29 + 8))(v32, v28);
    v52 = v78;
    v71[0] = v78[6];
    v71[1] = v78[7];
    v71[2] = sub_35E0(v78 + 3, v71[0]);
    v53 = enum case for ActivityType.failed(_:);
    v54 = sub_2C9C20();
    v55 = *(v54 - 8);
    v56 = v79;
    (*(v55 + 104))(v79, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    v57 = v73;
    sub_F3F4(v50, v73, &qword_34C6E8, &unk_2D0FF0);

    v58 = sub_2CA130();
    v59 = *(v58 - 8);
    v60 = v80;
    (*(v59 + 32))(v80, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
    v62 = sub_2C98F0();
    v63 = *(v62 - 8);
    v64 = v81;
    (*(v63 + 104))(v81, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v64, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v60, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v56, &qword_34CB88, &unk_2D0D90);
    v65 = sub_35E0(v52 + 8, v52[11]);
    v66 = v77;
    sub_F3F4(v77, v57, &qword_34C6E8, &unk_2D0FF0);
    v67 = *(v57 + *(v76 + 48));
    v68 = sub_2CA000();
    v69 = v74;
    (*(*(v68 - 8) + 56))(v74, 1, 1, v68);
    v70 = *v65;
    sub_1C077C(v57, v67, v69, _swiftEmptyArrayStorage, v84, v85);

    sub_30B8(v69, &unk_353020, &unk_2D0970);
    sub_30B8(v66, &qword_34C6E8, &unk_2D0FF0);
    return (*(v59 + 8))(v57, v58);
  }
}

uint64_t *UpdateMediaAffinity.HandleIntentStrategy.deinit()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);
  v2 = v0[13];

  sub_306C(v0 + 14);
  return v0;
}

uint64_t UpdateMediaAffinity.HandleIntentStrategy.__deallocating_deinit()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);
  v2 = v0[13];

  sub_306C(v0 + 14);

  return swift_deallocClassInstance();
}

uint64_t sub_1E6158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_1E61D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_1E6250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_1E62F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_1E636C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_1E640C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, updated, a3);
}