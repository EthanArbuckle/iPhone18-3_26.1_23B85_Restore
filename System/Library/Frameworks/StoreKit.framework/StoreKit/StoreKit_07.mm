unint64_t sub_1B24B748C(uint64_t a1, unint64_t a2)
{
  result = 0xD000000000000011;
  switch(a2)
  {
    case 0uLL:
      return result;
    case 1uLL:
    case 3uLL:
      result = 0xD000000000000015;
      break;
    case 2uLL:
      result = 0xD000000000000018;
      break;
    default:
      sub_1B24C43D4(0xD000000000000011, a2);
      result = 0xD000000000000019;
      break;
  }

  return result;
}

void *Transaction.init(receipt:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, int **a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_6();
  v305 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  v11 = OUTLINED_FUNCTION_2_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_313();
  *(&v304 + 1) = v12;
  MEMORY[0x1EEE9AC00](v13);
  *&v304 = &v296 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1780);
  OUTLINED_FUNCTION_2_2(v15);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_19_6();
  v303 = v17;
  OUTLINED_FUNCTION_291();
  sub_1B256D47C();
  OUTLINED_FUNCTION_1_1();
  v301 = v19;
  v302 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v300 = v21 - v20;
  OUTLINED_FUNCTION_291();
  v22 = sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();
  v310 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v306 = (v26 - v25);
  OUTLINED_FUNCTION_291();
  v27 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_313();
  v307 = v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v308 = &v296 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v309 = &v296 - v35;
  OUTLINED_FUNCTION_291();
  sub_1B256D75C();
  OUTLINED_FUNCTION_1_1();
  i = v37;
  v313 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13();
  v40 = v39 - v38;
  *&__dst[0] = 46;
  *(&__dst[0] + 1) = 0xE100000000000000;
  v317[2] = __dst;

  sub_1B24C3E54(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B248C788, v317, a1, a2, v41, v42, v296, v297, v298, v299, v300, v301, v302, v303, v304, *(&v304 + 1), v305, v306, v307, v308, v309, v310, v311, i, v313, a1, v315, v316);
  v45 = v43;
  v315 = v3;
  if (*(v43 + 16) != 3)
  {

    sub_1B24A231C();
    OUTLINED_FUNCTION_113_0();
    swift_allocError();
    *v53 = 0;
    return swift_willThrow();
  }

  v311 = a2;
  v297 = v22;
  v298 = v29;
  v299 = v27;
  v316 = a3;
  v46 = 0;
  v47 = v43 + 56;
  v48 = 1;
  while (1)
  {
    if (v46 == 3)
    {
      if ((v48 & 1) == 0)
      {

        sub_1B24A231C();
        OUTLINED_FUNCTION_113_0();
        swift_allocError();
        *v62 = 7;
        return swift_willThrow();
      }

      if (*(v45 + 16) < 3uLL)
      {
        __break(1u);
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_114_0();
      MEMORY[0x1B2749CC0]();
      v27 = v54;

      OUTLINED_FUNCTION_116_0();
      LODWORD(a3) = sub_1B246314C();
      a2 = v55;

      OUTLINED_FUNCTION_34();
      sub_1B256D1AC();
      OUTLINED_FUNCTION_35_1();
      if (!v219 & v58)
      {
        __break(1u);
        goto LABEL_79;
      }

      v27 = v56;
      v59 = v57;

      *&__dst[0] = v27;
      *(&__dst[0] + 1) = v59;
      sub_1B246352C();
      v60 = v315;
      sub_1B256D74C();
      a1 = v60;
      a3 = v316;
      if (v60)
      {
      }

      (*(i + 8))(v40, v313);
      v63 = v311;
      *a3 = v314;
      a3[1] = v63;
      a3[2] = v45;
      sub_1B256CE7C();
      LODWORD(a3) = swift_allocObject();

      v64 = sub_1B256CE6C();
      if (*(v45 + 16) >= 2uLL)
      {
        LODWORD(a3) = v64;
        a2 = *(v45 + 88);

        v65 = OUTLINED_FUNCTION_89();
        MEMORY[0x1B2749CC0](v65);
        LODWORD(v47) = v66;

        v27 = sub_1B246314C();
        v46 = v67;

        OUTLINED_FUNCTION_89();
        sub_1B256D1AC();
        OUTLINED_FUNCTION_35_1();
        if (!(!v219 & v58))
        {
          v40 = v68;
          v70 = v69;

          sub_1B244A000();
          sub_1B256CE5C();
          sub_1B2443AD0(v40, v70);

          v27 = *(&__dst[0] + 1);
          a1 = *&__dst[0];
          LODWORD(a3) = LOBYTE(__dst[1]);
          v47 = v316;
          *(v316 + 3) = __dst[0];
          *(v47 + 40) = a3;
          OUTLINED_FUNCTION_166_0();
          v3 = 0;
          v75 = sub_1B24B0F8C(v71, v72, v73, v74);
          LODWORD(v40) = v311;
          *(v47 + 48) = v75;
          OUTLINED_FUNCTION_166_0();
          *(v47 + 56) = sub_1B24B0F8C(v76, v77, v78, v79);
          OUTLINED_FUNCTION_166_0();
          v43 = sub_1B24B083C(v80, v81, v82, v83);
          goto LABEL_65;
        }

        __break(1u);
        goto LABEL_83;
      }

      __break(1u);
LABEL_72:
      v137 = v315;
      v46 = v314;
      *(v316 + v314[15]) = v64;
      LODWORD(v47) = a1;
      LODWORD(v40) = v27;
      v138 = sub_1B24B083C(&unk_1F29AF938, a1, v27, a3);
      v315 = v137;
      if (v137)
      {
        goto LABEL_73;
      }

      v27 = v138;
      a2 = v139;
      v140 = (v316 + v46[20]);
      *v140 = v138;
      v140[1] = v139;
      OUTLINED_FUNCTION_59_2();
      sub_1B24B1270(v141, v142, v143, v144, v145);
      v315 = 0;
      *(v316 + v46[28]) = __dst[0];
      OUTLINED_FUNCTION_59_2();
      sub_1B24B163C(v146, v147, v148, v149, v150);
      v315 = 0;
      (*(v310 + 32))(v316 + v46[29], v306, v297);
      OUTLINED_FUNCTION_59_2();
      v151 = v315;
      v156 = sub_1B24B083C(v152, v153, v154, v155);
      v315 = v151;
      if (v151)
      {

        OUTLINED_FUNCTION_39_4();
        OUTLINED_FUNCTION_38_5();
        LODWORD(v307) = 0;
        OUTLINED_FUNCTION_13_12();
        LODWORD(v305) = v158;
        LODWORD(v306) = v158;
        goto LABEL_74;
      }

      v159 = (v316 + v46[30]);
      *v159 = v156;
      v159[1] = v157;
      OUTLINED_FUNCTION_59_2();
      sub_1B24B1A34(v160, v161, v162, v163, v164, v165);
      v315 = 0;
      v166 = *(&__dst[0] + 1);
      v167 = (v316 + v46[22]);
      *v167 = *&__dst[0];
      v167[1] = v166;
      OUTLINED_FUNCTION_59_2();
      i = sub_1B24B083C(v168, v169, v170, v171);
      v315 = 0;
LABEL_79:
      a1 = v57;
      OUTLINED_FUNCTION_59_2();
      v172 = v315;
      v308 = sub_1B24B083C(v173, v174, v175, v176);
      v309 = v177;
      v315 = v172;
      if (v172)
      {

        OUTLINED_FUNCTION_39_4();
        LODWORD(v27) = 0;
        LODWORD(v309) = 0;
        LODWORD(v314) = 0;
        OUTLINED_FUNCTION_13_12();
        LODWORD(v308) = v178;
LABEL_81:
        LODWORD(v305) = v178;
        LODWORD(v306) = v178;
        LODWORD(v307) = v178;
        goto LABEL_74;
      }

LABEL_83:
      sub_1B256D3DC();
      v179 = (v316 + v46[24]);
      *v179 = i;
      v179[1] = a1;
      v296 = v179;
      v180 = HIBYTE(v309) & 0xF;
      if ((v309 & 0x2000000000000000) == 0)
      {
        v180 = v308 & 0xFFFFFFFFFFFFLL;
      }

      v306 = (4 * v180);
      for (i = 15; v306 != (i >> 14); i = sub_1B256DA9C())
      {
        sub_1B256DB7C();
        LODWORD(v307) = sub_1B256D91C();

        if ((v307 & 1) == 0)
        {
          break;
        }
      }

      i = sub_1B256DBAC();
      v307 = v182;
      v308 = v181;
      v306 = v183;

      i = MEMORY[0x1B2749CC0](i, v308, v307, v306);
      v309 = v184;

      a1 = v296;
      v185 = v309;
      v296[2] = i;
      *(a1 + 24) = v185;
      v186 = type metadata accessor for Storefront(0);
      (*(v301 + 32))(a1 + *(v186 + 24), v300, v302);
      OUTLINED_FUNCTION_59_2();
      v187 = v315;
      sub_1B24B1A34(v188, v189, v190, v191, v192, v193);
      v315 = v187;
      if (v187)
      {

        OUTLINED_FUNCTION_39_4();
        LODWORD(v27) = 0;
        LODWORD(v314) = 0;
        OUTLINED_FUNCTION_13_12();
        LODWORD(v308) = v178;
LABEL_93:
        LODWORD(v309) = v178;
        goto LABEL_81;
      }

      v194 = *(&__dst[0] + 1);
      v195 = (v316 + v46[23]);
      *v195 = *&__dst[0];
      v195[1] = v194;
      OUTLINED_FUNCTION_59_2();
      sub_1B24B1C9C(v196, v197, v198, v199, v200);
      LODWORD(v315) = __dst[1];
      i = *(&__dst[0] + 1);
      v309 = *&__dst[0];
      MEMORY[0x1B274A4D0](1000);
      v201 = sub_1B256E26C();
      v202 = v316 + v46[25];
      *v202 = v201;
      *(v202 + 1) = v203;
      *(v202 + 4) = v204;
      v202[20] = 0;
      OUTLINED_FUNCTION_59_2();
      sub_1B24B1F8C(v205, v206, v207, v208, v209);
      v315 = 0;
      LODWORD(i) = 0;
      v210 = sub_1B256D45C();
      LODWORD(a1) = v303;
      __swift_storeEnumTagSinglePayload(v303, i, 1, v210);
      sub_1B24C42F0();
      OUTLINED_FUNCTION_59_2();
      v211 = v315;
      v216 = sub_1B24B083C(v212, v213, v214, v215);
      v315 = v211;
      if (v211)
      {

        OUTLINED_FUNCTION_39_4();
        LODWORD(v314) = 0;
        OUTLINED_FUNCTION_13_12();
        LODWORD(v308) = v178;
        LODWORD(v27) = 1;
        goto LABEL_93;
      }

      v218 = (v316 + v46[27]);
      *v218 = v216;
      v218[1] = v217;
      v219 = v27 == 0xD00000000000001BLL && 0x80000001B258FD90 == a2;
      if (v219 || (sub_1B256EB5C() & 1) != 0)
      {
        OUTLINED_FUNCTION_59_2();
        v220 = v315;
        v225 = sub_1B24B083C(v221, v222, v223, v224);
        v315 = v220;
        if (v220)
        {

          OUTLINED_FUNCTION_39_4();
          OUTLINED_FUNCTION_13_12();
LABEL_109:
          LODWORD(v308) = v178;
          LODWORD(v27) = 1;
          LODWORD(v309) = v178;
          LODWORD(v314) = v178;
          goto LABEL_81;
        }

        v227 = v316;
        v316[12] = v225;
        *(v227 + 104) = v226;
        OUTLINED_FUNCTION_59_2();
        OUTLINED_FUNCTION_97_1();
        sub_1B24B2960(v228, v229, v230, v231, v232, v233, v234);
        v315 = 0;
        OUTLINED_FUNCTION_309(v250);
        a2 = v304;
        sub_1B256D31C();
        __swift_storeEnumTagSinglePayload(a2, 0, 1, v299);
        v251 = v316;
        sub_1B24C42F0();
        v252 = *(v251 + 32);
        v253 = *(v251 + 40);
        v318[0] = *(v251 + 24);
        v318[1] = v252;
        v319 = v253;
        sub_1B24472B8(v318[0], v252, v253);
        v254 = v315;
        sub_1B24BB794(v318, v255, v256, v257, v258, v259, v260, v261, v296, v297, v298, v299, v300, v301, v302, v303, v304);
        v315 = v254;
        if (v254)
        {

          LODWORD(a3) = 0;
          LODWORD(v313) = 0;
          LODWORD(v40) = 1;
          LODWORD(v311) = 1;
          OUTLINED_FUNCTION_79_1();
          LODWORD(i) = v178;
          LODWORD(a1) = 1;
          goto LABEL_109;
        }

        v281 = *&__dst[3];
        v282 = v316 + v46[17];
        v283 = __dst[1];
        *v282 = __dst[0];
        *(v282 + 1) = v283;
        *(v282 + 2) = __dst[2];
        *(v282 + 6) = v281;
        OUTLINED_FUNCTION_59_2();
        v288 = sub_1B24B2334(v284, v285, v286, v287);
        *(v316 + v46[16]) = v288 & 1;
        OUTLINED_FUNCTION_59_2();
        v293 = sub_1B24B083C(v289, v290, v291, v292);
        v315 = 0;
        v294 = v316;
        v316[8] = v293;
        *(v294 + 72) = v295;
      }

      else
      {
        v235 = v316;
        v316[12] = 0;
        v235[13] = 0;
        OUTLINED_FUNCTION_16_2();
        __swift_storeEnumTagSinglePayload(v236, v237, v238, v299);
        v239 = v235 + v46[17];
        *v239 = xmmword_1B2580A90;
        *(v239 + 1) = 0u;
        *(v239 + 2) = 0u;
        *(v239 + 6) = 0;
        *(v235 + v46[16]) = 0;
        v235[8] = 0;
        v235[9] = 0;
      }

      OUTLINED_FUNCTION_59_2();
      v240 = v315;
      OUTLINED_FUNCTION_97_1();
      sub_1B24B2960(v241, v242, v243, v244, v245, v246, v247);
      if (v240)
      {

        v249 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_309(v248);
        sub_1B256D31C();
        v249 = 0;
      }

      __swift_storeEnumTagSinglePayload(*(&v304 + 1), v249, 1, v299);
      sub_1B24C42F0();
      OUTLINED_FUNCTION_59_2();
      OUTLINED_FUNCTION_210();
      sub_1B24B2960(v262, v263, v264, v265, v266, v267, v268);
      v269 = v316 + v46[19];
      *v269 = v270;
      v269[8] = 0;
      OUTLINED_FUNCTION_59_2();
      sub_1B24B163C(v271, v272, v273, v274, v275);
      __swift_storeEnumTagSinglePayload(v305, 0, 1, v297);
      sub_1B24C42F0();
      OUTLINED_FUNCTION_59_2();
      sub_1B24B2624(v276, v277, v278, v279, v280);
      v315 = 0;
      nullsub_3(__dst);
      return memcpy(v316 + v46[32], __dst, 0x98uLL);
    }

    if (v46 >= *(v45 + 16))
    {
      break;
    }

    if ((v48 & 1) != 0 && (v3 = *(v47 - 8), a1 = *v47, v50 = *(v47 - 24), v49 = *(v47 - 16), , MEMORY[0x1B2749CC0](v50, v49, v3, a1), sub_1B246314C(), LODWORD(a3) = v51, , OUTLINED_FUNCTION_11_6(), a2 = sub_1B256D1AC(), v27 = v52, , v43 = , v27 >> 60 != 15))
    {
      v43 = sub_1B2443AD0(a2, v27);
      v48 = 1;
    }

    else
    {
      v48 = 0;
    }

    v47 += 32;
    v46 = (v46 + 1);
  }

  __break(1u);
LABEL_65:
  *(v47 + 80) = v43;
  *(v47 + 88) = v44;
  OUTLINED_FUNCTION_166_0();
  v102 = sub_1B24B083C(v98, v99, v100, v101);
  if (v3)
  {
    v315 = v3;

    OUTLINED_FUNCTION_183();
    LODWORD(a2) = 0;
    LODWORD(v47) = 0;
    LODWORD(v46) = 0;
    OUTLINED_FUNCTION_5_18();
    v104 = 0;
    LODWORD(v40) = 1;
    goto LABEL_22;
  }

  *(v47 + 112) = v102;
  *(v47 + 120) = v103;
  OUTLINED_FUNCTION_166_0();
  sub_1B24B2960(v105, v106, v107, v108, v109, 0xE500000000000000, v110);
  a2 = 0;
  v111 = v309;
  sub_1B256D31C();
  v314 = type metadata accessor for Transaction(0);
  v112 = *(v298 + 32);
  v113 = v47 + v314[12];
  i = v298 + 32;
  v315 = v112;
  v112(v113, v111, v299);
  v313 = v27;
  OUTLINED_FUNCTION_97_1();
  sub_1B24B2960(v114, v115, v116, v117, v118, v119, v120);
  OUTLINED_FUNCTION_309(v121);
  v122 = v308;
  sub_1B256D31C();
  v315(v47 + v314[13], v122, v299);
  OUTLINED_FUNCTION_97_1();
  sub_1B24B2960(v123, v124, v125, v126, v127, v128, v129);
LABEL_69:
  OUTLINED_FUNCTION_309(v43);
  v46 = v307;
  sub_1B256D31C();
  v315(v47 + v314[31], v46, v299);
  v27 = v313;
  OUTLINED_FUNCTION_210();
  sub_1B24B2960(v130, v131, v132, v133, v134, v135, v136);
  v315 = a2;
  if (!a2)
  {
    goto LABEL_72;
  }

LABEL_73:

  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_5_18();
  OUTLINED_FUNCTION_37_2();
LABEL_74:
  v104 = 1;
LABEL_22:
  result = sub_1B24472E0(v316[3], v316[4], *(v316 + 40));
  if (a3)
  {
  }

  if (v40)
  {
  }

  if (v311)
  {

    if (!a2)
    {
      goto LABEL_28;
    }

LABEL_40:

    if (!v47)
    {
      goto LABEL_30;
    }

LABEL_29:
    v84 = type metadata accessor for Transaction(0);
    result = (*(v298 + 8))(v316 + *(v84 + 48), v299);
    goto LABEL_30;
  }

  if (a2)
  {
    goto LABEL_40;
  }

LABEL_28:
  if (v47)
  {
    goto LABEL_29;
  }

LABEL_30:
  v85 = v316;
  if (v46)
  {
    v86 = type metadata accessor for Transaction(0);
    result = (*(v298 + 8))(v85 + *(v86 + 52), v299);
  }

  if (i)
  {
    v87 = type metadata accessor for Transaction(0);
    result = sub_1B243E88C(v85 + *(v87 + 56), &qword_1EB7D0088);
  }

  if (v313)
  {
    v88 = type metadata accessor for Transaction(0);
    v89 = OUTLINED_FUNCTION_311(v85 + *(v88 + 68));
    result = sub_1B24C41D4(v89, v90);
    if (!a3)
    {
      goto LABEL_36;
    }

LABEL_43:
    v91 = type metadata accessor for Transaction(0);
    result = sub_1B243E88C(v85 + *(v91 + 72), &qword_1EB7D0088);
    if (!a1)
    {
      goto LABEL_44;
    }

LABEL_37:
    type metadata accessor for Transaction(0);
    result = OUTLINED_FUNCTION_289();
    if (!a3)
    {
      goto LABEL_46;
    }

LABEL_45:
    v92 = type metadata accessor for Transaction(0);
    result = sub_1B243E88C(v85 + *(v92 + 84), &qword_1EB7D1770);
    goto LABEL_46;
  }

  if (a3)
  {
    goto LABEL_43;
  }

LABEL_36:
  if (a1)
  {
    goto LABEL_37;
  }

LABEL_44:
  if (a3)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (v308)
  {
    type metadata accessor for Transaction(0);
    result = OUTLINED_FUNCTION_289();
  }

  if (v27)
  {
    type metadata accessor for Transaction(0);
    result = OUTLINED_FUNCTION_289();
  }

  if (v309)
  {
    v93 = type metadata accessor for Transaction(0);
    result = sub_1B24C4368(v85 + *(v93 + 96), type metadata accessor for Storefront);
  }

  if (v27)
  {
    v94 = type metadata accessor for Transaction(0);
    result = sub_1B243E88C(v85 + *(v94 + 104), &unk_1EB7D1780);
  }

  if (v314)
  {
    type metadata accessor for Transaction(0);
    result = OUTLINED_FUNCTION_289();
  }

  if (v305)
  {
    v95 = type metadata accessor for Transaction(0);
    result = sub_1B2443AE4(*(v85 + *(v95 + 112)), *(v85 + *(v95 + 112) + 8));
  }

  if (v306)
  {
    v96 = type metadata accessor for Transaction(0);
    result = (*(v310 + 8))(v85 + *(v96 + 116), v297);
  }

  if (v307)
  {
    type metadata accessor for Transaction(0);
    result = OUTLINED_FUNCTION_289();
  }

  if (v104)
  {
    v97 = type metadata accessor for Transaction(0);
    return (*(v298 + 8))(v85 + *(v97 + 124), v299);
  }

  return result;
}

