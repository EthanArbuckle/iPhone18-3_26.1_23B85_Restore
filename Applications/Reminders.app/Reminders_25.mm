uint64_t sub_1002ADB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100058000(&qword_100778A88);
  v9 = __chkstk_darwin(v8 - 8);
  v248 = &v232 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v258 = &v232 - v12;
  v13 = __chkstk_darwin(v11);
  v274 = &v232 - v14;
  v15 = __chkstk_darwin(v13);
  v278 = &v232 - v16;
  v17 = __chkstk_darwin(v15);
  v249 = &v232 - v18;
  __chkstk_darwin(v17);
  v259 = &v232 - v19;
  v301 = type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove(0);
  v298 = *(v301 - 8);
  v20 = __chkstk_darwin(v301);
  v269 = &v232 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v268 = &v232 - v23;
  v24 = __chkstk_darwin(v22);
  v292 = &v232 - v25;
  v26 = __chkstk_darwin(v24);
  v291 = &v232 - v27;
  v28 = __chkstk_darwin(v26);
  v272 = &v232 - v29;
  __chkstk_darwin(v28);
  v271 = &v232 - v30;
  v297 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v257 = *(v297 - 8);
  v31 = __chkstk_darwin(v297);
  v267 = &v232 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v290 = &v232 - v34;
  __chkstk_darwin(v33);
  v270 = &v232 - v35;
  v294 = sub_100058000(&qword_100778A90);
  v296 = *(v294 - 8);
  __chkstk_darwin(v294);
  v37 = (&v232 - v36);
  v38 = sub_100058000(&qword_100769F08);
  v39 = __chkstk_darwin(v38 - 8);
  v252 = &v232 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v273 = &v232 - v42;
  v43 = __chkstk_darwin(v41);
  v255 = &v232 - v44;
  v45 = __chkstk_darwin(v43);
  v276 = &v232 - v46;
  __chkstk_darwin(v45);
  v293 = &v232 - v47;
  v300 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v256 = *(v300 - 8);
  v48 = __chkstk_darwin(v300);
  v240 = &v232 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v250 = &v232 - v51;
  v52 = __chkstk_darwin(v50);
  v251 = &v232 - v53;
  v54 = __chkstk_darwin(v52);
  v241 = &v232 - v55;
  v56 = __chkstk_darwin(v54);
  v254 = &v232 - v57;
  v58 = __chkstk_darwin(v56);
  v253 = &v232 - v59;
  __chkstk_darwin(v58);
  v299 = &v232 - v60;
  v242 = sub_100058000(&qword_100778A98);
  v244 = *(v242 - 8);
  __chkstk_darwin(v242);
  v295 = (&v232 - v61);
  v62 = sub_100058000(&qword_100778AA0);
  v247 = *(v62 - 8);
  __chkstk_darwin(v62);
  v64 = (&v232 - v63);
  sub_1002AB7D4(a1, a2);
  sub_1002AB7D4(a3, a4);
  v264 = a1;
  v304 = a1;
  v305 = a2;
  v265 = a2;
  v302 = a3;
  v303 = a4;
  sub_1002B021C(&qword_100778AA8, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  TTRCheapTreeDiff<A>(source:target:sourceChildrenGetter:targetChildrenGetter:contentEqualityChecker:)();

  v65 = v64;
  v66 = *(TTRTreeDiffResult.patch.getter() + 16);

  if (!v66)
  {
    sub_1002B0264();
    swift_allocError();
    *v217 = 0;
    swift_willThrow();
    (*(v247 + 8))(v64, v62);
    return v65;
  }

  v67 = v247;
  v68 = &_swiftEmptyDictionarySingleton;
  v307 = &_swiftEmptyDictionarySingleton;
  v234 = v62;
  v65 = v64;
  v69 = TTRTreeDiffResult.patch.getter();
  v232 = *(v69 + 16);
  v233 = v64;
  if (!v232)
  {
LABEL_101:

    v219 = v235;
    v220 = sub_1002AB0EC(v218);
    if (!v219)
    {
      v65 = v220;
    }

    (*(v67 + 8))(v233, v234);
    swift_bridgeObjectRelease_n();
    return v65;
  }

  v70 = 0;
  v238 = v244 + 16;
  v277 = (v256 + 48);
  v287 = v296 + 16;
  v286 = v296 + 88;
  v285 = enum case for ExtendedPatch.insertion<A>(_:);
  v288 = (v296 + 96);
  v71 = (v256 + 56);
  v266 = enum case for ExtendedPatch.deletion<A>(_:);
  v283 = (v257 + 48);
  v245 = v257 + 56;
  v246 = enum case for ExtendedPatch.move<A>(_:);
  v282 = (v298 + 56);
  v281 = (v298 + 48);
  v237 = (v244 + 8);
  v72 = v242;
  v73 = v294;
  v65 = v295;
  v74 = v293;
  v279 = (v256 + 56);
  v243 = v37;
  v236 = v69;
  while (1)
  {
    if (v70 >= *(v69 + 16))
    {
      goto LABEL_124;
    }

    v75 = v69 + ((*(v244 + 80) + 32) & ~*(v244 + 80));
    v76 = *(v244 + 72);
    v239 = v70;
    (*(v244 + 16))(v65, v75 + v76 * v70, v72);
    TTRTreeDiffResult.ParentAndPatch.parent.getter();
    v275 = *v277;
    if (v275(v74, 1, v300) == 1)
    {

      sub_1000079B4(v74, &qword_100769F08);
      sub_1002B0264();
      swift_allocError();
      *v230 = 1;
      swift_willThrow();
      (*v237)(v65, v72);
      (*(v67 + 8))(v233, v234);
LABEL_110:

      return v65;
    }

    sub_1002B02B8(v74, v299, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    v77 = TTRTreeDiffResult.ParentAndPatch.patch.getter();
    v78 = v77;
    v289 = *(v77 + 16);
    if (v289)
    {
      break;
    }

LABEL_4:
    v70 = v239 + 1;

    sub_1002B0320(v299, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    v72 = v242;
    (*v237)(v65, v242);
    v67 = v247;
    v69 = v236;
    if (v70 == v232)
    {
      goto LABEL_101;
    }
  }

  v79 = 0;
  v284 = v77;
  while (v79 < *(v78 + 16))
  {
    v81 = v296;
    (*(v296 + 16))(v37, v78 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v79, v73);
    v82 = (*(v81 + 88))(v37, v73);
    if (v82 != v285)
    {
      v280 = v79;
      if (v82 != v266)
      {
        if (v82 != v246)
        {
          if (v82 != enum case for ExtendedPatch.update<A>(_:))
          {
            goto LABEL_137;
          }

          (*v288)(v37, v73);
          v223 = sub_100058000(&qword_100778AB8);
          v224 = *(v223 + 48);
          v225 = *(v223 + 64);
          sub_1002B0264();
          swift_allocError();
          *v226 = 4;
          swift_willThrow();
          v65 = type metadata accessor for TTRIGroupMembershipViewModel.Item;
          sub_1002B0320(v299, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          (*v237)(v295, v242);
          (*(v247 + 8))(v233, v234);
          sub_1002B0320(v37 + v225, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          v222 = v37 + v224;
          goto LABEL_109;
        }

        (*v288)(v37, v73);
        v110 = *v37;
        v262 = v37[1];
        v111 = v273;
        sub_1002B0460(v299, v273, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        v112 = *v71;
        v113 = v300;
        (*v71)(v111, 0, 1, v300);
        v114 = v111;
        v115 = v252;
        sub_1002B0380(v114, v252);
        v116 = v275(v115, 1, v113);
        v261 = v110;
        if (v116 == 1)
        {
          sub_1000079B4(v115, &qword_100769F08);
          v117 = sub_1002AB7D4(v264, v265);
          v118 = v251;
          if ((v110 & 0x8000000000000000) != 0)
          {
            goto LABEL_120;
          }

          if (v110 >= v117[2])
          {
            goto LABEL_121;
          }

          sub_1002B0460(v117 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v110, v251, type metadata accessor for TTRIGroupMembershipViewModel.Item);

          sub_1000079B4(v273, &qword_100769F08);
          v119 = *v283;
          v120 = v297;
        }

        else
        {
          v143 = v115;
          v144 = v250;
          sub_1002B02B8(v143, v250, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          v145 = v240;
          sub_1002B0460(v144, v240, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          v119 = *v283;
          v146 = (*v283)(v145, 2, v297);
          if (v146 == 1)
          {
            if ((v110 & 0x8000000000000000) != 0)
            {
              goto LABEL_129;
            }

            v147 = v264;
            if (v110 >= *(v264 + 16))
            {
              goto LABEL_131;
            }
          }

          else
          {
            if (v146 != 2)
            {
              goto LABEL_134;
            }

            v147 = v265;
            if ((v110 & 0x8000000000000000) != 0)
            {
              goto LABEL_130;
            }

            if (v110 >= *(v265 + 16))
            {
              goto LABEL_132;
            }
          }

          v179 = v110;
          v180 = v257;
          v118 = v251;
          sub_1002B0460(v147 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v257 + 72) * v179, v251, type metadata accessor for TTRIGroupMembershipViewModel.List);
          sub_1002B0320(v250, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          sub_1000079B4(v273, &qword_100769F08);
          v181 = *(v180 + 56);
          v120 = v297;
          v181(v118, 0, 2, v297);
        }

        v263 = *(sub_100058000(&qword_100778AC0) + 64);
        if (v119(v118, 2, v120))
        {

          sub_1002B0320(v118, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          sub_1002B0264();
          swift_allocError();
          *v228 = 2;
          swift_willThrow();
          sub_1002B0320(v299, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          (*v237)(v65, v242);
          (*(v247 + 8))(v233, v234);
          v222 = v37 + v263;
          goto LABEL_109;
        }

        sub_1002B02B8(v118, v267, type metadata accessor for TTRIGroupMembershipViewModel.List);
        v182 = TTRListOrCustomSmartListChangeItem.objectID.getter();
        v183 = v68[2];
        v260 = v182;
        if (v183)
        {
          v184 = sub_1002613B0(v182);
          v185 = v248;
          if (v186)
          {
            sub_1002B0460(v68[7] + *(v298 + 72) * v184, v258, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
            v187 = 0;
          }

          else
          {
            v187 = 1;
          }
        }

        else
        {
          v187 = 1;
          v185 = v248;
        }

        v188 = v258;
        v189 = v301;
        (*v282)(v258, v187, 1, v301);
        sub_1002B03F0(v188, v185);
        v190 = (*v281)(v185, 1, v189);
        v191 = v268;
        if (v190 == 1)
        {
          v192 = v300;
          v193 = v112;
          v112(v268, 1, 1, v300);
          v194 = v301;
          v112(v191 + *(v301 + 20), 1, 1, v192);
          v195 = v191 + v194[6];
          *v195 = 0;
          *(v195 + 8) = 1;
          v196 = v191 + v194[7];
          *v196 = 0;
          *(v196 + 8) = 1;
          sub_1000079B4(v185, &qword_100778A88);
          v197 = v71;
        }

        else
        {
          sub_1002B02B8(v185, v268, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
          v192 = v300;
          v194 = v301;
          v197 = v71;
          v193 = v112;
        }

        sub_1000079B4(v191, &qword_100769F08);
        v198 = v299;
        sub_1002B0460(v299, v191, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        v193(v191, 0, 1, v192);
        v199 = v191 + v194[6];
        *v199 = v261;
        *(v199 + 8) = 0;
        v200 = v194[5];
        sub_1000079B4(v191 + v200, &qword_100769F08);
        sub_1002B0460(v198, v191 + v200, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        v193(v191 + v200, 0, 1, v192);
        v201 = v191 + v194[7];
        *v201 = v262;
        *(v201 + 8) = 0;
        swift_beginAccess();
        sub_1002B0460(v191, v269, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v203 = v307;
        v306 = v307;
        v204 = v260;
        v205 = sub_1002613B0(v260);
        v207 = v203[2];
        v208 = (v206 & 1) == 0;
        v130 = __OFADD__(v207, v208);
        v209 = v207 + v208;
        if (v130)
        {
          goto LABEL_117;
        }

        v210 = v206;
        v71 = v197;
        if (v203[3] >= v209)
        {
          v37 = v243;
          v78 = v284;
          v80 = v280;
          v73 = v294;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_90;
          }

          v213 = v205;
          sub_1003AEDF8();
          v205 = v213;
          v68 = v306;
          if ((v210 & 1) == 0)
          {
            goto LABEL_97;
          }

LABEL_91:
          sub_1002B04C8(v269, v68[7] + *(v298 + 72) * v205);
        }

        else
        {
          sub_10054A754(v209, isUniquelyReferenced_nonNull_native);
          v205 = sub_1002613B0(v204);
          v37 = v243;
          v78 = v284;
          v80 = v280;
          v73 = v294;
          if ((v210 & 1) != (v211 & 1))
          {
            goto LABEL_133;
          }

LABEL_90:
          v68 = v306;
          if (v210)
          {
            goto LABEL_91;
          }

LABEL_97:
          v68[(v205 >> 6) + 8] |= 1 << v205;
          *(v68[6] + 8 * v205) = v204;
          sub_1002B02B8(v269, v68[7] + *(v298 + 72) * v205, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
          v214 = v68[2];
          v130 = __OFADD__(v214, 1);
          v215 = v214 + 1;
          if (v130)
          {
            goto LABEL_123;
          }

          v68[2] = v215;
          v216 = v204;
        }

        v307 = v68;
        swift_endAccess();

        sub_1002B0320(v267, type metadata accessor for TTRIGroupMembershipViewModel.List);
        sub_1002B0320(v268, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
        sub_1002B0320(v37 + v263, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        goto LABEL_11;
      }

      (*v288)(v37, v73);
      v91 = *v37;
      v92 = v276;
      sub_1002B0460(v299, v276, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      v93 = *v71;
      v94 = v300;
      (*v71)(v92, 0, 1, v300);
      v95 = v92;
      v96 = v255;
      sub_1002B0380(v95, v255);
      if (v275(v96, 1, v94) == 1)
      {
        sub_1000079B4(v96, &qword_100769F08);
        v97 = sub_1002AB7D4(v264, v265);
        if ((v91 & 0x8000000000000000) != 0)
        {
          goto LABEL_118;
        }

        if (v91 >= v97[2])
        {
          goto LABEL_119;
        }

        v98 = v253;
        sub_1002B0460(v97 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v91, v253, type metadata accessor for TTRIGroupMembershipViewModel.Item);

        sub_1000079B4(v276, &qword_100769F08);
        v99 = (*v283)(v98, 2, v297);
      }

      else
      {
        v137 = v96;
        v138 = v254;
        sub_1002B02B8(v137, v254, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        v139 = v241;
        sub_1002B0460(v138, v241, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        v140 = *v283;
        v141 = (*v283)(v139, 2, v297);
        if (v141 == 1)
        {
          v98 = v253;
          if ((v91 & 0x8000000000000000) != 0)
          {
            goto LABEL_125;
          }

          v142 = v264;
          if (v91 >= *(v264 + 16))
          {
            goto LABEL_127;
          }
        }

        else
        {
          v98 = v253;
          if (v141 != 2)
          {
            goto LABEL_134;
          }

          v142 = v265;
          if ((v91 & 0x8000000000000000) != 0)
          {
            goto LABEL_126;
          }

          if (v91 >= *(v265 + 16))
          {
            goto LABEL_128;
          }
        }

        v148 = v257;
        sub_1002B0460(v142 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v257 + 72) * v91, v98, type metadata accessor for TTRIGroupMembershipViewModel.List);
        sub_1002B0320(v254, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        sub_1000079B4(v276, &qword_100769F08);
        v149 = *(v148 + 56);
        v150 = v297;
        v149(v98, 0, 2, v297);
        v99 = v140(v98, 2, v150);
      }

      if (v99)
      {

        sub_1002B0320(v98, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        sub_1002B0264();
        swift_allocError();
        *v227 = 2;
        swift_willThrow();
        sub_1002B0320(v299, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        (*v237)(v65, v242);
        (*(v247 + 8))(v233, v234);
        goto LABEL_110;
      }

      sub_1002B02B8(v98, v270, type metadata accessor for TTRIGroupMembershipViewModel.List);
      v151 = TTRListOrCustomSmartListChangeItem.objectID.getter();
      v152 = v151;
      if (v68[2])
      {
        v153 = sub_1002613B0(v151);
        v71 = v279;
        if (v154)
        {
          sub_1002B0460(v68[7] + *(v298 + 72) * v153, v259, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
          v155 = 0;
        }

        else
        {
          v155 = 1;
        }

        v156 = v249;
      }

      else
      {
        v155 = 1;
        v156 = v249;
        v71 = v279;
      }

      v157 = v259;
      v158 = v301;
      (*v282)(v259, v155, 1, v301);
      sub_1002B03F0(v157, v156);
      v159 = (*v281)(v156, 1, v158);
      v160 = v271;
      v161 = v300;
      if (v159 == 1)
      {
        v93(v271, 1, 1, v300);
        v162 = v301;
        v93(v160 + *(v301 + 20), 1, 1, v161);
        v163 = v160 + *(v162 + 24);
        *v163 = 0;
        *(v163 + 8) = 1;
        v164 = v160 + *(v162 + 28);
        *v164 = 0;
        *(v164 + 8) = 1;
        sub_1000079B4(v156, &qword_100778A88);
      }

      else
      {
        sub_1002B02B8(v156, v271, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      }

      sub_1000079B4(v160, &qword_100769F08);
      sub_1002B0460(v299, v160, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      v93(v160, 0, 1, v161);
      v165 = v160 + *(v301 + 24);
      *v165 = v91;
      *(v165 + 8) = 0;
      swift_beginAccess();
      sub_1002B0460(v160, v272, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      v166 = swift_isUniquelyReferenced_nonNull_native();
      v167 = v307;
      v306 = v307;
      v169 = sub_1002613B0(v152);
      v170 = v167[2];
      v171 = (v168 & 1) == 0;
      v172 = v170 + v171;
      if (__OFADD__(v170, v171))
      {
        goto LABEL_116;
      }

      v173 = v168;
      if (v167[3] >= v172)
      {
        v78 = v284;
        if (v166)
        {
          v68 = v306;
          if ((v168 & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        else
        {
          sub_1003AEDF8();
          v68 = v306;
          if ((v173 & 1) == 0)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        sub_10054A754(v172, v166);
        v174 = sub_1002613B0(v152);
        v78 = v284;
        if ((v173 & 1) != (v175 & 1))
        {
          goto LABEL_133;
        }

        v169 = v174;
        v68 = v306;
        if ((v173 & 1) == 0)
        {
LABEL_66:
          v68[(v169 >> 6) + 8] |= 1 << v169;
          *(v68[6] + 8 * v169) = v152;
          sub_1002B02B8(v272, v68[7] + *(v298 + 72) * v169, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
          v176 = v68[2];
          v130 = __OFADD__(v176, 1);
          v177 = v176 + 1;
          if (v130)
          {
            goto LABEL_122;
          }

          v68[2] = v177;
          v178 = v152;
          goto LABEL_71;
        }
      }

      sub_1002B04C8(v272, v68[7] + *(v298 + 72) * v169);
LABEL_71:
      v307 = v68;
      swift_endAccess();

      sub_1002B0320(v270, type metadata accessor for TTRIGroupMembershipViewModel.List);
      sub_1002B0320(v271, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      v73 = v294;
      v80 = v280;
      goto LABEL_11;
    }

    v83 = v79;
    (*v288)(v37, v73);
    v84 = *v37;
    v85 = *(sub_100058000(&qword_100778AC8) + 48);
    if ((*v283)(v37 + v85, 2, v297))
    {

      sub_1002B0264();
      swift_allocError();
      *v221 = 3;
      swift_willThrow();
      v65 = type metadata accessor for TTRIGroupMembershipViewModel.Item;
      sub_1002B0320(v299, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      (*v237)(v295, v242);
      (*(v247 + 8))(v233, v234);
      v222 = v37 + v85;
LABEL_109:
      sub_1002B0320(v222, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      goto LABEL_110;
    }

    sub_1002B02B8(v37 + v85, v290, type metadata accessor for TTRIGroupMembershipViewModel.List);
    v86 = TTRListOrCustomSmartListChangeItem.objectID.getter();
    v87 = v86;
    if (v68[2] && (v88 = sub_1002613B0(v86), (v89 & 1) != 0))
    {
      sub_1002B0460(v68[7] + *(v298 + 72) * v88, v278, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v100 = v278;
    v101 = v301;
    (*v282)(v278, v90, 1, v301);
    v102 = v274;
    sub_1002B03F0(v100, v274);
    if ((*v281)(v102, 1, v101) == 1)
    {
      v103 = *v71;
      v104 = v291;
      v105 = v300;
      (*v71)(v291, 1, 1, v300);
      v106 = v301;
      v103(v104 + *(v301 + 20), 1, 1, v105);
      v107 = v104 + *(v106 + 24);
      *v107 = 0;
      *(v107 + 8) = 1;
      v108 = *(v106 + 28);
      v71 = v279;
      v109 = v104 + v108;
      *v109 = 0;
      *(v109 + 8) = 1;
      sub_1000079B4(v102, &qword_100778A88);
    }

    else
    {
      v104 = v291;
      sub_1002B02B8(v102, v291, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      v105 = v300;
    }

    v121 = v301;
    v122 = *(v301 + 20);
    sub_1000079B4(v104 + v122, &qword_100769F08);
    sub_1002B0460(v299, v104 + v122, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    (*v71)(v104 + v122, 0, 1, v105);
    v123 = v104 + *(v121 + 28);
    *v123 = v84;
    *(v123 + 8) = 0;
    swift_beginAccess();
    sub_1002B0460(v104, v292, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v307;
    v306 = v307;
    v126 = sub_1002613B0(v87);
    v128 = v125[2];
    v129 = (v127 & 1) == 0;
    v130 = __OFADD__(v128, v129);
    v131 = v128 + v129;
    v73 = v294;
    if (v130)
    {
      goto LABEL_114;
    }

    v132 = v127;
    if (v125[3] < v131)
    {
      sub_10054A754(v131, v124);
      v126 = sub_1002613B0(v87);
      v78 = v284;
      if ((v132 & 1) != (v133 & 1))
      {
        goto LABEL_133;
      }

LABEL_37:
      v68 = v306;
      if ((v132 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_9;
    }

    v78 = v284;
    if (v124)
    {
      goto LABEL_37;
    }

    v212 = v126;
    sub_1003AEDF8();
    v126 = v212;
    v68 = v306;
    if ((v132 & 1) == 0)
    {
LABEL_38:
      v68[(v126 >> 6) + 8] |= 1 << v126;
      *(v68[6] + 8 * v126) = v87;
      sub_1002B02B8(v292, v68[7] + *(v298 + 72) * v126, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      v134 = v68[2];
      v130 = __OFADD__(v134, 1);
      v135 = v134 + 1;
      if (v130)
      {
        goto LABEL_115;
      }

      v68[2] = v135;
      v136 = v87;
      goto LABEL_10;
    }

LABEL_9:
    sub_1002B04C8(v292, v68[7] + *(v298 + 72) * v126);
LABEL_10:
    v307 = v68;
    swift_endAccess();

    sub_1002B0320(v290, type metadata accessor for TTRIGroupMembershipViewModel.List);
    sub_1002B0320(v291, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
    v80 = v83;
LABEL_11:
    v79 = v80 + 1;
    v65 = v295;
    v74 = v293;
    if (v289 == v79)
    {
      goto LABEL_4;
    }
  }

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
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  sub_100003540(0, &qword_10076BA50);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_134:
  if (qword_100767118 != -1)
  {
    swift_once();
  }

  v231 = type metadata accessor for Logger();
  sub_100003E30(v231, qword_100778A68);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Requested child of list", 23, 2);
  __break(1u);
LABEL_137:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002B0004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1002ADB04(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1002B021C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002B0264()
{
  result = qword_100778AB0;
  if (!qword_100778AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100778AB0);
  }

  return result;
}

uint64_t sub_1002B02B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B0320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002B0380(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100769F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B03F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100778A88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B0460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B04C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B056C(uint64_t a1)
{
  v2 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002B0460(a1, v8, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0x4544554C434E49;
      v11 = 0x800000010067DD40;
      v12 = 0xE700000000000000;
      v13 = 0xD000000000000034;
    }

    else
    {
      v10 = 0x53494C2045524F4DLL;
      v13 = 0xD000000000000038;
      v11 = 0x800000010067DD00;
      v12 = 0xEA00000000005354;
    }

    return TTRLocalizedString(_:comment:)(*&v10, *&v13)._countAndFlagsBits;
  }

  else
  {
    sub_1002B02B8(v8, v5, type metadata accessor for TTRIGroupMembershipViewModel.List);
    v14 = *v5;

    sub_1002B0320(v5, type metadata accessor for TTRIGroupMembershipViewModel.List);
    return v14;
  }
}

void *assignWithCopy for TTRIGroupMembershipViewModel.Diff(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for TTRIGroupMembershipViewModel.Diff(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIGroupMembershipViewModel.Diff(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIGroupMembershipViewModel.Diff(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1002B0874(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t *sub_1002B08B4(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (v9(a2, 1, v7))
    {
      v10 = sub_100058000(&qword_100769F08);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      v12 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(a2, 2, v12))
      {
        memcpy(a1, a2, *(v8 + 64));
      }

      else
      {
        v14 = a2[1];
        *a1 = *a2;
        a1[1] = v14;
        *(a1 + 16) = *(a2 + 16);
        v33 = *(v12 + 24);
        v15 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
        v31 = *(*(v15 - 8) + 16);

        v31(a1 + v33, a2 + v33, v15);
        (*(v13 + 56))(a1, 0, 2, v12);
      }

      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v16 = a3[5];
    v17 = (a1 + v16);
    v18 = (a2 + v16);
    if (v9((a2 + v16), 1, v7))
    {
      v19 = sub_100058000(&qword_100769F08);
      memcpy(v17, v18, *(*(v19 - 8) + 64));
    }

    else
    {
      v20 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v18, 2, v20))
      {
        memcpy(v17, v18, *(v8 + 64));
      }

      else
      {
        v22 = v18[1];
        *v17 = *v18;
        v17[1] = v22;
        *(v17 + 16) = *(v18 + 16);
        v34 = *(v20 + 24);
        v23 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
        v32 = *(*(v23 - 8) + 16);

        v32(v17 + v34, v18 + v34, v23);
        (*(v21 + 56))(v17, 0, 2, v20);
      }

      (*(v8 + 56))(v17, 0, 1, v7);
    }

    v24 = a3[6];
    v25 = a3[7];
    v26 = a1 + v24;
    v27 = a2 + v24;
    *v26 = *v27;
    v26[8] = v27[8];
    v28 = a1 + v25;
    v29 = a2 + v25;
    *v28 = *v29;
    v28[8] = v29[8];
  }

  return a1;
}

uint64_t sub_1002B0CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v5 = *(*(v4 - 8) + 48);
  if (!v5(a1, 1, v4))
  {
    v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    if (!(*(*(v6 - 8) + 48))(a1, 2, v6))
    {

      v7 = *(v6 + 24);
      v8 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v8 - 8) + 8))(a1 + v7, v8);
    }
  }

  v9 = a1 + *(a2 + 20);
  result = (v5)(v9, 1, v4);
  if (!result)
  {
    v11 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    result = (*(*(v11 - 8) + 48))(v9, 2, v11);
    if (!result)
    {

      v12 = *(v11 + 24);
      v13 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v14 = *(*(v13 - 8) + 8);

      return v14(v9 + v12, v13);
    }
  }

  return result;
}

void *sub_1002B0EB8(void *a1, void *a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 1, v6))
  {
    v9 = sub_100058000(&qword_100769F08);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2, 2, v10))
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    else
    {
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;
      *(a1 + 16) = *(a2 + 16);
      v31 = *(v10 + 24);
      v13 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v29 = *(*(v13 - 8) + 16);

      v29(a1 + v31, a2 + v31, v13);
      (*(v11 + 56))(a1, 0, 2, v10);
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v14 = a3[5];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  if (v8((a2 + v14), 1, v6))
  {
    v17 = sub_100058000(&qword_100769F08);
    memcpy(v15, v16, *(*(v17 - 8) + 64));
  }

  else
  {
    v18 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v16, 2, v18))
    {
      memcpy(v15, v16, *(v7 + 64));
    }

    else
    {
      v20 = v16[1];
      *v15 = *v16;
      v15[1] = v20;
      *(v15 + 16) = *(v16 + 16);
      v32 = *(v18 + 24);
      v21 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v30 = *(*(v21 - 8) + 16);

      v30(v15 + v32, v16 + v32, v21);
      (*(v19 + 56))(v15, 0, 2, v18);
    }

    (*(v7 + 56))(v15, 0, 1, v6);
  }

  v22 = a3[6];
  v23 = a3[7];
  v24 = a1 + v22;
  v25 = a2 + v22;
  *v24 = *v25;
  v24[8] = v25[8];
  v26 = a1 + v23;
  v27 = a2 + v23;
  *v26 = *v27;
  v26[8] = v27[8];
  return a1;
}

uint64_t sub_1002B12A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v69 = v7;
      v14 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
      v65 = *(v14 - 8);
      v15 = *(v65 + 48);
      v16 = v15(a1, 2, v14);
      v17 = v15(a2, 2, v14);
      if (v16)
      {
        v7 = v69;
        if (!v17)
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 16) = *(a2 + 16);
          v18 = *(v14 + 24);
          v19 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          v62 = *(*(v19 - 8) + 16);

          v62(a1 + v18, a2 + v18, v19);
          v7 = v69;
          (*(v65 + 56))(a1, 0, 2, v14);
          goto LABEL_14;
        }
      }

      else
      {
        v7 = v69;
        if (!v17)
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);

          *(a1 + 16) = *(a2 + 16);
          v56 = *(v14 + 24);
          v57 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          (*(*(v57 - 8) + 24))(a1 + v56, a2 + v56, v57);
          goto LABEL_14;
        }

        sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.List);
      }

      v13 = *(v7 + 64);
LABEL_8:
      memcpy(a1, a2, v13);
      goto LABEL_14;
    }

    sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.Item);
LABEL_7:
    v13 = *(*(sub_100058000(&qword_100769F08) - 8) + 64);
    goto LABEL_8;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  v68 = v7;
  v11 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2, 2, v11))
  {
    v7 = v68;
    memcpy(a1, a2, *(v68 + 64));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v66 = a3;
    v20 = *(v11 + 24);
    v21 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v63 = *(*(v21 - 8) + 16);

    v22 = a1 + v20;
    v23 = a2 + v20;
    a3 = v66;
    v63(v22, v23, v21);
    (*(v12 + 56))(a1, 0, 2, v11);
    v7 = v68;
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v24 = a3[5];
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = v8(a1 + v24, 1, v6);
  v28 = v8(v26, 1, v6);
  if (!v27)
  {
    if (!v28)
    {
      v33 = a3;
      v34 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
      v71 = *(v34 - 8);
      v35 = *(v71 + 48);
      v36 = v35(v25, 2, v34);
      v37 = v35(v26, 2, v34);
      if (v36)
      {
        if (!v37)
        {
          *v25 = *v26;
          *(v25 + 8) = *(v26 + 8);
          *(v25 + 16) = *(v26 + 16);
          v51 = *(v34 + 24);
          v52 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          v53 = *(*(v52 - 8) + 16);

          v54 = v25 + v51;
          v55 = v26 + v51;
          a3 = v33;
          v53(v54, v55, v52);
          (*(v71 + 56))(v25, 0, 2, v34);
          goto LABEL_27;
        }

        a3 = v33;
        v32 = *(v7 + 64);
      }

      else
      {
        if (!v37)
        {
          *v25 = *v26;
          *(v25 + 8) = *(v26 + 8);

          *(v25 + 16) = *(v26 + 16);
          v58 = *(v34 + 24);
          v59 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          v60 = v25 + v58;
          v61 = v26 + v58;
          a3 = v33;
          (*(*(v59 - 8) + 24))(v60, v61, v59);
          goto LABEL_27;
        }

        a3 = v33;
        sub_1002B0320(v25, type metadata accessor for TTRIGroupMembershipViewModel.List);
        v32 = *(v7 + 64);
      }

      goto LABEL_21;
    }

    sub_1002B0320(v25, type metadata accessor for TTRIGroupMembershipViewModel.Item);
LABEL_20:
    v32 = *(*(sub_100058000(&qword_100769F08) - 8) + 64);
LABEL_21:
    memcpy(v25, v26, v32);
    goto LABEL_27;
  }

  if (v28)
  {
    goto LABEL_20;
  }

  v70 = v7;
  v29 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v26, 2, v29))
  {
    v31 = v70;
    memcpy(v25, v26, *(v70 + 64));
  }

  else
  {
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 16) = *(v26 + 16);
    v67 = a3;
    v38 = *(v29 + 24);
    v39 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v64 = *(*(v39 - 8) + 16);

    v40 = v25 + v38;
    v41 = v26 + v38;
    a3 = v67;
    v64(v40, v41, v39);
    (*(v30 + 56))(v25, 0, 2, v29);
    v31 = v70;
  }

  (*(v31 + 56))(v25, 0, 1, v6);
LABEL_27:
  v42 = a3[6];
  v43 = a1 + v42;
  v44 = (a2 + v42);
  v45 = *v44;
  *(v43 + 8) = *(v44 + 8);
  *v43 = v45;
  v46 = a3[7];
  v47 = a1 + v46;
  v48 = (a2 + v46);
  v49 = *v48;
  *(v47 + 8) = *(v48 + 8);
  *v47 = v49;
  return a1;
}

_BYTE *sub_1002B1AD4(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 1, v6))
  {
    v9 = sub_100058000(&qword_100769F08);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2, 2, v10))
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    else
    {
      *a1 = *a2;
      a1[16] = a2[16];
      v12 = *(v10 + 24);
      v13 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
      (*(v11 + 56))(a1, 0, 2, v10);
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v14 = a3[5];
  v15 = &a1[v14];
  v16 = &a2[v14];
  if (v8(&a2[v14], 1, v6))
  {
    v17 = sub_100058000(&qword_100769F08);
    memcpy(v15, v16, *(*(v17 - 8) + 64));
  }

  else
  {
    v18 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v16, 2, v18))
    {
      memcpy(v15, v16, *(v7 + 64));
    }

    else
    {
      *v15 = *v16;
      v15[16] = v16[16];
      v20 = *(v18 + 24);
      v21 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v21 - 8) + 32))(&v15[v20], &v16[v20], v21);
      (*(v19 + 56))(v15, 0, 2, v18);
    }

    (*(v7 + 56))(v15, 0, 1, v6);
  }

  v22 = a3[6];
  v23 = a3[7];
  v24 = &a1[v22];
  v25 = &a2[v22];
  *v24 = *v25;
  v24[8] = v25[8];
  v26 = &a1[v23];
  v27 = &a2[v23];
  *v26 = *v27;
  v26[8] = v27[8];
  return a1;
}

_BYTE *sub_1002B1E88(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v14 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
      v55 = *(v14 - 8);
      v15 = *(v55 + 48);
      v16 = v15(a1, 2, v14);
      v17 = v15(a2, 2, v14);
      if (v16)
      {
        if (!v17)
        {
          *a1 = *a2;
          a1[16] = a2[16];
          v18 = *(v14 + 24);
          v19 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          (*(*(v19 - 8) + 32))(&a1[v18], &a2[v18], v19);
          (*(v55 + 56))(a1, 0, 2, v14);
          goto LABEL_14;
        }
      }

      else
      {
        if (!v17)
        {
          v49 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v49;

          a1[16] = a2[16];
          v50 = *(v14 + 24);
          v51 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          (*(*(v51 - 8) + 40))(&a1[v50], &a2[v50], v51);
          goto LABEL_14;
        }

        sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.List);
      }

      v13 = *(v7 + 64);
LABEL_8:
      memcpy(a1, a2, v13);
      goto LABEL_14;
    }

    sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.Item);
LABEL_7:
    v13 = *(*(sub_100058000(&qword_100769F08) - 8) + 64);
    goto LABEL_8;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  v11 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2, 2, v11))
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  else
  {
    *a1 = *a2;
    a1[16] = a2[16];
    v20 = *(v11 + 24);
    v21 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    (*(*(v21 - 8) + 32))(&a1[v20], &a2[v20], v21);
    (*(v12 + 56))(a1, 0, 2, v11);
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v22 = a3[5];
  v23 = &a1[v22];
  v24 = &a2[v22];
  v25 = v8(&a1[v22], 1, v6);
  v26 = v8(v24, 1, v6);
  if (!v25)
  {
    if (!v26)
    {
      v30 = v7;
      v31 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
      v56 = *(v31 - 8);
      v32 = *(v56 + 48);
      v33 = v32(v23, 2, v31);
      v34 = v32(v24, 2, v31);
      if (v33)
      {
        if (!v34)
        {
          *v23 = *v24;
          v23[16] = v24[16];
          v35 = *(v31 + 24);
          v36 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          (*(*(v36 - 8) + 32))(&v23[v35], &v24[v35], v36);
          (*(v56 + 56))(v23, 0, 2, v31);
          goto LABEL_27;
        }
      }

      else
      {
        if (!v34)
        {
          v52 = *(v24 + 1);
          *v23 = *v24;
          *(v23 + 1) = v52;

          v23[16] = v24[16];
          v53 = *(v31 + 24);
          v54 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          (*(*(v54 - 8) + 40))(&v23[v53], &v24[v53], v54);
          goto LABEL_27;
        }

        sub_1002B0320(v23, type metadata accessor for TTRIGroupMembershipViewModel.List);
      }

      v29 = *(v30 + 64);
      goto LABEL_21;
    }

    sub_1002B0320(v23, type metadata accessor for TTRIGroupMembershipViewModel.Item);
LABEL_20:
    v29 = *(*(sub_100058000(&qword_100769F08) - 8) + 64);
LABEL_21:
    memcpy(v23, v24, v29);
    goto LABEL_27;
  }

  if (v26)
  {
    goto LABEL_20;
  }

  v27 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v24, 2, v27))
  {
    memcpy(v23, v24, *(v7 + 64));
  }

  else
  {
    *v23 = *v24;
    v23[16] = v24[16];
    v37 = v7;
    v38 = *(v27 + 24);
    v39 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v40 = &v23[v38];
    v41 = &v24[v38];
    v7 = v37;
    (*(*(v39 - 8) + 32))(v40, v41, v39);
    (*(v28 + 56))(v23, 0, 2, v27);
  }

  (*(v7 + 56))(v23, 0, 1, v6);
LABEL_27:
  v42 = a3[6];
  v43 = a3[7];
  v44 = &a1[v42];
  v45 = &a2[v42];
  *v44 = *v45;
  v44[8] = v45[8];
  v46 = &a1[v43];
  v47 = &a2[v43];
  *v46 = *v47;
  v46[8] = v47[8];
  return a1;
}

void sub_1002B261C()
{
  sub_1002B26B4();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1002B26B4()
{
  if (!qword_100778B40)
  {
    type metadata accessor for TTRIGroupMembershipViewModel.Item(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100778B40);
    }
  }
}

uint64_t *sub_1002B270C(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (v9(a2, 2, v7))
    {
      v10 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;
      *(a1 + 16) = *(a2 + 16);
      v13 = *(v7 + 24);
      v14 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v23 = *(*(v14 - 8) + 16);

      v23(a1 + v13, a2 + v13, v14);
      (*(v8 + 56))(a1, 0, 2, v7);
    }

    v15 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v16 = (a1 + v15);
    v17 = (a2 + v15);
    if (v9((a2 + v15), 2, v7))
    {
      v18 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
      memcpy(v16, v17, *(*(v18 - 8) + 64));
    }

    else
    {
      v19 = v17[1];
      *v16 = *v17;
      v16[1] = v19;
      *(v16 + 16) = *(v17 + 16);
      v20 = *(v7 + 24);
      v21 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v24 = *(*(v21 - 8) + 16);

      v24(v16 + v20, v17 + v20, v21);
      (*(v8 + 56))(v16, 0, 2, v7);
    }

    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

uint64_t sub_1002B29BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v5 = *(*(v4 - 8) + 48);
  if (!v5(a1, 2, v4))
  {

    v6 = *(v4 + 24);
    v7 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    (*(*(v7 - 8) + 8))(a1 + v6, v7);
  }

  v8 = a1 + *(a2 + 24);
  result = (v5)(v8, 2, v4);
  if (!result)
  {

    v10 = *(v4 + 24);
    v11 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v12 = *(*(v11 - 8) + 8);

    return v12(v8 + v10, v11);
  }

  return result;
}

void *sub_1002B2B00(void *a1, void *a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 2, v6))
  {
    v9 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    *(a1 + 16) = *(a2 + 16);
    v11 = *(v6 + 24);
    v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v23 = *(*(v12 - 8) + 16);

    v23(a1 + v11, a2 + v11, v12);
    (*(v7 + 56))(a1, 0, 2, v6);
  }

  v13 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  if (v8((a2 + v13), 2, v6))
  {
    v16 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(v14, v15, *(*(v16 - 8) + 64));
  }

  else
  {
    v17 = v15[1];
    *v14 = *v15;
    v14[1] = v17;
    *(v14 + 16) = *(v15 + 16);
    v25 = a3;
    v18 = *(v6 + 24);
    v19 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v24 = *(*(v19 - 8) + 16);

    v20 = v14 + v18;
    v21 = v15 + v18;
    a3 = v25;
    v24(v20, v21, v19);
    (*(v7 + 56))(v14, 0, 2, v6);
  }

  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1002B2D74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      v11 = *(v6 + 24);
      v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v27 = *(*(v12 - 8) + 16);

      v27(a1 + v11, a2 + v11, v12);
      (*(v7 + 56))(a1, 0, 2, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.List);
LABEL_6:
    v13 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(a1, a2, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v23 = *(v6 + 24);
  v24 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v24 - 8) + 24))(a1 + v23, a2 + v23, v24);
LABEL_7:
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v14 = a3[6];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = v8(a1 + v14, 2, v6);
  v18 = v8(v16, 2, v6);
  if (!v17)
  {
    if (!v18)
    {
      *v15 = *v16;
      *(v15 + 8) = *(v16 + 8);

      *(v15 + 16) = *(v16 + 16);
      v25 = *(v6 + 24);
      v26 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v26 - 8) + 24))(v15 + v25, v16 + v25, v26);
      goto LABEL_13;
    }

    sub_1002B0320(v15, type metadata accessor for TTRIGroupMembershipViewModel.List);
    goto LABEL_12;
  }

  if (v18)
  {
LABEL_12:
    v21 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(v15, v16, *(*(v21 - 8) + 64));
    goto LABEL_13;
  }

  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);
  v19 = *(v6 + 24);
  v20 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v28 = *(*(v20 - 8) + 16);

  v28(v15 + v19, v16 + v19, v20);
  (*(v7 + 56))(v15, 0, 2, v6);
LABEL_13:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

_BYTE *sub_1002B315C(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 2, v6))
  {
    v9 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    *a1 = *a2;
    a1[16] = a2[16];
    v10 = *(v6 + 24);
    v11 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
    (*(v7 + 56))(a1, 0, 2, v6);
  }

  v12 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  v13 = &a1[v12];
  v14 = &a2[v12];
  if (v8(&a2[v12], 2, v6))
  {
    v15 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(v13, v14, *(*(v15 - 8) + 64));
  }

  else
  {
    *v13 = *v14;
    v13[16] = v14[16];
    v16 = *(v6 + 24);
    v17 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    (*(*(v17 - 8) + 32))(&v13[v16], &v14[v16], v17);
    (*(v7 + 56))(v13, 0, 2, v6);
  }

  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

uint64_t sub_1002B3390(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      v11 = *(v6 + 24);
      v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
      (*(v7 + 56))(a1, 0, 2, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.List);
LABEL_6:
    v13 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(a1, a2, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  v23 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v23;

  *(a1 + 16) = *(a2 + 16);
  v24 = *(v6 + 24);
  v25 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v25 - 8) + 40))(a1 + v24, a2 + v24, v25);
LABEL_7:
  v14 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = v8(a1 + v14, 2, v6);
  v18 = v8(v16, 2, v6);
  if (!v17)
  {
    if (!v18)
    {
      v26 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v26;

      v15[16] = v16[16];
      v27 = *(v6 + 24);
      v28 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v28 - 8) + 40))(&v15[v27], &v16[v27], v28);
      goto LABEL_13;
    }

    sub_1002B0320(v15, type metadata accessor for TTRIGroupMembershipViewModel.List);
    goto LABEL_12;
  }

  if (v18)
  {
LABEL_12:
    v21 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(v15, v16, *(*(v21 - 8) + 64));
    goto LABEL_13;
  }

  *v15 = *v16;
  v15[16] = v16[16];
  v19 = *(v6 + 24);
  v20 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v20 - 8) + 32))(&v15[v19], &v16[v19], v20);
  (*(v7 + 56))(v15, 0, 2, v6);
