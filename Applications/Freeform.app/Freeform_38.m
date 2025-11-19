uint64_t sub_100703FD8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for CRLProto_TableCellSelection(0);
  v309 = *(v5 - 8);
  v310 = v5;
  __chkstk_darwin(v5);
  v300 = (&v271 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v301 = type metadata accessor for CRLTableCellRange(0);
  __chkstk_darwin(v301);
  v302 = &v271 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019FC390);
  __chkstk_darwin(v8 - 8);
  v298 = &v271 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v308 = &v271 - v11;
  v12 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v12 - 8);
  v299 = &v271 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v284 = &v271 - v15;
  __chkstk_darwin(v16);
  v294 = &v271 - v17;
  __chkstk_darwin(v18);
  v288 = &v271 - v19;
  v314 = type metadata accessor for CRLProto_TextSelection(0);
  v316 = *(v314 - 8);
  __chkstk_darwin(v314);
  v283 = (&v271 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v292 = (&v271 - v22);
  __chkstk_darwin(v23);
  v279 = (&v271 - v24);
  __chkstk_darwin(v25);
  v277 = (&v271 - v26);
  __chkstk_darwin(v27);
  v276 = (&v271 - v28);
  __chkstk_darwin(v29);
  v287 = (&v271 - v30);
  __chkstk_darwin(v31);
  v303 = (&v271 - v32);
  v33 = sub_1005B981C(&qword_1019FC398);
  __chkstk_darwin(v33 - 8);
  v285 = &v271 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v293 = &v271 - v36;
  __chkstk_darwin(v37);
  v278 = &v271 - v38;
  __chkstk_darwin(v39);
  v281 = &v271 - v40;
  __chkstk_darwin(v41);
  v280 = &v271 - v42;
  __chkstk_darwin(v43);
  v289 = &v271 - v44;
  __chkstk_darwin(v45);
  v307 = &v271 - v46;
  __chkstk_darwin(v47);
  v313 = &v271 - v48;
  v49 = sub_1005B981C(&qword_1019FB540);
  __chkstk_darwin(v49 - 8);
  v296 = &v271 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v295 = &v271 - v52;
  __chkstk_darwin(v53);
  v311 = &v271 - v54;
  v315 = type metadata accessor for CRLProto_Data(0);
  v326 = *(v315 - 8);
  __chkstk_darwin(v315);
  v297 = (&v271 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v56);
  v282 = (&v271 - v57);
  __chkstk_darwin(v58);
  v291 = &v271 - v59;
  __chkstk_darwin(v60);
  v286 = (&v271 - v61);
  __chkstk_darwin(v62);
  v312 = (&v271 - v63);
  v64 = type metadata accessor for UUID();
  v65 = *(v64 - 8);
  v318 = v64;
  v319 = v65;
  __chkstk_darwin(v64);
  v317 = &v271 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v67 - 8);
  v68 = type metadata accessor for CRLProto_PersistableSelectionPath(0);
  __chkstk_darwin(v68);
  v70 = &v271 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_mostSpecificItemSelectionUUIDs] = _swiftEmptyArrayStorage;
  v71 = OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_userInfo;
  v72 = type metadata accessor for CRLPersistableSelectionPath.UserInfo(0);
  v73 = *(v72 - 8);
  v74 = *(v73 + 56);
  v305 = v73 + 56;
  v306 = v74;
  v74(&v2[v71], 1, 1, v72);
  v75 = type metadata accessor for CRLPersistableSelectionPath(0);
  v325.receiver = v2;
  v325.super_class = v75;
  v76 = objc_msgSendSuper2(&v325, "init");
  memset(v324, 0, 40);
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_10070A6C8(&qword_1019FC3A8, type metadata accessor for CRLProto_PersistableSelectionPath);
  v77 = v323;
  Message.init(serializedData:extensions:partial:options:)();
  if (v77)
  {

    sub_10002640C(a1, a2);
    return v76;
  }

  v274 = v68;
  v275 = a1;
  v271 = v72;
  v272 = 0;
  v304 = v76;
  v273 = a2;
  v80 = *v70;
  v81 = *(*v70 + 16);
  v82 = _swiftEmptyArrayStorage;
  v290 = v70;
  if (!v81)
  {
LABEL_33:
    v108 = v304;
    *&v304[OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_mostSpecificItemSelectionUUIDs] = v82;

    v109 = v271;
    v110 = v274;
    v111 = v314;
    if (v70[8])
    {
      v112 = v311;
      swift_storeEnumTagMultiPayload();
      v306(v112, 0, 1, v109);
      v113 = OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_userInfo;
      swift_beginAccess();
      sub_10070A658(v112, &v108[v113]);
      swift_endAccess();
    }

    v114 = *(v110 + 28);
    v115 = v313;
    sub_10000BE14(&v70[v114], v313, &qword_1019FC398);
    v116 = v316 + 48;
    v323 = *(v316 + 48);
    v117 = v323(v115, 1, v111);
    sub_10000CAAC(v115, &qword_1019FC398);
    if (v117 != 1)
    {
      v118 = v307;
      sub_10000BE14(&v70[v114], v307, &qword_1019FC398);
      v119 = v114;
      if (v323(v118, 1, v111) == 1)
      {
        v120 = v303;
        *v303 = 0;
        *(v120 + 8) = 1;
        UnknownStorage.init()();
        v121 = v116;
        v122 = *(v326 + 56);
        v123 = v315;
        v122(v120 + v111[6], 1, 1, v315);
        v122(v120 + v111[7], 1, 1, v123);
        v122(v120 + v111[8], 1, 1, v123);
        v124 = v307;
        v116 = v121;
        v125 = v323;
        v126 = v120 + v111[9];
        *v126 = 0;
        v126[4] = 1;
        *(v120 + v111[10]) = 2;
        v127 = v120 + v111[11];
        *v127 = 0;
        v127[4] = 1;
        v128 = v125(v124, 1, v111);
        v78 = v304;
        v129 = &selRef_ignoreUrl_;
        if (v128 != 1)
        {
          sub_10000CAAC(v124, &qword_1019FC398);
        }
      }

      else
      {
        v120 = v303;
        sub_10070A710(v118, v303, type metadata accessor for CRLProto_TextSelection);
        v78 = v304;
        v129 = &selRef_ignoreUrl_;
      }

      v130 = *v120;
      v131 = *(v120 + 8);
      sub_10070A590(v120, type metadata accessor for CRLProto_TextSelection);
      if (v131 == 1)
      {
        v316 = v116;
        if (v130)
        {
          v322 = v119;
          v132 = v293;
          sub_10000BE14(&v290[v119], v293, &qword_1019FC398);
          v133 = v323(v132, 1, v111);
          v134 = v315;
          if (v133 == 1)
          {
            v135 = v292;
            *v292 = 0;
            *(v135 + 8) = 1;
            UnknownStorage.init()();
            v136 = *(v326 + 56);
            v136(v135 + v111[6], 1, 1, v134);
            v136(v135 + v111[7], 1, 1, v134);
            v136(v135 + v111[8], 1, 1, v134);
            v137 = v135 + v111[9];
            *v137 = 0;
            v137[4] = 1;
            *(v135 + v111[10]) = 2;
            v138 = v135 + v111[11];
            *v138 = 0;
            v138[4] = 1;
            v139 = v323(v132, 1, v111);
            v140 = v291;
            if (v139 != 1)
            {
              sub_10000CAAC(v132, &qword_1019FC398);
            }
          }

          else
          {
            v135 = v292;
            sub_10070A710(v132, v292, type metadata accessor for CRLProto_TextSelection);
            v140 = v291;
          }

          v193 = v294;
          sub_10000BE14(v135 + v111[7], v294, &qword_1019F67C0);
          v194 = *(v326 + 48);
          if (v194(v193, 1, v134) == 1)
          {
            *v140 = xmmword_10146F370;
            UnknownStorage.init()();
            sub_10070A590(v135, type metadata accessor for CRLProto_TextSelection);
            if (v194(v193, 1, v134) != 1)
            {
              sub_10000CAAC(v193, &qword_1019F67C0);
            }
          }

          else
          {
            sub_10070A590(v135, type metadata accessor for CRLProto_TextSelection);
            sub_10070A710(v193, v140, type metadata accessor for CRLProto_Data);
          }

          v195 = sub_1005B981C(&qword_1019F8790);
          sub_100024E98(*v140, *(v140 + 8));
          sub_10070A590(v140, type metadata accessor for CRLProto_Data);
          v196 = sub_10070A778();
          v197 = v272;
          CRValue.init(serializedData:)();
          v272 = v197;
          if (v197)
          {
            sub_10002640C(v275, v273);
            v78 = v304;

            v166 = v290;
LABEL_50:
            sub_10070A590(v166, type metadata accessor for CRLProto_PersistableSelectionPath);
            return v78;
          }

          v198 = v285;
          sub_10000BE14(&v290[v322], v285, &qword_1019FC398);
          v199 = v314;
          v200 = v323(v198, 1, v314);
          v321 = v196;
          if (v200 == 1)
          {
            v201 = v283;
            *v283 = 0;
            *(v201 + 8) = 1;
            UnknownStorage.init()();
            v202 = *(v326 + 56);
            v203 = v315;
            v202(v201 + v199[6], 1, 1, v315);
            v202(v201 + v199[7], 1, 1, v203);
            v204 = v203;
            v205 = v285;
            v202(v201 + v199[8], 1, 1, v204);
            v206 = v201 + v199[9];
            *v206 = 0;
            v206[4] = 1;
            *(v201 + v199[10]) = 2;
            v207 = v201 + v199[11];
            *v207 = 0;
            v207[4] = 1;
            v208 = v323(v205, 1, v199);
            v209 = v284;
            if (v208 != 1)
            {
              sub_10000CAAC(v205, &qword_1019FC398);
            }
          }

          else
          {
            v225 = v198;
            v201 = v283;
            sub_10070A710(v225, v283, type metadata accessor for CRLProto_TextSelection);
            v209 = v284;
          }

          sub_10000BE14(v201 + *(v314 + 32), v209, &qword_1019F67C0);
          v226 = v315;
          if (v194(v209, 1, v315) == 1)
          {
            v227 = v282;
            *v282 = xmmword_10146F370;
            UnknownStorage.init()();
            sub_10070A590(v201, type metadata accessor for CRLProto_TextSelection);
            v228 = v226;
            v229 = v227;
            v230 = v194(v209, 1, v228);
            v78 = v304;
            v231 = v271;
            v232 = v306;
            if (v230 != 1)
            {
              sub_10000CAAC(v209, &qword_1019F67C0);
            }
          }

          else
          {
            sub_10070A590(v201, type metadata accessor for CRLProto_TextSelection);
            v229 = v282;
            sub_10070A710(v209, v282, type metadata accessor for CRLProto_Data);
            v78 = v304;
            v231 = v271;
            v232 = v306;
          }

          sub_1005B981C(&qword_1019FB550);
          sub_100024E98(*v229, *(v229 + 1));
          sub_10070A590(v229, type metadata accessor for CRLProto_Data);
          v233 = v296;
          v234 = v272;
          CRValue.init(serializedData:)();
          v272 = v234;
          if (v234)
          {
            sub_10002640C(v275, v273);

            sub_10070A590(v290, type metadata accessor for CRLProto_PersistableSelectionPath);
            (*(*(v195 - 8) + 8))(v233, v195);
            return v78;
          }

          swift_storeEnumTagMultiPayload();
          v232(v233, 0, 1, v231);
          v235 = OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_userInfo;
          swift_beginAccess();
          sub_10070A658(v233, v78 + v235);
          swift_endAccess();
          v160 = v309;
          v161 = v310;
          v159 = v275;
        }

        else
        {
          v184 = v289;
          sub_10000BE14(&v290[v119], v289, &qword_1019FC398);
          v185 = v323(v184, 1, v111);
          v186 = v315;
          if (v185 == 1)
          {
            v187 = v287;
            *v287 = 0;
            *(v187 + 8) = 1;
            UnknownStorage.init()();
            v188 = *(v326 + 56);
            v188(v187 + v111[6], 1, 1, v186);
            v188(v187 + v111[7], 1, 1, v186);
            v188(v187 + v111[8], 1, 1, v186);
            v189 = v289;
            v190 = v187 + v111[9];
            *v190 = 0;
            v190[4] = 1;
            *(v187 + v111[10]) = 2;
            v191 = v187 + v111[11];
            *v191 = 0;
            v191[4] = 1;
            v192 = v187;
            if (v323(v189, 1, v111) != 1)
            {
              sub_10000CAAC(v189, &qword_1019FC398);
            }
          }

          else
          {
            v192 = v287;
            sub_10070A710(v184, v287, type metadata accessor for CRLProto_TextSelection);
          }

          v210 = v192 + v111[6];
          v211 = v288;
          sub_10000BE14(v210, v288, &qword_1019F67C0);
          v212 = *(v326 + 48);
          if (v212(v211, 1, v186) == 1)
          {
            v213 = v286;
            *v286 = xmmword_10146F370;
            UnknownStorage.init()();
            sub_10070A590(v192, type metadata accessor for CRLProto_TextSelection);
            if (v212(v211, 1, v186) != 1)
            {
              sub_10000CAAC(v211, &qword_1019F67C0);
            }
          }

          else
          {
            sub_10070A590(v192, type metadata accessor for CRLProto_TextSelection);
            v213 = v286;
            sub_10070A710(v211, v286, type metadata accessor for CRLProto_Data);
          }

          sub_1005B981C(&qword_1019F8790);
          sub_100024E98(*v213, *(v213 + 1));
          sub_10070A590(v213, type metadata accessor for CRLProto_Data);
          sub_10070A778();
          v214 = v295;
          v215 = v272;
          CRValue.init(serializedData:)();
          if (v215)
          {
            sub_10002640C(v275, v273);

            sub_10070A590(v290, type metadata accessor for CRLProto_PersistableSelectionPath);
            return v78;
          }

          v272 = 0;
          v216 = v280;
          sub_10000BE14(&v290[v119], v280, &qword_1019FC398);
          v217 = v314;
          if (v323(v216, 1, v314) == 1)
          {
            v218 = v276;
            *v276 = 0;
            *(v218 + 8) = 1;
            UnknownStorage.init()();
            v219 = *(v326 + 56);
            v219(v218 + v217[6], 1, 1, v186);
            v219(v218 + v217[7], 1, 1, v186);
            v219(v218 + v217[8], 1, 1, v186);
            v220 = v280;
            v221 = v218;
            v222 = v218 + v217[9];
            *v222 = 0;
            v222[4] = 1;
            *(v218 + v217[10]) = 2;
            v223 = v218 + v217[11];
            *v223 = 0;
            v223[4] = 1;
            v224 = v323(v220, 1, v217);
            v214 = v295;
            if (v224 != 1)
            {
              sub_10000CAAC(v220, &qword_1019FC398);
            }
          }

          else
          {
            v221 = v276;
            sub_10070A710(v216, v276, type metadata accessor for CRLProto_TextSelection);
          }

          v236 = (v221 + v217[9]);
          v237 = *v236;
          v238 = v221;
          v239 = *(v236 + 4);
          sub_10070A590(v238, type metadata accessor for CRLProto_TextSelection);
          v240 = sub_1005B981C(&qword_1019FB558);
          v322 = v240;
          if (v239)
          {
            v241 = 0;
          }

          else
          {
            v241 = v237;
          }

          *&v214[*(v240 + 48)] = v241;
          v242 = v119;
          v243 = v281;
          sub_10000BE14(&v290[v119], v281, &qword_1019FC398);
          if (v323(v243, 1, v217) == 1)
          {
            v244 = v277;
            *v277 = 0;
            *(v244 + 8) = 1;
            UnknownStorage.init()();
            v245 = *(v326 + 56);
            v245(v244 + v217[6], 1, 1, v186);
            v245(v244 + v217[7], 1, 1, v186);
            v246 = v244;
            v245(v244 + v217[8], 1, 1, v186);
            v247 = v281;
            v248 = v244 + v217[9];
            *v248 = 0;
            v248[4] = 1;
            *(v244 + v217[10]) = 2;
            v249 = v244 + v217[11];
            *v249 = 0;
            v249[4] = 1;
            v250 = v323(v247, 1, v217);
            v251 = v278;
            if (v250 != 1)
            {
              sub_10000CAAC(v247, &qword_1019FC398);
            }
          }

          else
          {
            v246 = v277;
            sub_10070A710(v243, v277, type metadata accessor for CRLProto_TextSelection);
            v251 = v278;
          }

          v252 = *(v246 + v217[10]);
          sub_10070A590(v246, type metadata accessor for CRLProto_TextSelection);
          v295[*(v322 + 64)] = v252 & 1;
          sub_10000BE14(&v290[v242], v251, &qword_1019FC398);
          if (v323(v251, 1, v217) == 1)
          {
            v253 = v251;
            v254 = v279;
            *v279 = 0;
            *(v254 + 8) = 1;
            UnknownStorage.init()();
            v255 = *(v326 + 56);
            v256 = v315;
            v255(v254 + v217[6], 1, 1, v315);
            v255(v254 + v217[7], 1, 1, v256);
            v255(v254 + v217[8], 1, 1, v256);
            v257 = v254 + v217[9];
            *v257 = 0;
            v257[4] = 1;
            *(v254 + v217[10]) = 2;
            v258 = v254 + v217[11];
            *v258 = 0;
            v258[4] = 1;
            v259 = v253;
            v260 = v323(v253, 1, v217);
            v261 = v275;
            v262 = &qword_101AD6000;
            if (v260 != 1)
            {
              sub_10000CAAC(v259, &qword_1019FC398);
            }
          }

          else
          {
            v263 = v251;
            v254 = v279;
            sub_10070A710(v263, v279, type metadata accessor for CRLProto_TextSelection);
            v261 = v275;
            v262 = &qword_101AD6000;
          }

          v264 = (v254 + v217[11]);
          v265 = *v264;
          v266 = *(v264 + 4);
          sub_10070A590(v254, type metadata accessor for CRLProto_TextSelection);
          if (v266)
          {
            v267 = 0;
          }

          else
          {
            v267 = v265;
          }

          v268 = v295;
          *&v295[*(v322 + 80)] = v267;
          v269 = v271;
          swift_storeEnumTagMultiPayload();
          v306(v268, 0, 1, v269);
          v270 = v262[91];
          swift_beginAccess();
          sub_10070A658(v268, v78 + v270);
          swift_endAccess();
          v160 = v309;
          v161 = v310;
          v159 = v261;
        }

LABEL_48:
        v162 = *(v274 + 32);
        v163 = v290;
        v164 = v308;
        sub_10000BE14(&v290[v162], v308, &qword_1019FC390);
        v165 = *(v160 + 48);
        if (v165(v164, 1, v161) != 1)
        {
          sub_10000CAAC(v164, &qword_1019FC390);
          v167 = v298;
          sub_10000BE14(v163 + v162, v298, &qword_1019FC390);
          if (v165(v167, 1, v161) == 1)
          {
            v168 = v300;
            *v300 = 0;
            *(v168 + 8) = 1;
            UnknownStorage.init()();
            (*(v326 + 56))(v168 + *(v161 + 24), 1, 1, v315);
            v169 = v165(v167, 1, v161);
            v170 = v302;
            if (v169 != 1)
            {
              sub_10000CAAC(v167, &qword_1019FC390);
            }
          }

          else
          {
            v168 = v300;
            sub_10070A710(v167, v300, type metadata accessor for CRLProto_TableCellSelection);
            v170 = v302;
          }

          v171 = v299;
          sub_10000BE14(v168 + *(v161 + 24), v299, &qword_1019F67C0);
          v172 = *(v326 + 48);
          v173 = v315;
          if (v172(v171, 1, v315) == 1)
          {
            v174 = v297;
            *v297 = xmmword_10146F370;
            UnknownStorage.init()();
            sub_10070A590(v168, type metadata accessor for CRLProto_TableCellSelection);
            v175 = v172(v171, 1, v173);
            v78 = v304;
            v176 = v174;
            v177 = v311;
            if (v175 != 1)
            {
              sub_10000CAAC(v171, &qword_1019F67C0);
            }
          }

          else
          {
            sub_10070A590(v168, type metadata accessor for CRLProto_TableCellSelection);
            v176 = v297;
            sub_10070A710(v171, v297, type metadata accessor for CRLProto_Data);
            v177 = v311;
          }

          sub_100024E98(*v176, *(v176 + 1));
          sub_10070A590(v176, type metadata accessor for CRLProto_Data);
          sub_10070A6C8(&qword_1019FC3A0, type metadata accessor for CRLTableCellRange);
          v178 = v272;
          CRDT.init(serializedData:)();
          if (v178)
          {
            sub_10070A590(v290, type metadata accessor for CRLProto_PersistableSelectionPath);
            sub_10002640C(v275, v273);
          }

          else
          {
            v179 = *(sub_1005B981C(&qword_1019FB548) + 48);
            sub_10070A5F0(v170, v177, type metadata accessor for CRLTableCellRange);
            v180 = v290;
            v181 = sub_100706670(v290);
            sub_10002640C(v275, v273);
            sub_10070A590(v170, type metadata accessor for CRLTableCellRange);
            sub_10070A590(v180, type metadata accessor for CRLProto_PersistableSelectionPath);
            *(v177 + v179) = v181;
            v182 = v271;
            swift_storeEnumTagMultiPayload();
            v306(v177, 0, 1, v182);
            v183 = OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_userInfo;
            swift_beginAccess();
            sub_10070A658(v177, v78 + v183);
            swift_endAccess();
          }

          return v78;
        }

        sub_10002640C(v159, v273);
        sub_10000CAAC(v164, &qword_1019FC390);
        v166 = v163;
        goto LABEL_50;
      }

      v323 = objc_opt_self();
      LODWORD(v85) = [v323 _atomicIncrementAssertCount];
      v324[0] = [objc_allocWithZone(NSString) v129[165]];
      sub_100604538(_swiftEmptyArrayStorage, v324);
      StaticString.description.getter();
      v87 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v141 = String._bridgeToObjectiveC()();

      v142 = [v141 lastPathComponent];

      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v143;

      if (qword_1019F20A0 != -1)
      {
LABEL_115:
        swift_once();
      }

      v144 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v85;
      v146 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v146;
      v147 = sub_1005CF04C();
      *(inited + 104) = v147;
      *(inited + 72) = v87;
      *(inited + 136) = &type metadata for String;
      v148 = sub_1000053B0();
      *(inited + 112) = v82;
      *(inited + 120) = v88;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v148;
      *(inited + 152) = 136;
      v149 = v324[0];
      *(inited + 216) = v146;
      *(inited + 224) = v147;
      *(inited + 192) = v149;
      v150 = v87;
      v151 = v149;
      v152 = static os_log_type_t.error.getter();
      sub_100005404(v144, &_mh_execute_header, v152, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v153 = static os_log_type_t.error.getter();
      sub_100005404(v144, &_mh_execute_header, v153, "Unrecognized type of text selection", 35, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v154 = swift_allocObject();
      v154[2] = 8;
      v154[3] = 0;
      v154[4] = 0;
      v154[5] = 0;
      v155 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v156 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v157 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v158 = String._bridgeToObjectiveC()();

      [v323 handleFailureInFunction:v156 file:v157 lineNumber:136 isFatal:0 format:v158 args:v155];
    }

    v159 = v275;
    v160 = v309;
    v161 = v310;
    v78 = v304;
    goto LABEL_48;
  }

  v324[0] = _swiftEmptyArrayStorage;
  sub_100776524(0, v81, 0);
  v83 = 0;
  v82 = v324[0];
  v84 = *(v326 + 80);
  v322 = v80;
  v323 = (v80 + ((v84 + 32) & ~v84));
  v86 = v318;
  v85 = v319;
  v320 = v319 + 32;
  v321 = v81;
  v87 = v317;
  v88 = v312;
  while (1)
  {
    if (v83 >= *(v80 + 16))
    {
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
      goto LABEL_115;
    }

    sub_10070A5F0(v323 + *(v326 + 72) * v83, v88, type metadata accessor for CRLProto_Data);
    v89 = *v88;
    v90 = v88[1];
    v91 = v90 >> 62;
    if ((v90 >> 62) > 1)
    {
      if (v91 != 2)
      {
        goto LABEL_32;
      }

      v93 = *(v89 + 16);
      v92 = *(v89 + 24);
      v94 = __OFSUB__(v92, v93);
      v95 = v92 - v93;
      if (v94)
      {
        goto LABEL_110;
      }

      if (v95 != 16)
      {
        goto LABEL_32;
      }
    }

    else if (v91)
    {
      if (__OFSUB__(HIDWORD(v89), v89))
      {
        goto LABEL_111;
      }

      if (HIDWORD(v89) - v89 != 16)
      {
LABEL_32:
        sub_10070A7DC();
        swift_allocError();
        swift_willThrow();
        v106 = v304;

        sub_10002640C(v275, v273);
        v107 = v88;
        v78 = v106;
        sub_10070A590(v107, type metadata accessor for CRLProto_Data);
        sub_10070A590(v290, type metadata accessor for CRLProto_PersistableSelectionPath);

        return v78;
      }
    }

    else if (BYTE6(v90) != 16)
    {
      goto LABEL_32;
    }

    if (v91 == 2)
    {
      break;
    }

    if (v91 == 1)
    {
      v96 = v89;
      if (v89 > v89 >> 32)
      {
        goto LABEL_112;
      }

      v97 = __DataStorage._bytes.getter();
      if (!v97)
      {
        goto LABEL_118;
      }

      v87 = v97;
      LODWORD(v85) = v90;
      v98 = __DataStorage._offset.getter();
      if (__OFSUB__(v96, v98))
      {
        goto LABEL_114;
      }

      v99 = &v87[v96 - v98];
      result = __DataStorage._length.getter();
      if (!v99)
      {
        goto LABEL_119;
      }

LABEL_27:
      v86 = v318;
      v85 = v319;
      v87 = v317;
    }

    UUID.init(uuid:)();
    sub_10070A590(v88, type metadata accessor for CRLProto_Data);
    v324[0] = v82;
    v105 = v82[2];
    v104 = v82[3];
    if (v105 >= v104 >> 1)
    {
      sub_100776524(v104 > 1, v105 + 1, 1);
      v85 = v319;
      v82 = v324[0];
    }

    ++v83;
    v82[2] = v105 + 1;
    (*(v85 + 32))(v82 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v105, v87, v86);
    v80 = v322;
    if (v321 == v83)
    {
      v70 = v290;
      goto LABEL_33;
    }
  }

  v100 = *(v89 + 16);
  v101 = __DataStorage._bytes.getter();
  if (v101)
  {
    v87 = v101;
    LODWORD(v85) = v90;
    v102 = __DataStorage._offset.getter();
    if (__OFSUB__(v100, v102))
    {
      goto LABEL_113;
    }

    v103 = &v87[v100 - v102];
    __DataStorage._length.getter();
    if (!v103)
    {
      goto LABEL_117;
    }

    goto LABEL_27;
  }

  __DataStorage._length.getter();
LABEL_117:
  __break(1u);
LABEL_118:
  result = __DataStorage._length.getter();
  __break(1u);
LABEL_119:
  __break(1u);
  return result;
}

uint64_t sub_100706670(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FC390);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for CRLProto_TableCellSelection(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLProto_PersistableSelectionPath(0);
  sub_10000BE14(a1 + *(v9 + 32), v4, &qword_1019FC390);
  v10 = *(v6 + 48);
  if (v10(v4, 1, v5) == 1)
  {
    *v8 = 0;
    v8[8] = 1;
    UnknownStorage.init()();
    v11 = *(v5 + 24);
    v12 = type metadata accessor for CRLProto_Data(0);
    (*(*(v12 - 8) + 56))(&v8[v11], 1, 1, v12);
    if (v10(v4, 1, v5) != 1)
    {
      sub_10000CAAC(v4, &qword_1019FC390);
    }
  }

  else
  {
    sub_10070A710(v4, v8, type metadata accessor for CRLProto_TableCellSelection);
  }

  v13 = *v8;
  v14 = v8[8];
  sub_10070A590(v8, type metadata accessor for CRLProto_TableCellSelection);
  if (v14)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007068A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v409 = a1;
  v3 = sub_1005B981C(&qword_1019FC390);
  __chkstk_darwin(v3 - 8);
  v367 = &v361 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v366 = &v361 - v6;
  __chkstk_darwin(v7);
  v364 = &v361 - v8;
  __chkstk_darwin(v9);
  v383 = &v361 - v10;
  v11 = type metadata accessor for CRLProto_TableCellSelection(0);
  v423 = *(v11 - 8);
  __chkstk_darwin(v11);
  v365 = &v361 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v363 = &v361 - v14;
  __chkstk_darwin(v15);
  v362 = &v361 - v16;
  __chkstk_darwin(v17);
  v386 = (&v361 - v18);
  v398 = type metadata accessor for CRLTableCellRange(0);
  __chkstk_darwin(v398);
  v400 = &v361 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v20 - 8);
  v382 = &v361 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v370 = &v361 - v23;
  __chkstk_darwin(v24);
  v388 = &v361 - v25;
  __chkstk_darwin(v26);
  v387 = &v361 - v27;
  v408 = type metadata accessor for CRCodableVersion();
  v410 = *(v408 - 8);
  __chkstk_darwin(v408);
  v397 = &v361 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v389 = &v361 - v30;
  __chkstk_darwin(v31);
  v405 = &v361 - v32;
  __chkstk_darwin(v33);
  v399 = &v361 - v34;
  v35 = sub_1005B981C(&qword_1019FC398);
  __chkstk_darwin(v35 - 8);
  v369 = &v361 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v381 = &v361 - v38;
  __chkstk_darwin(v39);
  v396 = &v361 - v40;
  __chkstk_darwin(v41);
  v372 = &v361 - v42;
  __chkstk_darwin(v43);
  v376 = &v361 - v44;
  __chkstk_darwin(v45);
  v390 = &v361 - v46;
  __chkstk_darwin(v47);
  v380 = &v361 - v48;
  __chkstk_darwin(v49);
  v395 = &v361 - v50;
  v51 = type metadata accessor for CRLProto_TextSelection(0);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v371 = (&v361 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v54);
  v385 = (&v361 - v55);
  __chkstk_darwin(v56);
  v394 = &v361 - v57;
  __chkstk_darwin(v58);
  v373 = (&v361 - v59);
  __chkstk_darwin(v60);
  v375 = (&v361 - v61);
  __chkstk_darwin(v62);
  v374 = (&v361 - v63);
  __chkstk_darwin(v64);
  v384 = (&v361 - v65);
  __chkstk_darwin(v66);
  v393 = &v361 - v67;
  v415 = sub_1005B981C(&qword_1019F8790);
  v411 = *(v415 - 8);
  __chkstk_darwin(v415);
  v406 = &v361 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v407 = &v361 - v70;
  __chkstk_darwin(v71);
  v403 = &v361 - v72;
  v429 = type metadata accessor for UUID();
  v73 = *(v429 - 1);
  __chkstk_darwin(v429);
  v75 = &v361 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for CRLProto_Data(0);
  v77 = *(v76 - 8);
  v430 = v76;
  v431 = v77;
  __chkstk_darwin(v76);
  v377 = &v361 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v368 = (&v361 - v80);
  __chkstk_darwin(v81);
  v379 = &v361 - v82;
  __chkstk_darwin(v83);
  v378 = &v361 - v84;
  __chkstk_darwin(v85);
  v87 = &v361 - v86;
  v88 = sub_1005B981C(&qword_1019FB540);
  __chkstk_darwin(v88 - 8);
  v412 = &v361 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v90);
  v92 = &v361 - v91;
  __chkstk_darwin(v93);
  v420 = &v361 - v94;
  v95 = type metadata accessor for CRLProto_PersistableSelectionPath(0);
  UnknownStorage.init()();
  v96 = *(v95 + 28);
  v417 = v52;
  v97 = *(v52 + 56);
  v416 = v96;
  v418 = v51;
  v414 = v52 + 56;
  v413 = v97;
  v97(&a2[v96], 1, 1, v51);
  v98 = *(v95 + 32);
  v99 = *(v423 + 56);
  v422 = a2;
  v401 = v98;
  v402 = v11;
  v391 = v423 + 56;
  v392 = v99;
  v99(&a2[v98], 1, 1, v11);
  v100 = *(v424 + OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_mostSpecificItemSelectionUUIDs);
  v101 = *(v100 + 16);
  v102 = _swiftEmptyArrayStorage;
  v419 = v92;
  if (v101)
  {
    v432 = _swiftEmptyArrayStorage;

    sub_100776A44(0, v101, 0);
    v102 = v432;
    v104 = *(v73 + 16);
    v103 = v73 + 16;
    v428 = v104;
    v105 = (*(v103 + 64) + 32) & ~*(v103 + 64);
    v404 = v100;
    v106 = v100 + v105;
    v107 = *(v103 + 56);
    v426 = (v103 - 8);
    v427 = v107;
    v425 = xmmword_10146F370;
    v108 = v103;
    do
    {
      v109 = v429;
      v110 = v108;
      (v428)(v75, v106, v429);
      *v87 = v425;
      UnknownStorage.init()();
      v433 = UUID.uuid.getter();
      v434 = v111;
      v435 = v112;
      v436 = v113;
      v437 = v114;
      v438 = v115;
      v439 = v116;
      v440 = v117;
      v441 = v118;
      UUID.uuid.getter();
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v119 = __DataStorage.init(bytes:length:)();
      (*v426)(v75, v109);
      sub_10002640C(*v87, *(v87 + 1));
      *v87 = 0x1000000000;
      *(v87 + 1) = v119 | 0x4000000000000000;
      v432 = v102;
      v121 = v102[2];
      v120 = v102[3];
      if (v121 >= v120 >> 1)
      {
        sub_100776A44(v120 > 1, v121 + 1, 1);
        v102 = v432;
      }

      v102[2] = v121 + 1;
      sub_10070A710(v87, v102 + ((*(v431 + 80) + 32) & ~*(v431 + 80)) + v431[9] * v121, type metadata accessor for CRLProto_Data);
      v106 += v427;
      --v101;
      v108 = v110;
    }

    while (v101);

    v122 = v421;
    v92 = v419;
  }

  else
  {
    v122 = v421;
  }

  v123 = v422;
  *v422 = v102;
  v124 = v123;
  v125 = OBJC_IVAR____TtC8Freeform27CRLPersistableSelectionPath_userInfo;
  v126 = v424;
  swift_beginAccess();
  v127 = v420;
  sub_10000BE14(v126 + v125, v420, &qword_1019FB540);
  v128 = type metadata accessor for CRLPersistableSelectionPath.UserInfo(0);
  v129 = *(*(v128 - 8) + 48);
  v130 = v129(v127, 1, v128);
  v131 = v423;
  if (v130 == 1)
  {
    sub_10000CAAC(v127, &qword_1019FB540);
    v132 = 0;
  }

  else
  {
    v133 = swift_getEnumCaseMultiPayload() == 3;
    v134 = v127;
    v132 = v133;
    sub_10070A590(v134, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
  }

  *(v124 + 8) = v132;
  sub_10000BE14(v424 + v125, v92, &qword_1019FB540);
  if (v129(v92, 1, v128) == 1)
  {
    return sub_10000CAAC(v92, &qword_1019FB540);
  }

  v136 = v412;
  sub_10000BE14(v92, v412, &qword_1019FB540);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v138 = v415;
      if (EnumCaseMultiPayload)
      {
        sub_10070A590(v136, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
        return sub_10000CAAC(v92, &qword_1019FB540);
      }

      v139 = sub_1005B981C(&qword_1019FB558);
      v140 = *(v136 + v139[12]);
      LODWORD(v426) = *(v136 + v139[16]);
      v427 = *(v136 + v139[20]);
      v428 = v140;
      v141 = v403;
      (*(v411 + 32))(v403, v136, v138);
      v142 = v395;
      sub_10000BE14(v124 + v416, v395, &qword_1019FC398);
      v143 = v418;
      v144 = v417 + 48;
      v145 = *(v417 + 48);
      v146 = v145(v142, 1, v418);
      v417 = v144;
      v429 = v145;
      if (v146 == 1)
      {
        v147 = v393;
        UnknownStorage.init()();
        v148 = v143[6];
        v149 = v430;
        v150 = v431[7];
        v150(v147 + v148, 1, 1, v430);
        v150(v147 + v418[7], 1, 1, v149);
        v151 = v149;
        v143 = v418;
        v150(v147 + v418[8], 1, 1, v151);
        v141 = v403;
        v124 = v422;
        v152 = v147 + v143[9];
        *v152 = 0;
        *(v152 + 4) = 1;
        *(v147 + v143[10]) = 2;
        v153 = v147 + v143[11];
        *v153 = 0;
        *(v153 + 4) = 1;
        v154 = v145(v142, 1, v143);
        v155 = v399;
        if (v154 != 1)
        {
          sub_10000CAAC(v142, &qword_1019FC398);
        }
      }

      else
      {
        v147 = v393;
        sub_10070A710(v142, v393, type metadata accessor for CRLProto_TextSelection);
        v155 = v399;
      }

      *v147 = 0;
      *(v147 + 8) = 1;
      v194 = v147;
      v195 = v416;
      sub_10000CAAC(v124 + v416, &qword_1019FC398);
      sub_10070A710(v194, v124 + v195, type metadata accessor for CRLProto_TextSelection);
      v413((v124 + v195), 0, 1, v143);
      v196 = v410;
      v197 = v408;
      (*(v410 + 104))(v155, enum case for CRCodableVersion.version3(_:), v408);
      sub_10070A778();
      v198 = CRValue.serializedData(_:version:)();
      if (v122)
      {
        (*(v196 + 8))(v155, v197);
        (*(v411 + 8))(v141, v138);
        goto LABEL_50;
      }

      v424 = v199;
      *&v425 = v198;
      (*(v196 + 8))(v155, v197);
      v226 = v380;
      sub_10000BE14(v124 + v195, v380, &qword_1019FC398);
      v227 = v429;
      if ((v429)(v226, 1, v143) == 1)
      {
        v228 = v384;
        *v384 = 0;
        *(v228 + 8) = 1;
        UnknownStorage.init()();
        v229 = v143[6];
        v230 = v430;
        v231 = v431[7];
        v231(v228 + v229, 1, 1, v430);
        v231(v228 + v418[7], 1, 1, v230);
        v232 = v230;
        v143 = v418;
        v231(v228 + v418[8], 1, 1, v232);
        v233 = v228 + v143[9];
        *v233 = 0;
        v233[4] = 1;
        *(v228 + v143[10]) = 2;
        v234 = v228 + v143[11];
        *v234 = 0;
        v234[4] = 1;
        v133 = v227(v226, 1, v143) == 1;
        v235 = v390;
        v236 = v226;
        v237 = v387;
        v238 = v378;
        if (!v133)
        {
          sub_10000CAAC(v236, &qword_1019FC398);
        }
      }

      else
      {
        v228 = v384;
        sub_10070A710(v226, v384, type metadata accessor for CRLProto_TextSelection);
        v235 = v390;
        v237 = v387;
        v238 = v378;
      }

      v273 = v143[6];
      sub_10000BE14(v228 + v273, v237, &qword_1019F67C0);
      v274 = v430;
      v275 = v431[6];
      if (v275(v237, 1, v430) == 1)
      {
        *v238 = xmmword_10146F370;
        UnknownStorage.init()();
        if (v275(v237, 1, v274) != 1)
        {
          sub_10000CAAC(v237, &qword_1019F67C0);
        }
      }

      else
      {
        sub_10070A710(v237, v238, type metadata accessor for CRLProto_Data);
      }

      sub_10002640C(*v238, *(v238 + 8));
      v276 = v424;
      *v238 = v425;
      *(v238 + 8) = v276;
      sub_10000CAAC(v228 + v273, &qword_1019F67C0);
      sub_10070A710(v238, v228 + v273, type metadata accessor for CRLProto_Data);
      v277 = (v431 + 7);
      v278 = v228 + v273;
      v279 = v228;
      v280 = v430;
      *&v425 = v431[7];
      (v425)(v278, 0, 1, v430);
      v281 = v422;
      v282 = v416;
      sub_10000CAAC(&v422[v416], &qword_1019FC398);
      sub_10070A710(v279, &v281[v282], type metadata accessor for CRLProto_TextSelection);
      v283 = v418;
      v413(&v281[v282], 0, 1, v418);
      if (HIDWORD(v428))
      {
        __break(1u);
      }

      else
      {
        sub_10000BE14(&v281[v282], v235, &qword_1019FC398);
        v284 = v429;
        v285 = (v429)(v235, 1, v283);
        v431 = v277;
        if (v285 == 1)
        {
          v286 = v374;
          *v374 = 0;
          *(v286 + 8) = 1;
          UnknownStorage.init()();
          v287 = v425;
          (v425)(v286 + v283[6], 1, 1, v280);
          v287(v286 + v283[7], 1, 1, v280);
          v288 = v280;
          v289 = v286;
          v287(v286 + v283[8], 1, 1, v288);
          v290 = v390;
          v291 = v286 + v283[9];
          *v291 = 0;
          v291[4] = 1;
          *(v286 + v283[10]) = 2;
          v292 = v286 + v283[11];
          *v292 = 0;
          v292[4] = 1;
          v293 = v283;
          if (v284(v290, 1, v283) != 1)
          {
            sub_10000CAAC(v290, &qword_1019FC398);
          }
        }

        else
        {
          v289 = v374;
          sub_10070A710(v235, v374, type metadata accessor for CRLProto_TextSelection);
          v293 = v283;
        }

        v294 = v289 + v293[9];
        *v294 = v428;
        v294[4] = 0;
        v295 = v416;
        sub_10000CAAC(&v281[v416], &qword_1019FC398);
        sub_10070A710(v289, &v281[v295], type metadata accessor for CRLProto_TextSelection);
        v413(&v281[v295], 0, 1, v293);
        v296 = &v281[v295];
        v297 = v295;
        v298 = v376;
        sub_10000BE14(v296, v376, &qword_1019FC398);
        v299 = v429;
        if ((v429)(v298, 1, v293) == 1)
        {
          v300 = v375;
          *v375 = 0;
          *(v300 + 8) = 1;
          UnknownStorage.init()();
          v301 = v430;
          v302 = v425;
          (v425)(v300 + v293[6], 1, 1, v430);
          v302(v300 + v293[7], 1, 1, v301);
          v303 = v301;
          v299 = v429;
          v302(v300 + v293[8], 1, 1, v303);
          v304 = v300 + v293[9];
          *v304 = 0;
          v304[4] = 1;
          *(v300 + v293[10]) = 2;
          v305 = v300 + v293[11];
          *v305 = 0;
          v305[4] = 1;
          v306 = v299(v298, 1, v293);
          v92 = v419;
          if (v306 != 1)
          {
            sub_10000CAAC(v298, &qword_1019FC398);
          }
        }

        else
        {
          v300 = v375;
          sub_10070A710(v298, v375, type metadata accessor for CRLProto_TextSelection);
          v92 = v419;
        }

        *(v300 + v293[10]) = v426;
        v307 = v422;
        sub_10000CAAC(&v422[v297], &qword_1019FC398);
        sub_10070A710(v300, &v307[v297], type metadata accessor for CRLProto_TextSelection);
        v413(&v307[v297], 0, 1, v293);
        if (!HIDWORD(v427))
        {
          v308 = v372;
          sub_10000BE14(&v307[v297], v372, &qword_1019FC398);
          v309 = v299(v308, 1, v293);
          v310 = v293;
          v311 = v430;
          if (v309 == 1)
          {
            v312 = v373;
            *v373 = 0;
            *(v312 + 8) = 1;
            UnknownStorage.init()();
            (*(v411 + 8))(v403, v415);
            v313 = v425;
            (v425)(v312 + v310[6], 1, 1, v311);
            v313(v312 + v310[7], 1, 1, v311);
            v313(v312 + v310[8], 1, 1, v311);
            v314 = v312 + v310[9];
            *v314 = 0;
            v314[4] = 1;
            *(v312 + v310[10]) = 2;
            v315 = v312 + v310[11];
            *v315 = 0;
            v315[4] = 1;
            if ((v429)(v308, 1, v310) != 1)
            {
              sub_10000CAAC(v308, &qword_1019FC398);
            }
          }

          else
          {
            (*(v411 + 8))(v403, v415);
            v312 = v373;
            sub_10070A710(v308, v373, type metadata accessor for CRLProto_TextSelection);
          }

          v316 = v312 + v310[11];
          *v316 = v427;
          v316[4] = 0;
          v317 = v416;
          sub_10000CAAC(&v307[v416], &qword_1019FC398);
          sub_10070A710(v312, &v307[v317], type metadata accessor for CRLProto_TextSelection);
          v318 = &v307[v317];
          v319 = v310;
LABEL_97:
          v413(v318, 0, 1, v319);
          return sub_10000CAAC(v92, &qword_1019FB540);
        }
      }

      __break(1u);
    }

    v156 = *(sub_1005B981C(&qword_1019FB550) + 48);
    v157 = *(v411 + 32);
    v158 = v136;
    v159 = v136;
    v160 = v415;
    v157(v407, v158, v415);
    v157(v406, v159 + v156, v160);
    v161 = v416;
    v162 = v396;
    sub_10000BE14(v124 + v416, v396, &qword_1019FC398);
    v163 = v418;
    v164 = v417 + 48;
    v165 = *(v417 + 48);
    v166 = v165(v162, 1, v418);
    v417 = v164;
    v429 = v165;
    if (v166 == 1)
    {
      v167 = v394;
      UnknownStorage.init()();
      v168 = v430;
      v169 = v431[7];
      v169(v167 + v163[6], 1, 1, v430);
      v169(v167 + v418[7], 1, 1, v168);
      v169(v167 + v418[8], 1, 1, v168);
      v163 = v418;
      v170 = v167 + v418[9];
      *v170 = 0;
      *(v170 + 4) = 1;
      *(v167 + v163[10]) = 2;
      v171 = v167 + v163[11];
      *v171 = 0;
      *(v171 + 4) = 1;
      v172 = v165(v162, 1, v163);
      v173 = v413;
      v174 = v405;
      if (v172 != 1)
      {
        sub_10000CAAC(v162, &qword_1019FC398);
      }
    }

    else
    {
      v167 = v394;
      sub_10070A710(v162, v394, type metadata accessor for CRLProto_TextSelection);
      v173 = v413;
      v174 = v405;
    }

    *v167 = 1;
    *(v167 + 8) = 1;
    v181 = v422;
    sub_10000CAAC(&v422[v161], &qword_1019FC398);
    sub_10070A710(v167, &v181[v161], type metadata accessor for CRLProto_TextSelection);
    v173(&v181[v161], 0, 1, v163);
    v182 = enum case for CRCodableVersion.version3(_:);
    v183 = v410;
    v185 = (v410 + 104);
    v184 = *(v410 + 104);
    v186 = v408;
    v184(v174, enum case for CRCodableVersion.version3(_:), v408);
    v187 = sub_10070A778();
    v188 = v415;
    v189 = v407;
    v190 = v421;
    v191 = CRValue.serializedData(_:version:)();
    v421 = v190;
    if (v190)
    {
      (*(v183 + 8))(v405, v186);
      v193 = *(v411 + 8);
      v193(v406, v188);
      v193(v189, v188);
      v124 = v422;
LABEL_50:
      v92 = v419;
      goto LABEL_51;
    }

    v420 = v192;
    v423 = v191;
    v424 = v187;
    *&v425 = v184;
    LODWORD(v426) = v182;
    v428 = v185;
    v200 = *(v183 + 8);
    v410 = v183 + 8;
    v200(v405, v186);
    v201 = v381;
    sub_10000BE14(&v422[v416], v381, &qword_1019FC398);
    v202 = v418;
    v203 = v429;
    v204 = (v429)(v201, 1, v418);
    v427 = v200;
    if (v204 == 1)
    {
      v205 = v385;
      *v385 = 0;
      *(v205 + 8) = 1;
      UnknownStorage.init()();
      v206 = v430;
      v207 = v431[7];
      v207(v205 + v202[6], 1, 1, v430);
      v207(v205 + v202[7], 1, 1, v206);
      v207(v205 + v202[8], 1, 1, v206);
      v208 = v205 + v202[9];
      *v208 = 0;
      v208[4] = 1;
      *(v205 + v202[10]) = 2;
      v209 = v205 + v202[11];
      *v209 = 0;
      v209[4] = 1;
      v210 = v203(v201, 1, v202);
      v211 = v389;
      v212 = v388;
      v213 = v379;
      if (v210 != 1)
      {
        sub_10000CAAC(v201, &qword_1019FC398);
      }
    }

    else
    {
      v205 = v385;
      sub_10070A710(v201, v385, type metadata accessor for CRLProto_TextSelection);
      v211 = v389;
      v212 = v388;
      v213 = v379;
    }

    v239 = v418[7];
    sub_10000BE14(v205 + v239, v212, &qword_1019F67C0);
    v240 = v430;
    v241 = (v431 + 6);
    v242 = v431[6];
    v243 = v242(v212, 1, v430);
    v244 = v416;
    v412 = v241;
    v405 = v242;
    if (v243 == 1)
    {
      *v213 = xmmword_10146F370;
      UnknownStorage.init()();
      if (v242(v212, 1, v240) != 1)
      {
        sub_10000CAAC(v212, &qword_1019F67C0);
      }
    }

    else
    {
      sub_10070A710(v212, v213, type metadata accessor for CRLProto_Data);
    }

    sub_10002640C(*v213, *(v213 + 8));
    v245 = v420;
    *v213 = v423;
    *(v213 + 8) = v245;
    sub_10000CAAC(v205 + v239, &qword_1019F67C0);
    sub_10070A710(v213, v205 + v239, type metadata accessor for CRLProto_Data);
    v246 = (v431 + 7);
    v423 = v431[7];
    (v423)(v205 + v239, 0, 1, v430);
    v124 = v422;
    sub_10000CAAC(&v422[v244], &qword_1019FC398);
    sub_10070A710(v205, v124 + v244, type metadata accessor for CRLProto_TextSelection);
    v247 = (v124 + v244);
    v248 = v418;
    v413(v247, 0, 1, v418);
    v249 = v408;
    (v425)(v211, v426, v408);
    v250 = v211;
    v251 = v415;
    v252 = v406;
    v253 = v421;
    v254 = CRValue.serializedData(_:version:)();
    v428 = v255;
    if (v253)
    {
      (v427)(v250, v249);
      v256 = *(v411 + 8);
      v256(v252, v251);
      v256(v407, v251);
      goto LABEL_50;
    }

    v320 = v254;
    v431 = v246;
    (v427)(v250, v249);
    v321 = v369;
    sub_10000BE14(v124 + v416, v369, &qword_1019FC398);
    v322 = v429;
    v323 = (v429)(v321, 1, v248);
    v426 = v320;
    if (v323 == 1)
    {
      v324 = v371;
      *v371 = 0;
      *(v324 + 8) = 1;
      UnknownStorage.init()();
      v325 = v430;
      v326 = v423;
      (v423)(v324 + v248[6], 1, 1, v430);
      v326(v324 + v248[7], 1, 1, v325);
      v327 = v325;
      v328 = v369;
      v326(v324 + v248[8], 1, 1, v327);
      v329 = v324 + v248[9];
      *v329 = 0;
      v329[4] = 1;
      *(v324 + v248[10]) = 2;
      v330 = v324 + v248[11];
      *v330 = 0;
      v330[4] = 1;
      v331 = v322(v328, 1, v248);
      v332 = v370;
      v333 = v407;
      if (v331 != 1)
      {
        sub_10000CAAC(v328, &qword_1019FC398);
      }
    }

    else
    {
      v324 = v371;
      sub_10070A710(v321, v371, type metadata accessor for CRLProto_TextSelection);
      v332 = v370;
      v333 = v407;
    }

    v343 = v248[8];
    sub_10000BE14(v324 + v343, v332, &qword_1019F67C0);
    v344 = v430;
    if ((v405)(v332, 1, v430) == 1)
    {
      v345 = v368;
      *v368 = xmmword_10146F370;
      UnknownStorage.init()();
      v346 = *(v411 + 8);
      v347 = v415;
      v346(v406, v415);
      v348 = v347;
      v349 = v370;
      v346(v333, v348);
      v350 = (v405)(v349, 1, v344);
      v92 = v419;
      v351 = v426;
      if (v350 != 1)
      {
        sub_10000CAAC(v349, &qword_1019F67C0);
      }
    }

    else
    {
      v352 = *(v411 + 8);
      v353 = v415;
      v352(v406, v415);
      v352(v333, v353);
      v345 = v368;
      sub_10070A710(v332, v368, type metadata accessor for CRLProto_Data);
      v92 = v419;
      v351 = v426;
    }

    sub_10002640C(*v345, *(v345 + 1));
    v354 = v428;
    *v345 = v351;
    *(v345 + 1) = v354;
    v355 = v371;
    sub_10000CAAC(v371 + v343, &qword_1019F67C0);
    sub_10070A710(v345, v355 + v343, type metadata accessor for CRLProto_Data);
    (v423)(v355 + v343, 0, 1, v430);
    v356 = v416;
    sub_10000CAAC(v124 + v416, &qword_1019FC398);
    sub_10070A710(v355, v124 + v356, type metadata accessor for CRLProto_TextSelection);
    v318 = (v124 + v356);
    v319 = v418;
    goto LABEL_97;
  }

  LODWORD(v429) = *(v136 + *(sub_1005B981C(&qword_1019FB548) + 48));
  v175 = v400;
  sub_10070A710(v136, v400, type metadata accessor for CRLTableCellRange);
  v176 = v410;
  v177 = v397;
  v178 = v408;
  (*(v410 + 104))(v397, enum case for CRCodableVersion.version3(_:), v408);
  sub_10070A6C8(&qword_1019FC3A0, type metadata accessor for CRLTableCellRange);
  v179 = CRDT.serializedData(_:version:)();
  if (!v122)
  {
    v214 = v180;
    v427 = v179;
    v421 = 0;
    (*(v176 + 8))(v177, v178);
    v215 = v383;
    sub_10000BE14(v124 + v401, v383, &qword_1019FC390);
    v216 = *(v131 + 48);
    v217 = v131 + 48;
    v218 = v402;
    v219 = v216(v215, 1, v402);
    v428 = v216;
    if (v219 == 1)
    {
      v220 = v215;
      v221 = v386;
      *v386 = 0;
      *(v221 + 8) = 1;
      UnknownStorage.init()();
      v222 = v431;
      (v431[7])(v221 + *(v218 + 24), 1, 1, v430);
      v223 = v217;
      v224 = v216(v220, 1, v218);
      v225 = v377;
      if (v224 != 1)
      {
        sub_10000CAAC(v220, &qword_1019FC390);
      }
    }

    else
    {
      v223 = v217;
      v257 = v215;
      v221 = v386;
      sub_10070A710(v257, v386, type metadata accessor for CRLProto_TableCellSelection);
      v222 = v431;
      v225 = v377;
    }

    v258 = *(v402 + 24);
    v259 = v382;
    sub_10000BE14(v221 + v258, v382, &qword_1019F67C0);
    v260 = v222[6];
    v261 = v430;
    if (v260(v259, 1, v430) == 1)
    {
      *v225 = xmmword_10146F370;
      UnknownStorage.init()();
      if (v260(v259, 1, v261) != 1)
      {
        sub_10000CAAC(v259, &qword_1019F67C0);
      }
    }

    else
    {
      sub_10070A710(v259, v225, type metadata accessor for CRLProto_Data);
    }

    sub_10002640C(*v225, *(v225 + 8));
    *v225 = v427;
    *(v225 + 8) = v214;
    sub_10000CAAC(v221 + v258, &qword_1019F67C0);
    sub_10070A710(v225, v221 + v258, type metadata accessor for CRLProto_Data);
    v262 = v430;
    v263 = v221 + v258;
    v264 = v431[7];
    (v264)(v263, 0, 1, v430);
    v265 = v221;
    v266 = v422;
    v267 = v401;
    sub_10000CAAC(&v422[v401], &qword_1019FC390);
    sub_10070A710(v265, &v266[v267], type metadata accessor for CRLProto_TableCellSelection);
    v392(&v266[v267], 0, 1, v402);
    v92 = v419;
    v268 = v223;
    if (v429)
    {
      if (v429 != 1)
      {
        v431 = v264;
        v338 = v367;
        sub_10000BE14(&v266[v401], v367, &qword_1019FC390);
        v339 = v402;
        v340 = v428;
        if ((v428)(v338, 1, v402) == 1)
        {
          v341 = v365;
          UnknownStorage.init()();
          sub_10070A590(v400, type metadata accessor for CRLTableCellRange);
          (v431)(v341 + *(v339 + 24), 1, 1, v262);
          v342 = v341;
          if (v340(v338, 1, v339) != 1)
          {
            sub_10000CAAC(v338, &qword_1019FC390);
          }
        }

        else
        {
          sub_10070A590(v400, type metadata accessor for CRLTableCellRange);
          v342 = v365;
          sub_10070A710(v338, v365, type metadata accessor for CRLProto_TableCellSelection);
        }

        *v342 = 2;
        *(v342 + 8) = 1;
        v360 = v401;
        sub_10000CAAC(&v266[v401], &qword_1019FC390);
        sub_10070A710(v342, &v266[v360], type metadata accessor for CRLProto_TableCellSelection);
        v358 = &v266[v360];
        v359 = v339;
        goto LABEL_105;
      }

      v269 = v366;
      sub_10000BE14(&v266[v401], v366, &qword_1019FC390);
      v270 = v402;
      if ((v428)(v269, 1, v402) == 1)
      {
        v271 = v363;
        UnknownStorage.init()();
        sub_10070A590(v400, type metadata accessor for CRLTableCellRange);
        (v264)(v271 + *(v270 + 24), 1, 1, v262);
        v272 = v271;
        if ((v428)(v269, 1, v270) != 1)
        {
          sub_10000CAAC(v269, &qword_1019FC390);
        }
      }

      else
      {
        sub_10070A590(v400, type metadata accessor for CRLTableCellRange);
        v272 = v363;
        sub_10070A710(v269, v363, type metadata accessor for CRLProto_TableCellSelection);
      }

      *v272 = 1;
      *(v272 + 8) = 1;
    }

    else
    {
      v334 = v364;
      sub_10000BE14(&v266[v401], v364, &qword_1019FC390);
      v270 = v402;
      v335 = v268;
      v336 = v428;
      v423 = v335;
      if ((v428)(v334, 1, v402) == 1)
      {
        v337 = v362;
        UnknownStorage.init()();
        sub_10070A590(v400, type metadata accessor for CRLTableCellRange);
        (v264)(v337 + *(v270 + 24), 1, 1, v262);
        v272 = v337;
        if (v336(v334, 1, v270) != 1)
        {
          sub_10000CAAC(v334, &qword_1019FC390);
        }
      }

      else
      {
        sub_10070A590(v400, type metadata accessor for CRLTableCellRange);
        v272 = v362;
        sub_10070A710(v334, v362, type metadata accessor for CRLProto_TableCellSelection);
      }

      *v272 = 0;
      *(v272 + 8) = 1;
    }

    v357 = v401;
    sub_10000CAAC(&v266[v401], &qword_1019FC390);
    sub_10070A710(v272, &v266[v357], type metadata accessor for CRLProto_TableCellSelection);
    v358 = &v266[v357];
    v359 = v270;
LABEL_105:
    v392(v358, 0, 1, v359);
    return sub_10000CAAC(v92, &qword_1019FB540);
  }

  (*(v176 + 8))(v177, v178);
  sub_10070A590(v175, type metadata accessor for CRLTableCellRange);