uint64_t sub_1B24B8C38()
{
  OUTLINED_FUNCTION_4_0();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  OUTLINED_FUNCTION_2_2(v5);
  v0[15] = OUTLINED_FUNCTION_250();
  v6 = type metadata accessor for SKLogger();
  v0[16] = v6;
  OUTLINED_FUNCTION_2_2(v6);
  v0[17] = OUTLINED_FUNCTION_250();
  v7 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24B8CE4()
{
  v13 = v0;
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = v0[17];
  v0[18] = __swift_project_value_buffer(v0[16], qword_1ED69A108);
  OUTLINED_FUNCTION_80_1();
  sub_1B24C5E6C();

  v2 = sub_1B256D5CC();
  sub_1B256D5EC();
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v1);
  v4 = sub_1B256E0CC();

  if (os_log_type_enabled(v2, v4))
  {
    v5 = OUTLINED_FUNCTION_21_3();
    v12 = swift_slowAlloc();
    *v5 = 136446467;
    if (qword_1EB7CDA50 != -1)
    {
      OUTLINED_FUNCTION_3_14();
    }

    sub_1B256EE5C();
    v6 = sub_1B2519814(v0[8], v0[9], &v12);

    *(v5 + 4) = v6;
    *(v5 + 12) = 2081;
    v7 = OUTLINED_FUNCTION_132_0();
    *(v5 + 14) = sub_1B2519814(v7, v8, v9);
    _os_log_impl(&dword_1B23EF000, v2, v4, "[%{public}s] Finishing transaction %{private}s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  if (qword_1EB7CDA40 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB7CDA48;
  v0[19] = qword_1EB7CDA48;

  return MEMORY[0x1EEE6DFA0](sub_1B24B8F24, v10, 0);
}

uint64_t sub_1B24B8F24()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 160) = sub_1B246F59C();
  v1 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B24B8F84()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[12];
  v0[2] = v0[11];
  v0[3] = v1;

  sub_1B256DB9C();
  v0[21] = v2;
  type metadata accessor for ClientOverride(0);
  v3 = OUTLINED_FUNCTION_150_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1B24B9074;
  OUTLINED_FUNCTION_41_1();

  return sub_1B24D2D34();
}

uint64_t sub_1B24B9074()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v7 = v6;
  *(v8 + 184) = v0;

  sub_1B243E88C(v5, &qword_1EB7D1850);

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B24B91C0()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_317();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B24B9228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_323();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_316();
  a20 = v22;
  v25 = v22[23];

  a10 = 0;
  a11 = 0xE000000000000000;
  sub_1B256E4FC();
  v26 = a11;
  v22[4] = a10;
  v22[5] = v26;
  MEMORY[0x1B2749D50](0xD00000000000001DLL, 0x80000001B258FF20);
  v22[10] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  OUTLINED_FUNCTION_24();
  sub_1B256E78C();
  if (qword_1EB7CDA50 != -1)
  {
    OUTLINED_FUNCTION_3_14();
  }

  sub_1B256EE5C();
  v28 = v22[6];
  v27 = v22[7];
  v29 = sub_1B256E0AC();

  v30 = sub_1B256D5CC();

  if (os_log_type_enabled(v30, v29))
  {
    v31 = OUTLINED_FUNCTION_21_3();
    v32 = swift_slowAlloc();
    *v31 = 136446466;
    a9 = v32;
    a10 = 91;
    a11 = 0xE100000000000000;
    MEMORY[0x1B2749D50](v28, v27);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v33 = sub_1B2519814(a10, a11, &a9);

    *(v31 + 4) = v33;
    *(v31 + 12) = 2082;
    v34 = OUTLINED_FUNCTION_35_0();
    v37 = sub_1B2519814(v34, v35, v36);

    *(v31 + 14) = v37;
    _os_log_impl(&dword_1B23EF000, v30, v29, "%{public}s%{public}s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  v38 = v22[23];
  v39 = [objc_allocWithZone(type metadata accessor for SKTwoErrorEvent()) init];
  v40 = sub_1B256D0CC();
  [v39 setPrimaryError_];

  [v39 setMappedError_];
  [v39 setUserAction_];
  OUTLINED_FUNCTION_264(v39 + OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context);
  v41 = sub_1B256D98C();
  [v39 setInAppPurchaseID_];

  [objc_opt_self() sendEvent_];
  OUTLINED_FUNCTION_317();

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_114();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1B24B9580(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1900);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16[-v12];
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v17 = &v19;
  v18 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8790], v10);
  sub_1B256DF6C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17C0);
  (*(*(v14 - 8) + 8))(a5, v14);
  sub_1B24C43D4(v19, v20);
}

uint64_t sub_1B24B972C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v32 = a1;
  v33 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17C0);
  v30 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v31 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1908);
  v29 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  (*(v12 + 16))(v15, a1, v11);
  (*(v8 + 16))(v10, v34, v7);
  v20 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v21 = (v13 + *(v8 + 80) + v20) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v33;
  v25 = v35;
  v24 = v36;
  *(v22 + 4) = v33;
  *(v22 + 5) = v25;
  v26 = v37;
  *(v22 + 6) = v24;
  *(v22 + 7) = v26;
  (*(v12 + 32))(&v22[v20], v15, v29);
  (*(v8 + 32))(&v22[v21], v31, v30);
  sub_1B24C43C0(v23, v25);

  sub_1B247DAA8();
  return sub_1B256DEDC();
}

uint64_t sub_1B24B9A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  return MEMORY[0x1EEE6DFA0](sub_1B24B9A54, 0, 0);
}

uint64_t sub_1B24B9A54()
{
  OUTLINED_FUNCTION_4_0();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 56);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1B24B9B3C;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1B24B9B3C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24B9C3C()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1908);
  sub_1B256DEFC();
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24B9CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17C0);
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v8[11] = *(v10 + 64);
  v8[12] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1908);
  v8[13] = v11;
  v12 = *(v11 - 8);
  v8[14] = v12;
  v8[15] = *(v12 + 64);
  v8[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24B9E40, 0, 0);
}

uint64_t sub_1B24B9E40()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[13];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v39 = v0[5];
  v40 = v0[17];
  v7 = v0[3];
  sub_1B256DDAC();
  v8 = OUTLINED_FUNCTION_150_0();
  v36 = v9;
  __swift_storeEnumTagSinglePayload(v8, v10, v11, v9);
  v37 = *(v2 + 16);
  v37(v1, v5, v3);
  v12 = *(v2 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v7;
  *(v13 + 5) = v6;
  *(v13 + 6) = v39;
  *(v13 + 7) = v4;
  v38 = *(v2 + 32);
  v38(&v13[(v12 + 64) & ~v12], v1, v3);
  sub_1B24C43C0(v7, v6);

  v14 = sub_1B24BA738(v40, &unk_1B2581690, v13);
  sub_1B243E88C(v40, &qword_1EB7D1910);
  v16 = v0[16];
  v15 = v0[17];
  if (v14)
  {
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v35 = v0[11];
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[7];
    OUTLINED_FUNCTION_16_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v36);
    (*(v19 + 16))(v18, v21, v20);
    v26 = v22;
    v27 = v17;
    v37(v16, v26, v17);
    v28 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v29 = (v35 + v12 + v28) & ~v12;
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    (*(v19 + 32))(v30 + v28, v18, v20);
    v38((v30 + v29), v16, v27);
    sub_1B24BA738(v15, &unk_1B25816A0, v30);
    sub_1B243E88C(v15, &qword_1EB7D1910);
    v31 = swift_task_alloc();
    v0[18] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1918);
    *v31 = v0;
    v31[1] = sub_1B24BA1A8;
    v32 = OUTLINED_FUNCTION_130();

    return MEMORY[0x1EEE6D898](v32);
  }

  else
  {

    OUTLINED_FUNCTION_7_2();

    return v33();
  }
}

uint64_t sub_1B24BA1A8()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1B24BA2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  v8[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1920);
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DE0);
  v8[12] = swift_task_alloc();
  type metadata accessor for Transaction.Transactions.AsyncIterator(0);
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24BA460, 0, 0);
}

uint64_t sub_1B24BA460()
{
  OUTLINED_FUNCTION_24_5();
  v1 = OUTLINED_FUNCTION_35_0();
  sub_1B24C43C0(v1, v2);

  v3 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_335(v3, v4, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 112) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_181(v6);

  return Transaction.Transactions.AsyncIterator.next()();
}

uint64_t sub_1B24BA504()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24BA5E8()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_334(v0[12], v1, v0[7]);
  if (v2)
  {
    v3 = v0[13];
    OUTLINED_FUNCTION_2_25();
    sub_1B24C4368(v3, v4);

    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_336();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_35_0();
  sub_1B24C42F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1908);
  sub_1B256DEEC();
  v7 = OUTLINED_FUNCTION_41_1();
  v8(v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[14] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_336();

  return Transaction.Transactions.AsyncIterator.next()();
}

uint64_t sub_1B24BA738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = *v3;
  v10 = swift_taskGroup_addPending();
  if (v10)
  {
    sub_1B24C5C14();
    v11 = sub_1B256DDAC();
    if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
    {
      sub_1B243E88C(v8, &qword_1EB7D1910);
    }

    else
    {
      sub_1B256DD9C();
      (*(*(v11 - 8) + 8))(v8, v11);
    }

    if (*(a3 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1B256DCEC();
      v14 = v13;
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v16 = (v14 | v12);
    if (v14 | v12)
    {
      v19[0] = 0;
      v19[1] = 0;
      v16 = v19;
      v19[2] = v12;
      v19[3] = v14;
    }

    v18[1] = 1;
    v18[2] = v16;
    v18[3] = v9;
    swift_task_create();
  }

  return v10 & 1;
}

uint64_t sub_1B24BA954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  v5[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1920);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DE0);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17C0);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1928);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24BAB64, 0, 0);
}

uint64_t sub_1B24BAB64()
{
  OUTLINED_FUNCTION_21_5();
  (*(v0[12] + 16))(v0[13], v0[3], v0[11]);
  sub_1B248D0F8(&qword_1EB7D1930, &qword_1EB7D17C0);
  sub_1B256DECC();
  OUTLINED_FUNCTION_209(&qword_1EB7D1938, &qword_1EB7D1928);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[17] = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_158_0(v1);

  return MEMORY[0x1EEE6D8D0](v3);
}

uint64_t sub_1B24BAC68()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24BAD64()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_334(v0[10], v1, v0[5]);
  if (v2)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    OUTLINED_FUNCTION_327();

    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_336();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_35_0();
  sub_1B24C42F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1908);
  sub_1B256DEEC();
  v5 = OUTLINED_FUNCTION_41_1();
  v6(v5);
  OUTLINED_FUNCTION_209(&qword_1EB7D1938, &qword_1EB7D1928);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[17] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_158_0();
  OUTLINED_FUNCTION_336();

  return MEMORY[0x1EEE6D8D0]();
}

uint64_t sub_1B24BAEDC()
{
  OUTLINED_FUNCTION_21_5();
  v1 = sub_1B256EAEC();
  if (!v1)
  {
    OUTLINED_FUNCTION_113_0();
    v1 = swift_allocError();
  }

  (*(v0[15] + 8))(v0[16], v0[14]);
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1908);
  sub_1B256DEFC();
  OUTLINED_FUNCTION_327();

  OUTLINED_FUNCTION_7_2();

  return v2();
}

uint64_t sub_1B24BAFF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1B256D9BC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_1B24BB090()
{
  v0 = sub_1B256EC4C();

  if (v0 >= 0x1F)
  {
    return 31;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B24BB0F0(char a1)
{
  result = 0x756F636341707061;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD000000000000010;
      break;
    case 2:
      result = OUTLINED_FUNCTION_135_0();
      break;
    case 3:
      result = OUTLINED_FUNCTION_47_3();
      break;
    case 4:
      result = 0x697461636F766572;
      break;
    case 6:
      result = OUTLINED_FUNCTION_48_3();
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      v3 = 5;
      goto LABEL_21;
    case 9:
      result = 0x4473657269707865;
      break;
    case 10:
      result = 0x746361736E617274;
      break;
    case 11:
      result = 0x6461726770557369;
      break;
    case 12:
      result = 0x707954726566666FLL;
      break;
    case 13:
      result = 0x656449726566666FLL;
      break;
    case 14:
    case 27:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x726550726566666FLL;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
    case 30:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = OUTLINED_FUNCTION_49_3();
      break;
    case 20:
      result = 0x6573616863727570;
      break;
    case 21:
      result = OUTLINED_FUNCTION_87_0();
      break;
    case 22:
      result = OUTLINED_FUNCTION_15_13();
      break;
    case 23:
      result = 0x797469746E617571;
      break;
    case 24:
      v3 = 9;
LABEL_21:
      result = v3 | 0xD000000000000012;
      break;
    case 25:
    case 26:
      result = 0x6F726665726F7473;
      break;
    case 28:
      result = 1701869940;
      break;
    case 29:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B24BB484@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B24BB090();
  *a1 = result;
  return result;
}

unint64_t sub_1B24BB4B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B24BB0F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B24BB500@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B24BB0E4();
  *a1 = result;
  return result;
}

uint64_t sub_1B24BB534(uint64_t a1)
{
  v2 = sub_1B24C5260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24BB570(uint64_t a1)
{
  v2 = sub_1B24C5260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1B24BB750@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

void sub_1B24BB794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  OUTLINED_FUNCTION_205();
  v19 = v18;
  v22 = *v20;
  v21 = *(v20 + 8);
  v23 = *(v20 + 16);
  OUTLINED_FUNCTION_200();
  v28 = sub_1B24B083C(v24, v25, v26, v27);
  if (v17)
  {

    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = v28;
    v31 = v29;
  }

  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_210();
  sub_1B24B2960(v32, v33, v34, v35, v36, v37, v38);
  v40 = v39;
  OUTLINED_FUNCTION_200();
  sub_1B24B1A34(v41, v42, v43, v44, v45, v46);
  OUTLINED_FUNCTION_200();
  sub_1B24B0BC8(v47, v48, v49, v50, v51);
  sub_1B24472E0(v22, v21, v23);
  if (v31 || v40 == 1)
  {
    *v19 = v30;
    *(v19 + 8) = v31;
    *(v19 + 16) = v40;
    *(v19 + 24) = a12;
    *(v19 + 32) = a13;
    *(v19 + 40) = a17;
  }

  else
  {

    sub_1B256E58C();
    OUTLINED_FUNCTION_113_0();
    swift_allocError();
    v53 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    *v53 = MEMORY[0x1E69E6158];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1980);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1B2578530;
    *(v54 + 56) = &type metadata for Transaction.Key;
    *(v54 + 64) = sub_1B24C5260();
    *(v54 + 32) = 13;
    sub_1B256E4FC();

    OUTLINED_FUNCTION_112_0();
    v55 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v55);

    sub_1B256E54C();
    OUTLINED_FUNCTION_57_1();
    (*(v56 + 104))(v53);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_204();
}

uint64_t Transaction.Offer.paymentMode.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

__n128 Transaction.Offer.period.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = result;
  return result;
}