LABEL_13:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1002B3724()
{
  result = type metadata accessor for TTRIGroupMembershipViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1002B37C0(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 2, v7))
  {
    v12 = a2[1];
    *a1 = *a2;
    a1[1] = v12;
    *(a1 + 16) = *(a2 + 16);
    v13 = *(v7 + 24);
    v14 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v15 = *(*(v14 - 8) + 16);

    v15(a1 + v13, a2 + v13, v14);
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1002B397C(uint64_t a1)
{
  v2 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  result = (*(*(v2 - 8) + 48))(a1, 2, v2);
  if (!result)
  {

    v4 = *(v2 + 24);
    v5 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v6 = *(*(v5 - 8) + 8);

    return v6(a1 + v4, v5);
  }

  return result;
}

void *sub_1002B3A3C(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    *(a1 + 16) = *(a2 + 16);
    v11 = *(v6 + 24);
    v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v13 = *(*(v12 - 8) + 16);

    v13(a1 + v11, a2 + v11, v12);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *sub_1002B3BBC(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 16) = *(a2 + 16);
      v11 = *(v6 + 24);
      v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v13 = *(*(v12 - 8) + 16);

      v13(a1 + v11, a2 + v11, v12);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      *(a1 + 16) = *(a2 + 16);
      v16 = *(v6 + 24);
      v17 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v17 - 8) + 24))(a1 + v16, a2 + v16, v17);
      return a1;
    }

    sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.List);
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

_BYTE *sub_1002B3DF0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    *a1 = *a2;
    a1[16] = a2[16];
    v10 = *(v6 + 24);
    v11 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

char *sub_1002B3F4C(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      *a1 = *a2;
      a1[16] = a2[16];
      v11 = *(v6 + 24);
      v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v15 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v15;

      a1[16] = a2[16];
      v16 = *(v6 + 24);
      v17 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v17 - 8) + 40))(&a1[v16], &a2[v16], v17);
      return a1;
    }

    sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.List);
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t sub_1002B4178(uint64_t a1)
{
  v2 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t sub_1002B41E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t sub_1002B4250()
{
  result = type metadata accessor for TTRIGroupMembershipViewModel.List(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

char *sub_1002B42C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v5;
    *(a1 + 16) = *(a2 + 16);
    v6 = *(a3 + 24);
    v8 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], a2 + v6, v8);
  }

  return v3;
}

uint64_t sub_1002B43B0(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_1002B4424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t sub_1002B44C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t sub_1002B455C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_1002B45DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1002B4690()
{
  result = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1002B480C()
{
  result = qword_100778D40;
  if (!qword_100778D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100778D40);
  }

  return result;
}

uint64_t sub_1002B4870@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  __chkstk_darwin(v1);
  v49 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v10 - 8);
  v44 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppIntentsDependencyKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v32 - v17;
  v19 = sub_100058000(&qword_100778DC8);
  v20 = *(v19 - 8);
  v46 = v19;
  v47 = v20;
  __chkstk_darwin(v19);
  v45 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v43 = v32 - v23;
  v37 = sub_100058000(&qword_100767540);
  v42 = enum case for AppIntentsDependencyKey.remStore(_:);
  v41 = v13[13];
  v41(v18);
  v40 = v13[2];
  v35 = v15;
  v40(v15, v18, v12);
  v39 = sub_1002B5E0C(&qword_100767548, &type metadata accessor for AppIntentsDependencyKey);
  AnyHashable.init<A>(_:)();
  v38 = v13[1];
  v38(v18, v12);
  v36 = type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v24 = AppDependency.__allocating_init(key:manager:)();
  v52 = 1;
  v53 = v24;
  v32[0] = v9;
  String.LocalizationValue.init(stringLiteral:)();
  v32[1] = v6;
  static Locale.current.getter();
  v33 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v25 = *(v51 + 104);
  v51 += 104;
  v34 = v25;
  v25(v49);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1002B5E54();
  v26 = v43;
  AppShortcutOptionsCollection.init(_:title:systemImageName:)();
  (v41)(v18, v42, v12);
  v40(v35, v18, v12);
  AnyHashable.init<A>(_:)();
  v38(v18, v12);
  static AppDependencyManager.shared.getter();
  v27 = AppDependency.__allocating_init(key:manager:)();
  v52 = 2;
  v53 = v27;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34(v49, v33, v50);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v28 = v45;
  AppShortcutOptionsCollection.init(_:title:systemImageName:)();
  type metadata accessor for AnyListEntity();
  sub_1002B5E0C(&qword_100778DB8, type metadata accessor for AnyListEntity);
  sub_1002B5DA8();
  v29 = v46;
  static AppShortcutOptionsCollectionSpecificationBuilder.buildBlock<A, B>(_:_:)();
  v30 = *(v47 + 8);
  v30(v28, v29);
  return (v30)(v26, v29);
}

uint64_t sub_1002B4F78()
{
  v0 = sub_100058000(&qword_100778D50);
  __chkstk_darwin(v0 - 8);
  v72 = &v56 - v1;
  v70 = sub_100058000(&qword_100778D58);
  __chkstk_darwin(v70);
  v69 = &v56 - v2;
  v3 = sub_100058000(&qword_100778D60);
  __chkstk_darwin(v3 - 8);
  v71 = &v56 - v4;
  v5 = sub_100058000(&qword_100778D68);
  __chkstk_darwin(v5 - 8);
  v73 = &v56 - v6;
  v67 = sub_100058000(&qword_100778D70);
  __chkstk_darwin(v67);
  v66 = &v56 - v7;
  v80 = type metadata accessor for LocalizedStringResource.BundleDescription();
  KeyPath = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v77 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v76 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v13 - 8);
  v82 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppShortcutPhraseToken();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100058000(&qword_100778D78);
  __chkstk_darwin(v19);
  v64 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v81 = type metadata accessor for AppShortcut();
  v84 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_100778D80);
  v23 = *(sub_100058000(&qword_100778D88) - 8);
  v58 = *(v23 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v68 = xmmword_10062D3F0;
  v65 = v25;
  *(v25 + 16) = xmmword_10062D3F0;
  v74 = v25 + v24;
  sub_1002B5D00();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0xD00000000000001ALL;
  v26._object = 0x800000010067DD80;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v16;
  v28 = v16 + 104;
  v29 = *(v16 + 104);
  v56 = v18;
  v30 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v63 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v75 = v15;
  v29(v18);
  v60 = v28;
  v62 = v29;
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v31 = *(v27 + 8);
  v31(v18, v15);
  v59 = v31;
  v61 = v27 + 8;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v32);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._object = 0x800000010067DDA0;
  v33._countAndFlagsBits = 0xD000000000000019;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v33);
  v34 = v56;
  v35 = v75;
  (v29)(v56, v30, v75);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v31(v34, v35);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v36);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v57 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v37 = *(KeyPath + 104);
  KeyPath += 104;
  v58 = v37;
  v37(v78);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v38 = v79;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v74 = static AppShortcutsBuilder.buildExpression(_:)();
  v39 = *(v84 + 8);
  v84 += 8;
  v65 = v39;
  v39(v38, v81);
  v91 = _s9Reminders20OpenAnyListAppIntentVACycfC_0();
  sub_100058000(&qword_100778D98);
  sub_100058000(&qword_100778DA0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10062D400;
  v64 = v40;
  sub_1002B5D54();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v41._countAndFlagsBits = 0x206E65704FLL;
  v41._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v41);
  swift_getKeyPath();
  sub_100058000(&qword_100778DB0);
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v42._countAndFlagsBits = 544106784;
  v42._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v42);
  v43 = v75;
  (v62)(v34, v63, v75);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v59(v34, v43);
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v44);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v58(v78, v57, v80);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  KeyPath = swift_getKeyPath();
  v45 = type metadata accessor for AnyListEntity();
  sub_100058000(&qword_100767530);
  v46 = sub_1002B5E0C(&qword_100778DB8, type metadata accessor for AnyListEntity);
  AppShortcutParameterPresentationSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v47._countAndFlagsBits = 0x206E65704FLL;
  v47._object = 0xE500000000000000;
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendLiteral(_:)(v47);
  swift_getKeyPath();
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendInterpolation(_:)();

  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendLiteral(_:)(v48);
  AppShortcutParameterPresentationSummaryString.init(stringInterpolation:)();
  AppShortcutParameterPresentationSummary.init(_:table:)();
  sub_100058000(&qword_100778DC0);
  v49 = sub_10005D20C(&qword_100778DC8);
  v50 = sub_1002B5DA8();
  v85 = v45;
  v86 = v49;
  v87 = v49;
  v88 = v46;
  v89 = v50;
  v90 = v50;
  swift_getOpaqueTypeConformance2();
  AppShortcutParameterPresentation.init<A>(for:summary:optionsCollections:)();
  v51 = v79;
  AppShortcut.init<A, B, C, D>(intent:phrases:shortTitle:systemImageName:parameterPresentation:)();
  v52 = static AppShortcutsBuilder.buildExpression(_:)();
  v65(v51, v81);
  sub_100058000(&qword_100778DD8);
  v53 = swift_allocObject();
  *(v53 + 16) = v68;
  *(v53 + 32) = v74;
  *(v53 + 40) = v52;
  v54 = static AppShortcutsBuilder.buildBlock(_:)();

  return v54;
}

unint64_t sub_1002B5D00()
{
  result = qword_100778D90;
  if (!qword_100778D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100778D90);
  }

  return result;
}

unint64_t sub_1002B5D54()
{
  result = qword_100778DA8;
  if (!qword_100778DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100778DA8);
  }

  return result;
}

unint64_t sub_1002B5DA8()
{
  result = qword_100778DD0;
  if (!qword_100778DD0)
  {
    sub_10005D20C(&qword_100778DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100778DD0);
  }

  return result;
}

uint64_t sub_1002B5E0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002B5E54()
{
  result = qword_100778DE0;
  if (!qword_100778DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100778DE0);
  }

  return result;
}

uint64_t sub_1002B5EA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&unk_100772740);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v10, v3);
  TTRLazilyLoadedViewModelState.viewModel.getter();
  (*(v4 + 8))(v6, v3);
  v11 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    result = sub_1000079B4(v9, &qword_100772738);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v11;
    *(a1 + 32) = &protocol witness table for TTRRemindersListViewModel.Reminder;
    v14 = sub_1000317B8(a1);
    return (*(v12 + 32))(v14, v9, v11);
  }

  return result;
}

uint64_t sub_1002B60C8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100778DE8);
  v1 = sub_100003E30(v0, qword_100778DE8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1002B6190(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell____lazy_storage___timeZoneMultipleDayEncapsulationProvider] = 0;
  v10 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  v11 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = enum case for TTRLazilyLoadedViewModelState.invalid<A>(_:);
  v13 = sub_100058000(&unk_100772740);
  (*(*(v13 - 8) + 104))(&v4[v10], v12, v13);
  static TTRRectCorners.allCorners.getter();
  v4[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_isPonderingTextEffectVisible] = 0;
  v14 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_titleModule;
  v15 = sub_100058000(&qword_10078A3B0);
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_notesModule;
  v17 = sub_100058000(&qword_100778EA0);
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_autoCompleteModule;
  v19 = sub_100058000(&qword_100778EB0);
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  *&v4[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_customAccessibilityElement] = 0;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  sub_1002C56EC(&qword_100778EF0, type metadata accessor for TTRIBoardReminderCell);
  v21 = v20;
  TTRIRemindersListReminderCellAccessibilityElementContaining.ttriCreateReminderAccessibilityElement()();
  sub_1002B6458();

  return v21;
}

uint64_t sub_1002B6458()
{
  v1 = sub_100058000(&qword_10076C030);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100778FF0);
  swift_allocObject();
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver) = TTRViewModelObserver.init(didReceiveNewValue:)();

  sub_1002B7A54();
  static UIBackgroundConfiguration.clear()();
  UIBackgroundConfiguration.cornerRadius.setter();
  v8 = [objc_opt_self() tintColor];
  UIBackgroundConfiguration.strokeColor.setter();
  (*(v5 + 16))(v3, v7, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (*(v5 + 8))(v7, v4);
}

id sub_1002B669C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell____lazy_storage___timeZoneMultipleDayEncapsulationProvider] = 0;
  v5 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  v6 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v7 = enum case for TTRLazilyLoadedViewModelState.invalid<A>(_:);
  v8 = sub_100058000(&unk_100772740);
  (*(*(v8 - 8) + 104))(&v2[v5], v7, v8);
  static TTRRectCorners.allCorners.getter();
  v2[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_isPonderingTextEffectVisible] = 0;
  v9 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_titleModule;
  v10 = sub_100058000(&qword_10078A3B0);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_notesModule;
  v12 = sub_100058000(&qword_100778EA0);
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_autoCompleteModule;
  v14 = sub_100058000(&qword_100778EB0);
  (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
  *&v2[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_customAccessibilityElement] = 0;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, "initWithCoder:", a1);
  if (v15)
  {
    sub_1002C56EC(&qword_100778EF0, type metadata accessor for TTRIBoardReminderCell);
    v16 = v15;
    TTRIRemindersListReminderCellAccessibilityElementContaining.ttriCreateReminderAccessibilityElement()();
    sub_1002B6458();
  }

  return v15;
}

uint64_t sub_1002B6978(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UICellConfigurationState.DropState();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076C030);
  __chkstk_darwin(v6 - 8);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for UIBackgroundConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionViewCell.backgroundConfiguration.getter();
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    static UIBackgroundConfiguration.clear()();
    if (v15(v10, 1, v11) != 1)
    {
      sub_1000079B4(v10, &qword_10076C030);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  v16 = UIBackgroundConfiguration.customView.getter();
  if (v16)
  {
    v17 = v16;
    type metadata accessor for TTRIBoardReminderCellBackgroundStrokeView();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      goto LABEL_11;
    }
  }

  type metadata accessor for TTRIBoardReminderCellBackgroundStrokeView();
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v18 setAutoresizingMask:18];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:1];
  v19 = [objc_opt_self() tintColor];
  v20 = *&v18[OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeColor];
  *&v18[OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeColor] = v19;
  sub_100003540(0, &qword_100772610);
  v21 = v19;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    [v18 setNeedsLayout];
  }

  UIBackgroundConfiguration.customView.setter();