LABEL_51:
  sub_10000CAAC(v92, &qword_1019FB540);
  return sub_10070A590(v124, type metadata accessor for CRLProto_PersistableSelectionPath);
}

id sub_1007099A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLPersistableSelectionPath(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100709A50()
{
  sub_100709AF0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100709AF0()
{
  if (!qword_1019FC2C0)
  {
    type metadata accessor for CRLPersistableSelectionPath.UserInfo(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FC2C0);
    }
  }
}

void sub_100709B68()
{
  sub_100709BF0(319);
  if (v0 <= 0x3F)
  {
    sub_100709D2C();
    if (v1 <= 0x3F)
    {
      sub_100709DA0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100709BF0(uint64_t a1)
{
  if (!qword_1019FC348)
  {
    __chkstk_darwin(a1);
    sub_1005C4E5C(&qword_1019F8790);
    type metadata accessor for CRLWPCaretAffinity(255);
    type metadata accessor for CRLWPInsertionEdge(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1019FC348);
    }
  }
}

void sub_100709D2C()
{
  if (!qword_1019FC350)
  {
    sub_1005C4E5C(&qword_1019F8790);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1019FC350);
    }
  }
}

void sub_100709DA0()
{
  if (!qword_1019FC358)
  {
    type metadata accessor for CRLTableCellRange(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1019FC358);
    }
  }
}