void static Transaction.Offer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v2[1];
  v8 = v2[2];
  v10 = v2[3];
  v9 = v2[4];
  if (v3)
  {
    if (!v7)
    {
      goto LABEL_22;
    }

    if (*v0 == *v2 && v3 == v7)
    {
      if (v4 != v8)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    if ((sub_1B256EB5C() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v7)
  {
    goto LABEL_22;
  }

  if (v4 != v8)
  {
    goto LABEL_22;
  }

LABEL_13:
  if (v6)
  {
    if (v9)
    {
      if (v5 != v10 || v6 != v9)
      {
        OUTLINED_FUNCTION_114_0();
        sub_1B256EB5C();
      }
    }
  }

  else if (!v9)
  {
  }

LABEL_22:
  OUTLINED_FUNCTION_45();
}

uint64_t Transaction.Offer.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  if (*(v0 + 8))
  {
    sub_1B256ED5C();
    OUTLINED_FUNCTION_198();
    sub_1B256DA7C();
  }

  else
  {
    sub_1B256ED5C();
  }

  MEMORY[0x1B274AFC0](v1);
  sub_1B256ED5C();
  if (v2)
  {
    OUTLINED_FUNCTION_116_0();
    sub_1B256DA7C();
  }

  if (v3 == 4)
  {
    return sub_1B256ED5C();
  }

  sub_1B256ED5C();
  MEMORY[0x1B274AFC0](v3);
  return MEMORY[0x1B274AFC0](v4);
}

uint64_t Transaction.Offer.hashValue.getter()
{
  sub_1B256ED3C();
  Transaction.Offer.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t sub_1B24BBEB0()
{
  sub_1B256ED3C();
  Transaction.Offer.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t Transaction.backing.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_1B24472B8(v2, v3, v4);
}

void Transaction.jsonRepresentation.getter()
{
  OUTLINED_FUNCTION_5_15();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_1();
    MEMORY[0x1B2749CC0](v1);
    OUTLINED_FUNCTION_8_15();

    OUTLINED_FUNCTION_22_1();
    sub_1B246314C();

    OUTLINED_FUNCTION_24();
    sub_1B256D1AC();
    OUTLINED_FUNCTION_35_1();
    if (!(!v2 & v0))
    {

      OUTLINED_FUNCTION_18_1();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t Transaction.purchaseDate.getter()
{
  OUTLINED_FUNCTION_239();
  sub_1B256D36C();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_6_14();

  return v1(v0);
}

uint64_t Transaction.originalPurchaseDate.getter()
{
  OUTLINED_FUNCTION_239();
  sub_1B256D36C();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_6_14();

  return v1(v0);
}

uint64_t Transaction.expirationDate.getter()
{
  v0 = OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_277(*(v0 + 56));
  return sub_1B24C5C14();
}

uint64_t Transaction.offer.getter()
{
  v2 = OUTLINED_FUNCTION_239();
  v3 = OUTLINED_FUNCTION_311(v1 + *(v2 + 68));
  *v0 = v3;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;
  v0[5] = v8;
  v0[6] = v9;

  return sub_1B24C421C(v3, v4);
}

uint64_t Transaction.offerType.getter()
{
  result = OUTLINED_FUNCTION_239();
  v3 = 0;
  v4 = v1 + *(result + 68);
  v5 = *(v4 + 8);
  if (v5 != 1)
  {
    v3 = *(v4 + 16);
  }

  *v0 = v3;
  *(v0 + 8) = v5 == 1;
  return result;
}

uint64_t Transaction.offerID.getter()
{
  type metadata accessor for Transaction(0);
  OUTLINED_FUNCTION_293();
  if (v1[1] != 1)
  {
    v0 = *v1;
  }

  return v0;
}

uint64_t Transaction.offerPaymentModeStringRepresentation.getter()
{
  type metadata accessor for Transaction(0);
  OUTLINED_FUNCTION_293();
  if (v1[1] != 1 && v1[4] != 0)
  {
    v0 = v1[3];
  }

  return v0;
}

uint64_t Transaction.offerPeriodStringRepresentation.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B2578530;
  *(inited + 32) = 0x726550726566666FLL;
  *(inited + 40) = 0xEB00000000646F69;
  v4 = OUTLINED_FUNCTION_275();
  sub_1B24472B8(v4, v5, v2);
  if (v2 != 5)
  {
    v18 = OUTLINED_FUNCTION_275();
    v20 = v2;
    goto LABEL_12;
  }

  if (!*(v1 + 16) || (, OUTLINED_FUNCTION_103_0(), v6 = sub_1B2455488(), v8 = v7, , (v8 & 1) == 0))
  {
    v18 = OUTLINED_FUNCTION_275();
    v20 = 5;
    goto LABEL_12;
  }

  v9 = *(v1 + 56) + 24 * v6;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = OUTLINED_FUNCTION_89();
  sub_1B24472B8(v13, v14, v12);
  v15 = OUTLINED_FUNCTION_275();
  sub_1B24472E0(v15, v16, 5);
  v17 = v12 == 6 && (v11 | v10) == 0;
  if (!v17 && v12)
  {
    v18 = OUTLINED_FUNCTION_89();
    v20 = v12;
LABEL_12:
    sub_1B24472E0(v18, v19, v20);
  }

  swift_setDeallocating();
  sub_1B24C3D7C();
  return OUTLINED_FUNCTION_89();
}

uint64_t Transaction.revocationDate.getter()
{
  v0 = OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_277(*(v0 + 72));
  return sub_1B24C5C14();
}

uint64_t Transaction.revocationReason.getter()
{
  result = OUTLINED_FUNCTION_239();
  v3 = (v1 + *(result + 76));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t Transaction.productType.getter()
{
  v0 = OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_214(*(v0 + 80));
}

uint64_t Transaction.appAccountToken.getter()
{
  v0 = OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_277(*(v0 + 84));
  return sub_1B24C5C14();
}

uint64_t Transaction.environment.getter()
{
  v0 = OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_214(*(v0 + 88));
}

uint64_t Transaction.environmentStringRepresentation.getter()
{
  type metadata accessor for Transaction(0);
  OUTLINED_FUNCTION_251();
  return OUTLINED_FUNCTION_22_1();
}

uint64_t Transaction.reason.getter()
{
  v0 = OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_214(*(v0 + 92));
}

uint64_t Transaction.reasonStringRepresentation.getter()
{
  type metadata accessor for Transaction(0);
  OUTLINED_FUNCTION_251();
  return OUTLINED_FUNCTION_22_1();
}

uint64_t Transaction.storefront.getter()
{
  v0 = OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_277(*(v0 + 96));
  return sub_1B24C5E6C();
}

uint64_t Transaction.storefrontCountryCode.getter()
{
  type metadata accessor for Transaction(0);
  OUTLINED_FUNCTION_251();
  return OUTLINED_FUNCTION_22_1();
}

uint64_t sub_1B24BC6BC()
{
  v0 = OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_277(*(v0 + 104));
  return sub_1B24C5C14();
}

uint64_t Transaction.currencyCode.getter()
{
  v0 = OUTLINED_FUNCTION_41_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8 - v3;
  type metadata accessor for Transaction(0);
  sub_1B24C5C14();
  v5 = sub_1B256D45C();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1B243E88C(v4, &unk_1EB7D1780);
  }

  else
  {
    sub_1B256D43C();
    OUTLINED_FUNCTION_57_1();
    (*(v6 + 8))(v4, v5);
  }

  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1B24BC81C()
{
  type metadata accessor for Transaction(0);
  OUTLINED_FUNCTION_251();
  return OUTLINED_FUNCTION_22_1();
}

uint64_t Transaction.deviceVerification.getter()
{
  type metadata accessor for Transaction(0);
  v0 = OUTLINED_FUNCTION_22_1();
  sub_1B244784C(v0, v1);
  return OUTLINED_FUNCTION_22_1();
}

uint64_t Transaction.deviceVerificationNonce.getter()
{
  OUTLINED_FUNCTION_239();
  sub_1B256D3CC();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_6_14();

  return v1(v0);
}

uint64_t Transaction.ownershipType.getter()
{
  v0 = OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_214(*(v0 + 120));
}

uint64_t Transaction.signedDate.getter()
{
  OUTLINED_FUNCTION_239();
  sub_1B256D36C();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_6_14();

  return v1(v0);
}

uint64_t Transaction.advancedCommerceInfo.getter()
{
  v2 = *(OUTLINED_FUNCTION_239() + 128);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x98uLL);
  return sub_1B24C5C14();
}

uint64_t sub_1B24BCA0C()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1B24BCAEC;

  return sub_1B24BD10C();
}

void sub_1B24BCAEC()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_3_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_9_2();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1B24BCC30()
{
  OUTLINED_FUNCTION_155();
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v1, qword_1ED69A108);
  v7 = sub_1B24D3E10();
  v8 = v2;
  MEMORY[0x1B2749D50](843797343, 0xE400000000000000);
  v0[5] = v8;
  if (qword_1EB7CDA50 != -1)
  {
    OUTLINED_FUNCTION_3_14();
  }

  v3 = v0[4];
  v0[2] = v7;
  v0[3] = v8;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B24BCDC8;

  return MEMORY[0x1EEE6DE98]();
}

void sub_1B24BCDC8()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_3_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_9_2();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1B24BCF38()
{
  OUTLINED_FUNCTION_21_5();
  v0[2] = *(v0[3] + 48);
  sub_1B256EAAC();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B24BD00C;

  return sub_1B24B8C38();
}

uint64_t sub_1B24BD00C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B24BD10C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_282(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B24BD190()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_331(v2);
  OUTLINED_FUNCTION_152_0();
  v7 = v3;
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_318(v4);

  return v7(v5);
}

uint64_t sub_1B24BD27C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24BD3A8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_282(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B24BD42C()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_331(v2);
  OUTLINED_FUNCTION_152_0();
  v7 = v3;
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_318(v4);

  return v7(v5);
}

uint64_t sub_1B24BD518()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24BD644()
{
  OUTLINED_FUNCTION_4_0();
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24BD6D8()
{
  OUTLINED_FUNCTION_4_0();
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24BD76C@<X0>(uint64_t *a1@<X8>)
{
  result = Transaction.id.getter();
  *a1 = result;
  return result;
}

void static Transaction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 16) + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_114_0();
  MEMORY[0x1B2749CC0]();
  OUTLINED_FUNCTION_8_15();

  OUTLINED_FUNCTION_22_1();
  sub_1B246314C();

  sub_1B256D1AC();
  OUTLINED_FUNCTION_35_1();
  if (!v4 & v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_15();

  if (*(*(a2 + 16) + 16) < 2uLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_9_9();
  MEMORY[0x1B2749CC0]();

  OUTLINED_FUNCTION_27_0();
  sub_1B246314C();

  sub_1B256D1AC();
  OUTLINED_FUNCTION_35_1();
  if (!(!v4 & v3))
  {

    OUTLINED_FUNCTION_114_0();
    MEMORY[0x1B2749490]();
    v5 = OUTLINED_FUNCTION_89();
    sub_1B2443AD0(v5, v6);
    v7 = OUTLINED_FUNCTION_22_1();
    sub_1B2443AD0(v7, v8);
    return;
  }

LABEL_9:
  __break(1u);
}

void Transaction.hash(into:)()
{
  OUTLINED_FUNCTION_5_15();
  if (!v0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v1 = OUTLINED_FUNCTION_18_1();
  MEMORY[0x1B2749CC0](v1);

  OUTLINED_FUNCTION_18_1();
  sub_1B246314C();

  sub_1B256D1AC();
  OUTLINED_FUNCTION_35_1();
  if (!v2 & v0)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_41_1();
  sub_1B256D23C();
  v3 = OUTLINED_FUNCTION_27_0();

  sub_1B2443AD0(v3, v4);
}

void Transaction.hashValue.getter()
{
  sub_1B256ED3C();
  OUTLINED_FUNCTION_5_15();
  if (v0)
  {

    v1 = OUTLINED_FUNCTION_22_1();
    MEMORY[0x1B2749CC0](v1);
    OUTLINED_FUNCTION_8_15();

    OUTLINED_FUNCTION_22_1();
    sub_1B246314C();

    OUTLINED_FUNCTION_24();
    sub_1B256D1AC();
    OUTLINED_FUNCTION_35_1();
    if (!(!v2 & v0))
    {

      sub_1B256D23C();
      v3 = OUTLINED_FUNCTION_18_1();
      sub_1B2443AD0(v3, v4);
      sub_1B256ED7C();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t Transaction.debugDescription.getter()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1B24472B8(v2, v3, v4);
  BackingValue.debugDescription.getter();
  OUTLINED_FUNCTION_8_15();
  sub_1B24472E0(v2, v3, v4);
  return OUTLINED_FUNCTION_22_1();
}

unint64_t sub_1B24BDAF8(uint64_t a1, uint64_t a2)
{
  result = 0xD000000000000011;
  switch(a2)
  {
    case 0:
      return result;
    case 1:
    case 3:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t sub_1B24BDB94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a2;
  v26 = a4;
  v23 = a3;
  v24 = a1;
  v28 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1940);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1948);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  if (qword_1EB7CD328 != -1)
  {
    swift_once();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1950);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DC0);
  MEMORY[0x1EEE9AC00](v17);
  *(&v23 - 2) = v15;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8650], v6);
  v18 = type metadata accessor for Transaction.Transactions.AsyncIterator(0);
  sub_1B256DE5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1820);
  sub_1B256DE1C();
  sub_1B24C5C14();
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
  {
    __break(1u);
  }

  type metadata accessor for TransactionReceiver();
  swift_allocObject();
  *(a5 + *(v18 + 20)) = sub_1B2479050(v13);
  *(a5 + *(v18 + 28)) = 0;
  if (qword_1EB7CFC68 != -1)
  {
    swift_once();
  }

  v19 = _os_activity_create(&dword_1B23EF000, "StoreKit/TransactionQuery", qword_1EB7EDFB8, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v19, &state);
  v21 = v24;
  v20 = v25;
  sub_1B24BDFFC(v24, v25, a5, v15, v23, v26);
  os_activity_scope_leave(&state);
  swift_unknownObjectRelease();
  sub_1B24C43D4(v21, v20);

  return sub_1B243E88C(v15, &qword_1EB7D1948);
}

uint64_t sub_1B24BDF4C(uint64_t a1, uint64_t a2)
{
  sub_1B243E88C(a2, &qword_1EB7D1948);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

void sub_1B24BDFFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v70 = a5;
  v67 = a6;
  v68 = a4;
  v77 = a3;
  v8 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v8);
  v66 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v65[0] = v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1948);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v65 - v13;
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_1ED69A108);
  aBlock = 0;
  v72 = 0xE000000000000000;
  sub_1B256E4FC();

  aBlock = 0xD00000000000001ALL;
  v72 = 0x80000001B258FFD0;
  sub_1B24C43C0(a1, a2);
  v69 = a1;
  v16 = sub_1B24B748C(a1, a2);
  MEMORY[0x1B2749D50](v16);

  MEMORY[0x1B2749D50](0x6361736E61727420, 0xED0000736E6F6974);
  v18 = aBlock;
  v17 = v72;
  v19 = sub_1B256E0CC();

  v65[1] = v15;
  v20 = sub_1B256D5CC();

  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136446466;
    *(v21 + 4) = sub_1B2519814(0, 0xE000000000000000, &aBlock);
    *(v21 + 12) = 2082;
    v23 = sub_1B2519814(v18, v17, &aBlock);

    *(v21 + 14) = v23;
    _os_log_impl(&dword_1B23EF000, v20, v19, "%{public}s%{public}s", v21, 0x16u);
    swift_arrayDestroy();
    v24 = v22;
    v25 = v70;
    MEMORY[0x1B274BFF0](v24, -1, -1);
    MEMORY[0x1B274BFF0](v21, -1, -1);
  }

  else
  {

    v25 = v70;
  }

  v26 = *(type metadata accessor for Transaction.Transactions.AsyncIterator(0) + 20);
  v27 = v77;
  v28 = *(v77 + v26);
  if (a2 != 3)
  {

    v33 = v69;
    v34 = sub_1B24BEAA4(v69, a2, v28);

    if (v34)
    {
      if (a2)
      {
        v35 = v67;
        if (a2 != 1)
        {
          if (a2 != 2)
          {

            v55 = sub_1B256D98C();
            v56 = *(v27 + v26);
            v57 = swift_allocObject();
            v57[2] = v33;
            v57[3] = a2;
            v57[4] = v56;
            v75 = sub_1B24C5C6C;
            v76 = v57;
            aBlock = MEMORY[0x1E69E9820];
            v72 = 1107296256;
            v73 = sub_1B24BAFF8;
            v74 = &block_descriptor_175;
            v58 = _Block_copy(&aBlock);

            [v34 transactionForID:v55 client:0 skipTransactionSync:0 reply:v58];
            _Block_release(v58);
            swift_unknownObjectRelease();

            return;
          }

          v36 = *(v27 + v26);
          v37 = swift_allocObject();
          *(v37 + 16) = v25;
          *(v37 + 24) = v35;
          v75 = sub_1B24C5C78;
          v76 = v37;
          aBlock = MEMORY[0x1E69E9820];
          v72 = 1107296256;
          v73 = sub_1B2515BBC;
          v74 = &block_descriptor_181;
          v38 = _Block_copy(&aBlock);

          [v34 enumerateUnfinishedTransactionsForClient:0 withReceiver:v36 skipTransactionSync:0 reply:v38];
          _Block_release(v38);
          swift_unknownObjectRelease();
          goto LABEL_31;
        }

        if (v67)
        {
          v53 = sub_1B256D98C();
        }

        else
        {
          v53 = 0;
        }

        v59 = *(v27 + v26);
        v60 = swift_allocObject();
        *(v60 + 16) = v25;
        *(v60 + 24) = v35;
        v75 = sub_1B24C5C9C;
        v76 = v60;
        aBlock = MEMORY[0x1E69E9820];
        v72 = 1107296256;
        v73 = sub_1B2515BBC;
        v74 = &block_descriptor_187;
        v61 = _Block_copy(&aBlock);

        [v34 enumerateCurrentReceiptsForClient:0 productID:v53 withReceiver:v59 skipTransactionSync:0 reply:v61];
        _Block_release(v61);
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = v67;
        if (v67)
        {
          v53 = sub_1B256D98C();
        }

        else
        {
          v53 = 0;
        }

        v62 = *(v27 + v26);
        v63 = swift_allocObject();
        *(v63 + 16) = v25;
        *(v63 + 24) = v54;
        v75 = sub_1B24C5CC4;
        v76 = v63;
        aBlock = MEMORY[0x1E69E9820];
        v72 = 1107296256;
        v73 = sub_1B2515BBC;
        v74 = &block_descriptor_193;
        v64 = _Block_copy(&aBlock);

        [v34 enumerateReceiptsForClient:0 productID:v53 withReceiver:v62 skipTransactionSync:0 reply:v64];
        swift_unknownObjectRelease();
        _Block_release(v64);
      }
    }

    else
    {
      v44 = v66;
      sub_1B24C5E6C();
      sub_1B24C43C0(v33, a2);
      v45 = sub_1B256D5CC();
      v46 = sub_1B256D5EC();
      (*(*(v46 - 8) + 8))(v44, v46);
      v47 = sub_1B256E0AC();
      sub_1B24C43D4(v33, a2);
      if (os_log_type_enabled(v45, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock = v49;
        *v48 = 136446210;
        v50 = sub_1B24BDAF8(v33, a2);
        v52 = sub_1B2519814(v50, v51, &aBlock);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_1B23EF000, v45, v47, "Failed to get XPC remote object to enumerate transactions for %{public}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x1B274BFF0](v49, -1, -1);
        MEMORY[0x1B274BFF0](v48, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1950);
      sub_1B256DDFC();
    }

    goto LABEL_31;
  }

  sub_1B24C5C14();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1950);
  if (__swift_getEnumTagSinglePayload(v14, 1, v29) != 1)
  {
    swift_retain_n();
    sub_1B256DDBC();
    (*(*(v29 - 8) + 8))(v14, v29);
    v30 = objc_opt_self();
    v31 = [v30 defaultBroker];
    v32 = [v31 hasTransactionListener];

    if (v32)
    {

LABEL_17:
      v43 = [v30 defaultBroker];
      [v43 registerTransactionListener_];

      goto LABEL_31;
    }

    v39 = sub_1B24BEAA4(v69, 3uLL, v28);

    if (!v39)
    {
      goto LABEL_17;
    }

    v40 = [v30 defaultBroker];
    [v40 registerTransactionListener_];

    v41 = sub_1B256DDAC();
    __swift_storeEnumTagSinglePayload(v65[0], 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v39;
    v42[5] = v25;
    v42[6] = v67;
    v42[7] = v28;

    sub_1B247DAA8();
LABEL_31:

    return;
  }

  __break(1u);
}

id sub_1B24BEAA4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() defaultBroker];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v11[4] = sub_1B24C5DD4;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B244BD28;
  v11[3] = &block_descriptor_210;
  v8 = _Block_copy(v11);
  sub_1B24C43C0(a1, a2);

  v9 = [v6 storeKitServiceWithErrorHandler_];
  _Block_release(v8);

  return v9;
}