LABEL_11:
  v22 = UICellConfigurationState.isHighlighted.getter();
  v23 = 1.5;
  if ((v22 & 1) == 0)
  {
    v24 = UICellConfigurationState.isSelected.getter();
    v23 = 0.0;
    if (v24)
    {
      v23 = 1.5;
    }
  }

  v25 = *&v18[OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeWidth];
  *&v18[OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeWidth] = v23;
  if (v23 != v25)
  {
    [v18 setNeedsLayout];
  }

  v26 = [v2 traitCollection];
  v27 = UITraitCollection.modifyingTraits(_:)();

  v28 = objc_opt_self();
  v29 = [v28 secondarySystemBackgroundColor];
  v30 = [v29 resolvedColorWithTraitCollection:v27];

  UICellConfigurationState.cellDropState.getter();
  v31 = (*(v45 + 88))(v5, v46);
  if (v31 == enum case for UICellConfigurationState.DropState.none(_:) || v31 == enum case for UICellConfigurationState.DropState.notTargeted(_:))
  {
    v32 = v30;
  }

  else if (v31 == enum case for UICellConfigurationState.DropState.targeted(_:))
  {
    v32 = [v28 systemFillColor];
  }

  else
  {
    v42 = v14;
    v33 = *(v45 + 8);
    v32 = v30;
    v33(v5, v46);
    v14 = v42;
  }

  if (UICellConfigurationState.isFocused.getter())
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    v35 = objc_allocWithZone(UIColor);
    aBlock[4] = sub_1002C5734;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002C4478;
    aBlock[3] = &unk_10071E630;
    v36 = _Block_copy(aBlock);
    v37 = v32;
    [v35 initWithDynamicProvider:v36];
    _Block_release(v36);
  }

  else
  {
    v38 = v32;
  }

  UIBackgroundConfiguration.backgroundColor.setter();
  v39 = v43;
  (*(v12 + 16))(v43, v14, v11);
  (*(v12 + 56))(v39, 0, 1, v11);
  UICollectionViewCell.backgroundConfiguration.setter();
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v49.receiver = v2;
  v49.super_class = ObjectType;
  objc_msgSendSuper2(&v49, "_bridgedUpdateConfigurationUsingState:", isa);

  return (*(v12 + 8))(v14, v11);
}

void sub_1002B7044(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() tintColor];
  v5 = [v4 resolvedColorWithTraitCollection:a1];

  v6 = [v5 colorWithAlphaComponent:0.15];
  v7 = [a2 resolvedColorWithTraitCollection:a1];
  v8 = [v7 _colorBlendedWithColor:v6];

  if (v8)
  {
  }

  else
  {
    __break(1u);
  }
}

double sub_1002B7578(double a1, double a2, float a3, float a4)
{
  type metadata accessor for UILayoutPriority(0);
  sub_1002C56EC(&qword_100778FE8, type metadata accessor for UILayoutPriority);
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {
    a1 = 0.0;
  }

  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {
    a2 = 0.0;
  }

  v9 = [v4 contentView];
  *&v10 = a3;
  *&v11 = a4;
  [v9 systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:a2 verticalFittingPriority:{v10, v11}];
  v13 = v12;

  return v13;
}

uint64_t sub_1002B7904()
{
  v1 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell____lazy_storage___timeZoneMultipleDayEncapsulationProvider;
  if (*(v0 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell____lazy_storage___timeZoneMultipleDayEncapsulationProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell____lazy_storage___timeZoneMultipleDayEncapsulationProvider);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TTRTimeZoneDayStringTextEncapsulationProvider();
    swift_allocObject();
    v2 = TTRTimeZoneDayStringTextEncapsulationProvider.init(font:textColor:)();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1002B7988()
{
  type metadata accessor for TTRCounterBasedIdentifierGenerator();
  result = TTRCounterBasedIdentifierGenerator.__allocating_init()();
  qword_100778E00 = result;
  return result;
}

void sub_1002B79BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    sub_100058000(&unk_100772740);
    TTRLazilyLoadedViewModelState.transitionToOutdated()();
    swift_endAccess();
    sub_1002B7A54();
  }
}

uint64_t sub_1002B7A54()
{
  v120 = sub_100058000(&qword_100778EB0);
  v124 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v117 - v1;
  v2 = sub_100058000(&qword_100778F00);
  __chkstk_darwin(v2 - 8);
  v119 = &v117 - v3;
  v123 = sub_100058000(&qword_100778EA0);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v118 = &v117 - v4;
  v5 = sub_100058000(&unk_100781940);
  __chkstk_darwin(v5 - 8);
  v121 = &v117 - v6;
  v7 = sub_100058000(&qword_100781950);
  __chkstk_darwin(v7 - 8);
  v129 = &v117 - v8;
  v131 = sub_100058000(&qword_10078A3B0);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v125 = &v117 - v9;
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v128 = &v117 - v11;
  v133 = type metadata accessor for TTRRemindersListViewModel.Item();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v142 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v13 - 8);
  v137 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v127 = &v117 - v16;
  v17 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v18 = *(v17 - 8);
  v143 = v17;
  v144 = v18;
  __chkstk_darwin(v17);
  v138 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v126 = &v117 - v21;
  v22 = sub_100058000(&unk_100772740);
  v139 = *(v22 - 8);
  __chkstk_darwin(v22);
  v136 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v117 - v25;
  v27 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v134 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v117 - v31;
  v33 = sub_100058000(&qword_100772730);
  __chkstk_darwin(v33 - 8);
  v35 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v117 - v37;
  __chkstk_darwin(v39);
  v41 = &v117 - v40;
  __chkstk_darwin(v42);
  v44 = &v117 - v43;
  v146 = v0;
  if (!*&v0[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver])
  {
    __break(1u);
    goto LABEL_56;
  }

  TTRViewModelObserver.localValue.getter();

  v145 = v44;
  sub_10000794C(v44, v41, &qword_100772730);
  v141 = *(v28 + 48);
  v45 = v141(v41, 1, v27);
  v140 = v28;
  if (v45 == 1)
  {
    sub_1000079B4(v41, &qword_100772730);
LABEL_6:
    v47 = 0;
    goto LABEL_7;
  }

  (*(v28 + 32))(v32, v41, v27);
  v46 = TTRBoardColumnItemIntermediateViewModel.isTargetOfContextualPresentation.getter();
  (*(v28 + 8))(v32, v27);
  if ((v46 & 1) == 0)
  {
    goto LABEL_6;
  }

  v47 = 1;