uint64_t sub_100709E0C(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v76 = a2;
  v2 = type metadata accessor for CRLTableCellRange(0);
  __chkstk_darwin(v2 - 8);
  v71 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_1019F8790);
  v73 = *(v4 - 8);
  v74 = v4;
  __chkstk_darwin(v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  __chkstk_darwin(v10);
  v12 = &v69 - v11;
  __chkstk_darwin(v13);
  v15 = &v69 - v14;
  v16 = type metadata accessor for CRLPersistableSelectionPath.UserInfo(0);
  __chkstk_darwin(v16);
  v72 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v69 - v19;
  __chkstk_darwin(v21);
  v23 = &v69 - v22;
  v24 = sub_1005B981C(&qword_1019FC388);
  __chkstk_darwin(v24 - 8);
  v26 = &v69 - v25;
  v28 = &v69 + *(v27 + 56) - v25;
  sub_10070A5F0(v75, &v69 - v25, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
  sub_10070A5F0(v76, v28, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
  v76 = v26;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v72 = v15;
    v75 = v9;
    v31 = v73;
    if (EnumCaseMultiPayload)
    {
      v48 = v12;
      v49 = v20;
      sub_10070A5F0(v76, v20, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
      v50 = *(sub_1005B981C(&qword_1019FB550) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v51 = v31;
        v52 = *(v31 + 32);
        v53 = v48;
        v54 = v74;
        v52(v48, v28, v74);
        v55 = v75;
        v52(v75, &v49[v50], v54);
        v52(v6, &v28[v50], v54);
        sub_10068D144();
        v56 = static CRAttributedString.Cursor.== infix(_:_:)();
        v57 = *(v51 + 8);
        v57(v49, v54);
        if (v56)
        {
          v46 = static CRAttributedString.Cursor.== infix(_:_:)();
          v57(v6, v54);
          v57(v55, v54);
          v57(v53, v54);
          sub_10070A590(v76, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
          return v46 & 1;
        }

        v57(v6, v54);
        v57(v55, v54);
        v57(v53, v54);
        sub_10070A590(v76, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
LABEL_25:
        v46 = 0;
        return v46 & 1;
      }

      v58 = *(v31 + 8);
      v59 = v74;
      v58(&v20[v50], v74);
      v58(v20, v59);
      v30 = v76;
    }

    else
    {
      v30 = v76;
      sub_10070A5F0(v76, v23, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
      v32 = sub_1005B981C(&qword_1019FB558);
      v33 = v32[12];
      v75 = *&v23[v33];
      v34 = v32[16];
      v35 = v23[v34];
      v36 = v32[20];
      v37 = *&v23[v36];
      if (!swift_getEnumCaseMultiPayload())
      {
        v69 = v37;
        v61 = *&v28[v33];
        v70 = v28[v34];
        LODWORD(v71) = v35;
        v62 = *&v28[v36];
        v63 = v31;
        v64 = *(v31 + 32);
        v65 = v72;
        v66 = v74;
        v64(v72, v28, v74);
        sub_10068D144();
        v67 = static CRAttributedString.Cursor.== infix(_:_:)();
        v68 = *(v63 + 8);
        v68(v65, v66);
        v68(v23, v66);
        if ((v67 & 1) != 0 && v75 == v61 && v71 == v70)
        {
          v45 = v69 == v62;
          goto LABEL_13;
        }

LABEL_30:
        sub_10070A590(v30, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
        goto LABEL_25;
      }

      (*(v31 + 8))(v23, v74);
    }

LABEL_24:
    sub_10000CAAC(v30, &qword_1019FC388);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v30 = v76;
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
LABEL_18:
        sub_10070A590(v30, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
        v46 = 1;
        return v46 & 1;
      }
    }

    else
    {
      v47 = swift_getEnumCaseMultiPayload();
      if (v47 == 4)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_24;
  }

  v30 = v76;
  v38 = v72;
  sub_10070A5F0(v76, v72, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
  v39 = *(sub_1005B981C(&qword_1019FB548) + 48);
  v40 = *(v38 + v39);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10070A590(v38, type metadata accessor for CRLTableCellRange);
    goto LABEL_24;
  }

  v41 = v28[v39];
  v42 = v28;
  v43 = v71;
  sub_10070A710(v42, v71, type metadata accessor for CRLTableCellRange);
  v44 = sub_1011C74C0(v38, v43);
  sub_10070A590(v43, type metadata accessor for CRLTableCellRange);
  sub_10070A590(v38, type metadata accessor for CRLTableCellRange);
  if ((v44 & 1) == 0)
  {
    goto LABEL_30;
  }

  v45 = v40 == v41;
LABEL_13:
  v46 = v45;
  sub_10070A590(v30, type metadata accessor for CRLPersistableSelectionPath.UserInfo);
  return v46 & 1;
}

uint64_t sub_10070A590(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10070A5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10070A658(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FB540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10070A6C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10070A710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10070A778()
{
  result = qword_1019F8798;
  if (!qword_1019F8798)
  {
    sub_1005C4E5C(&qword_1019F8790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8798);
  }

  return result;
}

unint64_t sub_10070A7DC()
{
  result = qword_1019FC3B0;
  if (!qword_1019FC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC3B0);
  }

  return result;
}

unint64_t sub_10070A834()
{
  result = qword_1019FC3B8;
  if (!qword_1019FC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC3B8);
  }

  return result;
}

unint64_t sub_10070A88C()
{
  result = qword_1019FC3C0;
  if (!qword_1019FC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC3C0);
  }

  return result;
}

unint64_t sub_10070A964()
{
  result = qword_1019FC3C8;
  if (!qword_1019FC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC3C8);
  }

  return result;
}

uint64_t sub_10070A9B8@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v1 = sub_1005B981C(&qword_1019FC3D8);
  __chkstk_darwin(v1 - 8);
  v48 = &v37 - v2;
  v46 = type metadata accessor for InputConnectionBehavior();
  v49 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v44 - 1);
  __chkstk_darwin(v44);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  v41 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v11 - 8);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - v17;
  v37 = &v37 - v17;
  v19 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v19 - 8);
  v21 = &v37 - v20;
  v38 = &v37 - v20;
  v22 = sub_1005B981C(&qword_1019F6278);
  v23 = *(v10 + 56);
  v39 = v22;
  v40 = v10 + 56;
  v42 = v23;
  v23(v21, 1, 1, v9);
  v24 = type metadata accessor for CRLBoardEntity();
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v44);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v25 = v15;
  IntentDialog.init(_:)();
  v26 = type metadata accessor for IntentDialog();
  v27 = *(*(v26 - 8) + 56);
  v27(v15, 0, 1, v26);
  v27(v43, 1, 1, v26);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v49 + 104);
  v49 += 104;
  v44 = v29;
  v31 = v45;
  v30 = v46;
  v29(v45, enum case for InputConnectionBehavior.default(_:), v46);
  sub_10070C278(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  v32 = v38;
  v33 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v34 = v47;
  *v47 = v33;
  v43 = sub_1005B981C(&qword_1019FC3E0);
  v42(v32, 1, 1, v41);
  v35 = type metadata accessor for String.IntentInputOptions();
  v52 = 0;
  v53 = 0;
  (*(*(v35 - 8) + 56))(v48, 1, 1, v35);
  v27(v25, 1, 1, v26);
  v44(v31, v28, v30);
  v34[1] = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_1005B981C(&qword_1019F6280);
  v50 = 0xD00000000000001FLL;
  v51 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v34[2] = result;
  v34[6] = &type metadata for CRLRenameBoardIntentPerformer;
  v34[7] = &off_10188EC78;
  return result;
}