uint64_t sub_1B24BEBD8(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1ED69A108);
  sub_1B24C5E6C();
  sub_1B24C43C0(a2, a3);
  v9 = a1;
  v10 = sub_1B256D5CC();
  v11 = sub_1B256D5EC();
  (*(*(v11 - 8) + 8))(v8, v11);
  v12 = sub_1B256E0AC();
  sub_1B24C43D4(a2, a3);

  if (os_log_type_enabled(v10, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v13 = 136446466;
    v16 = sub_1B24BDAF8(a2, a3);
    v18 = sub_1B2519814(v16, v17, &v22);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2114;
    v19 = sub_1B256D0CC();
    *(v13 + 14) = v19;
    *v14 = v19;
    _os_log_impl(&dword_1B23EF000, v10, v12, "Failed in XPC service while enumerating transactions for %{public}s: %{public}@", v13, 0x16u);
    sub_1B243E88C(v14, &qword_1EB7D18E0);
    MEMORY[0x1B274BFF0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1B274BFF0](v15, -1, -1);
    MEMORY[0x1B274BFF0](v13, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1950);
  return sub_1B256DDFC();
}

void sub_1B24BEE78(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultBroker];
  [v3 unregisterTransactionListener_];
}

uint64_t sub_1B24BEEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DD0);
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17B0);
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1940);
  v7[14] = v10;
  v7[15] = *(v10 - 8);
  v7[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1820);
  v7[17] = v11;
  v7[18] = *(v11 - 8);
  v7[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24BF0F0, 0, 0);
}

uint64_t sub_1B24BF0F0()
{
  OUTLINED_FUNCTION_323();
  OUTLINED_FUNCTION_316();
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 48);
  v11 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DC0);
  v5 = swift_task_alloc();
  *(v5 + 16) = v11;
  *(v5 + 32) = v4;
  (*(v3 + 104))(v1, *MEMORY[0x1E69E8650], v2);
  OUTLINED_FUNCTION_275();
  sub_1B256DE5C();

  sub_1B256DE1C();
  *(v0 + 160) = MEMORY[0x1E69E7CC0];
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 168) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_179(v6);
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_114();

  return MEMORY[0x1EEE6D9C8](v8);
}

uint64_t sub_1B24BF22C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24BF310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_323();
  OUTLINED_FUNCTION_316();
  v15 = v14[2];
  v16 = v14[20];
  if (!v15)
  {
    goto LABEL_9;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v14[20];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v18 = *(v16 + 16);
    if (v18 >= *(v16 + 24) >> 1)
    {
      OUTLINED_FUNCTION_159_0();
      sub_1B244934C();
      v16 = v39;
    }

    *(v16 + 16) = v18 + 1;
    *(v16 + 8 * v18 + 32) = v15;
    if (v18 < 0x63)
    {
      v14[20] = v16;
      swift_task_alloc();
      OUTLINED_FUNCTION_8_2();
      v14[21] = v19;
      *v19 = v20;
      OUTLINED_FUNCTION_179();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_114();

      return MEMORY[0x1EEE6D9C8](v21);
    }

LABEL_9:
    (*(v14[12] + 8))(v14[13], v14[11]);
    v23 = *(v16 + 16);
    if (!v23)
    {
      break;
    }

    a10 = v14[7];
    v15 = v16 + 24;
    while (v23 <= *(v16 + 16))
    {
      v24 = v23 - 1;
      v14[3] = *(v15 + 8 * v23);
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1950);
      sub_1B256DDEC();

      v25 = OUTLINED_FUNCTION_153();
      v26(v25);
      v23 = v24;
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    OUTLINED_FUNCTION_38();
    sub_1B244934C();
    v16 = v38;
  }

LABEL_13:
  v28 = v14[18];
  v27 = v14[19];
  v29 = v14[17];

  (*(v28 + 8))(v27, v29);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_114();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, v14 + 2, a12, a13, a14);
}

uint64_t sub_1B24BF554(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1950);
  MEMORY[0x1EEE9AC00](v8);
  v10 = aBlock - v9;
  (*(v11 + 16))(aBlock - v9, a1);
  type metadata accessor for TransactionReceiver();
  swift_allocObject();
  v12 = sub_1B2479050(v10);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  aBlock[4] = sub_1B24C5DB0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B2515BBC;
  aBlock[3] = &block_descriptor_204;
  v14 = _Block_copy(aBlock);

  [a2 enumerateUnfinishedTransactionsForClient:0 withReceiver:v12 skipTransactionSync:0 reply:v14];
  _Block_release(v14);
}

void sub_1B24BF720()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  if (v9)
  {
    v15 = sub_1B256D0CC();
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    __swift_project_value_buffer(v10, qword_1ED69A108);
    OUTLINED_FUNCTION_80_1();
    sub_1B24C5E6C();

    v16 = v15;
    v17 = sub_1B256D5CC();
    sub_1B256D5EC();
    OUTLINED_FUNCTION_7_0();
    (*(v18 + 8))(v14);
    v19 = sub_1B256E0AC();

    if (os_log_type_enabled(v17, v19))
    {
      v20 = OUTLINED_FUNCTION_21_3();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v20 = 136446467;
      v32 = v3;
      v23 = v1;
      if (v5)
      {
        v24 = v7;
      }

      else
      {
        v24 = 7105633;
      }

      if (v5)
      {
        v25 = v5;
      }

      else
      {
        v25 = 0xE300000000000000;
      }

      v26 = sub_1B2519814(v24, v25, &v33);

      *(v20 + 4) = v26;
      v1 = v23;
      *(v20 + 12) = 2113;
      *(v20 + 14) = v16;
      *v21 = v16;
      v27 = v16;
      _os_log_impl(&dword_1B23EF000, v17, v19, v32, v20, 0x16u);
      sub_1B243E88C(v21, &qword_1EB7D18E0);
      OUTLINED_FUNCTION_11_4();
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    v28 = objc_allocWithZone(type metadata accessor for SKTwoErrorEvent());
    v29 = v16;
    v30 = [v28 init];
    v31 = sub_1B256D0CC();
    [v30 setPrimaryError_];

    [v30 setMappedError_];
    [v30 setUserAction_];
    OUTLINED_FUNCTION_264(v30 + OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context);
    if (v5)
    {
      v5 = sub_1B256D98C();
    }

    [v30 setInAppPurchaseID_];

    [objc_opt_self() sendEvent_];
  }

  OUTLINED_FUNCTION_45();
}

void sub_1B24BFA44(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  v7 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  if (a1)
  {
    v12 = sub_1B256D0CC();
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    __swift_project_value_buffer(v7, qword_1ED69A108);
    OUTLINED_FUNCTION_80_1();
    sub_1B24C5E6C();
    v13 = v12;
    v14 = sub_1B256D5CC();
    sub_1B256D5EC();
    OUTLINED_FUNCTION_7_0();
    (*(v15 + 8))(v11);
    v16 = sub_1B256E0AC();

    if (os_log_type_enabled(v14, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138477827;
      *(v17 + 4) = v13;
      *v18 = v13;
      v19 = v13;
      _os_log_impl(&dword_1B23EF000, v14, v16, a4, v17, 0xCu);
      sub_1B243E88C(v18, &qword_1EB7D18E0);
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    v20 = objc_allocWithZone(type metadata accessor for SKTwoErrorEvent());
    v21 = v13;
    v22 = [v20 init];
    v23 = sub_1B256D0CC();
    [v22 setPrimaryError_];

    [v22 setMappedError_];
    [v22 setUserAction_];
    OUTLINED_FUNCTION_264(v22 + OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context);
    if (a3)
    {
      OUTLINED_FUNCTION_24();
      a3 = sub_1B256D98C();
    }

    [v22 setInAppPurchaseID_];

    [objc_opt_self() sendEvent_];
  }
}

uint64_t sub_1B24BFCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v13 = sub_1B256D0CC();
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_1ED69A108);
    sub_1B24C5E6C();

    v14 = v13;
    v15 = sub_1B256D5CC();
    v16 = sub_1B256D5EC();
    (*(*(v16 - 8) + 8))(v12, v16);
    v17 = sub_1B256E0AC();

    if (!os_log_type_enabled(v15, v17))
    {

      if (!a2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = a1;
    v27 = v20;
    v21 = v20;
    *v18 = 136380931;
    *(v18 + 4) = sub_1B2519814(a4, a5, &v27);
    *(v18 + 12) = 2113;
    *(v18 + 14) = v14;
    *v19 = v14;
    v22 = v14;
    _os_log_impl(&dword_1B23EF000, v15, v17, "Error getting transaction for ID %{private}s: %{private}@", v18, 0x16u);
    sub_1B243E88C(v19, &qword_1EB7D18E0);
    MEMORY[0x1B274BFF0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v23 = v21;
    a1 = v26;
    MEMORY[0x1B274BFF0](v23, -1, -1);
    MEMORY[0x1B274BFF0](v18, -1, -1);
  }

  if (a2)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B2578530;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    sub_1B2479184(inited);
    swift_setDeallocating();
    sub_1B24C3D7C();
  }

LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1950);
  return sub_1B256DDFC();
}

uint64_t Transaction.Transactions.AsyncIterator.next()()
{
  OUTLINED_FUNCTION_4_0();
  v1[11] = v2;
  v1[12] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DE0);
  v1[13] = v3;
  OUTLINED_FUNCTION_2_2(v3);
  v1[14] = OUTLINED_FUNCTION_250();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  v1[15] = v4;
  OUTLINED_FUNCTION_2_2(v4);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[18] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17B0);
  *v5 = v1;
  v5[1] = sub_1B24C010C;

  return MEMORY[0x1EEE6D9D0](v1 + 10, v6);
}

uint64_t sub_1B24C010C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24C01F0()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0[10];
  v0[19] = v1;
  if (v1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    v0[20] = v2;
    *v2 = v3;
    v2[1] = sub_1B24C02EC;
    v5 = v0[13];
    v4 = v0[14];

    return MEMORY[0x1EEE6DA40](v4, v1, v5);
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);

    OUTLINED_FUNCTION_7_2();

    return v10();
  }
}

uint64_t sub_1B24C02EC()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24C03D0()
{
  OUTLINED_FUNCTION_316();
  v32 = v0;
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_334(v1, v2, *(v0 + 120));
  if (v3)
  {
    sub_1B243E88C(v1, &unk_1EB7D0DE0);
    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    *(v0 + 168) = v4;
    *v4 = v5;
    v4[1] = sub_1B24C0984;
    OUTLINED_FUNCTION_324();

    return Transaction.Transactions.AsyncIterator.next()();
  }

  else
  {
    v8 = *(v0 + 96);
    sub_1B24C42F0();
    v9 = type metadata accessor for Transaction.Transactions.AsyncIterator(0);
    v10 = *(v9 + 28);
    *(v0 + 176) = v10;
    if (*(v8 + v10))
    {
      goto LABEL_10;
    }

    v11 = v9;
    sub_1B24C5C14();
    OUTLINED_FUNCTION_41_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = *(v0 + 128);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B243E88C(*(v0 + 128), &unk_1EB7D0DF0);
      goto LABEL_10;
    }

    v14 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17B8) + 48));
    sub_1B24C4368(v13, type metadata accessor for Transaction);
    if (v14)
    {
LABEL_10:

      OUTLINED_FUNCTION_317();
      sub_1B24C42F0();
      OUTLINED_FUNCTION_306();

      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_324();

      __asm { BRAA            X1, X16 }
    }

    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v17 = *(v0 + 96);
    v18 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v18, qword_1ED69A108);
    v19 = (*(v17 + *(v11 + 20)) + OBJC_IVAR____TtC8StoreKit19TransactionReceiver_logKey);
    v21 = *v19;
    v20 = v19[1];

    v22 = sub_1B256E0AC();

    v23 = sub_1B256D5CC();

    if (os_log_type_enabled(v23, v22))
    {
      v24 = OUTLINED_FUNCTION_21_3();
      v25 = swift_slowAlloc();
      *v24 = 136446466;
      v31[0] = v25;
      v31[1] = 91;
      v31[2] = 0xE100000000000000;
      MEMORY[0x1B2749D50](v21, v20);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v26 = sub_1B2519814(91, 0xE100000000000000, v31);

      *(v24 + 4) = v26;
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_1B2519814(0xD000000000000030, 0x80000001B258FDD0, v31);
      _os_log_impl(&dword_1B23EF000, v23, v22, "%{public}s%{public}s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_324();

    return MEMORY[0x1EEE6DFA0](v27, v28, v29);
  }
}

uint64_t sub_1B24C078C()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B24C0818;
  v1 = swift_continuation_init();
  sub_1B24EFF74(v1);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B24C0818()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24C08E8()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 176);
  v2 = *(v0 + 96);

  *(v2 + v1) = 1;
  OUTLINED_FUNCTION_317();
  sub_1B24C42F0();
  OUTLINED_FUNCTION_306();

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B24C0984()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24C0A68()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B24C0ADC()
{
  OUTLINED_FUNCTION_4_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_10(v1);

  return Transaction.Transactions.AsyncIterator.next()();
}

uint64_t sub_1B24C0B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1B2445834;

  return (sub_1B247E7BC)(a1, a2, a3, v3 + 16);
}

uint64_t Transaction.Transactions.makeAsyncIterator()()
{
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_27_0();
  sub_1B24C43C0(v2, v3);

  OUTLINED_FUNCTION_9_9();

  return sub_1B24BDB94(v4, v5, v6, v1, v7);
}

uint64_t sub_1B24C0C94()
{
  Transaction.Transactions.makeAsyncIterator()();
  sub_1B24C43D4(*v0, *(v0 + 8));
}

double static Transaction.all.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t static Transaction.currentEntitlement(for:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  v0[5] = v4;
  OUTLINED_FUNCTION_2_2(v4);
  v0[6] = OUTLINED_FUNCTION_250();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DE0);
  OUTLINED_FUNCTION_2_2(v5);
  v0[7] = OUTLINED_FUNCTION_250();
  v6 = type metadata accessor for Transaction.Transactions.AsyncIterator(0);
  OUTLINED_FUNCTION_2_2(v6);
  v0[8] = OUTLINED_FUNCTION_250();
  v7 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24C0DC4()
{
  OUTLINED_FUNCTION_21_5();

  v1 = OUTLINED_FUNCTION_314();
  sub_1B24C43C0(v1, v2);

  v3 = OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_335(v3, v4, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 72) = v6;
  *v6 = v7;
  v6[1] = sub_1B24C0E84;

  return Transaction.Transactions.AsyncIterator.next()();
}

uint64_t sub_1B24C0E84()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24C0F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_337();
  if (v12)
  {
    v19 = 1;
    v13 = OUTLINED_FUNCTION_314();
    sub_1B24C43D4(v13, v14);

    OUTLINED_FUNCTION_2_25();
    sub_1B24C4368(v10, v15);
  }

  else
  {
    OUTLINED_FUNCTION_41_1();
    sub_1B24C42F0();
    v16 = OUTLINED_FUNCTION_314();
    sub_1B24C43D4(v16, v17);

    OUTLINED_FUNCTION_2_25();
    sub_1B24C4368(v10, v18);
    OUTLINED_FUNCTION_325();
    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(*(v11 + 16), v19, 1, *(v11 + 40));

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_326();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1B24C1070()
{
  OUTLINED_FUNCTION_4_0();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[2] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  v0[9] = v8;
  OUTLINED_FUNCTION_2_2(v8);
  v0[10] = OUTLINED_FUNCTION_250();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DE0);
  OUTLINED_FUNCTION_2_2(v9);
  v0[11] = OUTLINED_FUNCTION_250();
  v10 = type metadata accessor for Transaction.Transactions.AsyncIterator(0);
  OUTLINED_FUNCTION_2_2(v10);
  v0[12] = OUTLINED_FUNCTION_250();
  v11 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B24C1150()
{
  OUTLINED_FUNCTION_24_5();
  v1 = OUTLINED_FUNCTION_35_0();
  sub_1B24C43C0(v1, v2);

  v3 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_335(v3, v4, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 104) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_180(v6);

  return Transaction.Transactions.AsyncIterator.next()();
}

uint64_t sub_1B24C11F4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24C12D8()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_334(v0[11], v1, v0[9]);
  if (v2)
  {
    OUTLINED_FUNCTION_2_25();
    sub_1B24C4368(v3, v4);
    OUTLINED_FUNCTION_16_2();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);

    OUTLINED_FUNCTION_7_2();

    return v9();
  }

  else
  {
    v11 = v0[3];
    sub_1B24C42F0();
    v14 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_1B24C146C;
    v13 = v0[10];

    return v14(v13);
  }
}

uint64_t sub_1B24C146C()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_3_10();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (v0)
  {
    v9 = *(v5 + 96);
    sub_1B243E88C(*(v5 + 80), &unk_1EB7D0DF0);
    OUTLINED_FUNCTION_2_25();
    sub_1B24C4368(v9, v10);
  }

  else
  {
    *(v5 + 128) = v3 & 1;
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B24C15A4()
{
  OUTLINED_FUNCTION_21_5();
  if (*(v0 + 128) == 1)
  {
    OUTLINED_FUNCTION_2_25();
    sub_1B24C4368(v1, v2);
    sub_1B24C42F0();
    __swift_storeEnumTagSinglePayload(*(v0 + 16), 0, 1, *(v0 + 72));

    OUTLINED_FUNCTION_7_2();

    return v3();
  }

  else
  {
    sub_1B243E88C(*(v0 + 80), &unk_1EB7D0DF0);
    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    *(v0 + 104) = v5;
    *v5 = v6;
    OUTLINED_FUNCTION_180();

    return Transaction.Transactions.AsyncIterator.next()();
  }
}

uint64_t sub_1B24C16D0()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t static Transaction.latest(for:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  v0[5] = v4;
  OUTLINED_FUNCTION_2_2(v4);
  v0[6] = OUTLINED_FUNCTION_250();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DE0);
  OUTLINED_FUNCTION_2_2(v5);
  v0[7] = OUTLINED_FUNCTION_250();
  v6 = type metadata accessor for Transaction.Transactions.AsyncIterator(0);
  OUTLINED_FUNCTION_2_2(v6);
  v0[8] = OUTLINED_FUNCTION_250();
  v7 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24C1818()
{
  OUTLINED_FUNCTION_21_5();

  v1 = OUTLINED_FUNCTION_130();
  sub_1B24C43C0(v1, v2);

  v3 = OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_335(v3, v4, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 72) = v6;
  *v6 = v7;
  v6[1] = sub_1B24C18D8;

  return Transaction.Transactions.AsyncIterator.next()();
}

uint64_t sub_1B24C18D8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24C19BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_337();
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_130();
    sub_1B24C43D4(v13, v14);

    OUTLINED_FUNCTION_2_25();
    sub_1B24C4368(v10, v15);
    v19 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_41_1();
    sub_1B24C42F0();
    v16 = OUTLINED_FUNCTION_130();
    sub_1B24C43D4(v16, v17);

    OUTLINED_FUNCTION_2_25();
    sub_1B24C4368(v10, v18);
    OUTLINED_FUNCTION_325();
    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(*(v11 + 16), v19, 1, *(v11 + 40));

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_326();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t static Transaction.all(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  return OUTLINED_FUNCTION_217(a1, a2, a3);
}

uint64_t static Transaction.allUpdates.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17C0);
  OUTLINED_FUNCTION_2_2(v0);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17C8);
  OUTLINED_FUNCTION_2_2(v4);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  if (qword_1EB7CFC50 != -1)
  {
    swift_once();
  }

  sub_1B2463D90();
  sub_1B24B9580(0, 3uLL, 0, 0, v3);
  return sub_1B24AB34C(v7);
}