LABEL_7:
  v48 = v139;
  v49 = v146;
  [v146 setTintAdjustmentMode:v47];
  v50 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  swift_beginAccess();
  v135 = *(v48 + 16);
  v135(v26, &v49[v50], v22);
  v51 = (*(v48 + 88))(v26, v22);
  if (v51 == enum case for TTRLazilyLoadedViewModelState.valid<A>(_:))
  {
    (*(v48 + 96))(v26, v22);
    v52 = v26[*(sub_100058000(&qword_100778F28) + 48)];
    (*(v144 + 8))(v26, v143);
    if (v52)
    {
      LODWORD(v134) = 0;
      v53 = v146;
      goto LABEL_19;
    }

LABEL_13:
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10000794C(v145, v38, &qword_100772730);
      if (v141(v38, 1, v27) == 1)
      {
        swift_unknownObjectRelease();
        sub_1000079B4(v38, &qword_100772730);
      }

      else
      {
        (*(v140 + 32))(v134, v38, v27);
        v54 = v127;
        sub_1001CBE40(v127);
        v55 = v54;
        v56 = v144;
        v57 = v54;
        v58 = v143;
        if ((*(v144 + 48))(v57, 1, v143) != 1)
        {
          (*(v56 + 32))(v126, v55, v58);
          swift_beginAccess();
          v89 = v126;
          TTRLazilyLoadedViewModelState.transitionToValid(with:)();
          swift_endAccess();
          swift_unknownObjectRelease();
          (*(v144 + 8))(v89, v58);
          v59 = v140;
          (*(v140 + 8))(v134, v27);
          LODWORD(v134) = 1;
          v53 = v146;
          v48 = v139;
LABEL_20:
          sub_10000794C(v145, v35, &qword_100772730);
          v60 = v141(v35, 1, v27);
          v61 = v142;
          if (v60 == 1)
          {
            sub_1000079B4(v35, &qword_100772730);
          }

          else
          {
            v62 = v59;
            v63 = TTRBoardColumnItemIntermediateViewModel.isPonderingTextEffectVisible.getter() & 1;
            (*(v62 + 8))(v35, v27);
            if (v63 != v53[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_isPonderingTextEffectVisible])
            {
              v53[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_isPonderingTextEffectVisible] = v63;
              v64 = 1;
              goto LABEL_25;
            }
          }

          v64 = 0;
LABEL_25:
          v65 = v145;
          v66 = v137;
          v67 = v136;
          v135(v136, &v53[v50], v22);
          TTRLazilyLoadedViewModelState.viewModel.getter();
          (*(v48 + 8))(v67, v22);
          v68 = v143;
          v69 = v144;
          if ((*(v144 + 48))(v66, 1, v143) == 1)
          {
            sub_1000079B4(v66, &qword_100772738);
            v150 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
            v151 = sub_1002C56EC(&qword_100778F08, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
            v70 = sub_1000317B8(&v149);
            sub_1005A333C(v70);
            UICollectionViewCell.contentConfiguration.setter();
LABEL_54:
            sub_1002BC2B8();
            return sub_1000079B4(v65, &qword_100772730);
          }

          (*(v69 + 32))(v138, v66, v68);
          TTRRemindersListViewModel.Reminder.item.getter();
          v71 = v134;
          v72 = v134 | v64;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v74 = Strong;
            v75 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_titleModule;
            swift_beginAccess();
            v76 = v130;
            v77 = v131;
            v140 = *(v130 + 48);
            v78 = (v140)(&v53[v75], 1, v131);
            v141 = v74;
            if (v78)
            {
              v79 = v128;
              (*(v132 + 56))(v128, 1, 1, v133);
            }

            else
            {
              v80 = v125;
              (*(v76 + 16))(v125, &v53[v75], v77);
              TTRRemindersListInCellModule.interface.getter();
              (*(v76 + 8))(v80, v77);
              swift_getObjectType();
              v79 = v128;
              v65 = v145;
              TTRIReminderCellTitleModuleInterface.item.getter();
              swift_unknownObjectRelease();
            }

            v81 = v129;
            v82 = swift_unknownObjectWeakLoadStrong();
            if (v82)
            {
              v83 = *(v82 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
              v84 = *(v82 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
              sub_10000C36C((v82 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v83);
              v85 = (*(*(v84 + 8) + 312))(v142, v79, v83);
              swift_unknownObjectRelease();
              sub_1000079B4(v79, &qword_100772140);
              if (v85)
              {
                v86 = v141;
                v87 = swift_unknownObjectWeakLoadStrong();
                v69 = v144;
                v65 = v145;
                if (v87)
                {
                  sub_10048112C(v86, v142);
                  swift_unknownObjectRelease();
                  v88 = 0;
                }

                else
                {
                  v88 = 1;
                }

                v90 = v131;
                v91 = v130;
                (*(v130 + 56))(v81, v88, 1, v131);
                v92 = v146;
                swift_beginAccess();
                sub_10000D184(v81, &v92[v75], &qword_100781950);
                swift_endAccess();
                if (!(v140)(&v92[v75], 1, v90))
                {
                  v93 = v125;
                  (*(v91 + 16))(v125, &v146[v75], v90);
                  TTRRemindersListInCellModule.interface.getter();
                  (*(v91 + 8))(v93, v90);
                  swift_getObjectType();
                  sub_1002C56EC(&qword_100778F20, type metadata accessor for TTRIBoardReminderCell);
                  swift_unknownObjectRetain();
                  v69 = v144;
                  v65 = v145;
                  dispatch thunk of TTRIReminderCellTitleModuleInterface.hostCell.setter();
                  swift_unknownObjectRelease();
                }

                v94 = v141;
                v95 = swift_unknownObjectWeakLoadStrong();
                v96 = v124;
                v97 = v123;
                v98 = v122;
                v99 = v121;
                v61 = v142;
                if (v95)
                {
                  sub_100481230(v94, v142);
                  swift_unknownObjectRelease();
                  v100 = 0;
                }

                else
                {
                  v100 = 1;
                }

                v101 = v146;
                (*(v98 + 56))(v99, v100, 1, v97);
                v102 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_notesModule;
                swift_beginAccess();
                sub_10000D184(v99, &v101[v102], &unk_100781940);
                swift_endAccess();
                if (!(*(v98 + 48))(&v101[v102], 1, v97))
                {
                  v103 = v118;
                  (*(v98 + 16))(v118, &v101[v102], v97);
                  TTRRemindersListInCellModule.interface.getter();
                  (*(v98 + 8))(v103, v97);
                  swift_getObjectType();
                  sub_1002C56EC(&qword_100778F18, type metadata accessor for TTRIBoardReminderCell);
                  swift_unknownObjectRetain();
                  v69 = v144;
                  v65 = v145;
                  dispatch thunk of TTRIReminderCellNotesModuleInterface.hostCell.setter();
                  swift_unknownObjectRelease();
                }

                v104 = sub_1002E8CAC(v61);
                if (v104)
                {
                  v107 = v104;
                  v147 = v105;
                  v148 = v106;
                  v150 = type metadata accessor for TTRIReminderCellAutoCompleteViewController();
                  v149 = v107;
                  swift_unknownObjectRetain();
                  v108 = v107;
                  sub_100058000(&qword_100778F10);
                  v109 = v119;
                  TTRRemindersListInCellModule.init(interface:controller:)();
                  v110 = v120;
                  (*(v96 + 56))(v109, 0, 1, v120);
                  v111 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_autoCompleteModule;
                  swift_beginAccess();
                  sub_10000D184(v109, &v101[v111], &qword_100778F00);
                  swift_endAccess();
                  if ((*(v96 + 48))(&v101[v111], 1, v110))
                  {
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v112 = v117;
                    (*(v96 + 16))(v117, &v101[v111], v110);
                    TTRRemindersListInCellModule.interface.getter();
                    swift_unknownObjectRelease();

                    swift_unknownObjectRelease();
                    v113 = v112;
                    v69 = v144;
                    (*(v96 + 8))(v113, v110);
                    v149[5] = &off_10071E350;
                    swift_unknownObjectWeakAssign();
                  }

                  swift_unknownObjectRelease();
                  v71 = 1;
                  v72 = 1;
                  v68 = v143;
                  v65 = v145;
                }

                else
                {
                  swift_unknownObjectRelease();
                  v71 = 1;
                  v72 = 1;
                  v68 = v143;
                }

                goto LABEL_53;
              }

              swift_unknownObjectRelease();
              v65 = v145;
              v68 = v143;
              v69 = v144;
            }

            else
            {
              swift_unknownObjectRelease();
              sub_1000079B4(v79, &qword_100772140);
            }

            v61 = v142;
            v71 = v134;
          }

LABEL_53:
          v150 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
          v151 = sub_1002C56EC(&qword_100778F08, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
          v114 = sub_1000317B8(&v149);
          v115 = v138;
          sub_1002B8F48(v138, v72, v71, v65, v114);
          UICollectionViewCell.contentConfiguration.setter();
          (*(v132 + 8))(v61, v133);
          (*(v69 + 8))(v115, v68);
          goto LABEL_54;
        }

        (*(v140 + 8))(v134, v27);
        swift_unknownObjectRelease();
        sub_1000079B4(v55, &qword_100772738);
        v48 = v139;
      }
    }

    v53 = v146;
    swift_beginAccess();
    TTRLazilyLoadedViewModelState.transitionToNone()();
    swift_endAccess();
    LODWORD(v134) = 1;
LABEL_19:
    v59 = v140;
    goto LABEL_20;
  }

  if (v51 == enum case for TTRLazilyLoadedViewModelState.invalid<A>(_:))
  {
    (*(v48 + 8))(v26, v22);
    goto LABEL_13;
  }

  if (v51 == enum case for TTRLazilyLoadedViewModelState.none<A>(_:))
  {
    goto LABEL_13;
  }

LABEL_56:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002B8F48@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v410 = a4;
  v355 = a3;
  v341 = a2;
  v401 = a1;
  v6 = sub_100058000(&qword_100778F00);
  __chkstk_darwin(v6 - 8);
  v389 = &v304 - v7;
  v387 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel();
  __chkstk_darwin(v387);
  v388 = &v304 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100778F30);
  __chkstk_darwin(v9 - 8);
  v385 = &v304 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v386 = &v304 - v12;
  v317 = type metadata accessor for TTRReminderCellStyle.Role();
  v316 = *(v317 - 8);
  __chkstk_darwin(v317);
  v315 = &v304 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v314 = &v304 - v15;
  v384 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  v383 = *(v384 - 8);
  __chkstk_darwin(v384);
  v382 = &v304 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = sub_100058000(&qword_100776378);
  __chkstk_darwin(v305);
  v377 = &v304 - v17;
  v380 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  v379 = *(v380 - 8);
  __chkstk_darwin(v380);
  v378 = &v304 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  v375 = *(v376 - 8);
  __chkstk_darwin(v376);
  v374 = &v304 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v393 = type metadata accessor for TTRReminderCellStyle();
  v395 = *(v393 - 8);
  __chkstk_darwin(v393);
  v381 = &v304 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v368 = &v304 - v22;
  v23 = sub_100058000(&qword_100778F38);
  __chkstk_darwin(v23 - 8);
  v392 = &v304 - v24;
  v373 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  v372 = *(v373 - 8);
  __chkstk_darwin(v373);
  v371 = &v304 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v366 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  v365 = *(v366 - 1);
  __chkstk_darwin(v366);
  v364 = &v304 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100058000(&qword_100778EE0);
  __chkstk_darwin(v27 - 8);
  v362 = &v304 - v28;
  v363 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  v361 = *(v363 - 8);
  __chkstk_darwin(v363);
  v359 = &v304 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  v357 = *(v358 - 8);
  __chkstk_darwin(v358);
  v356 = &v304 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100058000(&qword_100778EE8);
  __chkstk_darwin(v31 - 8);
  v352 = &v304 - v32;
  v354 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  v353 = *(v354 - 8);
  __chkstk_darwin(v354);
  v351 = &v304 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100058000(&qword_100778F40);
  __chkstk_darwin(v34 - 8);
  v346 = &v304 - v35;
  v344 = type metadata accessor for TTRReminderDetailViewModel.FlaggedState();
  v342 = *(v344 - 8);
  __chkstk_darwin(v344);
  v340 = &v304 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  v338 = *(v339 - 8);
  __chkstk_darwin(v339);
  v337 = &v304 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = sub_100058000(&qword_100778F48);
  v335 = *(v336 - 8);
  __chkstk_darwin(v336);
  v334 = &v304 - v38;
  v39 = sub_100058000(&qword_100781950);
  __chkstk_darwin(v39 - 8);
  v333 = &v304 - v40;
  v394 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v399 = *(v394 - 8);
  __chkstk_darwin(v394);
  v370 = &v304 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v349 = &v304 - v43;
  v391 = v44;
  __chkstk_darwin(v45);
  v325 = &v304 - v46;
  v310 = type metadata accessor for TTRReminderCellTitleViewModel();
  v313 = *(v310 - 8);
  __chkstk_darwin(v310);
  v312 = &v304 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_100058000(&qword_100778F50);
  v331 = *(v332 - 8);
  __chkstk_darwin(v332);
  v328 = &v304 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v329 = &v304 - v50;
  v330 = sub_100058000(&qword_100778F58);
  v327 = *(v330 - 8);
  __chkstk_darwin(v330);
  v326 = &v304 - v51;
  v405 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel.ItemLevel();
  v398 = *(v405 - 8);
  __chkstk_darwin(v405);
  v306 = &v304 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100058000(&qword_100778F60);
  __chkstk_darwin(v53);
  v55 = &v304 - v54;
  v304 = sub_100058000(&qword_100778F68);
  __chkstk_darwin(v304);
  v360 = &v304 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v347 = &v304 - v58;
  __chkstk_darwin(v59);
  v350 = &v304 - v60;
  __chkstk_darwin(v61);
  v309 = &v304 - v62;
  __chkstk_darwin(v63);
  v311 = &v304 - v64;
  __chkstk_darwin(v65);
  v323 = &v304 - v66;
  __chkstk_darwin(v67);
  v324 = (&v304 - v68);
  __chkstk_darwin(v69);
  v322 = &v304 - v70;
  __chkstk_darwin(v71);
  v319 = &v304 - v72;
  __chkstk_darwin(v73);
  v390 = &v304 - v74;
  __chkstk_darwin(v75);
  v77 = &v304 - v76;
  __chkstk_darwin(v78);
  v80 = &v304 - v79;
  __chkstk_darwin(v81);
  v83 = &v304 - v82;
  v84 = sub_100058000(&qword_100772730);
  __chkstk_darwin(v84 - 8);
  v307 = &v304 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v86);
  v369 = &v304 - v87;
  __chkstk_darwin(v88);
  v367 = &v304 - v89;
  __chkstk_darwin(v90);
  v348 = &v304 - v91;
  __chkstk_darwin(v92);
  v343 = &v304 - v93;
  __chkstk_darwin(v94);
  v308 = &v304 - v95;
  __chkstk_darwin(v96);
  v321 = &v304 - v97;
  __chkstk_darwin(v98);
  v320 = &v304 - v99;
  __chkstk_darwin(v100);
  v318 = &v304 - v101;
  __chkstk_darwin(v102);
  v104 = &v304 - v103;
  __chkstk_darwin(v105);
  v107 = &v304 - v106;
  v406 = a5;
  sub_1005A333C(a5);
  sub_10000794C(v410, v107, &qword_100772730);
  v108 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v109 = *(v108 - 8);
  v408 = *(v109 + 48);
  v409 = v109 + 48;
  v110 = v408(v107, 1, v108);
  v400 = v109;
  if (v110 == 1)
  {
    sub_1000079B4(v107, &qword_100772730);
    v111 = 0;
  }

  else
  {
    v111 = TTRBoardColumnItemIntermediateViewModel.isUserInteractionEnabled.getter();
    (*(v109 + 8))(v107, v108);
  }

  *v406 = v111 & 1;
  sub_10000794C(v410, v104, &qword_100772730);
  v112 = v408(v104, 1, v108);
  v402 = v108;
  if (v112 == 1)
  {
    sub_1000079B4(v104, &qword_100772730);
    v113 = 1;
  }

  else
  {
    TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
    (*(v400 + 8))(v104, v108);
    v113 = 0;
  }

  v114 = v398;
  v115 = v398 + 56;
  v116 = *(v398 + 56);
  v117 = v405;
  v116(v83, v113, 1, v405);
  v118 = *(v114 + 104);
  v345 = enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.subtask(_:);
  v118(v80);
  v403 = v116;
  v404 = v115;
  v116(v80, 0, 1, v117);
  v119 = *(v53 + 48);
  sub_10000794C(v83, v55, &qword_100778F68);
  sub_10000794C(v80, &v55[v119], &qword_100778F68);
  v120 = v114;
  v121 = v117;
  v122 = *(v120 + 48);
  v123 = v122(v55, 1, v117);
  v124 = v406;
  v396 = v122;
  v397 = v120 + 48;
  if (v123 == 1)
  {
    sub_1000079B4(v80, &qword_100778F68);
    sub_1000079B4(v83, &qword_100778F68);
    if (v122(&v55[v119], 1, v121) == 1)
    {
      sub_1000079B4(v55, &qword_100778F68);
      v125 = 1;
LABEL_13:
      v126 = v402;
      goto LABEL_15;
    }

LABEL_12:
    sub_1000079B4(v55, &qword_100778F60);
    v125 = 0;
    goto LABEL_13;
  }

  sub_10000794C(v55, v77, &qword_100778F68);
  if (v122(&v55[v119], 1, v121) == 1)
  {
    sub_1000079B4(v80, &qword_100778F68);
    sub_1000079B4(v83, &qword_100778F68);
    (*(v398 + 8))(v77, v121);
    goto LABEL_12;
  }

  v127 = v398;
  v128 = v306;
  (*(v398 + 32))(v306, &v55[v119], v121);
  sub_1002C56EC(&qword_100778F90, &type metadata accessor for TTRBoardColumnItemIntermediateViewModel.ItemLevel);
  v125 = dispatch thunk of static Equatable.== infix(_:_:)();
  v129 = *(v127 + 8);
  v129(v128, v121);
  sub_1000079B4(v80, &qword_100778F68);
  sub_1000079B4(v83, &qword_100778F68);
  v129(v77, v121);
  v124 = v406;
  sub_1000079B4(v55, &qword_100778F68);
  v126 = v402;
LABEL_15:
  v130 = v390;
  v131 = v318;
  *(v124 + 2) = v125 & 1;
  sub_10000794C(v410, v131, &qword_100772730);
  v132 = v408(v131, 1, v126);
  v133 = v401;
  if (v132 == 1)
  {
    sub_1000079B4(v131, &qword_100772730);
    v134 = 1;
  }

  else
  {
    TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
    (*(v400 + 8))(v131, v126);
    v134 = 0;
  }

  v135 = v319;
  v136 = v405;
  v403(v130, v134, 1, v405);
  sub_10000794C(v130, v135, &qword_100778F68);
  v137 = v396(v135, 1, v136);
  v138 = &UIFontTextStyleBody;
  v139 = v398;
  if (v137 != 1)
  {
    v140 = (*(v398 + 88))(v135, v136);
    v138 = &UIFontTextStyleBody;
    if (v140 != enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithSubtasks(_:) && v140 != enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithoutSubtasks(_:))
    {
      if (v140 != v345)
      {
        goto LABEL_91;
      }

      v138 = &UIFontTextStyleSubheadline;
    }
  }

  v141 = *v138;
  sub_100003540(0, &qword_100771DF0);
  v142 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();

  sub_1000079B4(v390, &qword_100778F68);
  v124[1] = v142;
  v143 = v320;
  sub_10000794C(v410, v320, &qword_100772730);
  v144 = v402;
  if (v408(v143, 1, v402) == 1)
  {
    sub_1000079B4(v143, &qword_100772730);
    v145 = 1;
    v146 = v324;
    v147 = v322;
  }

  else
  {
    v148 = v322;
    v149 = v139;
    v150 = v143;
    TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
    v147 = v148;
    v151 = v150;
    v139 = v149;
    (*(v400 + 8))(v151, v144);
    v145 = 0;
    v146 = v324;
  }

  v403(v147, v145, 1, v136);
  v324 = UIFontTextStyleSubheadline;
  v152 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  sub_1000079B4(v147, &qword_100778F68);

  v124[2] = v152;
  v153 = v321;
  sub_10000794C(v410, v321, &qword_100772730);
  if (v408(v153, 1, v144) == 1)
  {
    sub_1000079B4(v153, &qword_100772730);
    v154 = 1;
  }

  else
  {
    TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
    (*(v400 + 8))(v153, v144);
    v154 = 0;
  }

  v155 = v323;
  v156 = v405;
  v403(v146, v154, 1, v405);
  sub_10000794C(v146, v155, &qword_100778F68);
  if (v396(v155, 1, v156) == 1 || (v158 = (*(v139 + 88))(v155, v156), v158 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithSubtasks(_:)) || v158 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithoutSubtasks(_:))
  {
    v157 = UIFontTextStyleBody;
  }

  else
  {
    v157 = v324;
    if (v158 != v345)
    {
      goto LABEL_91;
    }
  }

  v159 = v157;
  sub_1000079B4(v146, &qword_100778F68);
  v390 = objc_opt_self();
  v160 = [v390 configurationWithTextStyle:v159];

  v124[3] = v160;
  if (v341)
  {
    (*(v399 + 16))(v325, v133, v394);
    v161 = v308;
    sub_10000794C(v410, v308, &qword_100772730);
    v162 = v408(v161, 1, v144);
    v163 = v405;
    if (v162 == 1)
    {
      sub_1000079B4(v161, &qword_100772730);
      v164 = 1;
      v165 = v312;
      v166 = v311;
    }

    else
    {
      v166 = v311;
      TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
      (*(v400 + 8))(v161, v144);
      v164 = 0;
      v165 = v312;
    }

    v170 = v310;
    v171 = v309;
    v403(v166, v164, 1, v163);
    sub_10000794C(v166, v171, &qword_100778F68);
    if (v396(v171, 1, v163) == 1 || (v173 = (*(v139 + 88))(v171, v163), v173 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithSubtasks(_:)) || v173 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithoutSubtasks(_:))
    {
      v172 = UIFontTextStyleBody;
    }

    else
    {
      v172 = v324;
      if (v173 != v345)
      {
        goto LABEL_91;
      }
    }

    v174 = v172;
    static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();

    sub_1000079B4(v166, &qword_100778F68);
    TTRReminderCellTitleViewModel.init(reminder:font:)();
    TTRReminderCellTitleViewModel.isPonderingTextEffectVisible.setter();
    v175 = *(sub_100058000(&qword_100778F88) + 48);
    v176 = v313;
    v169 = v329;
    (*(v313 + 16))(v329, v165, v170);
    v177 = v346;
    if (qword_100767128 != -1)
    {
      swift_once();
    }

    v178 = TTRCounterBasedIdentifierGenerator.allocID()();
    (*(v176 + 8))(v165, v170);
    *&v169[v175] = v178;
    v167 = &enum case for TTRBoardReminderCellOptionalUpdate.update<A>(_:);
    v168 = v177;
  }

  else
  {
    v167 = &enum case for TTRBoardReminderCellOptionalUpdate.keepCurrent<A>(_:);
    v168 = v346;
    v169 = v329;
  }

  v179 = v331;
  v180 = v332;
  (*(v331 + 104))(v169, *v167, v332);
  v181 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_titleModule;
  v182 = v407;
  swift_beginAccess();
  sub_10000794C(v182 + v181, v333, &qword_100781950);
  (*(v179 + 16))(v328, v169, v180);
  sub_100058000(&unk_100775AA0);
  v183 = v326;
  TTRBoardReminderCellTitleConfiguration.init(module:viewModelUpdate:)();
  (*(v179 + 8))(v169, v180);
  v184 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  (*(v327 + 40))(v124 + v184[17], v183, v330);
  v185 = v334;
  v186 = v410;
  sub_1002C1B34(v133, v410, v355 & 1, v334);
  (*(v335 + 40))(v124 + v184[18], v185, v336);
  v187 = sub_1002C2358(v133);
  v188 = v184[24];

  *(v124 + v188) = v187;
  v189 = v337;
  sub_1002C2A78(v186, v337);
  (*(v338 + 40))(v124 + v184[11], v189, v339);
  v190 = sub_1002C49E0();
  v192 = v191;
  v193 = (v124 + v184[20]);

  *v193 = v190;
  v193[1] = v192;
  v194 = TTRRemindersListViewModel.Reminder.imageAttachments.getter();
  v195 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v196 = (v124 + v184[16]);

  sub_1000301AC(v196[1]);
  *v196 = v194;
  v196[1] = sub_1002C5448;
  v196[2] = v195;
  v197 = v340;
  TTRRemindersListViewModel.Reminder.flaggedState.getter();
  v198 = v342;
  v199 = v344;
  v200 = (*(v342 + 88))(v197, v344);
  if (v200 == enum case for TTRReminderDetailViewModel.FlaggedState.supported(_:))
  {
    (*(v198 + 96))(v197, v199);
    v201 = *v197;
  }

  else
  {
    if (v200 != enum case for TTRReminderDetailViewModel.FlaggedState.unsupported(_:))
    {
      goto LABEL_92;
    }

    v201 = 0;
  }

  *(v124 + v184[21]) = v201;
  v202 = TTRRemindersListViewModel.Reminder.color.getter();
  v203 = v184[19];

  *(v124 + v203) = v202;
  TTRRemindersListViewModel.Reminder.listNameData.getter();
  v204 = type metadata accessor for TTRRemindersListViewModel.ListNameData();
  v205 = *(v204 - 8);
  if ((*(v205 + 48))(v168, 1, v204) == 1)
  {
    sub_1000079B4(v168, &qword_100778F40);
    v206 = 0;
    v207 = 0;
  }

  else
  {
    v206 = TTRRemindersListViewModel.ListNameData.name.getter();
    v207 = v208;
    (*(v205 + 8))(v168, v204);
  }

  v209 = (v124 + v184[23]);

  *v209 = v206;
  v209[1] = v207;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRRemindersListViewModel.Reminder.subtaskCount.getter();
  TTRRemindersListViewModel.Reminder.subtaskCountDisplayStyle.getter();
  v210 = [objc_opt_self() tintColor];
  v211 = v351;
  TTRBoardReminderCellSubtaskCountConfiguration.init(subtaskCount:displayStyle:tintColor:onSubtaskCountPressed:)();

  (*(v353 + 40))(v124 + v184[13], v211, v354);
  v212 = TTRRemindersListViewModel.Reminder.priorityLevelDisplayString.getter();
  v214 = v213;
  v215 = (v124 + v184[22]);

  *v215 = v212;
  v215[1] = v214;
  v216 = v356;
  sub_1002C30A0(v356);
  (*(v357 + 40))(v124 + v184[25], v216, v358);
  v217 = v362;
  TTRRemindersListViewModel.Reminder.assignmentData.getter();
  v218 = v359;
  sub_1002C33B8(v217, v359);
  sub_1000079B4(v217, &qword_100778EE0);
  (*(v361 + 40))(v124 + v184[26], v218, v363);
  v219 = v364;
  sub_1002C3794(v364);
  (*(v365 + 5))(v124 + v184[27], v219, v366);
  v220 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v221 = v399;
  v222 = v349;
  v223 = v394;
  v366 = *(v399 + 16);
  v366(v349, v133, v394);
  v224 = (*(v221 + 80) + 24) & ~*(v221 + 80);
  v225 = swift_allocObject();
  *(v225 + 16) = v220;
  v226 = *(v221 + 32);
  v399 = v221 + 32;
  v365 = v226;
  v226(v225 + v224, v222, v223);

  LODWORD(v364) = TTRRemindersListViewModel.Reminder.isCompleted.getter();
  v227 = v368;
  TTRRemindersListViewModel.Reminder.style.getter();
  v228 = v392;
  TTRReminderCellStyle.completedButtonType.getter();
  v229 = *(v395 + 8);
  v395 += 8;
  v368 = v229;
  (v229)(v227, v393);
  v230 = type metadata accessor for TTRReminderCellStyle.CompletedButtonType();
  (*(*(v230 - 8) + 56))(v228, 0, 1, v230);
  v231 = v343;
  sub_10000794C(v410, v343, &qword_100772730);
  v232 = v402;
  if (v408(v231, 1, v402) == 1)
  {
    sub_1000079B4(v231, &qword_100772730);
    v233 = 1;
    v234 = v360;
    v235 = v350;
  }

  else
  {
    v235 = v350;
    TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
    (*(v400 + 8))(v231, v232);
    v233 = 0;
    v234 = v360;
  }

  v236 = v347;
  v237 = v405;
  v403(v235, v233, 1, v405);
  sub_10000794C(v235, v236, &qword_100778F68);
  if (v396(v236, 1, v237) == 1 || (v239 = (*(v398 + 88))(v236, v405), v239 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithSubtasks(_:)) || v239 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithoutSubtasks(_:))
  {
    v238 = UIFontTextStyleBody;
  }

  else
  {
    v238 = v324;
    if (v239 != v345)
    {
      goto LABEL_91;
    }
  }

  v240 = v238;
  sub_1000079B4(v235, &qword_100778F68);
  v241 = [v390 configurationWithTextStyle:v240];

  v242 = v371;
  TTRBoardReminderCellCompletedButtonConfiguration.init(isCompleted:tintColor:style:preferredSymbolConfiguration:onCompletedPressed:)();

  (*(v372 + 40))(&v406[v184[10]], v242, v373);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v243 = v348;
  sub_10000794C(v410, v348, &qword_100772730);
  v244 = v402;
  LODWORD(v242) = v408(v243, 1, v402);

  if (v242 == 1)
  {
    sub_1000079B4(v243, &qword_100772730);
    v403(v234, 1, 1, v405);
  }

  else
  {
    TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
    (*(v400 + 8))(v243, v244);
    v245 = v405;
    v403(v234, 0, 1, v405);
    v246 = v398;
    v247 = (*(v398 + 88))(v234, v245);
    if (v247 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithSubtasks(_:))
    {
      (*(v246 + 96))(v234, v245);
    }

    else if (v247 != enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithoutSubtasks(_:) && v247 != v345)
    {
      goto LABEL_91;
    }
  }

  v248 = v401;
  TTRRemindersListViewModel.Reminder.controlColor.getter();
  v249 = v374;
  TTRBoardReminderCellShowSubtasksConfiguration.init(isShowingSubtasks:subtaskCount:tintColor:subtaskFont:onShowSubtasksButtonPress:)();

  (*(v375 + 40))(&v406[v184[12]], v249, v376);
  v250 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v251 = v370;
  v252 = v394;
  v366(v370, v248, v394);
  v253 = swift_allocObject();
  *(v253 + 16) = v250;
  v365(v253 + v224, v251, v252);

  v254 = v377;
  TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.getter();
  v255 = type metadata accessor for TTRRemindersListViewModel.SuggestedSectionDisplayStyle();
  v256 = *(v255 - 8);
  if ((*(v256 + 48))(v254, 1, v255) == 1)
  {
    v257 = v388;
    v258 = v381;
    v259 = v402;
    v260 = v367;
    goto LABEL_76;
  }

  v261 = (*(v256 + 88))(v254, v255);
  v257 = v388;
  v258 = v381;
  v260 = v367;
  if (v261 != enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.show(_:))
  {
    v259 = v402;
    if (v261 == enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.hide(_:))
    {
      goto LABEL_76;
    }

    while (1)
    {
LABEL_91:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_92:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  (*(v256 + 96))(v254, v255);
  if (*(v254 + 3))
  {
  }

  v259 = v402;
LABEL_76:
  sub_10000794C(v410, v260, &qword_100772730);
  if (v408(v260, 1, v259) == 1)
  {
    sub_1000079B4(v260, &qword_100772730);
  }

  else
  {
    TTRBoardColumnItemIntermediateViewModel.isEditingItem.getter();
    (*(v400 + 8))(v260, v259);
  }

  v262 = v378;
  TTRBoardReminderCellSuggestedSectionConfiguration.init(sectionTitle:onSuggestedSectionPress:isEditingItem:isInMultiSelectMode:)();

  (*(v379 + 40))(&v406[v184[14]], v262, v380);
  v263 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v264 = v369;
  sub_10000794C(v410, v369, &qword_100772730);
  LODWORD(v262) = v408(v264, 1, v259);

  v265 = v368;
  if (v262 == 1)
  {
    sub_1000079B4(v264, &qword_100772730);
    v266 = 1;
  }

  else
  {
    v267 = TTRBoardColumnItemIntermediateViewModel.isEditingItem.getter();
    (*(v400 + 8))(v264, v259);
    v266 = v267 ^ 1;
  }

  v268 = v386;
  v269 = v393;
  TTRRemindersListViewModel.Reminder.style.getter();
  v270 = TTRReminderCellStyle.allowsEditing.getter();
  v265(v258, v269);
  if ((v270 & 1) != 0 && (TTRRemindersListViewModel.Reminder.style.getter(), v405 = v263, v271 = v266, v272 = v184, v273 = v257, v274 = v314, TTRReminderCellStyle.role.getter(), v265(v258, v269), v275 = v316, v276 = v315, v277 = v317, (*(v316 + 104))(v315, enum case for TTRReminderCellStyle.Role.placeholder(_:), v317), v278 = static TTRReminderCellStyle.Role.== infix(_:_:)(), v279 = *(v275 + 8), v279(v276, v277), v280 = v274, v257 = v273, v184 = v272, v279(v280, v277), (v278 & v271 & 1) == 0))
  {
    v284 = v307;
    sub_10000794C(v410, v307, &qword_100772730);
    v285 = v402;
    if (v408(v284, 1, v402) == 1)
    {
      sub_1000079B4(v284, &qword_100772730);
      v286 = type metadata accessor for TTRBoardReminderCellInfoButtonState();
      (*(*(v286 - 8) + 56))(v268, 1, 1, v286);
    }

    else
    {
      TTRBoardColumnItemIntermediateViewModel.infoButtonState.getter();
      (*(v400 + 8))(v284, v285);
      v287 = type metadata accessor for TTRBoardReminderCellInfoButtonState();
      (*(*(v287 - 8) + 56))(v268, 0, 1, v287);
    }
  }

  else
  {
    v281 = enum case for TTRBoardReminderCellInfoButtonState.hidden(_:);
    v282 = type metadata accessor for TTRBoardReminderCellInfoButtonState();
    v283 = *(v282 - 8);
    (*(v283 + 104))(v268, v281, v282);
    (*(v283 + 56))(v268, 0, 1, v282);
  }

  sub_10000794C(v268, v385, &qword_100778F30);
  TTRRemindersListViewModel.Reminder.controlColor.getter();
  v288 = v382;
  TTRBoardReminderCellInfoButtonConfiguration.init(infoButtonState:infoButtonSymbolConfiguration:tintColor:onInfoPressed:)();
  sub_1000079B4(v268, &qword_100778F30);

  v289 = v406;
  (*(v383 + 40))(&v406[v184[15]], v288, v384);
  TTRRemindersListViewModel.Reminder.item.getter();
  v290 = v387;
  *(v257 + *(v387 + 20)) = 0;
  v291 = (v257 + *(v290 + 24));
  *v291 = 0;
  v291[1] = 0;
  *(v257 + *(v290 + 28)) = _swiftEmptyArrayStorage;
  if (qword_100767128 != -1)
  {
    swift_once();
  }

  v292 = TTRCounterBasedIdentifierGenerator.allocID()();
  v293 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_autoCompleteModule;
  v294 = v407;
  swift_beginAccess();
  v295 = v389;
  sub_10000794C(v294 + v293, v389, &qword_100778F00);
  v296 = &v289[v184[28]];
  sub_1000079B4(v296, &qword_100778F70);
  v297 = sub_100058000(&qword_100778F70);
  v298 = v296 + *(v297 + 28);
  v299 = *(sub_100058000(&qword_100778F78) + 48);
  sub_1002C5104(v257, v298, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
  *(v298 + v299) = v292;
  v300 = enum case for TTRBoardReminderCellOptionalUpdate.update<A>(_:);
  v301 = sub_100058000(&qword_100778F80);
  (*(*(v301 - 8) + 104))(v298, v300, v301);
  v302 = sub_100058000(&qword_100778EB0);
  (*(*(v302 - 8) + 56))(v296, 1, 1, v302);
  *(v296 + *(v297 + 32)) = 1;
  return sub_10000D184(v295, v296, &qword_100778F00);
}

uint64_t sub_1002BC2B8()
{
  v0 = type metadata accessor for AppEntityID();
  v49 = *(v0 - 8);
  v50 = v0;
  __chkstk_darwin(v0);
  v48 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100772740);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - v8;
  v10 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v56 = *(v13 - 8);
  __chkstk_darwin(v13);
  v55 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v58 = *(v18 - 8);
  v59 = v18;
  __chkstk_darwin(v18);
  v51 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for REMFeatureFlags();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, enum case for REMFeatureFlags.viewAnnotation(_:), v20, v22);
  v25 = REMFeatureFlags.isEnabled.getter();
  result = (*(v21 + 8))(v24, v20);
  if (v25)
  {
    v27 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
    v28 = v57;
    swift_beginAccess();
    (*(v7 + 16))(v9, v28 + v27, v6);
    TTRLazilyLoadedViewModelState.viewModel.getter();
    (*(v7 + 8))(v9, v6);
    v29 = v56;
    if ((*(v56 + 48))(v12, 1, v13) == 1)
    {
      sub_1000079B4(v12, &qword_100772738);
      (*(v58 + 56))(v17, 1, 1, v59);
      return sub_1000079B4(v17, &qword_100772140);
    }

    v30 = v55;
    (*(v29 + 32))(v55, v12, v13);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    v32 = v58;
    v31 = v59;
    (*(v58 + 56))(v17, 0, 1, v59);
    (*(v29 + 8))(v30, v13);
    if ((*(v32 + 48))(v17, 1, v31) == 1)
    {
      return sub_1000079B4(v17, &qword_100772140);
    }

    v33 = v51;
    (*(v32 + 32))(v51, v17, v31);
    v34 = v52;
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v36 = v53;
    v35 = v54;
    v37 = (*(v53 + 88))(v34, v54);
    if (v37 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
    {
      (*(v36 + 96))(v34, v35);
      v38 = v45;
      v39 = v46;
      v40 = v34;
      v41 = v47;
      (*(v46 + 32))(v45, v40, v47);
      v42 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      (*(v39 + 8))(v38, v41);
      type metadata accessor for ReminderEntity();
      v43 = v42;
      v44 = v48;
      AppEntityID.init(objectID:)();
      sub_1002C56EC(&qword_10076DF78, &type metadata accessor for ReminderEntity);
      UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

      (*(v49 + 8))(v44, v50);
      return (*(v32 + 8))(v33, v31);
    }

    if (v37 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) && v37 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      if (v37 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
LABEL_13:
        UIView.removeAssociatedAppEntity()();
        return (*(v32 + 8))(v33, v31);
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    (*(v36 + 8))(v34, v35);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1002BCB18()
{
  v1 = sub_100058000(&unk_100772740);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  v5 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v12, v1);
  TTRLazilyLoadedViewModelState.viewModel.getter();
  (*(v2 + 8))(v4, v1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_100772738);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14 = dispatch thunk of TTRIRemindersListReminderCellViewModel.identifier.getter();
    (*(v9 + 8))(v11, v8);
    return v14;
  }
}

char *sub_1002BCEBC()
{
  sub_1002BD084();
  if (v1)
  {
    v2 = [v0 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView();
    if (swift_dynamicCastClass())
    {
      sub_1004C0A28();
      v4 = v3;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v5 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_customAccessibilityElement;
    swift_beginAccess();
    v6 = *&v0[v5];
    if (v6)
    {
      v7 = type metadata accessor for TTRIRemindersListReminderCellAccessibilityElement();
    }

    else
    {
      v7 = 0;
      v16[1] = 0;
      v16[2] = 0;
    }

    v16[0] = v6;
    v16[3] = v7;
    v8 = v6;
    sub_10000794C(v16, &v14, &qword_10076AE40);
    v12[0] = v14;
    v12[1] = v15;
    if (*(&v15 + 1))
    {
      sub_100007DD8(v12, v13);
      v4 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1005470E4(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1005470E4((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      sub_100007DD8(v13, &v4[32 * v10 + 32]);
    }

    else
    {
      sub_1000079B4(v12, &qword_10076AE40);
      v4 = _swiftEmptyArrayStorage;
    }

    sub_1000079B4(v16, &qword_10076AE40);
  }

  return v4;
}

void sub_1002BD084()
{
  v1 = sub_100058000(&qword_100772730);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver))
  {

    TTRViewModelObserver.localValue.getter();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1000079B4(v3, &qword_100772730);
      if (qword_100767120 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100003E30(v8, qword_100778DE8);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "No intermediate view model found when trying to check for editing subviews", v11, 2u);
      }
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      TTRBoardColumnItemIntermediateViewModel.isEditingItem.getter();
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002BD2E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_100058000(&unk_100772740);
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICellConfigurationState();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v1 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v16) = UICellConfigurationState.isEditing.getter();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v28.receiver = v1;
    v28.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v28, "accessibilityActivate");
  }

  else
  {
    v18 = [v1 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView();
    if (swift_dynamicCastClass())
    {
      if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
      {
        v19 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
        swift_beginAccess();
        v20 = v25;
        (*(v25 + 16))(v7, &v1[v19], v5);
        TTRLazilyLoadedViewModelState.viewModel.getter();
        (*(v20 + 8))(v7, v5);
        v21 = v26;
        if ((*(v26 + 48))(v4, 1, v8) == 1)
        {

          sub_1000079B4(v4, &qword_100772738);
        }

        else
        {
          (*(v21 + 32))(v10, v4, v8);
          sub_1002BD6D4(v10, 1);

          (*(v21 + 8))(v10, v8);
        }

        v17 = 0;
      }

      else
      {
        sub_1004C0D5C();
        v23 = v22;

        v17 = v23;
      }
    }

    else
    {

      v17 = 0;
    }
  }

  return v17 & 1;
}

void sub_1002BD6D4(uint64_t a1, int a2)
{
  v26 = a2;
  v2 = type metadata accessor for TTREditingStateOption.InputType();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRReminderCellStyle.CompletedButtonType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRReminderCellStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Reminder.style.getter();
  TTRReminderCellStyle.completedButtonType.getter();
  (*(v12 + 8))(v14, v11);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == enum case for TTRReminderCellStyle.CompletedButtonType.toggle(_:))
  {
    TTRRemindersListViewModel.Reminder.item.getter();
    v16 = TTRRemindersListViewModel.Reminder.isCompleted.getter();
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1004862A0(v6, (v16 & 1) == 0);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v6, v27);
  }

  else
  {
    v17 = v28;
    if (v15 == enum case for TTRReminderCellStyle.CompletedButtonType.confirmSuggestedReminder(_:))
    {
      (*(v8 + 8))(v10, v7);
    }

    else if (v15 == enum case for TTRReminderCellStyle.CompletedButtonType.placeholder(_:))
    {
      if (v26)
      {
        v18 = [v28 contentView];
        type metadata accessor for TTRIBoardReminderCellContentView();
        if (swift_dynamicCastClass())
        {
          sub_1004C0D5C();
        }
      }

      else
      {
        v20 = v23;
        v19 = v24;
        v21 = v25;
        (*(v24 + 104))(v23, enum case for TTREditingStateOption.InputType.unspecified(_:), v25);
        v22 = [v17 contentView];
        type metadata accessor for TTRIBoardReminderCellContentView();
        if (swift_dynamicCastClass())
        {
          sub_1004C1558(v20);
        }

        (*(v19 + 8))(v20, v21);
      }
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }
}

uint64_t sub_1002BDC74()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100058000(&qword_100778ED8);
  __chkstk_darwin(v2 - 8);
  v169 = &v156 - v3;
  v173 = type metadata accessor for TTRRemindersListViewModel.AppLink();
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v170 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v180 = v5;
  v181 = v6;
  __chkstk_darwin(v5);
  v178 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v7;
  __chkstk_darwin(v8);
  v163 = &v156 - v9;
  v177 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment();
  v182 = *(v177 - 8);
  __chkstk_darwin(v177);
  v176 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100778EC8);
  __chkstk_darwin(v11 - 8);
  v166 = &v156 - v12;
  v167 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  v165 = *(v167 - 8);
  __chkstk_darwin(v167);
  v162 = (&v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100058000(&qword_100778EE0);
  __chkstk_darwin(v14 - 8);
  v168 = (&v156 - v15);
  v161 = type metadata accessor for TTRITreeViewExpandedState();
  *&v160 = *(v161 - 1);
  __chkstk_darwin(v161);
  v159 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_100058000(&qword_100778EE8);
  __chkstk_darwin(v158);
  v164 = &v156 - v17;
  v175 = type metadata accessor for TTRReminderCellStyle();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v19 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100058000(&unk_100772740);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v156 - v22;
  v24 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v24 - 8);
  v26 = &v156 - v25;
  v27 = type metadata accessor for UICellConfigurationState();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002BD084();
  if (v31)
  {
    return 0;
  }

  v32 = [v0 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v32) = UICellConfigurationState.isEditing.getter();
  (*(v28 + 8))(v30, v27);
  if (v32)
  {
    return 0;
  }

  v33 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  swift_beginAccess();
  (*(v21 + 16))(v23, v1 + v33, v20);
  TTRLazilyLoadedViewModelState.viewModel.getter();
  (*(v21 + 8))(v23, v20);
  v34 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v26, 1, v34) == 1)
  {
    sub_1000079B4(v26, &qword_100772738);
    return 0;
  }

  v36 = v1;
  v185 = v34;
  v186 = &protocol witness table for TTRRemindersListViewModel.Reminder;
  v37 = sub_1000317B8(&aBlock);
  (*(v35 + 32))(v37, v26, v34);
  sub_100005FD0(&aBlock, &v189);
  sub_10000C36C(&v189, v190);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.style.getter();
  v38 = TTRReminderCellStyle.hasAccessibilityCustomActions.getter();
  (*(v174 + 8))(v19, v175);
  if ((v38 & 1) == 0)
  {
    sub_100004758(&v189);
    return 0;
  }

  v188 = _swiftEmptyArrayStorage;
  static TTRAccesibility.RemindersList.Action.EditTitle.getter();
  v174 = sub_100003540(0, &qword_10076FCB0);
  v39 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = objc_allocWithZone(UIAccessibilityCustomAction);

  v42 = String._bridgeToObjectiveC()();

  v186 = sub_1002C530C;
  v187 = v40;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v184 = sub_10044E9F0;
  v185 = &unk_10071E388;
  v43 = _Block_copy(&aBlock);
  v44 = [v41 initWithName:v42 image:v39 actionHandler:v43];

  _Block_release(v43);

  v45 = v44;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v156 = v45;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v46 = v188;
  sub_10000C36C(&v189, v190);
  v47 = dispatch thunk of TTRIRemindersListReminderCellViewModel.hasShowInfoButton.getter();
  v157 = v36;
  v48 = v173;
  v49 = v172;
  if (v47)
  {
    static TTRAccesibility.RemindersList.Action.EnterDetail.getter();
    v50 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = objc_allocWithZone(UIAccessibilityCustomAction);

    v53 = String._bridgeToObjectiveC()();

    v186 = sub_1002C5414;
    v187 = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v184 = sub_10044E9F0;
    v185 = &unk_10071E518;
    v54 = _Block_copy(&aBlock);
    v55 = [v52 initWithName:v53 image:v50 actionHandler:v54];

    _Block_release(v54);

    v56 = v55;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v36 = v157;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v46 = v188;
  }

  v57 = [v36 contentView];
  type metadata accessor for TTRIBoardReminderCellContentView();
  if (swift_dynamicCastClass())
  {
    sub_10000C36C(&v189, v190);
    v58 = dispatch thunk of TTRIRemindersListReminderCellViewModel.attributedNotes.getter();
    if (!v58)
    {
      goto LABEL_21;
    }

    v59 = v58;
    v60 = [v58 string];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v64 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (v64)
    {
      static TTRAccesibility.RemindersList.Action.EditNote.getter();
    }

    else
    {
LABEL_21:
      static TTRAccesibility.RemindersList.Action.AddNote.getter();
    }

    v66 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();

    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v68 = objc_allocWithZone(UIAccessibilityCustomAction);

    v69 = String._bridgeToObjectiveC()();

    v186 = sub_1002C540C;
    v187 = v67;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v184 = sub_10044E9F0;
    v185 = &unk_10071E4F0;
    v70 = _Block_copy(&aBlock);
    v71 = [v68 initWithName:v69 image:v66 actionHandler:v70];

    _Block_release(v70);

    v72 = v71;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v46 = v188;
  }

  else
  {
  }

  sub_10000C36C(&v189, v190);
  v73 = dispatch thunk of TTRIRemindersListReminderCellViewModel.subtaskCount.getter();
  if ((v74 & 1) != 0 || v73 < 1 || (sub_10000C36C(&v189, v190), v75 = v164, dispatch thunk of TTRIRemindersListReminderCellViewModel.subtaskCountDisplayStyle.getter(), v76 = type metadata accessor for TTRRemindersListViewModel.SubtaskCountDisplayStyle(), v77 = *(v76 - 8), (*(v77 + 48))(v75, 1, v76) == 1))
  {
LABEL_43:
    sub_10000C36C(&v189, v190);
    v93 = v168;
    dispatch thunk of TTRIRemindersListReminderCellViewModel.assignmentData.getter();
    v94 = type metadata accessor for TTRRemindersListViewModel.AssignmentData();
    v95 = (*(*(v94 - 8) + 48))(v93, 1, v94);
    sub_1000079B4(v93, &qword_100778EE0);
    if (v95 != 1)
    {
      UICollectionViewCell.contentConfiguration.getter();
      v96 = (v165 + 56);
      if (v185)
      {
        v97 = v165;
        sub_100058000(&qword_10077A650);
        v98 = v166;
        v99 = v167;
        v100 = swift_dynamicCast();
        (*(v97 + 56))(v98, v100 ^ 1u, 1, v99);
        if ((*(v97 + 48))(v98, 1, v99) != 1)
        {
          v101 = v98;
          v102 = v162;
          sub_1002C5104(v101, v162, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
          sub_1002C56EC(&qword_100778EF8, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
          if (TTRBoardReminderCellContentConfigurationType.assigneeIsHidden.getter())
          {
            sub_1002C51D0(v102, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
          }

          else
          {
            static TTRAccesibility.RemindersList.Action.AssignmentDetail.getter();
            v149 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
            v150 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v151 = objc_allocWithZone(UIAccessibilityCustomAction);

            v152 = String._bridgeToObjectiveC()();

            v186 = sub_1002C53C8;
            v187 = v150;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            v184 = sub_10044E9F0;
            v185 = &unk_10071E450;
            v153 = _Block_copy(&aBlock);
            v154 = [v151 initWithName:v152 image:v149 actionHandler:v153];

            _Block_release(v153);

            v155 = v154;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            sub_1002C51D0(v162, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
            v46 = v188;
          }

          goto LABEL_50;
        }
      }

      else
      {
        sub_1000079B4(&aBlock, &qword_100768868);
        v98 = v166;
        (*v96)(v166, 1, 1, v167);
      }

      sub_1000079B4(v98, &qword_100778EC8);
    }

LABEL_50:
    sub_10000C36C(&v189, v190);
    v103 = dispatch thunk of TTRIRemindersListReminderCellViewModel.linkAttachments.getter();
    if (v103)
    {
      v104 = *(v103 + 16);
      if (v104)
      {
        v168 = *(v182 + 16);
        v105 = (*(v182 + 80) + 32) & ~*(v182 + 80);
        v159 = v103;
        v106 = v103 + v105;
        v167 = *(v182 + 72);
        v182 += 16;
        v166 = (v182 - 8);
        v165 = v181 + 16;
        v164 = (v181 + 32);
        v162 = &v184;
        v161 = (v181 + 8);
        v160 = xmmword_10062D400;
        v107 = v163;
        v108 = v178;
        v109 = v180;
        do
        {
          v175 = v104;
          v110 = v176;
          v111 = v177;
          v168(v176, v106, v177);
          TTRRemindersListViewModel.LinkAttachment.url.getter();
          (*v166)(v110, v111);
          v112 = URL.domain.getter();
          if (!v113)
          {
            v112 = URL.absoluteString.getter();
          }

          v114 = v112;
          v115 = v113;
          static TTRAccesibility.RemindersList.Action.OpenLinkFormat.getter();
          sub_100058000(&unk_100786CB0);
          v116 = swift_allocObject();
          *(v116 + 16) = v160;
          *(v116 + 56) = &type metadata for String;
          *(v116 + 64) = sub_10005C390();
          *(v116 + 32) = v114;
          *(v116 + 40) = v115;
          String.init(format:_:)();

          v117 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
          v118 = v181;
          (*(v181 + 16))(v108, v107, v109);
          v119 = (*(v118 + 80) + 16) & ~*(v118 + 80);
          v120 = swift_allocObject();
          (*(v118 + 32))(v120 + v119, v108, v109);
          v121 = objc_allocWithZone(UIAccessibilityCustomAction);
          v122 = String._bridgeToObjectiveC()();

          v186 = sub_1002C5358;
          v187 = v120;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v184 = sub_10044E9F0;
          v185 = &unk_10071E428;
          v123 = _Block_copy(&aBlock);
          v124 = [v121 initWithName:v122 image:v117 actionHandler:v123];

          _Block_release(v123);

          v125 = v124;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          (*v161)(v107, v109);
          v106 += v167;
          v104 = v175 - 1;
        }

        while (v175 != 1);
        v46 = v188;
        v48 = v173;
        v49 = v172;
      }
    }

    sub_10000C36C(&v189, v190);
    if (dispatch thunk of TTRIRemindersListReminderCellViewModel.totalImageCount.getter() >= 1)
    {
      static TTRAccesibility.RemindersList.Action.PreviewImages.getter();
      v126 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
      v127 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v128 = objc_allocWithZone(UIAccessibilityCustomAction);

      v129 = String._bridgeToObjectiveC()();

      v186 = sub_1002C5350;
      v187 = v127;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v184 = sub_10044E9F0;
      v185 = &unk_10071E3D8;
      v130 = _Block_copy(&aBlock);
      v131 = [v128 initWithName:v129 image:v126 actionHandler:v130];

      _Block_release(v130);

      v132 = v131;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v46 = v188;
    }

    sub_10000C36C(&v189, v190);
    v133 = v169;
    dispatch thunk of TTRIRemindersListReminderCellViewModel.appLink.getter();
    if ((*(v49 + 48))(v133, 1, v48) == 1)
    {
      sub_1000079B4(v133, &qword_100778ED8);
    }

    else
    {
      (*(v49 + 32))(v170, v133, v48);
      v134 = TTRRemindersListViewModel.AppLink.name.getter();
      if (!v135)
      {
        v134 = static TTRAccesibility.RemindersList.Action.GoToAppSourceUnknownApp.getter();
      }

      v136 = v134;
      v137 = v135;
      static TTRAccesibility.RemindersList.Action.GoToAppSourceFormat.getter();
      sub_100058000(&unk_100786CB0);
      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_10062D400;
      *(v138 + 56) = &type metadata for String;
      *(v138 + 64) = sub_10005C390();
      *(v138 + 32) = v136;
      *(v138 + 40) = v137;
      String.init(format:_:)();

      v139 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v140 = objc_allocWithZone(UIAccessibilityCustomAction);

      v141 = String._bridgeToObjectiveC()();

      v186 = sub_1002C531C;
      v187 = v139;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v184 = sub_10044E9F0;
      v185 = &unk_10071E3B0;
      v142 = _Block_copy(&aBlock);
      v143 = [v140 initWithName:v141 actionHandler:v142];

      _Block_release(v142);

      v144 = v143;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v49 + 8))(v170, v48);
      v46 = v188;
    }

    v145 = static TTRCommonAsset.Image.sectionIcon.getter();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1002C56EC(&qword_100778EF0, type metadata accessor for TTRIBoardReminderCell);

    v146 = TTRIRemindersListReminderCellAccessibilityElementContaining.moveToSuggestedSectionAccessibilityAction(viewModel:image:mainHandler:)();

    if (v146)
    {
      v147 = v146;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v148 = v156;
      if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v46 = v188;
    }

    else
    {
    }

    sub_100004758(&v189);
    return v46;
  }

  v78 = (*(v77 + 88))(v75, v76);
  if (v78 == enum case for TTRRemindersListViewModel.SubtaskCountDisplayStyle.linkToExternalList(_:))
  {
    static TTRAccesibility.RemindersList.Action.ShowSubtasksInList.getter();
    v79 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v80 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v81 = objc_allocWithZone(UIAccessibilityCustomAction);

    v82 = String._bridgeToObjectiveC()();

    v186 = sub_1002C53D0;
    v187 = v80;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v184 = sub_10044E9F0;
    v185 = &unk_10071E478;
    v83 = _Block_copy(&aBlock);
    [v81 initWithName:v82 image:v79 actionHandler:v83];

    _Block_release(v83);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_42:
    v46 = v188;
    goto LABEL_43;
  }

  if (v78 == enum case for TTRRemindersListViewModel.SubtaskCountDisplayStyle.expandCollapseControl(_:))
  {
    v84 = v159;
    sub_1002BFD84(v159);
    v85 = (*(v160 + 88))(v84, v161);
    if (v85 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
    {
      goto LABEL_43;
    }

    if (v85 == enum case for TTRITreeViewExpandedState.collapsed(_:))
    {
      static TTRAccesibility.RemindersList.Action.ExpandSubtasks.getter();
LABEL_39:
      UIAccessibilityButtonShapesEnabled();
      v86 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();

      v87 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v88 = objc_allocWithZone(UIAccessibilityCustomAction);

      v89 = String._bridgeToObjectiveC()();

      v186 = sub_1002C5404;
      v187 = v87;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v184 = sub_10044E9F0;
      v185 = &unk_10071E4A0;
      v90 = _Block_copy(&aBlock);
      v91 = [v88 initWithName:v89 image:v86 actionHandler:v90];

      _Block_release(v90);

      v92 = v91;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_42;
    }

    if (v85 == enum case for TTRITreeViewExpandedState.expanded(_:))
    {
      static TTRAccesibility.RemindersList.Action.CollapseSubtasks.getter();
      goto LABEL_39;
    }
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002BFC7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong contentView];

    type metadata accessor for TTRIBoardReminderCellContentView();
    if (swift_dynamicCastClass())
    {
      sub_1004C0D5C();
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1002BFD20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1004C0E4C();
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1002BFD84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_100778EC8);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3 - 8];
  v5 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  UICollectionViewCell.contentConfiguration.getter();
  if (!v20)
  {
    sub_1000079B4(v19, &qword_100768868);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_6;
  }

  sub_100058000(&qword_10077A650);
  v9 = swift_dynamicCast();
  (*(v6 + 56))(v4, v9 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_6:
    sub_1000079B4(v4, &qword_100778EC8);
    goto LABEL_7;
  }

  sub_1002C5104(v4, v8, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  if (TTRBoardReminderCellShowSubtasksConfiguration.isHidden.getter())
  {
    sub_1002C51D0(v8, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
LABEL_7:
    v10 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
    v11 = type metadata accessor for TTRITreeViewExpandedState();
    v12 = *(*(v11 - 8) + 104);
    v13 = a1;
    v14 = v10;
    return v12(v13, v14, v11);
  }

  v16 = TTRBoardReminderCellShowSubtasksConfiguration.isShowingSubtasks.getter();
  sub_1002C51D0(v8, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  v11 = type metadata accessor for TTRITreeViewExpandedState();
  v12 = *(*(v11 - 8) + 104);
  if (v16 == 2)
  {
    v17 = &enum case for TTRITreeViewExpandedState.notExpandable(_:);
  }

  else if (v16)
  {
    v17 = &enum case for TTRITreeViewExpandedState.expanded(_:);
  }

  else
  {
    v17 = &enum case for TTRITreeViewExpandedState.collapsed(_:);
  }

  v14 = *v17;
  v13 = a1;
  return v12(v13, v14, v11);
}

uint64_t sub_1002C0078()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1001CC3FC(v1);
      sub_1002B7A54();

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1002C0114()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = [v1 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView();
    if (swift_dynamicCastClass())
    {
      v3 = sub_1004C3290();
      sub_1001CD308(v1, v3);

      swift_unknownObjectRelease();
      v4 = 1;
    }

    else
    {

      swift_unknownObjectRelease();
      v4 = 0;
    }

    v1 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1002C021C()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v5 = [v1 canOpenURL:v3];

  if (v5)
  {
    v6 = [v0 sharedApplication];
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    sub_10046187C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1002C56EC(&unk_100781820, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 openURL:v9 options:isa completionHandler:0];
  }

  return v5;
}

uint64_t sub_1002C0364()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_100058000(&unk_100772740);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v24 = v1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
      swift_beginAccess();
      (*(v8 + 16))(v10, &v15[v16], v7);
      TTRLazilyLoadedViewModelState.viewModel.getter();
      (*(v8 + 8))(v10, v7);
      v17 = type metadata accessor for TTRRemindersListViewModel.Reminder();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v13, 1, v17) == 1)
      {

        swift_unknownObjectRelease();
        sub_1000079B4(v13, &qword_100772738);
      }

      else
      {
        v26 = v17;
        v27 = &protocol witness table for TTRRemindersListViewModel.Reminder;
        v19 = sub_1000317B8(&v25);
        (*(v18 + 32))(v19, v13, v17);
        sub_100005FD0(&v25, v28);
        sub_10000C36C(v28, v28[3]);
        v20 = dispatch thunk of TTRIRemindersListReminderCellViewModel.imageAttachments.getter();
        if (v20)
        {
          if (*(v20 + 16))
          {
            v21 = v24;
            (*(v24 + 16))(v3, v20 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v0);

            (*(v21 + 32))(v6, v3, v0);
            v22 = TTRRemindersListViewModel.ImageAttachment.attachmentID.getter();
            sub_1001CD5E4(v15, v22, 0, 0);

            swift_unknownObjectRelease();
            (*(v21 + 8))(v6, v0);
            sub_100004758(v28);
            return 1;
          }
        }

        swift_unknownObjectRelease();
        sub_100004758(v28);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1002C0774(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      a3(v5);

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1002C080C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result contentView];

    type metadata accessor for TTRIBoardReminderCellContentView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3 + qword_100786D58;
      swift_beginAccess();
      v5 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
      result = (*(*(v5 - 8) + 48))(v4, 1, v5);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v6 = TTRBoardReminderCellSuggestedSectionConfiguration.onSuggestedSectionPress.getter();
        if (v6)
        {
          v7 = v6;
          v8 = swift_endAccess();
          v7(v8);

          sub_1000301AC(v7);
        }

        else
        {
          swift_endAccess();
        }

        return 1;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for TTRIBoardReminderCell()
{
  result = qword_100778E78;
  if (!qword_100778E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C0BC4()
{
  sub_1002C0DA8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRRectCorners();
    if (v1 <= 0x3F)
    {
      sub_100014068(319, &qword_100778E90, &qword_10078A3B0);
      if (v2 <= 0x3F)
      {
        sub_100014068(319, &qword_100778E98, &qword_100778EA0);
        if (v3 <= 0x3F)
        {
          sub_100014068(319, &qword_100778EA8, &qword_100778EB0);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1002C0DA8()
{
  if (!qword_100778E88)
  {
    type metadata accessor for TTRRemindersListViewModel.Reminder();
    v0 = type metadata accessor for TTRLazilyLoadedViewModelState();
    if (!v1)
    {
      atomic_store(v0, &qword_100778E88);
    }
  }
}

uint64_t sub_1002C0E00()
{
  v1 = sub_100058000(&unk_100772740);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  v5 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v12, v1);
  TTRLazilyLoadedViewModelState.viewModel.getter();
  (*(v2 + 8))(v4, v1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_100772738);
    v13 = 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v13 = dispatch thunk of TTRIRemindersListReminderCellViewModel.isCompleted.getter();
    (*(v9 + 8))(v11, v8);
  }

  return v13 & 1;
}

uint64_t sub_1002C1088()
{
  v1 = sub_100058000(&unk_100772740);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - v3;
  v5 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v30 = *(v15 - 8);
  __chkstk_darwin(v15);
  v27 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    v29 = v15;
    v18 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
    swift_beginAccess();
    (*(v2 + 16))(v4, v0 + v18, v1);
    TTRLazilyLoadedViewModelState.viewModel.getter();
    (*(v2 + 8))(v4, v1);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      swift_unknownObjectRelease();
      sub_1000079B4(v7, &qword_100772738);
      (*(v30 + 56))(v14, 1, 1, v29);
LABEL_7:
      sub_1000079B4(v14, &qword_100772140);
      return 0;
    }

    (*(v9 + 32))(v11, v7, v8);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    v19 = v29;
    v20 = v30;
    (*(v30 + 56))(v14, 0, 1, v29);
    (*(v9 + 8))(v11, v8);
    if ((*(v20 + 48))(v14, 1, v19) == 1)
    {
      swift_unknownObjectRelease();
      goto LABEL_7;
    }

    v21 = v27;
    (*(v20 + 32))(v27, v14, v19);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v23 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v24);
      v25 = (*(*(v23 + 8) + 1112))(v21, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v25 = 0;
    }

    (*(v20 + 8))(v21, v19);
    return v25;
  }

  return result;
}

uint64_t sub_1002C1564()
{
  v1 = sub_100058000(&unk_100772740);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - v3;
  v5 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v27 = *(v14 - 8);
  __chkstk_darwin(v14);
  v24 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = v14;
    v16 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
    swift_beginAccess();
    (*(v2 + 16))(v4, v0 + v16, v1);
    TTRLazilyLoadedViewModelState.viewModel.getter();
    (*(v2 + 8))(v4, v1);
    v17 = v26;
    if ((*(v26 + 48))(v7, 1, v8) == 1)
    {
      swift_unknownObjectRelease();
      sub_1000079B4(v7, &qword_100772738);
      (*(v27 + 56))(v13, 1, 1, v25);
    }

    else
    {
      (*(v17 + 32))(v10, v7, v8);
      dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
      v19 = v27;
      v20 = v25;
      (*(v27 + 56))(v13, 0, 1, v25);
      (*(v17 + 8))(v10, v8);
      if ((*(v19 + 48))(v13, 1, v20) != 1)
      {
        v21 = v24;
        (*(v19 + 32))(v24, v13, v20);
        v18 = sub_1001CD8F4(v21);
        swift_unknownObjectRelease();
        (*(v19 + 8))(v21, v20);
        return v18 & 1;
      }

      swift_unknownObjectRelease();
    }

    sub_1000079B4(v13, &qword_100772140);
    v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void *sub_1002C19D4()
{
  v1 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_customAccessibilityElement;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1002C1A20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_customAccessibilityElement;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1002C1B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v67 = a4;
  v68 = a1;
  v5 = sub_100058000(&unk_100781940);
  __chkstk_darwin(v5 - 8);
  v66 = v52 - v6;
  v7 = type metadata accessor for TTRReminderCellInlineHashtagVisibility();
  __chkstk_darwin(v7 - 8);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRReminderHashtagData();
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10);
  v57 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TTRReminderCellStyle();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  __chkstk_darwin(v14 - 8);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for TTRIReminderCellNotesViewModel();
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&qword_100778FC8);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v63 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v52 - v22;
  v24 = sub_100058000(&qword_100772730);
  __chkstk_darwin(v24 - 8);
  v26 = v52 - v25;
  sub_10000794C(a2, v52 - v25, &qword_100772730);
  v27 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1000079B4(v26, &qword_100772730);
    goto LABEL_6;
  }

  v29 = TTRBoardColumnItemIntermediateViewModel.isEditingItem.getter();
  (*(v28 + 8))(v26, v27);
  if ((v29 & 1) == 0)
  {
LABEL_6:
    v31 = TTRRemindersListViewModel.Reminder.attributedNotes.getter();
    if (v31)
    {
      v32 = v31;
      v33 = [v31 length];

      v30 = v33 < 1;
      if (v62)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v30 = 1;
      if (v62)
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    v36 = &enum case for TTRBoardReminderCellOptionalUpdate.keepCurrent<A>(_:);
    goto LABEL_16;
  }

  v30 = 0;
  if ((v62 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  sub_100003540(0, &qword_100771DF0);
  v54 = v9;
  v53 = v30;
  if (IsBoldTextEnabled)
  {
    v35 = static UIFont.roundedHeadlineFont.getter();
  }

  else
  {
    v35 = static UIFont.roundedSubheadlineFont.getter();
  }

  v37 = v35;
  v52[1] = v16;
  TTRRemindersListViewModel.Reminder.item.getter();
  TTRRemindersListViewModel.Reminder.style.getter();
  v62 = TTRReminderCellStyle.allowsEditing.getter();
  (*(v55 + 8))(v13, v56);
  v56 = TTRRemindersListViewModel.Reminder.attributedNotes.getter();
  sub_100058000(&qword_100778FD0);
  inited = swift_initStackObject();
  *(inited + 32) = NSFontAttributeName;
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 40) = v37;
  *(inited + 48) = NSForegroundColorAttributeName;
  v39 = objc_opt_self();
  v40 = NSFontAttributeName;
  v41 = v37;
  v42 = NSForegroundColorAttributeName;
  *(inited + 56) = [v39 secondaryLabelColor];
  sub_1004619A4(inited);
  swift_setDeallocating();
  sub_100058000(&qword_100778FD8);
  swift_arrayDestroy();
  v43 = v57;
  TTRRemindersListViewModel.Reminder.hashtagData.getter();
  TTRReminderHashtagData.inlineHashtagVisibility.getter();
  (*(v59 + 8))(v43, v60);
  TTRRemindersListViewModel.Reminder.supportsStylingInNote.getter();
  v44 = v58;
  TTRIReminderCellNotesViewModel.init(item:allowsEditing:notes:baseTextStyles:inlineHashtagVisibility:supportsStyling:)();
  v45 = *(sub_100058000(&qword_100778FE0) + 48);
  v46 = v61;
  v47 = v64;
  (*(v61 + 16))(v23, v44, v64);
  if (qword_100767128 != -1)
  {
    swift_once();
  }

  v48 = TTRCounterBasedIdentifierGenerator.allocID()();

  (*(v46 + 8))(v44, v47);
  *&v23[v45] = v48;
  v36 = &enum case for TTRBoardReminderCellOptionalUpdate.update<A>(_:);
LABEL_16:
  (*(v19 + 104))(v23, *v36, v18);
  v49 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_notesModule;
  v50 = v65;
  swift_beginAccess();
  sub_10000794C(v50 + v49, v66, &unk_100781940);
  (*(v19 + 16))(v63, v23, v18);
  sub_100058000(&qword_100775A90);
  TTRBoardReminderCellNotesConfiguration.init(isHidden:module:viewModelUpdate:)();
  return (*(v19 + 8))(v23, v18);
}

void *sub_1002C2358(uint64_t a1)
{
  v2 = sub_100058000(&qword_100778FB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v51 - v3;
  TTRRemindersListViewModel.Reminder.displayDate.getter();
  v5 = type metadata accessor for TTRRemindersListViewModel.DisplayDate();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &qword_100778FB0);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = TTRRemindersListViewModel.DisplayDate.string.getter();
    v8 = v9;
    (*(v6 + 8))(v4, v5);
  }

  v53 = TTRRemindersListViewModel.Reminder.urgentIconString.getter();
  v54 = v10;
  v11 = TTRRemindersListViewModel.Reminder.recurrenceDescription.getter();
  v13 = v11;
  v14 = v12;
  v55 = a1;
  if (v8)
  {
    v57 = v8;
    if (v12)
    {
      static TTRLocalizableStrings.Common.dueDateAndRecurrenceFormat.getter();
      sub_100058000(&unk_100786CB0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_10062D3F0;
      *(v15 + 56) = &type metadata for String;
      v16 = sub_10005C390();
      v17 = v57;
      *(v15 + 32) = v7;
      *(v15 + 40) = v17;
      *(v15 + 96) = &type metadata for String;
      *(v15 + 104) = v16;
      *(v15 + 64) = v16;
      *(v15 + 72) = v13;
      *(v15 + 80) = v14;
LABEL_9:
      v19 = static String.localizedStringWithFormat(_:_:)();
      v57 = v20;
      v52 = v19;

      goto LABEL_12;
    }

    v52 = v7;
  }

  else
  {
    if (v12)
    {
      static TTRLocalizableStrings.Common.recurrenceFormat.getter();
      sub_100058000(&unk_100786CB0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10062D400;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_10005C390();
      *(v18 + 32) = v13;
      *(v18 + 40) = v14;
      goto LABEL_9;
    }

    v52 = v11;
    v57 = 0;
  }

LABEL_12:
  sub_100058000(&unk_100776BD0);
  inited = swift_initStackObject();
  v56 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = NSForegroundColorAttributeName;
  v22 = objc_opt_self();
  v23 = NSForegroundColorAttributeName;
  v24 = [v22 secondaryLabelColor];
  v25 = sub_100003540(0, &qword_100772610);
  *(inited + 64) = v25;
  *(inited + 40) = v24;
  sub_100460A28(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_100776BE0);
  v26 = TTRRemindersListViewModel.Reminder.showsAsOverdue.getter();
  v27 = &selRef_ttr_systemRedColor;
  if ((v26 & 1) == 0)
  {
    v27 = &selRef_secondaryLabelColor;
  }

  v28 = [v22 *v27];
  v29 = swift_initStackObject();
  *(v29 + 16) = v56;
  *(v29 + 32) = v23;
  *(v29 + 64) = v25;
  *(v29 + 40) = v28;
  v30 = v28;
  sub_100460A28(v29);
  swift_setDeallocating();
  sub_1000079B4(v29 + 32, &unk_100776BE0);
  if (TTRRemindersListViewModel.Reminder.showsAsOverdue.getter())
  {
    ShouldDifferentiateWithoutColor = UIAccessibilityShouldDifferentiateWithoutColor();
    v32 = v54;
    if (ShouldDifferentiateWithoutColor)
    {
      static TTRAccesibility.ImagePlaceholders.DifferentiateWithoutColors_Overdue.getter();
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
    v32 = v54;
  }

  type metadata accessor for TTRRemindersListViewModel();
  v35 = static TTRRemindersListViewModel.reminderDescription(baseAttributes:dateAttributes:listNameToShow:dateString:recurrenceString:urgentIconString:assignmentString:ttrAccessibilityOverdueIconString:)();

  if (!v34)
  {
    goto LABEL_22;
  }

  if (v35)
  {
    sub_100058000(&qword_100778FB8);
    v36 = swift_initStackObject();
    *(v36 + 16) = v56;
    *(v36 + 32) = static TTRAccesibility.ImagePlaceholders.DifferentiateWithoutColors_Overdue.getter();
    *(v36 + 40) = v37;
    *(v36 + 48) = static TTRAccesibility.DifferentiateWithoutColorsIcons.OverdueReminder.getter();
    *(v36 + 56) = v38;
    *(v36 + 64) = v30;
    v39 = v30;
    v40 = sub_100461A9C(v36);
    swift_setDeallocating();
    sub_1000079B4(v36 + 32, &qword_100778FC0);
    v41 = NSAttributedString.replacePlaceholdersWithSymbols(placeholderToSymbolNames:)(v40);

    v35 = v41;
LABEL_22:
    if (v32)
    {

      if (v35)
      {
        sub_100058000(&qword_100778FB8);
        v42 = swift_initStackObject();
        *(v42 + 16) = v56;
        *(v42 + 32) = static TTRLocalizableStrings.Common.urgentImagePlaceholder.getter();
        *(v42 + 40) = v43;
        *(v42 + 48) = 0x6D72616C61;
        *(v42 + 56) = 0xE500000000000000;
        *(v42 + 64) = v30;
        v44 = v30;
        v45 = sub_100461A9C(v42);
        swift_setDeallocating();
        sub_1000079B4(v42 + 32, &qword_100778FC0);
        v46 = NSAttributedString.replacePlaceholdersWithSymbols(placeholderToSymbolNames:)(v45);

        v35 = v46;
      }
    }

    goto LABEL_28;
  }

  if (v32)
  {
  }

  v35 = 0;
LABEL_28:
  if ((TTRRemindersListViewModel.Reminder.hasTimeZoneDifferentDayString.getter() & 1) != 0 && v35)
  {
    static TTRLocalizableStrings.Common.plusOneImagePlaceholder.getter();
    v47 = static TTRLocalizableStrings.TimeZone.plusOneDay.getter();
    __chkstk_darwin(v47);
    v48 = NSAttributedString.replaceTimeZonePlaceholderWithTextEncapsulation(placeholder:dayString:timeZoneEncapsulationProvider:overrideFont:)();

    static TTRLocalizableStrings.Common.minusOneImagePlaceholder.getter();
    v49 = static TTRLocalizableStrings.TimeZone.minusOneDay.getter();
    __chkstk_darwin(v49);
    v35 = NSAttributedString.replaceTimeZonePlaceholderWithTextEncapsulation(placeholder:dayString:timeZoneEncapsulationProvider:overrideFont:)();
  }

  else
  {
  }

  return v35;
}

uint64_t sub_1002C2A78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_100772730);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_100058000(&qword_100778F68);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_100058000(&qword_100778FA8);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.LocationData();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Reminder.location.getter();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000079B4(v12, &qword_100778FA8);
    return TTRBoardReminderCellLocationConfiguration.init(icon:attributedDescription:preferredSymbolConfiguration:)();
  }

  else
  {
    v43 = a2;
    (*(v14 + 32))(v16, v12, v13);
    sub_10000794C(a1, v6, &qword_100772730);
    v18 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
    v19 = *(v18 - 8);
    v20 = (*(v19 + 48))(v6, 1, v18);
    v41 = v14;
    v42 = v13;
    if (v20 == 1)
    {
      sub_1000079B4(v6, &qword_100772730);
      v21 = 1;
    }

    else
    {
      TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
      (*(v19 + 8))(v6, v18);
      v21 = 0;
    }

    v22 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel.ItemLevel();
    (*(*(v22 - 8) + 56))(v9, v21, 1, v22);
    v23 = sub_100003540(0, &qword_100771DF0);
    v24 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
    sub_1000079B4(v9, &qword_100778F68);
    v25 = [objc_opt_self() configurationWithFont:v24 scale:1];
    v26 = String._bridgeToObjectiveC()();
    v40 = [objc_opt_self() systemImageNamed:v26 withConfiguration:v25];

    v39 = TTRRemindersListViewModel.LocationData.localizedLabelFormatString.getter();
    v38 = v27;
    v37 = TTRRemindersListViewModel.LocationData.locationName.getter();
    v36 = sub_100003540(0, &qword_1007708F0);
    sub_100058000(&unk_100776BD0);
    inited = swift_initStackObject();
    v35 = xmmword_10062D400;
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 64) = v23;
    *(inited + 40) = v24;
    v29 = NSFontAttributeName;
    v30 = v24;
    sub_100460A28(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_100776BE0);
    v31 = swift_initStackObject();
    *(v31 + 16) = v35;
    *(v31 + 32) = v29;
    *(v31 + 64) = v23;
    *(v31 + 40) = v30;
    v32 = v30;
    sub_100460A28(v31);
    swift_setDeallocating();
    sub_1000079B4(v31 + 32, &unk_100776BE0);
    v33 = static NSAttributedString.formattedString(format:formatAttributes:content:contentAttributes:)();

    if (TTRRemindersListViewModel.LocationData.hasStrikethroughStyling.getter())
    {
      v44.value.super.isa = [objc_opt_self() secondaryLabelColor];
      isa = v44.value.super.isa;
      NSAttributedString.addingStrikethrough(color:)(v44);
    }

    TTRBoardReminderCellLocationConfiguration.init(icon:attributedDescription:preferredSymbolConfiguration:)();

    return (*(v41 + 8))(v16, v42);
  }
}

uint64_t sub_1002C30A0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  __chkstk_darwin(v2 - 8);
  v26 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRBoardReminderCellURLConfiguration.Attachment();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = TTRRemindersListViewModel.Reminder.linkAttachments.getter();
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v19[1] = a1;
      v19[2] = v9;
      v12 = *(v6 + 16);
      v11 = v6 + 16;
      v13 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v21 = *(v11 + 56);
      v22 = v12;
      v23 = v11;
      v19[3] = v27 + 32;
      v20 = (v11 - 8);
      v14 = _swiftEmptyArrayStorage;
      do
      {
        v15 = v24;
        v22(v8, v13, v24);
        TTRRemindersListViewModel.LinkAttachment.url.getter();
        TTRRemindersListViewModel.LinkAttachment.attachmentID.getter();
        TTRRemindersListViewModel.LinkAttachment.metadata.getter();
        TTRBoardReminderCellURLConfiguration.Attachment.init(url:attachmentID:metadata:)();
        (*v20)(v8, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100548138(0, v14[2] + 1, 1, v14);
        }

        v17 = v14[2];
        v16 = v14[3];
        if (v17 >= v16 >> 1)
        {
          v14 = sub_100548138(v16 > 1, v17 + 1, 1, v14);
        }

        v14[2] = v17 + 1;
        (*(v27 + 32))(v14 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v17, v5, v25);
        v13 += v21;
        --v10;
      }

      while (v10);
    }
  }

  return TTRBoardReminderCellURLConfiguration.init(attachments:)();
}