uint64_t sub_10070B0E0(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[21] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[22] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v2[23] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6260);
  v2[24] = swift_task_alloc();
  v2[25] = type metadata accessor for CRLBoardEntity();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10070B318, 0, 0);
}

uint64_t sub_10070B318()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = static OS_os_log.appIntents;
  Logger.init(_:)();
  v0[34] = *(v1 + 8);
  IntentParameter.wrappedValue.getter();
  v4 = v0[10];
  v3 = v0[11];
  v0[35] = v4;
  v0[36] = v3;
  if (v3)
  {
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v0[37] = *v0[17];
      IntentParameter.wrappedValue.getter();
      AppDependency.wrappedValue.getter();
      v0[5] = &type metadata for CRLBoardLibraryProvidingDependency;
      v0[6] = &off_1018AD9D0;
      v6 = swift_task_alloc();
      v0[38] = v6;
      *v6 = v0;
      v6[1] = sub_10070B704;
      v7 = v0[30];

      return sub_10097B710(v7, v4, v3, (v0 + 2));
    }
  }

  v9 = v0[32];
  v16 = v0[31];
  v17 = v0[33];
  v10 = v0[24];
  v11 = v0[19];
  v12 = v0[20];
  v13 = v0[18];
  IntentParameter.projectedValue.getter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v11 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  IntentDialog.init(_:)();
  v14 = type metadata accessor for IntentDialog();
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  type metadata accessor for AppIntentError();
  sub_10070C278(&qword_1019F8B08, &type metadata accessor for AppIntentError);
  swift_allocError();
  IntentParameter.needsValueError(_:)();

  sub_10000CAAC(v10, &qword_1019F6260);
  swift_willThrow();
  (*(v9 + 8))(v17, v16);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10070B704(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  (*v3)[39] = v2;

  if (v2)
  {
    sub_100689004(v6[30]);
    v7 = sub_10070BA6C;
  }

  else
  {
    v8 = v6[30];
    v6[40] = a2;
    v6[41] = a1;
    sub_100689004(v8);

    sub_100005070((v6 + 2));
    v7 = sub_10070B850;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10070B850()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[32];
  v11 = v0[31];
  v12 = v0[33];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  v10 = v0[26];
  IntentParameter.wrappedValue.getter();
  v0[12] = v1;
  v0[13] = v2;
  EntityProperty.wrappedValue.setter();
  sub_100689004(v4);
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v7 = sub_100B0768C();
  sub_1006B05D0(v5, v6);
  sub_1006B05D0(v6, v10);
  IntentParameter.wrappedValue.setter();
  sub_100689004(v6);
  sub_100689004(v5);
  v0[15] = v7;
  sub_10070C278(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100689004(v4);
  (*(v3 + 8))(v12, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10070BA6C()
{
  v32 = v0;
  v1 = *(v0 + 312);
  sub_100005070(v0 + 16);
  *(v0 + 112) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);

    sub_10070C1F4(v2, v3, v4);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    sub_10070C20C(v2, v3, v4);
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 288);
    if (v7)
    {
      v9 = *(v0 + 280);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v10 = 136315394;
      v12 = sub_101007640(v9, v8, &v31);

      *(v10 + 4) = v12;
      *(v10 + 12) = 2112;
      sub_10070C224();
      swift_allocError();
      *v13 = v2;
      *(v13 + 8) = v3;
      *(v13 + 16) = v4;
      sub_10070C1F4(v2, v3, v4);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      *v11 = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "Tried to rename board with invalid title: %s - %@", v10, 0x16u);
      sub_10000CAAC(v11, &unk_101A27F60);

      sub_100005070(v30);
    }

    else
    {
    }

    v23 = *(v0 + 264);
    v24 = *(v0 + 248);
    v25 = *(v0 + 256);
    v26 = *(v0 + 192);
    IntentParameter.projectedValue.getter();
    sub_1007B020C(v2, v3, v4);
    sub_10070C20C(v2, v3, v4);
    IntentDialog.init(_:)();
    v27 = type metadata accessor for IntentDialog();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    type metadata accessor for AppIntentError();
    sub_10070C278(&qword_1019F8B08, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_10000CAAC(v26, &qword_1019F6260);
    swift_willThrow();
    (*(v25 + 8))(v23, v24);
  }

  else
  {

    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error renaming the board: %@", v17, 0xCu);
      sub_10000CAAC(v18, &unk_101A27F60);
    }

    v20 = *(v0 + 256);
    v21 = *(v0 + 264);
    v22 = *(v0 + 248);

    type metadata accessor for AppIntentError();
    sub_10070C278(&qword_1019F8B08, &type metadata accessor for AppIntentError);
    swift_allocError();
    static AppIntentError.Unrecoverable.unknown.getter();
    swift_willThrow();

    (*(v20 + 8))(v21, v22);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10070C00C(uint64_t a1)
{
  v2 = sub_10070C2C0();

  return static AssistantSchemaIntent.title.getter(a1, v2);
}

uint64_t sub_10070C05C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_10070B0E0(a1);
}

uint64_t sub_10070C0F8(uint64_t a1)
{
  v2 = sub_10070A964();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10070C138()
{
  result = qword_1019FC3D0;
  if (!qword_1019FC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC3D0);
  }

  return result;
}

uint64_t sub_10070C1A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_1019F7400);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10070C1F4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10070C20C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_10070C224()
{
  result = qword_1019FC3E8;
  if (!qword_1019FC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC3E8);
  }

  return result;
}

uint64_t sub_10070C278(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10070C2C0()
{
  result = qword_1019FC3F0;
  if (!qword_1019FC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC3F0);
  }

  return result;
}

id sub_10070C314(void *a1, char *a2)
{
  UUID.init()();
  v26.receiver = v2;
  v26.super_class = type metadata accessor for CRLURLRep();
  v5 = objc_msgSendSuper2(&v26, "initWithLayout:canvas:", a1, a2);
  v6 = v5;
  if (a2)
  {
    v7 = v5;
    if ([a2 isCanvasInteractive])
    {
      v8 = OBJC_IVAR____TtC8Freeform9CRLURLRep_downloadObserverIdentifier;
      v9 = sub_10070CFB4();
      v10 = sub_100A7C258();

      v11 = (v10 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
      v12 = *(v10 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
      v13 = *(v10 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
      sub_100020E58((v10 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v12);
      if ((*(v13 + 64))(v12, v13))
      {
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v25 = v10;
        v16 = v11[3];
        v15 = v11[4];
        sub_100020E58(v11, v16);
        v24 = *(v15 + 72);

        v17 = v15;
        v10 = v25;
        v24(&v7[v8], 2, sub_10070D96C, v14, v16, v17);

        v18 = v11[3];
        v19 = v11[4];
        sub_100020E58(v11, v18);
        if ((*(v19 + 64))(v18, v19))
        {
          v20 = v11[3];
          v21 = v11[4];
          sub_100020E58(v11, v20);
          (*(v21 + 88))(v20, v21);
        }
      }

      v22 = a2;

      a2 = v7;
      v7 = v22;
    }

    a1 = v7;
  }

  return v6;
}

void sub_10070C578()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v36 = v33 - v6;
  v7 = type metadata accessor for CRLURLRep();
  v39.receiver = v0;
  v39.super_class = v7;
  objc_msgSendSuper2(&v39, "willBeRemoved");
  v37 = v0;
  v8 = sub_10070CFB4();
  v9 = *&v8[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store];

  v10 = *&v9[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v10 + 16));
  v11 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v12 = *&v9[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v12)
  {
    v13 = *&v9[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v34 = type metadata accessor for CRLAssetManager();
    v14 = objc_allocWithZone(v34);
    v33[1] = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
    swift_unknownObjectWeakInit();
    v15 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v16 = swift_allocObject();
    v17 = v9;
    v35 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    *v19 = 0;
    *(v16 + 16) = v19;
    atomic_thread_fence(memory_order_acq_rel);
    *&v14[v15] = v16;
    v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v14[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v20 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v14[v20] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v14[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    swift_unknownObjectWeakAssign();
    v38.receiver = v14;
    v38.super_class = v34;
    v21 = objc_msgSendSuper2(&v38, "init");

    v1 = v35;
    v22 = *&v9[v11];
    *&v9[v11] = v21;
    v13 = v21;

    v12 = 0;
  }

  v23 = *(v10 + 16);
  v24 = v12;
  os_unfair_lock_unlock(v23);

  v25 = OBJC_IVAR____TtC8Freeform9CRLURLRep_downloadObserverIdentifier;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = type metadata accessor for TaskPriority();
    v29 = v36;
    (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
    (*(v2 + 16))(v4, v37 + v25, v1);
    v30 = (*(v2 + 80) + 40) & ~*(v2 + 80);
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    *(v31 + 4) = v27;
    (*(v2 + 32))(&v31[v30], v4, v1);
    v32 = v27;
    sub_10064191C(0, 0, v29, &unk_1014773B8, v31);
  }
}

void sub_10070C984()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (([Strong hasBeenRemoved] & 1) == 0)
    {
      CRLLinkViewHostingRep.resetLinkView()();
    }
  }
}

void sub_10070C9E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for CRLURLRep();
  v58.receiver = v2;
  v58.super_class = v11;
  objc_msgSendSuper2(&v58, "processChangedProperty:", a1);
  if (a1 == 53)
  {
    v56 = v5;
    v12 = sub_10070CFB4();
    v13 = *&v12[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store];

    v14 = *&v13[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
    os_unfair_lock_lock(*(v14 + 16));
    v15 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
    v16 = *&v13[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    if (v16)
    {
      v17 = *&v13[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    }

    else
    {
      v55 = type metadata accessor for CRLAssetManager();
      v18 = objc_allocWithZone(v55);
      v53 = v14;
      v19 = v18;
      v54 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
      swift_unknownObjectWeakInit();
      v20 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
      type metadata accessor for CRLUnfairLock();
      v21 = v4;
      v22 = swift_allocObject();
      v52 = v13;
      v23 = swift_slowAlloc();
      *v23 = 0;
      *(v22 + 16) = v23;
      atomic_thread_fence(memory_order_acq_rel);
      *&v19[v20] = v22;
      v4 = v21;
      *&v19[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
      v24 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
      *&v19[v24] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
      *&v19[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
      v25 = v52;
      swift_unknownObjectWeakAssign();
      v57.receiver = v19;
      v57.super_class = v55;
      v26 = objc_msgSendSuper2(&v57, "init");

      v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = *&v13[v15];
      *&v13[v15] = v26;
      v17 = v26;

      v14 = v53;
      v16 = 0;
    }

    v28 = *(v14 + 16);
    v29 = v16;
    os_unfair_lock_unlock(v28);

    v30 = OBJC_IVAR____TtC8Freeform9CRLURLRep_downloadObserverIdentifier;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      v33 = type metadata accessor for TaskPriority();
      (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
      v34 = v56;
      (*(v56 + 16))(v7, &v2[v30], v4);
      v35 = (*(v34 + 80) + 40) & ~*(v34 + 80);
      v36 = swift_allocObject();
      *(v36 + 2) = 0;
      *(v36 + 3) = 0;
      *(v36 + 4) = v32;
      (*(v34 + 32))(&v36[v35], v7, v4);
      v37 = v32;
      sub_10064191C(0, 0, v10, &unk_1014773B0, v36);
    }

    v38 = sub_10070CFB4();
    v39 = sub_100A7C258();

    v40 = (v39 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
    v41 = *(v39 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
    v42 = *(v39 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
    sub_100020E58((v39 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v41);
    if ((*(v42 + 64))(v41, v42))
    {
      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v44 = v40[3];
      v45 = v40[4];
      sub_100020E58(v40, v44);
      v46 = *(v45 + 72);

      v46(&v2[v30], 2, sub_10070D774, v43, v44, v45);

      v47 = v40[3];
      v48 = v40[4];
      sub_100020E58(v40, v47);
      if ((*(v48 + 64))(v47, v48))
      {
        v49 = v40[3];
        v50 = v40[4];
        sub_100020E58(v40, v49);
        (*(v50 + 88))(v49, v50);
      }
    }

    CRLLinkViewHostingRep.resetLinkView()();
  }
}

uint64_t sub_10070CFB4()
{
  v1 = [v0 layout];
  v2 = [v1 info];

  if (!v2)
  {
LABEL_4:
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v12 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v5;
      v14 = sub_1005CF000();
      *(inited + 96) = v14;
      v15 = sub_1005CF04C();
      *(inited + 104) = v15;
      *(inited + 72) = v6;
      *(inited + 136) = &type metadata for String;
      v16 = sub_1000053B0();
      *(inited + 112) = v9;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v16;
      *(inited + 152) = 70;
      v17 = v27;
      *(inited + 216) = v14;
      *(inited + 224) = v15;
      *(inited + 192) = v17;
      v18 = v6;
      v19 = v17;
      v20 = static os_log_type_t.error.getter();
      v11 = &_mh_execute_header;
      sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v22 = swift_allocObject();
      v5 = v22;
      v22[2] = 8;
      v22[3] = 0;
      v22[4] = 0;
      v22[5] = 0;
      v23 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v9 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v6 = v25;
      v26 = String._bridgeToObjectiveC()();

      [v4 handleFailureInFunction:v24 file:v9 lineNumber:70 isFatal:0 format:v26 args:v23];

      __break(1u);
LABEL_6:
      swift_once();
    }
  }

  type metadata accessor for CRLURLItem();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  return result;
}

void sub_10070D3AC()
{
  v0 = sub_10070D4C0();
  if (v0)
  {
    v1 = v0;
    v2 = OBJC_IVAR____TtC8Freeform12CRLURLEditor_reloadTask;
    if (*&v0[OBJC_IVAR____TtC8Freeform12CRLURLEditor_reloadTask])
    {

      sub_1005B981C(&unk_1019F6B40);
      Task.cancel()();
    }

    *&v1[v2] = 0;
  }

  CRLLinkViewHostingRep.tearDownReload()();
}

id sub_10070D4C0()
{
  result = [v0 interactiveCanvasController];
  if (result)
  {
    v2 = result;
    v3 = [result editorController];

    if (!v3)
    {
      return 0;
    }

    if (type metadata accessor for CRLURLEditor())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v5 = [v3 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];

    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10070D584()
{
  v1 = OBJC_IVAR____TtC8Freeform9CRLURLRep_downloadObserverIdentifier;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10070D5EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLURLRep();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLURLRep()
{
  result = qword_1019FC428;
  if (!qword_1019FC428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10070D6E4()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10070D77C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100C7ED3C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10070D874(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_100C7ED3C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10070D970@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019FC4C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-v5];
  v7 = sub_1005B981C(&qword_1019FC4D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v17[-v11];
  v13 = qword_1019FBC58;
  swift_beginAccess();
  sub_10000BE14(v1 + v13, v12, &qword_1019FC4D0);
  v14 = sub_1005B981C(&qword_1019FBCF8);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v12, v14);
  }

  sub_10000CAAC(v12, &qword_1019FC4D0);
  sub_1005B981C(&qword_1019FC4D8);
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v15 + 16))(v9, a1, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  swift_beginAccess();
  sub_10002C638(v9, v1 + v13, &qword_1019FC4D0);
  return swift_endAccess();
}

uint64_t sub_10070DC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FC4A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1005B981C(&unk_1019FC490);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = qword_1019FBC50;
  swift_beginAccess();
  sub_10002C638(v6, a2 + v9, &qword_1019FC4A0);
  return swift_endAccess();
}

uint64_t sub_10070DDB0()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_1005B981C(&qword_1019FBCF8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  v8 = qword_1019FBC60;
  if (*(v0 + qword_1019FBC60))
  {
    v9 = *(v0 + qword_1019FBC60);
  }

  else
  {
    sub_10070D970(v7);
    (*(v5 + 8))(v7, v4);
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v11;
    v9 = sub_10064191C(0, 0, v3, &unk_101477450, v12);
    *(v0 + v8) = v9;
  }

  return v9;
}

uint64_t sub_10070DFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_1005B981C(&qword_1019FBCF8);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_1005B981C(&qword_1019FC4B8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10070E0B4, 0, 0);
}

uint64_t sub_10070E0B4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10070E2C0, Strong, 0);
  }

  else
  {
    v2 = v0[11];
    v3 = sub_1005B981C(&qword_1019FC4C0);
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = sub_1005B981C(&qword_1019FC4C0);
    if ((*(*(v4 - 8) + 48))(v2, 1, v4))
    {
      sub_10000CAAC(v0[11], &qword_1019FC4B8);

      v5 = v0[1];

      return v5();
    }

    else
    {
      v6 = swift_task_alloc();
      v0[13] = v6;
      *v6 = v0;
      v6[1] = sub_10070E504;

      return AsyncStream.Iterator.next()(v0 + 5, v4);
    }
  }
}

uint64_t sub_10070E2C0()
{
  sub_10070D970(*(v0 + 80));

  return _swift_task_switch(sub_10070E334, 0, 0);
}

uint64_t sub_10070E334()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v1, v2);
  v4 = v0[11];
  v5 = sub_1005B981C(&qword_1019FC4C0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_1005B981C(&qword_1019FC4C0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6))
  {
    sub_10000CAAC(v0[11], &qword_1019FC4B8);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_10070E504;

    return AsyncStream.Iterator.next()(v0 + 5, v6);
  }
}

uint64_t sub_10070E504()
{

  return _swift_task_switch(sub_10070E600, 0, 0);
}

uint64_t sub_10070E600()
{
  v1 = v0[5];
  v0[14] = v1;
  if (v1)
  {
    v0[15] = v0[6];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_10070E760;

    return v5();
  }

  else
  {
    sub_10000CAAC(v0[11], &qword_1019FC4B8);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10070E760()
{
  v1 = *(*v0 + 112);

  sub_1000C1014(v1);

  return _swift_task_switch(sub_10070E890, 0, 0);
}

uint64_t sub_10070E890()
{
  v1 = v0[11];
  v2 = sub_1005B981C(&qword_1019FC4C0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2))
  {
    sub_10000CAAC(v1, &qword_1019FC4B8);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_10070E504;

    return AsyncStream.Iterator.next()(v0 + 5, v2);
  }
}

uint64_t sub_10070E9EC(uint64_t a1, uint64_t a2)
{
  v19[0] = a1;
  v4 = sub_1005B981C(&unk_1019FC490);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = sub_1005B981C(&qword_1019FC4A0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  v11 = sub_1005B981C(&qword_1019FC4A8);
  __chkstk_darwin(v11 - 8);
  v13 = v19 - v12;
  sub_10070DDB0();

  v14 = qword_1019FBC50;
  swift_beginAccess();
  sub_10000BE14(v2 + v14, v10, &qword_1019FC4A0);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_10000CAAC(v10, &qword_1019FC4A0);
    v15 = 1;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_10000CAAC(v10, &qword_1019FC4A0);
    v16 = swift_allocObject();
    *(v16 + 16) = v19[0];
    *(v16 + 24) = a2;
    v19[1] = &unk_101477440;
    v19[2] = v16;

    AsyncStream.Continuation.yield(_:)();
    (*(v5 + 8))(v7, v4);
    v15 = 0;
  }

  v17 = sub_1005B981C(&qword_1019FC4B0);
  (*(*(v17 - 8) + 56))(v13, v15, 1, v17);
  return sub_10000CAAC(v13, &qword_1019FC4A8);
}

uint64_t sub_10070ECD8(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10070EDC0;

  return v5();
}

uint64_t sub_10070EDC0()
{

  return _swift_task_switch(sub_10070EEBC, 0, 0);
}

uint64_t sub_10070EED0()
{
  v1 = OBJC_IVAR____TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget____lazy_storage___searchController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget____lazy_storage___searchController);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_10070EF40();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_100051940(v4);
  }

  sub_100051950(v2);
  return v3;
}

uint64_t sub_10070EF40()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = [Strong drawingIntelligenceProvider], v1, v2))
  {
    type metadata accessor for RecognitionSearchController();

    v3 = RecognitionSearchController.__allocating_init(strokeProvider:)();

    return v3;
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_1005CF000();
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 19;
    v18 = v28;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:19 isFatal:0 format:v27 args:v24];

    return 0;
  }
}

void sub_10070F334()
{
  sub_10098EABC(&_mh_execute_header, "tearDown()", 10, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLiOSFreehandDrawingItemsSearchTarget.swift", 109, 2, 38);
  if (*(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget_isTornDown))
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v25 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v25);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_1005CF000();
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 41;
    v14 = v25;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Should not call tearDown() twice.", 33, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:41 isFatal:0 format:v23 args:v20];
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget_isTornDown) = 1;
    v24 = *(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget____lazy_storage___searchController);
    *(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget____lazy_storage___searchController) = 0;
    sub_100051940(v24);

    swift_unknownObjectWeakAssign();
  }
}