uint64_t sub_1B24C1C54()
{
  v1 = *v0;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  return sub_1B256ED7C();
}

uint64_t Transaction.beginRefundRequest(in:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_3_18();
}

uint64_t sub_1B24C1CB4()
{
  OUTLINED_FUNCTION_4_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_1B24C1D4C;

  return static Transaction.beginRefundRequest(for:in:)();
}

uint64_t sub_1B24C1D4C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t static Transaction.beginRefundRequest(for:in:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[11] = v1;
  v0[12] = v2;
  v0[10] = v3;
  v0[13] = sub_1B256DD6C();
  v0[14] = sub_1B256DD5C();
  v5 = sub_1B256DCEC();
  v0[15] = v5;
  v0[16] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B24C1EC8, v5, v4);
}

uint64_t sub_1B24C1EC8()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_1B256DD5C();
  *(v0 + 136) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_1B256DCEC();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B24C1F58, v2, v4);
}

uint64_t sub_1B24C1F58()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v0[11];
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_1B24C2000;
  v3 = swift_continuation_init();
  sub_1B24C21A4(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B24C2000()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 144) = v5;
  if (v5)
  {
    swift_willThrow();

    v6 = *(v2 + 120);
    v7 = *(v2 + 128);
    v8 = sub_1B248764C;
  }

  else
  {
    v9 = *(v2 + 80);

    *v9 = *(v2 + 152);
    v6 = *(v2 + 120);
    v7 = *(v2 + 128);
    v8 = sub_1B24C2148;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1B24C2148()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

void sub_1B24C21A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultBroker];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  v27 = sub_1B24C5320;
  v28 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1B244BD28;
  v26 = &block_descriptor_12;
  v11 = _Block_copy(&aBlock);

  v12 = [v9 storeKitServiceWithErrorHandler_];
  _Block_release(v11);

  if (v12)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a1;
    v14[4] = a3;
    v27 = sub_1B24C5340;
    v28 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1B24EEF3C;
    v26 = &block_descriptor_126;
    v15 = _Block_copy(&aBlock);
    v16 = a3;

    [v12 refundRequestForTransactionId:v13 replyBlock:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_1ED69A108);
    sub_1B24C5E6C();
    v17 = sub_1B256D5CC();
    v18 = sub_1B256D5EC();
    (*(*(v18 - 8) + 8))(v8, v18);
    v19 = sub_1B256E0AC();
    if (os_log_type_enabled(v17, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134283521;
      *(v20 + 4) = a2;
      _os_log_impl(&dword_1B23EF000, v17, v19, "Failed to get XPC remote object to begin refund request for %{private}llu", v20, 0xCu);
      MEMORY[0x1B274BFF0](v20, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B24C46B4(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
    v21 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v22 = v21;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B24C25A4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_1ED69A108);
  sub_1B24C5E6C();
  v7 = a1;
  v8 = sub_1B256D5CC();
  v9 = sub_1B256D5EC();
  (*(*(v9 - 8) + 8))(v6, v9);
  v10 = sub_1B256E0AC();

  if (os_log_type_enabled(v8, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 134283779;
    *(v11 + 4) = a2;
    *(v11 + 12) = 2114;
    v13 = sub_1B256D0CC();
    *(v11 + 14) = v13;
    *v12 = v13;
    _os_log_impl(&dword_1B23EF000, v8, v10, "Failed in XPC to begin refund request for %{private}llu: %{public}@", v11, 0x16u);
    sub_1B243E88C(v12, &qword_1EB7D18E0);
    MEMORY[0x1B274BFF0](v12, -1, -1);
    MEMORY[0x1B274BFF0](v11, -1, -1);
  }

  sub_1B24C5358();
  v14 = swift_allocError();
  *v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  swift_allocError();
  *v16 = v14;
  return swift_continuation_throwingResumeWithError();
}

void sub_1B24C2808(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v57 = a6;
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v56 = a2;
  v7 = sub_1B256D69C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B256D6CC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SKLogger();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v49 - v19;
  if (a1)
  {
    v21 = a1;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v15, qword_1ED69A108);
    sub_1B24C5E6C();
    v22 = a1;
    v23 = sub_1B256D5CC();
    v24 = sub_1B256D5EC();
    (*(*(v24 - 8) + 8))(v20, v24);
    v25 = sub_1B256E0AC();

    if (os_log_type_enabled(v23, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 134349314;
      *(v26 + 4) = v59;
      *(v26 + 12) = 2114;
      v28 = sub_1B256D0CC();
      *(v26 + 14) = v28;
      *v27 = v28;
      _os_log_impl(&dword_1B23EF000, v23, v25, "Failed to get refund request for %{public}llu due to error %{public}@", v26, 0x16u);
      sub_1B243E88C(v27, &qword_1EB7D18E0);
      MEMORY[0x1B274BFF0](v27, -1, -1);
      MEMORY[0x1B274BFF0](v26, -1, -1);
    }

    sub_1B24C5358();
    v29 = swift_allocError();
    *v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v31 = v29;
    swift_continuation_throwingResumeWithError();
  }

  else
  {
    v51 = v14;
    v52 = v12;
    v53 = v10;
    v54 = v11;
    v50 = v7;
    v55 = v8;
    v33 = v56;
    v32 = v57;
    v34 = v58;
    if (v58 >> 60 == 15)
    {
      if (qword_1ED699E80 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v15, qword_1ED69A108);
      sub_1B24C5E6C();
      v35 = sub_1B256D5CC();
      v36 = sub_1B256D5EC();
      (*(*(v36 - 8) + 8))(v18, v36);
      v37 = sub_1B256E0AC();
      if (os_log_type_enabled(v35, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134349056;
        *(v38 + 4) = v59;
        _os_log_impl(&dword_1B23EF000, v35, v37, "Failed to get refund request for %{public}llu without an error or a request.", v38, 0xCu);
        MEMORY[0x1B274BFF0](v38, -1, -1);
      }

      type metadata accessor for StoreKitError();
      sub_1B24C46B4(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
      v39 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
      swift_allocError();
      *v40 = v39;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      sub_1B245A1E4();
      sub_1B244784C(v33, v34);
      v59 = sub_1B256E0EC();
      v41 = swift_allocObject();
      v41[2] = v33;
      v41[3] = v34;
      v42 = v60;
      v41[4] = v32;
      v41[5] = v42;
      aBlock[4] = sub_1B24C534C;
      aBlock[5] = v41;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B243963C;
      aBlock[3] = &block_descriptor_132;
      v43 = _Block_copy(aBlock);
      sub_1B24786B4(v33, v34);
      v44 = v32;

      v45 = v51;
      sub_1B256D6BC();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B24C46B4(&unk_1EB7D18C0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D21E0);
      sub_1B248D0F8(&qword_1EB7D18D0, &unk_1EB7D21E0);
      v46 = v53;
      v47 = v50;
      sub_1B256E40C();
      v48 = v59;
      MEMORY[0x1B274A370](0, v45, v46, v43);
      _Block_release(v43);

      sub_1B2443AD0(v33, v34);
      (*(v55 + 8))(v46, v47);
      (*(v52 + 8))(v45, v54);
    }
  }
}

void sub_1B24C2F6C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(type metadata accessor for SKRemoteEngagementContainerViewController()) init];
  objc_allocWithZone(SKEngagementRemoteViewTask);
  v9 = v8;
  sub_1B244784C(a1, a2);
  v10 = sub_1B24F84F4(a1, a2, v9, a3);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v13[4] = sub_1B24C53AC;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B24EEE48;
  v13[3] = &block_descriptor_138;
  v12 = _Block_copy(v13);

  [v10 setCompletion_];
  _Block_release(v12);
  [v10 presentEngagement];
}

uint64_t sub_1B24C30C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  if (a4)
  {
    v10 = a4;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v7, qword_1ED69A108);
    sub_1B24C5E6C();
    v11 = a4;
    v12 = sub_1B256D5CC();
    v13 = sub_1B256D5EC();
    (*(*(v13 - 8) + 8))(v9, v13);
    v14 = sub_1B256E0AC();

    if (os_log_type_enabled(v12, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      v17 = sub_1B256D0CC();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&dword_1B23EF000, v12, v14, "Failed to present refund request sheet: %{public}@", v15, 0xCu);
      sub_1B243E88C(v16, &qword_1EB7D18E0);
      MEMORY[0x1B274BFF0](v16, -1, -1);
      MEMORY[0x1B274BFF0](v15, -1, -1);
    }

    else
    {
    }
  }

  sub_1B24C3380(a4, v24);
  v18 = v24[0];
  if (v24[1])
  {
    sub_1B24C5358();
    v19 = swift_allocError();
    *v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v21 = v19;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(a5 + 64) + 40) = v24[0];
    return swift_continuation_throwingResume();
  }
}

void sub_1B24C3380(void *a1@<X0>, BOOL *a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    v5 = sub_1B256EAEC();
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = swift_allocError();
      *v9 = a1;
    }

    v10 = sub_1B256D0CC();

    v11 = [v10 domain];
    v12 = sub_1B256D9BC();
    v14 = v13;

    v15 = v12 == 0xD00000000000001ELL && 0x80000001B258FF90 == v14;
    if (v15 || (sub_1B256EB5C() & 1) != 0)
    {

      v16 = [v10 code];

      v7 = v16 != 1;
LABEL_12:
      v8 = 1;
      goto LABEL_13;
    }

    if (v12 == 0x726F727245534D41 && v14 == 0xEE006E69616D6F44)
    {
    }

    else
    {
      v18 = sub_1B256EB5C();

      if ((v18 & 1) == 0)
      {

        v7 = 1;
        goto LABEL_12;
      }
    }

    v19 = [v10 code];

    v8 = v19 != 6;
    v7 = 1;
    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
LABEL_13:
  *a2 = v7;
  a2[1] = v8;
}

BOOL sub_1B24C3570(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Transaction(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  type metadata accessor for Product.SubscriptionInfo.Status(0);
  sub_1B24C5C14();
  sub_1B24C5C14();
  sub_1B24C52C8();
  sub_1B243E88C(v9, &unk_1EB7D0DF0);
  v10 = *(v5 + 7);
  sub_1B24C4368(v5, type metadata accessor for Transaction);
  return v10 == *(a2 + 56);
}

uint64_t Transaction.subscriptionStatus.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_18();
}

uint64_t sub_1B24C3718()
{
  OUTLINED_FUNCTION_4_0();
  if (*(*(v0 + 24) + 104))
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_1B24C37F8;
    OUTLINED_FUNCTION_22_1();

    return static Product.SubscriptionInfo.status(for:)();
  }

  else
  {
    type metadata accessor for Product.SubscriptionInfo.Status(0);
    v3 = OUTLINED_FUNCTION_150_0();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
    OUTLINED_FUNCTION_7_2();

    return v7();
  }
}

uint64_t sub_1B24C37F8()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_3_10();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 48) = v3;
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B24C3910()
{
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 24);
  *(swift_task_alloc() + 16) = v1;
  sub_1B24AB1E4();

  OUTLINED_FUNCTION_7_2();

  return v2();
}

uint64_t sub_1B24C3A0C()
{
  OUTLINED_FUNCTION_4_0();
  type metadata accessor for Product.SubscriptionInfo.Status(0);
  v0 = OUTLINED_FUNCTION_150_0();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  OUTLINED_FUNCTION_7_2();

  return v4();
}

BOOL sub_1B24C3A70(uint64_t a1, double a2)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_36;
  }

  if (v4 == 2047)
  {
    goto LABEL_39;
  }

  v7 = sub_1B256DFAC();
  if (v7 > 63)
  {
    goto LABEL_39;
  }

  v8 = v7;
  v9 = sub_1B256DF9C();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_30:
            v14 |= v13;
LABEL_31:
            if (a2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_33;
              }

              __break(1u);
            }

            __break(1u);
LABEL_43:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_38:
      if (a2 >= 0.0)
      {
        goto LABEL_39;
      }

      goto LABEL_47;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_51:
    v14 = v5 >> (v11 - v8);
LABEL_25:
    if (v8 != 63)
    {
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_29:
          v13 = 1 << v8;
          goto LABEL_30;
        }

        if (v8 == -64)
        {
          goto LABEL_31;
        }
      }

      v13 = 0;
      goto LABEL_30;
    }

    if (a2 >= 0.0 || v14)
    {
LABEL_39:
      v14 = 0;
      result = 0;
      LOBYTE(v6) = 1;
      goto LABEL_36;
    }

LABEL_47:
    LOBYTE(v6) = 0;
    v14 = 0x8000000000000000;
    goto LABEL_36;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_51;
      }
    }

    else if (v12 != 64)
    {
LABEL_24:
      v14 = v5 << v12;
      goto LABEL_25;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_38;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_43;
    }

    v14 = 0;
    goto LABEL_29;
  }

LABEL_15:
  v14 = 0;
  if (a2 < 0.0)
  {
LABEL_33:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_35:
    LOBYTE(v6) = 0;
  }

LABEL_36:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

BOOL sub_1B24C3C5C(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (v3 | *&a2 & 0xFFFFFFFFFFFFFLL)
  {
    if (v3 != 2047 && a2 > -1.0)
    {
      v9 = sub_1B256DFAC();
      if (v9 <= 63)
      {
        v10 = v9;
        v11 = sub_1B256DF9C();
        v12 = v11 + __clz(__rbit64(v4));
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
        }

        else
        {
          if (v13 < -64 || v13 > 64)
          {
LABEL_12:
            v14 = 0;
            v15 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_23:
            v8 = 0;
            result = v10 >= v11;
            v6 = v14 | v15;
            goto LABEL_24;
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 == 64)
            {
              goto LABEL_12;
            }

            v14 = v4 << v13;
            if (v10 < 0)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }
        }

        if (v13 == -64)
        {
          goto LABEL_12;
        }

        v14 = v4 >> (v12 - v10);
        if (v10 < 0)
        {
LABEL_17:
          v15 = 0;
          goto LABEL_23;
        }

LABEL_22:
        v15 = 1 << v10;
        goto LABEL_23;
      }
    }

    v6 = 0;
    result = 0;
    v8 = 1;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    result = 1;
  }

LABEL_24:
  *a1 = v6;
  *(a1 + 8) = v8;
  return result;
}

uint64_t sub_1B24C3D7C()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_242();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B24C3DB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1858);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_242();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B24C3E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B256EB5C() & 1;
  }
}

void sub_1B24C3E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t (*a20)(uint64_t *), uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_205();
  a29 = v37;
  a30 = v43;
  a20 = v44;
  if (v38 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v34 = v41;
  v45 = HIBYTE(v42) & 0xF;
  if (!v38 || ((v42 & 0x2000000000000000) != 0 ? (v46 = HIBYTE(v42) & 0xF) : (v46 = v41 & 0xFFFFFFFFFFFFLL), !v46))
  {
    if ((v42 & 0x2000000000000000) == 0)
    {
      v45 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (!v45 && (v39 & 1) != 0)
    {
LABEL_27:

LABEL_39:
      OUTLINED_FUNCTION_204();
      return;
    }

    sub_1B256DBAC();
    OUTLINED_FUNCTION_284();
    sub_1B2448CD0();
    v61 = v60;
    v32 = *(v60 + 16);
    v62 = *(v60 + 24);
LABEL_37:
    v33 = v32 + 1;
    if (v32 < v62 >> 1)
    {
LABEL_38:
      *(v61 + 16) = v33;
      v63 = (v61 + 32 * v32);
      v63[4] = v30;
      v63[5] = v34;
      v63[6] = v35;
      v63[7] = v36;
      goto LABEL_39;
    }

LABEL_41:
    sub_1B2448CD0();
    v61 = v64;
    goto LABEL_38;
  }

  v30 = v40;
  v70 = v39;
  v69 = v38;
  v47 = 4 * v46;
  v73 = MEMORY[0x1E69E7CC0];
  v48 = 15;
  while (1)
  {
    v71 = v48;
    while (1)
    {
      v36 = v48 >> 14;
      if (v48 >> 14 == v47)
      {
        v48 = v71;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_270();
      v49 = sub_1B256DB7C();
      v35 = v50;
      a17 = v49;
      a18 = v50;
      v51 = a20(&a17);
      if (v31)
      {

        goto LABEL_39;
      }

      v52 = v51;

      if (v52)
      {
        break;
      }

      OUTLINED_FUNCTION_270();
      v48 = sub_1B256DA9C();
    }

    v53 = (v71 >> 14 == v36) & v70;
    if (v53)
    {
      goto LABEL_20;
    }

    if (v36 < v71 >> 14)
    {
      break;
    }

    v72 = sub_1B256DBAC();
    v67 = v55;
    v68 = v54;
    v66 = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      sub_1B2448CD0();
      v73 = v58;
    }

    v36 = *(v73 + 16);
    v35 = v36 + 1;
    if (v36 >= *(v73 + 24) >> 1)
    {
      sub_1B2448CD0();
      v73 = v59;
    }

    *(v73 + 16) = v35;
    v57 = (v73 + 32 * v36);
    v57[4] = v72;
    v57[5] = v68;
    v57[6] = v67;
    v57[7] = v66;
LABEL_20:
    OUTLINED_FUNCTION_270();
    v48 = sub_1B256DA9C();
    if ((v53 & 1) == 0 && *(v73 + 16) == v69)
    {
LABEL_30:
      if (v48 >> 14 == v47 && (v70 & 1) != 0)
      {
        goto LABEL_27;
      }

      if (v47 < v48 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_1B256DBAC();
        OUTLINED_FUNCTION_284();
        v61 = v73;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v32 = *(v61 + 16);
          v62 = *(v61 + 24);
          goto LABEL_37;
        }
      }

      OUTLINED_FUNCTION_38();
      sub_1B2448CD0();
      v61 = v65;
      goto LABEL_36;
    }
  }

  __break(1u);
}

uint64_t sub_1B24C41D4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1B24C421C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1B24C4264()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_8(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_10(v3);

  return sub_1B24BCC10(v5, v1);
}

uint64_t sub_1B24C42F0()
{
  OUTLINED_FUNCTION_18_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_22_1();
  v3(v2);
  return v0;
}

uint64_t sub_1B24C4368(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B24C43C0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1B24C43D4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_1B24C440C()
{
  result = qword_1EB7D17D0;
  if (!qword_1EB7D17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D17D0);
  }

  return result;
}

unint64_t sub_1B24C4464()
{
  result = qword_1EB7D17D8;
  if (!qword_1EB7D17D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D17D8);
  }

  return result;
}

unint64_t sub_1B24C44BC()
{
  result = qword_1EB7D17E0;
  if (!qword_1EB7D17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D17E0);
  }

  return result;
}

unint64_t sub_1B24C4514()
{
  result = qword_1EB7D17E8;
  if (!qword_1EB7D17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D17E8);
  }

  return result;
}

unint64_t sub_1B24C456C()
{
  result = qword_1EB7D17F0;
  if (!qword_1EB7D17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D17F0);
  }

  return result;
}

unint64_t sub_1B24C45C4()
{
  result = qword_1EB7D17F8;
  if (!qword_1EB7D17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D17F8);
  }

  return result;
}