uint64_t sub_1002C33B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for TTRAssigneeCandidateData();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100778EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_100058000(&unk_100775910);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  sub_10000794C(a1, v11, &qword_100778EE0);
  v15 = type metadata accessor for TTRRemindersListViewModel.AssignmentData();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v11, 1, v15) == 1)
  {
    sub_1000079B4(v11, &qword_100778EE0);
  }

  else
  {
    v22 = a1;
    TTRRemindersListViewModel.AssignmentData.assignment.getter();
    (*(v16 + 8))(v11, v15);
    v18 = type metadata accessor for TTRAssignment();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v14, 1, v18) == 1)
    {
      sub_1000079B4(v14, &unk_100775910);
    }

    else
    {
      TTRAssignment.assignee.getter();
      (*(v19 + 8))(v14, v18);
      TTRAssigneeCandidateData.contact.getter();
      (*(v23 + 8))(v5, v24);
    }

    a1 = v22;
  }

  sub_10000794C(a1, v8, &qword_100778EE0);
  if (v17(v8, 1, v15) == 1)
  {
    sub_1000079B4(v8, &qword_100778EE0);
  }

  else
  {
    TTRRemindersListViewModel.AssignmentData.assignmentString.getter();
    (*(v16 + 8))(v8, v15);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  return TTRBoardReminderCellAssigneeConfiguration.init(contact:name:onAssigneePress:)();
}