id sub_10070F754()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if ((*(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget_isTornDown) & 1) == 0)
  {
    v26 = objc_opt_self();
    v3 = [v26 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_1005CF000();
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 53;
    v15 = v28;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Must call tearDown() before CRLiOSFreehandDrawingItemsSearchTarget is de-initialized.", 85, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v22 file:v23 lineNumber:53 isFatal:0 format:v24 args:v21];
  }

  v27.receiver = v1;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, "dealloc");
}

void sub_10070FB90(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v15 - 8);
  v17 = &v49 - v16;
  v18 = sub_10070EED0();
  if (v18)
  {
    v19 = v18;
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    type metadata accessor for MainActor();
    v51 = a4;
    v21 = v7;
    v50 = a1;
    v22 = v21;

    sub_10067F2EC(a6);
    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = &protocol witness table for MainActor;
    v24[4] = v22;
    v24[5] = a3;
    v25 = v50;
    v24[6] = v19;
    v24[7] = v25;
    v26 = v51;
    v24[8] = a2;
    v24[9] = v26;
    v24[10] = a5;
    v24[11] = a6;
    v24[12] = a7;
    sub_10064191C(0, 0, v17, &unk_101477408, v24);
  }

  else
  {
    v51 = a6;
    v50 = objc_opt_self();
    v27 = [v50 _atomicIncrementAssertCount];
    v52 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v52);
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    v30 = [v29 lastPathComponent];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v27;
    v36 = sub_1005CF000();
    *(inited + 96) = v36;
    v37 = sub_1005CF04C();
    *(inited + 104) = v37;
    *(inited + 72) = v28;
    *(inited + 136) = &type metadata for String;
    v38 = sub_1000053B0();
    *(inited + 112) = v31;
    *(inited + 120) = v33;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v38;
    *(inited + 152) = 64;
    v39 = v52;
    *(inited + 216) = v36;
    *(inited + 224) = v37;
    *(inited + 192) = v39;
    v40 = v28;
    v41 = v39;
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v43, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v44 = swift_allocObject();
    v44[2] = 8;
    v44[3] = 0;
    v44[4] = 0;
    v44[5] = 0;
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    [v50 handleFailureInFunction:v46 file:v47 lineNumber:64 isFatal:0 format:v48 args:v45];

    if (v51)
    {
      v51();
    }
  }
}

uint64_t sub_1007100C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v14;
  *(v8 + 80) = v15;
  *(v8 + 56) = v13;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  type metadata accessor for MainActor();
  *(v8 + 88) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 96) = v10;
  *(v8 + 104) = v9;

  return _swift_task_switch(sub_100710174, v10, v9);
}

uint64_t sub_100710174()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v13 = v0[7];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  v9 = *&v8[OBJC_IVAR____TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget_searchQueue];
  v0[14] = v9;
  v10 = swift_allocObject();
  v0[15] = v10;
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = v5;
  v10[5] = v4;
  v10[6] = v8;
  v10[7] = v13;
  v10[8] = v3;
  v10[9] = v1;
  v10[10] = v2;

  v11 = v8;

  sub_10067F2EC(v1);

  return _swift_task_switch(sub_100710274, v9, 0);
}

uint64_t sub_100710274()
{
  sub_10070E9EC(&unk_101477418, v0[15]);

  v1 = v0[12];
  v2 = v0[13];

  return _swift_task_switch(sub_1007102F8, v1, v2);
}

uint64_t sub_1007102F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100710358(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v19;
  v8[6] = v20;
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v12 = type metadata accessor for RecognitionSearchController.SearchResult();
  v8[7] = v12;
  v8[8] = *(v12 - 8);
  v8[9] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750);
  v8[10] = swift_task_alloc();
  sub_1005B981C(&qword_1019FC4E0);
  v8[11] = swift_task_alloc();
  v13 = sub_1005B981C(&qword_1019FC4E8);
  v8[12] = v13;
  v8[13] = *(v13 - 8);
  v8[14] = swift_task_alloc();
  v14 = sub_1005B981C(&unk_1019FC4F0);
  v8[15] = v14;
  v8[16] = *(v14 - 8);
  v15 = swift_task_alloc();
  v8[17] = v15;
  v8[18] = type metadata accessor for MainActor();
  v8[19] = static MainActor.shared.getter();
  v16 = swift_task_alloc();
  v8[20] = v16;
  *v16 = v8;
  v16[1] = sub_1007105FC;

  return (RecognitionSearchController.search(_:fullWordsOnly:caseMatchingOnly:))(v15, a4, a5, (a2 >> 3) & 1, (a2 & 1) == 0);
}

uint64_t sub_1007105FC()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 168) = v3;
  *(v1 + 176) = v2;

  return _swift_task_switch(sub_100710740, v3, v2);
}

uint64_t sub_100710740()
{
  AsyncStream.makeAsyncIterator()();
  v0[23] = _swiftEmptyArrayStorage;
  v1 = static MainActor.shared.getter();
  v0[24] = v1;
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_100710810;
  v3 = v0[11];
  v4 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v3, v1, &protocol witness table for MainActor, v4);
}

uint64_t sub_100710810()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_100710954, v3, v2);
}

uint64_t sub_100710954()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v28 = *(v0 + 184);
    v6 = *(v0 + 80);
    v29 = *(v0 + 120);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 32);
    v30 = *(v0 + 16);
    (*(*(v0 + 104) + 8))();

    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = v30;

    sub_10067F2EC(v8);
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    *(v13 + 32) = v28;
    *(v13 + 40) = v30;
    *(v13 + 56) = v9;
    *(v13 + 64) = v8;
    *(v13 + 72) = v7;
    sub_10064191C(0, 0, v6, &unk_1014774A0, v13);

    (*(v4 + 8))(v5, v29);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v3 + 32);
    v16(*(v0 + 72), v1, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v0 + 184);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_100B37478(0, *(v18 + 2) + 1, 1, *(v0 + 184));
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_100B37478(v19 > 1, v20 + 1, 1, v18);
    }

    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    v23 = *(v0 + 56);
    *(v18 + 2) = v20 + 1;
    v16(&v18[((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v20], v21, v23);
    *(v0 + 184) = v18;
    v24 = static MainActor.shared.getter();
    *(v0 + 192) = v24;
    v25 = swift_task_alloc();
    *(v0 + 200) = v25;
    *v25 = v0;
    v25[1] = sub_100710810;
    v26 = *(v0 + 88);
    v27 = *(v0 + 96);

    return AsyncStream.Iterator.next(isolation:)(v26, v24, &protocol witness table for MainActor, v27);
  }
}

uint64_t sub_100710CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100710D50, v10, v9);
}

uint64_t sub_100710D50()
{
  v1 = *(v0 + 16);

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = *(type metadata accessor for RecognitionSearchController.SearchResult() - 8);
    v6 = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v2 = sub_100710E74(v6);
      if (v2)
      {
        v8 = v2;
        (*(v0 + 32))();
      }

      v6 += v7;
      --v3;
    }

    while (v3);
  }

  v9 = *(v0 + 48);
  if (v9)
  {
    v9(v2);
  }

  v10 = *(v0 + 8);

  return v10();
}