uint64_t sub_1B24C46B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B24C4700()
{
  result = qword_1EB7D1810;
  if (!qword_1EB7D1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1810);
  }

  return result;
}

unint64_t sub_1B24C4758()
{
  result = qword_1EB7D1818;
  if (!qword_1EB7D1818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1818);
  }

  return result;
}

uint64_t sub_1B24C47D4()
{
  sub_1B2441328(319, &qword_1ED699E38);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1B256D36C();
    if (v3 <= 0x3F)
    {
      sub_1B24C4AA0(319, &qword_1EB7CD4E0, MEMORY[0x1E6969530]);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_1B2441328(319, &qword_1EB7CD478);
        if (v7 > 0x3F)
        {
          return v6;
        }

        sub_1B2441328(319, &unk_1EB7CD490);
        if (v8 > 0x3F)
        {
          return v6;
        }

        sub_1B24C4AA0(319, &qword_1ED699FE0, MEMORY[0x1E69695A8]);
        if (v9 > 0x3F)
        {
          return v6;
        }

        v6 = type metadata accessor for Storefront(319);
        if (v10 > 0x3F)
        {
          return v6;
        }

        sub_1B24C4AA0(319, &qword_1EB7CD2A0, type metadata accessor for Decimal);
        if (v11 > 0x3F)
        {
          return v6;
        }

        sub_1B24C4AA0(319, &qword_1EB7CD4D8, MEMORY[0x1E6969718]);
        if (v12 > 0x3F)
        {
          return v6;
        }

        v6 = sub_1B256D3CC();
        if (v13 > 0x3F)
        {
          return v6;
        }

        else
        {
          sub_1B2441328(319, &unk_1EB7CD480);
          v1 = v14;
          if (v15 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1B24C4AA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B256E2EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B24C4B34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B24C4B88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8StoreKit11TransactionV12TransactionsV13IterationType33_27D85255D62738CFD27A13DD664DCFB6LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B24C4C20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B24C4C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_1B24C4D00()
{
  sub_1B24C4DDC(319, &qword_1EB7CD2D0, MEMORY[0x1E69E8688]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TransactionReceiver();
    if (v1 <= 0x3F)
    {
      sub_1B24C4DDC(319, &qword_1EB7CD2C0, MEMORY[0x1E69E8698]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B24C4DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7D0DC0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *sub_1B24C4E58(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B24C4F34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B24C4F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Transaction.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Transaction.Key(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B24C515C()
{
  result = qword_1EB7D1828;
  if (!qword_1EB7D1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1828);
  }

  return result;
}

unint64_t sub_1B24C51B4()
{
  result = qword_1EB7D1830;
  if (!qword_1EB7D1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1830);
  }

  return result;
}

unint64_t sub_1B24C520C()
{
  result = qword_1EB7D1838;
  if (!qword_1EB7D1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1838);
  }

  return result;
}

unint64_t sub_1B24C5260()
{
  result = qword_1EB7D1840;
  if (!qword_1EB7D1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1840);
  }

  return result;
}

uint64_t sub_1B24C52B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B24472E0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B24C52C8()
{
  OUTLINED_FUNCTION_18_3();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_22_1();
  v3(v2);
  return v0;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B24C5358()
{
  result = qword_1EB7D18D8;
  if (!qword_1EB7D18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D18D8);
  }

  return result;
}

uint64_t sub_1B24C53B4()
{
  OUTLINED_FUNCTION_4_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_10(v1);

  return sub_1B24AB498(v3);
}

uint64_t sub_1B24C5458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = a4[1];
  v12 = a4[2];
  v13 = a4[3];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_1B2445514;

  return sub_1B24B9A24(a1, a2, a3, v10, v11, v12, v13, a5);
}

uint64_t sub_1B24C554C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1908);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17C0);
  OUTLINED_FUNCTION_2_2(v11);
  OUTLINED_FUNCTION_292();
  v12 = swift_task_alloc();
  *(v10 + 16) = v12;
  *v12 = v10;
  v12[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_326();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1B24C56A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[3];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_1B24741E0;

  return sub_1B24B9CB8(a1, a2, v10, v11, v12, v13, a4, a5);
}

void sub_1B24C5788()
{
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_336();

  __asm { BR              X5 }
}

uint64_t sub_1B24C5848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = a4[1];
  v12 = a4[2];
  v13 = a4[3];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_1B24741E0;

  return sub_1B24BA2EC(a1, a2, a3, v10, v11, v12, v13, a5);
}

void sub_1B24C5928()
{
  OUTLINED_FUNCTION_24_5();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1908);
  OUTLINED_FUNCTION_2_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v2[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_336();

  __asm { BR              X5 }
}

uint64_t sub_1B24C5A18()
{
  OUTLINED_FUNCTION_24_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17C0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1908);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_292();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_336();

  return sub_1B24BA954(v3, v4, v5, v6, v7);
}

uint64_t sub_1B24C5B60()
{
  OUTLINED_FUNCTION_21_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;

  return sub_1B25033C0();
}

uint64_t sub_1B24C5C14()
{
  OUTLINED_FUNCTION_18_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_22_1();
  v3(v2);
  return v0;
}

uint64_t sub_1B24C5CF4()
{
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_155();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_10(v1);
  OUTLINED_FUNCTION_326();

  return sub_1B24BEEE8(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B24C5DE0()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_8(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_10(v3);

  return sub_1B24BCF18(v5, v1);
}

uint64_t sub_1B24C5E6C()
{
  OUTLINED_FUNCTION_18_3();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_22_1();
  v3(v2);
  return v0;
}

uint64_t sub_1B24C5EF0()
{
  OUTLINED_FUNCTION_4_0();

  return sub_1B24BD6D8();
}

uint64_t sub_1B24C5F6C()
{
  OUTLINED_FUNCTION_4_0();

  return sub_1B24BD644();
}

uint64_t OUTLINED_FUNCTION_3_22(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B24472E0(a1, a2, a3);
  sub_1B24472E0(0, 0, 6);
  return v3;
}

uint64_t OUTLINED_FUNCTION_4_18(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B24472E0(a1, a2, a3);
  sub_1B24472E0(0, 0, 6);
  return v3;
}

void OUTLINED_FUNCTION_5_18()
{
  v0[34] = 0;
  v0[36] = 0;
  v0[26] = 0;
  v0[28] = 0;
  v0[38] = 0;
  v0[20] = 0;
  v0[22] = 0;
  v0[24] = 0;
}

void OUTLINED_FUNCTION_6_17(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B24472E0(a1, a2, a3);
  sub_1B24472E0(0, 0, 6);
  return v3;
}

uint64_t OUTLINED_FUNCTION_9_17(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B24472E0(a1, a2, a3);
  sub_1B24472E0(0, 0, 6);
  return v3;
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B24472E0(a1, a2, a3);
  sub_1B24472E0(0, 0, 6);
  return v3;
}

uint64_t OUTLINED_FUNCTION_11_13()
{
  v3 = *(v0 + 56) + 24 * v1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);

  return sub_1B24472B8(v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_19_12()
{
  sub_1B24472E0(v0, v1, 6);

  return sub_1B24472E0(0, 0, 6);
}

void OUTLINED_FUNCTION_20_9(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

uint64_t OUTLINED_FUNCTION_21_10(uint64_t a1, uint64_t a2)
{
  sub_1B24472E0(a1, a2, 6);

  return sub_1B24472E0(0, 0, 6);
}

void OUTLINED_FUNCTION_24_7(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
}

uint64_t OUTLINED_FUNCTION_27_6()
{
  v3 = *(v0 + 56) + 24 * v1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);

  return sub_1B24472B8(v4, v5, v6);
}

void OUTLINED_FUNCTION_38_5()
{
  v0[26] = 0;
  v0[28] = 0;
  v0[38] = 0;
}

void OUTLINED_FUNCTION_39_4()
{
  v0[32] = 0;
  v0[34] = 0;
  v0[36] = 0;
}

uint64_t OUTLINED_FUNCTION_43_2()
{
  sub_1B24472E0(v0, v1, v2);

  return sub_1B24472E0(0, 0, 6);
}

uint64_t OUTLINED_FUNCTION_50_3(uint64_t a1, uint64_t a2)
{
  sub_1B24472E0(a1, a2, 0);

  return sub_1B24472E0(0, 0, 6);
}

uint64_t OUTLINED_FUNCTION_62_1()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_160_0()
{
}

uint64_t OUTLINED_FUNCTION_165_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a10 = result;
  *(a10 + 8) = a2;
  *(a10 + 16) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_185()
{
}

uint64_t OUTLINED_FUNCTION_195()
{
}

uint64_t OUTLINED_FUNCTION_196()
{
}

uint64_t OUTLINED_FUNCTION_209(unint64_t *a1, uint64_t *a2)
{

  return sub_1B248D0F8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_214@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  result = v3[1];
  *v1 = *v3;
  v1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_217@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
}

void OUTLINED_FUNCTION_219(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
}

uint64_t OUTLINED_FUNCTION_239()
{

  return type metadata accessor for Transaction(0);
}

uint64_t OUTLINED_FUNCTION_249()
{
}

uint64_t OUTLINED_FUNCTION_250()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_251()
{
}

uint64_t OUTLINED_FUNCTION_282(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 96) = a4;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_283()
{

  return sub_1B24B6BE8();
}

uint64_t OUTLINED_FUNCTION_284()
{
}

uint64_t OUTLINED_FUNCTION_285()
{
}

uint64_t OUTLINED_FUNCTION_286()
{
}

uint64_t OUTLINED_FUNCTION_287()
{
}

uint64_t OUTLINED_FUNCTION_288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a12 = v14;
  a13 = v15;
  a14 = v16;

  return NSDecimal.init(_:)(&a12);
}

uint64_t OUTLINED_FUNCTION_289()
{
}

uint64_t OUTLINED_FUNCTION_300@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_306()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_325()
{

  return sub_1B24C42F0();
}

uint64_t OUTLINED_FUNCTION_327()
{
}

unint64_t OUTLINED_FUNCTION_328()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 40);
  v4 = *(v0 + 96);

  return sub_1B2515A0C(v3, v2, v4);
}

void OUTLINED_FUNCTION_331(NSObject *a1)
{
  v1[4].opaque[1] = a1;
  v1[1].opaque[1] = 0;
  v1[1].opaque[0] = 0;

  os_activity_scope_enter(a1, v1 + 1);
}

uint64_t OUTLINED_FUNCTION_335@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return sub_1B24BDB94(a1, a2, v4, v3, a3);
}

uint64_t static SKExternalPurchase.token(type:clientOverride:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v3[12] = type metadata accessor for ExternalGatewayRequest();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24C77F8, 0, 0);
}

uint64_t sub_1B24C77F8()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = *(v0[12] + 28);
  sub_1B2496048((v1 + v3));
  v4 = type metadata accessor for ClientOverride(0);
  __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[9];
  v8 = type metadata accessor for SKLogger();
  v0[14] = __swift_project_value_buffer(v8, qword_1ED69A108);
  v9 = sub_1B24D3E10();
  v10 = v6[8];
  v11 = (v5 + v6[9]);
  *v5 = 4;
  *(v5 + 8) = v7;
  *(v5 + 16) = v2;
  *(v5 + 24) = 0;
  *(v5 + v10) = 0;
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + v6[10]);
  *v12 = v9;
  v12[1] = v13;
  v14 = qword_1EB7CDA40;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB7CDA48;
  v0[15] = qword_1EB7CDA48;

  return MEMORY[0x1EEE6DFA0](sub_1B24C795C, v15, 0);
}

uint64_t sub_1B24C795C()
{
  v1 = sub_1B246F59C();
  v0[16] = v1;
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1B24C7A04;
  v3 = v0[13];

  return sub_1B24EBD68(v3, v1);
}

uint64_t sub_1B24C7A04(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[18] = a2;
  v4[19] = v2;

  if (v2)
  {
    v5 = sub_1B24C7ED8;
  }

  else
  {
    v5 = sub_1B24C7B20;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B24C7B20()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[3];
    sub_1B2443A74(v0[13]);

    v3 = v0[1];

    return v3(v2, v1);
  }

  else
  {
    v5 = v0[14];
    v7 = v0[9];
    v6 = v0[10];
    OUTLINED_FUNCTION_2_26();
    sub_1B256E4FC();

    v42 = 0xD00000000000001CLL;
    MEMORY[0x1B2749D50](v7, v6);
    v8 = sub_1B256E0AC();

    v9 = sub_1B256D5CC();

    if (os_log_type_enabled(v9, v8))
    {
      swift_slowAlloc();
      v10 = OUTLINED_FUNCTION_3_23();
      v18 = OUTLINED_FUNCTION_1_25(4.8752e-34, v10, v11, v12, v13, v14, v15, v16, v17, v10);
      OUTLINED_FUNCTION_0_30(v18);
      v20 = sub_1B2519814(0xD00000000000001CLL, 0x80000001B2590070, v19);

      *(v5 + 14) = v20;
      OUTLINED_FUNCTION_5_19(&dword_1B23EF000, v21, v8, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    else
    {
    }

    type metadata accessor for StoreKitError();
    sub_1B243A51C();
    v22 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v23 = v0[14];
    OUTLINED_FUNCTION_2_26();
    sub_1B256E4FC();
    v0[6] = v42;
    v0[7] = 0x80000001B2590070;
    MEMORY[0x1B2749D50](0xD000000000000016, 0x80000001B2590050);
    v0[8] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256E78C();
    v25 = v0[6];
    v24 = v0[7];
    v26 = sub_1B256E0AC();

    v27 = sub_1B256D5CC();

    if (os_log_type_enabled(v27, v26))
    {
      swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_3_23();
      v36 = OUTLINED_FUNCTION_1_25(4.8752e-34, v28, v29, v30, v31, v32, v33, v34, v35, v28);
      OUTLINED_FUNCTION_0_30(v36);
      v38 = sub_1B2519814(v25, v24, v37);

      *(v23 + 14) = v38;
      OUTLINED_FUNCTION_5_19(&dword_1B23EF000, v39, v26, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    else
    {
    }

    v40 = v0[13];
    parseError(_:)(v22);
    swift_willThrow();

    sub_1B2443A74(v40);

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_1B24C7ED8()
{

  v1 = v0[19];
  v2 = v0[14];
  OUTLINED_FUNCTION_2_26();
  sub_1B256E4FC();
  v0[6] = v22;
  v0[7] = v23;
  MEMORY[0x1B2749D50](0xD000000000000016, 0x80000001B2590050);
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  sub_1B256E78C();
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_1B256E0AC();

  v6 = sub_1B256D5CC();

  if (os_log_type_enabled(v6, v5))
  {
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_3_23();
    v15 = OUTLINED_FUNCTION_1_25(4.8752e-34, v7, v8, v9, v10, v11, v12, v13, v14, v7);
    OUTLINED_FUNCTION_0_30(v15);
    v17 = sub_1B2519814(v3, v4, v16);

    *(v2 + 14) = v17;
    OUTLINED_FUNCTION_5_19(&dword_1B23EF000, v18, v5, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  v19 = v0[13];
  parseError(_:)(v1);
  swift_willThrow();

  sub_1B2443A74(v19);

  v20 = v0[1];

  return v20();
}

_BYTE *storeEnumTagSinglePayload for SKExternalPurchase(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_30(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

unint64_t OUTLINED_FUNCTION_1_25(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_1B2519814(0, 0xE000000000000000, &a10);
}

uint64_t OUTLINED_FUNCTION_3_23()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_5_19(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t SKPurchaseIntent.additionalBuyParams.getter()
{
  v1 = (v0 + OBJC_IVAR___SKPurchaseIntent_additionalBuyParams);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SKPurchaseIntent.additionalBuyParams.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SKPurchaseIntent_additionalBuyParams);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1B24C8388(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 additionalBuyParams];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B256D9BC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B24C83F0(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1B256D98C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAdditionalBuyParams_];
}

id sub_1B24C8460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (v8 + OBJC_IVAR___SKPurchaseIntent_additionalBuyParams);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v8 + OBJC_IVAR___SKPurchaseIntent_bundleID);
  *v10 = a1;
  v10[1] = a2;
  v11 = (v8 + OBJC_IVAR___SKPurchaseIntent_productID);
  *v11 = a3;
  v11[1] = a4;
  v12 = (v8 + OBJC_IVAR___SKPurchaseIntent_appName);
  *v12 = a5;
  v12[1] = a6;
  v13 = (v8 + OBJC_IVAR___SKPurchaseIntent_productName);
  *v13 = a7;
  v13[1] = a8;
  v15.super_class = SKPurchaseIntent;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_1B24C85A4()
{
  OUTLINED_FUNCTION_4_0();
  v1[13] = v0;
  v1[14] = type metadata accessor for PurchaseIntentRequest.Add(0);
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for PurchaseIntentInternal();
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24C8664, 0, 0);
}

uint64_t sub_1B24C8664()
{
  v38 = v0;
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  v3 = sub_1B24D3E10();
  v5 = v4;
  v0[18] = v3;
  v0[19] = v4;
  sub_1B256E4FC();

  v36 = 0xD000000000000023;
  v37 = 0x80000001B2590160;
  v33 = *(v1 + OBJC_IVAR___SKPurchaseIntent_productID + 8);
  v34 = *(v1 + OBJC_IVAR___SKPurchaseIntent_productID);
  MEMORY[0x1B2749D50]();
  MEMORY[0x1B2749D50](10272, 0xE200000000000000);
  v31 = *(v1 + OBJC_IVAR___SKPurchaseIntent_bundleID + 8);
  v32 = *(v1 + OBJC_IVAR___SKPurchaseIntent_bundleID);
  MEMORY[0x1B2749D50]();
  MEMORY[0x1B2749D50](41, 0xE100000000000000);

  v6 = sub_1B256E0CC();

  v7 = sub_1B256D5CC();

  v30 = v3;
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446466;
    v35 = v9;
    v36 = 91;
    v37 = 0xE100000000000000;
    MEMORY[0x1B2749D50](v3, v5);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v10 = sub_1B2519814(91, 0xE100000000000000, &v35);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2082;
    v11 = sub_1B2519814(0xD000000000000023, 0x80000001B2590160, &v35);

    *(v8 + 14) = v11;
    _os_log_impl(&dword_1B23EF000, v7, v6, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  v13 = v0[16];
  v12 = v0[17];
  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[13];
  v17 = *&v16[OBJC_IVAR___SKPurchaseIntent_appName + 8];
  v18 = *&v16[OBJC_IVAR___SKPurchaseIntent_productName + 8];
  v28 = *&v16[OBJC_IVAR___SKPurchaseIntent_appName];
  v29 = *&v16[OBJC_IVAR___SKPurchaseIntent_productName];

  v19 = sub_1B24C9CA0(v16);
  v21 = v20;
  sub_1B256D35C();
  *v12 = v28;
  v12[1] = v17;
  v12[2] = v32;
  v12[3] = v31;
  v12[4] = v34;
  v12[5] = v33;
  v12[6] = v29;
  v12[7] = v18;
  v22 = (v12 + *(v13 + 36));
  *v22 = v19;
  v22[1] = v21;
  sub_1B24C9D04(v12, v14);
  *(v14 + v15[5]) = 1;
  v23 = (v14 + v15[6]);
  *v23 = v30;
  v23[1] = v5;
  *(v14 + v15[7]) = 0;
  sub_1B256D03C();
  swift_allocObject();

  sub_1B256D02C();
  sub_1B24C9D68();
  v24 = sub_1B256D01C();
  v26 = v25;

  v0[20] = v26;
  v0[21] = v24;
  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_0_31();

  return MEMORY[0x1EEE6DFA0](sub_1B24C8CCC, 0, 0);
}

uint64_t sub_1B24C8CCC()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1B24C8D8C;
  v3 = swift_continuation_init();
  sub_1B24C8ED0(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B24C8D8C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B24C8E60, 0, 0);
}

uint64_t sub_1B24C8E60()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B2443AE4(v0[21], v0[20]);

  v1 = v0[1];

  return v1();
}

void sub_1B24C8ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  v7 = objc_opt_self();

  v8 = [v7 defaultBroker];
  v26 = sub_1B24C9E20;
  v27 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1B244BD28;
  v25 = &block_descriptor_13;
  v9 = _Block_copy(&aBlock);

  v10 = [v8 purchaseIntentServiceWithErrorHandler_];
  _Block_release(v9);

  if (v10)
  {
    v11 = sub_1B256D1FC();
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = a1;
    v26 = sub_1B24C9E44;
    v27 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1B2515BBC;
    v25 = &block_descriptor_12;
    v13 = _Block_copy(&aBlock);

    [v10 addPurchaseIntentWithRequest:v11 reply:v13];
    _Block_release(v13);

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = a2;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v15, qword_1ED69A108);
    v16 = sub_1B256E0AC();

    v17 = sub_1B256D5CC();

    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136446466;
      v21 = v19;
      aBlock = 91;
      v23 = 0xE100000000000000;
      MEMORY[0x1B2749D50](v14, a3);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v20 = sub_1B2519814(aBlock, v23, &v21);

      *(v18 + 4) = v20;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1B2519814(0xD00000000000001FLL, 0x80000001B258E5E0, &v21);
      _os_log_impl(&dword_1B23EF000, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v19, -1, -1);
      MEMORY[0x1B274BFF0](v18, -1, -1);
    }

    swift_continuation_throwingResume();
  }
}

uint64_t sub_1B24C928C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v6, qword_1ED69A108);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0x692064656C696146, 0xEF203A435058206ELL);
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  sub_1B256E78C();
  v7 = sub_1B256E0AC();

  v8 = sub_1B256D5CC();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446466;
    v14 = v10;
    v15 = 91;
    v16 = 0xE100000000000000;
    MEMORY[0x1B2749D50](a2, a3);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v11 = sub_1B2519814(91, 0xE100000000000000, &v14);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2082;
    v12 = sub_1B2519814(0, 0xE000000000000000, &v14);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_1B23EF000, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v10, -1, -1);
    MEMORY[0x1B274BFF0](v9, -1, -1);
  }

  else
  {
  }

  return swift_continuation_throwingResume();
}