uint64_t sub_1002C3794@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v1 = sub_100058000(&qword_100778ED8);
  __chkstk_darwin(v1 - 8);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v11 - v5;
  TTRRemindersListViewModel.Reminder.appLink.getter();
  v7 = type metadata accessor for TTRRemindersListViewModel.AppLink();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100778ED8);
  }

  else
  {
    TTRRemindersListViewModel.AppLink.icon.getter();
    (*(v8 + 8))(v6, v7);
  }

  TTRRemindersListViewModel.Reminder.appLink.getter();
  if (v9(v3, 1, v7) == 1)
  {
    sub_1000079B4(v3, &qword_100778ED8);
  }

  else
  {
    TTRRemindersListViewModel.AppLink.name.getter();
    (*(v8 + 8))(v3, v7);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  return TTRBoardReminderCellAppLinkConfiguration.init(icon:name:onAppLinkPress:)();
}

void sub_1002C39CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1002BD6D4(a2, 0);
  }
}

uint64_t sub_1002C3A2C()
{
  v0 = sub_100058000(&qword_100776378);
  __chkstk_darwin(v0);
  v2 = (&v21 - v1);
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    TTRRemindersListViewModel.Reminder.item.getter();
    TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.getter();
    v9 = type metadata accessor for TTRRemindersListViewModel.SuggestedSectionDisplayStyle();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v2, 1, v9) != 1)
    {
      v11 = (*(v10 + 88))(v2, v9);
      if (v11 == enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.show(_:))
      {
        (*(v10 + 96))(v2, v9);
        v12 = *v2;
        v13 = v2[1];

        if (swift_unknownObjectWeakLoadStrong())
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v15 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
            v16 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
            sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v15);
            (*(*(v16 + 8) + 1048))(v6, v12, v13, v15);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return (*(v4 + 8))(v6, v3);
      }

      if (v11 != enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.hide(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }

    if (qword_100767120 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003E30(v17, qword_100778DE8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Should not be able to trigger didPressSuggestedSectionFor as button should be hidden when no suggestion available", v20, 2u);
    }

    else
    {
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_1002C3DDC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1001CD308(v3, a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1002C3E6C(uint64_t a1, void (*a2)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      a2(v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1002C3EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1001CD5E4(v7, a1, a2, a3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1002C3FA8()
{
  v1 = [v0 contentView];
  type metadata accessor for TTRIBoardReminderCellContentView();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  if (*(result + qword_100786CF0))
  {
    __chkstk_darwin(result);

    v3 = TTRGridViewPredefinedContentPopulator.makeViewHiddenOnRemoval(for:createIfNeeded:)();

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C409C()
{
  v1 = [v0 contentView];
  type metadata accessor for TTRIBoardReminderCellContentView();
  if (swift_dynamicCastClass())
  {
    sub_1004C149C();
    v3 = v2;
  }

  else
  {

    return 0;
  }

  return v3;
}

void sub_1002C410C(uint64_t a1)
{
  v3 = [v1 contentView];
  type metadata accessor for TTRIBoardReminderCellContentView();
  if (swift_dynamicCastClass())
  {
    sub_1004C1558(a1);
  }
}

double sub_1002C4188@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  swift_getObjectType();
  sub_1002C44E0(a1, a2, v7, v10);
  result = *v10;
  v9 = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = v9;
  *(a3 + 32) = v11;
  return result;
}

uint64_t sub_1002C41F8()
{
  v1 = sub_100058000(&qword_100778EB0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - v3;
  v5 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_autoCompleteModule;
  swift_beginAccess();
  if ((*(v2 + 48))(v0 + v5, 1, v1))
  {
    v6 = 0;
  }

  else
  {
    (*(v2 + 16))(v4, v0 + v5, v1);
    TTRRemindersListInCellModule.interface.getter();
    (*(v2 + 8))(v4, v1);
    v6 = sub_1002F8590();
    swift_unknownObjectRelease();
  }

  return v6 & 1;
}

id sub_1002C4478(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_1002C44E0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v51[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.cell(_:))
  {
    [a3 bounds];
    goto LABEL_3;
  }

  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryText(_:))
  {
    v19 = [a3 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      if (*(v20 + qword_100786CF0))
      {
        v21 = v20;
        LOBYTE(v51[0]) = 2;

        v22 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

        if (v22)
        {
          type metadata accessor for TTRIReminderTitleTextView();
          v23 = swift_dynamicCastClass();
          if (v23)
          {
            v24 = v23;
            [v23 bounds];
            [v21 convertRect:v24 fromCoordinateSpace:?];
            v54 = CGRectInset(v53, 0.0, -12.0);
            x = v54.origin.x;
            y = v54.origin.y;
            width = v54.size.width;
            height = v54.size.height;
            [v21 bounds];
            v59.origin.x = v29;
            v59.origin.y = v30;
            v59.size.width = v31;
            v59.size.height = v32;
            v55.origin.x = x;
            v55.origin.y = y;
            v55.size.width = width;
            v55.size.height = height;
            CGRectIntersection(v55, v59);

            goto LABEL_3;
          }

LABEL_28:

          goto LABEL_3;
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryTextCaret(_:))
  {
    v19 = [a3 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_26;
    }

    sub_1004C1A18(v51);
LABEL_24:
    v45 = v51[0];
    v46 = v51[1];
    v47 = v51[2];
    v48 = v51[3];
    v49 = v52;

    if (v49)
    {
      v18 = 1;
      v14 = v45;
      v15 = v46;
      v16 = v47;
      v17 = v48;
      goto LABEL_4;
    }

LABEL_3:
    [a2 convertRect:a3 fromCoordinateSpace:?];
    v18 = 0;
LABEL_4:
    *a4 = v14;
    *(a4 + 8) = v15;
    *(a4 + 16) = v16;
    *(a4 + 24) = v17;
    *(a4 + 32) = v18;
    return;
  }

  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryText(_:))
  {
    v19 = [a3 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      if (*(v33 + qword_100786CF0))
      {
        v34 = v33;
        LOBYTE(v51[0]) = 7;

        v22 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

        if (v22)
        {
          type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView();
          v35 = swift_dynamicCastClass();
          if (v35)
          {
            v36 = v35;
            [v35 bounds];
            [v34 convertRect:v36 fromCoordinateSpace:?];
            v57 = CGRectInset(v56, 0.0, -12.0);
            v37 = v57.origin.x;
            v38 = v57.origin.y;
            v39 = v57.size.width;
            v40 = v57.size.height;
            [v34 bounds];
            v60.origin.x = v41;
            v60.origin.y = v42;
            v60.size.width = v43;
            v60.size.height = v44;
            v58.origin.x = v37;
            v58.origin.y = v38;
            v58.size.width = v39;
            v58.size.height = v40;
            CGRectIntersection(v58, v60);

            goto LABEL_3;
          }

          goto LABEL_28;
        }

LABEL_20:

        goto LABEL_3;
      }

      goto LABEL_30;
    }

LABEL_26:

    v18 = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_4;
  }

  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryTextCaret(_:))
  {
    v19 = [a3 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_26;
    }

    sub_1004C1A34(v51);
    goto LABEL_24;
  }

LABEL_31:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_1002C49E0()
{
  v0 = type metadata accessor for TTRReminderHashtagData();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for REMHashtagLabelCollection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Reminder.hashtagData.getter();
  v8 = TTRReminderHashtagData.tags.getter();
  (*(v1 + 8))(v3, v0);
  v26 = v8;
  sub_100058000(&qword_100778F98);
  sub_10000E188(&qword_100778FA0, &qword_100778F98);
  REMHashtagLabelCollection.init<A>(hashtags:)();
  v9 = REMHashtagLabelCollection.labels.getter();
  (*(v5 + 8))(v7, v4);
  v26 = v9;
  sub_100058000(&unk_100781F20);
  sub_10000E188(&qword_10076DB20, &unk_100781F20);
  v10 = static REMHashtagLabelCollection.sortedLabels<A>(from:)();

  v11 = *(v10 + 16);
  if (v11)
  {
    v28 = _swiftEmptyArrayStorage;
    sub_1004A1CD0(0, v11, 0);
    v12 = v28;
    v13 = (v10 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      v26 = static String.hashtagTokenDefaultPrefix.getter();
      v27 = v16;

      v17._countAndFlagsBits = v14;
      v17._object = v15;
      String.append(_:)(v17);

      v18 = v26;
      v19 = v27;
      v28 = v12;
      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        sub_1004A1CD0((v20 > 1), v21 + 1, 1);
        v12 = v28;
      }

      v12[2] = v21 + 1;
      v22 = &v12[2 * v21];
      v22[4] = v18;
      v22[5] = v19;
      v13 += 2;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = _swiftEmptyArrayStorage;
  }

  v26 = v12;
  sub_10000E188(&qword_100771E20, &unk_100781F20);
  v23 = BidirectionalCollection<>.joined(separator:)();

  return v23;
}

uint64_t sub_1002C4D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v30 = a2;
  v28 = a1;
  v4 = sub_100058000(&qword_100771588);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel();
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_100778EB0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v18 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_autoCompleteModule;
  swift_beginAccess();
  result = (*(v15 + 48))(v3 + v18, 1, v14);
  if (!result)
  {
    v27 = v6;
    v20 = v30;
    (*(v15 + 16))(v17, v3 + v18, v14);
    TTRRemindersListInCellModule.interface.getter();
    (*(v15 + 8))(v17, v14);
    v21 = v31;
    v22 = OBJC_IVAR____TtC9Reminders37TTRIReminderCellAutoCompletePresenter_viewModel;
    swift_beginAccess();
    sub_10000794C(v21 + v22, v9, &qword_100771588);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      swift_unknownObjectRelease();
      return sub_1000079B4(v9, &qword_100771588);
    }

    else
    {
      sub_1002C5104(v9, v13, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
      if ((v13[v10[5]] & 1) == 0)
      {
        v23 = v10[7];
        v24 = v29;

        *&v13[v23] = v24;
        v25 = &v13[v10[6]];

        *v25 = v28;
        *(v25 + 1) = v20;
        v26 = v27;
        sub_1002C516C(v13, v27);
        (*(v11 + 56))(v26, 0, 1, v10);
        sub_1002F82D8(v26);
      }

      swift_unknownObjectRelease();
      return sub_1002C51D0(v13, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
    }
  }

  return result;
}

uint64_t sub_1002C5104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002C516C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C51D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002C5230(uint64_t a1, void (*a2)(void))
{
  v4 = [v2 contentView];
  type metadata accessor for TTRIBoardReminderCellContentView();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  if (!*(result + qword_100786CF0))
  {
    __break(1u);
    return result;
  }

  v6 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

  result = 0;
  if (v6)
  {
    a2(0);
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

id sub_1002C5358()
{
  type metadata accessor for URL();

  return sub_1002C021C();
}

uint64_t sub_1002C54C8()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002C55A4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for TTRRemindersListViewModel.Reminder() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

id sub_1002C56A8()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "invalidateIntrinsicContentSize");
}

uint64_t sub_1002C56EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002C57A0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListBadgeView.Shape();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TTRListBadgeView.ImageContentMode();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRListBadgeView.ImageParams();
  __chkstk_darwin(v7 - 8);
  v8 = *&v0[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
  v9 = objc_opt_self();
  v10 = [v9 secondaryLabelColor];
  [v8 setTextColor:v10];

  sub_100003540(0, &qword_100771DF0);
  v11 = static UIFont.roundedFootnoteFont.getter();
  [v8 setFont:v11];

  v12 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel];
  v38 = v1;
  v13 = [v9 labelColor];
  [v12 setTextColor:v13];

  v14 = static UIFont.roundedBodyFont.getter();
  [v12 setFont:v14];

  v15 = *&v1[OBJC_IVAR____TtC9Reminders37TTRIAccountsListsSuggestGroceriesCell_badge];
  sub_100003540(0, &qword_10076FCB0);
  static UIImage.ttr_systemSymbolImage(named:)();
  dispatch thunk of TTRListBadgeView.image.setter();
  (*(v4 + 104))(v6, enum case for TTRListBadgeView.ImageContentMode.center(_:), v34);
  v16 = [v9 whiteColor];
  TTRListBadgeView.ImageParams.init(color:blendMode:contentMode:)();
  dispatch thunk of TTRListBadgeView.imageParams.setter();
  (*(v36 + 104))(v35, enum case for TTRListBadgeView.Shape.round(_:), v37);
  dispatch thunk of TTRListBadgeView.shape.setter();
  dispatch thunk of TTRListBadgeView.imageColor.setter();
  v17 = [v9 systemGreenColor];
  [v15 setTintColor:v17];

  sub_100058000(&qword_10076B780);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10062D410;
  *(v18 + 32) = [v9 whiteColor];
  *(v18 + 40) = [v9 systemGreenColor];
  sub_100003540(0, &qword_100772610);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = objc_opt_self();
  v21 = [v20 configurationWithPaletteColors:isa];

  v22 = v21;
  v23 = static UIFont.roundedSubheadlineSemiboldFont.getter();
  v24 = [v20 configurationWithFont:v23];

  v25 = [v22 configurationByApplyingConfiguration:v24];
  v26 = v25;
  v27 = [v20 configurationWithScale:3];
  v28 = [v26 configurationByApplyingConfiguration:v27];

  v29 = v28;
  v30 = static UIImage.ttr_systemSymbolImage(named:withConfiguration:)();

  v31 = [objc_allocWithZone(UIImageView) initWithImage:v30];
  v32 = v31;
  [v38 setAccessoryView:v32];
}

char *sub_1002C5D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for TTRListBadgeView();
  *&v3[OBJC_IVAR____TtC9Reminders37TTRIAccountsListsSuggestGroceriesCell_badge] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = OBJC_IVAR____TtC9Reminders37TTRIAccountsListsSuggestGroceriesCell_badge;
  v10 = *&v8[OBJC_IVAR____TtC9Reminders37TTRIAccountsListsSuggestGroceriesCell_badge];
  v11 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView;
  v12 = *&v8[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView];
  v13 = v8;
  v14 = v10;
  [v12 bounds];
  [v14 setFrame:?];

  [*&v8[v9] setAutoresizingMask:18];
  [*&v8[v11] addSubview:*&v8[v9]];
  [*&v13[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView] setEnabled:0];

  return v13;
}

uint64_t type metadata accessor for TTRIAccountsListsSuggestGroceriesCell()
{
  result = qword_100779020;
  if (!qword_100779020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002C5FDC()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1002C6048()
{
  v1 = sub_100058000(&qword_100779390);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v25 - v3;
  v5 = type metadata accessor for Date();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100779398);
  v26 = *(v10 - 8);
  v27 = v10;
  __chkstk_darwin(v10);
  v12 = v25 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(v0 + 24);
    v16 = [objc_opt_self() sharedApplication];
    [v16 userInterfaceLayoutDirection];

    Date.init()();
    TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration.init(isRightToLeft:timestamp:)();
    v17 = TTRReminderPrintingPresenterCapability.fetchAndGenerateHTML(configuration:)();
    v25[2] = v17;
    (*(v7 + 8))(v9, v6);
    v28 = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v15;
    swift_unknownObjectRetain();
    v25[1] = static Subscribers.Demand.unlimited.getter();
    v25[0] = sub_100058000(&qword_1007793A8);
    sub_100058000(&unk_10076DFD0);
    sub_100058000(&qword_10076DFA8);
    sub_10000E188(&qword_1007793B0, &qword_1007793A8);
    sub_10000E188(&qword_10076DFB8, &qword_10076DFA8);
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    sub_10000E188(&qword_1007793B8, &qword_100779398);
    v19 = v27;
    v20 = Publisher.eraseToAnyPublisher()();
    swift_unknownObjectRelease();
    (*(v26 + 8))(v12, v19);
  }

  else
  {
    v21 = objc_opt_self();
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 internalErrorWithDebugDescription:v22];

    v28 = v23;
    sub_100058000(&unk_10076DFD0);
    sub_100058000(&qword_1007699F0);
    Fail.init(error:)();
    sub_10000E188(&qword_1007793A0, &qword_100779390);
    v20 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
  }

  return v20;
}

uint64_t sub_1002C6564@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = sub_100058000(&qword_1007793C0);
  v4 = *(v3 - 8);
  v20 = v3;
  v21 = v4;
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  v7 = sub_100058000(&qword_1007793C8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for TTRRemindersPrintingHTMLResult();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C68A8(a1, v10);
  v15 = *(v8 + 56);
  (*(v12 + 32))(v14, v10, v11);
  sub_100005FD0(&v10[v15], v25);
  v24 = sub_1005A8850(v14);
  sub_10000B0D8(v25, v23);
  v16 = swift_allocObject();
  sub_100005FD0(v23, v16 + 16);
  sub_100058000(&qword_1007793D0);
  sub_100058000(&unk_10076DFD0);
  sub_10000E188(&qword_1007793D8, &qword_1007793D0);
  Publisher.map<A>(_:)();

  sub_10000E188(&qword_1007793E0, &qword_1007793C0);
  v17 = v20;
  v18 = Publisher.eraseToAnyPublisher()();
  (*(v21 + 8))(v6, v17);
  sub_100004758(v25);
  result = (*(v12 + 8))(v14, v11);
  *v22 = v18;
  return result;
}

uint64_t sub_1002C68A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007793C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1002C6918@<X0>(id *a1@<X0>, id *a2@<X8>)
{
  v4 = *a1;
  *a2 = *a1;
  sub_10000B0D8(v2 + 16, (a2 + 1));

  return v4;
}

uint64_t sub_1002C6960()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007793E8);
  v1 = sub_100003E30(v0, qword_1007793E8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1002C6A28(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v11 - 8);
  v37 = &v35 - v12;
  v36 = type metadata accessor for UICellAccessory.Placement();
  v13 = *(v36 - 8);
  __chkstk_darwin(v36);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v16 = *(v38 - 8);
  __chkstk_darwin(v38);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_dynamicGlyphCache;
  v20 = sub_100058000(&qword_100779468);
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_predefinedSmartList;
  v22 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  (*(*(v22 - 8) + 56))(&v5[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_checkmarkImageView;
  v24 = [objc_allocWithZone(UIImageView) init];
  v25 = [objc_opt_self() configurationWithScale:3];
  [v24 setPreferredSymbolConfiguration:v25];

  *&v5[v23] = v24;
  *&v5[OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___unselectedCheckmarkImage] = 0;
  *&v5[OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___selectedCheckmarkImage] = 0;
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  sub_100058000(&unk_10077C050);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_10062D400;
  v27 = *&v26[OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_checkmarkImageView];
  v28 = &v15[*(sub_100058000(&qword_100779498) + 48)];
  v29 = enum case for UICellAccessory.DisplayedState.always(_:);
  v30 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v30 - 8) + 104))(v15, v29, v30);
  *v28 = sub_1002C896C;
  v28[1] = 0;
  (*(v13 + 104))(v15, enum case for UICellAccessory.Placement.leading(_:), v36);
  v31 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v31 - 8) + 56))(v37, 1, 1, v31);
  v32 = v26;
  v33 = v27;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  (*(v16 + 8))(v18, v38);
  UICollectionViewListCell.accessories.setter();

  return v32;
}

uint64_t sub_1002C6F48()
{
  v1 = sub_100058000(&qword_100779480);
  __chkstk_darwin(v1 - 8);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v28 = &v26 - v4;
  v5 = sub_100058000(&unk_10077A660);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v27 = *(v16 - 8);
  __chkstk_darwin(v16);
  v26 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030908();
  sub_100058000(&qword_10076EA28);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_10000794C(&v15[*(v13 + 28)], v7, &unk_10077A660);
  v18 = sub_100058000(&qword_10077A670);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    sub_1000299A4(v15);
    return sub_1000079B4(v7, &unk_10077A660);
  }

  else
  {
    TTRDiffableEquatableWrapper.base.getter();
    sub_1000299A4(v15);
    (*(v19 + 8))(v7, v18);
    if ((*(v9 + 88))(v11, v8) == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
    {
      (*(v9 + 96))(v11, v8);
      v22 = v26;
      v21 = v27;
      (*(v27 + 32))(v26, v11, v16);
      v23 = v28;
      (*(v21 + 16))(v28, v22, v16);
      (*(v21 + 56))(v23, 0, 1, v16);
      v24 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_predefinedSmartList;
      swift_beginAccess();
      v25 = v29;
      sub_10000794C(v0 + v24, v29, &qword_100779480);
      swift_beginAccess();
      sub_100019180(v23, v0 + v24, &qword_100779480);
      swift_endAccess();
      sub_1002C7428(v25);
      sub_1000079B4(v25, &qword_100779480);
      sub_1000079B4(v23, &qword_100779480);
      return (*(v21 + 8))(v22, v16);
    }

    else
    {
      return (*(v9 + 8))(v11, v8);
    }
  }
}

void sub_1002C7428(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100779480);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_100058000(&qword_100779488);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_predefinedSmartList;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &qword_100779480);
  sub_10000794C(a1, &v12[v14], &qword_100779480);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_1000079B4(v12, &qword_100779480);
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v12, v8, &qword_100779480);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000079B4(v12, &qword_100779488);
LABEL_7:
    sub_1002C7744();
    return;
  }

  v16 = v19;
  (*(v4 + 32))(v19, &v12[v14], v3);
  sub_1002C8914();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v16, v3);
  v18(v8, v3);
  sub_1000079B4(v12, &qword_100779480);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_1002C7744()
{
  v1 = v0;
  v128 = type metadata accessor for TTRListBadgeView.ImageContentMode();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v110 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&qword_100768848);
  __chkstk_darwin(v3 - 8);
  v130 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v129 = &v110 - v6;
  v7 = sub_100058000(&qword_100779478);
  __chkstk_darwin(v7 - 8);
  v119 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v121 = &v110 - v10;
  v125 = sub_100058000(&qword_100779468);
  v122 = *(v125 - 8);
  __chkstk_darwin(v125);
  v117 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v118 = &v110 - v13;
  v133 = type metadata accessor for TTRAccountsListsViewModel.SmartList.DynamicGlyph();
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v120 = (&v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v132 = &v110 - v16;
  v17 = sub_100058000(&qword_100771DD8);
  __chkstk_darwin(v17 - 8);
  v134 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v135 = &v110 - v20;
  v124 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v137 = *(v124 - 8);
  __chkstk_darwin(v124);
  v136 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v110 - v23;
  v25 = type metadata accessor for UIListContentConfiguration();
  v138 = *(v25 - 8);
  __chkstk_darwin(v25);
  v123 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v110 - v28;
  v30 = sub_100058000(&qword_100779480);
  __chkstk_darwin(v30 - 8);
  v32 = &v110 - v31;
  v33 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_predefinedSmartList;
  swift_beginAccess();
  v38 = v1 + v37;
  v39 = v1;
  sub_10000794C(v38, v32, &qword_100779480);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_1000079B4(v32, &qword_100779480);
    return;
  }

  v114 = v34;
  v40 = *(v34 + 32);
  v115 = v33;
  v40(v36, v32, v33);
  sub_10003139C(v29);
  TTRAccountsListsViewModel.SmartList.type.getter();
  TTRListType.PredefinedSmartListType.longTitle.getter();
  v41 = *(v137 + 8);
  v42 = v24;
  v43 = v124;
  v113 = v137 + 8;
  v112 = v41;
  v41(v42, v124);
  UIListContentConfiguration.text.setter();
  v44 = v138;
  v45 = *(v138 + 16);
  v46 = v123;
  v116 = v29;
  v45(v123, v29, v25);
  *(v39 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_isContentConfigurationInitialized) = 1;
  v139[3] = v25;
  v139[4] = &protocol witness table for UIListContentConfiguration;
  v47 = sub_1000317B8(v139);
  v45(v47, v46, v25);
  v48 = v39;
  UICollectionViewCell.contentConfiguration.setter();
  v49 = *(v44 + 8);
  v123 = v25;
  v138 = v44 + 8;
  v111 = v49;
  v49(v46, v25);
  v50 = v136;
  TTRAccountsListsViewModel.SmartList.type.getter();
  v51 = v135;
  TTRAccountsListsViewModel.SmartList.dynamicGlyph.getter();
  v52 = v51;
  v53 = v134;
  sub_10000794C(v52, v134, &qword_100771DD8);
  v54 = v131;
  v55 = v133;
  v56 = (*(v131 + 48))(v53, 1, v133);
  v57 = v43;
  v58 = v137;
  if (v56 == 1)
  {
    sub_1000079B4(v134, &qword_100771DD8);
    v59 = TTRListType.PredefinedSmartListType.glyph.getter();
    v60 = v59;
    v61 = v50;
    v62 = v48;
LABEL_13:
    v87 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
    v88 = *(v87 + 20);
    v89 = v129;
    v90 = v61;
    v91 = v57;
    (*(v58 + 16))(&v129[v88], v90, v57);
    v92 = enum case for TTRListBadgeView.ColorInfo.predefinedSmartListColor(_:);
    v93 = type metadata accessor for TTRListBadgeView.ColorInfo();
    (*(*(v93 - 8) + 104))(&v89[v88], v92, v93);
    type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
    swift_storeEnumTagMultiPayload();
    v94 = *(v87 + 24);
    v95 = enum case for TTRListBadgeView.Shape.round(_:);
    v96 = type metadata accessor for TTRListBadgeView.Shape();
    (*(*(v96 - 8) + 104))(&v89[v94], v95, v96);
    v97 = objc_opt_self();
    v98 = [v97 whiteColor];
    (*(v127 + 104))(v126, enum case for TTRListBadgeView.ImageContentMode.scaleAspectFit(_:), v128);
    TTRListBadgeView.ImageParams.init(color:blendMode:contentMode:)();
    *v89 = v59;
    type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
    swift_storeEnumTagMultiPayload();
    v99 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration(0);
    (*(*(v99 - 8) + 56))(v89, 0, 1, v99);
    v100 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeConfiguration;
    swift_beginAccess();
    v101 = v130;
    sub_10000794C(v62 + v100, v130, &qword_100768848);
    swift_beginAccess();
    sub_100019180(v89, v62 + v100, &qword_100768848);
    swift_endAccess();
    sub_100036640(v101);
    sub_1000079B4(v101, &qword_100768848);
    sub_1000079B4(v89, &qword_100768848);
    v102 = TTRAccountsListsViewModel.SmartList.shouldBeVisible.getter();
    v103 = *(v62 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_checkmarkImageView);
    if (v102)
    {
      v104 = sub_1002C86F8();
    }

    else
    {
      v104 = sub_1002C8618();
    }

    v105 = v104;
    v106 = v116;
    [v103 setImage:v104];

    v107 = v123;
    if (v102)
    {
      v108 = 0;
    }

    else
    {
      v108 = [v97 tertiaryLabelColor];
    }

    [v103 setTintColor:v108];

    sub_1000079B4(v135, &qword_100771DD8);
    v112(v136, v91);
    v111(v106, v107);
    (*(v114 + 8))(v36, v115);
    return;
  }

  v110 = v36;
  v63 = *(v54 + 32);
  v64 = v132;
  v63(v132, v134, v55);
  v65 = v120;
  (*(v54 + 16))(v120, v64, v55);
  if ((*(v54 + 88))(v65, v55) == enum case for TTRAccountsListsViewModel.SmartList.DynamicGlyph.today(_:))
  {
    (*(v54 + 96))(v65, v55);
    v66 = v65;
    v67 = *v65;
    v68 = v66[1];
    v69 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_dynamicGlyphCache;
    swift_beginAccess();
    v70 = v121;
    sub_10000794C(v48 + v69, v121, &qword_100779478);
    if ((*(v122 + 48))(v70, 1, v125) == 1)
    {
      v71 = &qword_100779478;
      v72 = v70;
    }

    else
    {
      v73 = v118;
      sub_1002C89E4(v70, v118);
      v74 = v132;
      if (static TTRAccountsListsViewModel.SmartList.DynamicGlyph.== infix(_:_:)())
      {
        v75 = *(v131 + 8);
        v76 = v74;
        v77 = v133;
        v75(v76, v133);

        v78 = v73;
        v79 = v117;
        sub_1002C89E4(v78, v117);
        v59 = *(v79 + *(v125 + 48));
        v80 = v59;
        v75(v79, v77);
        v62 = v48;
LABEL_12:
        v36 = v110;
        v61 = v136;
        v58 = v137;
        goto LABEL_13;
      }

      v71 = &qword_100779468;
      v72 = v73;
    }

    sub_1000079B4(v72, v71);
    v62 = v48;
    type metadata accessor for TTRIDateIconGenerator();
    swift_allocObject();
    TTRIDateIconGenerator.init()();
    v81._countAndFlagsBits = v67;
    v81._object = v68;
    isa = TTRIDateIconGenerator.generateTodaySmartListTemplateIcon(withText:)(v81).super.isa;

    v83 = v125;
    v84 = *(v125 + 48);
    v85 = v119;
    v63(v119, v132, v133);
    *(v85 + v84) = isa;
    (*(v122 + 56))(v85, 0, 1, v83);
    swift_beginAccess();
    v59 = isa;
    sub_1002C8974(v85, v62 + v69);
    swift_endAccess();
    v86 = v59;
    goto LABEL_12;
  }

  if (qword_100767130 != -1)
  {
    swift_once();
  }

  v109 = type metadata accessor for Logger();
  sub_100003E30(v109, qword_1007793E8);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown dynamic glyph", 21, 2);
  __break(1u);
}