id sub_100710E74(uint64_t a1)
{
  v2 = type metadata accessor for PKStroke();
  v166 = *(v2 - 8);
  __chkstk_darwin(v2);
  v170 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong board];
    v162 = v5;
    if (v6)
    {
      v7 = v6;
      v164 = v2;
      v8 = [v5 selectionModelTranslator];
      if (v8)
      {
        v9 = v8;
        v10 = [v5 pkDrawingProvider];
        v11 = [v10 drawingShapeItemUUIDToStrokeUUIDBidirectionalMap];

        if (v11)
        {
          v163 = v11;
          v12 = _swiftEmptyArrayStorage;
          v172[0] = _swiftEmptyArrayStorage;
          LODWORD(isa) = a1;
          v165 = RecognitionSearchController.SearchResult.strokes.getter();
          v14 = *(v165 + 16);
          if (v14)
          {
            v15 = 0;
            v168 = v166 + 8;
            v169 = v166 + 16;
            v151 = v14 - 1;
            v155 = xmmword_10146CA70;
            v161 = v7;
            v153 = a1;
            v154 = v9;
            v167 = v14;
            while (1)
            {
              v152 = v12;
              v16 = v15;
              v17 = v163;
              v18 = v164;
              v19 = v165;
              v20 = v166;
              while (1)
              {
                if (v16 >= v19[2])
                {
                  __break(1u);
                  goto LABEL_50;
                }

                v11 = v170;
                (*(v20 + 16))(v170, v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v16, v18);
                isa = PKStroke._bridgeToObjectiveC()().super.isa;
                (*(v20 + 8))(v11, v18);
                result = [isa _strokeUUID];
                if (!result)
                {
                  __break(1u);
                  return result;
                }

                v42 = result;

                v44 = [v17 objectForKeyedSubscript:v42];
                if (v44)
                {
                  break;
                }

LABEL_14:
                ++v16;

                if (v167 == v16)
                {
                  v5 = v162;
                  v9 = v154;
                  v12 = v152;
                  goto LABEL_38;
                }
              }

              v11 = v44;
              v45 = [v7 getBoardItemForUUID:v44];
              if (!v45)
              {
                goto LABEL_13;
              }

              v41 = v45;
              type metadata accessor for CRLFreehandDrawingShapeItem();
              if (!swift_dynamicCastClass())
              {
                break;
              }

              v46 = swift_unknownObjectWeakLoadStrong();
              if (!v46)
              {
                goto LABEL_12;
              }

              isa = v46;
              v47 = *((swift_isaMask & *v46) + 0x388);
              v41 = v41;
              LOBYTE(v47) = v47();

              if ((v47 & 1) == 0)
              {

                goto LABEL_11;
              }

              v48 = v41;
              isa = v172;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v15 = v16 + 1;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v49 = v151 == v16;
              v12 = v172[0];
              v5 = v162;
              v9 = v154;
              if (v49)
              {
                goto LABEL_38;
              }
            }

            v160 = objc_opt_self();
            v21 = [v160 _atomicIncrementAssertCount];
            v171 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v171);
            StaticString.description.getter();
            v159 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v22 = String._bridgeToObjectiveC()();

            v23 = [v22 lastPathComponent];

            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v156 = v25;
            v157 = v24;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v158 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v26 = swift_allocObject();
            *(v26 + 16) = v155;
            *(v26 + 56) = &type metadata for Int32;
            *(v26 + 64) = &protocol witness table for Int32;
            *(v26 + 32) = v21;
            v27 = sub_1005CF000();
            *(v26 + 96) = v27;
            isa = sub_1005CF04C();
            *(v26 + 104) = isa;
            v28 = v159;
            *(v26 + 72) = v159;
            *(v26 + 136) = &type metadata for String;
            v29 = sub_1000053B0();
            v30 = v156;
            *(v26 + 112) = v157;
            *(v26 + 120) = v30;
            *(v26 + 176) = &type metadata for UInt;
            *(v26 + 144) = v29;
            *(v26 + 152) = 113;
            v31 = v28;
            v32 = v171;
            *(v26 + 216) = v27;
            *(v26 + 224) = isa;
            *(v26 + 184) = &protocol witness table for UInt;
            *(v26 + 192) = v32;
            v159 = v31;
            v33 = v32;
            v34 = static os_log_type_t.error.getter();
            v35 = v158;
            sub_100005404(v158, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v26);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v36 = static os_log_type_t.error.getter();
            sub_100005404(v35, &_mh_execute_header, v36, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v37 = swift_allocObject();
            LODWORD(isa) = v37;
            v37[2] = 8;
            v37[3] = 0;
            v37[4] = 0;
            v37[5] = 0;
            v159 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v38 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v39 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v40 = String._bridgeToObjectiveC()();

            [v160 handleFailureInFunction:v38 file:v39 lineNumber:113 isFatal:0 format:v40 args:v159];

            v41 = v38;
            v11 = v39;
            v42 = v40;
            v7 = v161;
LABEL_11:
            v17 = v163;
            v18 = v164;
LABEL_12:

            v20 = v166;
LABEL_13:

            v19 = v165;
            goto LABEL_14;
          }

LABEL_38:

          if (v12 >> 62)
          {
            v112 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v112 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v113 = v163;
          if (v112 >= 1)
          {

            v115 = sub_100E944A4(v114);
            sub_1012E3BAC(v115);

            v116 = Set._bridgeToObjectiveC()().super.isa;

            v117 = [v9 selectionPathForInfos:v116];

            RecognitionSearchController.SearchResult.bounds.getter();
            v119 = v118;
            v121 = v120;
            v123 = v122;
            v125 = v124;
            v126 = [v5 canvas];
            v127 = [v126 isAnchoredAtRight];

            v128 = objc_allocWithZone(CRLiOSFreehandDrawingSearchReference);
            type metadata accessor for CRLFreehandDrawingShapeItem();
            v129 = Array._bridgeToObjectiveC()().super.isa;

            v130 = [v128 initWithShapeItems:v129 selectionPath:v117 unscaledRect:v127 isCanvasAnchoredAtRight:{v119, v121, v123, v125}];

            return v130;
          }

          goto LABEL_30;
        }

        v154 = v9;
        v161 = v7;
        v131 = objc_opt_self();
        v132 = [v131 _atomicIncrementAssertCount];
        v172[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v172);
        StaticString.description.getter();
        v133 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v134 = String._bridgeToObjectiveC()();

        v135 = [v134 lastPathComponent];

        v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v138 = v137;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v139 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v132;
        v141 = sub_1005CF000();
        *(inited + 96) = v141;
        v142 = sub_1005CF04C();
        *(inited + 104) = v142;
        *(inited + 72) = v133;
        *(inited + 136) = &type metadata for String;
        v143 = sub_1000053B0();
        *(inited + 112) = v136;
        *(inited + 120) = v138;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v143;
        *(inited + 152) = 103;
        v144 = v172[0];
        *(inited + 216) = v141;
        *(inited + 224) = v142;
        *(inited + 192) = v144;
        v145 = v133;
        v146 = v144;
        v147 = static os_log_type_t.error.getter();
        sub_100005404(v139, &_mh_execute_header, v147, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v148 = static os_log_type_t.error.getter();
        sub_100005404(v139, &_mh_execute_header, v148, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v149 = swift_allocObject();
        v149[2] = 8;
        v149[3] = 0;
        v149[4] = 0;
        v149[5] = 0;
        v150 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v110 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v88 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v89 = String._bridgeToObjectiveC()();

        [v131 handleFailureInFunction:v110 file:v88 lineNumber:103 isFatal:0 format:v89 args:v150];

        v111 = v154;
      }

      else
      {
        v161 = v7;
        v90 = objc_opt_self();
        v91 = [v90 _atomicIncrementAssertCount];
        v172[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v172);
        StaticString.description.getter();
        v92 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v93 = String._bridgeToObjectiveC()();

        v94 = [v93 lastPathComponent];

        v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v97 = v96;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v98 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v99 = swift_initStackObject();
        *(v99 + 16) = xmmword_10146CA70;
        *(v99 + 56) = &type metadata for Int32;
        *(v99 + 64) = &protocol witness table for Int32;
        *(v99 + 32) = v91;
        v100 = sub_1005CF000();
        *(v99 + 96) = v100;
        v101 = sub_1005CF04C();
        *(v99 + 104) = v101;
        *(v99 + 72) = v92;
        *(v99 + 136) = &type metadata for String;
        v102 = sub_1000053B0();
        *(v99 + 112) = v95;
        *(v99 + 120) = v97;
        *(v99 + 176) = &type metadata for UInt;
        *(v99 + 184) = &protocol witness table for UInt;
        *(v99 + 144) = v102;
        *(v99 + 152) = 102;
        v103 = v172[0];
        *(v99 + 216) = v100;
        *(v99 + 224) = v101;
        *(v99 + 192) = v103;
        v104 = v92;
        v105 = v103;
        v106 = static os_log_type_t.error.getter();
        sub_100005404(v98, &_mh_execute_header, v106, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v99);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v107 = static os_log_type_t.error.getter();
        sub_100005404(v98, &_mh_execute_header, v107, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v108 = swift_allocObject();
        v108[2] = 8;
        v108[3] = 0;
        v108[4] = 0;
        v108[5] = 0;
        v109 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v110 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v88 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v89 = String._bridgeToObjectiveC()();

        [v90 handleFailureInFunction:v110 file:v88 lineNumber:102 isFatal:0 format:v89 args:v109];

        v111 = v161;
      }
    }

    else
    {
      v67 = objc_opt_self();
      v68 = [v67 _atomicIncrementAssertCount];
      v172[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v172);
      StaticString.description.getter();
      v69 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v70 = String._bridgeToObjectiveC()();

      v71 = [v70 lastPathComponent];

      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v75 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v76 = swift_initStackObject();
      *(v76 + 16) = xmmword_10146CA70;
      *(v76 + 56) = &type metadata for Int32;
      *(v76 + 64) = &protocol witness table for Int32;
      *(v76 + 32) = v68;
      v77 = sub_1005CF000();
      *(v76 + 96) = v77;
      v78 = sub_1005CF04C();
      *(v76 + 104) = v78;
      *(v76 + 72) = v69;
      *(v76 + 136) = &type metadata for String;
      v79 = sub_1000053B0();
      *(v76 + 112) = v72;
      *(v76 + 120) = v74;
      *(v76 + 176) = &type metadata for UInt;
      *(v76 + 184) = &protocol witness table for UInt;
      *(v76 + 144) = v79;
      *(v76 + 152) = 101;
      v80 = v172[0];
      *(v76 + 216) = v77;
      *(v76 + 224) = v78;
      *(v76 + 192) = v80;
      v81 = v69;
      v82 = v80;
      v83 = static os_log_type_t.error.getter();
      sub_100005404(v75, &_mh_execute_header, v83, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v76);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v84 = static os_log_type_t.error.getter();
      sub_100005404(v75, &_mh_execute_header, v84, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v85 = swift_allocObject();
      v85[2] = 8;
      v85[3] = 0;
      v85[4] = 0;
      v85[5] = 0;
      v86 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v87 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v88 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v89 = String._bridgeToObjectiveC()();

      [v67 handleFailureInFunction:v87 file:v88 lineNumber:101 isFatal:0 format:v89 args:v86];
    }

    return 0;
  }

  v11 = objc_opt_self();
  LODWORD(isa) = [v11 _atomicIncrementAssertCount];
  v172[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v172);
  StaticString.description.getter();
  v19 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v50 = String._bridgeToObjectiveC()();

  v51 = [v50 lastPathComponent];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v52;

  if (qword_1019F20A0 != -1)
  {
LABEL_50:
    swift_once();
  }

  v53 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_10146CA70;
  *(v54 + 56) = &type metadata for Int32;
  *(v54 + 64) = &protocol witness table for Int32;
  *(v54 + 32) = isa;
  v55 = sub_1005CF000();
  *(v54 + 96) = v55;
  v56 = sub_1005CF04C();
  *(v54 + 104) = v56;
  *(v54 + 72) = v19;
  *(v54 + 136) = &type metadata for String;
  v57 = sub_1000053B0();
  *(v54 + 112) = v18;
  *(v54 + 120) = v7;
  *(v54 + 176) = &type metadata for UInt;
  *(v54 + 184) = &protocol witness table for UInt;
  *(v54 + 144) = v57;
  *(v54 + 152) = 100;
  v58 = v172[0];
  *(v54 + 216) = v55;
  *(v54 + 224) = v56;
  *(v54 + 192) = v58;
  v59 = v19;
  v60 = v58;
  v61 = static os_log_type_t.error.getter();
  sub_100005404(v53, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v54);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v62 = static os_log_type_t.error.getter();
  sub_100005404(v53, &_mh_execute_header, v62, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v63 = swift_allocObject();
  v63[2] = 8;
  v63[3] = 0;
  v63[4] = 0;
  v63[5] = 0;
  v64 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v65 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v66 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v5 = String._bridgeToObjectiveC()();

  [v11 handleFailureInFunction:v65 file:v66 lineNumber:100 isFatal:0 format:v5 args:v64];

LABEL_30:
  return 0;
}

id sub_100712620()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget_isTornDown] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget____lazy_storage___searchController] = 1;
  v2 = OBJC_IVAR____TtC8Freeform38CRLiOSFreehandDrawingItemsSearchTarget_searchQueue;
  sub_1005B981C(&qword_1019FC488);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = qword_1019FBC50;
  v5 = sub_1005B981C(&unk_1019FC490);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = qword_1019FBC58;
  v7 = sub_1005B981C(&qword_1019FBCF8);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + qword_1019FBC60) = 0;
  *&v0[v2] = v3;
  swift_unknownObjectWeakAssign();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1007127AC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1007100C0(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1007128B0(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_100710358(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1007129A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_10070ECD8(a1, v4);
}

uint64_t sub_100712A50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_10070DFB0(a1, v4, v5, v6);
}

uint64_t sub_100712B0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_100710CA8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100712BF8(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100020E58((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1005B981C(&unk_1019F6B40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_100712CC8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v2 pathExtension];

  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = [v1 stringByAppendingPathComponent:v3];

  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = *(v0 + 16);
  v6 = [v5 entryForName:v4];

  if (!v6)
  {
    return 0;
  }

  v7 = [v5 readChannelForEntry:v6];

  return v7;
}

uint64_t sub_100712DFC()
{

  return swift_deallocClassInstance();
}

id sub_100712E44()
{
  v1 = *(*v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 entryForName:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = [v1 readChannelForEntry:v3];

  return v4;
}

id sub_100712EDC()
{
  v1 = *(*v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 entryForName:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = [v1 readChannelForEntry:v3];

  return v4;
}

uint64_t sub_100712F98()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100713020()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1007130AC;

  return sub_100713790();
}

uint64_t sub_1007130AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1007131E0, 0, 0);
  }
}

uint64_t sub_1007131E0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100713274;

  return sub_100D357AC();
}

uint64_t sub_100713274(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1007134B0;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_10071339C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10071339C()
{
  if (sub_1002BC910(v0[6]))
  {
    sub_1006B305C();
    swift_allocError();
    *v1 = 14;
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_100713514;

    return sub_100D34EEC();
  }
}

uint64_t sub_1007134B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100713514(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_10071372C;
  }

  else
  {
    v4 = sub_100713628;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100713628()
{
  type metadata accessor for CRLBoard(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1006B305C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10071372C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100713790()
{
  v1[26] = v0;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_1007138AC, 0, 0);
}

uint64_t sub_1007138AC()
{
  v1 = v0[26];
  v2 = OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_readAssistant;
  v0[33] = OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_readAssistant;
  v3 = *(v1 + v2);
  if (v3)
  {

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = v0[29];
    v7 = v0[27];
    v8 = v0[28];
    (*(v0[31] + 16))(v0[32], v1 + OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_url, v0[30]);
    v9 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_store);
    v0[34] = v9;
    v10 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_context);
    v0[35] = v10;
    v0[36] = *(v1 + OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_options);
    v0[37] = type metadata accessor for CRLFileReadAssistant();
    v0[38] = swift_allocObject();
    v11 = v9;
    v12 = v10;
    v13 = objc_opt_self();
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v0[39] = v15;
    sub_100618868();
    (*(v8 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v7);
    v17 = static OS_dispatch_queue.global(qos:)();
    v0[40] = v17;
    (*(v8 + 8))(v6, v7);
    v0[2] = v0;
    v0[7] = v0 + 25;
    v0[3] = sub_100713B60;
    v18 = swift_continuation_init();
    v0[17] = sub_1005B981C(qword_1019FC6F0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = *"";
    v0[12] = sub_100712BF8;
    v0[13] = &unk_101883AC0;
    v0[14] = v18;
    [v13 readArchiveFromURL:v16 options:5 queue:v17 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100713B60()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_100713FA8;
  }

  else
  {
    v2 = sub_100713C70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100713C70()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 312);

  if (v1)
  {
    v3 = *(v0 + 304);
    v4 = *(v0 + 288);
    v5 = *(v0 + 248);
    v28 = *(v0 + 240);
    v29 = *(v0 + 256);
    v30 = *(v0 + 208);
    v31 = *(v0 + 264);
    CoordinatorChannelProvider = type metadata accessor for CRLFileReadAssistant.ReadCoordinatorChannelProvider();
    v7 = 7;
    v8 = swift_allocObject();
    v9 = v8;
    v8[2] = v1;
    v8[3] = 0x6472616F62;
    v8[4] = 0xE500000000000000;
    v8[5] = 0x617461646174656DLL;
    if ((v4 & 1) == 0)
    {
      v7 = 3;
    }

    v8[6] = 0xE800000000000000;
    type metadata accessor for CRLSerializableObjectReadCoordinator();
    v27 = *(v0 + 272);
    *(v3 + 16) = v9;
    *(v0 + 168) = CoordinatorChannelProvider;
    *(v0 + 176) = &off_101883AA0;
    *(v0 + 144) = v9;
    v10 = swift_allocObject();
    v11 = OBJC_IVAR____TtC8Freeform36CRLSerializableObjectReadCoordinator_metadata;
    v12 = type metadata accessor for CRLProto_ObjectMetadata(0);
    (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
    sub_10000630C(v0 + 144, v10 + 16);
    *(v10 + 56) = v27;
    *(v10 + 72) = v7;
    v13 = type metadata accessor for CRLUUIDRemapHelper();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_objectUUIDMap] = _swiftEmptyDictionarySingleton;
    *&v14[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap] = _swiftEmptyDictionarySingleton;
    v14[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs] = v4 & 1;
    *(v0 + 184) = v14;
    *(v0 + 192) = v13;
    v15 = v1;

    v16 = objc_msgSendSuper2((v0 + 184), "init");
    sub_100005070(v0 + 144);
    *(v10 + 80) = v16;

    (*(v5 + 8))(v29, v28);
    *(v3 + 24) = v10;
    *(v30 + v31) = v3;

    v17 = *(v0 + 304);

    v18 = *(v0 + 8);

    return v18(v17);
  }

  else
  {
    v21 = *(v0 + 272);
    v20 = *(v0 + 280);
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v24 = *(v0 + 240);
    sub_1006B305C();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();

    (*(v23 + 8))(v22, v24);
    swift_deallocPartialClassInstance();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_100713FA8()
{
  v1 = v0[40];
  v2 = v0[39];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  swift_deallocPartialClassInstance();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100714200(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1007142A8;

  return sub_100713020();
}

uint64_t sub_1007142A8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1007145BC(const void *a1, void *a2)
{
  v2[2] = a2;
  sub_1005B981C(&qword_1019F6990);
  v2[3] = swift_task_alloc();
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a1);
  a2;
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1007146B8;

  return sub_100713790();
}

uint64_t sub_1007146B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;

  if (v1)
  {

    v4 = *(v3 + 40);
    v5 = _convertErrorToNSError(_:)();

    (v4)[2](v4, 0, v5);

    _Block_release(v4);

    v6 = *(v3 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100714850, 0, 0);
  }
}

uint64_t sub_100714850()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1007148EC;
  v2 = *(v0 + 32);

  return sub_100D35C3C(v2);
}

uint64_t sub_1007148EC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100714B70;
  }

  else
  {
    v2 = sub_100714A00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100714A00()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_10063FD1C(v1, v2);
  isa = 0;
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v6 = *(v0 + 24);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v6, v3);
  }

  v7 = *(v0 + 40);
  (v7)[2](v7, isa, 0);
  _Block_release(v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100714B70()
{

  v1 = *(v0 + 40);
  v2 = _convertErrorToNSError(_:)();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t type metadata accessor for CRLBoardFileReadAssistant()
{
  result = qword_1019FC6C0;
  if (!qword_1019FC6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100714D54()
{
  result = type metadata accessor for URL();
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

unint64_t sub_100714E20()
{
  result = qword_1019FC6D0;
  if (!qword_1019FC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC6D0);
  }

  return result;
}

unint64_t sub_100714E78()
{
  result = qword_1019FC6D8;
  if (!qword_1019FC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC6D8);
  }

  return result;
}

unint64_t sub_100714ED0()
{
  result = qword_1019FC6E0;
  if (!qword_1019FC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC6E0);
  }

  return result;
}

unint64_t sub_100714F28()
{
  result = qword_1019FC6E8;
  if (!qword_1019FC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC6E8);
  }

  return result;
}

uint64_t sub_100714F7C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D3D4;

  return sub_1007145BC(v2, v3);
}

uint64_t sub_100715028()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D4C8;

  return sub_100714200(v2, v3);
}

uint64_t sub_1007150D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D4C8;

  return sub_10119D4AC(v2, v3, v4);
}

uint64_t sub_100715194()
{
  type metadata accessor for CRLTaskQueue.CRLWrappedTaskProvider();

  return static UUID.== infix(_:_:)();
}

uint64_t sub_1007151F8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100715238()
{
  result = sub_1007152FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1007152FC()
{
  result = qword_1019FC7F8;
  if (!qword_1019FC7F8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1019FC7F8);
  }

  return result;
}

uint64_t sub_100715440()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_contentView;
  [*(v1 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_contentView) setLayoutMarginsRelativeArrangement:1];
  v3 = 12.0;
  v4 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_useUCBMargins))
  {
    v3 = 16.0;
  }

  else
  {
    v4 = 12.0;
  }

  [*(v1 + v2) setDirectionalLayoutMargins:{v4, v3, v3, v3}];
  v5 = *(v1 + v2);
  sub_10071579C(v5);

  sub_1005B981C(&unk_101A150B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10146C6B0;
  *(v6 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v6 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  if (*(v1 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate))
  {
    v7 = *(v1 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(*(v7 + 8) + 32))(v1, ObjectType);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  sub_10079AEF8(v9);
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  return swift_unknownObjectRelease();
}

void sub_10071579C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v4 - 8);
  v5 = _UISolariumEnabled();
  v6 = [v1 view];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor:v8];

    v9 = [v1 view];
    if (!v9)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v10 = v9;
    static _Glass._GlassVariant.regular.getter();
    v76[3] = type metadata accessor for _Glass();
    v76[4] = &protocol witness table for _Glass;
    sub_10002C58C(v76);
    _Glass.init(_:smoothness:)();
    UIView._background.setter();
  }

  else
  {
    if (!v6)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v11 = [objc_opt_self() systemBackgroundColor];
    [v7 setBackgroundColor:v11];
  }

  v12 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor:v12];

  v13 = [v2 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_27;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v2 view];
  if (!v15)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = v15;
  [v15 addSubview:a1];

  sub_1005B981C(&unk_1019F4D60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10146E8A0;
  v18 = [v2 view];
  if (!v18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = v18;
  v20 = [v18 safeAreaLayoutGuide];

  v21 = [v20 topAnchor];
  v22 = [a1 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v17 + 32) = v23;
  v24 = [v2 view];
  if (!v24)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v25 = v24;
  v26 = [v24 safeAreaLayoutGuide];

  v27 = [v26 bottomAnchor];
  v28 = [a1 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:*&v2[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_bottomPadding]];

  *(v17 + 40) = v29;
  v30 = [v2 view];
  if (!v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v30;
  v32 = [v30 leadingAnchor];

  v33 = [a1 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v17 + 48) = v34;
  v76[0] = v17;
  if (v2[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_useNavigationControllerWidth] != 1)
  {
    goto LABEL_19;
  }

  v35 = [v2 navigationController];
  if (!v35)
  {
    goto LABEL_19;
  }

  v36 = v35;
  v37 = [v35 view];

  if (!v37)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v37 frame];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v77.origin.x = v39;
  v77.origin.y = v41;
  v77.size.width = v43;
  v77.size.height = v45;
  Width = CGRectGetWidth(v77);
  v47 = [v2 view];
  if (!v47)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v48 = v47;
  v49 = [v47 widthAnchor];

  v50 = [v49 constraintEqualToConstant:Width];
  v51 = OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint;
  v52 = *&v2[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint];
  *&v2[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint] = v50;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CE00;
  v54 = *&v2[v51];
  if (v54)
  {
    v55 = inited;
    *(inited + 32) = v54;
    v56 = v54;
    v57 = [a1 widthAnchor];
    v58 = [v2 view];
    if (v58)
    {
LABEL_25:
      v71 = v58;
      v72 = [v58 widthAnchor];

      v73 = [v57 constraintEqualToAnchor:v72];
      *(v55 + 40) = v73;
      sub_100798D30(v55);
      v74 = objc_opt_self();
      sub_100006370(0, &qword_1019F4D70);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v74 activateConstraints:isa];

      return;
    }

    __break(1u);
LABEL_19:
    v59 = [v2 view];
    if (v59)
    {
      v60 = v59;
      v61 = [v59 widthAnchor];

      if (*&v2[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate])
      {
        v62 = *&v2[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate + 8];
        ObjectType = swift_getObjectType();
        (*(v62 + 104))(ObjectType, v62);
      }

      else
      {
        v64 = 320.0;
      }

      v65 = [v61 constraintEqualToConstant:v64];

      v66 = OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint;
      v67 = *&v2[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint];
      *&v2[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint] = v65;

      v68 = swift_initStackObject();
      *(v68 + 16) = xmmword_10146CE00;
      v69 = *&v2[v66];
      if (v69)
      {
        v55 = v68;
        *(v68 + 32) = v69;
        v70 = v69;
        v57 = [a1 widthAnchor];
        v58 = [v2 view];
        if (v58)
        {
          goto LABEL_25;
        }

        goto LABEL_33;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_39:
  __break(1u);
}

void sub_100715F20()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  objc_msgSendSuper2(&v26, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint];
  if (v1)
  {
    if (v0[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_useNavigationControllerWidth] == 1)
    {
      v2 = v1;
      v3 = [v0 navigationController];
      if (!v3)
      {
        goto LABEL_12;
      }

      v4 = v3;
      v5 = [v3 view];

      if (!v5)
      {
        __break(1u);
        return;
      }

      [v5 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v27.origin.x = v7;
      v27.origin.y = v9;
      v27.size.width = v11;
      v27.size.height = v13;
      Width = CGRectGetWidth(v27);
      [v2 constant];
      if (Width == v15)
      {
        goto LABEL_12;
      }

      v16 = Width;
      goto LABEL_11;
    }

    if (*&v0[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate])
    {
      v17 = *&v0[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate + 8];
      ObjectType = swift_getObjectType();
      v19 = *(v17 + 104);
      v20 = v1;
      v21 = v19(ObjectType, v17);
      [v20 constant];
      if (v21 != v22)
      {
        v23 = swift_getObjectType();
        v19(v23, v17);
LABEL_11:
        [v1 setConstant:v16];
        sub_10071616C();
      }
    }

    else
    {
      [v1 constant];
      v25 = v24;
      v16 = 320.0;
      if (v25 != 320.0)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
  }
}

uint64_t sub_10071616C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder];
  if (v2 && ((*((swift_isaMask & *v2) + 0x118))() & 1) != 0)
  {
    v3 = *((swift_isaMask & *v2) + 0x100);
    v4 = v2;
    v5 = v3();
    if (v5)
    {
      v6 = v5;
      sub_100716638(v5, v4);

      v4 = v6;
    }
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10071768C;
  *(v9 + 24) = v8;
  v14[4] = sub_10002AAE0;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = *"";
  v14[2] = sub_10002AAB8;
  v14[3] = &unk_101883EF8;
  v10 = _Block_copy(v14);
  v11 = v1;

  [v7 performWithoutAnimation:v10];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100716380(void *a1)
{
  v2 = [a1 navigationController];
  if (v2)
  {
    v17 = v2;
    v3 = [a1 navigationController];
    v4 = [v3 visibleViewController];

    if (v4)
    {
      sub_100006370(0, &qword_101A10AB0);
      v5 = a1;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        sub_1007164E4(v7, v8, v9, v10);
        v12 = v11;
        v14 = v13;
        v15 = v17;
        [v15 setPreferredContentSize:{v12, v14}];
        v16 = [v15 parentViewController];

        [v16 setPreferredContentSize:{v12, v14}];
      }
    }
  }
}

void sub_1007164E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  if (v4[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_useNavigationControllerWidth] != 1 || (v6 = [v4 navigationController]) == 0)
  {
    if (*&v4[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate])
    {
      v18 = *&v4[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate + 8];
      ObjectType = swift_getObjectType();
      (*(v18 + 104))(ObjectType, v18);
    }

    else
    {
      Width = 320.0;
    }

    goto LABEL_8;
  }

  v7 = v6;
  v8 = [v6 view];

  if (v8)
  {
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v20.origin.x = v10;
    v20.origin.y = v12;
    v20.size.width = v14;
    v20.size.height = v16;
    Width = CGRectGetWidth(v20);
LABEL_8:
    LODWORD(a3) = 1148846080;
    LODWORD(a4) = 1112014848;
    [*&v5[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_contentView] systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{a3, a4}];
    return;
  }

  __break(1u);
}

uint64_t sub_100716638(void *a1, void *a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate];
  if (v6)
  {
    v7 = *&v2[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate + 8];
    ObjectType = swift_getObjectType();
    v21[0] = v6;
    v9 = *(v7 + 8);
    v10 = *(v9 + 8);
    swift_unknownObjectRetain();
    v10(a1, v3, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  v11 = *&v3[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder];
  *&v3[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder] = a2;
  v12 = a2;

  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100717684;
  *(v15 + 24) = v14;
  v21[4] = sub_10002AAE0;
  v21[5] = v15;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = *"";
  v21[2] = sub_10002AAB8;
  v21[3] = &unk_101883E80;
  v16 = _Block_copy(v21);
  v17 = v3;
  v18 = a1;

  [v13 performWithoutAnimation:v16];
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100716834(char *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_contentView;
  [*&a1[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_contentView] removeFromSuperview];
  v5 = OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint;
  v6 = *&a1[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 view];
    if (!v8)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v9 = v8;
    [v8 removeConstraint:v7];

    v10 = *&a1[v5];
    *&a1[v5] = 0;
  }

  v11 = *&a1[v4];
  *&a1[v4] = a2;
  v12 = a2;

  [v12 setLayoutMarginsRelativeArrangement:1];
  v13 = 12.0;
  v14 = 0.0;
  if (a1[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_useUCBMargins])
  {
    v13 = 16.0;
  }

  else
  {
    v14 = 12.0;
  }

  [v12 setDirectionalLayoutMargins:{v14, v13, v13, v13}];
  sub_10071579C(v12);
  v15 = [a1 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  [v15 setNeedsLayout];

  v17 = [a1 view];
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = v17;
  [v17 layoutIfNeeded];
}

id sub_1007169FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100716AC0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  sub_100716638(a2, a3);
  sub_1007164E4(v8, v9, v10, v11);
  *a4 = v12;
  a4[1] = v13;
  return sub_100716638(a5, a3);
}

uint64_t sub_100716B14(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  swift_beginAccess();
  [a1 setPreferredContentSize:{*(a2 + 16), *(a2 + 24)}];
  v9 = [a1 parentViewController];
  if (v9)
  {
    v10 = v9;
    swift_beginAccess();
    [v10 setPreferredContentSize:{*(a2 + 16), *(a2 + 24)}];
  }

  return sub_100716638(a4, a5);
}

uint64_t sub_100716BD8(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
  if (!v3)
  {
    return 0;
  }

  v6 = *((swift_isaMask & *v3) + 0x188);
  v7 = v3;
  LOBYTE(a2) = v6(a1, a2);

  return a2 & 1;
}

uint64_t sub_100716C80()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
  if (v1)
  {
    return (*((swift_isaMask & *v1) + 0x190))() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100716CF8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
  if (!v1)
  {
    return 0;
  }

  v2 = *((swift_isaMask & *v1) + 0x198);
  v3 = v1;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

uint64_t sub_100716DAC(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
  if (!v3)
  {
    return 0;
  }

  v6 = *((swift_isaMask & *v3) + 0x1C8);
  v7 = v3;
  LOBYTE(a2) = v6(a1, a2);

  return a2 & 1;
}

uint64_t sub_100716E54(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
  if (!v3)
  {
    return 0;
  }

  v6 = *((swift_isaMask & *v3) + 0x1D0);
  v7 = v3;
  LOBYTE(a2) = v6(a1, a2);

  return a2 & 1;
}

void sub_100716EFC(char *a1, id a2)
{
  if (*&a1[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate])
  {
    v4 = *&a1[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate + 8];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = *(v6 + 24);
    swift_unknownObjectRetain();
    v7(a1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  v8 = [a2 crl_isUserInterfaceStyleDark];
  v9 = [a1 traitCollection];
  v10 = [v9 crl_isUserInterfaceStyleDark];

  if (v8 != v10)
  {
    v11 = *&a1[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder];
    if (v11)
    {
      v12 = *((swift_isaMask & *v11) + 0x100);
      v13 = v11;
      v14 = v12();
      if (v14)
      {
        v15 = v14;
        sub_100716638(v14, v13);

        v13 = v15;
      }
    }
  }
}

uint64_t sub_100717060()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_contentView;
  v3 = &selRef_allowResizeDelegate;
  v4 = [*&v0[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_contentView] arrangedSubviews];
  sub_100006370(0, &qword_1019F6D00);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = *&v1[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = *((swift_isaMask & *v7) + 0x100);
  v9 = v7;
  v10 = v8();
  if (!v10)
  {

LABEL_15:
    v23 = 0;
    goto LABEL_16;
  }

  v11 = v10;
  v48 = v2;
  v47 = v6;
  v12 = *&v1[v2];
  sub_1007164E4(v13, v14, v15, v16);
  v18 = v17;
  v20 = v19;
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  v22[2] = v1;
  v22[3] = v11;
  v22[4] = v9;
  v22[5] = v2 + 16;
  v22[6] = v12;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100717664;
  *(v23 + 24) = v22;
  v53 = sub_10002AAE4;
  v54 = v23;
  aBlock = _NSConcreteStackBlock;
  v50 = *"";
  v51 = sub_10002AAB8;
  v52 = &unk_101883DB8;
  v24 = _Block_copy(&aBlock);
  v45 = v9;
  v25 = v12;
  v26 = v1;
  v27 = v11;

  [v21 performWithoutAnimation:v24];
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
    goto LABEL_29;
  }

  v44 = v25;
  v3 = &selRef_allowResizeDelegate;
  if (v18 != *(v2 + 16) || v20 != *(v2 + 24)) && (v28 = [v26 navigationController], v29 = objc_msgSend(v28, "visibleViewController"), v28, v29) && (sub_100006370(0, &qword_101A10AB0), v30 = v26, v31 = static NSObject.== infix(_:_:)(), v30, v29, (v31) && (v32 = objc_msgSend(v30, "navigationController")) != 0)
  {
    v33 = v32;
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = v2;
    v34[4] = v30;
    v34[5] = v27;
    v34[6] = v45;
    v53 = sub_100717674;
    v54 = v34;
    aBlock = _NSConcreteStackBlock;
    v50 = *"";
    v51 = sub_100007638;
    v52 = &unk_101883E08;
    v35 = _Block_copy(&aBlock);
    v46 = v45;
    v36 = v30;
    v37 = v27;
    v38 = v33;

    [v21 animateWithDuration:v35 animations:0.3];

    v3 = &selRef_allowResizeDelegate;
    _Block_release(v35);
  }

  else
  {
    sub_100716638(v27, v45);
  }

  v23 = sub_100717664;
  v6 = v47;
  v2 = v48;
LABEL_16:
  v39 = [*&v1[v2] v3[151]];
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v40 >> 62)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 < v41)
  {
    if (qword_1019F1D30 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  if (v41 < v6)
  {
    if (qword_1019F1D38 == -1)
    {
LABEL_23:
      v42 = String._bridgeToObjectiveC()();
      CRLAccessibilityPostAnnouncementNotification(v1, v42);

      CRLAccessibilityPostLayoutChangedNotification(*&v1[v2]);
      return sub_1000C1014(v23);
    }

LABEL_29:
    swift_once();
    goto LABEL_23;
  }

  return sub_1000C1014(v23);
}

unint64_t sub_1007176AC()
{
  result = qword_1019FC860;
  if (!qword_1019FC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC860);
  }

  return result;
}

unint64_t sub_100717704()
{
  result = qword_1019FC868;
  if (!qword_1019FC868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC868);
  }

  return result;
}

uint64_t sub_1007177A8@<X0>(uint64_t *a1@<X8>)
{
  v60 = a1;
  v1 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v1 - 8);
  v54 = &v41[-v2];
  v59 = type metadata accessor for InputConnectionBehavior();
  v63 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v4 - 8);
  v53 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v56 = &v41[-v7];
  v8 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v8 - 8);
  v52 = &v41[-v9];
  v10 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v10 - 8);
  v61 = &v41[-v11];
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v57 = type metadata accessor for LocalizedStringResource();
  v62 = *(v57 - 8);
  __chkstk_darwin(v57);
  v49 = &v41[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v55 = &v41[-v20];
  v50 = sub_1005B981C(&qword_1019F6278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = v13 + 104;
  v22 = *(v13 + 104);
  v22(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = v21;
  v42 = v21;
  v44 = v12;
  v22(v15, v21, v12);
  v43 = v22;
  v45 = v23;
  v25 = v61;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = *(v62 + 56);
  v62 += 56;
  v51 = v26;
  v26(v25, 0, 1, v57);
  v27 = type metadata accessor for CRLBoardEntity();
  (*(*(v27 - 8) + 56))(v52, 1, 1, v27);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22(v15, v24, v12);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v28 = v56;
  IntentDialog.init(_:)();
  v29 = type metadata accessor for IntentDialog();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v49 = (v30 + 56);
  v48 = v31;
  v31(v28, 0, 1, v29);
  v31(v53, 1, 1, v29);
  v46 = enum case for InputConnectionBehavior.default(_:);
  v32 = *(v63 + 104);
  v63 += 104;
  v47 = v32;
  v32(v58);
  sub_10070C278(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  *v60 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v53 = sub_1005B981C(&qword_1019FC888);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = v42;
  v34 = v44;
  v35 = v43;
  v43(v15, v42, v44);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35(v15, v33, v34);
  v36 = v61;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v51(v36, 0, 1, v57);
  v37 = type metadata accessor for AttributedString();
  (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
  v48(v56, 1, 1, v29);
  v47(v58, v46, v59);
  v38 = IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
  v39 = v60;
  v60[1] = v38;
  sub_1005B981C(&qword_1019F6280);
  v64 = 0xD00000000000001FLL;
  v65 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v39[2] = result;
  v39[6] = &type metadata for CRLBoardItemInsertionPerformer;
  v39[7] = &off_1018A33D0;
  return result;
}

uint64_t sub_10071817C(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  sub_1005B981C(&qword_1019FC880);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for CRLBoardEntity();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_1007182D4, 0, 0);
}

uint64_t sub_1007182D4()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = static OS_os_log.appIntents;
  Logger.init(_:)();
  v0[25] = *v1;
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  AppDependency.wrappedValue.getter();
  v0[5] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[6] = &off_1018AD9D0;
  sub_100020E58(v0 + 2, &type metadata for CRLBoardLibraryProvidingDependency);
  v0[26] = type metadata accessor for MainActor();
  v0[27] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_100718428;
  v4 = v0[21];

  return sub_1010AF408(v4);
}

uint64_t sub_100718428(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100718A0C;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_1007185A8;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_1007185A8()
{
  v1 = v0[30];

  v0[10] = &type metadata for CRLBoardLibraryHeadlessControllerDependency;
  v0[11] = &off_1018ADA90;
  v0[7] = v1;

  return _swift_task_switch(sub_10071862C, 0, 0);
}

uint64_t sub_10071862C()
{
  v1 = sub_101060950(6u, *(v0 + 120), *(v0 + 56));
  *(v0 + 248) = v1;
  sub_100020E58((v0 + 56), *(v0 + 80));
  sub_1005B981C(&unk_1019F4D60);
  v2 = swift_allocObject();
  *(v0 + 256) = v2;
  *(v2 + 16) = xmmword_101465920;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v4[1] = sub_100718734;

  return sub_100FE17C4(v2);
}

uint64_t sub_100718734()
{

  return _swift_task_switch(sub_10071884C, 0, 0);
}

uint64_t sub_10071884C()
{
  v1 = *sub_100020E58(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1007188F4;

  return sub_100FF8D2C((v0 + 7), v1);
}

uint64_t sub_1007188F4()
{

  if (v0)
  {

    v1 = sub_100718CD8;
  }

  else
  {
    v1 = sub_1007194A8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100718A0C()
{

  return _swift_task_switch(sub_100718A74, 0, 0);
}

uint64_t sub_100718A74()
{
  v1 = v0[21];
  sub_10000CAAC(v0[15], &qword_1019FC880);
  sub_100689004(v1);
  sub_100005070((v0 + 2));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error inserting sticky note: %@", v4, 0xCu);
    sub_10000CAAC(v5, &unk_101A27F60);
  }

  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[22];

  type metadata accessor for AppIntentError();
  sub_10070C278(&qword_1019F8B08, &type metadata accessor for AppIntentError);
  swift_allocError();
  static AppIntentError.Unrecoverable.unknown.getter();
  swift_willThrow();

  (*(v7 + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100718CD8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v12 = *(v0 + 176);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);

  sub_10000CAAC(v8, &qword_1019FC880);
  sub_100689004(v4);
  sub_100005070(v0 + 56);
  sub_100005070(v0 + 16);
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v9 = sub_100B0768C();
  sub_1006B05D0(v6, v5);
  sub_1006B05D0(v5, v7);
  IntentParameter.wrappedValue.setter();
  sub_100689004(v5);
  sub_100689004(v6);
  *(v0 + 96) = v9;
  sub_10070C278(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100689004(v3);
  (*(v2 + 8))(v1, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100718EC0()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10061655C(v6, qword_101AD62E0);
  sub_1005EB3DC(v6, qword_101AD62E0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1007190B8()
{
  v0 = sub_1005B981C(&qword_1019FC898);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_1019FC8A0);
  __chkstk_darwin(v1);
  sub_100719454();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000101560EF0;
  v2._countAndFlagsBits = 0xD000000000000015;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_1019FC8A8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_1005B981C(&qword_1019FC8B0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1007192C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1508 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1005EB3DC(v2, qword_101AD62E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10071936C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_10071817C(a1);
}

uint64_t sub_100719408(uint64_t a1)
{
  v2 = sub_100719454();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100719454()
{
  result = qword_1019FC890;
  if (!qword_1019FC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FC890);
  }

  return result;
}

uint64_t sub_100719788(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = v1;
  v3 = v1;
  v4 = sub_1000777A8(inited);

  if (!v4)
  {
LABEL_11:

    return 0;
  }

  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 32);
LABEL_8:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100719888()
{
  sub_1000C1024(v0 + 48);

  return swift_deallocClassInstance();
}

void sub_1007198C0()
{
  *(v0 + OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_footerViewHeight) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_footerViewContentInsets);
  v2 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v1 = *&NSDirectionalEdgeInsetsZero.top;
  v1[1] = v2;
  v3 = OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_coreLayout;
  type metadata accessor for CRLItemCollectionCoreFooterAwareLayout();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 56) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + v3) = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10071998C(uint64_t a1)
{
  v1 = a1;
  v36 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_100776664(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    if (v36)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v36 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v34 = v1 + 56;
      v33 = v1 + 64;
      v35 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_38;
        }

        v8 = v39;
        v9 = v40;
        v10 = v41;
        v11 = v1;
        sub_100724FF4(v39, v40, v41, v1, type metadata accessor for CRLBoardItem);
        v13 = v12;
        type metadata accessor for CRLGroupItem();
        if (swift_dynamicCastClass())
        {
          v14 = v13;
          v15 = sub_1005F36D4();
          v16 = sub_100E93C20(v15);
        }

        else
        {
          sub_1005B981C(&unk_1019F4D60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_101465920;
          *(inited + 32) = v13;
          v18 = v13;
          sub_1005BC5DC(inited);
          v16 = v19;
          swift_setDeallocating();
          swift_arrayDestroy();
        }

        v20 = v37;
        v42 = v37;
        v22 = v37[2];
        v21 = v37[3];
        if (v22 >= v21 >> 1)
        {
          sub_100776664((v21 > 1), v22 + 1, 1);
          v20 = v42;
        }

        v20[2] = v22 + 1;
        v20[v22 + 4] = v16;
        v37 = v20;
        if (v36)
        {
          if (!v10)
          {
            goto LABEL_43;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v35;
          sub_1005B981C(&unk_1019FCB90);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v38, 0);
          if (v5 == v35)
          {
LABEL_35:
            sub_1000341AC(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_44;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v1 = v11;
          v23 = 1 << *(v11 + 32);
          if (v8 >= v23)
          {
            goto LABEL_39;
          }

          v24 = v8 >> 6;
          v25 = *(v34 + 8 * (v8 >> 6));
          if (((v25 >> v8) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(v11 + 36) != v9)
          {
            goto LABEL_41;
          }

          v26 = v25 & (-2 << (v8 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v27 = v24 << 6;
            v28 = v24 + 1;
            v29 = (v33 + 8 * v24);
            while (v28 < (v23 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                sub_1000341AC(v8, v9, 0);
                v23 = __clz(__rbit64(v30)) + v27;
                goto LABEL_34;
              }
            }

            sub_1000341AC(v8, v9, 0);
          }

LABEL_34:
          v32 = *(v11 + 36);
          v39 = v23;
          v40 = v32;
          v41 = 0;
          v2 = v35;
          if (v5 == v35)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t sub_100719D9C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting);
  v3 = [v2 interactiveCanvasController];
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_selectionPath);
    v6 = v5;
    v7 = sub_100F22994(v5);
  }

  else
  {
    v7 = 0;
  }

  *(v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath) = v7;

  v8 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_selectionPath);
  if (v8)
  {
    v9 = v8;
    v10 = [v2 interactiveCanvasController];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 selectionModelTranslator];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 boardItemsForSelectionPath:v9];

        type metadata accessor for CRLBoardItem(0);
        sub_100006490(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
        v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        goto LABEL_11;
      }
    }
  }

  v15 = 0;
LABEL_11:
  sub_100725300(v15);
  v17 = v16;

  *(v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_flattenedBoardItemsForCurrentSelectionPath) = v17;
}

char *sub_100719F64(void *a1, id a2)
{
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBuilder) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBaseButton) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBuilders) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBaseButtons) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBuilders) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBaseButtons) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasElementsBuilders) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_auxiliaryPresentedBuilder) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedWrappedNavigationController) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_selectionPath) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_flattenedBoardItemsForCurrentSelectionPath) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_secondLayerPresentedBuilder) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_shouldRepositionSecondLayerPopover) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_shouldUpdateSecondLayerPermittedArrowDirections) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_shouldUpdateSecondLayerPopoverPassthroughViews) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_isUpdatingMiniFormatter) = 0;
  *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_isInProcessOfPresentingSecondLayerPopover) = 0;
  result = [a2 respondsToSelector:"asiOSCVC"];
  if (result)
  {
    v6 = [a2 asiOSCVC];
    *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasViewController) = v6;

    return sub_100734EF4(a2, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10071A17C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 traitCollection];
  if ([objc_opt_self() crl_phoneUI])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 crl_isCompactWidth];
  }

  return v4;
}