uint64_t sub_1B24C9508(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v7, qword_1ED69A108);
    v16 = 0;
    v17 = 0xE000000000000000;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256E78C();
    v8 = sub_1B256E0AC();

    v9 = sub_1B256D5CC();

    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v11 = v15;
      *v10 = 136446466;
      v16 = 91;
      v17 = 0xE100000000000000;
      MEMORY[0x1B2749D50](a2, a3);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v12 = sub_1B2519814(91, 0xE100000000000000, &v15);

      *(v10 + 4) = v12;
      *(v10 + 12) = 2082;
      v13 = sub_1B2519814(0, 0xE000000000000000, &v15);

      *(v10 + 14) = v13;
      _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v11, -1, -1);
      MEMORY[0x1B274BFF0](v10, -1, -1);
    }

    else
    {
    }
  }

  return swift_continuation_throwingResume();
}

uint64_t sub_1B24C97DC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B24C9884;

  return sub_1B24C85A4();
}

uint64_t sub_1B24C9884()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;

  if (v2)
  {
    v6 = *(v1 + 24);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v4 + 8);

  return v7();
}

id SKPurchaseIntent.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SKPurchaseIntent()
{
  result = qword_1EB7D19F8;
  if (!qword_1EB7D19F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7D19F8);
  }

  return result;
}

uint64_t sub_1B24C9B0C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B24C9BB8;

  return sub_1B24C97DC(v2, v3);
}

uint64_t sub_1B24C9BB8()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1B24C9CA0(void *a1)
{
  v1 = [a1 additionalBuyParams];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B256D9BC();

  return v3;
}

uint64_t sub_1B24C9D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseIntentInternal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B24C9D68()
{
  result = qword_1EB7D1A00;
  if (!qword_1EB7D1A00)
  {
    type metadata accessor for PurchaseIntentRequest.Add(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A00);
  }

  return result;
}

uint64_t sub_1B24C9DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_0_31()
{

  return sub_1B24C9DC0(v0, type metadata accessor for PurchaseIntentInternal);
}

uint64_t OUTLINED_FUNCTION_1_26()
{

  return sub_1B24C9DC0(v0, type metadata accessor for PurchaseIntentRequest.Add);
}

uint64_t sub_1B24C9EA8()
{
  v1 = type metadata accessor for PurchaseIntentInternal();
  v2 = (v0 + *(v1 + 36));
  v3 = v2[1];
  if (!v3)
  {

    return sub_1B256D8AC();
  }

  v4 = *v2;
  v75 = 38;
  v76 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v1);

  v5 = 0;
  sub_1B24C3E54(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B248C788, &v64, v4, v3, v6, v7, v64, v65, &v75, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v73 = MEMORY[0x1E69E7CC0];
    sub_1B2455E18(0, v10, 0);
    v11 = 0;
    v12 = v73;
    v67 = v9;
    v68 = v9 + 32;
    v69 = v10;
    do
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_35;
      }

      v13 = (v68 + 32 * v11);
      v14 = *v13;
      v15 = v13[1];
      v17 = v13[2];
      v16 = v13[3];

      v18 = MEMORY[0x1B2749CC0](v14, v15, v17, v16);
      v75 = 61;
      v76 = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v18);
      sub_1B24C3E54(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B248D418, &v64, v19, v20, v21, v22, v64, v65, &v75, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
      v24 = v23;
      v25 = *(v23 + 16);
      if (v25)
      {
        v70 = v16;
        v71 = v5;
        v72 = v12;
        v75 = MEMORY[0x1E69E7CC0];
        sub_1B2455BD8(0, v25, 0);
        v26 = v75;
        v27 = (v24 + 56);
        do
        {
          v28 = *(v27 - 3);
          v29 = *(v27 - 2);
          v31 = *(v27 - 1);
          v30 = *v27;

          v32 = MEMORY[0x1B2749CC0](v28, v29, v31, v30);
          v34 = v33;

          v75 = v26;
          v36 = *(v26 + 16);
          v35 = *(v26 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_1B2455BD8((v35 > 1), v36 + 1, 1);
            v26 = v75;
          }

          *(v26 + 16) = v36 + 1;
          v37 = v26 + 16 * v36;
          *(v37 + 32) = v32;
          *(v37 + 40) = v34;
          v27 += 4;
          --v25;
        }

        while (v25);

        v5 = v71;
        v12 = v72;
        v9 = v67;
      }

      else
      {

        v26 = MEMORY[0x1E69E7CC0];
      }

      v73 = v12;
      v39 = *(v12 + 16);
      v38 = *(v12 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1B2455E18((v38 > 1), v39 + 1, 1);
        v12 = v73;
      }

      ++v11;
      *(v12 + 16) = v39 + 1;
      *(v12 + 8 * v39 + 32) = v26;
    }

    while (v11 != v69);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v41 = sub_1B256D8AC();
  v42 = 0;
  v43 = *(v12 + 16);
  while (1)
  {
    if (v43 == v42)
    {

      return v41;
    }

    if (v42 >= *(v12 + 16))
    {
      break;
    }

    v44 = *(v12 + 8 * v42++ + 32);
    if (v44[2] == 2)
    {
      v72 = v12;
      v46 = v44[4];
      v45 = v44[5];
      v47 = v44[7];
      v70 = v44[6];

      v71 = v47;

      swift_isUniquelyReferenced_nonNull_native();
      v75 = v41;
      v68 = v46;
      v48 = v45;
      v49 = sub_1B2455488();
      v69 = v41;
      if (__OFADD__(v41[2], (v50 & 1) == 0))
      {
        goto LABEL_36;
      }

      v51 = v49;
      v52 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E78);
      if (sub_1B256E80C())
      {
        v53 = sub_1B2455488();
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_38;
        }

        v51 = v53;
        if (v52)
        {
LABEL_31:

          v61 = v75;
          v62 = (*(v75 + 56) + 16 * v51);
          v63 = v71;
          *v62 = v70;
          v62[1] = v63;

          v41 = v61;
          goto LABEL_32;
        }
      }

      else if (v52)
      {
        goto LABEL_31;
      }

      v41 = v75;
      *(v75 + 8 * (v51 >> 6) + 64) |= 1 << v51;
      v55 = (v41[6] + 16 * v51);
      *v55 = v68;
      v55[1] = v48;
      v56 = (v41[7] + 16 * v51);
      v57 = v71;
      *v56 = v70;
      v56[1] = v57;

      v58 = v41[2];
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_37;
      }

      v41[2] = v60;
LABEL_32:
      v12 = v72;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1B256EC9C();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for PurchaseIntentInternal()
{
  result = qword_1EB7CDAE8;
  if (!qword_1EB7CDAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B24CA460(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
      if (v7 || (sub_1B256EB5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61;
        if (v8 || (sub_1B256EB5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
          if (v9 || (sub_1B256EB5C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x80000001B2590140 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1B256EB5C();

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

unint64_t sub_1B24CA668(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0x4449656C646E7562;
      break;
    case 2:
      result = 0x49746375646F7270;
      break;
    case 3:
      result = 0x4E746375646F7270;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B24CA734(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1A20);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B24CAF80();
  sub_1B256EDFC();
  v10[15] = 0;
  OUTLINED_FUNCTION_1_27();
  sub_1B256E9FC();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_1_27();
    sub_1B256EA2C();
    v10[13] = 2;
    OUTLINED_FUNCTION_1_27();
    sub_1B256EA2C();
    v10[12] = 3;
    OUTLINED_FUNCTION_1_27();
    sub_1B256E9FC();
    type metadata accessor for PurchaseIntentInternal();
    v10[11] = 4;
    sub_1B256D36C();
    sub_1B24CAFD4(&qword_1EB7CDC48);
    sub_1B256EA5C();
    v10[10] = 5;
    OUTLINED_FUNCTION_1_27();
    sub_1B256E9FC();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1B24CA950@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v35 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v33 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1A08);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v34 = type metadata accessor for PurchaseIntentInternal();
  MEMORY[0x1EEE9AC00](v34);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B24CAF80();
  sub_1B256EDBC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v30 = v7;
  v31 = v9;
  v42 = 0;
  *v12 = sub_1B256E94C();
  v12[1] = v14;
  v41 = 1;
  OUTLINED_FUNCTION_3_24();
  v12[2] = sub_1B256E97C();
  v12[3] = v15;
  v40 = 2;
  OUTLINED_FUNCTION_3_24();
  v12[4] = sub_1B256E97C();
  v12[5] = v16;
  v39 = 3;
  OUTLINED_FUNCTION_3_24();
  v12[6] = sub_1B256E94C();
  v12[7] = v17;
  v38 = 4;
  sub_1B24CAFD4(&qword_1EB7D1A18);
  v18 = v30;
  v19 = v35;
  sub_1B256E9AC();
  v20 = v34;
  (*(v33 + 32))(v12 + *(v34 + 32), v18, v19);
  v37 = 5;
  OUTLINED_FUNCTION_3_24();
  v21 = sub_1B256E94C();
  v30 = v22;
  v23 = v21;
  v24 = OUTLINED_FUNCTION_0_32();
  v25(v24);
  v26 = (v12 + *(v20 + 36));
  v27 = v30;
  *v26 = v23;
  v26[1] = v27;
  sub_1B24C9D04(v12, v32);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_1B2447B78(v12);
}

uint64_t sub_1B24CADBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B24CA460(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B24CADE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B24CA660();
  *a1 = result;
  return result;
}

uint64_t sub_1B24CAE0C(uint64_t a1)
{
  v2 = sub_1B24CAF80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24CAE48(uint64_t a1)
{
  v2 = sub_1B24CAF80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24CAEDC()
{
  sub_1B243C1F8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = sub_1B256D36C();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

unint64_t sub_1B24CAF80()
{
  result = qword_1EB7D1A10;
  if (!qword_1EB7D1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A10);
  }

  return result;
}

uint64_t sub_1B24CAFD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B256D36C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PurchaseIntentInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B24CB0F8()
{
  result = qword_1EB7D1A28;
  if (!qword_1EB7D1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A28);
  }

  return result;
}

unint64_t sub_1B24CB150()
{
  result = qword_1EB7D1A30;
  if (!qword_1EB7D1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A30);
  }

  return result;
}

unint64_t sub_1B24CB1A8()
{
  result = qword_1EB7D1A38;
  if (!qword_1EB7D1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A38);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B24CB244(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1B24CB284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B24CB2E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C646E7562 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B256EB5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B24CB368(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1AB8);
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1AC0);
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B24CC56C();
  sub_1B256EDFC();
  sub_1B24CC5C0();
  sub_1B256E9EC();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

void sub_1B24CB520(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1A98);
  OUTLINED_FUNCTION_1_1();
  v37 = v4;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1AA0);
  OUTLINED_FUNCTION_1_1();
  v38 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B24CC56C();
  sub_1B256EDBC();
  if (v1)
  {
    goto LABEL_9;
  }

  v35 = v7;
  v36 = a1;
  v13 = sub_1B256E9CC();
  sub_1B24A8FB8(v13, 0);
  v17 = v12;
  if (v15 == v16 >> 1)
  {
    v37 = v14;
LABEL_8:
    v28 = v8;
    v29 = v38;
    v30 = sub_1B256E58C();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    *v32 = &type metadata for OfferDisplayRequest.ProductKind;
    sub_1B256E93C();
    sub_1B256E54C();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v29 + 8))(v17, v28);
    a1 = v36;
LABEL_9:
    v33 = a1;
    goto LABEL_10;
  }

  if (v15 < (v16 >> 1))
  {
    v18 = sub_1B24AAC20(v15 + 1);
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = v20 == v22 >> 1;
    v24 = v36;
    v25 = v37;
    if (v23)
    {
      sub_1B24CC5C0();
      v26 = v35;
      sub_1B256E92C();
      v27 = v38;
      swift_unknownObjectRelease();
      (*(v25 + 8))(v26, v3);
      (*(v27 + 8))(v17, v8);
      v33 = v24;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v33);
      return;
    }

    v37 = v18;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1B24CB8AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449656E656373 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
      if (v7 || (sub_1B256EB5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4B746375646F7270 && a2 == 0xEB00000000646E69)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B256EB5C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1B24CBA0C(char a1)
{
  result = 0x79654B676F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x4449656E656373;
      break;
    case 2:
      result = 0x49746375646F7270;
      break;
    case 3:
      result = 0x4B746375646F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B24CBA98(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1A68);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B24CC224();
  sub_1B256EDFC();
  v16 = 0;
  OUTLINED_FUNCTION_23_5();
  sub_1B256EA2C();
  if (!v2)
  {
    v15 = 1;
    OUTLINED_FUNCTION_23_5();
    sub_1B256E9FC();
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v12[15] = 2;
    sub_1B24A8D5C();
    OUTLINED_FUNCTION_23_5();
    sub_1B256EA5C();
    v12[14] = 3;
    sub_1B24CC2CC();
    OUTLINED_FUNCTION_23_5();
    sub_1B256EA5C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1B24CBC58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1A50);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B24CC224();
  sub_1B256EDBC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_3_25();
  v6 = sub_1B256E97C();
  v8 = v7;
  OUTLINED_FUNCTION_3_25();
  v13 = sub_1B256E94C();
  v14 = v9;
  sub_1B24A8A50();
  OUTLINED_FUNCTION_3_25();
  sub_1B256E9AC();
  sub_1B24CC278();
  OUTLINED_FUNCTION_3_25();
  sub_1B256E9AC();
  v10 = OUTLINED_FUNCTION_1_28();
  v11(v10);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

uint64_t sub_1B24CBEF8(uint64_t a1)
{
  v2 = sub_1B24CC5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24CBF34(uint64_t a1)
{
  v2 = sub_1B24CC5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24CBF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B24CB2E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B24CBFA0(uint64_t a1)
{
  v2 = sub_1B24CC56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24CBFDC(uint64_t a1)
{
  v2 = sub_1B24CC56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24CC050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B24CB8AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B24CC078(uint64_t a1)
{
  v2 = sub_1B24CC224();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24CC0B4(uint64_t a1)
{
  v2 = sub_1B24CC224();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1B24CC0F0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B24CBC58(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_1B24CC14C(uint64_t a1)
{
  *(a1 + 16) = sub_1B24CC17C();
  result = sub_1B24CC1D0();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1B24CC17C()
{
  result = qword_1EB7D1A40;
  if (!qword_1EB7D1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A40);
  }

  return result;
}

unint64_t sub_1B24CC1D0()
{
  result = qword_1EB7D1A48;
  if (!qword_1EB7D1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A48);
  }

  return result;
}

unint64_t sub_1B24CC224()
{
  result = qword_1EB7D1A58;
  if (!qword_1EB7D1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A58);
  }

  return result;
}

unint64_t sub_1B24CC278()
{
  result = qword_1EB7D1A60;
  if (!qword_1EB7D1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A60);
  }

  return result;
}

unint64_t sub_1B24CC2CC()
{
  result = qword_1EB7D1A70;
  if (!qword_1EB7D1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OfferDisplayRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B24CC410()
{
  result = qword_1EB7D1A78;
  if (!qword_1EB7D1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A78);
  }

  return result;
}

unint64_t sub_1B24CC468()
{
  result = qword_1EB7D1A80;
  if (!qword_1EB7D1A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A80);
  }

  return result;
}

unint64_t sub_1B24CC4C0()
{
  result = qword_1EB7D1A88;
  if (!qword_1EB7D1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A88);
  }

  return result;
}

unint64_t sub_1B24CC518()
{
  result = qword_1EB7D1A90;
  if (!qword_1EB7D1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1A90);
  }

  return result;
}

unint64_t sub_1B24CC56C()
{
  result = qword_1EB7D1AA8;
  if (!qword_1EB7D1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1AA8);
  }

  return result;
}

unint64_t sub_1B24CC5C0()
{
  result = qword_1EB7D1AB0;
  if (!qword_1EB7D1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1AB0);
  }

  return result;
}

_BYTE *sub_1B24CC614(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B24CC6D4()
{
  result = qword_1EB7D1AC8;
  if (!qword_1EB7D1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1AC8);
  }

  return result;
}

unint64_t sub_1B24CC72C()
{
  result = qword_1EB7D1AD0;
  if (!qword_1EB7D1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1AD0);
  }

  return result;
}

unint64_t sub_1B24CC784()
{
  result = qword_1EB7D1AD8;
  if (!qword_1EB7D1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1AD8);
  }

  return result;
}

unint64_t sub_1B24CC7DC()
{
  result = qword_1EB7D1AE0;
  if (!qword_1EB7D1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1AE0);
  }

  return result;
}

unint64_t sub_1B24CC834()
{
  result = qword_1EB7D1AE8;
  if (!qword_1EB7D1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1AE8);
  }

  return result;
}

uint64_t sub_1B24CC8A8()
{
  OUTLINED_FUNCTION_4_0();
  v1[2] = v0;
  v2 = type metadata accessor for ProductRequest();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B24CC968()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  _s14descr1F29AE0C9V12LocaleParserCMa();
  v5 = swift_allocObject();
  v0[7] = v5;
  swift_defaultActor_initialize();
  *(v5 + 112) = MEMORY[0x1E69E7CC8];
  sub_1B24A8C58(v4, v1);
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1AF0));
  v0[8] = sub_1B24FF200(v1);
  sub_1B24A8C58(v4, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[9] = v8;
  sub_1B24CFD44(v1, v8 + v7);
  *(v8 + ((v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;

  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1B24CCB00;

  return (sub_1B24F99EC)(&unk_1B2581EB0, v8);
}

uint64_t sub_1B24CCB00()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1B24CCC08()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [objc_allocWithZone(SKProductsResponse) init];
  sub_1B246063C(0, &qword_1EB7CDC50);
  v4 = sub_1B256DC4C();
  [v3 _setProducts_];

  v5 = v2 + *(v1 + 20);
  v6 = v0[11];
  if (*(v5 + 8))
  {
    v7 = v0[8];

    goto LABEL_16;
  }

  v31 = v3;
  v32 = v0;

  v30 = sub_1B24CF314(v8);
  v9 = sub_1B24CCF24(v6);
  v10 = 0;
  v11 = v6 & 0xC000000000000001;
  v12 = v6 & 0xFFFFFFFFFFFFFF8;
  v13 = v6 + 32;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v9 == v10)
    {
      v25 = v32[8];

      v26 = sub_1B24CFEC4(v14, v30);

      sub_1B24CCF48(v26);
      v27 = sub_1B256DC4C();

      [v31 _setInvalidIdentifiers_];

LABEL_16:

      OUTLINED_FUNCTION_114();

      __asm { BRAA            X2, X16 }
    }

    if (v11)
    {
      v15 = MEMORY[0x1B274A7A0](v10, v32[11]);
    }

    else
    {
      if (v10 >= *(v12 + 16))
      {
        goto LABEL_20;
      }

      v15 = *(v13 + 8 * v10);
    }

    v16 = v15;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v17 = [v15 productIdentifier];
    v18 = sub_1B256D9BC();
    v20 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B2448D00();
      v14 = v23;
    }

    v21 = *(v14 + 16);
    if (v21 >= *(v14 + 24) >> 1)
    {
      sub_1B2448D00();
      v14 = v24;
    }

    *(v14 + 16) = v21 + 1;
    v22 = v14 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v20;
    ++v10;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1B24CCEA8()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_7_2();

  return v2();
}

uint64_t sub_1B24CCF24(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B256E8AC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void *sub_1B24CCF48(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1B244981C(*(a1 + 16), 0);
  v4 = sub_1B24D09DC(&v6, v3 + 4, v2, a1);
  sub_1B23FB6C4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1B24CCFD8()
{
  OUTLINED_FUNCTION_4_0();
  v1[4] = v0;
  v1[5] = type metadata accessor for ProductRequest();
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24CD09C()
{
  v1 = [*(v0 + 32) paymentQueueClient];
  if (v1)
  {
    v2 = v1;
    sub_1B2496048(*(v0 + 56));

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 56);
  v5 = type metadata accessor for ClientOverride(0);
  __swift_storeEnumTagSinglePayload(v4, v3, 1, v5);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = type metadata accessor for SKLogger();
  *(v0 + 64) = __swift_project_value_buffer(v10, qword_1ED69A108);
  v21 = sub_1B24D3E10();
  v22 = v11;

  MEMORY[0x1B2749D50](827020127, 0xE400000000000000);

  *(v0 + 72) = v21;
  *(v0 + 80) = v22;
  v12 = [v8 _productIdentifiers];
  v13 = sub_1B256DFBC();

  v14 = sub_1B24CCF48(v13);
  sub_1B2503724();
  v16 = v15;
  sub_1B24CFC80(v7, v6);
  v17 = v6 + v9[5];
  *v17 = v14;
  *(v17 + 8) = 0;
  *(v6 + v9[6]) = 1;
  *(v6 + v9[7]) = v16;
  *(v6 + v9[8]) = MEMORY[0x1E69E7CD0];
  v18 = (v6 + v9[9]);
  *v18 = v21;
  v18[1] = v22;
  *(v6 + v9[10]) = 0;

  v19 = swift_task_alloc();
  *(v0 + 88) = v19;
  *v19 = v0;
  v19[1] = sub_1B24CD2D4;

  return sub_1B24CC8A8();
}

uint64_t sub_1B24CD2D4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1B24CD3DC()
{
  v1 = v0[12];
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0x6E696E7275746552, 0xEA00000000002067);
  v2 = [v1 products];
  sub_1B246063C(0, &qword_1EB7CDC50);
  v3 = sub_1B256DC5C();

  v4 = sub_1B24CCF24(v3);

  v0[2] = v4;
  v5 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v5);

  MEMORY[0x1B2749D50](0xD000000000000010, 0x80000001B2590240);
  v6 = [v1 invalidProductIdentifiers];
  v7 = sub_1B256DC5C();

  v8 = *(v7 + 16);

  v0[3] = v8;
  v9 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v9);

  MEMORY[0x1B2749D50](0xD000000000000016, 0x80000001B2590260);
  v11 = v29;
  v10 = v30;
  v12 = sub_1B256E0CC();

  v13 = sub_1B256D5CC();

  v14 = os_log_type_enabled(v13, v12);
  v15 = v0[10];
  if (v14)
  {
    v16 = v0[9];
    v26 = v0[6];
    v27 = v0[7];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136446466;
    v28 = v18;
    v29 = 91;
    v30 = 0xE100000000000000;
    MEMORY[0x1B2749D50](v16, v15);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v19 = sub_1B2519814(91, 0xE100000000000000, &v28);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2082;
    v20 = sub_1B2519814(v11, v10, &v28);

    *(v17 + 14) = v20;
    _os_log_impl(&dword_1B23EF000, v13, v12, "%{public}s%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();

    sub_1B24A8CBC(v26);
    v21 = v27;
  }

  else
  {
    v23 = v0[6];
    v22 = v0[7];

    sub_1B24A8CBC(v23);
    v21 = v22;
  }

  sub_1B24CFCF0(v21, &qword_1EB7D1850);

  OUTLINED_FUNCTION_8_7();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1B24CD790()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 56);
  sub_1B24A8CBC(*(v0 + 48));
  sub_1B24CFCF0(v1, &qword_1EB7D1850);

  OUTLINED_FUNCTION_7_2();

  return v2();
}

uint64_t sub_1B24CD894(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B24CD93C;

  return sub_1B24CCFD8();
}

uint64_t sub_1B24CD93C(void *a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_6_1();
  v6 = v5;
  OUTLINED_FUNCTION_13_9();
  *v7 = v6;
  v9 = *(v8 + 24);
  v10 = *(v8 + 16);
  v11 = *v2;
  OUTLINED_FUNCTION_3_10();
  *v12 = v11;

  if (v3)
  {
    if (v9)
    {
      v13 = *(v6 + 24);
      v14 = sub_1B256D0CC();

      (v13)[2](v13, 0, v14);
      _Block_release(v13);
    }

    else
    {
    }
  }

  else if (v9)
  {
    v15 = *(v6 + 24);
    (v15)[2](v15, a1, 0);

    _Block_release(v15);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_2();

  return v16();
}

uint64_t sub_1B24CDAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  swift_beginAccess();
  v11 = *(v2 + 112);
  if (!*(v11 + 16))
  {
    v16 = sub_1B256D47C();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v16);
LABEL_7:
    sub_1B24CFCF0(v10, &qword_1EB7D0010);

    sub_1B256D3DC();
    sub_1B256D47C();
    (*(*(v16 - 8) + 16))(v8, a2, v16);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
    swift_beginAccess();

    sub_1B253F584();
    return swift_endAccess();
  }

  v22 = a2;

  v12 = sub_1B2455488();
  if (v13)
  {
    v14 = v12;
    v21[1] = a1;
    v15 = *(v11 + 56);
    v16 = sub_1B256D47C();
    (*(*(v16 - 8) + 16))(v10, v15 + *(*(v16 - 8) + 72) * v14, v16);
    v17 = v10;
    v18 = 0;
  }

  else
  {
    v16 = sub_1B256D47C();
    v17 = v10;
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);

  sub_1B256D47C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v16);
  a2 = v22;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_7;
  }

  return (*(*(v16 - 8) + 32))(v22, v10, v16);
}