id sub_1002C8618()
{
  v1 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___unselectedCheckmarkImage;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___unselectedCheckmarkImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___unselectedCheckmarkImage);
  }

  else
  {
    v4 = v0;
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() _systemImageNamed:v5];

    sub_100058000(&qword_10077FBD0);
    Optional<A>.ensureNonNil()();

    v7 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1002C86F8()
{
  v1 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___selectedCheckmarkImage;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___selectedCheckmarkImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___selectedCheckmarkImage);
  }

  else
  {
    v4 = v0;
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() _systemImageNamed:v5];

    sub_100058000(&qword_10077FBD0);
    Optional<A>.ensureNonNil()();

    v7 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1002C87E0()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_dynamicGlyphCache, &qword_100779478);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_predefinedSmartList, &qword_100779480);

  v1 = *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___selectedCheckmarkImage);
}

unint64_t sub_1002C8914()
{
  result = qword_100779490;
  if (!qword_100779490)
  {
    type metadata accessor for TTRAccountsListsViewModel.SmartList();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100779490);
  }

  return result;
}

uint64_t sub_1002C8974(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100779478);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C89E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100779468);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002C8A54()
{
  v1 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_dynamicGlyphCache;
  v2 = sub_100058000(&qword_100779468);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_predefinedSmartList;
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_checkmarkImageView;
  v6 = [objc_allocWithZone(UIImageView) init];
  v7 = [objc_opt_self() configurationWithScale:3];
  [v6 setPreferredSymbolConfiguration:v7];

  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___unselectedCheckmarkImage) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___selectedCheckmarkImage) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002C8BD4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007794A0);
  v1 = sub_100003E30(v0, qword_1007794A0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002C8C9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100767478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = sub_100003E30(v2, qword_1007A8938);
  return sub_1002D674C(v3, a1, type metadata accessor for TTRRemindersListEditingInteractionOptions);
}

uint64_t sub_1002C8D20()
{
  v1 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &unk_10078A380);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000079B4(v3, &unk_10078A380);
    return 0;
  }

  else
  {
    v8 = TTRRemindersListViewModel.ListInfo.color.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }
}

uint64_t sub_1002C8E7C()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.all(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_1002C8F8C()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.all(_:), v0);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002C909C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v3 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1002C9110@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
  v4 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v4 - 8) + 104))(a1, v3, v4);
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  swift_storeEnumTagMultiPayload();
  v5 = (a1 + *(type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0) + 20));
  *v5 = sub_1002D586C;
  v5[1] = v1;
}

double sub_1002C91D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, a1, v5, v7);
  v11 = (*(v6 + 88))(v9, v5);
  v12 = enum case for TTRRemindersListViewModel.Item.reminder(_:);
  (*(v6 + 8))(v9, v5);
  if (v11 == v12)
  {
    v13 = type metadata accessor for MoveSubject(0);
    *(a2 + 24) = v13;
    *(a2 + 32) = &off_10071E738;
    v14 = sub_1000317B8(a2);
    (v10)(v14, a1, v5);
    *(v14 + *(v13 + 20)) = v2;
    *(v14 + *(v13 + 24)) = 0;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1002C935C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v29 = type metadata accessor for RemindersInsertionRequest(0);
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = sub_100058000(&qword_100779B70);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = v28 - v15;
  v17 = *(v7 + 16);
  v17(v12, a1, v6, v14);
  (v17)(v9, v12, v6);
  v18 = (*(v7 + 88))(v9, v6);
  if (v18 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    goto LABEL_2;
  }

  if (v18 != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    if (v18 != enum case for TTRRemindersListViewModel.Item.reminder(_:) && v18 != enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) && v18 != enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) && v18 != enum case for TTRRemindersListViewModel.Item.completed(_:) && v18 != enum case for TTRRemindersListViewModel.Item.hashtags(_:) && v18 != enum case for TTRRemindersListViewModel.Item.templateStatus(_:) && v18 != enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      if (v18 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v18 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      (*(v7 + 8))(v12, v6);
      goto LABEL_3;
    }

LABEL_2:
    v19 = *(v7 + 8);
    v19(v12, v6);
    v19(v9, v6);
LABEL_3:
    v20 = 1;
    v21 = v29;
    goto LABEL_6;
  }

  (*(v7 + 32))(v5, v12, v6);
  v22 = v28[1];
  v21 = v29;
  *&v5[*(v29 + 20)] = 0;
  *&v5[*(v21 + 24)] = v22;
  v23 = *(v7 + 8);

  v23(v9, v6);
  sub_1002D66C4(v5, v16, type metadata accessor for RemindersInsertionRequest);
  v20 = 0;
LABEL_6:
  (*(v3 + 56))(v16, v20, 1, v21);
  if ((*(v3 + 48))(v16, 1, v21) == 1)
  {
    result = sub_1000079B4(v16, &qword_100779B70);
    v25 = v30;
    *v30 = 0u;
    *(v25 + 1) = 0u;
    v25[4] = 0;
  }

  else
  {
    v26 = v30;
    v30[3] = v21;
    v26[4] = &off_10071E758;
    v27 = sub_1000317B8(v26);
    return sub_1002D66C4(v16, v27, type metadata accessor for RemindersInsertionRequest);
  }

  return result;
}

uint64_t sub_1002C97B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v5 = type metadata accessor for RemindersInsertionRequest(0);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100779B70);
  __chkstk_darwin(v8 - 8);
  v45 = &v40 - v9;
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  __chkstk_darwin(v19);
  v21 = &v40 - v20;
  v22 = a1;
  v24 = v23;
  sub_10000794C(v22, v12, &qword_100772140);
  if ((*(v24 + 48))(v12, 1, v13) == 1)
  {
    result = sub_1000079B4(v12, &qword_100772140);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    return result;
  }

  v42 = a3;
  v26 = *(v24 + 32);
  v26(v21, v12, v13);
  v27 = v24;
  v28 = *(v24 + 16);
  v41 = v21;
  v28(v18, v21, v13);
  v28(v15, v18, v13);
  v29 = (*(v27 + 88))(v15, v13);
  if (v29 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    goto LABEL_4;
  }

  if (v29 != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    if (v29 != enum case for TTRRemindersListViewModel.Item.reminder(_:) && v29 != enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) && v29 != enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) && v29 != enum case for TTRRemindersListViewModel.Item.completed(_:) && v29 != enum case for TTRRemindersListViewModel.Item.hashtags(_:) && v29 != enum case for TTRRemindersListViewModel.Item.templateStatus(_:) && v29 != enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      if (v29 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v29 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v30 = *(v27 + 8);
      v30(v18, v13);
      goto LABEL_5;
    }

LABEL_4:
    v30 = *(v27 + 8);
    v30(v18, v13);
    v30(v15, v13);
LABEL_5:
    v31 = 1;
    v32 = v47;
    v33 = v45;
    goto LABEL_8;
  }

  v26(v7, v18, v13);
  v32 = v47;
  v34 = v44;
  *&v7[*(v47 + 20)] = v43;
  *&v7[*(v32 + 24)] = v34;
  v30 = *(v27 + 8);

  v30(v15, v13);
  v33 = v45;
  sub_1002D66C4(v7, v45, type metadata accessor for RemindersInsertionRequest);
  v31 = 0;
LABEL_8:
  v35 = v46;
  (*(v46 + 56))(v33, v31, 1, v32);
  v36 = (*(v35 + 48))(v33, 1, v32);
  v38 = v41;
  v37 = v42;
  if (v36 == 1)
  {
    v30(v41, v13);
    result = sub_1000079B4(v33, &qword_100779B70);
    *v37 = 0u;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 0;
  }

  else
  {
    *(v42 + 24) = v32;
    *(v37 + 32) = &off_10071E758;
    v39 = sub_1000317B8(v37);
    sub_1002D66C4(v33, v39, type metadata accessor for RemindersInsertionRequest);
    return (v30)(v38, v13);
  }

  return result;
}

uint64_t sub_1002C9D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for AttributeMatchingRequest(0);
  a3[3] = v7;
  a3[4] = &off_10071E780;
  v8 = sub_1000317B8(a3);
  sub_10000794C(a1, v8, &qword_100772140);
  *(v8 + *(v7 + 20)) = a2;
  *(v8 + *(v7 + 24)) = v3;
}

void sub_1002C9DF4(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = sub_100058000(&qword_10076C6B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for DateComponents();
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = TTRReminderEditor.changeItem.getter();
  v35 = [v19 displayDate];

  v20 = v35;
  if (v35)
  {
  }

  else
  {
    v31 = a2;
    v32 = v18;
    v35 = v16;
    v29 = v11;
    v30 = v5;

    TTRRemindersListTreeViewModel.parent(of:)();

    v21 = type metadata accessor for TTRRemindersListViewModel.Item();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v14, 1, v21) == 1)
    {
      sub_1000079B4(v14, &qword_100772140);
    }

    else if ((*(v22 + 88))(v14, v21) == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v22 + 96))(v14, v21);
      v23 = v35;
      v24 = v32;
      (*(v35 + 4))(v32, v14, v15);
      sub_1002CCA14(v8);
      v25 = v33;
      v26 = v9;
      if ((*(v33 + 48))(v8, 1, v9) == 1)
      {
        (v23)[1](v24, v15);
        sub_1000079B4(v8, &qword_10076C6B8);
      }

      else
      {
        v27 = v29;
        (*(v25 + 32))(v29, v8, v26);
        v28 = v30;
        (*(v25 + 16))(v30, v27, v26);
        (*(v25 + 56))(v28, 0, 1, v26);
        TTRReminderEditor.edit(dueDateComponents:)();
        sub_1000079B4(v28, &qword_10076C6B8);
        (*(v25 + 8))(v27, v26);
        (v23)[1](v24, v15);
      }
    }

    else
    {
      (*(v22 + 8))(v14, v21);
    }
  }
}

uint64_t sub_1002CA2C0(void *a1)
{
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    v2 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)();
    swift_unknownObjectRelease();
    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  sub_10000C36C(a1, a1[3]);
  result = dispatch thunk of TTRReminderProtocol.displayDate.getter();
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1002CA36C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_sectionHeadersNeedingPlaceholderReminderItems);

  TTRRemindersListViewModel.SectionHeader.id.getter();
  v6 = sub_1000A9D10(v4, v5);

  v7 = *(v2 + 8);
  v7(v4, v1);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v9 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_tappedSectionHeaders;
    swift_beginAccess();
    v10 = *(v0 + v9);

    TTRRemindersListViewModel.SectionHeader.id.getter();
    v8 = sub_1000A9D10(v4, v10);

    v7(v4, v1);
  }

  return v8 & 1;
}

uint64_t sub_1002CA4E0()
{
  v0 = type metadata accessor for TTRUserActivityListPayload.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = enum case for TTRListType.PredefinedSmartListType.scheduled(_:);
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  (*(v1 + 104))(v3, enum case for TTRUserActivityListPayload.State.predefinedSmartListType(_:), v0);
  v8[3] = type metadata accessor for TTRUserActivityListPayload();
  v8[4] = &protocol witness table for TTRUserActivityListPayload;
  sub_1000317B8(v8);
  TTRUserActivityListPayload.init(state:)();
  NSUserActivity.setPayload(_:)();
  return sub_100004758(v8);
}

uint64_t sub_1002CA634()
{
  v29 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  sub_100003540(0, &qword_1007865E0);
  v28 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v14 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_10056FD04(ObjectType, v15);
    swift_unknownObjectRelease();
    v17 = type metadata accessor for TTRRemindersListViewModel.Item();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) != 1)
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*(v18 + 8))(v10, v17);
      v19 = 0;
      goto LABEL_6;
    }

    sub_1000079B4(v10, &qword_100772140);
  }

  v19 = 1;
LABEL_6:
  v20 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v20 - 8) + 56))(v13, v19, 1, v20);
  v21 = *(sub_100058000(&qword_1007693A0) + 48);
  v22 = enum case for TTRListType.PredefinedSmartListType.scheduled(_:);
  v23 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v23 - 8) + 104))(v3, v22, v23);
  sub_10000794C(v13, &v3[v21], &unk_10076BB50);
  (*(v1 + 104))(v3, enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:), v29);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v30[3] = v4;
  v30[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v24 = sub_1000317B8(v30);
  (*(v5 + 16))(v24, v7, v4);
  v25 = v28;
  NSUserActivity.setPayload(_:)();
  (*(v5 + 8))(v7, v4);
  sub_1000079B4(v13, &unk_10076BB50);
  sub_100004758(v30);
  return v25;
}

uint64_t sub_1002CAA6C(uint64_t a1)
{
  v55 = type metadata accessor for REMRemindersListDataView.Diff();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v4 - 8);
  v56 = &v51 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v60 = *(v6 - 8);
  v61 = v6;
  __chkstk_darwin(v6);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v8 - 8);
  v58 = &v51 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v63 = *(v10 - 8);
  v64 = v10;
  __chkstk_darwin(v10);
  v62 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v12 - 8);
  v52 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v51 - v15;
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v19 = type metadata accessor for TTRRemindersListViewModel.Item();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1;
  sub_100576F6C(a1);
  v24 = *(v20 + 16);
  v66 = a1;
  v24(v22, a1, v19);
  v25 = *(v20 + 88);
  v26 = v25(v22, v19);
  v27 = enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:);
  v57 = *(v20 + 8);
  result = (v57)(v22, v19);
  if (v26 == v27)
  {
    v29 = v23;

    v30 = TTRRemindersListTreeViewModel.sectionItems.getter();

    __chkstk_darwin(v31);
    v32 = v66;
    *(&v51 - 2) = v23;
    *(&v51 - 1) = v32;
    sub_1002EC8C4(sub_1002D57A4, v30, v18);

    v33 = v65;
    sub_10000794C(v18, v65, &qword_100772140);
    if ((*(v20 + 48))(v33, 1, v19) == 1)
    {
      sub_1000079B4(v18, &qword_100772140);
      v34 = v33;
      return sub_1000079B4(v34, &qword_100772140);
    }

    if (v25(v33, v19) == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      v66 = v18;
      v57 = v20;
      v35 = v19;
      (*(v20 + 96))(v33, v19);
      v37 = v63;
      v36 = v64;
      v38 = v33;
      v39 = v62;
      (*(v63 + 32))(v62, v38, v64);
      v40 = v59;
      TTRRemindersListViewModel.SectionHeader.id.getter();
      swift_beginAccess();
      v41 = v58;
      sub_1000EA510(v40, v58);
      (*(v60 + 8))(v40, v61);
      sub_1000079B4(v41, &qword_10076B070);
      swift_endAccess();
      v42 = *(v29 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_lastSectionsSnapshot);
      if (!v42)
      {
        (*(v37 + 8))(v39, v36);
        v34 = v66;
        return sub_1000079B4(v34, &qword_100772140);
      }

      v43 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
      v44 = v56;
      (*(*(v43 - 8) + 56))(v56, 1, 1, v43);
      if (_swiftEmptyArrayStorage >> 62)
      {
        v50 = _CocoaArrayWrapper.endIndex.getter();

        if (v50)
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        v44 = v56;
        v39 = v62;
        v37 = v63;
      }

      else
      {
      }

      v45 = v53;
      REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
      v46 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
      v47 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
      v48 = v52;
      (*(v57 + 56))(v52, 1, 1, v35);
      v68[3] = v46;
      v68[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
      v68[0] = v47;
      sub_10000B0D8(v68, v67);
      v49 = swift_allocObject();
      *(v49 + 16) = v42;
      sub_100005FD0(v67, v49 + 24);
      *(v49 + 64) = v29;

      sub_100586238(1, v44, sub_100283360, v49, v45, 0, v48);

      sub_1000079B4(v48, &qword_100772140);
      (*(v54 + 8))(v45, v55);
      sub_1000079B4(v44, &unk_10078A380);
      (*(v37 + 8))(v39, v64);
      sub_1000079B4(v66, &qword_100772140);

      return sub_100004758(v68);
    }

    else
    {
      sub_1000079B4(v18, &qword_100772140);
      return (v57)(v33, v19);
    }
  }

  return result;
}

uint64_t sub_1002CB39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100768B60);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v28 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  __chkstk_darwin(v15);
  v17 = &v25 - v16;

  TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(atTheEndOfSection:)();

  (*(v4 + 16))(v14, v27, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_10000794C(v17, v9, &qword_100772140);
  sub_10000794C(v14, &v9[v18], &qword_100772140);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    sub_10000794C(v9, v28, &qword_100772140);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v21 = &v9[v18];
      v22 = v26;
      (*(v4 + 32))(v26, v21, v3);
      sub_1002D57C4(&qword_100768B68, &type metadata accessor for TTRRemindersListViewModel.Item);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v4 + 8);
      v23(v22, v3);
      sub_1000079B4(v14, &qword_100772140);
      sub_1000079B4(v17, &qword_100772140);
      v23(v28, v3);
      sub_1000079B4(v9, &qword_100772140);
      return v20 & 1;
    }

    sub_1000079B4(v14, &qword_100772140);
    sub_1000079B4(v17, &qword_100772140);
    (*(v4 + 8))(v28, v3);
    goto LABEL_6;
  }

  sub_1000079B4(v14, &qword_100772140);
  sub_1000079B4(v17, &qword_100772140);
  if (v19(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_1000079B4(v9, &qword_100768B60);
    v20 = 0;
    return v20 & 1;
  }

  sub_1000079B4(v9, &qword_100772140);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1002CB81C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMRemindersListDataView.Diff();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v6 - 8);
  v40 = &v36 - v7;
  v8 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v8 - 8);
  v36 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v41 = *(v13 - 8);
  v42 = v13;
  __chkstk_darwin(v13);
  v43 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  v22 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_tappedSectionHeaders;
  swift_beginAccess();
  v23 = *(v1 + v22);

  v24 = sub_1000A9D10(a1, v23);

  if ((v24 & 1) == 0)
  {
    (*(v16 + 16))(v18, a1, v15);
    swift_beginAccess();
    sub_10058D0CC(v21, v18);
    (*(v16 + 8))(v21, v15);
    result = swift_endAccess();
    v26 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_lastSectionsSnapshot);
    if (v26)
    {

      TTRRemindersListTreeViewModel.sectionItem(with:)();

      v28 = v41;
      v27 = v42;
      if ((*(v41 + 48))(v12, 1, v42) == 1)
      {

        return sub_1000079B4(v12, &qword_100772140);
      }

      else
      {
        (*(v28 + 32))(v43, v12, v27);
        v29 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
        v30 = v40;
        (*(*(v29 - 8) + 56))(v40, 1, 1, v29);
        if (_swiftEmptyArrayStorage >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100599F5C(_swiftEmptyArrayStorage);
          }

          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100599F5C(_swiftEmptyArrayStorage);
          }

          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100599F5C(_swiftEmptyArrayStorage);
          }

          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100599F5C(_swiftEmptyArrayStorage);
          }

          v30 = v40;
          v28 = v41;
          v27 = v42;
        }

        v31 = v37;
        REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
        v32 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
        v33 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
        v34 = v36;
        (*(v28 + 16))(v36, v43, v27);
        (*(v28 + 56))(v34, 0, 1, v27);
        v45[3] = v32;
        v45[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
        v45[0] = v33;
        sub_10000B0D8(v45, v44);
        v35 = swift_allocObject();
        *(v35 + 16) = v26;
        sub_100005FD0(v44, v35 + 24);
        *(v35 + 64) = v2;

        sub_100586238(1, v30, sub_100283360, v35, v31, 0, v34);

        sub_1000079B4(v34, &qword_100772140);
        (*(v38 + 8))(v31, v39);
        sub_1000079B4(v30, &unk_10078A380);
        (*(v28 + 8))(v43, v27);

        return sub_100004758(v45);
      }
    }
  }

  return result;
}

uint64_t sub_1002CBEB4()
{
  v0 = type metadata accessor for Calendar();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  static Locale.current.getter();
  static Calendar.current.getter();
  type metadata accessor for TTRShowScheduledSectionHeaderTitleFormatter();
  swift_allocObject();
  result = TTRShowScheduledSectionHeaderTitleFormatter.init(locale:calendar:allowsRelativeDates:referenceDateForYearAndEra:)();
  qword_1007794B8 = result;
  return result;
}

uint64_t sub_1002CC038@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v2 - 8);
  v47 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v4 - 8);
  v46 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v6 - 8);
  v45 = v35 - v7;
  v8 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v8 - 8);
  v43 = v35 - v9;
  v40 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v10 = *(v40 - 8);
  __chkstk_darwin(v40);
  v49 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v12 = *(v39 - 8);
  __chkstk_darwin(v39);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v15 - 8);
  v17 = v35 - v16;
  v18 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v18 - 8);
  v20 = v35 - v19;
  v21 = enum case for TTRListType.PredefinedSmartListType.scheduled(_:);
  v22 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = enum case for TTRListType.predefinedSmartList(_:);
  v24 = type metadata accessor for TTRListType();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v20, v23, v24);
  (*(v25 + 56))(v20, 0, 1, v24);
  v26 = REMSmartListType.title.getter();
  v36 = v27;
  v37 = v26;
  v41 = static TTRListColors.SmartList.scheduled.getter();
  v28 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  v29 = *(*(v28 - 8) + 56);
  v42 = v17;
  v29(v17, 1, 1, v28);
  v44 = v1;
  swift_getObjectType();
  v30 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter();
  if (v30)
  {
    swift_unknownObjectRelease();
  }

  TTRRemindersListSectionMenuCapabilities.init()();
  v38 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v12 + 8))(v14, v39);
  v31 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter();
  if (v31)
  {
    swift_unknownObjectRelease();
  }

  (*(v10 + 104))(v49, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v40);
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
  sub_1000079B4(v50, &qword_1007693C0);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    LODWORD(v40) = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
  }

  else
  {
    LODWORD(v40) = 0;
  }

  LODWORD(v39) = v31 != 0;
  v35[3] = v30 != 0;
  v32 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
  v33 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  return TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
}