void sub_10071A21C(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC;
  if (!*(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC))
  {
    v8 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting);
    v9 = a2;
    v10 = [v8 interactiveCanvasController];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 selectionModelTranslator];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 boardItemsForSelectionPath:v9];

        type metadata accessor for CRLBoardItem(0);
        sub_100006490(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
        v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_20:
        sub_100FBFC70(v15);

        sub_10071A710(v9, 1);
        v20 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasViewController);

        [v20 becomeFirstResponderIfAppropriate];
        return;
      }
    }

    v15 = 0;
    goto LABEL_20;
  }

  if (*(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath))
  {
    v6 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath);
    v7 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
    if (!v7)
    {
      goto LABEL_27;
    }
  }

  else if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1005BFCB4(_swiftEmptyArrayStorage);
      v6 = v21;
    }

    else
    {
      v6 = _swiftEmptySetSingleton;
    }

    v7 = *(v2 + v4);
    if (!v7)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v6 = _swiftEmptySetSingleton;
    v7 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
    if (!v7)
    {
LABEL_27:

LABEL_28:
      v22 = sub_10079EB78(a1, v6);

      sub_10071B728(1, 1, (v22 & 1) == 0);
      if (v22)
      {
        return;
      }

      v23 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting);
      v24 = a2;
      v25 = [v23 interactiveCanvasController];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 selectionModelTranslator];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 boardItemsForSelectionPath:v24];

          type metadata accessor for CRLBoardItem(0);
          sub_100006490(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
          v30 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_34:
          sub_100FBFC70(v30);

          sub_10071A710(v24, 1);
          return;
        }
      }

      v30 = 0;
      goto LABEL_34;
    }
  }

  v16 = v7;
  v17 = [v16 traitCollection];
  if ([objc_opt_self() crl_phoneUI])
  {
  }

  else
  {
    v18 = [v17 crl_isCompactWidth];

    if (!v18)
    {

      goto LABEL_28;
    }
  }

  v19 = sub_10079EB78(a1, v6);

  if ((v19 & 1) == 0)
  {
    goto LABEL_28;
  }
}

void sub_10071A710(void *a1, int a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC;
  if (*&v2[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC])
  {
    sub_10071B728(1, 0, 1);
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_selectionPath;
  v8 = *&v2[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_selectionPath];
  *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_selectionPath] = a1;
  v9 = a1;

  sub_100719D9C();
  if (sub_10071B0DC())
  {
    v10 = *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath];
    if (v10)
    {

      sub_10071D4E0();
      v11 = sub_10071C93C(0, 0);
      v13 = v12;
      v14 = *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBuilders];
      if (v14 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_8:
          if ((v14 & 0xC000000000000001) != 0)
          {
            v74 = v11;

            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_52;
            }

            v15 = *(v14 + 32);
            v16 = v11;
            v17 = v15;
          }

          v18 = *&v17[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element];

          v19 = [v18 options];
          v20 = 6.0;
          if ((v19 & 4) != 0)
          {
LABEL_19:
            v23 = sub_10071AEC8(v11, v20, 6.0);

            if ((v23 & 1) == 0)
            {
              v24 = sub_10071C93C(1, 0);
              v13 = v25;

              v11 = v24;
              LOBYTE(v24) = sub_10071AEC8(v11, v20, 6.0);

              if ((v24 & 1) == 0)
              {
                v26 = sub_10071C93C(1, 1);
                v13 = v27;

                v11 = v26;
              }
            }

            v29 = sub_100E9464C(v28);

            v31 = sub_100E9464C(v30);

            sub_1010ACFC4(v31, v29);
            v84 = v32;
            v33 = *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBuilder];
            v79 = v5;
            v80 = v10;
            v76 = v6;
            v78 = v13;
            if (v33)
            {
              sub_100E70E44(v83, v33);

              v34 = v84;
            }

            else
            {
              v34 = v32;
            }

            v35 = type metadata accessor for CRLiOSMiniFormatterPresenter();
            v83[3] = v35;
            v83[4] = &off_101884080;
            v83[0] = v3;
            v36 = type metadata accessor for CRLiOSMiniFormatterViewController();
            v37 = objc_allocWithZone(v36);
            v38 = sub_10002A948(v83, v35);
            v39 = __chkstk_darwin(v38);
            v41 = (&v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v42 + 16))(v41, v39);
            v43 = *v41;
            v82[3] = v35;
            v82[4] = &off_101884080;
            v82[0] = v43;
            v44 = OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView;
            v45 = objc_allocWithZone(UIView);
            v46 = v80;

            v47 = v11;

            v48 = v34;
            v49 = v3;
            *&v37[v44] = [v45 init];
            *&v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper] = 0;
            *&v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper] = 0;
            v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_viewDidAppear] = 0;
            v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingDisplay] = 0;
            v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingHide] = 0;
            v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_needsRefreshWhenAppears] = 0;
            v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isHidingMiniFormatter] = 0;
            *&v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_crlaxCurrentPresentedRep] = 0;
            *&v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_reps] = v46;
            v77 = v47;
            *&v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay] = v47;
            v50 = v49;
            *&v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_numberOfButtons] = v78;
            *&v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_builders] = v48;
            sub_10000630C(v82, &v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate]);
            *&v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_leadingMargin] = v20;
            *&v37[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_trailingMargin] = 0x4018000000000000;
            v81.receiver = v37;
            v81.super_class = v36;
            v51 = objc_msgSendSuper2(&v81, "initWithNibName:bundle:", 0, 0);
            sub_100005070(v82);
            sub_100005070(v83);
            v52 = v79;
            v53 = *&v3[v79];
            *&v3[v79] = v51;
            v54 = v51;

            v55 = sub_100BC17E0(v46);
            v56 = *&v54[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_crlaxCurrentPresentedRep];
            *&v54[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_crlaxCurrentPresentedRep] = v55;

            v57 = *&v49[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasViewController];
            v58 = [v57 traitCollection];
            if ([objc_opt_self() crl_phoneUI])
            {
            }

            else
            {
              v59 = [v58 crl_isCompactWidth];

              if (!v59)
              {
                goto LABEL_35;
              }
            }

            v60 = [v57 presentedViewController];
            if (v60)
            {
              v61 = v60;
              type metadata accessor for CRLScenesNavigatorViewController();
              if (!swift_dynamicCastClass() || ([v61 isBeingDismissed] & 1) != 0)
              {
                goto LABEL_34;
              }

              v62 = [v57 delegate];
              if (!v62)
              {
LABEL_55:
                __break(1u);
                return;
              }

              v63 = v62;
              if ([v62 respondsToSelector:"dismissPresentedViewController"])
              {
                [v63 dismissPresentedViewController];
                swift_unknownObjectRelease();
LABEL_34:

                goto LABEL_35;
              }

              swift_unknownObjectRelease();
            }

LABEL_35:
            v64 = [v57 delegate];
            if (v64)
            {
              v65 = v64;
              if ([v64 respondsToSelector:"viewControllerForMiniFormatterForCanvasViewController:"])
              {
                v66 = [v65 viewControllerForMiniFormatterForCanvasViewController:v57];
                swift_unknownObjectRelease();
                if (v66)
                {
                  if (*&v3[v52])
                  {
                    [v66 addChildViewController:?];
                    v67 = *&v3[v52];
                    if (v67)
                    {
                      v68 = v67;

                      v69 = *&v3[v52];
                      if (v69)
                      {
                        v70 = v69;
                        v71 = sub_100A703A0();

                        v72 = v71 ^ 1;
                      }

                      else
                      {
                        v72 = 1;
                      }

                      v73 = v77;
                      sub_100A6C490(v66, (v76 & 1), v72 & 1);

                      goto LABEL_46;
                    }

                    goto LABEL_54;
                  }

LABEL_53:
                  __break(1u);
LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }

              v73 = v77;
LABEL_46:
              if ((v50[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_isUpdatingMiniFormatter] & 1) == 0)
              {
                [v57 updateToolbarButtons];
              }

              sub_10071C828();

              return;
            }

LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

LABEL_18:
          v20 = 12.0;
          goto LABEL_19;
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

      v22 = v11;
      goto LABEL_18;
    }
  }

  v21 = *&v3[v7];
  *&v3[v7] = 0;

  sub_100719D9C();
}

uint64_t sub_10071AEC8(void *a1, double a2, double a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasViewController);
  v8 = [v7 traitCollection];
  v9 = objc_opt_self();
  if ([v9 crl_phoneUI])
  {
  }

  else
  {
    v10 = [v8 crl_isCompactWidth];

    if (!v10)
    {
      return 1;
    }
  }

  if ([v9 crl_phoneUI] && (objc_msgSend(objc_opt_self(), "crl_deviceIsLandscape") & 1) != 0)
  {
    return 1;
  }

  result = [*(v3 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
  if (result)
  {
    v12 = result;
    [result visibleScaledRectForCanvasUI];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    result = [v7 canvasView];
    if (result)
    {
      v21 = result;
      v22 = [result window];

      if (v22)
      {
        [v22 safeAreaInsets];
        v24 = v23;
        v26 = v25;

        v32.origin.x = v14;
        v32.origin.y = v16;
        v32.size.width = v18;
        v32.size.height = v20;
        Width = CGRectGetWidth(v32);
        if (sub_100076BAC())
        {
          v28 = v24;
        }

        else
        {
          v28 = v26;
        }

        if (sub_100076BAC())
        {
          v29 = v26;
        }

        else
        {
          v29 = v24;
        }

        v30 = Width - v28 - v29;
        [a1 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
        return v31 + a2 + a3 < v30;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10071B0DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath);
  if (!v1)
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {

    if (__CocoaSet.count.getter() < 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = *(v1 + 16);

    if (v2 < 1)
    {
LABEL_9:

      return 0;
    }
  }

  if (sub_100735088())
  {
    goto LABEL_9;
  }

  v3 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 documentIsSharedReadOnly];

    if (v5)
    {
      goto LABEL_9;
    }
  }

  result = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasViewController) delegate];
  if (result)
  {
    v7 = result;

    if ([v7 respondsToSelector:"currentDocumentMode"])
    {
      v8 = [v7 currentDocumentMode];
      swift_unknownObjectRelease();
      v9 = [v8 wantsToSuppressMiniFormatter];

      if (v9)
      {
        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v10 = objc_opt_self();
      v11 = [v10 _atomicIncrementAssertCount];
      v33 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v33);
      StaticString.description.getter();
      v12 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v13 = String._bridgeToObjectiveC()();

      v14 = [v13 lastPathComponent];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v18 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v11;
      v20 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v20;
      v21 = sub_1005CF04C();
      *(inited + 104) = v21;
      *(inited + 72) = v12;
      *(inited + 136) = &type metadata for String;
      v22 = sub_1000053B0();
      *(inited + 112) = v15;
      *(inited + 120) = v17;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v22;
      *(inited + 152) = 221;
      v23 = v33;
      *(inited + 216) = v20;
      *(inited + 224) = v21;
      *(inited + 192) = v23;
      v24 = v12;
      v25 = v23;
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v27, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v28 = swift_allocObject();
      v28[2] = 8;
      v28[3] = 0;
      v28[4] = 0;
      v28[5] = 0;
      v29 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v31 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      [v10 handleFailureInFunction:v30 file:v31 lineNumber:221 isFatal:0 format:v32 args:v29];
    }

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10071B728(char a1, char a2, char a3)
{
  v4 = *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC];
  if (!v4)
  {
    return;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a3 & 1;
  *(v8 + 24) = v3;
  *(v8 + 32) = v4;
  *(v8 + 40) = a2 & 1;
  if ((a1 & 1) != 0 && (v9 = *&v3[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedWrappedNavigationController]) != 0)
  {
    v20 = v4;
    v10 = v3;
    v11 = v9;
    if (([v11 isBeingDismissed] & 1) == 0)
    {
      v21 = *&v10[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBaseButtons];

      sub_1007993C8(v13);
      v19 = v11;
      if (v21 >> 62)
      {
        goto LABEL_24;
      }

      for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v15 = 0;
        while (1)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v15 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v16 = *(v21 + 8 * v15 + 32);
          }

          v17 = v16;
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          [v16 setUserInteractionEnabled:0];

          ++v15;
          if (v18 == i)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        ;
      }

LABEL_25:

      sub_10071BC94(a2 & 1, sub_100725814, v8);

      goto LABEL_8;
    }
  }

  else
  {
    v20 = v4;
    v12 = v3;
  }

  sub_10071B980(a3 & 1, v3, v4, a2 & 1);

LABEL_8:
}

void sub_10071B980(char a1, uint64_t a2, void *a3, char a4)
{
  if (a1)
  {
    if (!a3)
    {
      return;
    }

LABEL_17:
    sub_100A6E974(a4 & 1, 1);
    return;
  }

  v6 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC;
  v7 = *(a2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
  if (!v7)
  {
    if (a3)
    {
      goto LABEL_17;
    }

    v16 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    return;
  }

  v8 = a4;
  type metadata accessor for CRLiOSMiniFormatterViewController();
  v9 = v7;
  v10 = a3;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    a4 = v8;
    goto LABEL_17;
  }

  v12 = *(a2 + v6);
  if (v12)
  {
    v13 = v10;
    v14 = v12;
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      v16 = *(a2 + v6);
      if (v16)
      {
        v17 = v16;
        v18 = sub_100A703A0();
        sub_100A6E974(v8 & 1, (v18 & 1) == 0);

        v16 = *(a2 + v6);
      }

LABEL_13:
      *(a2 + v6) = 0;

      sub_10071C828();
      if ((*(a2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_isUpdatingMiniFormatter) & 1) == 0)
      {
        [*(a2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasViewController) updateToolbarButtons];
      }

      v19 = *(a2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_selectionPath);
      *(a2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_selectionPath) = 0;

      sub_100719D9C();
    }
  }
}