uint64_t sub_1B24CDDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1B24CDE94;

  return sub_1B24CDFF8(a2, a4);
}

uint64_t sub_1B24CDE94()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1B24CDFC8()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_7_2();
  return v1();
}

uint64_t sub_1B24CDFF8(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_1B256D47C();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24CE0BC, 0, 0);
}

uint64_t sub_1B24CE0BC()
{
  v19 = v0;
  v1 = objc_opt_self();
  v2 = sub_1B256D86C();
  LODWORD(v1) = [v1 isValidJSONObject_];

  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D10D0);
    sub_1B2493830();
    OUTLINED_FUNCTION_14_13();
    swift_allocError();
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 4;
    swift_willThrow();
    goto LABEL_6;
  }

  v3 = *(v0 + 120);
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2000);
  v18[0] = v3;

  BackingValue.init(foundation:)(v18, v16);
  v4 = v16[0];
  v5 = v16[1];
  *(v0 + 168) = v16[0];
  *(v0 + 176) = v5;
  v6 = v17;
  *(v0 + 33) = v17;
  v7 = [objc_allocWithZone(SKProduct) init];
  *(v0 + 184) = v7;
  OUTLINED_FUNCTION_10_13(&unk_1F29B07B0);
  v8 = sub_1B256D98C();

  [v7 _setProductIdentifier_];

  OUTLINED_FUNCTION_10_13(&unk_1F29B07D8);
  if (v8 || (v9 = sub_1B256D98C(), , [v7 _setProductKind_], v9, OUTLINED_FUNCTION_10_13(&unk_1F29B0800), *(v0 + 192) = v9, *(v0 + 200) = v11, v9))
  {

    sub_1B24472E0(v4, v5, v6);
LABEL_6:

    OUTLINED_FUNCTION_7_2();

    return v13();
  }

  v15 = *(v0 + 128);
  *(v0 + 208) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1B24CE33C, v15, 0);
}

uint64_t sub_1B24CE33C()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 192);
  sub_1B24CDAE8(*(v0 + 208), *(v0 + 160));
  *(v0 + 216) = v1;
  if (v1)
  {
    sub_1B24472E0(*(v0 + 168), *(v0 + 176), *(v0 + 33));
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24CEB88()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v5;
  *(v3 + 296) = v0;

  if (!v0)
  {
    sub_1B24472E0(*(v3 + 264), *(v3 + 272), *(v3 + 34));
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B24CEC94()
{
  if ([*(v0 + 288) type])
  {
    v1 = (v0 + 104);
    MEMORY[0x1B2749EB0]();
    if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B256DC7C();
    }

    sub_1B256DCAC();
    v2 = *(v0 + 240);
  }

  else
  {
    v2 = *(v0 + 288);

    v1 = (v0 + 256);
  }

  v3 = *v1;
  v4 = *(v0 + 248) + 1;
  if (v4 == *(v0 + 232))
  {

    v5 = *(v0 + 184);
    [v5 _setIntroductoryPrice_];
    sub_1B246063C(0, &qword_1EB7CD508);
    v6 = sub_1B256DC4C();

    [v5 _setDiscounts_];

    v7 = OUTLINED_FUNCTION_12_16();
    v8(v7);

    v9 = OUTLINED_FUNCTION_5_20();

    return v10(v9);
  }

  else
  {
    *(v0 + 248) = v4;
    *(v0 + 256) = v3;
    *(v0 + 240) = v2;
    v12 = OUTLINED_FUNCTION_0_33(*(v0 + 224) + 24 * v4);
    OUTLINED_FUNCTION_25_9(v12, v13, v14);
    v15 = swift_task_alloc();
    *(v0 + 280) = v15;
    *v15 = v0;
    v16 = OUTLINED_FUNCTION_1_29();

    return sub_1B24CF5C8(v16, v17);
  }
}

uint64_t sub_1B24CEE80()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24CEEE4()
{
  v40 = v0;
  sub_1B24472E0(*(v0 + 264), *(v0 + 272), *(v0 + 34));
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = *(v0 + 296);
  v2 = *(v0 + 184);
  v3 = *(v0 + 136);
  v4 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v4, qword_1ED69A108);
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  sub_1B256E4FC();
  v5 = *(v0 + 80);
  *(v0 + 56) = *(v0 + 72);
  *(v0 + 64) = v5;
  MEMORY[0x1B2749D50](0xD00000000000001DLL, 0x80000001B2590280);
  v6 = [v2 productIdentifier];
  v7 = sub_1B256D9BC();
  v9 = v8;

  MEMORY[0x1B2749D50](v7, v9);

  MEMORY[0x1B2749D50](8250, 0xE200000000000000);
  *(v0 + 112) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  sub_1B256E78C();
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = (v3 + *(type metadata accessor for ProductRequest() + 36));
  v14 = *v12;
  v13 = v12[1];
  v15 = sub_1B256E0AC();

  v16 = sub_1B256D5CC();

  v17 = os_log_type_enabled(v16, v15);
  v18 = *(v0 + 296);
  if (v17)
  {
    v38 = v11;
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v19 = 136446466;
    *(v0 + 88) = 91;
    *(v0 + 96) = 0xE100000000000000;
    MEMORY[0x1B2749D50](v14, v13);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v20 = sub_1B2519814(*(v0 + 88), *(v0 + 96), &v39);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2082;
    v21 = sub_1B2519814(v38, v10, &v39);

    *(v19 + 14) = v21;
    _os_log_impl(&dword_1B23EF000, v16, v15, "%{public}s%{public}s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  v22 = *(v0 + 240);
  v23 = *(v0 + 248) + 1;
  if (v23 == *(v0 + 232))
  {

    v24 = *(v0 + 184);
    [v24 _setIntroductoryPrice_];
    sub_1B246063C(0, &qword_1EB7CD508);
    v25 = sub_1B256DC4C();

    [v24 _setDiscounts_];

    v26 = OUTLINED_FUNCTION_12_16();
    v27(v26);

    OUTLINED_FUNCTION_5_20();
    OUTLINED_FUNCTION_114();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 240) = v22;
  *(v0 + 248) = v23;
  v30 = OUTLINED_FUNCTION_0_33(*(v0 + 224) + 24 * v23);
  *(v0 + 16) = v30;
  *(v0 + 24) = v31;
  *(v0 + 32) = v32;
  sub_1B24472B8(v30, v31, v32);
  v33 = swift_task_alloc();
  *(v0 + 280) = v33;
  *v33 = v0;
  v33[1] = sub_1B24CEB88;
  OUTLINED_FUNCTION_114();

  return sub_1B24CF5C8(v34, v35);
}

uint64_t sub_1B24CF314(uint64_t a1)
{
  result = MEMORY[0x1B274A250](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v6 = result;
  v4 = *(a1 + 16);
  for (i = a1 + 40; ; i += 16)
  {
    if (v4 == v3)
    {

      return v6;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;

    sub_1B255FEC8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B24CF3D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B24D0B8C();
  result = MEMORY[0x1B274A250](v2, &type metadata for StoreProductManager.Identifier, v3);
  v5 = 0;
  v12 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 24)
  {
    if (v6 == v5)
    {

      return v12;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v8 = *i;
    v10 = *(i - 2);
    v9 = *(i - 1);
    sub_1B24D0BE0();
    sub_1B2560258(&v11, v10, v9, v8);
    result = sub_1B24D0BE8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B24CF4AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1B24D0B38();
  v5 = MEMORY[0x1B274A250](v1, &type metadata for StoreProductManager.SubscriptionGroupID, v2);
  while (1)
  {
    sub_1B2543070();
    if (!v3)
    {
      break;
    }

    sub_1B25604FC();
  }

  return v5;
}

id sub_1B24CF554()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B256D98C();

  v2 = [v0 initWithISO8601String_];

  return v2;
}

uint64_t sub_1B24CF5C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 60) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1B24CF5F8, 0, 0);
}

uint64_t sub_1B24CFAF4()
{
  OUTLINED_FUNCTION_21_5();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B24CFB9C;

  return sub_1B24CD894(v2, v3);
}

uint64_t sub_1B24CFB9C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_10();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B24CFC80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B24CFCF0(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B24CFD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B24CFDA8(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for ProductRequest() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B24CFB9C;

  return sub_1B24CDDE4(a1, a2, v2 + v7, v8);
}

uint64_t sub_1B24CFEC4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v43[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v43[0] = a1;
    v3 = *(a1 + 16);
    v41 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v40 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v41 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      sub_1B256ED3C();

      sub_1B256DA7C();
      v9 = sub_1B256ED7C();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v40;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (sub_1B256EB5C() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v43[1] = v5;

      v18 = *(v2 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      if ((v18 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v34 = swift_slowAlloc();
          v35 = sub_1B24D0478(v34, v19, (v2 + 56), v19, v2, v11, v43);

          MEMORY[0x1B274BFF0](v34, -1, -1);

          return v35;
        }
      }

      v36[0] = v19;
      v36[1] = v36;
      MEMORY[0x1EEE9AC00](v17);
      v21 = v36 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v21, (v2 + 56), v20);
      v22 = *&v21[8 * v12] & ~v13;
      v38 = v21;
      *&v21[8 * v12] = v22;
      v23 = *(v2 + 16) - 1;
      v11 = v42;
      v40 = *(v42 + 16);
      v19 = v16;
      while (1)
      {
        v37 = v23;
        v39 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v40)
          {
            v2 = sub_1B24D0500(v38, v36[0], v37, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v24 = (v41 + 16 * v19);
          v13 = *v24;
          v12 = v24[1];
          ++v19;
          sub_1B256ED3C();

          sub_1B256DA7C();
          v25 = sub_1B256ED7C();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v26 = v25 & v20;
            v27 = (v25 & v20) >> 6;
            v28 = 1 << (v25 & v20);
            if ((v28 & *(v4 + 8 * v27)) == 0)
            {

              v11 = v42;
              v16 = v39;
              goto LABEL_16;
            }

            v29 = (*(v2 + 48) + 16 * v26);
            if (*v29 == v13 && v29[1] == v12)
            {
              break;
            }

            v31 = sub_1B256EB5C();
            v25 = v26 + 1;
          }

          while ((v31 & 1) == 0);

          v32 = v38[v27];
          v38[v27] = v32 & ~v28;
          v15 = (v32 & v28) == 0;
          v11 = v42;
          v16 = v39;
          if (v15)
          {
            continue;
          }

          break;
        }

        v23 = v37 - 1;
        if (__OFSUB__(v37, 1))
        {
          break;
        }

        v16 = v19;
        if (v37 == 1)
        {

          v2 = MEMORY[0x1E69E7CD0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}