uint64_t sub_1002CC714@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4, v10);
  v13 = (*(v5 + 88))(v7, v4);
  if (v13 == enum case for TTRRemindersListViewModel.SectionID.named(_:))
  {
    (*(v9 + 56))(a2, 1, 1, v8);
    return (*(v5 + 8))(v7, v4);
  }

  if (v13 == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
  {
    goto LABEL_27;
  }

  if (v13 == enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:) || v13 == enum case for TTRRemindersListViewModel.SectionID.date(_:) || v13 == enum case for TTRRemindersListViewModel.SectionID.day(_:) || v13 == enum case for TTRRemindersListViewModel.SectionID.month(_:) || v13 == enum case for TTRRemindersListViewModel.SectionID.year(_:))
  {
    (*(v5 + 96))(v7, v4);
    v19 = *(v9 + 32);
    v19(v12, v7, v8);
    v19(a2, v12, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  v20 = v13 == enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:) || v13 == enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
  if (v20 || v13 == enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
  {
LABEL_27:
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002CCA14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_1007775C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  sub_1002CC714(v8, v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000079B4(v11, &qword_1007757F0);
    v16 = 1;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    type metadata accessor for TTRReminderEditor();
    static TimeZone.current.getter();
    v17 = type metadata accessor for TimeZone();
    (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
    static TTRReminderEditor.dueDateComponents(from:isAllDay:timeZone:)();
    sub_1000079B4(v4, &qword_1007775C0);
    (*(v13 + 8))(v15, v12);
    v16 = 0;
  }

  v18 = type metadata accessor for DateComponents();
  return (*(*(v18 - 8) + 56))(a1, v16, 1, v18);
}

uint64_t sub_1002CCD54()
{
  v1 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_cachedEmptyListMessaging;
  v2 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_defaultSectionID, &qword_10076B070);
}

uint64_t sub_1002CCE0C()
{
  v0 = sub_10056FD38();
  v1 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_cachedEmptyListMessaging;
  v2 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_defaultSectionID, &qword_10076B070);

  return swift_deallocClassInstance();
}

void sub_1002CCF50()
{
  type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  if (v0 <= 0x3F)
  {
    sub_1002D6670(319, &qword_100768A58, &type metadata accessor for TTRRemindersListViewModel.SectionID);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002CD0A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v409 = a2;
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v408 = v399 - v5;
  v6 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v6 - 8);
  v407 = v399 - v7;
  v505 = type metadata accessor for TimeZone();
  v510 = *(v505 - 8);
  __chkstk_darwin(v505);
  v504 = v399 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v532 = type metadata accessor for Date();
  v519 = *(v532 - 8);
  __chkstk_darwin(v532);
  v467 = v399 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v416 = v399 - v11;
  __chkstk_darwin(v12);
  v466 = v399 - v13;
  __chkstk_darwin(v14);
  v415 = v399 - v15;
  __chkstk_darwin(v16);
  v425 = v399 - v17;
  __chkstk_darwin(v18);
  v529 = v399 - v19;
  v20 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v20 - 8);
  v516 = v399 - v21;
  v530 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v517 = *(v530 - 8);
  __chkstk_darwin(v530);
  v465 = v399 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v424 = v399 - v24;
  __chkstk_darwin(v25);
  v464 = v399 - v26;
  __chkstk_darwin(v27);
  v423 = v399 - v28;
  __chkstk_darwin(v29);
  v434 = v399 - v30;
  __chkstk_darwin(v31);
  v528 = v399 - v32;
  __chkstk_darwin(v33);
  v520 = v399 - v34;
  __chkstk_darwin(v35);
  v470 = v399 - v36;
  v533 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v511 = *(v533 - 8);
  __chkstk_darwin(v533);
  v463 = v399 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v422 = v399 - v39;
  __chkstk_darwin(v40);
  v462 = v399 - v41;
  __chkstk_darwin(v42);
  v421 = v399 - v43;
  __chkstk_darwin(v44);
  v433 = v399 - v45;
  __chkstk_darwin(v46);
  v527 = v399 - v47;
  __chkstk_darwin(v48);
  v469 = v399 - v49;
  v535 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v449 = *(v535 - 8);
  __chkstk_darwin(v535);
  v461 = v399 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v460 = v399 - v52;
  __chkstk_darwin(v53);
  v420 = v399 - v54;
  __chkstk_darwin(v55);
  v419 = v399 - v56;
  __chkstk_darwin(v57);
  v414 = v399 - v58;
  __chkstk_darwin(v59);
  v459 = v399 - v60;
  __chkstk_darwin(v61);
  v458 = v399 - v62;
  __chkstk_darwin(v63);
  v418 = v399 - v64;
  __chkstk_darwin(v65);
  v417 = v399 - v66;
  __chkstk_darwin(v67);
  v413 = v399 - v68;
  __chkstk_darwin(v69);
  v432 = v399 - v70;
  __chkstk_darwin(v71);
  v431 = v399 - v72;
  __chkstk_darwin(v73);
  v526 = v399 - v74;
  __chkstk_darwin(v75);
  v525 = v399 - v76;
  __chkstk_darwin(v77);
  v445 = v399 - v78;
  __chkstk_darwin(v79);
  v81 = v399 - v80;
  v531 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day();
  v452 = *(v531 - 8);
  __chkstk_darwin(v531);
  v472 = v399 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v401 = v399 - v84;
  __chkstk_darwin(v85);
  v471 = v399 - v86;
  __chkstk_darwin(v87);
  v400 = v399 - v88;
  __chkstk_darwin(v89);
  v438 = v399 - v90;
  __chkstk_darwin(v91);
  v524 = v399 - v92;
  __chkstk_darwin(v93);
  v435 = v399 - v94;
  __chkstk_darwin(v95);
  v437 = v399 - v96;
  v97 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v97 - 8);
  v446 = v399 - v98;
  v534 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v99 = *(v534 - 8);
  __chkstk_darwin(v534);
  v475 = v399 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v101);
  v429 = v399 - v102;
  __chkstk_darwin(v103);
  v474 = v399 - v104;
  __chkstk_darwin(v105);
  v428 = v399 - v106;
  __chkstk_darwin(v107);
  v448 = v399 - v108;
  __chkstk_darwin(v109);
  v436 = v399 - v110;
  __chkstk_darwin(v111);
  v523 = v399 - v112;
  __chkstk_darwin(v113);
  v522 = v399 - v114;
  __chkstk_darwin(v115);
  v478 = v399 - v116;
  v451 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket();
  v473 = *(v451 - 8);
  __chkstk_darwin(v451);
  v477 = v399 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v118);
  v483 = v399 - v119;
  v120 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v120 - 8);
  v485 = v399 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v122);
  v484 = v399 - v123;
  v406 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v405 = *(v406 - 8);
  __chkstk_darwin(v406);
  v426 = v399 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100058000(&qword_100769378);
  __chkstk_darwin(v125 - 8);
  v127 = v399 - v126;
  REMRemindersListDataView.ScheduledDateBucketsModel.remindersCount.getter();
  v128 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v129 = *(v128 - 8);
  v130 = (*(v129 + 48))(v127, 1, v128);
  if (v130 == 1)
  {
    sub_1000079B4(v127, &qword_100769378);
    v131 = 0;
  }

  else
  {
    v131 = REMRemindersListDataView.CountByCompleted.completed.getter();
    (*(v129 + 8))(v127, v128);
  }

  v132 = v99;
  v133 = v3 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_completedRemindersCount;
  *v133 = v131;
  *(v133 + 8) = v130 == 1;
  sub_1002CC038(v426);
  v539 = _swiftEmptyArrayStorage;
  v538 = &_swiftEmptySetSingleton;
  v134 = *(v3 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions + 2) == 1;
  v447 = v81;
  v441 = v3;
  if (v134)
  {
    v137 = v530;
    v138 = v478;
    v139 = v451;
    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_142:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1004054A4(_swiftEmptyArrayStorage);
        v136 = v398;
      }

      else
      {
        v136 = &_swiftEmptySetSingleton;
      }
    }

    else
    {
      v136 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v135 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_recurrentReminderReplacements;
    swift_beginAccess();
    v537[0] = *(v3 + v135);

    sub_100058000(&qword_100777590);
    sub_100003540(0, &qword_10076BA50);
    sub_10011763C(&qword_100777598, &qword_100777590);
    sub_1001288B4();
    v136 = Sequence.compactMapToSet<A>(_:)();

    v137 = v530;
    v138 = v478;
    v139 = v451;
  }

  v506 = v136;
  v140 = *(v132 + 56);
  v482 = (v132 + 56);
  v481 = v140;
  v140(v484, 1, 1, v534);
  v450 = REMRemindersListDataView.ScheduledDateBucketsModel.buckets.getter();
  v141 = *(v450 + 16);
  v439 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_tappedSectionHeaders;
  swift_beginAccess();
  v468 = v141;
  if (v141)
  {
    v399[1] = 0;
    v142 = 0;
    v457 = v473 + 16;
    v456 = v473 + 88;
    v455 = (v473 + 96);
    v440 = (v519 + 32);
    v503 = (v519 + 16);
    v515 = (v99 + 104);
    v508 = v452 + 16;
    v454 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.pastDue(_:);
    v518 = (v452 + 8);
    v521 = (v99 + 16);
    v444 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.nextFiveDays(_:);
    v514 = (v511 + 2);
    v513 = (v511 + 7);
    v430 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.day(_:);
    v512 = (v517 + 2);
    ++v517;
    v412 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.month(_:);
    ++v511;
    v486 = (v99 + 8);
    v502 = (v510 + 1);
    v404 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.year(_:);
    v507 = (v519 + 8);
    v480 = (v99 + 32);
    v443 = (v519 + 56);
    v403 = enum case for TTRRemindersListViewModel.SectionID.year(_:);
    v427 = (v519 + 48);
    v501 = enum case for TTRRemindersListViewModel.SectionID.day(_:);
    v402 = enum case for TTRRemindersListViewModel.SectionID.month(_:);
    v442 = enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:);
    v510 = (v449 + 16);
    v519 = v449 + 32;
    v509 = (v449 + 8);
    v453 = (v473 + 8);
    v132 = _swiftEmptyArrayStorage;
    v411 = (v452 + 32);
    v143 = v450;
    v99 = v137;
    while (1)
    {
      if (v142 >= *(v143 + 16))
      {
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v144 = v99;
      v500 = v132;
      v145 = v473;
      v146 = v143 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
      v147 = *(v473 + 72);
      v479 = v142;
      v148 = *(v473 + 16);
      v149 = v483;
      v148(v483, v146 + v147 * v142, v139);
      v137 = v477;
      v148(v477, v149, v139);
      v150 = (*(v145 + 88))(v137, v139);
      if (v150 == v454)
      {
        (*v455)(v137, v139);
        v151 = *v137;
        v152 = *(*v137 + 16);
        v476 = *v137;
        v99 = v152;
        if (v152)
        {
          v137 = v452;
          v153 = v437;
          v154 = v531;
          (*(v452 + 16))(v437, v151 + ((*(v137 + 80) + 32) & ~*(v137 + 80)), v531);
          v155 = v446;
          REMRemindersListDataView.ScheduledDateBucketsModel.Day.date.getter();
          (*(v137 + 8))(v153, v154);
          v156 = v532;
          (*v443)(v155, 0, 1, v532);
          (*v440)(v138, v155, v156);
          v132 = v500;
          v139 = v517;
          v157 = v144;
        }

        else
        {
          v194 = v446;
          v195 = v532;
          (*v443)(v446, 1, 1, v532);
          Date.init()();
          v196 = (*v427)(v194, 1, v195);
          v132 = v500;
          v139 = v517;
          v157 = v144;
          if (v196 != 1)
          {
            sub_1000079B4(v446, &qword_1007757F0);
          }
        }

        v500 = *v515;
        v500(v138, v442, v534);
        v197 = v99;
        if (v99)
        {
          if (!*(v476 + 2))
          {
            goto LABEL_135;
          }

          v99 = v157;
          v198 = v452;
          v199 = v435;
          v200 = v531;
          (*(v452 + 16))(v435, v476 + ((*(v198 + 80) + 32) & ~*(v198 + 80)), v531);
          v138 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
          (*(v198 + 8))(v199, v200);
        }

        else
        {
          v138 = _swiftEmptyArrayStorage;
          v99 = v157;
        }

        v201 = v506;
        v202 = sub_1002D19E8(v138, v506);
        if (qword_100767140 != -1)
        {
          v202 = swift_once();
        }

        v203 = qword_1007794B8;
        __chkstk_darwin(v202);
        v399[-2] = v201;
        v204 = v469;
        v499 = v203;
        TTRShowScheduledSectionHeaderTitleFormatter.title(for:isFirst:hasVisibleReminders:)();
        v498 = *v521;
        v498(v522, v478, v534);
        v205 = v516;
        v206 = v533;
        v497 = *v514;
        v497(v516, v204, v533);
        v496 = *v513;
        (v496)(v205, 0, 1, v206);
        v207 = v470;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        v495 = *v512;
        v495(v520, v207, v99);
        v208 = v447;
        TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
        v209 = v445;
        v494 = *v510;
        v494(v445, v208, v535);
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = sub_1005472D4(0, *(v132 + 16) + 1, 1, v132);
        }

        v137 = v476;
        v211 = *(v132 + 16);
        v210 = *(v132 + 24);
        if (v211 >= v210 >> 1)
        {
          v132 = sub_1005472D4(v210 > 1, v211 + 1, 1, v132);
        }

        *(v132 + 16) = v211 + 1;
        v493 = ((*(v449 + 80) + 32) & ~*(v449 + 80));
        v492 = *(v449 + 72);
        v491 = *(v449 + 32);
        v491(v493 + v132 + v492 * v211, v209, v535);
        v539 = v132;
        swift_endAccess();
        v212 = *v139;
        (*v139)(v470, v99);
        v490 = *v511;
        v490(v469, v533);
        v213 = *(v137 + 16);
        if (v213 >= 2)
        {
          if (!v197)
          {
            goto LABEL_136;
          }

          if (v213 < v197)
          {
            goto LABEL_137;
          }

          v489 = v212;
          v214 = v197 - 1;
          if (v197 != 1)
          {
            v215 = v132;
            v216 = v452;
            v217 = (*(v452 + 80) + 32) & ~*(v452 + 80);

            swift_beginAccess();
            v218 = *(v216 + 72);
            v487 = *(v216 + 16);
            v488 = v218;
            v219 = v218 + v137 + v217;
            do
            {
              v487(v524, v219, v531);
              v220 = v529;
              v221 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.date.getter();
              __chkstk_darwin(v221);
              v399[-2] = v506;
              v222 = v527;
              TTRShowScheduledSectionHeaderTitleFormatter.title(for:hasVisibleReminders:)();
              v223 = v523;
              (*v503)(v523, v220, v532);
              v224 = v534;
              v500(v223, v501, v534);
              v498(v522, v223, v224);
              v225 = v516;
              v226 = v533;
              v497(v516, v222, v533);
              (v496)(v225, 0, 1, v226);
              v227 = v528;
              TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
              v495(v520, v227, v530);
              REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
              v228 = v525;
              TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
              v494(v526, v228, v535);
              swift_beginAccess();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v215 = sub_1005472D4(0, *(v215 + 16) + 1, 1, v215);
              }

              v230 = *(v215 + 16);
              v229 = *(v215 + 24);
              if (v230 >= v229 >> 1)
              {
                v215 = sub_1005472D4(v229 > 1, v230 + 1, 1, v215);
              }

              *(v215 + 16) = v230 + 1;
              v231 = v535;
              v491(v493 + v215 + v230 * v492, v526, v535);
              v539 = v215;
              swift_endAccess();
              v232 = v504;
              static TimeZone.current.getter();
              v233 = v529;
              v234 = Date.rem_isToday(in:)();
              (*v502)(v232, v505);
              (*v509)(v525, v231);
              v99 = v530;
              v489(v528);
              v490(v527, v533);
              (*v507)(v233, v532);
              (*v518)(v524, v531);
              if (v234)
              {
                v235 = v484;
                sub_1000079B4(v484, &qword_10076B070);
                v236 = v485;
                v237 = v534;
                (*v480)(v485, v523, v534);
                v481(v236, 0, 1, v237);
                sub_100016588(v236, v235, &qword_10076B070);
              }

              else
              {
                (*v486)(v523, v534);
              }

              v219 += v488;
              --v214;
            }

            while (v214);
            v137 = v476;

            v208 = v447;
            v132 = v215;
          }

          v212 = v489;
        }

        v250 = v520;
        TTRRemindersListTreeViewModel.Section.header.getter();
        v251 = TTRRemindersListViewModel.SectionHeader.isTappable.getter();
        v212(v250, v99);
        if (v251)
        {

          (*v509)(v208, v535);
          v138 = v478;
          (*v486)(v478, v534);
        }

        else
        {
          TTRRemindersListTreeViewModel.Section.header.getter();
          v252 = v522;
          TTRRemindersListViewModel.SectionHeader.id.getter();
          v212(v250, v99);
          swift_beginAccess();
          v253 = v485;
          sub_1000EA510(v252, v485);
          v254 = *v486;
          v255 = v534;
          (*v486)(v252, v534);
          sub_1000079B4(v253, &qword_10076B070);
          swift_endAccess();

          (*v509)(v208, v535);
          v138 = v478;
          v254(v478, v255);
        }

        v139 = v451;
        (*v453)(v483, v451);
      }

      else
      {
        if (v150 == v444)
        {
          v158 = v477;
          (*v455)(v477, v139);
          sub_100058000(&qword_100779B68);

          if (qword_100767138 != -1)
          {
            swift_once();
          }

          v159 = type metadata accessor for Logger();
          sub_100003E30(v159, qword_1007794A0);
          v160 = Logger.logObject.getter();
          v161 = static os_log_type_t.fault.getter();
          v162 = os_log_type_enabled(v160, v161);
          v132 = v500;
          if (v162)
          {
            v163 = swift_slowAlloc();
            *v163 = 0;
            _os_log_impl(&_mh_execute_header, v160, v161, "iOS and macOS do not support the Next Five Days section", v163, 2u);
            v99 = v530;
          }

          (*v453)(v483, v139);
          (*v507)(v158, v532);
          v138 = v478;
          goto LABEL_11;
        }

        v137 = v520;
        if (v150 == v430)
        {
          v164 = v477;
          (*v455)(v477, v139);
          (*v411)(v438, v164, v531);
          v165 = v436;
          REMRemindersListDataView.ScheduledDateBucketsModel.Day.date.getter();
          v166 = v534;
          (*v515)(v165, v501, v534);
          v167 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
          v168 = v506;
          v169 = sub_1002D19E8(v167, v506);
          v170 = v169;
          v132 = v500;
          if (qword_100767140 != -1)
          {
            v169 = swift_once();
          }

          __chkstk_darwin(v169);
          v399[-2] = v168;
          v171 = v433;
          TTRShowScheduledSectionHeaderTitleFormatter.title(for:isFirst:hasVisibleReminders:)();
          v172 = *v521;
          (*v521)(v522, v165, v166);
          v173 = v516;
          v174 = v171;
          v175 = v533;
          (*v514)(v516, v174, v533);
          (*v513)(v173, 0, 1, v175);
          v176 = v434;
          TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
          (*v512)(v520, v176, v530);
          v177 = v431;
          TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
          (*v510)(v432, v177, v535);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v137 = v517;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v132 = sub_1005472D4(0, *(v132 + 16) + 1, 1, v132);
          }

          v179 = v438;
          v181 = *(v132 + 16);
          v180 = *(v132 + 24);
          v99 = v530;
          if (v181 >= v180 >> 1)
          {
            v132 = sub_1005472D4(v180 > 1, v181 + 1, 1, v132);
          }

          *(v132 + 16) = v181 + 1;
          (*(v449 + 32))(v132 + ((*(v449 + 80) + 32) & ~*(v449 + 80)) + *(v449 + 72) * v181, v432, v535);
          v539 = v132;
          swift_endAccess();
          if (v170)
          {
            v182 = v448;
            v172(v448, v436, v166);
            swift_beginAccess();
            v183 = v522;
            sub_10058D0CC(v522, v182);
            swift_endAccess();
            (*v486)(v183, v166);
          }

          (*v509)(v431, v535);
          (*v137)(v434, v99);
          (*v511)(v433, v533);
          v184 = v425;
          REMRemindersListDataView.ScheduledDateBucketsModel.Day.date.getter();
          v185 = v504;
          static TimeZone.current.getter();
          v186 = Date.rem_isToday(in:)();
          (*v502)(v185, v505);
          (*v507)(v184, v532);
          if (v186)
          {
            v187 = v484;
            sub_1000079B4(v484, &qword_10076B070);
            v188 = v485;
            v189 = v436;
            v172(v485, v436, v166);
            v481(v188, 0, 1, v166);
            sub_100016588(v188, v187, &qword_10076B070);
            v190 = v448;
            v172(v448, v189, v166);
            swift_beginAccess();
            v137 = v522;
            sub_10058D0CC(v522, v190);
            swift_endAccess();
            v191 = *v486;
            (*v486)(v137, v166);
            v191(v189, v166);
            v192 = *v518;
            v193 = v438;
          }

          else
          {
            (*v486)(v436, v166);
            v192 = *v518;
            v193 = v179;
          }

          v256 = &v539;
        }

        else
        {
          if (v150 == v412)
          {
            v238 = v477;
            (*v455)(v477, v139);
            v239 = *&v238[*(sub_100058000(&qword_100779B68) + 48)];
            v240 = v415;
            v241 = v238;
            v242 = v532;
            (*v440)(v415, v241, v532);
            v243 = v428;
            v499 = *v503;
            v499(v428, v240, v242);
            v244 = v534;
            v498 = *v515;
            v498(v243, v402, v534);
            v245 = *(v239 + 16);
            if (v245)
            {
              v246 = v452;
              v247 = v400;
              v248 = v531;
              (*(v452 + 16))(v400, v239 + ((*(v246 + 80) + 32) & ~*(v246 + 80)), v531);
              v249 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
              (*(v246 + 8))(v247, v248);
            }

            else
            {
              v249 = _swiftEmptyArrayStorage;
            }

            v410 = v239;
            v269 = v506;
            v270 = sub_1002D19E8(v249, v506);
            v271 = v270;
            if (qword_100767140 != -1)
            {
              v270 = swift_once();
            }

            v272 = qword_1007794B8;
            __chkstk_darwin(v270);
            v399[-2] = v269;
            v273 = v421;
            v497 = v272;
            TTRShowScheduledSectionHeaderTitleFormatter.title(for:isFirst:hasVisibleReminders:)();
            v476 = *v521;
            v476(v522, v428, v244);
            v274 = v516;
            v275 = v533;
            v496 = *v514;
            v496(v516, v273, v533);
            v495 = *v513;
            (v495)(v274, 0, 1, v275);
            v276 = v423;
            TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
            v494 = *v512;
            v494(v137, v276, v530);
            v277 = v417;
            TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
            v493 = *v510;
            v493(v418, v277, v535);
            swift_beginAccess();
            v139 = v500;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v139 = sub_1005472D4(0, v139[2] + 1, 1, v139);
            }

            v279 = v139[2];
            v278 = v139[3];
            v99 = v530;
            v280 = v506;
            if (v279 >= v278 >> 1)
            {
              v139 = sub_1005472D4(v278 > 1, v279 + 1, 1, v139);
            }

            v139[2] = (v279 + 1);
            v492 = (*(v449 + 80) + 32) & ~*(v449 + 80);
            v491 = *(v449 + 72);
            v500 = *(v449 + 32);
            v500(v139 + v492 + v491 * v279, v418, v535);
            v132 = v139;
            v539 = v139;
            swift_endAccess();
            if (v271)
            {
              v281 = v448;
              v282 = v534;
              v476(v448, v428, v534);
              swift_beginAccess();
              v283 = v522;
              sub_10058D0CC(v522, v281);
              swift_endAccess();
              (*v486)(v283, v282);
            }

            v138 = v517;
            v487 = *v517;
            (v487)(v423, v99);
            v490 = *v511;
            v490(v421, v533);
            v500(v413, v417, v535);
            v284 = v410;
            v285 = *(v410 + 16);
            if (v285 >= 2)
            {
              if (!v245)
              {
                goto LABEL_138;
              }

              if (v285 < v245)
              {
                goto LABEL_141;
              }

              v286 = v245 - 1;
              if (v286)
              {
                v287 = (*(v452 + 80) + 32) & ~*(v452 + 80);
                v288 = *(v452 + 72);
                v488 = *(v452 + 16);

                v489 = v288;
                v289 = v288 + v287 + v284;
                v290 = v471;
                v291 = v476;
                v292 = v487;
                do
                {
                  v488(v290, v289, v531);
                  v293 = v466;
                  v294 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.date.getter();
                  __chkstk_darwin(v294);
                  v399[-2] = v280;
                  v295 = v462;
                  TTRShowScheduledSectionHeaderTitleFormatter.title(for:hasVisibleReminders:)();
                  v296 = v474;
                  v499(v474, v293, v532);
                  v297 = v534;
                  v498(v296, v501, v534);
                  v291(v522, v296, v297);
                  v298 = v516;
                  v299 = v295;
                  v290 = v471;
                  v300 = v533;
                  v496(v516, v299, v533);
                  (v495)(v298, 0, 1, v300);
                  v301 = v464;
                  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
                  v494(v520, v301, v530);
                  REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
                  v302 = v458;
                  TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
                  v493(v459, v302, v535);
                  swift_beginAccess();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v132 = sub_1005472D4(0, *(v132 + 16) + 1, 1, v132);
                  }

                  v304 = *(v132 + 16);
                  v303 = *(v132 + 24);
                  if (v304 >= v303 >> 1)
                  {
                    v132 = sub_1005472D4(v303 > 1, v304 + 1, 1, v132);
                  }

                  *(v132 + 16) = v304 + 1;
                  v500(v132 + v492 + v304 * v491, v459, v535);
                  v539 = v132;
                  swift_endAccess();
                  v305 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
                  v306 = sub_1002D19E8(v305, v280);

                  if (v306)
                  {
                    v307 = v448;
                    v308 = v534;
                    v291(v448, v474, v534);
                    swift_beginAccess();
                    v309 = v522;
                    sub_10058D0CC(v522, v307);
                    swift_endAccess();
                    v310 = v309;
                    v280 = v506;
                    (*v486)(v310, v308);
                  }

                  v311 = v504;
                  static TimeZone.current.getter();
                  v312 = v466;
                  v313 = Date.rem_isToday(in:)();
                  (*v502)(v311, v505);
                  (*v509)(v458, v535);
                  v292(v464, v530);
                  v490(v462, v533);
                  (*v507)(v312, v532);
                  (*v518)(v290, v531);
                  if (v313)
                  {
                    v314 = v484;
                    sub_1000079B4(v484, &qword_10076B070);
                    v315 = v485;
                    v316 = v534;
                    (*v480)(v485, v474, v534);
                    v481(v315, 0, 1, v316);
                    v291 = v476;
                    v292 = v487;
                    sub_100016588(v315, v314, &qword_10076B070);
                  }

                  else
                  {
                    (*v486)(v474, v534);
                  }

                  v289 = v489 + v289;
                  --v286;
                }

                while (v286);

                v99 = v530;
                v137 = v520;
              }
            }

            v365 = v413;
            TTRRemindersListTreeViewModel.Section.header.getter();
            v366 = TTRRemindersListViewModel.SectionHeader.isTappable.getter();
            v367 = v487;
            (v487)(v137, v99);
            v368 = v137;
            v137 = v441;
            if (v366)
            {

              (*v509)(v365, v535);
              (*v486)(v428, v534);
            }

            else
            {
              TTRRemindersListTreeViewModel.Section.header.getter();
              v369 = v522;
              TTRRemindersListViewModel.SectionHeader.id.getter();
              v367(v368, v99);
              swift_beginAccess();
              v370 = v485;
              sub_1000EA510(v369, v485);
              v371 = *v486;
              v372 = v369;
              v373 = v534;
              (*v486)(v372, v534);
              sub_1000079B4(v370, &qword_10076B070);
              swift_endAccess();

              (*v509)(v365, v535);
              v371(v428, v373);
            }

            v192 = *v507;
            v374 = &v447;
          }

          else
          {
            if (v150 != v404)
            {
              result = _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
              return result;
            }

            v257 = v477;
            (*v455)(v477, v139);
            v258 = *&v257[*(sub_100058000(&qword_100779B68) + 48)];
            v259 = v416;
            v260 = v257;
            v261 = v532;
            (*v440)(v416, v260, v532);
            v262 = v429;
            v499 = *v503;
            v499(v429, v259, v261);
            v263 = v534;
            v498 = *v515;
            v498(v262, v403, v534);
            v264 = *(v258 + 16);
            if (v264)
            {
              v265 = v452;
              v266 = v401;
              v267 = v531;
              (*(v452 + 16))(v401, v258 + ((*(v265 + 80) + 32) & ~*(v265 + 80)), v531);
              v268 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
              (*(v265 + 8))(v266, v267);
            }

            else
            {
              v268 = _swiftEmptyArrayStorage;
            }

            v410 = v258;
            v317 = v506;
            v318 = sub_1002D19E8(v268, v506);
            v319 = v318;
            if (qword_100767140 != -1)
            {
              v318 = swift_once();
            }

            v320 = qword_1007794B8;
            __chkstk_darwin(v318);
            v399[-2] = v317;
            v321 = v422;
            v497 = v320;
            TTRShowScheduledSectionHeaderTitleFormatter.title(for:isFirst:hasVisibleReminders:)();
            v476 = *v521;
            v476(v522, v429, v263);
            v322 = v516;
            v323 = v533;
            v496 = *v514;
            v496(v516, v321, v533);
            v495 = *v513;
            (v495)(v322, 0, 1, v323);
            v324 = v424;
            TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
            v494 = *v512;
            v494(v137, v324, v530);
            v325 = v419;
            TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
            v493 = *v510;
            v493(v420, v325, v535);
            swift_beginAccess();
            v139 = v500;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v139 = sub_1005472D4(0, v139[2] + 1, 1, v139);
            }

            v327 = v139[2];
            v326 = v139[3];
            v99 = v530;
            v328 = v506;
            if (v327 >= v326 >> 1)
            {
              v139 = sub_1005472D4(v326 > 1, v327 + 1, 1, v139);
            }

            v139[2] = (v327 + 1);
            v492 = (*(v449 + 80) + 32) & ~*(v449 + 80);
            v491 = *(v449 + 72);
            v500 = *(v449 + 32);
            v500(v139 + v492 + v491 * v327, v420, v535);
            v132 = v139;
            v539 = v139;
            swift_endAccess();
            if (v319)
            {
              v329 = v448;
              v330 = v534;
              v476(v448, v429, v534);
              swift_beginAccess();
              v331 = v522;
              sub_10058D0CC(v522, v329);
              swift_endAccess();
              (*v486)(v331, v330);
            }

            v138 = v517;
            v487 = *v517;
            (v487)(v424, v99);
            v490 = *v511;
            v490(v422, v533);
            v500(v414, v419, v535);
            v332 = v410;
            v333 = *(v410 + 16);
            if (v333 >= 2)
            {
              if (!v264)
              {
                goto LABEL_139;
              }

              if (v333 < v264)
              {
                goto LABEL_140;
              }

              v334 = v264 - 1;
              if (v334)
              {
                v335 = (*(v452 + 80) + 32) & ~*(v452 + 80);
                v336 = *(v452 + 72);
                v488 = *(v452 + 16);

                v489 = v336;
                v337 = v336 + v335 + v332;
                v338 = v472;
                v339 = v476;
                v340 = v487;
                do
                {
                  v488(v338, v337, v531);
                  v341 = v467;
                  v342 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.date.getter();
                  __chkstk_darwin(v342);
                  v399[-2] = v328;
                  v343 = v463;
                  TTRShowScheduledSectionHeaderTitleFormatter.title(for:hasVisibleReminders:)();
                  v344 = v475;
                  v499(v475, v341, v532);
                  v345 = v534;
                  v498(v344, v501, v534);
                  v339(v522, v344, v345);
                  v346 = v516;
                  v347 = v343;
                  v338 = v472;
                  v348 = v533;
                  v496(v516, v347, v533);
                  (v495)(v346, 0, 1, v348);
                  v349 = v465;
                  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
                  v494(v520, v349, v530);
                  REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
                  v350 = v460;
                  TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
                  v493(v461, v350, v535);
                  swift_beginAccess();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v132 = sub_1005472D4(0, *(v132 + 16) + 1, 1, v132);
                  }

                  v352 = *(v132 + 16);
                  v351 = *(v132 + 24);
                  if (v352 >= v351 >> 1)
                  {
                    v132 = sub_1005472D4(v351 > 1, v352 + 1, 1, v132);
                  }

                  *(v132 + 16) = v352 + 1;
                  v500(v132 + v492 + v352 * v491, v461, v535);
                  v539 = v132;
                  swift_endAccess();
                  v353 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
                  v354 = sub_1002D19E8(v353, v328);

                  if (v354)
                  {
                    v355 = v448;
                    v356 = v534;
                    v339(v448, v475, v534);
                    swift_beginAccess();
                    v357 = v522;
                    sub_10058D0CC(v522, v355);
                    swift_endAccess();
                    v358 = v357;
                    v328 = v506;
                    (*v486)(v358, v356);
                  }

                  v359 = v504;
                  static TimeZone.current.getter();
                  v360 = v467;
                  v361 = Date.rem_isToday(in:)();
                  (*v502)(v359, v505);
                  (*v509)(v460, v535);
                  v340(v465, v530);
                  v490(v463, v533);
                  (*v507)(v360, v532);
                  (*v518)(v338, v531);
                  if (v361)
                  {
                    v362 = v484;
                    sub_1000079B4(v484, &qword_10076B070);
                    v363 = v485;
                    v364 = v534;
                    (*v480)(v485, v475, v534);
                    v481(v363, 0, 1, v364);
                    v339 = v476;
                    v340 = v487;
                    sub_100016588(v363, v362, &qword_10076B070);
                  }

                  else
                  {
                    (*v486)(v475, v534);
                  }

                  v337 = v489 + v337;
                  --v334;
                }

                while (v334);

                v99 = v530;
                v137 = v520;
              }
            }

            v375 = v414;
            TTRRemindersListTreeViewModel.Section.header.getter();
            v376 = TTRRemindersListViewModel.SectionHeader.isTappable.getter();
            v377 = v487;
            (v487)(v137, v99);
            v378 = v137;
            v137 = v441;
            if (v376)
            {

              (*v509)(v375, v535);
              (*v486)(v429, v534);
            }

            else
            {
              TTRRemindersListTreeViewModel.Section.header.getter();
              v379 = v522;
              TTRRemindersListViewModel.SectionHeader.id.getter();
              v377(v378, v99);
              swift_beginAccess();
              v380 = v485;
              sub_1000EA510(v379, v485);
              v381 = *v486;
              v382 = v379;
              v383 = v534;
              (*v486)(v382, v534);
              sub_1000079B4(v380, &qword_10076B070);
              swift_endAccess();

              (*v509)(v375, v535);
              v381(v429, v383);
            }

            v192 = *v507;
            v374 = &v448;
          }

          v193 = *(v374 - 32);
          v256 = &v540;
        }

        v192(v193, *(v256 - 32));
        v139 = v451;
        (*v453)(v483, v451);
        v138 = v478;
      }

      v143 = v450;
LABEL_11:
      v142 = v479 + 1;
      if (v479 + 1 == v468)
      {
        goto LABEL_133;
      }
    }
  }

  v132 = _swiftEmptyArrayStorage;
LABEL_133:

  v384 = v441;
  *(v441 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_lastSectionsSnapshot) = v132;

  v385 = v484;
  swift_beginAccess();
  v386 = v485;
  sub_10000794C(v385, v485, &qword_10076B070);
  v387 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_defaultSectionID;
  swift_beginAccess();
  sub_1002D5734(v386, v384 + v387);
  swift_endAccess();
  swift_beginAccess();
  v388 = v538;
  *(v384 + OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_sectionHeadersNeedingPlaceholderReminderItems) = v538;

  swift_beginAccess();
  sub_1000EC0CC(v388);
  swift_endAccess();
  v389 = v405;
  v390 = v407;
  v391 = v406;
  (*(v405 + 16))(v407, v426, v406);
  (*(v389 + 56))(v390, 0, 1, v391);
  v392 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v393 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
  v394 = type metadata accessor for TTRRemindersListViewModel.Item();
  v395 = v408;
  (*(*(v394 - 8) + 56))(v408, 1, 1, v394);
  v537[3] = v392;
  v537[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v537[0] = v393;
  sub_10000B0D8(v537, &v536);
  v396 = swift_allocObject();
  *(v396 + 16) = v132;
  sub_100005FD0(&v536, v396 + 24);
  *(v396 + 64) = v384;

  sub_100586238(1, v390, sub_100070528, v396, v409, 0, v395);

  sub_1000079B4(v395, &qword_100772140);
  sub_1000079B4(v390, &unk_10078A380);
  sub_1000079B4(v484, &qword_10076B070);
  (*(v389 + 8))(v426, v391);

  sub_100004758(v537);
}