void sub_10071BAF8()
{
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBaseButtons);

  sub_1007993C8(v1);
  v2 = sub_1006408B8(v12);

  sub_1005B981C(&qword_1019FCC08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBaseButton);
  *(inited + 32) = v4;
  v5 = v4;
  sub_10079AFE4(inited);
  v6 = v2;
  v7 = v2[2];
  if (v7)
  {
    v8 = 0;
    while (v8 < v6[2])
    {
      v9 = v6[v8 + 4];
      if (v9)
      {
        v10 = v9;
        v11 = [v10 contextMenuInteraction];
        [v11 dismissMenu];
      }

      if (v7 == ++v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

void sub_10071BC94(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedWrappedNavigationController);
  if (!v4)
  {
    return;
  }

  v13 = v4;
  if (([v13 isBeingDismissed] & 1) != 0 || (v8 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasViewController), (v9 = objc_msgSend(v8, "presentedViewController")) == 0))
  {
  }

  else
  {
    v10 = v9;
    sub_100006370(0, &qword_101A10AB0);
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {
      if (a2)
      {
        aBlock[4] = a2;
        aBlock[5] = a3;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = *"";
        aBlock[2] = sub_100007638;
        aBlock[3] = &unk_101884210;
        v12 = _Block_copy(aBlock);
      }

      else
      {
        v12 = 0;
      }

      [v8 dismissViewControllerAnimated:a1 & 1 completion:v12];
      _Block_release(v12);
      sub_10071BE54();

      return;
    }
  }
}

uint64_t sub_10071BE54()
{
  v1 = sub_100720FAC();
  if (v1)
  {
    v1[OBJC_IVAR____TtC8Freeform34CRLiOSMiniFormatterBaseLayerButton_isPresentingPopover] = 0;
    v2 = v1;
    [v1 setHighlighted:0];
  }

  v3 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_secondLayerPresentedBuilder);
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_secondLayerPresentedBuilder) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController) = 0;

  v5 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedWrappedNavigationController);
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedWrappedNavigationController) = 0;

  v6 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
  if (!v6)
  {
    goto LABEL_31;
  }

  v33 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC;
  v34 = v0;
  v7 = *&v6[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay];
  v8 = v6;
  v9 = [v7 arrangedSubviews];
  sub_100006370(0, &qword_1019F6D00);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    v13 = OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate;
    v14 = v10 & 0xC000000000000001;
    v15 = v10 & 0xFFFFFFFFFFFFFF8;
    v35 = i;
    while (1)
    {
      if (v14)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v15 + 16))
        {
          goto LABEL_26;
        }

        v17 = *(v10 + 8 * v12 + 32);
      }

      v18 = v17;
      v19 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_10000630C(&v8[v13], v37);
      sub_1005B981C(&unk_101A0E8A0);
      type metadata accessor for CRLiOSMiniFormatterPresenter();
      if (swift_dynamicCast())
      {
        v20 = *&v36[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController];
        if (v20)
        {
          v21 = v14;
          v22 = v13;
          v23 = v8;
          v24 = v20;
          v25 = [v24 topViewController];

          if (v25)
          {
            type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
            v26 = swift_dynamicCastClass();
            if (v26)
            {
              v27 = *(v26 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
              v28 = v27;

              if (v27)
              {

                v16 = 0;
                goto LABEL_22;
              }
            }

            else
            {
            }
          }

          v16 = 1;
LABEL_22:
          v8 = v23;
          v13 = v22;
          v14 = v21;
          i = v35;
        }

        else
        {

          v16 = 1;
        }

        v15 = v10 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_8;
      }

      v16 = 1;
LABEL_8:
      [v18 setIsAccessibilityElement:v16];

      ++v12;
      if (v19 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  v29 = *(v34 + v33);
  if (v29 && (v30 = [v29 view]) != 0)
  {
    v37[0] = v30;
    v31 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
LABEL_31:
    v31 = 0;
  }

  CRLAccessibilityPostLayoutChangedNotification(v31);
  return swift_unknownObjectRelease();
}

void sub_10071C188()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_selectionPath);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
    if (v2)
    {
      v3 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_isUpdatingMiniFormatter;
      *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_isUpdatingMiniFormatter) = 1;
      v4 = v2;
      v5 = v1;
      sub_10071B980(0, v0, v2, 0);

      sub_10071A710(v5, 0);
      *(v0 + v3) = 0;
    }
  }
}

id sub_10071C2B4()
{
  result = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (result)
  {
    result = [result topViewController];
    if (result)
    {
      v2 = result;
      type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
      v3 = swift_dynamicCastClass();
      v4 = v3 != 0;
      if (!v3)
      {
LABEL_6:

        return v4;
      }

      v5 = *(v3 + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder);
      v6 = v5;

      if (v5)
      {
        v2 = v6;
        goto LABEL_6;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10071C38C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10091C278();

  v5 = *(v4 + 56);

  return v5;
}

void *sub_10071C400()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBuilder);
  if (v2)
  {
    v3 = v2;
    v4 = sub_100911E34();
    if (v4)
    {
      sub_1006369C4(v4);
    }

    sub_1006369C4(_swiftEmptySetSingleton);
  }

  v5 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBuilders);
  if (v5 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = (*((swift_isaMask & *v8) + 0x180))();

        sub_1007993E0(v11);
        ++v7;
        if (v10 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_16:

    v12 = sub_100E93C20(_swiftEmptyArrayStorage);

    sub_1006369C4(v12);
    v5 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBuilders);
    if (v5 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13)
    {
      v14 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v5 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v18 = (*((swift_isaMask & *v15) + 0x180))();

        sub_1007993E0(v18);
        ++v14;
        if (v17 == v13)
        {
          goto LABEL_27;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_27:

    v19 = sub_100E93C20(_swiftEmptyArrayStorage);

    sub_1006369C4(v19);
    v1 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasElementsBuilders);
    v5 = v1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v5)
    {
      break;
    }

    v20 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v21 = *(v1 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = (*((swift_isaMask & *v21) + 0x180))();

      sub_1007993E0(v24);
      ++v20;
      if (v23 == v5)
      {
        goto LABEL_38;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

LABEL_38:

  v25 = sub_100E93C20(_swiftEmptyArrayStorage);

  sub_1006369C4(v25);
  return _swiftEmptySetSingleton;
}

uint64_t sub_10071C828()
{
  v1 = _swiftEmptySetSingleton;
  v9 = _swiftEmptySetSingleton;
  if (*(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC))
  {
    v1 = sub_10071C400();
    v9 = v1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_auxiliaryPresentedBuilder);
  if (v2)
  {
    v3 = *((swift_isaMask & *v2) + 0x180);
    v4 = v2;
    v5 = v3();
    sub_1006369C4(v5);

    v1 = v9;
  }

  v6 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_observedObjects);
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_observedObjects) = v1;
  sub_1007351F0(v6);

  sub_1007351FC(v7);
}

id sub_10071C93C(char a1, char a2)
{
  v4 = v2;
  v54 = _swiftEmptyArrayStorage;
  v6 = *&v2[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBuilders];
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v53 = _swiftEmptyArrayStorage;

    v8 = &v53;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_84;
    }

    v11 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v6 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      (*((swift_isaMask & *v12) + 0xE0))();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v7 != v11);

    v14 = v53;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v15 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBaseButtons;
  *&v4[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBaseButtons] = v14;

  v16 = *&v4[v15];
  if (v16 >> 62)
  {
    sub_100006370(0, &qword_1019F6D00);

    v17 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &qword_1019F6D00);
    v17 = v16;
  }

  sub_1007993B0(v17);
  if (v54 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
LABEL_16:
      v9 = sub_100B36684(0, 1, 1, _swiftEmptyArrayStorage);
      v3 = *(v9 + 2);
      v10 = *(v9 + 3);
      v7 = v3 + 1;
      if (v3 < v10 >> 1)
      {
LABEL_17:
        *(v9 + 2) = v7;
        *&v9[8 * v3 + 32] = v8;
        goto LABEL_23;
      }

LABEL_84:
      v9 = sub_100B36684((v10 > 1), v7, 1, v9);
      goto LABEL_17;
    }
  }

  else
  {
    v8 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_16;
    }
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_23:
  v18 = *&v4[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBuilders];
  v51 = v9;
  if ((a1 & 1) == 0)
  {

    goto LABEL_41;
  }

  v53 = _swiftEmptyArrayStorage;
  if (v18 >> 62)
  {
    goto LABEL_86;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:

  if (!v19)
  {
    v24 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  v50 = v4;
  v20 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if ([*&v21[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] tag] == 27)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v4 = v18;
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v20;
    if (v23 == v19)
    {
      v24 = v53;
      v4 = v50;
LABEL_40:

      v18 = v24;
LABEL_41:
      if (!(v18 >> 62))
      {
        v25 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_43;
      }

      goto LABEL_80;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v25 = _CocoaArrayWrapper.endIndex.getter();
LABEL_43:
    v26 = _swiftEmptyArrayStorage;
    if (v25)
    {
      v53 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v25 < 0)
      {
        __break(1u);
LABEL_86:
        v19 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_26;
      }

      v27 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v28 = *(v18 + 8 * v27 + 32);
        }

        v29 = v28;
        ++v27;
        (*((swift_isaMask & *v28) + 0xE0))();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v25 != v27);
      v26 = v53;
    }

    v30 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBaseButtons;
    *&v4[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBaseButtons] = v26;

    v31 = *&v4[v30];
    if (v31 >> 62)
    {
      sub_100006370(0, &qword_1019F6D00);

      v32 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100006370(0, &qword_1019F6D00);
      v32 = v31;
    }

    sub_1007993B0(v32);
    v33 = *&v4[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBuilder];
    if (!v33)
    {
      goto LABEL_59;
    }

    v34 = v33;
    if (!sub_101306E14())
    {

LABEL_59:

      goto LABEL_60;
    }

    sub_10130669C();
    v35 = *&v4[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBaseButton];
    *&v4[OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBaseButton] = v36;
    v37 = v36;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_60:
    v38 = v54;
    v39 = v54 >> 62;
    v40 = v54 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v40)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v41 = *(v38 + 8 * v18 + 32);
      }

      v43 = v41;
      v4 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      LODWORD(v42) = 1144750080;
      [v41 setContentHuggingPriority:1 forAxis:v42];

      ++v18;
      if (v4 == v40)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
  }

LABEL_71:
  if (v39)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v44 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v46 = [v44 initWithArrangedSubviews:isa];

  v47 = [objc_opt_self() tertiarySystemFillColor];
  sub_10071D18C(v51, v47);

  v48 = 12.0;
  if (a2)
  {
    v48 = 10.0;
  }

  [v46 setSpacing:v48];
  [v46 setDistribution:3];
  [v46 setAlignment:3];
  return v46;
}

void sub_10071D18C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v11 = *v4++;
      v12 = [objc_allocWithZone(UIView) init];
      [v12 setBackgroundColor:a2];
      v13 = [v12 layer];
      [v13 setMasksToBounds:1];

      v14 = [v12 layer];
      [v14 setCornerRadius:1.0];

      v15 = [v12 layer];
      [v15 setCornerCurve:kCACornerCurveContinuous];

      [v2 insertArrangedSubview:v12 atIndex:v11];
      v16 = [v2 axis];
      if (v16 == 1)
      {
        v5 = [v12 heightAnchor];
        v6 = [v5 constraintEqualToConstant:1.0];

        [v6 setActive:1];
        v7 = [v12 widthAnchor];
        v8 = [v2 widthAnchor];
        v9 = [v7 constraintEqualToAnchor:v8 multiplier:1.0];
      }

      else
      {
        if (v16)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return;
        }

        v17 = [v12 widthAnchor];
        v18 = [v17 constraintEqualToConstant:2.0];

        [v18 setActive:1];
        v19 = [v12 heightAnchor];
        v20 = [v19 constraintEqualToConstant:28.0];

        [v20 setActive:1];
        v7 = [v12 centerYAnchor];
        v8 = [v2 centerYAnchor];
        v9 = [v7 constraintEqualToAnchor:v8];
      }

      v10 = v9;

      [v10 setActive:1];
      --v3;
    }

    while (v3);
  }
}

void sub_10071D4E0()
{
  v1 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBuilders;
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBuilders) = _swiftEmptyArrayStorage;

  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_generalElementsBaseButtons) = _swiftEmptyArrayStorage;

  v2 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBuilder;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBuilder);
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBuilder) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBaseButton);
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_ellipsisBaseButton) = 0;

  v5 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBuilders;
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBuilders) = _swiftEmptyArrayStorage;

  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_inspectorElementsBaseButtons) = _swiftEmptyArrayStorage;

  v6 = OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasElementsBuilders;
  *(v0 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_canvasElementsBuilders) = _swiftEmptyArrayStorage;

  sub_10071D804();
  sub_10071D9EC(v7);
  v9 = v8;
  v11 = v10;

  *(v0 + v6) = _swiftEmptyArrayStorage;

  *(v0 + v1) = v9;

  *(v0 + v5) = v11;

  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() elementWithName:v12 image:0 type:1 action:0];

  v14 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController);
  v15 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
  v16 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterEllipsisBuilder());
  v17 = &v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v18 = &v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
  *v18 = 0;
  v18[1] = 0;
  *(v17 + 1) = &off_101884938;
  *(v17 + 2) = &off_101884000;
  swift_unknownObjectWeakAssign();
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = v13;
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v14;
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = v15;
  v19 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
  *&v19[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v14;
  v31.receiver = v19;
  v31.super_class = type metadata accessor for CRLMiniFormatterDataProvider();
  v20 = v14;
  v21 = v13;
  v22 = v15;
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v31, "init");
  v23 = [v21 crlaxLabel];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  *v18 = v25;
  v18[1] = v27;

  v30.receiver = v16;
  v30.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
  v28 = objc_msgSendSuper2(&v30, "init");

  v29 = *(v0 + v2);
  *(v0 + v2) = v28;
}

void sub_10071D804()
{
  v1 = v0;
  sub_100006370(0, &unk_1019FCBF0);
  v2 = NSArray.init(arrayLiteral:)();
  v3 = [*(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController) currentEditors];
  sub_1005B981C(&qword_101A09750);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    sub_100006370(0, &qword_1019FCC00);
    v8 = v2;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    return;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v7 respondsToSelector:"addMiniFormatterElementsToArray:atPoint:"])
      {
        if ([v7 respondsToSelector:"addMiniFormatterElementsToArray:atPoint:"])
        {
          [v7 addMiniFormatterElementsToArray:v2 atPoint:{0.0, 0.0}];
        }
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  __break(1u);
}

unint64_t sub_10071D9EC(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      v8 = [v6 elementType];
      if (v8 == 2)
      {
        v13 = *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController];
        v14 = [*&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting] interactiveCanvasController];
        v15 = sub_1005D707C(v7, v2, v13, v14);

        v16 = v15;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else if (v8)
      {
      }

      else
      {
        v9 = *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController];
        v10 = [*&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting] interactiveCanvasController];
        v11 = sub_1005D707C(v7, v2, v9, v10);

        v12 = v11;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void *sub_10071DC74(uint64_t a1, void *a2)
{
  v3 = v2;
  v55 = a1;
  v56 = a2;
  v65 = _swiftEmptyArrayStorage;
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_miniFormatterVC);
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  v6 = sub_100A7163C();
  v7 = [*(v2 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
  if (v7 && (v8 = v7, v9 = sub_100F22994(v56), v8, v9))
  {
    if ((v9 & 0xC000000000000001) != 0)
    {

      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *(v9 + 16);
    }

    v11 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath);
    if (v11)
    {

      v13 = sub_100BC5D60(v12, v11);

      swift_bridgeObjectRelease_n();
      if ((v6 & 1) != 0 || (v13 & 1) == 0 && v10)
      {
        goto LABEL_16;
      }

LABEL_20:

      goto LABEL_21;
    }

    if (!(v6 & 1 | (v10 != 0)))
    {
      goto LABEL_20;
    }
  }

  else if (*(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath))
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v14 = sub_100B375A4(0, 1, 1, _swiftEmptyArrayStorage);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_100B375A4((v15 > 1), v16 + 1, 1, v14);
  }

  v63 = type metadata accessor for CRLiOSMiniFormatterViewController();
  v64 = &off_101892E60;
  *&v62 = v5;
  v14[2] = v16 + 1;
  sub_100050F74(&v62, &v14[5 * v16 + 4]);
  v65 = v14;
LABEL_21:
  v17 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
  if (v17)
  {
    v18 = v17;
    v19 = [v18 viewControllers];
    v20 = sub_100006370(0, &qword_101A10AB0);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = _swiftEmptyArrayStorage;
    if (v21 >> 62)
    {
      goto LABEL_40;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      while (1)
      {
        v52 = v18;
        v53 = v3;
        v23 = 0;
        v18 = (v21 & 0xC000000000000001);
        v24 = v21 & 0xFFFFFFFFFFFFFF8;
        v54 = v21 & 0xFFFFFFFFFFFFFF8;
        while (v18)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v3 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_37:
            __break(1u);
LABEL_38:
            v34 = v58;
            v18 = v52;
            v3 = v53;
            goto LABEL_42;
          }

LABEL_30:
          v57 = v25;
          v26 = v25;
          sub_1005B981C(&unk_1019FCBE0);
          if (swift_dynamicCast())
          {
            v27 = v22;
            v28 = v18;
            v29 = v21;
            v30 = v20;
            sub_100050F74(&v59, &v62);
            v32 = v63;
            v31 = v64;
            sub_100020E58(&v62, v63);
            v33 = (v31[3])(v55, v56, v32, v31);
            sub_100005070(&v62);
            if (v33)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            v20 = v30;
            v21 = v29;
            v18 = v28;
            v22 = v27;
            v24 = v54;
          }

          else
          {

            v61 = 0;
            v59 = 0u;
            v60 = 0u;
            sub_10000CAAC(&v59, &qword_1019FCBD8);
          }

          ++v23;
          if (v3 == v22)
          {
            goto LABEL_38;
          }
        }

        if (v23 < *(v24 + 16))
        {
          break;
        }

        __break(1u);
LABEL_40:
        v22 = _CocoaArrayWrapper.endIndex.getter();
        if (!v22)
        {
          goto LABEL_41;
        }
      }

      v25 = *(v21 + 8 * v23 + 32);
      v3 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    }

LABEL_41:
    v34 = _swiftEmptyArrayStorage;
LABEL_42:

    v35 = sub_100F222FC(v34);

    if (v35)
    {
      sub_10079AFF8(v35);
    }
  }

  v36 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController);
  if (!v36 || (*&v62 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedAuxiliaryViewController), sub_100006370(0, &qword_101A10AB0), v37 = v36, sub_1005B981C(&unk_1019FCBE0), (swift_dynamicCast() & 1) == 0))
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    goto LABEL_56;
  }

  if (!*(&v60 + 1))
  {
LABEL_56:
    sub_10000CAAC(&v59, &qword_1019FCBD8);
    return v65;
  }

  sub_100050F74(&v59, &v62);
  v38 = v63;
  v39 = v64;
  sub_100020E58(&v62, v63);
  if ((v39[3])(v55, v56, v38, v39))
  {
    sub_10000630C(&v62, &v59);
    v40 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_100B375A4(0, v40[2] + 1, 1, v40);
      v65 = v40;
    }

    v42 = v40[2];
    v41 = v40[3];
    if (v42 >= v41 >> 1)
    {
      v40 = sub_100B375A4((v41 > 1), v42 + 1, 1, v40);
      v65 = v40;
    }

    v43 = *(&v60 + 1);
    v44 = v61;
    v45 = sub_10002A948(&v59, *(&v60 + 1));
    v46 = __chkstk_darwin(v45);
    v48 = &v51 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v48, v46);
    sub_100725200(v42, v48, &v65, v43, v44);
    sub_100005070(&v59);
    v65 = v40;
  }

  sub_100005070(&v62);
  return v65;
}