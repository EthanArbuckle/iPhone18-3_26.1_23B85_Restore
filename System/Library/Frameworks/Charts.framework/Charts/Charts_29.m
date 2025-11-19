void sub_1AAED741C(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 48);
  v240 = *(a2 + 32);
  v241 = v6;
  v242 = *(a2 + 64);
  v7 = *(a2 + 16);
  v238 = *a2;
  v239 = v7;
  sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
  v186 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v179 = (&v166 - v9);
  sub_1AACE9A60();
  v177 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v191 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DateBins(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v192 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AAF8CBA4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v184 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD57C4();
  v183 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v182 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v181 = &v166 - v19;
  sub_1AACEC8E4();
  v180 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v188 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_1AAF8CA64();
  v194 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v178 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v185 = &v166 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v166 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v166 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v190 = &v166 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v189 = &v166 - v34;
  sub_1AACAE190(0, &qword_1EB4246C0, type metadata accessor for ChartAccessibilityContent.Builder.Bins, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v166 - v36;
  v38 = type metadata accessor for ChartAccessibilityContent.Builder.Bins(0);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v166 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v166 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v193 = (&v166 - v49);
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_46;
    }

    v172 = v37;
    v173 = v48;
    v174 = v47;
    v175 = v46;
    v176 = a1;
    v50 = 280;
    v51 = 24;
  }

  else
  {
    v172 = v37;
    v173 = v48;
    v174 = v47;
    v175 = v46;
    v176 = a1;
    v50 = 176;
    v51 = 20;
  }

  v52 = type metadata accessor for AGChartRendererContent(0);
  v53 = *(v195 + *(v52 + v51) + 9);
  v54 = v195 + v50 + *(v52 + 28);
  *&v230[3] = *(v54 + 96);
  v55 = *(v54 + 80);
  v230[1] = *(v54 + 64);
  v230[2] = v55;
  v56 = *(v54 + 48);
  v229 = *(v54 + 32);
  v230[0] = v56;
  v57 = *(v54 + 16);
  v227 = *v54;
  v228 = v57;
  v58 = v227;
  if (!v227)
  {
    goto LABEL_46;
  }

  v59 = *&v230[0];
  if (v53 > 1)
  {
    if (v53 == 2)
    {
      v221[1] = v228;
      v221[2] = v229;
      v223 = *(v230 + 8);
      v224 = *(&v230[1] + 8);
      v225 = *(&v230[2] + 8);
      v218 = 0;
      v221[0] = v227;
      v222 = *&v230[0];
      v226 = 0;
      v219[0] = v227;
      v219[1] = v228;
      v220 = *&v230[3];
      v219[4] = v230[1];
      v219[5] = v230[2];
      v219[2] = v229;
      v219[3] = v230[0];
      sub_1AAEDA330(v219, v231);
      v65 = sub_1AAE08400(a2, 0.0);
      v67 = v66;
      v69 = v68;
      sub_1AACFDFAC(&v227, sub_1AACFAA34);
      if ((v69 & 1) == 0)
      {
        *&v208[7] = v238;
        *&v208[23] = v239;
        *&v208[39] = v240;
        *&v208[55] = v241;
        v208[71] = v242;
        LOBYTE(v209[0]) = v176;
        *(&v209[1] + 1) = *&v208[16];
        *(&v209[2] + 1) = *&v208[32];
        *(&v209[3] + 1) = *&v208[48];
        *(&v209[4] + 1) = *&v208[64];
        *(v209 + 1) = *v208;
        BYTE9(v209[4]) = 3;
        sub_1AAEDA174(v209);
        v214 = v209[6];
        v215 = v209[7];
        v216 = v209[8];
        v217 = v210;
        v211[3] = v209[2];
        v211[4] = v209[3];
        v212 = v209[4];
        v213 = v209[5];
        v211[1] = v209[0];
        v211[2] = v209[1];
        *&v211[0] = v65;
        *(&v211[0] + 1) = v67;
        nullsub_1(v211, v70);
        sub_1AAE63EFC(a2, v231);
        v235 = v215;
        v236 = v216;
        v237 = v217;
        v231[4] = v211[4];
        v232 = v212;
        v233 = v213;
        v234 = v214;
        v231[0] = v211[0];
        v231[1] = v211[1];
        v72 = v211[2];
        v71 = v211[3];
LABEL_54:
        v231[2] = v72;
        v231[3] = v71;
        goto LABEL_55;
      }
    }

LABEL_46:
    sub_1AAE49270(v231);
LABEL_55:
    v161 = v236;
    *(a3 + 128) = v235;
    *(a3 + 144) = v161;
    *(a3 + 160) = v237;
    v162 = v232;
    *(a3 + 64) = v231[4];
    *(a3 + 80) = v162;
    v163 = v234;
    *(a3 + 96) = v233;
    *(a3 + 112) = v163;
    v164 = v231[1];
    *a3 = v231[0];
    *(a3 + 16) = v164;
    v165 = v231[3];
    *(a3 + 32) = v231[2];
    *(a3 + 48) = v165;
    return;
  }

  v171 = *(&v227 + 1);
  if (!v53)
  {
    v60 = *(v195 + *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 20));
    if (*(v60 + 16))
    {
      v61 = sub_1AACE1760(v176);
      if (v62)
      {
        sub_1AAEDA3C0(*(v60 + 56) + *(v173 + 72) * v61, v44, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
        v63 = v44;
        v64 = v193;
        sub_1AACD5964(v63, v193, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
        v231[4] = v230[1];
        v232 = v230[2];
        *&v233 = *&v230[3];
        v231[0] = v227;
        v231[1] = v228;
        v231[2] = v229;
        v231[3] = v230[0];
        sub_1AAEDA3C0(&v227, v211, sub_1AACFAA34);
        sub_1AAEDA330(v231, v211);
        goto LABEL_35;
      }
    }

    v77 = *(v59 + 16);
    if (!v77)
    {
      goto LABEL_46;
    }

    v78 = *(v59 + 32);
    v79 = v59 + 32 + 8 * v77;
    v80 = *(v79 - 8);
    if (v80 >= v78)
    {
      v81 = *(v59 + 32);
    }

    else
    {
      v81 = *(v79 - 8);
    }

    if (v78 > v80)
    {
      v82 = *(v59 + 32);
    }

    else
    {
      v82 = *(v79 - 8);
    }

    if (v81 <= v82)
    {
      sub_1AAEDA3C0(&v227, v231, sub_1AACFAA34);
      sub_1AAEDA3C0(&v227, v231, sub_1AACFAA34);
      v83 = sub_1AADEAF9C(11, 1, 1, v81, v82, 0.0);
      sub_1AAEC512C(v231, v83, v81, v82);
      v84 = v231[1];
      v64 = v193;
      *v193 = v231[0];
      v64[1] = v84;
      v64[2] = v231[2];
      *(v64 + 41) = *(&v231[2] + 9);
      v85 = v175;
      swift_storeEnumTagMultiPayload();
      v86 = v172;
      sub_1AAEDA3C0(v64, v172, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
      (*(v173 + 56))(v86, 0, 1, v85);
      sub_1AADAE834(v86, v176);
      goto LABEL_35;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v73 = *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 20);
  v74 = *(v195 + v73);
  if (*(v74 + 16))
  {
    v75 = sub_1AACE1760(v176);
    if (v76)
    {
      sub_1AAEDA3C0(*(v74 + 56) + *(v173 + 72) * v75, v41, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
      v64 = v193;
      sub_1AACD5964(v41, v193, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
      v231[4] = v230[1];
      v232 = v230[2];
      *&v233 = *&v230[3];
      v231[0] = v227;
      v231[1] = v228;
      v231[2] = v229;
      v231[3] = v230[0];
      sub_1AAEDA3C0(&v227, v211, sub_1AACFAA34);
      sub_1AAEDA330(v231, v211);
      goto LABEL_35;
    }
  }

  if (!*(v59 + 16))
  {
    goto LABEL_46;
  }

  v168 = v73;
  v169 = v58;
  sub_1AAEDA3C0(&v227, v231, sub_1AACFAA34);
  sub_1AAEDA3C0(&v227, v231, sub_1AACFAA34);
  v87 = v189;
  sub_1AAF8C844();
  v88 = v190;
  sub_1AAF8C844();
  v170 = sub_1AACECBA4(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
  v89 = v187;
  v90 = sub_1AAF8F564();
  v91 = v194[2];
  if (v90)
  {
    v92 = v88;
  }

  else
  {
    v92 = v87;
  }

  v91(v30, v92, v89);
  if (sub_1AAF8F574())
  {
    v93 = v88;
  }

  else
  {
    v93 = v87;
  }

  v91(v27, v93, v89);
  if ((sub_1AAF8F584() & 1) == 0)
  {
    goto LABEL_57;
  }

  v94 = v194[4];
  v95 = v181;
  v94(v181, v30, v89);
  v96 = v183;
  v94((v95 + *(v183 + 48)), v27, v89);
  v97 = v94;
  v170 = v94;
  v98 = v182;
  sub_1AAEDA3C0(v95, v182, sub_1AACD57C4);
  v99 = *(v96 + 48);
  v97(v188, v98, v89);
  v167 = v194[1];
  v167(v98 + v99, v89);
  sub_1AACD5964(v95, v98, sub_1AACD57C4);
  v100 = v188;
  v101 = v89;
  v170(&v188[*(v180 + 36)], v98 + *(v96 + 48), v89);
  v102 = v167;
  v167(v98, v89);
  v103 = v184;
  sub_1AAF8CB34();
  v104 = v193;
  DateBins.init(range:desiredCount:calendar:)(v100, 10, v103, v193);
  v105 = v175;
  swift_storeEnumTagMultiPayload();
  v106 = v172;
  sub_1AAEDA3C0(v104, v172, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
  (*(v173 + 56))(v106, 0, 1, v105);
  sub_1AADAE834(v106, v176);
  v102(v190, v101);
  v107 = v101;
  v64 = v104;
  v102(v189, v107);
  v58 = v169;
LABEL_35:
  if (*(a2 + 64) < 0)
  {
    v108 = *(a2 + 56);
    v109 = (*(a2 + 48) + *(a2 + 40)) * 0.5;
  }

  else
  {
    v108 = *(a2 + 64);
    v109 = *(a2 + 40);
  }

  v110 = v192;
  v111 = v194;
  v112 = v174;
  sub_1AAEDA3C0(v64, v174, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1AACD5964(v112, v110, type metadata accessor for DateBins);
    if (v108 == 1)
    {
      v113 = v185;
      sub_1AAF8C844();

      v114 = DateBins.index(for:)(v113);
      DateBins.subscript.getter(v114, v191);
      sub_1AAF8C854();
      *&v211[0] = v115;
      v58(v231, v211);
      v116 = *&v231[0];
      v195 = *(v177 + 36);
      sub_1AAF8C854();
      *&v211[0] = v117;
      v58(v231, v211);
      v118 = *&v231[0];
      sub_1AAF8E214();
      v119 = sub_1AAF8EA44();
      v121 = v120;
      v123 = v122;
      v125 = v124;
      v126 = v111;
      v127 = v111[2];
      v189 = (v111 + 2);
      v190 = v127;
      v128 = v178;
      v129 = v187;
      (v127)(v178, v191, v187);
      v130 = v179;
      *v179 = v119;
      *(v130 + 8) = v121;
      *(v130 + 16) = v123 & 1;
      *(v130 + 24) = v125;
      v131 = *(v186 + 36);
      v188 = v126[4];
      v132 = v129;
      (v188)(v130 + v131, v128, v129);
      sub_1AACD6DF8(0, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage);
      v184 = v133;
      swift_storeEnumTagMultiPayload();
      sub_1AAE799EC(v130, v209);
      sub_1AAF8E214();
      v134 = sub_1AAF8EA44();
      v136 = v135;
      LOBYTE(v125) = v137;
      v139 = v138;
      (v190)(v128, v191 + v195, v132);
      *v130 = v134;
      *(v130 + 8) = v136;
      *(v130 + 16) = v125 & 1;
      *(v130 + 24) = v139;
      (v188)(v130 + *(v186 + 36), v128, v132);
      swift_storeEnumTagMultiPayload();
      sub_1AAE799EC(v130, v196);
      sub_1AACFDFAC(&v227, sub_1AACFAA34);
      sub_1AACFDFAC(&v227, sub_1AACFAA34);
      sub_1AACFDFAC(v191, sub_1AACE9A60);
      (v194[1])(v185, v132);
      sub_1AACFDFAC(v192, type metadata accessor for DateBins);
      sub_1AACFDFAC(v193, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
      *(v211 + 7) = v209[0];
      *(&v211[1] + 7) = v209[1];
      *(&v211[2] + 7) = v209[2];
      *(&v211[3] + 7) = v209[3];
      *(&v231[1] + 1) = v211[1];
      *(&v231[2] + 1) = v211[2];
      *(&v231[3] + 1) = v211[3];
      *(v231 + 1) = v211[0];
      v233 = v196[1];
      v234 = v196[2];
      *(&v211[4] + 7) = *&v209[4];
      LOBYTE(v231[0]) = v176;
      v235 = v196[3];
      *&v236 = v197;
      v231[4] = *(&v211[3] + 15);
      v232 = v196[0];
      sub_1AAE0C1C0(v231);
      v204 = v233;
      v205 = v234;
      v206 = v235;
      v207 = v236;
      v200 = v231[2];
      v201 = v231[3];
      v202 = v231[4];
      v203 = v232;
      v198 = v231[0];
      v199 = v231[1];
LABEL_53:
      *&v211[0] = v116;
      *(&v211[0] + 1) = v118;
      v214 = v204;
      v215 = v205;
      v216 = v206;
      v217 = v207;
      v211[3] = v200;
      v211[4] = v201;
      v212 = v202;
      v213 = v203;
      v211[1] = v198;
      v211[2] = v199;
      nullsub_1(v211, v140);
      v235 = v215;
      v236 = v216;
      v237 = v217;
      v231[4] = v211[4];
      v232 = v212;
      v233 = v213;
      v234 = v214;
      v231[0] = v211[0];
      v231[1] = v211[1];
      v72 = v211[2];
      v71 = v211[3];
      goto LABEL_54;
    }

    sub_1AACFDFAC(&v227, sub_1AACFAA34);
    sub_1AACFDFAC(&v227, sub_1AACFAA34);
    sub_1AACFDFAC(v110, type metadata accessor for DateBins);
    v143 = type metadata accessor for ChartAccessibilityContent.Builder.Bins;
    v142 = v64;
    goto LABEL_45;
  }

  v141 = v112[1];
  v209[0] = *v112;
  v209[1] = v141;
  v209[2] = v112[2];
  *(&v209[2] + 9) = *(v112 + 41);
  if (v108)
  {
    sub_1AACFDFAC(v64, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
    sub_1AACFDFAC(&v227, sub_1AACFAA34);
    sub_1AACFDFAC(v209, sub_1AAD172C4);

    v142 = &v227;
    v143 = sub_1AACFAA34;
LABEL_45:
    sub_1AACFDFAC(v142, v143);
    goto LABEL_46;
  }

  *v211 = v109;
  if (!BYTE8(v209[3]))
  {
    v147 = *(&v209[2] + 1);
    sub_1AAEDA3C0(v209, v231, sub_1AAD172C4);
    v146 = v147(v211);

    goto LABEL_52;
  }

  if (BYTE8(v209[3]) != 1)
  {
    goto LABEL_58;
  }

  v144 = sub_1AADE8FD0(*(*&v209[0] + 16), *&v209[0], v109);
  if ((v145 & 1) == 0)
  {
    v146 = v144;
LABEL_52:

    sub_1AAEC53D4(v146, v231);
    v148 = v231[0];
    *&v221[0] = *&v231[0];
    v58(v231, v221);
    v116 = *&v231[0];
    *&v221[0] = *(&v148 + 1);
    v58(v231, v221);
    v118 = *&v231[0];
    sub_1AAF8E214();
    v195 = sub_1AAF8EA44();
    v150 = v149;
    v152 = v151;
    v208[0] = v153 & 1;
    sub_1AAF8E214();
    v154 = sub_1AAF8EA44();
    v156 = v155;
    v158 = v157;
    v160 = v159;
    sub_1AACFDFAC(v209, sub_1AAD172C4);
    sub_1AACFDFAC(&v227, sub_1AACFAA34);
    sub_1AACFDFAC(&v227, sub_1AACFAA34);
    sub_1AACFDFAC(v193, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
    LOBYTE(v219[0]) = v158 & 1;
    LOBYTE(v231[0]) = v176;
    *(v231 + 1) = v221[0];
    DWORD1(v231[0]) = *(v221 + 3);
    *(&v231[0] + 1) = v195;
    *&v231[1] = v150;
    BYTE8(v231[1]) = v208[0];
    *&v231[2] = v152;
    *(&v231[2] + 1) = v148;
    *&v231[3] = 0;
    BYTE8(v231[3]) = 0;
    *&v231[4] = MEMORY[0x1E69E63B0];
    *(&v231[4] + 1) = &protocol witness table for Double;
    *&v232 = v154;
    *(&v232 + 1) = v156;
    LOBYTE(v233) = v158 & 1;
    *(&v233 + 1) = v160;
    v234 = *(&v148 + 1);
    LOBYTE(v235) = 0;
    *(&v235 + 1) = MEMORY[0x1E69E63B0];
    *&v236 = &protocol witness table for Double;
    sub_1AAE0C1C0(v231);
    v204 = v233;
    v205 = v234;
    v206 = v235;
    v207 = v236;
    v200 = v231[2];
    v201 = v231[3];
    v202 = v231[4];
    v203 = v232;
    v198 = v231[0];
    v199 = v231[1];
    goto LABEL_53;
  }

LABEL_59:
  __break(1u);
}

unint64_t sub_1AAED89DC(unint64_t a1, int a2)
{
  v80 = a2;
  sub_1AACD57C4();
  v71 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v63 - v6;
  v72 = sub_1AAF8CA64();
  v69 = *(v72 - 8);
  v7 = MEMORY[0x1EEE9AC00](v72);
  v78 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v63 - v9;
  sub_1AACEC8E4();
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AAF8CBA4();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v79 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1AAF8CAA4();
  v73 = *(v14 - 8);
  v74 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1AAF8E134();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  Value = AGGraphGetValue();
  v23 = *(v18 + 16);
  v23(v20, Value, v17);
  LOBYTE(a1) = sub_1AAF8E0E4();
  v24 = *(v18 + 8);
  v24(v20, v17);
  if ((a1 & 1) == 0)
  {
    return sub_1AADF981C(MEMORY[0x1E69E7CC0]);
  }

  v65 = HIDWORD(v21);
  v25 = AGGraphGetValue();
  v23(v20, v25, v17);
  v64 = v16;
  sub_1AAF8E104();
  v24(v20, v17);
  v26 = AGGraphGetValue();
  v23(v20, v26, v17);
  v27 = v79;
  sub_1AAF8E114();
  v24(v20, v17);
  v87 = sub_1AADF981C(MEMORY[0x1E69E7CC0]);
  v28 = AGGraphGetValue();
  v29 = *(v28 + 27);
  v30 = v28[1];
  v88 = *v28;
  *v89 = v30;
  *(&v89[1] + 3) = v29;
  if (BYTE9(v88) <= 1u)
  {
    v32 = v77;
    v31 = v78;
    if (BYTE9(v88))
    {
      result = sub_1AADE88B8(v89[0]);
      if (v36)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_1AADF9958(&v88, &v83);
      sub_1AAF8C844();
      sub_1AAF8C844();
      sub_1AACECBA4(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
      v37 = v72;
      if ((sub_1AAF8F584() & 1) == 0)
      {
        __break(1u);
LABEL_30:
        swift_once();
LABEL_22:
        sub_1AACE0A98(&unk_1ED9C33B8, v82);
        sub_1AADF9BF4(&v83);
        goto LABEL_26;
      }

      v38 = v68;
      v39 = v69;
      v40 = *(v69 + 32);
      v40(v68, v32, v37);
      v41 = v71;
      v40((v38 + *(v71 + 48)), v31, v37);
      v42 = v70;
      sub_1AAEDA3C0(v38, v70, sub_1AACD57C4);
      v63 = *(v41 + 48);
      v43 = v67;
      v40(v67, v42, v37);
      v44 = *(v39 + 8);
      v44(v42 + v63, v37);
      sub_1AACD5964(v38, v42, sub_1AACD57C4);
      v40((v43 + *(v66 + 36)), (v42 + *(v41 + 48)), v37);
      v45 = v42;
      v32 = v77;
      v44(v45, v37);
      v23 = v64;
      v27 = v79;
      sub_1AAF0B620(v43, v64, v79, v81);
      sub_1AADF9BF4(&v88);
      v46 = v43;
      v31 = v78;
      sub_1AACFDFAC(v46, sub_1AACEC8E4);
    }

    else
    {
      result = sub_1AACEC978(v89[0]);
      v23 = v64;
      if (v35)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      sub_1AAF0B254(v81, *&result, v34);
    }

    goto LABEL_14;
  }

  v32 = v77;
  v31 = v78;
  if (BYTE9(v88) == 2)
  {
    sub_1AADF9958(&v88, &v83);
    v23 = v64;
    if (qword_1ED9B0278 != -1)
    {
      swift_once();
    }

    sub_1AACE0A98(&unk_1ED9C33B8, v81);
    sub_1AADF9BF4(&v88);
LABEL_14:
    v85 = *v81;
    v86[0] = *&v81[16];
    *(v86 + 9) = *&v81[25];
    v47 = *(AGGraphGetValue() + 8);
    sub_1AACE0A98(&v85, &v83);
    sub_1AADAEAB0(&v83, v47);
    sub_1AAD57C94(&v85);
    goto LABEL_16;
  }

  memset(v81, 0, 40);
  v81[40] = -1;
  sub_1AAEDA0A4(v81, qword_1ED9B4010, &type metadata for AnyFormatStyle, MEMORY[0x1E69E6720]);
  v23 = v64;
LABEL_16:
  v48 = AGGraphGetValue();
  v49 = *(v48 + 27);
  v50 = v48[1];
  v83 = *v48;
  *v84 = v50;
  *(&v84[1] + 3) = v49;
  if (BYTE9(v83) > 1u)
  {
    if (BYTE9(v83) != 2)
    {
      memset(v82, 0, 40);
      v82[40] = -1;
      (*(v75 + 8))(v27, v76);
      (*(v73 + 8))(v23, v74);
      sub_1AAEDA0A4(v82, qword_1ED9B4010, &type metadata for AnyFormatStyle, MEMORY[0x1E69E6720]);
      return v87;
    }

    sub_1AADF9958(&v83, v81);
    if (qword_1ED9B0278 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (!BYTE9(v83))
  {
    result = sub_1AACEC978(v84[0]);
    if ((v52 & 1) == 0)
    {
      sub_1AAF0B254(v82, *&result, v51);
LABEL_26:
      *v81 = *v82;
      *&v81[16] = *&v82[16];
      *&v81[25] = *&v82[25];
      v62 = *(AGGraphGetValue() + 8);
      sub_1AACE0A98(v81, v82);
      sub_1AADAEAB0(v82, v62);
      sub_1AAD57C94(v81);
      (*(v75 + 8))(v27, v76);
      (*(v73 + 8))(v23, v74);
      return v87;
    }

    goto LABEL_34;
  }

  result = sub_1AADE88B8(v84[0]);
  if ((v53 & 1) == 0)
  {
    sub_1AADF9958(&v83, v81);
    sub_1AAF8C844();
    sub_1AAF8C844();
    sub_1AACECBA4(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
    v54 = v72;
    result = sub_1AAF8F584();
    if (result)
    {
      v56 = v68;
      v55 = v69;
      v57 = *(v69 + 32);
      v57(v68, v32, v54);
      v58 = v71;
      v57((v56 + *(v71 + 48)), v31, v54);
      v59 = v70;
      sub_1AAEDA3C0(v56, v70, sub_1AACD57C4);
      v78 = *(v58 + 48);
      v60 = v67;
      v57(v67, v59, v54);
      v61 = *(v55 + 8);
      v61(&v78[v59], v54);
      sub_1AACD5964(v56, v59, sub_1AACD57C4);
      v57((v60 + *(v66 + 36)), (v59 + *(v58 + 48)), v54);
      v61(v59, v54);
      v23 = v64;
      v27 = v79;
      sub_1AAF0B620(v60, v64, v79, v82);
      sub_1AADF9BF4(&v83);
      sub_1AACFDFAC(v60, sub_1AACEC8E4);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_1AAED94F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AAED89DC(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

void sub_1AAED95A0()
{
  type metadata accessor for AGChartRendererContent(319);
  if (v0 <= 0x3F)
  {
    sub_1AADF7BD0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AAED963C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 593))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAED9684(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 584) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 592) = 0;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 593) = 1;
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

    *(result + 593) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAED977C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 289))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAED97C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 289) = 1;
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

    *(result + 289) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAED9888()
{
  result = qword_1EB426B28;
  if (!qword_1EB426B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426B28);
  }

  return result;
}

void sub_1AAED98DC()
{
  if (!qword_1ED9ADB78)
  {
    sub_1AAED9BCC(255, &qword_1ED9B2C80, MEMORY[0x1E697F960]);
    v0 = sub_1AAF8D954();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9ADB78);
    }
  }
}

unint64_t sub_1AAED9950()
{
  result = qword_1ED9AF958;
  if (!qword_1ED9AF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF958);
  }

  return result;
}

unint64_t sub_1AAED99A4()
{
  result = qword_1ED9AEF88;
  if (!qword_1ED9AEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AEF88);
  }

  return result;
}

unint64_t sub_1AAED99F8()
{
  result = qword_1ED9AFAB8;
  if (!qword_1ED9AFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AFAB8);
  }

  return result;
}

unint64_t sub_1AAED9A4C()
{
  result = qword_1ED9B2C88;
  if (!qword_1ED9B2C88)
  {
    sub_1AAED9BCC(255, &qword_1ED9B2C80, MEMORY[0x1E697F960]);
    sub_1AAD596F4();
    type metadata accessor for ChartAXAudiograph();
    sub_1AAD597A8();
    sub_1AACECBA4(&qword_1ED9B2B38, sub_1AAD597A8);
    swift_getOpaqueTypeConformance2();
    sub_1AACECBA4(qword_1ED9B6110, type metadata accessor for ChartAXAudiograph);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2C88);
  }

  return result;
}

void sub_1AAED9BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AAD595C0();
    v7 = v6;
    sub_1AAD597A8();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1AAED9C3C()
{
  if (!qword_1ED9B2EC8)
  {
    sub_1AAD5980C();
    v0 = sub_1AAF8DBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2EC8);
    }
  }
}

uint64_t sub_1AAED9CA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AAD415A4(0, v2, 0);
    v3 = v16;
    v4 = (a1 + 32);
    v5 = *(v16 + 16);
    do
    {
      v6 = *v4;
      v17 = v3;
      v7 = *(v3 + 24);
      v8 = v5 + 1;
      if (v5 >= v7 >> 1)
      {
        sub_1AAD415A4((v7 > 1), v5 + 1, 1);
        v3 = v17;
      }

      v4 += 152;
      *(v3 + 16) = v8;
      *(v3 + 4 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v8)
    {
      v9 = 0;
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 32;
  do
  {
    v11 = v9;
    if (v9 == -1 || (v9 = *(v3 + v10), !v9))
    {
      v9 = v11;
    }

    else if (v11 && v9 != -1)
    {
      v12 = (v9 | (v11 << 32)) + ~(v9 << 32);
      v13 = (v12 ^ (v12 >> 22)) + ~((v12 ^ (v12 >> 22)) << 13);
      v14 = (9 * (v13 ^ (v13 >> 8))) ^ ((9 * (v13 ^ (v13 >> 8))) >> 15);
      v9 = ((v14 + ~(v14 << 27)) >> 31) ^ (v14 + ~(v14 << 27));
    }

    v10 += 4;
    --v8;
  }

  while (v8);
LABEL_17:

  return v9;
}

uint64_t sub_1AAED9F0C(uint64_t result)
{
  v1 = *(result + 592);
  *(result + 504) &= 0x101uLL;
  *(result + 592) = v1 & 1 | 0x40;
  return result;
}

void sub_1AAED9F30()
{
  if (!qword_1EB426B30)
  {
    type metadata accessor for CollectedChartContent(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB426B30);
    }
  }
}

void sub_1AAED9FD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AAEDA024(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAEDB63C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAEDA0A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AAEDB63C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAEDA100(uint64_t result)
{
  v1 = *(result + 592) & 1;
  *(result + 504) &= 0x101uLL;
  *(result + 592) = v1;
  return result;
}

void *sub_1AAEDA174(void *result)
{
  v1 = result[9] & 0xFFFFFFFFFFFFFFBLL;
  v2 = result[18] & 0xFFFFFFFFFFFFFFBLL | 0x4000000000000000;
  *result &= 0xFuLL;
  result[9] = v1;
  result[18] = v2;
  return result;
}

uint64_t sub_1AAEDA330(uint64_t a1, uint64_t a2)
{
  sub_1AAED9FD0(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAEDA3C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 sub_1AAEDA428(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1AAEDA464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 4;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAEDA4B4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 168) = 1;
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
      *(a1 + 16) = 16 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      return result;
    }

    *(a1 + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAEDA55C(uint64_t a1)
{
  type metadata accessor for CollectedChartContent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_8;
      }

LABEL_7:

      goto LABEL_8;
    }

    sub_1AADF9F2C(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152));
    sub_1AADF9F2C(*(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224), *(a1 + 232), *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 272), *(a1 + 280), *(a1 + 288), *(a1 + 296));
    if (*(a1 + 320) != 1)
    {
    }

    v10 = HIBYTE(*(a1 + 400));
    if (v10 <= 0xFE)
    {
      switch(v10)
      {
        case 2u:
          sub_1AAD04750(*(a1 + 344), *(a1 + 352), *(a1 + 360));

          sub_1AADB3124(*(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
          break;
        case 1u:
          sub_1AACB634C(a1 + 336);
          break;
        case 0u:

          break;
      }
    }

    v11 = HIBYTE(*(a1 + 488));
    if (v11 <= 0xFE)
    {
      switch(v11)
      {
        case 2u:
          sub_1AAD04750(*(a1 + 432), *(a1 + 440), *(a1 + 448));

          sub_1AADB3124(*(a1 + 464), *(a1 + 472), *(a1 + 480), *(a1 + 488));
          break;
        case 1u:

          break;
        case 0u:
          sub_1AACB634C(a1 + 424);
          break;
      }
    }

    v12 = *(a1 + 520);
    if (v12 >> 1 != 0xFFFFFFFF || (*(a1 + 560) & 0x7C) != 0)
    {
      sub_1AADFA10C(*(a1 + 496), *(a1 + 504), *(a1 + 512), v12, *(a1 + 528), *(a1 + 536), *(a1 + 544), *(a1 + 552), *(a1 + 560));
    }

    if ((~*(a1 + 632) & 0x7C) != 0)
    {
      sub_1AADFA1A8(*(a1 + 568), *(a1 + 576), *(a1 + 584), *(a1 + 592), *(a1 + 600), *(a1 + 608), *(a1 + 616), *(a1 + 624), *(a1 + 632));
    }

    v13 = type metadata accessor for CollectedChartContent.Primitive(0);
    v14 = *(v13 + 72);
    v15 = sub_1AAF8E244();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(a1 + v14, 1, v15))
    {
      (*(v16 + 8))(a1 + v14, v15);
    }

    v17 = a1 + *(v13 + 84);
    v18 = *(v17 + 24);
    if (v18)
    {
      if (v18 == 1)
      {
        goto LABEL_8;
      }

      sub_1AAD04750(*v17, *(v17 + 8), *(v17 + 16));
    }

    if (*(v17 + 56))
    {
      sub_1AAD04750(*(v17 + 32), *(v17 + 40), *(v17 + 48));
    }
  }

LABEL_8:
  v3 = type metadata accessor for AGChartRendererContent(0);

  v4 = a1 + *(v3 + 28);

  if (*(v4 + 176))
  {

    if (*(v4 + 208))
    {
    }

    v5 = *(v4 + 240);
    if (v5 != 255)
    {
      sub_1AACE40AC(*(v4 + 232), v5 & 1);
    }
  }

  if (*(v4 + 280))
  {

    if (*(v4 + 312))
    {
    }

    v6 = *(v4 + 344);
    if (v6 != 255)
    {
      sub_1AACE40AC(*(v4 + 336), v6 & 1);
    }
  }

  v7 = *(v4 + 400);
  if (v7 != 255)
  {
    sub_1AADF9B38(*(v4 + 384), *(v4 + 392), v7);
  }

  if (*(v4 + 408))
  {
  }

  v8 = *(v4 + 440);
  if (v8 != 255)
  {
    sub_1AACAA2EC(*(v4 + 424), *(v4 + 432), v8 & 1);
  }

  if (*(v4 + 472) != 1)
  {
    sub_1AACAA2EC(*(v4 + 448), *(v4 + 456), *(v4 + 464));
  }
}

void *sub_1AAEDA9F4(void *a1, void *a2, int *a3)
{
  v6 = type metadata accessor for CollectedChartContent(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    v7 = *(a2 + 8);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 8) = v7;
    *(a1 + 137) = *(a2 + 137);
    v8 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v8;
    v9 = *(a2 + 6);
    *(a1 + 5) = *(a2 + 5);
    *(a1 + 6) = v9;
    v10 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v10;
    v11 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v11;
    *(a1 + 281) = *(a2 + 281);
    v12 = *(a2 + 13);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 13) = v12;
    v13 = *(a2 + 15);
    *(a1 + 14) = *(a2 + 14);
    *(a1 + 15) = v13;
    v14 = *(a2 + 11);
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 11) = v14;
    *(a1 + 19) = *(a2 + 19);
    *(a1 + 313) = *(a2 + 313);
    v15 = *(a2 + 24);
    *(a1 + 23) = *(a2 + 23);
    *(a1 + 24) = v15;
    *(a1 + 200) = *(a2 + 200);
    v16 = *(a2 + 22);
    *(a1 + 21) = *(a2 + 21);
    *(a1 + 22) = v16;
    *(a1 + 402) = *(a2 + 402);
    v17 = a2[51];
    *(a1 + 208) = *(a2 + 208);
    a1[51] = v17;
    v18 = *(a2 + 59);
    *(a1 + 57) = *(a2 + 57);
    *(a1 + 59) = v18;
    *(a1 + 244) = *(a2 + 244);
    v19 = *(a2 + 55);
    *(a1 + 53) = *(a2 + 53);
    *(a1 + 55) = v19;
    *(a1 + 560) = *(a2 + 560);
    v20 = *(a2 + 34);
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 34) = v20;
    v21 = *(a2 + 32);
    *(a1 + 31) = *(a2 + 31);
    *(a1 + 32) = v21;
    *(a1 + 632) = *(a2 + 632);
    v22 = *(a2 + 77);
    *(a1 + 75) = *(a2 + 75);
    *(a1 + 77) = v22;
    v23 = *(a2 + 73);
    *(a1 + 71) = *(a2 + 71);
    *(a1 + 73) = v23;
    a1[80] = a2[80];
    *(a1 + 656) = *(a2 + 656);
    a1[81] = a2[81];
    v24 = *(a2 + 83);
    v25 = *(a2 + 85);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 83) = v24;
    *(a1 + 85) = v25;
    v26 = type metadata accessor for CollectedChartContent.Primitive(0);
    v27 = v26[18];
    v28 = sub_1AAF8E244();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(a2 + v27, 1, v28))
    {
      sub_1AACAE190(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
      memcpy(a1 + v27, a2 + v27, *(*(v30 - 8) + 64));
    }

    else
    {
      (*(v29 + 32))(a1 + v27, a2 + v27, v28);
      (*(v29 + 56))(a1 + v27, 0, 1, v28);
    }

    v31 = v26[19];
    v32 = a1 + v31;
    v33 = a2 + v31;
    *v32 = *v33;
    v32[8] = v33[8];
    *(a1 + v26[20]) = *(a2 + v26[20]);
    v34 = v26[21];
    v35 = a1 + v34;
    v36 = a2 + v34;
    v37 = *(v36 + 1);
    *v35 = *v36;
    *(v35 + 1) = v37;
    v35[80] = v36[80];
    v38 = *(v36 + 4);
    *(v35 + 3) = *(v36 + 3);
    *(v35 + 4) = v38;
    *(v35 + 2) = *(v36 + 2);
    swift_storeEnumTagMultiPayload();
  }

  v39 = type metadata accessor for AGChartRendererContent(0);
  v40 = v39[5];
  v41 = (a1 + v40);
  v42 = (a2 + v40);
  v43 = v42[1];
  *v41 = *v42;
  v41[1] = v43;
  *(v41 + 27) = *(v42 + 27);
  v44 = v39[6];
  v45 = (a1 + v44);
  v46 = (a2 + v44);
  v47 = v46[1];
  *v45 = *v46;
  v45[1] = v47;
  *(v45 + 27) = *(v46 + 27);
  memcpy(a1 + v39[7], a2 + v39[7], 0x1E8uLL);
  v48 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v48) = *(a2 + v48);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

void *sub_1AAEDAD8C(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_1AACFDFAC(a1, type metadata accessor for CollectedChartContent);
    v6 = type metadata accessor for CollectedChartContent(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v7 = *(a2 + 8);
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 8) = v7;
      *(a1 + 137) = *(a2 + 137);
      v8 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v8;
      v9 = *(a2 + 6);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 6) = v9;
      v10 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v10;
      v11 = *(a2 + 17);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 17) = v11;
      *(a1 + 281) = *(a2 + 281);
      v12 = *(a2 + 13);
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 13) = v12;
      v13 = *(a2 + 15);
      *(a1 + 14) = *(a2 + 14);
      *(a1 + 15) = v13;
      v14 = *(a2 + 11);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 11) = v14;
      *(a1 + 19) = *(a2 + 19);
      *(a1 + 313) = *(a2 + 313);
      v15 = *(a2 + 24);
      *(a1 + 23) = *(a2 + 23);
      *(a1 + 24) = v15;
      *(a1 + 200) = *(a2 + 200);
      v16 = *(a2 + 22);
      *(a1 + 21) = *(a2 + 21);
      *(a1 + 22) = v16;
      *(a1 + 402) = *(a2 + 402);
      v17 = a2[51];
      *(a1 + 208) = *(a2 + 208);
      a1[51] = v17;
      v18 = *(a2 + 59);
      *(a1 + 57) = *(a2 + 57);
      *(a1 + 59) = v18;
      *(a1 + 244) = *(a2 + 244);
      v19 = *(a2 + 55);
      *(a1 + 53) = *(a2 + 53);
      *(a1 + 55) = v19;
      *(a1 + 560) = *(a2 + 560);
      v20 = *(a2 + 34);
      *(a1 + 33) = *(a2 + 33);
      *(a1 + 34) = v20;
      v21 = *(a2 + 32);
      *(a1 + 31) = *(a2 + 31);
      *(a1 + 32) = v21;
      *(a1 + 632) = *(a2 + 632);
      v22 = *(a2 + 77);
      *(a1 + 75) = *(a2 + 75);
      *(a1 + 77) = v22;
      v23 = *(a2 + 73);
      *(a1 + 71) = *(a2 + 71);
      *(a1 + 73) = v23;
      a1[80] = a2[80];
      *(a1 + 656) = *(a2 + 656);
      a1[81] = a2[81];
      v24 = *(a2 + 83);
      v25 = *(a2 + 85);
      *(a1 + 696) = *(a2 + 696);
      *(a1 + 83) = v24;
      *(a1 + 85) = v25;
      v26 = type metadata accessor for CollectedChartContent.Primitive(0);
      v27 = v26[18];
      v28 = sub_1AAF8E244();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(a2 + v27, 1, v28))
      {
        sub_1AACAE190(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
        memcpy(a1 + v27, a2 + v27, *(*(v30 - 8) + 64));
      }

      else
      {
        (*(v29 + 32))(a1 + v27, a2 + v27, v28);
        (*(v29 + 56))(a1 + v27, 0, 1, v28);
      }

      v31 = v26[19];
      v32 = a1 + v31;
      v33 = a2 + v31;
      *v32 = *v33;
      v32[8] = v33[8];
      *(a1 + v26[20]) = *(a2 + v26[20]);
      v34 = v26[21];
      v35 = a1 + v34;
      v36 = a2 + v34;
      v37 = *(v36 + 1);
      *v35 = *v36;
      *(v35 + 1) = v37;
      v35[80] = v36[80];
      v38 = *(v36 + 4);
      *(v35 + 3) = *(v36 + 3);
      *(v35 + 4) = v38;
      *(v35 + 2) = *(v36 + 2);
      swift_storeEnumTagMultiPayload();
    }
  }

  v39 = type metadata accessor for AGChartRendererContent(0);
  v40 = v39[5];
  v41 = a1 + v40;
  v42 = a2 + v40;
  *(a1 + v40) = *(a2 + v40);

  *(v41 + 4) = *(v42 + 4);
  *(v41 + 2) = *(v42 + 2);

  *(v41 + 24) = *(v42 + 24);
  v41[40] = v42[40];
  v41[41] = v42[41];
  v41[42] = v42[42];
  v43 = v39[6];
  v44 = a1 + v43;
  v45 = a2 + v43;
  *(a1 + v43) = *(a2 + v43);

  *(v44 + 4) = *(v45 + 4);
  *(v44 + 2) = *(v45 + 2);

  *(v44 + 24) = *(v45 + 24);
  v44[40] = v45[40];
  v44[41] = v45[41];
  v44[42] = v45[42];
  v46 = v39[7];
  v47 = a1 + v46;
  v48 = a2 + v46;
  v49 = *(a2 + v46 + 16);
  *v47 = *(a2 + v46);
  *(v47 + 1) = v49;
  v50 = *(a2 + v46 + 48);
  *(v47 + 2) = *(a2 + v46 + 32);
  *(v47 + 3) = v50;
  *(v47 + 8) = *(a2 + v46 + 64);

  *(v47 + 9) = *(v48 + 9);

  v47[80] = v48[80];
  *(v47 + 88) = *(v48 + 88);
  *(v47 + 13) = *(v48 + 13);
  *(v47 + 14) = *(v48 + 14);

  *(v47 + 15) = *(v48 + 15);

  v47[128] = v48[128];
  *(v47 + 136) = *(v48 + 136);
  *(v47 + 19) = *(v48 + 19);
  *(v47 + 20) = *(v48 + 20);

  *(v47 + 21) = *(v48 + 21);

  v51 = *(v48 + 22);
  if (!*(v47 + 22))
  {
    goto LABEL_14;
  }

  if (!v51)
  {
    sub_1AAE45040((v47 + 176));
LABEL_14:
    v56 = *(v48 + 16);
    *(v47 + 15) = *(v48 + 15);
    *(v47 + 16) = v56;
    *(v47 + 34) = *(v48 + 34);
    v57 = *(v48 + 12);
    *(v47 + 11) = *(v48 + 11);
    *(v47 + 12) = v57;
    v58 = *(v48 + 14);
    *(v47 + 13) = *(v48 + 13);
    *(v47 + 14) = v58;
    goto LABEL_25;
  }

  v52 = *(v48 + 23);
  *(v47 + 22) = v51;
  *(v47 + 23) = v52;

  v53 = *(v48 + 26);
  v54 = *(v47 + 26);
  *(v47 + 24) = *(v48 + 24);
  v47[200] = v48[200];
  if (v54)
  {
    if (v53)
    {
      v55 = *(v48 + 27);
      *(v47 + 26) = v53;
      *(v47 + 27) = v55;

      goto LABEL_19;
    }
  }

  else if (v53)
  {
    v59 = *(v48 + 27);
    *(v47 + 26) = v53;
    *(v47 + 27) = v59;
    goto LABEL_19;
  }

  *(v47 + 13) = *(v48 + 13);
LABEL_19:
  *(v47 + 28) = *(v48 + 28);

  v60 = v47[240];
  if (v60 == 255)
  {
LABEL_23:
    *(v47 + 29) = *(v48 + 29);
    v47[240] = v48[240];
    goto LABEL_24;
  }

  v61 = v48[240];
  if (v61 == 255)
  {
    sub_1AAEDA0A4((v47 + 232), &qword_1EB426B40, MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScaleRange);
    goto LABEL_23;
  }

  v62 = *(v47 + 29);
  *(v47 + 29) = *(v48 + 29);
  v47[240] = v61 & 1;
  sub_1AACE40AC(v62, v60 & 1);
LABEL_24:
  *(v47 + 248) = *(v48 + 248);
  *(v47 + 264) = *(v48 + 264);
LABEL_25:
  if (!*(v47 + 35))
  {
LABEL_31:
    v67 = *(v48 + 360);
    *(v47 + 344) = *(v48 + 344);
    *(v47 + 360) = v67;
    *(v47 + 47) = *(v48 + 47);
    v68 = *(v48 + 296);
    *(v47 + 280) = *(v48 + 280);
    *(v47 + 296) = v68;
    v69 = *(v48 + 328);
    *(v47 + 312) = *(v48 + 312);
    *(v47 + 328) = v69;
    goto LABEL_42;
  }

  v63 = *(v48 + 35);
  if (!v63)
  {
    sub_1AAE45040((v47 + 280));
    goto LABEL_31;
  }

  v64 = *(v48 + 36);
  *(v47 + 35) = v63;
  *(v47 + 36) = v64;

  *(v47 + 37) = *(v48 + 37);
  v47[304] = v48[304];
  v65 = *(v48 + 39);
  if (*(v47 + 39))
  {
    if (v65)
    {
      v66 = *(v48 + 40);
      *(v47 + 39) = v65;
      *(v47 + 40) = v66;

      goto LABEL_36;
    }
  }

  else if (v65)
  {
    v70 = *(v48 + 40);
    *(v47 + 39) = v65;
    *(v47 + 40) = v70;
    goto LABEL_36;
  }

  *(v47 + 312) = *(v48 + 312);
LABEL_36:
  *(v47 + 41) = *(v48 + 41);

  v71 = v47[344];
  if (v71 == 255)
  {
LABEL_40:
    *(v47 + 42) = *(v48 + 42);
    v47[344] = v48[344];
    goto LABEL_41;
  }

  v72 = v48[344];
  if (v72 == 255)
  {
    sub_1AAEDA0A4((v47 + 336), &qword_1EB426B40, MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScaleRange);
    goto LABEL_40;
  }

  v73 = *(v47 + 42);
  *(v47 + 42) = *(v48 + 42);
  v47[344] = v72 & 1;
  sub_1AACE40AC(v73, v71 & 1);
LABEL_41:
  v74 = *(v48 + 23);
  *(v47 + 22) = *(v48 + 22);
  *(v47 + 23) = v74;
LABEL_42:
  v75 = v47[400];
  if (v75 != 255)
  {
    v76 = v48[400];
    if (v76 != 255)
    {
      v77 = *(v47 + 48);
      v78 = *(v47 + 49);
      *(v47 + 24) = *(v48 + 24);
      v47[400] = v76;
      sub_1AADF9B38(v77, v78, v75);
      goto LABEL_47;
    }

    sub_1AAEDB68C((v47 + 384));
  }

  *(v47 + 24) = *(v48 + 24);
  v47[400] = v48[400];
LABEL_47:
  if (*(v47 + 51))
  {
    v79 = *(v48 + 51);
    if (v79)
    {
      *(v47 + 51) = v79;

      *(v47 + 52) = *(v48 + 52);

      goto LABEL_52;
    }

    sub_1AAEDB6E0((v47 + 408));
  }

  *(v47 + 408) = *(v48 + 408);
LABEL_52:
  v80 = v47 + 424;
  v81 = v48 + 424;
  v82 = v47[440];
  if (v82 != 255)
  {
    v83 = v48[440];
    if (v83 != 255)
    {
      v84 = *(v47 + 53);
      v85 = *(v47 + 54);
      *v80 = *v81;
      v47[440] = v83 & 1;
      sub_1AACAA2EC(v84, v85, v82 & 1);
      goto LABEL_57;
    }

    sub_1AAEDB734((v47 + 424));
  }

  *v80 = *v81;
  v47[440] = v48[440];
LABEL_57:
  if (*(v47 + 59) != 1)
  {
    if (*(v48 + 59) != 1)
    {
      v87 = v48[464];
      v88 = *(v47 + 56);
      v89 = *(v47 + 57);
      v90 = v47[464];
      *(v47 + 28) = *(v48 + 28);
      v47[464] = v87;
      sub_1AACAA2EC(v88, v89, v90);
      *(v47 + 59) = *(v48 + 59);

      goto LABEL_62;
    }

    sub_1AAEDB788((v47 + 448));
  }

  v86 = *(v48 + 29);
  *(v47 + 28) = *(v48 + 28);
  *(v47 + 29) = v86;
LABEL_62:
  *(v47 + 60) = *(v48 + 60);

  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

void sub_1AAEDB63C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAEDB804()
{
  result = type metadata accessor for AGChartRendererContent(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChartAccessibilityContent.MakeContent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ChartAccessibilityContent.MakeContent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ChartAccessibilityContent.GroupItem.ResolvedGeometry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ChartAccessibilityContent.GroupItem.ResolvedGeometry(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1AAEDB968(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAEDB984(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1AAEDB9B8(uint64_t a1)
{
  v1 = *(a1 + 592);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AAEDB9E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 601))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 512) >> 2) & 0xFFFFFF80 | (*(a1 + 512) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1AAEDBA34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 600) = 0;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 601) = 1;
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
      *(result + 8) = 0u;
      result += 8;
      *(result + 464) = 0u;
      *(result + 480) = 0u;
      *(result + 432) = 0u;
      *(result + 448) = 0u;
      *(result + 400) = 0u;
      *(result + 416) = 0u;
      *(result + 368) = 0u;
      *(result + 384) = 0u;
      *(result + 336) = 0u;
      *(result + 352) = 0u;
      *(result + 304) = 0u;
      *(result + 320) = 0u;
      *(result + 272) = 0u;
      *(result + 288) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 0u;
      *(result + 208) = 0u;
      *(result + 224) = 0u;
      *(result + 176) = 0u;
      *(result + 192) = 0u;
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 496) = 0;
      *(result + 504) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(result + 512) = 0u;
      *(result + 528) = 0u;
      *(result + 544) = 0u;
      *(result + 560) = 0u;
      *(result + 576) = 0u;
      *(result + 592) = 0;
      return result;
    }

    *(result + 601) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAEDBB8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 593))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 504) >> 2) & 0xFFFFFF80 | (*(a1 + 504) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAEDBBE0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 584) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 592) = 0;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 593) = 1;
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
      result = 0.0;
      *(a1 + 464) = 0u;
      *(a1 + 480) = 0u;
      *(a1 + 432) = 0u;
      *(a1 + 448) = 0u;
      *(a1 + 400) = 0u;
      *(a1 + 416) = 0u;
      *(a1 + 368) = 0u;
      *(a1 + 384) = 0u;
      *(a1 + 336) = 0u;
      *(a1 + 352) = 0u;
      *(a1 + 304) = 0u;
      *(a1 + 320) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 496) = 0;
      *(a1 + 504) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 512) = 0u;
      *(a1 + 528) = 0u;
      *(a1 + 544) = 0u;
      *(a1 + 560) = 0u;
      *(a1 + 576) = 0u;
      *(a1 + 592) = 0;
      return result;
    }

    *(a1 + 593) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AAEDBD20(uint64_t a1, unsigned int a2)
{
  if (a2 < 2)
  {
    v3 = *(a1 + 592) & 1 | (a2 << 6);
    *(a1 + 504) &= 0x101uLL;
    *(a1 + 592) = v3;
  }

  else
  {
    *a1 = a2 - 2;
    bzero((a1 + 8), 0x248uLL);
    *(a1 + 592) = 0x80;
  }
}

uint64_t sub_1AAEDBD98()
{
  v0 = sub_1AAEDC7E8();
  v1 = (v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(Value + 8);
  type metadata accessor for AGChartRendererContent(0);

  v7 = AGGraphGetValue();
  sub_1AAEDD6DC(v7, &v3[v1[7]]);
  sub_1AADF7BD0();
  v8 = *AGGraphGetValue();
  *&v3[v1[9]] = MEMORY[0x1E69E7CC0];
  *v3 = v5;
  *(v3 + 1) = v6;
  *&v3[v1[8]] = v8;

  return sub_1AAEDBEB4();
}

uint64_t sub_1AAEDBEB4()
{
  v1 = v0;
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  v80 = v2;
  v81 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v79 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = 32;
    do
    {
      memcpy(v105, (v5 + v7), 0x259uLL);
      sub_1AAECFE48(v105, &v93);
      sub_1AAEDC6D4(v105);
      sub_1AAECFEA4(v105);
      v7 += 608;
      --v6;
    }

    while (v6);
  }

  v8 = sub_1AAEDC7E8();
  v9 = *(v8 + 28);
  v72 = v8;
  v73 = v9;
  v10 = *(v0 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_41;
  }

  v78 = v0;
  v11 = *(v10 + 176);
  v101 = *(v10 + 160);
  v102 = v11;
  v103 = *(v10 + 192);
  v104 = *(v10 + 208);
  v12 = *(v10 + 112);
  v97 = *(v10 + 96);
  v98 = v12;
  v13 = *(v10 + 144);
  v99 = *(v10 + 128);
  v100 = v13;
  v14 = *(v10 + 48);
  v93 = *(v10 + 32);
  v94 = v14;
  v15 = *(v10 + 80);
  v95 = *(v10 + 64);
  v96 = v15;
  LODWORD(v91) = v93;
  LODWORD(v90) = v98;
  if ((*(&v97 + 1) & 0x8000000000000000) != 0)
  {
    if ((SBYTE8(v97) & 0x80u) == 0)
    {
      v19 = BYTE8(v97);
    }

    else
    {
      v19 = v97;
    }

    v17 = *(&v94 + 1);
    v16 = v94;
    v18 = v95;
  }

  else
  {
    v16 = *(&v93 + 1);
    v17 = v94;
    v18 = BYTE8(v94);
    if ((SBYTE8(v96) & 0x80u) == 0)
    {
      v19 = BYTE8(v96);
    }

    else
    {
      v19 = BYTE8(v96) & 1;
    }
  }

  sub_1AACD7304(v16, v17, v18 & 1);

  sub_1AAEDC834(&v93, v92);
  v20 = v79;
  sub_1AAF8E124();
  sub_1AAF8E974();
  sub_1AAD04750(v16, v17, v18 & 1);

  v21 = *(v81 + 8);
  v81 += 8;
  v77 = v21;
  v21(v20, v80);
  v1 = v78;
  v22 = sub_1AAEDC890(v91, v19);

  if (!v22)
  {
LABEL_40:
    sub_1AAEDCEC4(&v93);
LABEL_41:
    v66 = 0;
LABEL_42:

    sub_1AAEDE8BC(v1 + *(v72 + 20), type metadata accessor for AGChartRendererContent);

    return v66;
  }

  v71[1] = v22;
  if ((*(&v102 + 1) & 0x8000000000000000) != 0)
  {
    if ((SBYTE8(v102) & 0x80u) == 0)
    {
      v26 = BYTE8(v102);
    }

    else
    {
      v26 = v102;
    }

    v24 = *(&v99 + 1);
    v23 = v99;
    v25 = v100;
  }

  else
  {
    v23 = *(&v98 + 1);
    v24 = v99;
    v25 = BYTE8(v99);
    if ((SBYTE8(v101) & 0x80u) == 0)
    {
      v26 = BYTE8(v101);
    }

    else
    {
      v26 = BYTE8(v101) & 1;
    }
  }

  sub_1AACD7304(v23, v24, v25 & 1);

  v27 = v79;
  sub_1AAF8E124();
  sub_1AAF8E974();
  sub_1AAD04750(v23, v24, v25 & 1);

  v77(v27, v80);
  v1 = v78;
  v28 = sub_1AAEDC890(v90, v26);

  if (!v28)
  {
LABEL_39:
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v30 = v29;
  v31 = sub_1AAF7C3F4(v10);
  v32 = *(v31 + 16);
  if (!v32)
  {
LABEL_43:

    sub_1AAD59D08(0, &qword_1ED9B4480);
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v68 = [objc_opt_self() bundleForClass_];
    v69 = sub_1AAF8F624();
    v70 = [v68 localizedStringForKey:v69 value:0 table:0];

    sub_1AAF8F634();
    v66 = sub_1AAF8FD84();
    sub_1AAEDCEC4(&v93);
    goto LABEL_42;
  }

  v71[0] = v30;
  v92[0] = MEMORY[0x1E69E7CC0];
  v33 = v31;
  sub_1AAF901E4();
  result = v33;
  v35 = 0;
  v36 = 0;
  v74 = result + 32;
  v75 = v32;
  v76 = result;
  while (v35 < *(result + 16))
  {
    v45 = (v74 + 56 * v35);
    v46 = *v45;
    v47 = v45[3];
    v48 = v45[4];
    v84 = *(v45 + 40);
    v49 = v45[6];
    MEMORY[0x1EEE9AC00](v46);
    v71[-2] = v1;
    v87 = v51;
    v88 = v50;
    v86 = v52;
    sub_1AACD7304(v50, v51, v52);
    v90 = v47;

    v85 = v49;

    v89 = v48;
    v53 = sub_1AADE6188(sub_1AAEDD394, &v71[-4], v48);
    v54 = *(v53 + 16);
    v91 = v36;
    if (v54)
    {
      v55 = 0;
      v56 = (v53 + 56);
      while (1)
      {
        v57 = *v56;
        if (*v56)
        {
          break;
        }

        ++v55;
        v56 += 4;
        if (v54 == v55)
        {
          goto LABEL_27;
        }
      }

      v59 = *(v56 - 2);
      v58 = *(v56 - 1);
      v60 = *(v56 - 3);
      v61 = v53;

      sub_1AADA61DC(v60, v59, v58, v57);
      sub_1AAD04750(v60, v59, v58 & 1);

      v37 = sub_1AAF1161C(32, 0xE100000000000000, 0, MEMORY[0x1E69E7CC0], v61, v55);
      v40 = v62;
      v38 = v63;
      v65 = v64;
      swift_bridgeObjectRelease_n();
      v83 = v38 & 1;
      sub_1AACD7304(v37, v40, v38 & 1);

      v82 = v40;
      v39 = v65;
    }

    else
    {
LABEL_27:

      v37 = 0;
      v38 = 0;
      v82 = 0;
      v83 = 0;
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    ++v35;
    v41 = v79;
    sub_1AAF8E124();
    v42 = sub_1AAF8E974();
    v44 = v43;
    sub_1AAD04750(v37, v40, v38 & 1);

    v77(v41, v80);
    sub_1AAF74684(v42, v44, v84, v85);

    sub_1AADA6198(v37, v82, v83, v39);
    sub_1AAD04750(v88, v87, v86);

    sub_1AAF901B4();
    sub_1AAF901F4();
    sub_1AAF90204();
    sub_1AAF901C4();
    result = v76;
    v1 = v78;
    v36 = v91;
    if (v35 == v75)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAEDC6A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAEDBD98();
  *a1 = result;
  return result;
}

_OWORD *sub_1AAEDC6D4(uint64_t a1)
{
  memcpy(__dst, (a1 + 8), 0x251uLL);
  result = sub_1AAECFFD8(__dst);
  if (!result)
  {
    v6 = sub_1AACBB6B8(__dst);
    memcpy(v8, v6, 0x251uLL);
    v7 = *(sub_1AAEDC7E8() + 28);
    sub_1AAECFE48(a1, v9);
    sub_1AAF12708(v8, (v1 + v7));
    return sub_1AAECFEA4(a1);
  }

  if (result == 1)
  {
    result = sub_1AACBB6B8(__dst);
    v11[0] = *result;
    v4 = *(*(&v11[0] + 1) + 16);
    if (v4)
    {
      v5 = (*(&v11[0] + 1) + 32);
      sub_1AAECFE48(a1, v9);
      sub_1AAEDD680(v11, v9);
      do
      {
        memcpy(v9, v5, 0x259uLL);
        sub_1AAECFE48(v9, v8);
        sub_1AAEDC6D4(v9);
        sub_1AAECFEA4(v9);
        v5 += 608;
        --v4;
      }

      while (v4);
      sub_1AAECFEF8(v11);
      return sub_1AAECFEA4(a1);
    }
  }

  return result;
}

uint64_t sub_1AAEDC7E8()
{
  result = qword_1ED9AEF48;
  if (!qword_1ED9AEF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1AAEDC890(unsigned int a1, char a2)
{
  if (a1 == 1)
  {
    v53 = a1;
    v10 = v2 + *(sub_1AAEDC7E8() + 20);
    v11 = v10 + *(type metadata accessor for AGChartRendererContent(0) + 28);
    *&v63 = *(v11 + 376);
    v12 = *(v11 + 360);
    v61 = *(v11 + 344);
    v62 = v12;
    v13 = *(v11 + 328);
    v59 = *(v11 + 312);
    v60 = v13;
    v14 = *(v11 + 296);
    v57 = *(v11 + 280);
    v58 = v14;
    v9 = *(v11 + 160);
  }

  else
  {
    if (a1)
    {
      return 0;
    }

    v53 = a1;
    v4 = v2 + *(sub_1AAEDC7E8() + 20);
    v5 = v4 + *(type metadata accessor for AGChartRendererContent(0) + 28);
    v6 = *(v5 + 256);
    v61 = *(v5 + 240);
    v62 = v6;
    *&v63 = *(v5 + 272);
    v7 = *(v5 + 224);
    v59 = *(v5 + 208);
    v60 = v7;
    v8 = *(v5 + 192);
    v57 = *(v5 + 176);
    v58 = v8;
    v9 = *(v5 + 112);
  }

  sub_1AAEDD408(&v57, &v55);
  v68 = v61;
  v69 = v62;
  v70 = v63;
  v66[0] = v57;
  v66[1] = v58;
  v66[2] = v59;
  v67 = v60;

  if (!*&v66[0])
  {

    return 0;
  }

  v52 = a2;
  v15 = v67;
  v16 = *(v9 + 16);
  if (v16)
  {
    v51 = v67;
    v17 = v16 - 1;
    v18 = MEMORY[0x1E69E7CC0];
    v19 = 32;
    v54 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v57 = *(v9 + v19);
      v20 = *(v9 + v19 + 16);
      v21 = *(v9 + v19 + 32);
      v22 = *(v9 + v19 + 64);
      v60 = *(v9 + v19 + 48);
      v61 = v22;
      v58 = v20;
      v59 = v21;
      v23 = *(v9 + v19 + 80);
      v24 = *(v9 + v19 + 96);
      v25 = *(v9 + v19 + 112);
      v65 = *(v9 + v19 + 128);
      v63 = v24;
      v64 = v25;
      v62 = v23;
      if (v59 >= 2u)
      {
        v30 = *(&v58 + 1);
        if (*(&v58 + 1))
        {
          v31 = v58;
          v32 = *(v54 + 2);
          if (!v32 || v58 != *&v54[16 * v32 + 16] && (sub_1AAF904F4() & 1) == 0)
          {
            sub_1AAEDD574(&v57, &v55);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = sub_1AAD67908(0, v32 + 1, 1, v54);
            }

            v34 = *(v54 + 2);
            v33 = *(v54 + 3);
            if (v34 >= v33 >> 1)
            {
              v54 = sub_1AAD67908((v33 > 1), v34 + 1, 1, v54);
            }

            sub_1AAEDD5D0(&v57);
            *(v54 + 2) = v34 + 1;
            v35 = &v54[16 * v34];
            *(v35 + 4) = v31;
            *(v35 + 5) = v30;
          }
        }
      }

      else
      {
        v26 = *(&v57 + 1);
        v27 = *(v18 + 2);
        if (!v27 || *&v18[8 * v27 + 24] != *(&v57 + 1))
        {
          sub_1AAEDD574(&v57, &v55);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1AAD67B50(0, v27 + 1, 1, v18);
          }

          v29 = *(v18 + 2);
          v28 = *(v18 + 3);
          if (v29 >= v28 >> 1)
          {
            v18 = sub_1AAD67B50((v28 > 1), v29 + 1, 1, v18);
          }

          sub_1AAEDD5D0(&v57);
          *(v18 + 2) = v29 + 1;
          *&v18[8 * v29 + 32] = v26;
        }
      }

      if (!v17)
      {
        break;
      }

      --v17;
      v19 += 136;
    }

    v15 = v51;
  }

  else
  {
  }

  if (v52)
  {
    if (v52 != 1)
    {

      v44 = objc_allocWithZone(MEMORY[0x1E6959548]);
      v45 = sub_1AAF8F624();
      v46 = sub_1AAF8F824();
      v47 = [v44 initWithTitle:v45 categoryOrder:v46];

      sub_1AAEDD4E0(v66);

      return v47;
    }

    v37 = *(v2 + *(sub_1AAEDC7E8() + 24));
    if (*(v37 + 16) && (v38 = sub_1AACE1760(v53), (v39 & 1) != 0) && (sub_1AACE0A98(*(v37 + 56) + 48 * v38, &v55), v40 = v56[24], v56[24] != 255))
    {
      v57 = v55;
      v58 = *v56;
      *&v59 = *&v56[16];
    }

    else
    {
      *&v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v40 = 3;
    }
  }

  else
  {
    v41 = *(v2 + *(sub_1AAEDC7E8() + 24));
    if (*(v41 + 16) && (v42 = sub_1AACE1760(v53), (v43 & 1) != 0) && (sub_1AACE0A98(*(v41 + 56) + 48 * v42, &v55), v40 = v56[24], v56[24] != 255))
    {
      v57 = v55;
      v58 = *v56;
      *&v59 = *&v56[16];
    }

    else
    {
      *&v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v40 = 3;
    }
  }

  BYTE8(v59) = v40;
  sub_1AACEC978(v15);
  sub_1AAD59D08(0, &qword_1ED9B11C0);
  sub_1AACE0A98(&v57, &v55);
  v48 = swift_allocObject();
  v49 = *v56;
  v48[1] = v55;
  v48[2] = v49;
  *(v48 + 41) = *&v56[9];

  v50 = sub_1AAF8FE24();
  sub_1AAEDD4E0(v66);
  sub_1AAD57C94(&v57);

  return v50;
}

uint64_t sub_1AAEDCF18@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 24);
  v42 = *(a1 + 8);
  v43 = v6;
  v7 = *(a1 + 56);
  v44 = *(a1 + 40);
  v45 = v7;
  v8 = *(a1 + 9);
  v46 = v8;
  v9 = v42;
  v10 = v43;
  v11 = v44;
  v12 = v7;
  v33[0] = v5;
  *&v33[8] = v42;
  v33[24] = v43;
  *&v33[25] = *(&v43 + 1);
  v33[31] = (*(&v43 + 1) | ((*(&v43 + 5) | (BYTE7(v43) << 16)) << 32)) >> 48;
  *&v33[29] = *(&v43 + 5);
  *v34 = *(&v43 + 1);
  *&v34[8] = v44;
  *&v34[24] = v7;
  if (v8 < 0)
  {
    v34[40] = v8;
    v34[41] = 3;
    sub_1AAEDA174(v33);
    v25 = v44;
    v26 = v45;
    v23 = v42;
    v24 = v43;
    *&v27 = v46 & 0x7FFFFFFFFFFFFFFFLL;
    sub_1AAE63EFC(&v23, v40);
  }

  else
  {
    *&v34[40] = v8;
    LOBYTE(v35) = 3;
    sub_1AAE0C0B0(v33);
    sub_1AACD7304(v9, *(&v9 + 1), v10 & 1);

    sub_1AACD7C50(v11, *(&v11 + 1), v12);
  }

  v40[6] = v36;
  v40[7] = v37;
  v40[8] = v38;
  v41 = v39;
  v40[2] = *v34;
  v40[3] = *&v34[16];
  v40[4] = *&v34[32];
  v40[5] = v35;
  v40[0] = *v33;
  v40[1] = *&v33[16];
  v29 = v36;
  v30 = v37;
  v31 = v38;
  v32 = v39;
  v25 = *v34;
  v26 = *&v34[16];
  v27 = *&v34[32];
  v28 = v35;
  v23 = *v33;
  v24 = *&v33[16];
  nullsub_1(&v23, v13);
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v39 = v32;
  *v34 = v25;
  *&v34[16] = v26;
  *&v34[32] = v27;
  v35 = v28;
  *v33 = v23;
  *&v33[16] = v24;
  v14 = *(a2 + *(sub_1AAEDC7E8() + 24));

  v15 = sub_1AAF72FD4(v33, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  result = sub_1AAEDD3B4(&v42);
  *a3 = v15;
  a3[1] = v17;
  a3[2] = v19;
  a3[3] = v21;
  return result;
}

uint64_t sub_1AAEDD174(uint64_t a1, double a2)
{
  v4 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1AAEB36F8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0A98(a1, &v17);
  if (v20 - 1 >= 2)
  {
    if (v20)
    {
      v16 = a2;
      sub_1AAF8CA74();
      sub_1AAD46810();
      sub_1AAF8C794();
      sub_1AADABA9C();
      sub_1AAF8F344();
      (*(v7 + 8))(v9, v6);
      return *&v14[0];
    }

    else
    {
      v14[0] = v17;
      v14[1] = v18;
      v15 = v19;
      v16 = a2;
      v11 = sub_1AACBB42C(v14, *(&v18 + 1));
      v12 = MEMORY[0x1E69E63B0];
      v13 = sub_1AAF7743C(v11, &v16, MEMORY[0x1E69E63B0]);
      sub_1AAEDD624(v14, &qword_1ED9B2790, v12, type metadata accessor for AnyFormatStyle.Wrapper);
      return v13;
    }
  }

  else
  {
    sub_1AAD57C94(&v17);
    return 0;
  }
}

uint64_t sub_1AAEDD408(uint64_t a1, uint64_t a2)
{
  sub_1AAEDDF84(0, &qword_1ED9B4068, sub_1AAEDD488);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAEDD488()
{
  if (!qword_1ED9B4070)
  {
    v0 = type metadata accessor for ConcreteScale();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B4070);
    }
  }
}

uint64_t sub_1AAEDD4E0(uint64_t a1)
{
  sub_1AAEDDF84(0, &qword_1ED9B4068, sub_1AAEDD488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAEDD624(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AAEDE91C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAEDD6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AGChartRendererContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAEDD740(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 20);
  type metadata accessor for CollectedChartContent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_8;
      }

LABEL_7:

      goto LABEL_8;
    }

    sub_1AADF9F2C(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112), *(v4 + 120), *(v4 + 128), *(v4 + 136), *(v4 + 144), *(v4 + 152));
    sub_1AADF9F2C(*(v4 + 160), *(v4 + 168), *(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 208), *(v4 + 216), *(v4 + 224), *(v4 + 232), *(v4 + 240), *(v4 + 248), *(v4 + 256), *(v4 + 264), *(v4 + 272), *(v4 + 280), *(v4 + 288), *(v4 + 296));
    if (*(v4 + 320) != 1)
    {
    }

    v13 = HIBYTE(*(v4 + 400));
    if (v13 <= 0xFE)
    {
      switch(v13)
      {
        case 2u:
          sub_1AAD04750(*(v4 + 344), *(v4 + 352), *(v4 + 360));

          sub_1AADB3124(*(v4 + 376), *(v4 + 384), *(v4 + 392), *(v4 + 400));
          break;
        case 1u:
          sub_1AACB634C(v4 + 336);
          break;
        case 0u:

          break;
      }
    }

    v14 = HIBYTE(*(v4 + 488));
    if (v14 <= 0xFE)
    {
      switch(v14)
      {
        case 2u:
          sub_1AAD04750(*(v4 + 432), *(v4 + 440), *(v4 + 448));

          sub_1AADB3124(*(v4 + 464), *(v4 + 472), *(v4 + 480), *(v4 + 488));
          break;
        case 1u:

          break;
        case 0u:
          sub_1AACB634C(v4 + 424);
          break;
      }
    }

    v15 = *(v4 + 520);
    if (v15 >> 1 != 0xFFFFFFFF || (*(v4 + 560) & 0x7C) != 0)
    {
      sub_1AADFA10C(*(v4 + 496), *(v4 + 504), *(v4 + 512), v15, *(v4 + 528), *(v4 + 536), *(v4 + 544), *(v4 + 552), *(v4 + 560));
    }

    if ((~*(v4 + 632) & 0x7C) != 0)
    {
      sub_1AADFA1A8(*(v4 + 568), *(v4 + 576), *(v4 + 584), *(v4 + 592), *(v4 + 600), *(v4 + 608), *(v4 + 616), *(v4 + 624), *(v4 + 632));
    }

    v16 = type metadata accessor for CollectedChartContent.Primitive(0);
    v17 = *(v16 + 72);
    v18 = sub_1AAF8E244();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v4 + v17, 1, v18))
    {
      (*(v19 + 8))(v4 + v17, v18);
    }

    v20 = v4 + *(v16 + 84);
    v21 = *(v20 + 24);
    if (v21)
    {
      if (v21 == 1)
      {
        goto LABEL_8;
      }

      sub_1AAD04750(*v20, *(v20 + 8), *(v20 + 16));
    }

    if (*(v20 + 56))
    {
      sub_1AAD04750(*(v20 + 32), *(v20 + 40), *(v20 + 48));
    }
  }

LABEL_8:
  v6 = type metadata accessor for AGChartRendererContent(0);

  v7 = v4 + *(v6 + 28);

  if (*(v7 + 176))
  {

    if (*(v7 + 208))
    {
    }

    v8 = *(v7 + 240);
    if (v8 != 255)
    {
      sub_1AACE40AC(*(v7 + 232), v8 & 1);
    }
  }

  if (*(v7 + 280))
  {

    if (*(v7 + 312))
    {
    }

    v9 = *(v7 + 344);
    if (v9 != 255)
    {
      sub_1AACE40AC(*(v7 + 336), v9 & 1);
    }
  }

  v10 = *(v7 + 400);
  if (v10 != 255)
  {
    sub_1AADF9B38(*(v7 + 384), *(v7 + 392), v10);
  }

  if (*(v7 + 408))
  {
  }

  v11 = *(v7 + 440);
  if (v11 != 255)
  {
    sub_1AACAA2EC(*(v7 + 424), *(v7 + 432), v11 & 1);
  }

  if (*(v7 + 472) != 1)
  {
    sub_1AACAA2EC(*(v7 + 448), *(v7 + 456), *(v7 + 464));
  }
}

_OWORD *sub_1AAEDDBF0(_OWORD *a1, _OWORD *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for CollectedChartContent(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  else
  {
    *v7 = *v8;
    *(v7 + 8) = *(v8 + 8);
    v10 = *(v8 + 8);
    *(v7 + 7) = *(v8 + 7);
    *(v7 + 8) = v10;
    *(v7 + 137) = *(v8 + 137);
    v11 = *(v8 + 4);
    *(v7 + 3) = *(v8 + 3);
    *(v7 + 4) = v11;
    v12 = *(v8 + 6);
    *(v7 + 5) = *(v8 + 5);
    *(v7 + 6) = v12;
    v13 = *(v8 + 2);
    *(v7 + 1) = *(v8 + 1);
    *(v7 + 2) = v13;
    v14 = *(v8 + 17);
    *(v7 + 16) = *(v8 + 16);
    *(v7 + 17) = v14;
    *(v7 + 281) = *(v8 + 281);
    v15 = *(v8 + 13);
    *(v7 + 12) = *(v8 + 12);
    *(v7 + 13) = v15;
    v16 = *(v8 + 15);
    *(v7 + 14) = *(v8 + 14);
    *(v7 + 15) = v16;
    v17 = *(v8 + 11);
    *(v7 + 10) = *(v8 + 10);
    *(v7 + 11) = v17;
    *(v7 + 19) = *(v8 + 19);
    *(v7 + 313) = *(v8 + 313);
    v18 = *(v8 + 24);
    *(v7 + 23) = *(v8 + 23);
    *(v7 + 24) = v18;
    *(v7 + 200) = *(v8 + 200);
    v19 = *(v8 + 22);
    *(v7 + 21) = *(v8 + 21);
    *(v7 + 22) = v19;
    *(v7 + 402) = *(v8 + 402);
    v20 = v8[51];
    *(v7 + 208) = *(v8 + 208);
    v7[51] = v20;
    v21 = *(v8 + 59);
    *(v7 + 57) = *(v8 + 57);
    *(v7 + 59) = v21;
    *(v7 + 244) = *(v8 + 244);
    v22 = *(v8 + 55);
    *(v7 + 53) = *(v8 + 53);
    *(v7 + 55) = v22;
    *(v7 + 560) = *(v8 + 560);
    v23 = *(v8 + 34);
    *(v7 + 33) = *(v8 + 33);
    *(v7 + 34) = v23;
    v24 = *(v8 + 32);
    *(v7 + 31) = *(v8 + 31);
    *(v7 + 32) = v24;
    *(v7 + 632) = *(v8 + 632);
    v25 = *(v8 + 77);
    *(v7 + 75) = *(v8 + 75);
    *(v7 + 77) = v25;
    v26 = *(v8 + 73);
    *(v7 + 71) = *(v8 + 71);
    *(v7 + 73) = v26;
    v7[80] = v8[80];
    *(v7 + 656) = *(v8 + 656);
    v7[81] = v8[81];
    v27 = *(v8 + 83);
    v28 = *(v8 + 85);
    *(v7 + 696) = *(v8 + 696);
    *(v7 + 83) = v27;
    *(v7 + 85) = v28;
    v29 = type metadata accessor for CollectedChartContent.Primitive(0);
    v30 = v29[18];
    v31 = sub_1AAF8E244();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v8 + v30, 1, v31))
    {
      sub_1AAEDDF84(0, &qword_1ED9B5558, MEMORY[0x1E697F488]);
      memcpy(v7 + v30, v8 + v30, *(*(v33 - 8) + 64));
    }

    else
    {
      (*(v32 + 32))(v7 + v30, v8 + v30, v31);
      (*(v32 + 56))(v7 + v30, 0, 1, v31);
    }

    v34 = v29[19];
    v35 = v7 + v34;
    v36 = v8 + v34;
    *v35 = *v36;
    v35[8] = v36[8];
    *(v7 + v29[20]) = *(v8 + v29[20]);
    v37 = v29[21];
    v38 = v7 + v37;
    v39 = v8 + v37;
    v40 = *(v39 + 1);
    *v38 = *v39;
    *(v38 + 1) = v40;
    v38[80] = v39[80];
    v41 = *(v39 + 4);
    *(v38 + 3) = *(v39 + 3);
    *(v38 + 4) = v41;
    *(v38 + 2) = *(v39 + 2);
    swift_storeEnumTagMultiPayload();
  }

  v42 = type metadata accessor for AGChartRendererContent(0);
  v43 = v42[5];
  v44 = (v7 + v43);
  v45 = (v8 + v43);
  v46 = v45[1];
  *v44 = *v45;
  v44[1] = v46;
  *(v44 + 27) = *(v45 + 27);
  v47 = v42[6];
  v48 = (v7 + v47);
  v49 = (v8 + v47);
  v50 = v49[1];
  *v48 = *v49;
  v48[1] = v50;
  *(v48 + 27) = *(v49 + 27);
  memcpy(v7 + v42[7], v8 + v42[7], 0x1E8uLL);
  v51 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v51) = *(a2 + v51);
  return a1;
}

void sub_1AAEDDF84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AAEDDFD8(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  if (a1 != a2)
  {
    sub_1AAEDE8BC(a1 + v6, type metadata accessor for CollectedChartContent);
    v9 = type metadata accessor for CollectedChartContent(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v7, v8, *(*(v9 - 8) + 64));
    }

    else
    {
      *v7 = *v8;
      *(v7 + 8) = *(v8 + 8);
      v10 = *(v8 + 8);
      *(v7 + 7) = *(v8 + 7);
      *(v7 + 8) = v10;
      *(v7 + 137) = *(v8 + 137);
      v11 = *(v8 + 4);
      *(v7 + 3) = *(v8 + 3);
      *(v7 + 4) = v11;
      v12 = *(v8 + 6);
      *(v7 + 5) = *(v8 + 5);
      *(v7 + 6) = v12;
      v13 = *(v8 + 2);
      *(v7 + 1) = *(v8 + 1);
      *(v7 + 2) = v13;
      v14 = *(v8 + 17);
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 17) = v14;
      *(v7 + 281) = *(v8 + 281);
      v15 = *(v8 + 13);
      *(v7 + 12) = *(v8 + 12);
      *(v7 + 13) = v15;
      v16 = *(v8 + 15);
      *(v7 + 14) = *(v8 + 14);
      *(v7 + 15) = v16;
      v17 = *(v8 + 11);
      *(v7 + 10) = *(v8 + 10);
      *(v7 + 11) = v17;
      *(v7 + 19) = *(v8 + 19);
      *(v7 + 313) = *(v8 + 313);
      v18 = *(v8 + 24);
      *(v7 + 23) = *(v8 + 23);
      *(v7 + 24) = v18;
      *(v7 + 200) = *(v8 + 200);
      v19 = *(v8 + 22);
      *(v7 + 21) = *(v8 + 21);
      *(v7 + 22) = v19;
      *(v7 + 402) = *(v8 + 402);
      v20 = v8[51];
      *(v7 + 208) = *(v8 + 208);
      v7[51] = v20;
      v21 = *(v8 + 59);
      *(v7 + 57) = *(v8 + 57);
      *(v7 + 59) = v21;
      *(v7 + 244) = *(v8 + 244);
      v22 = *(v8 + 55);
      *(v7 + 53) = *(v8 + 53);
      *(v7 + 55) = v22;
      *(v7 + 560) = *(v8 + 560);
      v23 = *(v8 + 34);
      *(v7 + 33) = *(v8 + 33);
      *(v7 + 34) = v23;
      v24 = *(v8 + 32);
      *(v7 + 31) = *(v8 + 31);
      *(v7 + 32) = v24;
      *(v7 + 632) = *(v8 + 632);
      v25 = *(v8 + 77);
      *(v7 + 75) = *(v8 + 75);
      *(v7 + 77) = v25;
      v26 = *(v8 + 73);
      *(v7 + 71) = *(v8 + 71);
      *(v7 + 73) = v26;
      v7[80] = v8[80];
      *(v7 + 656) = *(v8 + 656);
      v7[81] = v8[81];
      v27 = *(v8 + 83);
      v28 = *(v8 + 85);
      *(v7 + 696) = *(v8 + 696);
      *(v7 + 83) = v27;
      *(v7 + 85) = v28;
      v29 = type metadata accessor for CollectedChartContent.Primitive(0);
      v30 = v29[18];
      v31 = sub_1AAF8E244();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v8 + v30, 1, v31))
      {
        sub_1AAEDDF84(0, &qword_1ED9B5558, MEMORY[0x1E697F488]);
        memcpy(v7 + v30, v8 + v30, *(*(v33 - 8) + 64));
      }

      else
      {
        (*(v32 + 32))(v7 + v30, v8 + v30, v31);
        (*(v32 + 56))(v7 + v30, 0, 1, v31);
      }

      v34 = v29[19];
      v35 = v7 + v34;
      v36 = v8 + v34;
      *v35 = *v36;
      v35[8] = v36[8];
      *(v7 + v29[20]) = *(v8 + v29[20]);
      v37 = v29[21];
      v38 = v7 + v37;
      v39 = v8 + v37;
      v40 = *(v39 + 1);
      *v38 = *v39;
      *(v38 + 1) = v40;
      v38[80] = v39[80];
      v41 = *(v39 + 4);
      *(v38 + 3) = *(v39 + 3);
      *(v38 + 4) = v41;
      *(v38 + 2) = *(v39 + 2);
      swift_storeEnumTagMultiPayload();
    }
  }

  v42 = type metadata accessor for AGChartRendererContent(0);
  v43 = v42[5];
  v44 = v7 + v43;
  v45 = v8 + v43;
  *(v7 + v43) = *(v8 + v43);

  *(v44 + 4) = *(v45 + 4);
  *(v44 + 2) = *(v45 + 2);

  *(v44 + 24) = *(v45 + 24);
  v44[40] = v45[40];
  v44[41] = v45[41];
  v44[42] = v45[42];
  v46 = v42[6];
  v47 = v7 + v46;
  v48 = v8 + v46;
  *(v7 + v46) = *(v8 + v46);

  *(v47 + 4) = *(v48 + 4);
  *(v47 + 2) = *(v48 + 2);

  *(v47 + 24) = *(v48 + 24);
  v47[40] = v48[40];
  v47[41] = v48[41];
  v47[42] = v48[42];
  v49 = v42[7];
  v50 = v7 + v49;
  v51 = v8 + v49;
  v52 = *(v8 + v49 + 16);
  *v50 = *(v8 + v49);
  *(v50 + 1) = v52;
  v53 = *(v8 + v49 + 48);
  *(v50 + 2) = *(v8 + v49 + 32);
  *(v50 + 3) = v53;
  *(v50 + 8) = *(v8 + v49 + 64);

  *(v50 + 9) = *(v51 + 9);

  v50[80] = v51[80];
  *(v50 + 88) = *(v51 + 88);
  *(v50 + 13) = *(v51 + 13);
  *(v50 + 14) = *(v51 + 14);

  *(v50 + 15) = *(v51 + 15);

  v50[128] = v51[128];
  *(v50 + 136) = *(v51 + 136);
  *(v50 + 19) = *(v51 + 19);
  *(v50 + 20) = *(v51 + 20);

  *(v50 + 21) = *(v51 + 21);

  v54 = *(v51 + 22);
  if (!*(v50 + 22))
  {
    goto LABEL_14;
  }

  if (!v54)
  {
    sub_1AAEDE8BC((v50 + 176), sub_1AAEDD488);
LABEL_14:
    v59 = *(v51 + 16);
    *(v50 + 15) = *(v51 + 15);
    *(v50 + 16) = v59;
    *(v50 + 34) = *(v51 + 34);
    v60 = *(v51 + 12);
    *(v50 + 11) = *(v51 + 11);
    *(v50 + 12) = v60;
    v61 = *(v51 + 14);
    *(v50 + 13) = *(v51 + 13);
    *(v50 + 14) = v61;
    goto LABEL_25;
  }

  v55 = *(v51 + 23);
  *(v50 + 22) = v54;
  *(v50 + 23) = v55;

  v56 = *(v51 + 26);
  v57 = *(v50 + 26);
  *(v50 + 24) = *(v51 + 24);
  v50[200] = v51[200];
  if (v57)
  {
    if (v56)
    {
      v58 = *(v51 + 27);
      *(v50 + 26) = v56;
      *(v50 + 27) = v58;

      goto LABEL_19;
    }
  }

  else if (v56)
  {
    v62 = *(v51 + 27);
    *(v50 + 26) = v56;
    *(v50 + 27) = v62;
    goto LABEL_19;
  }

  *(v50 + 13) = *(v51 + 13);
LABEL_19:
  *(v50 + 28) = *(v51 + 28);

  v63 = v50[240];
  if (v63 == 255)
  {
LABEL_23:
    *(v50 + 29) = *(v51 + 29);
    v50[240] = v51[240];
    goto LABEL_24;
  }

  v64 = v51[240];
  if (v64 == 255)
  {
    sub_1AAEDD624((v50 + 232), &qword_1EB426B40, MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScaleRange);
    goto LABEL_23;
  }

  v65 = *(v50 + 29);
  *(v50 + 29) = *(v51 + 29);
  v50[240] = v64 & 1;
  sub_1AACE40AC(v65, v63 & 1);
LABEL_24:
  *(v50 + 248) = *(v51 + 248);
  *(v50 + 264) = *(v51 + 264);
LABEL_25:
  if (!*(v50 + 35))
  {
LABEL_31:
    v70 = *(v51 + 360);
    *(v50 + 344) = *(v51 + 344);
    *(v50 + 360) = v70;
    *(v50 + 47) = *(v51 + 47);
    v71 = *(v51 + 296);
    *(v50 + 280) = *(v51 + 280);
    *(v50 + 296) = v71;
    v72 = *(v51 + 328);
    *(v50 + 312) = *(v51 + 312);
    *(v50 + 328) = v72;
    goto LABEL_42;
  }

  v66 = *(v51 + 35);
  if (!v66)
  {
    sub_1AAEDE8BC((v50 + 280), sub_1AAEDD488);
    goto LABEL_31;
  }

  v67 = *(v51 + 36);
  *(v50 + 35) = v66;
  *(v50 + 36) = v67;

  *(v50 + 37) = *(v51 + 37);
  v50[304] = v51[304];
  v68 = *(v51 + 39);
  if (*(v50 + 39))
  {
    if (v68)
    {
      v69 = *(v51 + 40);
      *(v50 + 39) = v68;
      *(v50 + 40) = v69;

      goto LABEL_36;
    }
  }

  else if (v68)
  {
    v73 = *(v51 + 40);
    *(v50 + 39) = v68;
    *(v50 + 40) = v73;
    goto LABEL_36;
  }

  *(v50 + 312) = *(v51 + 312);
LABEL_36:
  *(v50 + 41) = *(v51 + 41);

  v74 = v50[344];
  if (v74 == 255)
  {
LABEL_40:
    *(v50 + 42) = *(v51 + 42);
    v50[344] = v51[344];
    goto LABEL_41;
  }

  v75 = v51[344];
  if (v75 == 255)
  {
    sub_1AAEDD624((v50 + 336), &qword_1EB426B40, MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScaleRange);
    goto LABEL_40;
  }

  v76 = *(v50 + 42);
  *(v50 + 42) = *(v51 + 42);
  v50[344] = v75 & 1;
  sub_1AACE40AC(v76, v74 & 1);
LABEL_41:
  v77 = *(v51 + 23);
  *(v50 + 22) = *(v51 + 22);
  *(v50 + 23) = v77;
LABEL_42:
  v78 = v50[400];
  if (v78 != 255)
  {
    v79 = v51[400];
    if (v79 != 255)
    {
      v80 = *(v50 + 48);
      v81 = *(v50 + 49);
      *(v50 + 24) = *(v51 + 24);
      v50[400] = v79;
      sub_1AADF9B38(v80, v81, v78);
      goto LABEL_47;
    }

    sub_1AAEDB68C((v50 + 384));
  }

  *(v50 + 24) = *(v51 + 24);
  v50[400] = v51[400];
LABEL_47:
  if (*(v50 + 51))
  {
    v82 = *(v51 + 51);
    if (v82)
    {
      *(v50 + 51) = v82;

      *(v50 + 52) = *(v51 + 52);

      goto LABEL_52;
    }

    sub_1AAEDB6E0((v50 + 408));
  }

  *(v50 + 408) = *(v51 + 408);
LABEL_52:
  v83 = v50 + 424;
  v84 = v51 + 424;
  v85 = v50[440];
  if (v85 != 255)
  {
    v86 = v51[440];
    if (v86 != 255)
    {
      v87 = *(v50 + 53);
      v88 = *(v50 + 54);
      *v83 = *v84;
      v50[440] = v86 & 1;
      sub_1AACAA2EC(v87, v88, v85 & 1);
      goto LABEL_57;
    }

    sub_1AAEDB734((v50 + 424));
  }

  *v83 = *v84;
  v50[440] = v51[440];
LABEL_57:
  if (*(v50 + 59) != 1)
  {
    if (*(v51 + 59) != 1)
    {
      v90 = v51[464];
      v91 = *(v50 + 56);
      v92 = *(v50 + 57);
      v93 = v50[464];
      *(v50 + 28) = *(v51 + 28);
      v50[464] = v90;
      sub_1AACAA2EC(v91, v92, v93);
      *(v50 + 59) = *(v51 + 59);

      goto LABEL_62;
    }

    sub_1AAEDB788((v50 + 448));
  }

  v89 = *(v51 + 29);
  *(v50 + 28) = *(v51 + 28);
  *(v50 + 29) = v89;
LABEL_62:
  *(v50 + 60) = *(v51 + 60);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_1AAEDE8BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAEDE91C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAEDE994()
{
  result = type metadata accessor for AGChartRendererContent(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void View.attributeGraphBasedChart<A>(_:)()
{
  type metadata accessor for AttributeGraphBasedChartsModifier();

  JUMPOUT(0x1AC597820);
}

uint64_t sub_1AAEDEAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDDD00](a1, a2, a3, a4, a5, a6, WitnessTable);
}

uint64_t sub_1AAEDEB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDDD08](a1, a2, a3, a4, a5, a6, WitnessTable);
}

uint64_t sub_1AAEDECD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAF8DA34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1AAF8DBC4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 32))(v9, a1, v6, v12);
  sub_1AAF8DBE4();
  v16[15] = (*(a3 + 8))(a2, a3) & 1;
  sub_1AACBC358();
  sub_1AAF8DBD4();
  sub_1AAF8DBB4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AAEDEE9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAEDEEBC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1AAEDEF58(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v8 = swift_dynamicCast();
  sub_1AACAA1E4(0, &qword_1ED9AD750, &type metadata for ChartContentID.Part, MEMORY[0x1E69E6F90]);
  if (!v8)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AAF92AB0;
    sub_1AAF90404();
    *(inited + 72) = 1;
    v14 = a2;

    v11 = inited;
    goto LABEL_5;
  }

  result = swift_initStackObject();
  *(result + 16) = xmmword_1AAF92AB0;
  if (v5 == 8)
  {
    *(result + 32) = *a1;
    *(result + 72) = 0;
    v14 = a2;
    v10 = result;

    v11 = v10;
LABEL_5:
    sub_1AADC85B8(v11);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAEDF108@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for ContainerWithChildID();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_1AAEDF184(uint64_t a1)
{
  result = 17481;
  v12 = 17481;
  v13 = 0xE200000000000000;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      sub_1AAD80DAC(v4, v9);
      if (v11 == 1)
      {
        v7[0] = v9[0];
        v7[1] = v9[1];
        v8 = v10;
        v5 = sub_1AAF8FFF4();
        MEMORY[0x1AC5982F0](v5);

        MEMORY[0x1AC5982F0](41, 0xE100000000000000);
        MEMORY[0x1AC5982F0](0x28687361682ELL, 0xE600000000000000);

        sub_1AAD80E08(v7);
      }

      else
      {
        *&v7[0] = 0x28746E692ELL;
        *(&v7[0] + 1) = 0xE500000000000000;
        v6 = sub_1AAF90474();
        MEMORY[0x1AC5982F0](v6);

        MEMORY[0x1AC5982F0](41, 0xE100000000000000);
        MEMORY[0x1AC5982F0](*&v7[0], *(&v7[0] + 1));
      }

      v4 += 48;
      --v3;
    }

    while (v3);
    return v12;
  }

  return result;
}

uint64_t sub_1AAEDF2FC()
{
  sub_1AAF90694();
  sub_1AAD80DAC(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x1AC5992C0](1);
    sub_1AAF90014();
    sub_1AAD80E08(v3);
  }

  else
  {
    v1 = *&v5[0];
    MEMORY[0x1AC5992C0](0);
    MEMORY[0x1AC5992C0](v1);
  }

  return sub_1AAF906F4();
}

uint64_t sub_1AAEDF39C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ChartContainerValues();
  Value = AGGraphGetValue();

  return sub_1AAEDF964(Value, a1);
}

uint64_t sub_1AAEDF3F4()
{
  sub_1AAD80DAC(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x1AC5992C0](1);
    sub_1AAF90014();
    return sub_1AAD80E08(v3);
  }

  else
  {
    v2 = *&v5[0];
    MEMORY[0x1AC5992C0](0);
    return MEMORY[0x1AC5992C0](v2);
  }
}

uint64_t sub_1AAEDF484()
{
  sub_1AAF90694();
  sub_1AAD80DAC(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x1AC5992C0](1);
    sub_1AAF90014();
    sub_1AAD80E08(v3);
  }

  else
  {
    v1 = *&v5[0];
    MEMORY[0x1AC5992C0](0);
    MEMORY[0x1AC5992C0](v1);
  }

  return sub_1AAF906F4();
}

unint64_t sub_1AAEDF528()
{
  result = qword_1EB426B48;
  if (!qword_1EB426B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426B48);
  }

  return result;
}

uint64_t sub_1AAEDF57C()
{
  v1 = *v0;
  sub_1AAF90694();
  sub_1AAD7A88C(v3, v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAEDF5CC()
{
  v1 = *v0;
  sub_1AAF90694();
  sub_1AAD7A88C(v3, v1);
  return sub_1AAF906F4();
}

unint64_t sub_1AAEDF628()
{
  result = qword_1ED9B0258;
  if (!qword_1ED9B0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0258);
  }

  return result;
}

uint64_t sub_1AAEDF67C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AAEDF39C(a2);
  v5 = sub_1AAEDEF58(v2, *a2, *(a1 + 16));

  *a2 = v5;
  return result;
}

uint64_t sub_1AAEDF6D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ChartContainerValues();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1AAEDF740(uint64_t a1, uint64_t a2)
{
  sub_1AAD80DAC(a1, v8);
  sub_1AAD80DAC(a2, v9);
  if ((v8[40] & 1) == 0)
  {
    sub_1AAD80DAC(v8, v7);
    if ((v11 & 1) == 0)
    {
      v3 = v7[0] == *&v9[0];
      goto LABEL_6;
    }

LABEL_8:
    sub_1AAEDF81C(v8);
    v3 = 0;
    return v3 & 1;
  }

  sub_1AAD80DAC(v8, v7);
  if (v11 != 1)
  {
    sub_1AAD80E08(v7);
    goto LABEL_8;
  }

  v5[0] = v9[0];
  v5[1] = v9[1];
  v6 = v10;
  v3 = MEMORY[0x1AC598C20](v7, v5);
  sub_1AAD80E08(v5);
  sub_1AAD80E08(v7);
LABEL_6:
  sub_1AAD80E5C(v8);
  return v3 & 1;
}

uint64_t sub_1AAEDF81C(uint64_t a1)
{
  sub_1AAD80F10();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AAEDF878()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1AACAE1F4(319, &qword_1ED9B4428, type metadata accessor for ChartContainerValues, MEMORY[0x1E698D388]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AAEDF964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartContainerValues();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAEDF9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v137 = a3;
  v124 = a2;
  v119 = a4;
  v5 = type metadata accessor for RenderableAxisLabel();
  v121 = *(v5 - 8);
  v122 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v127 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v126 = (&v118 - v8);
  v9 = type metadata accessor for DisplayListProxyViewContainer(0);
  v120 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v129 = (&v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AxisMarksResult();
  v125 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v118 - v14;
  v128 = a1;
  v15 = *(a1 + 8);
  if (*(a1 + 8) && v15 == 1)
  {
  }

  else
  {
    v16 = sub_1AAF904F4();

    if ((v16 & 1) == 0)
    {
      sub_1AAECD90C(v137);
      goto LABEL_7;
    }
  }

  sub_1AAECD9AC(v137);
LABEL_7:
  v135 = *&v17;
  result = *v128;
  v162[0] = result;
  v19 = *(result + 16);
  v139 = v11;
  v138 = v15;
  v123 = result;
  v133 = v19;
  if (!v19)
  {
    v147 = MEMORY[0x1E69E7CC0];
    v21 = 0.0;
    v22 = 0.0;
    goto LABEL_63;
  }

  v132 = result + ((*(v125 + 80) + 32) & ~*(v125 + 80));
  v131 = *(v125 + 72);

  v20 = 0;
  v147 = MEMORY[0x1E69E7CC0];
  v21 = 0.0;
  v22 = 0.0;
  v23 = v136;
  do
  {
    sub_1AACD1C50(v132 + v131 * v20, v23, type metadata accessor for AxisMarksResult);
    v24 = *(v23 + v11[7]);
    v25 = *(v24 + 16);
    v134 = v20;
    if (v25)
    {
      v26 = (v24 + 32);
      do
      {
        v28 = *v26;
        v27 = v26[1];
        v29 = v26[3];
        *&v161[32] = v26[2];
        *&v161[48] = v29;
        *v161 = v28;
        *&v161[16] = v27;
        v30 = v26[4];
        v31 = v26[5];
        v32 = v26[7];
        *&v161[96] = v26[6];
        *&v161[112] = v32;
        *&v161[64] = v30;
        *&v161[80] = v31;
        v33 = *&v161[40];
        v34 = *&v161[8];
        v145 = *&v161[40];
        v146 = v25;
        LODWORD(v144) = v29;
        if (v29 > 1u)
        {
          if (v29 != 2)
          {
            if (*(*(v136 + v11[10]) + 16) && (sub_1AADB0548(*&v161[8]), (v44 & 1) != 0) && *(v137 + 16))
            {
              sub_1AAD57B20(v161, v160);

              v46 = sub_1AADB0938(v45);
              v48 = v47;

              v49 = 0.0;
              v43 = 0.0;
              if (v48)
              {
                v50 = (*(v137 + 56) + 16 * v46);
                v49 = *v50;
                v43 = v50[1];
              }
            }

            else
            {
              sub_1AAD57B20(v161, v160);
              v49 = 0.0;
              v43 = 0.0;
            }

            if (v15)
            {
              v52 = sub_1AAF904F4();
              if ((v52 & 1) == 0)
              {
                v43 = v49;
              }
            }

            goto LABEL_39;
          }

          v43 = *&v161[40];
        }

        else
        {
          if (!v29)
          {
            if (*(*(v136 + v11[10]) + 16) && (sub_1AADB0548(*&v161[8]), (v35 & 1) != 0) && *(v137 + 16))
            {
              sub_1AAD57B20(v161, v160);

              v37 = sub_1AADB0938(v36);
              v39 = v38;

              v40 = 0.0;
              v41 = 0.0;
              if (v39)
              {
                v42 = (*(v137 + 56) + 16 * v37);
                v40 = *v42;
                v41 = v42[1];
              }
            }

            else
            {
              sub_1AAD57B20(v161, v160);
              v40 = 0.0;
              v41 = 0.0;
            }

            if (v15)
            {
              v51 = sub_1AAF904F4();
              if ((v51 & 1) == 0)
              {
                v41 = v40;
              }
            }

            v43 = v41 + v33;
            goto LABEL_39;
          }

          v43 = v135 + *&v161[40];
        }

        sub_1AAD57B20(v161, v160);
LABEL_39:
        v53 = v43 + 4.0;
        if (v22 <= v43 + 4.0)
        {
          v22 = v43 + 4.0;
        }

        v54 = *&v161[120];
        v55 = *&v161[112];
        v56 = *&v161[104];
        LODWORD(v143) = v161[97];
        LODWORD(v142) = v161[96];
        v140 = *&v161[72];
        v141 = *&v161[56];
        v57 = *&v161[88];
        v58 = v161[33];
        v59 = v161[32];
        v60 = *&v161[24];
        v61 = *&v161[16];
        v62 = *v161;

        sub_1AAD57B7C(v161);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = sub_1AAD68F94(0, *(v147 + 2) + 1, 1, v147);
        }

        v64 = *(v147 + 2);
        v63 = *(v147 + 3);
        if (v64 >= v63 >> 1)
        {
          v147 = sub_1AAD68F94((v63 > 1), v64 + 1, 1, v147);
        }

        v65 = v147;
        *(v147 + 2) = v64 + 1;
        v66 = &v65[136 * v64];
        *(v66 + 4) = v62;
        *(v66 + 5) = v34;
        *(v66 + 6) = v61;
        *(v66 + 7) = v60;
        v66[64] = v59;
        v66[65] = v58;
        v67 = v152;
        *(v66 + 66) = v151;
        *(v66 + 35) = v67;
        *(v66 + 9) = v145;
        v66[80] = v144;
        v68 = v160[0];
        *(v66 + 21) = *(v160 + 3);
        *(v66 + 81) = v68;
        v69 = v141;
        *(v66 + 104) = v140;
        *(v66 + 88) = v69;
        *(v66 + 15) = v57;
        v66[128] = v142;
        v66[129] = v143;
        LOWORD(v68) = v159;
        *(v66 + 130) = v158;
        *(v66 + 67) = v68;
        *(v66 + 17) = v56;
        *(v66 + 18) = v55;
        *(v66 + 19) = v54;
        *(v66 + 20) = v53;
        v26 += 8;
        v25 = v146 - 1;
        v11 = v139;
        v15 = v138;
      }

      while (v146 != 1);
    }

    v70 = *(v136 + v11[8]);
    v71 = *(v70 + 16);
    if (v71)
    {
      v72 = *(v136 + v11[10]);
      v73 = v70 + 32;
      do
      {
        sub_1AAD57CE8(v73, v161);
        v74 = *&v161[8];
        sub_1AAD57D44(v161);
        v75 = 0.0;
        if (*(v72 + 16) && (sub_1AADB0548(v74), (v76 & 1) != 0) && *(v137 + 16))
        {

          v78 = sub_1AADB0938(v77);
          v80 = v79;

          v81 = 0.0;
          if (v80)
          {
            v82 = (*(v137 + 56) + 16 * v78);
            v75 = *v82;
            v81 = v82[1];
          }
        }

        else
        {
          v81 = 0.0;
        }

        if (v15 && (sub_1AAF904F4() & 1) == 0)
        {
          v81 = v75;
        }

        if (v21 <= v81 + 4.0)
        {
          v21 = v81 + 4.0;
        }

        v73 += 264;
        --v71;
      }

      while (v71);
    }

    v20 = v134 + 1;
    v23 = v136;
    sub_1AACD1764(v136, type metadata accessor for AxisMarksResult);
  }

  while (v20 != v133);
  result = sub_1AACD1764(v162, sub_1AADA1334);
LABEL_63:
  v83 = v129;
  if (*(v128 + 42) & 1) == 0 || (*(v128 + 41) & 1) != 0 || (v84 = 0.0, (*(v128 + 40)))
  {
    if (v22 > v21)
    {
      v84 = v22;
    }

    else
    {
      v84 = v21;
    }
  }

  v132 = *(v124 + 16);
  if (v132)
  {
    v85 = 0;
    v86 = v124 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
    v87 = *(v120 + 72);
    v135 = MEMORY[0x1E69E7CC0];
    v131 = v86;
    v128 = v87;
    while (1)
    {
      v134 = v85;
      sub_1AACD1C50(v86 + v87 * v85, v83, type metadata accessor for DisplayListProxyViewContainer);
      v88 = *v83;
      v89 = 0;
      if (*(v137 + 16))
      {
        v90 = sub_1AADB0938(v88);
        v91 = 0;
        if (v92)
        {
          v93 = (*(v137 + 56) + 16 * v90);
          v89 = *v93;
          v91 = v93[1];
        }
      }

      else
      {
        v91 = 0;
      }

      memset(v161, 0, sizeof(v161));
      if (v133)
      {
        break;
      }

LABEL_104:
      v107 = v126;
      sub_1AACD1C50(v161, (v126 + 1), sub_1AAEE07F8);
      v108 = v122;
      sub_1AACD1C50(v129, v107 + v122[6], type metadata accessor for DisplayListProxyViewContainer);
      *v107 = v88;
      v109 = (v107 + v108[7]);
      *v109 = v89;
      v109[1] = v91;
      *(v107 + v108[8]) = 0;
      *(v107 + v108[9]) = 0;
      *(v107 + v108[10]) = 0;
      v110 = (v107 + v108[11]);
      *v110 = 0;
      v110[1] = 0;
      sub_1AACD1C50(v107, v127, type metadata accessor for RenderableAxisLabel);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v135 = COERCE_DOUBLE(sub_1AAD68F60(0, *(*&v135 + 16) + 1, 1, *&v135));
      }

      LOBYTE(v15) = v138;
      v111 = v134;
      v113 = *(*&v135 + 16);
      v112 = *(*&v135 + 24);
      if (v113 >= v112 >> 1)
      {
        v115 = COERCE_DOUBLE(sub_1AAD68F60(v112 > 1, v113 + 1, 1, *&v135));
        v111 = v134;
        v135 = v115;
      }

      sub_1AACD1764(v126, type metadata accessor for RenderableAxisLabel);
      sub_1AACD1764(v161, sub_1AAEE07F8);
      v114 = v135;
      *(*&v135 + 16) = v113 + 1;
      sub_1AAEE0848(v127, *&v114 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v113);
      v83 = v129;
      result = sub_1AACD1764(v129, type metadata accessor for DisplayListProxyViewContainer);
      v85 = v111 + 1;
      v86 = v131;
      v87 = v128;
      if (v111 + 1 == v132)
      {
        goto LABEL_111;
      }
    }

    *&v141 = v139[8];
    *&v140 = v123 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
    v136 = *(v125 + 72);
    v143 = v88 + 32;

    v94 = 0;
    while (1)
    {
      v95 = v130;
      sub_1AACD1C50(v140 + v136 * v94, v130, type metadata accessor for AxisMarksResult);
      v96 = *(v95 + v141);

      result = sub_1AACD1764(v95, type metadata accessor for AxisMarksResult);
      v97 = *(v96 + 16);
      if (v97)
      {
        break;
      }

LABEL_78:
      if (++v94 == v133)
      {
        sub_1AACD1764(v162, sub_1AADA1334);
        goto LABEL_104;
      }
    }

    v142 = v94;
    v98 = 0;
    v99 = *(v88 + 16);
    v145 = v96;
    v146 = v96 + 32;
    v144 = v97;
    while (v98 < *(v96 + 16))
    {
      result = sub_1AAD57CE8(v146 + 264 * v98, v160);
      v100 = v160[0];
      if (*(v160[0] + 16) == v99)
      {
        if (v99 && v160[0] != v88)
        {
          v101 = 0;
          v102 = v160[0] + 32;
          v103 = v143;
          while (v101 < *(v100 + 16))
          {
            result = sub_1AAD80DAC(v102, &v158);
            if (v101 >= *(v88 + 16))
            {
              goto LABEL_113;
            }

            sub_1AAD80DAC(v103, v157);
            sub_1AAD80DAC(&v158, &v151);
            sub_1AAD80DAC(v157, v154);
            if (v153)
            {
              sub_1AAD80DAC(&v151, v150);
              if ((v156 & 1) == 0)
              {
                sub_1AAD80E5C(v157);
                sub_1AAD80E5C(&v158);
                sub_1AAD80E08(v150);
LABEL_82:
                sub_1AACD1764(&v151, sub_1AAD80F10);
LABEL_83:
                v97 = v144;
                v96 = v145;
                goto LABEL_84;
              }

              v148[0] = v154[0];
              v148[1] = v154[1];
              v149 = v155;
              v104 = MEMORY[0x1AC598C20](v150, v148);
              sub_1AAD80E08(v148);
              sub_1AAD80E5C(v157);
              sub_1AAD80E5C(&v158);
              sub_1AAD80E08(v150);
              result = sub_1AAD80E5C(&v151);
              if ((v104 & 1) == 0)
              {
                goto LABEL_83;
              }
            }

            else
            {
              sub_1AAD80E5C(v157);
              sub_1AAD80E5C(&v158);
              sub_1AAD80DAC(&v151, v150);
              if (v156)
              {
                goto LABEL_82;
              }

              v105 = v150[0];
              v106 = *&v154[0];
              result = sub_1AAD80E5C(&v151);
              if (v105 != v106)
              {
                goto LABEL_83;
              }
            }

            ++v101;
            v103 += 48;
            v102 += 48;
            if (v99 == v101)
            {
              goto LABEL_101;
            }
          }

          __break(1u);
LABEL_113:
          __break(1u);
          break;
        }

LABEL_101:
        sub_1AACD1764(v161, sub_1AAEE07F8);
        result = memcpy(v161, v160, sizeof(v161));
        v97 = v144;
        v96 = v145;
      }

      else
      {
LABEL_84:
        result = sub_1AAD57D44(v160);
      }

      if (++v98 == v97)
      {

        v94 = v142;
        goto LABEL_78;
      }
    }

    __break(1u);
  }

  else
  {
    v135 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v116 = v119;
    *v119 = v15;
    v116[1] = v22;
    v116[2] = v21;
    v116[3] = v84;
    v117 = v135;
    *(v116 + 4) = v147;
    v116[5] = v117;
  }

  return result;
}

uint64_t type metadata accessor for RenderableAxisLabel()
{
  result = qword_1ED9AFDD0;
  if (!qword_1ED9AFDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AAEE07F8()
{
  if (!qword_1ED9AE520[0])
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9AE520);
    }
  }
}

uint64_t sub_1AAEE0848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenderableAxisLabel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AAEE08D4()
{
  sub_1AAEE07F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DisplayListProxyViewContainer(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGPoint(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1AAEE09AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAEE09F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAEE0A64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAEE0AAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_1AAEE0B78@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  result = vaddq_f64(vaddq_f64(*a1, vdupq_n_s64(0x4044000000000000uLL)), a2[1]);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  *&v4.f64[0] = vmovn_s64(vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(result, vnegq_f64(v4))));
  *a3 = result;
  a3[1].i8[0] = LOBYTE(v4.f64[0]) & BYTE4(v4.f64[0]) & 1;
  return result;
}

void sub_1AAEE0BC8()
{
  v1 = v0;
  v2 = *(v0 + 32);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v27 = MEMORY[0x1E69E7CC0];

    sub_1AAD1FAF4(0, v4, 0);
    v5 = v27;
    v6 = *(v27 + 16);
    v7 = 32;
    do
    {
      v8 = *(v3 + v7);
      v9 = *(v27 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_1AAD1FAF4((v9 > 1), v6 + 1, 1);
      }

      *(v27 + 16) = v6 + 1;
      *(v27 + 8 * v6 + 32) = v8;
      v7 += 72;
      ++v6;
      --v4;
    }

    while (v4);
  }

  v10 = COERCE_DOUBLE(sub_1AACEC978(v5));
  v12 = v11;
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    v15 = *(v2 + 16);
    v16 = *(v15 + 16);
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v28 = MEMORY[0x1E69E7CC0];

      sub_1AAD1FAF4(0, v16, 0);
      v17 = v28;
      v18 = *(v28 + 16);
      v19 = 40;
      do
      {
        v20 = *(v15 + v19);
        v21 = *(v28 + 24);
        if (v18 >= v21 >> 1)
        {
          sub_1AAD1FAF4((v21 > 1), v18 + 1, 1);
        }

        *(v28 + 16) = v18 + 1;
        *(v28 + 8 * v18 + 32) = v20;
        v19 += 72;
        ++v18;
        --v16;
      }

      while (v16);
    }

    v22 = COERCE_DOUBLE(sub_1AACEC978(v17));
    v24 = v23;
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      v29.origin.x = v10;
      v29.origin.y = v22;
      v29.size.width = v12 - v10;
      v29.size.height = v24 - v22;
      v30 = CGRectOffset(v29, 40.0, 40.0);
      CGRectOffset(v30, *(v1 + 16), *(v1 + 24));
    }
  }
}

float64x2_t sub_1AAEE0E18@<Q0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = vdupq_n_s64(0x4044000000000000uLL);
  v4 = vaddq_f64(*a1, v3);
  v5 = vaddq_f64(*(a1 + 16), v3);
  v6 = a2[1];
  v7 = (*(a1 + 8) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  v8 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v7;
  v9 = (*a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v8;
  v10 = vaddq_f64(vzip1q_s64(v4, v5), v6);
  result = vaddq_f64(vzip2q_s64(v4, v5), v6);
  *a3 = v10;
  *(a3 + 16) = result;
  *(a3 + 32) = v9;
  return result;
}

uint64_t sub_1AAEE0EAC()
{

  return swift_deallocClassInstance();
}

__n128 sub_1AAEE0F14(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1AAEE0F48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 130))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAEE0F90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 130) = 1;
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

    *(result + 130) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAEE1014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAEE105C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1AAEE10B8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1AAEE1104(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1AAEE112C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAEE1140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAEE118C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1AAEE1200(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x77 && *(a1 + 8))
  {
    return (*a1 + 119);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x76)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AAEE1250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1AAEE12F4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_1AAEE2C30();

    v4 = (v2 + 40);
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AAF9E2B0;
      *(inited + 32) = v6;
      v9 = (inited + 32);
      *(inited + 40) = v7;
      v10 = *(v5 + 2);
      v11 = v10 + 2;
      if (__OFADD__(v10, 2))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v13 = *(v5 + 3) >> 1, v13 < v11))
      {
        if (v10 <= v11)
        {
          v14 = v10 + 2;
        }

        else
        {
          v14 = v10;
        }

        v5 = sub_1AAD69810(isUniquelyReferenced_nonNull_native, v14, 1, v5);
        v13 = *(v5 + 3) >> 1;
      }

      v15 = *(v5 + 2);
      if (v13 - v15 < 2)
      {
        goto LABEL_34;
      }

      *&v5[8 * v15 + 32] = *v9;

      v16 = *(v5 + 2);
      v17 = __OFADD__(v16, 2);
      v18 = v16 + 2;
      if (v17)
      {
        goto LABEL_35;
      }

      *(v5 + 2) = v18;
      v4 += 4;
      if (!--v3)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v19 = COERCE_DOUBLE(sub_1AACEC978(v5));
  v21 = v20;
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    v24 = *(v1 + 16);
    v25 = *(v24 + 16);
    if (v25)
    {
      v45 = v21;
      sub_1AAEE2C30();

      v26 = (v24 + 56);
      v27 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v28 = *(v26 - 1);
        v29 = *v26;
        v30 = swift_initStackObject();
        *(v30 + 16) = xmmword_1AAF9E2B0;
        *(v30 + 32) = v28;
        v31 = (v30 + 32);
        *(v30 + 40) = v29;
        v32 = *(v27 + 2);
        v33 = v32 + 2;
        if (__OFADD__(v32, 2))
        {
          break;
        }

        v34 = swift_isUniquelyReferenced_nonNull_native();
        if (!v34 || (v35 = *(v27 + 3) >> 1, v35 < v33))
        {
          if (v32 <= v33)
          {
            v36 = v32 + 2;
          }

          else
          {
            v36 = v32;
          }

          v27 = sub_1AAD69810(v34, v36, 1, v27);
          v35 = *(v27 + 3) >> 1;
        }

        v37 = *(v27 + 2);
        if (v35 - v37 < 2)
        {
          goto LABEL_37;
        }

        *&v27[8 * v37 + 32] = *v31;

        v38 = *(v27 + 2);
        v17 = __OFADD__(v38, 2);
        v39 = v38 + 2;
        if (v17)
        {
          goto LABEL_38;
        }

        *(v27 + 2) = v39;
        v26 += 4;
        if (!--v25)
        {

          v21 = v45;
          goto LABEL_30;
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v40 = COERCE_DOUBLE(sub_1AACEC978(v27));
    v42 = v41;
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      v47.origin.x = v19;
      v47.origin.y = v40;
      v47.size.width = v21 - v19;
      v47.size.height = v42 - v40;
      v48 = CGRectOffset(v47, 40.0, 40.0);
      CGRectOffset(v48, *(v46 + 16), *(v46 + 24));
    }
  }
}

uint64_t sub_1AAEE1618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[8] < 2.22044605e-16 && (v2[11] < 2.22044605e-16 ? (v4 = v2[10] < 2.22044605e-16) : (v4 = 0), v4 ? (v5 = v2[9] < 2.22044605e-16) : (v5 = 0), v5))
  {
    v10 = v2[4];
    v11 = v2[5];
    if (v11 >= v10)
    {
      v12 = *(v2 + 4);
    }

    else
    {
      v12 = *(v2 + 5);
    }

    v13 = v2[6];
    v14 = v2[7];
    if (v14 >= v13)
    {
      v15 = *(v2 + 6);
    }

    else
    {
      v15 = *(v2 + 7);
    }

    v16 = vabdd_f64(v11, v10);
    v17 = vabdd_f64(v14, v13);
    v21 = CGRectOffset(*&v12, 40.0, 40.0);
    CGRectOffset(v21, v2[2], v2[3]);
    result = sub_1AAF8E944();
    v7 = v18;
    v8 = v19;
    v9 = v20;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    result = sub_1AAF8E964();
    v7 = v18;
    v8 = v19;
    v9 = v20;
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_1AAEE1710(uint64_t a1, CGFloat *a2, void (*a3)(void))
{
  v5 = a2[4];
  v6 = a2[5];
  if (v6 >= v5)
  {
    v7 = *(a2 + 4);
  }

  else
  {
    v7 = *(a2 + 5);
  }

  v8 = a2[6];
  v9 = a2[7];
  if (v9 >= v8)
  {
    v10 = *(a2 + 6);
  }

  else
  {
    v10 = *(a2 + 7);
  }

  v11 = vabdd_f64(v6, v5);
  v12 = vabdd_f64(v9, v8);
  v14 = CGRectOffset(*&v7, 40.0, 40.0);
  CGRectOffset(v14, a2[2], a2[3]);
  a3(0);
  return sub_1AAF8E894();
}

char *sub_1AAEE18B0()
{
  v1 = sub_1AAEE1C54(*(v0 + 8));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v5 = 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *&v1[v5];
      if (v7 >> 60 == 8)
      {
        sub_1AAEE2D40((v7 & 0xFFFFFFFFFFFFFFFLL) + 16, &v37);
        if (*(v6 + 2))
        {

          sub_1AAEE23A8(v6, &v33);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1AAD6B240(0, *(v4 + 2) + 1, 1, v4);
          }

          v9 = *(v4 + 2);
          v8 = *(v4 + 3);
          if (v9 >= v8 >> 1)
          {
            v4 = sub_1AAD6B240((v8 > 1), v9 + 1, 1, v4);
          }

          *(v4 + 2) = v9 + 1;
          v10 = &v4[96 * v9];
          *(v10 + 4) = v3;
          v11 = v33;
          v12 = *v34;
          *(v10 + 72) = *&v34[16];
          *(v10 + 56) = v12;
          *(v10 + 40) = v11;
          *(v10 + 88) = 0u;
          *(v10 + 104) = 0u;
          *(v10 + 15) = 0;
          v13 = __OFADD__(v3++, 1);
          if (v13)
          {
            goto LABEL_33;
          }

          v6 = MEMORY[0x1E69E7CC0];
        }

        else
        {
        }

        v16 = v38;
        v17 = *(&v38 + 1);
        v31 = v40;
        v32 = v39;
        sub_1AAD14CD4(&v41, &v34[40]);
        *&v33 = v3;
        DWORD2(v33) = v16;
        *v34 = v17;
        *&v34[24] = v31;
        *&v34[8] = v32;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1AAD6B240(0, *(v4 + 2) + 1, 1, v4);
        }

        v19 = *(v4 + 2);
        v18 = *(v4 + 3);
        if (v19 >= v18 >> 1)
        {
          v4 = sub_1AAD6B240((v18 > 1), v19 + 1, 1, v4);
        }

        sub_1AAEE2D78(&v37);
        *(v4 + 2) = v19 + 1;
        v20 = &v4[96 * v19];
        v21 = *v34;
        *(v20 + 2) = v33;
        *(v20 + 3) = v21;
        v22 = v36;
        v24 = *&v34[16];
        v23 = *&v34[32];
        *(v20 + 6) = v35;
        *(v20 + 7) = v22;
        *(v20 + 4) = v24;
        *(v20 + 5) = v23;

        v13 = __OFADD__(v3++, 1);
        if (v13)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {
        swift_retain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1AAD6B22C(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1AAD6B22C((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        *&v6[8 * v15 + 32] = v7;
      }

      v5 += 8;
      --v2;
    }

    while (v2);

    if (!*(v6 + 2))
    {
      goto LABEL_31;
    }
  }

  else
  {

    v3 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v4 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_31:

      return v4;
    }
  }

  sub_1AAEE23A8(v6, &v37);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_34:
    v4 = sub_1AAD6B240(0, *(v4 + 2) + 1, 1, v4);
  }

  v26 = *(v4 + 2);
  v25 = *(v4 + 3);
  if (v26 >= v25 >> 1)
  {
    v4 = sub_1AAD6B240((v25 > 1), v26 + 1, 1, v4);
  }

  *(v4 + 2) = v26 + 1;
  v27 = &v4[96 * v26];
  *(v27 + 4) = v3;
  v28 = v37;
  v29 = v38;
  *(v27 + 72) = v39;
  *(v27 + 56) = v29;
  *(v27 + 40) = v28;
  *(v27 + 88) = 0u;
  *(v27 + 104) = 0u;
  *(v27 + 15) = 0;
  return v4;
}

char *sub_1AAEE1C54(uint64_t a1)
{
  v52 = MEMORY[0x1E69E7CC0];
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v36 = a1 + 32;
    v37 = *(a1 + 16);
    do
    {
      v4 = *(v3 + 8 * v2);
      if (v4 >> 60)
      {
        swift_beginAccess();
        v30 = v52;
        swift_retain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1AAD6B22C(0, *(v30 + 2) + 1, 1, v30);
        }

        v32 = *(v30 + 2);
        v31 = *(v30 + 3);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v30 = sub_1AAD6B22C((v31 > 1), v32 + 1, 1, v30);
        }
      }

      else
      {
        v6 = *(v4 + 16);
        v5 = *(v4 + 32);
        v7 = *(v4 + 64);
        v55 = *(v4 + 48);
        v56 = v7;
        v53 = v6;
        v54 = v5;
        v8 = *(v4 + 32);
        v57[1] = *(v4 + 48);
        v57[2] = v7;
        v57[0] = v8;
        v9 = *(&v8 + 1);

        sub_1AAEE2FA8(&v53, &v48);
        sub_1AAEE2FE0(v57, &v48);
        v10 = sub_1AAEE1C54(v9);
        sub_1AAEE3018(v57);
        v11 = 0;
        v12 = *(v10 + 16);
        while (v12 != v11)
        {
          v13 = v10 + 8 * v11++;
          if (*(v13 + 32) >> 60 == 8)
          {
            v14 = MEMORY[0x1E69E7CC0];
            v47 = MEMORY[0x1E69E7CC0];
            swift_beginAccess();
            v15 = 32;
            do
            {
              v16 = *(v10 + v15);
              if (v16 >> 60 == 8)
              {
                if (*(v14 + 2))
                {
                  v46 = v54;
                  v43 = v55;
                  v44 = v56;
                  v45 = v53;
                  sub_1AAEE2FA8(&v53, &v38);

                  sub_1AAEE3018(v57);
                  v17 = swift_allocObject();
                  v48 = v45;
                  *&v49 = v46;
                  *(&v49 + 1) = v14;
                  v50 = v43;
                  v51 = v44;
                  v18 = v49;
                  v19 = v43;
                  v17[1] = v45;
                  v17[2] = v18;
                  v20 = v51;
                  v17[3] = v19;
                  v17[4] = v20;
                  swift_beginAccess();
                  v21 = v52;
                  sub_1AAEE2FA8(&v48, &v38);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v21 = sub_1AAD6B22C(0, *(v21 + 2) + 1, 1, v21);
                  }

                  v23 = *(v21 + 2);
                  v22 = *(v21 + 3);
                  if (v23 >= v22 >> 1)
                  {
                    v21 = sub_1AAD6B22C((v22 > 1), v23 + 1, 1, v21);
                  }

                  *(v21 + 2) = v23 + 1;
                  *&v21[8 * v23 + 32] = v17;
                  v52 = v21;
                  swift_endAccess();
                  v24 = MEMORY[0x1E69E7CC0];
                  v47 = MEMORY[0x1E69E7CC0];

                  v38 = v45;
                  v39 = v46;
                  v40 = v14;
                  v41 = v43;
                  v42 = v44;
                  sub_1AAEE3048(&v38);
                  v14 = v24;
                }

                else
                {
                }

                swift_beginAccess();
                v27 = v52;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v27 = sub_1AAD6B22C(0, *(v27 + 2) + 1, 1, v27);
                }

                v29 = *(v27 + 2);
                v28 = *(v27 + 3);
                if (v29 >= v28 >> 1)
                {
                  v27 = sub_1AAD6B22C((v28 > 1), v29 + 1, 1, v27);
                }

                *(v27 + 2) = v29 + 1;
                *&v27[8 * v29 + 32] = v16;
                v52 = v27;
              }

              else
              {
                swift_beginAccess();
                swift_retain_n();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v14 = sub_1AAD6B22C(0, *(v14 + 2) + 1, 1, v14);
                }

                v26 = *(v14 + 2);
                v25 = *(v14 + 3);
                if (v26 >= v25 >> 1)
                {
                  v14 = sub_1AAD6B22C((v25 > 1), v26 + 1, 1, v14);
                }

                *(v14 + 2) = v26 + 1;
                *&v14[8 * v26 + 32] = v16;
                v47 = v14;
              }

              swift_endAccess();

              v15 += 8;
              --v12;
            }

            while (v12);

            sub_1AAEE21E4(&v47, &v53, &v52);
            sub_1AAEE3048(&v53);

            v3 = v36;
            v1 = v37;
            goto LABEL_4;
          }
        }

        sub_1AAEE3048(&v53);
        swift_beginAccess();
        v30 = v52;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1AAD6B22C(0, *(v30 + 2) + 1, 1, v30);
        }

        v32 = *(v30 + 2);
        v34 = *(v30 + 3);
        v33 = v32 + 1;
        if (v32 >= v34 >> 1)
        {
          v30 = sub_1AAD6B22C((v34 > 1), v32 + 1, 1, v30);
        }
      }

      *(v30 + 2) = v33;
      *&v30[8 * v32 + 32] = v4;
      v52 = v30;
      swift_endAccess();

LABEL_4:
      ++v2;
    }

    while (v2 != v1);
  }

  swift_beginAccess();
  return v52;
}

uint64_t sub_1AAEE21E4(uint64_t *a1, _OWORD *a2, char **a3)
{
  result = swift_beginAccess();
  v7 = *a1;
  if (*(*a1 + 16))
  {
    v8 = a2[2];
    v9 = a2[3];
    v10 = *a2;
    v32[0] = a2[1];
    v32[1] = v8;
    v32[2] = v9;
    v25 = v9;
    v26 = v10;
    v27 = *(a2 + 2);
    v24 = v8;
    sub_1AAEE2FA8(a2, &v28);

    sub_1AAEE3018(v32);
    v11 = swift_allocObject();
    v13 = v25;
    v12 = v26;
    v28 = v26;
    *&v29 = v27;
    *(&v29 + 1) = v7;
    v30 = v24;
    v31 = v25;
    v11[3] = v24;
    v11[4] = v13;
    v14 = v29;
    v11[1] = v12;
    v11[2] = v14;
    swift_beginAccess();
    v15 = *a3;
    sub_1AAEE2FA8(&v28, &v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1AAD6B22C(0, *(v15 + 2) + 1, 1, v15);
      *a3 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1AAD6B22C((v17 > 1), v18 + 1, 1, v15);
      *a3 = v15;
    }

    *(v15 + 2) = v18 + 1;
    *&v15[8 * v18 + 32] = v11;
    swift_endAccess();
    swift_beginAccess();
    *a1 = MEMORY[0x1E69E7CC0];

    v19 = v26;
    v20 = v27;
    v21 = v7;
    v22 = v24;
    v23 = v25;
    return sub_1AAEE3048(&v19);
  }

  return result;
}

double sub_1AAEE23A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChartDisplayList.RectangleItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ChartDisplayList.BarItem(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 16);
  if (v10)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1AAD415A4(0, v10, 0);
    v11 = v35;
    v12 = (a1 + 32);
    while (1)
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v14 >> 60;
      if ((v14 >> 60) <= 4)
      {
        break;
      }

      if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v18 = swift_projectBox();
          sub_1AAEE2DA8(v18, v9, type metadata accessor for ChartDisplayList.BarItem);
          v17 = *(v9 + 2);
          v19 = type metadata accessor for ChartDisplayList.BarItem;
          v20 = v9;
        }

        else
        {
          v21 = swift_projectBox();
          sub_1AAEE2DA8(v21, v6, type metadata accessor for ChartDisplayList.RectangleItem);
          v17 = *(v6 + 2);
          v19 = type metadata accessor for ChartDisplayList.RectangleItem;
          v20 = v6;
        }

        sub_1AAEE2E78(v20, v19);
        goto LABEL_21;
      }

      if (v15 != 8)
      {
        v13 &= 0xFFFFFFFFFFFFFFFuLL;
LABEL_13:
        v17 = *(v13 + 24);
        goto LABEL_21;
      }

      sub_1AAEE2D40((v13 & 0xFFFFFFFFFFFFFFFLL) + 16, v33);
      v17 = v34;
      sub_1AAEE2D78(v33);
LABEL_21:
      v35 = v11;
      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_1AAD415A4((v22 > 1), v23 + 1, 1);
        v11 = v35;
      }

      *(v11 + 16) = v24;
      *(v11 + 4 * v23 + 32) = v17;
      if (!--v10)
      {
        goto LABEL_26;
      }
    }

    if (v15 > 1)
    {
      v16 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 16;
      if (v15 == 2)
      {
        sub_1AAEE2ED8(v16, v33);
        v17 = v34;
        sub_1AAEE2F10(v33);
      }

      else if (v15 == 3)
      {
        sub_1AAEE2B64(v16, v33);
        v17 = v34;
        sub_1AAEE2B9C(v33);
      }

      else
      {
        sub_1AAEE2E10(v16, v33);
        v17 = v34;
        sub_1AAEE2E48(v33);
      }

      goto LABEL_21;
    }

    if (v15)
    {
      sub_1AAEE2F40((v13 & 0xFFFFFFFFFFFFFFFLL) + 16, v33);
      v17 = v34;
      sub_1AAEE2F78(v33);
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v11 = MEMORY[0x1E69E7CC0];
  v24 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v24)
  {
LABEL_26:
    v25 = 0;
    v26 = 32;
    do
    {
      v27 = *(v11 + v26);
      if (v25 != 0xFFFFFFFFLL && v27 != 0)
      {
        if (!v25 || v27 == 0xFFFFFFFFLL)
        {
          v25 = *(v11 + v26);
        }

        else
        {
          v29 = (v27 | (v25 << 32)) + ~(v27 << 32);
          v30 = (v29 ^ (v29 >> 22)) + ~((v29 ^ (v29 >> 22)) << 13);
          v31 = (9 * (v30 ^ (v30 >> 8))) ^ ((9 * (v30 ^ (v30 >> 8))) >> 15);
          v25 = ((v31 + ~(v31 << 27)) >> 31) ^ (v31 + ~(v31 << 27));
        }
      }

      v26 += 4;
      --v24;
    }

    while (v24);
  }

  else
  {
    LODWORD(v25) = 0;
  }

  *a2 = v25;
  *(a2 + 8) = a1;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  return result;
}

uint64_t sub_1AAEE2718()
{
  v1 = *(v0 + 8);
  v46 = *(v1 + 16);
  if (!v46)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v45 = v1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = *(v45 + 8 * v2);
    v6 = v5 >> 60;
    if (v5 >> 60 == 9)
    {
      v29 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v51 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v52 = v29;
      v30 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v53 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v54 = v30;
      v31 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v49 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v50 = v31;

      sub_1AAEE2B2C(&v49, &v55);
      v32 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1AAD6B0F4(0, *(v3 + 2) + 1, 1, v3);
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1AAD6B0F4((v33 > 1), v34 + 1, 1, v32);
      }

      v3 = v32;
      *(v32 + 2) = v34 + 1;
      v35 = &v32[96 * v34];
      v36 = v50;
      *(v35 + 2) = v49;
      *(v35 + 3) = v36;
      v37 = v51;
      v38 = v52;
      v39 = v54;
      *(v35 + 6) = v53;
      *(v35 + 7) = v39;
      *(v35 + 4) = v37;
      *(v35 + 5) = v38;

      goto LABEL_5;
    }

    if (v6 == 3)
    {
      v44 = v2;
      sub_1AAEE2B64((v5 & 0xFFFFFFFFFFFFFFFLL) + 16, &v49);
      v14 = v51;
      swift_beginAccess();
      v15 = *(v14 + 16);
      v16 = *(v15 + 16);
      if (v16)
      {

        v17 = (v15 + 96);
        do
        {
          v20 = *v17;
          if (v20 != 255 && (v20 & 1) != 0)
          {
            v21 = *(v17 - 6);
            v22 = *(v17 - 5);
            v23 = *(v17 - 3);
            v24 = *(v17 - 2);
            v25 = *(v17 - 1);
            v47 = DWORD2(v49);
            v48 = *(v17 - 4);
            sub_1AAEE2BCC(v21, v22, v48, v23, v24, v25, v20);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_1AAD6B0F4(0, *(v3 + 2) + 1, 1, v3);
            }

            v27 = *(v3 + 2);
            v26 = *(v3 + 3);
            v28 = v3;
            if (v27 >= v26 >> 1)
            {
              v28 = sub_1AAD6B0F4((v26 > 1), v27 + 1, 1, v3);
            }

            *(v28 + 2) = v27 + 1;
            v3 = v28;
            v18 = &v28[96 * v27];
            *(v18 + 4) = v21;
            *(v18 + 10) = v47;
            *(v18 + 6) = 0;
            *(v18 + 28) = 0;
            v19 = v56;
            *(v18 + 58) = v55;
            *(v18 + 31) = v19;
            *(v18 + 8) = 0;
            *(v18 + 9) = 0;
            *(v18 + 10) = v48;
            *(v18 + 11) = v23;
            *(v18 + 12) = v24;
            *(v18 + 13) = v25;
            *(v18 + 14) = v22;
            *(v18 + 15) = 0x3FF0000000000000;
          }

          v17 += 72;
          --v16;
        }

        while (v16);
      }

      else
      {
      }

      sub_1AAEE2B9C(&v49);

      v2 = v44;
      goto LABEL_5;
    }

    if (!v6)
    {
      break;
    }

LABEL_5:
    if (++v2 == v46)
    {
      return v3;
    }
  }

  v7 = v2;

  v9 = sub_1AAEE2718(v8);

  v10 = *(v9 + 16);
  v11 = *(v3 + 2);
  v12 = v11 + v10;
  if (!__OFADD__(v11, v10))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v13 = *(v3 + 3) >> 1, v13 >= v12))
    {
      if (!*(v9 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v40 = v11 + v10;
      }

      else
      {
        v40 = v11;
      }

      result = sub_1AAD6B0F4(result, v40, 1, v3);
      v3 = result;
      v13 = *(result + 24) >> 1;
      if (!*(v9 + 16))
      {
LABEL_3:

        if (v10)
        {
          goto LABEL_43;
        }

        goto LABEL_4;
      }
    }

    if (v13 - *(v3 + 2) < v10)
    {
      goto LABEL_44;
    }

    swift_arrayInitWithCopy();

    if (v10)
    {
      v41 = *(v3 + 2);
      v42 = __OFADD__(v41, v10);
      v43 = v41 + v10;
      if (v42)
      {
        goto LABEL_45;
      }

      *(v3 + 2) = v43;
    }

LABEL_4:

    v2 = v7;
    goto LABEL_5;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1AAEE2BCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1AAEE2BE4(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_1AAEE2BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_1AAE5214C(a1, a2, a3, a4, a5);
  }
}

void sub_1AAEE2C30()
{
  if (!qword_1ED9B2900)
  {
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2900);
    }
  }
}

uint64_t sub_1AAEE2DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAEE2E78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ChartDisplayList.ItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1AAEE3140()
{
  type metadata accessor for CGPoint(319);
  if (v0 <= 0x3F)
  {
    sub_1AAF8E244();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_1AAEE31F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1AAEE320C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAEE3254(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1AAEE32BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAEE3304(uint64_t result, int a2, int a3)
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

__n128 sub_1AAEE336C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AAEE3398(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAEE33E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AAEE3480()
{
  type metadata accessor for CGPoint(319);
  if (v0 <= 0x3F)
  {
    sub_1AAF8E244();
    if (v1 <= 0x3F)
    {
      sub_1AAEE357C(319, &qword_1ED9B2B00, sub_1AACAE258);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1AAEE357C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAEE35F8()
{
  type metadata accessor for CGPoint(319);
  if (v0 <= 0x3F)
  {
    sub_1AAF8E244();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ChartDisplayList.ClipRect(319);
      if (v2 <= 0x3F)
      {
        sub_1AAEE357C(319, &qword_1ED9B2B00, sub_1AACAE258);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1AAEE371C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 170))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAEE3764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 170) = 1;
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

    *(result + 170) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAEE3804()
{
  result = qword_1EB426B50;
  if (!qword_1EB426B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426B50);
  }

  return result;
}

uint64_t sub_1AAEE3870(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AAEEB514(a1, a2, a3, a4);
  if (v4)
  {

    __break(1u);
  }

  else
  {
    v6 = v5;

    return v6;
  }

  return result;
}

uint64_t sub_1AAEE38D8(void **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADAB4BC(v2);
  }

  v3 = v2[2];
  v16[0] = (v2 + 4);
  v16[1] = v3;
  result = sub_1AAF90464();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v14 = v1;
      v8 = -1;
      v9 = 1;
      v10 = v2;
      do
      {
        v11 = v8;
        v12 = v10;
        do
        {
          if (v12[73] >= v12[4])
          {
            break;
          }

          memcpy(__dst, v12 + 73, sizeof(__dst));
          memcpy(v12 + 73, v12 + 4, 0x228uLL);
          result = memcpy(v12 + 4, __dst, 0x228uLL);
          v12 -= 69;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 69;
        --v8;
      }

      while (v9 != v3);
      v1 = v14;
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1AAD46990();
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    __dst[0] = v7 + 32;
    __dst[1] = v6;
    sub_1AAEE9A90(__dst, v17, v16, v5);
    *(v7 + 16) = 0;
  }

  *v1 = v2;
  return result;
}

void *sub_1AAEE3A60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v4 = sub_1AAD6C4D8(*(a1 + 16), 0);
    v5 = sub_1AADA984C(__dst, v4 + 4, v1, a1);

    sub_1AACC9C00();
    if (v5 == v1)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = v2;
LABEL_5:
  __dst[0] = v4;
  sub_1AAEE38D8(__dst);
  v6 = __dst[0];
  v7 = __dst[0][2];
  if (v7)
  {
    v16 = v2;
    sub_1AAD41684(0, v7, 0);
    v8 = v16;
    v9 = v7 - 1;
    for (i = 4; ; i += 69)
    {
      memcpy(__dst, &v6[i], sizeof(__dst));
      sub_1AAEEBED8(__dst, v14, sub_1AAD46990);
      v16 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_1AAD41684((v11 > 1), v12 + 1, 1);
        v8 = v16;
      }

      v8[2] = v12 + 1;
      memcpy(&v8[68 * v12 + 4], &__dst[1], 0x220uLL);
      if (!v9)
      {
        break;
      }

      --v9;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1AAEE3C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = type metadata accessor for ChartDisplayList.RectangleItem(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v70 = (&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ChartDisplayList.BarItem(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v69 = (&v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 16) == *(a2 + 16))
  {
    v67 = *(a1 + 16);
    v65 = a2;
    v66 = a3;
    v14 = MEMORY[0x1E69E7CC0];
    v15 = sub_1AADF68C4(MEMORY[0x1E69E7CC0]);
    v74 = v15;
    v68 = a1;

    v16 = 0;
    v17 = 0;
    v64 = 0;
    v18 = 40;
LABEL_3:
    v19 = v18 + 48 * v17;
    while (1)
    {
      if (v67 == v17)
      {

        v55 = v65;

        v56 = v66;

        v57 = sub_1AAEE3870(v14, &v74, v55, v56);

        sub_1AAEE23A8(v57, v73);

        result = sub_1AACB4A98(v16);
        v59 = v73[1];
        *a5 = v73[0];
        a5[1] = v59;
        a5[2] = v73[2];
        return result;
      }

      if (v17 >= v67)
      {
        break;
      }

      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_60;
      }

      v21 = *(v68 + v19);
      v22 = *(v21 + 16);
      ++v17;
      v19 += 48;
      if (v22)
      {
        v60 = v20;
        v61 = v18;
        v62 = a4;
        v63 = a5;

        v23 = 0;
        v72 = v17 - 1;
        v71 = v22;
        while (1)
        {
          if (v23 >= *(v21 + 16))
          {
            goto LABEL_61;
          }

          v24 = *(v21 + 8 * v23 + 32);
          v25 = v24 >> 60;
          if ((v24 >> 60) > 4)
          {
            if (v25 > 6)
            {
              if (v25 == 8)
              {
                sub_1AAEE2D40((v24 & 0xFFFFFFFFFFFFFFFLL) + 16, v73);
                v27 = *&v73[0];

                sub_1AAEE2D78(v73);
                if (v15[2])
                {
                  goto LABEL_35;
                }

                goto LABEL_36;
              }

              v27 = *((v24 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              goto LABEL_23;
            }

            if (v25 == 5)
            {
              v28 = swift_projectBox();
              v29 = v69;
              sub_1AAEEBED8(v28, v69, type metadata accessor for ChartDisplayList.BarItem);
              v27 = *v29;

              v30 = type metadata accessor for ChartDisplayList.BarItem;
            }

            else
            {
              v31 = swift_projectBox();
              v29 = v70;
              sub_1AAEEBED8(v31, v70, type metadata accessor for ChartDisplayList.RectangleItem);
              v27 = *v29;

              v30 = type metadata accessor for ChartDisplayList.RectangleItem;
            }

            sub_1AAEEBE24(v29, v30);
            if (v15[2])
            {
LABEL_35:

              sub_1AADB0938(v27);
              v33 = v32;

              if (v33)
              {
                goto LABEL_41;
              }
            }
          }

          else if (v25 <= 1)
          {
            if (!v25)
            {
              v27 = *(v24 + 16);
LABEL_23:

              if (v15[2])
              {
                goto LABEL_35;
              }

              goto LABEL_36;
            }

            sub_1AAEE2F40((v24 & 0xFFFFFFFFFFFFFFFLL) + 16, v73);
            v27 = *&v73[0];

            sub_1AAEE2F78(v73);
            if (v15[2])
            {
              goto LABEL_35;
            }
          }

          else
          {
            v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) + 16;
            if (v25 == 2)
            {
              sub_1AAEE2ED8(v26, v73);
              v27 = *&v73[0];

              sub_1AAEE2F10(v73);
              if (v15[2])
              {
                goto LABEL_35;
              }
            }

            else if (v25 == 3)
            {
              sub_1AAEE2B64(v26, v73);
              v27 = *&v73[0];

              sub_1AAEE2B9C(v73);
              if (v15[2])
              {
                goto LABEL_35;
              }
            }

            else
            {
              sub_1AAEE2E10(v26, v73);
              v27 = *&v73[0];

              sub_1AAEE2E48(v73);
              if (v15[2])
              {
                goto LABEL_35;
              }
            }
          }

LABEL_36:

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1AAD6B3A0(0, *(v14 + 2) + 1, 1, v14);
          }

          v35 = *(v14 + 2);
          v34 = *(v14 + 3);
          if (v35 >= v34 >> 1)
          {
            v14 = sub_1AAD6B3A0((v34 > 1), v35 + 1, 1, v14);
          }

          *(v14 + 2) = v35 + 1;
          *&v14[8 * v35 + 32] = v27;
LABEL_41:
          sub_1AACB4A98(v16);
          v15 = v74;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v73[0] = v15;
          v38 = sub_1AADB0938(v27);
          v39 = v15[2];
          v40 = (v37 & 1) == 0;
          v41 = v39 + v40;
          if (__OFADD__(v39, v40))
          {
            goto LABEL_62;
          }

          v42 = v37;
          if (v15[3] >= v41)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v74 = v15;
              if ((v37 & 1) == 0)
              {
                goto LABEL_50;
              }
            }

            else
            {
              sub_1AAD992C8();
              v15 = *&v73[0];
              v74 = *&v73[0];
              if ((v42 & 1) == 0)
              {
                goto LABEL_50;
              }
            }
          }

          else
          {
            sub_1AAD90A40(v41, isUniquelyReferenced_nonNull_native);
            v15 = *&v73[0];
            v43 = sub_1AADB0938(v27);
            if ((v42 & 1) != (v44 & 1))
            {
              goto LABEL_65;
            }

            v38 = v43;
            v74 = v15;
            if ((v42 & 1) == 0)
            {
LABEL_50:
              v15[(v38 >> 6) + 8] |= 1 << v38;
              *(v15[6] + 8 * v38) = v27;
              *(v15[7] + 8 * v38) = MEMORY[0x1E69E7CC0];
              v45 = v15[2];
              v46 = __OFADD__(v45, 1);
              v47 = v45 + 1;
              if (v46)
              {
                goto LABEL_63;
              }

              v15[2] = v47;
              goto LABEL_52;
            }
          }

LABEL_52:
          v48 = v15[7];
          v49 = *(v48 + 8 * v38);
          v50 = swift_isUniquelyReferenced_nonNull_native();
          *(v48 + 8 * v38) = v49;
          v51 = v14;
          if ((v50 & 1) == 0)
          {
            v49 = sub_1AAD6B378(0, v49[2] + 1, 1, v49);
            *(v48 + 8 * v38) = v49;
          }

          v53 = v49[2];
          v52 = v49[3];
          if (v53 >= v52 >> 1)
          {
            v49 = sub_1AAD6B378((v52 > 1), v53 + 1, 1, v49);
            *(v48 + 8 * v38) = v49;
          }

          ++v23;
          v49[2] = v53 + 1;
          v54 = &v49[2 * v53];
          v54[4] = v72;
          v54[5] = v24;
          v16 = sub_1AACAEEC4;
          v14 = v51;
          if (v71 == v23)
          {

            v16 = sub_1AACAEEC4;
            a5 = v63;
            a4 = v62;
            v18 = v61;
            v17 = v60;
            goto LABEL_3;
          }
        }
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  __break(1u);
LABEL_65:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AAEE4398@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v6 = *a2;
  if (!*(*a2 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  result = sub_1AADB0938(*result);
  if ((v9 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v32 = a5;
  v10 = *(*(v6 + 56) + 8 * result);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v33 = MEMORY[0x1E69E7CC0];

    sub_1AAD214F4(0, v11, 0);
    v13 = v33;
    v14 = (v10 + 32);
    v15 = *(v33 + 16);
    v16 = v11;
    do
    {
      v18 = *v14;
      v14 += 2;
      v17 = v18;
      v19 = *(v33 + 24);
      if (v15 >= v19 >> 1)
      {
        sub_1AAD214F4((v19 > 1), v15 + 1, 1);
      }

      *(v33 + 16) = v15 + 1;
      *(v33 + 8 * v15++ + 32) = v17;
      --v16;
    }

    while (v16);
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1AAD21514(v13, a3, a4);
  v22 = v21;
  v24 = v23;

  if (v11)
  {
    v31 = v24;
    sub_1AAD41614(0, v11, 0);
    v25 = v12;
    v26 = *(v12 + 16);
    v27 = 40;
    do
    {
      v28 = *(v10 + v27);
      v29 = *(v25 + 24);

      if (v26 >= v29 >> 1)
      {
        sub_1AAD41614((v29 > 1), v26 + 1, 1);
      }

      *(v25 + 16) = v26 + 1;
      *(v25 + 8 * v26 + 32) = v28;
      v27 += 16;
      ++v26;
      --v11;
    }

    while (v11);

    v24 = v31;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  v30 = sub_1AAEE45E0(v25, v20, v22, v24);

  *v32 = v30;
  return result;
}

unint64_t sub_1AAEE45E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v171 = a2;
  v167 = type metadata accessor for ChartDisplayList.RectangleItem(0);
  v165 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v8 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for ChartDisplayList.BarItem(0);
  v164 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v10 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v168 = v8;
    v169 = a3;
    v170 = a4;
    *&v172 = MEMORY[0x1E69E7CC0];
    sub_1AAD41944(0, v11, 0);
    v12 = v172;
    v13 = a1;
    v14 = (a1 + 32);
    v15 = *(v172 + 16);
    v16 = v11;
    do
    {
      v18 = *v14++;
      v17 = v18;
      *&v172 = v12;
      v19 = *(v12 + 24);
      if (v15 >= v19 >> 1)
      {
        sub_1AAD41944((v19 > 1), v15 + 1, 1);
        v12 = v172;
      }

      *(v12 + 16) = v15 + 1;
      *(v12 + v15++ + 32) = v17 >> 60;
      --v16;
    }

    while (v16);
    a3 = v169;
    a4 = v170;
    v8 = v168;
  }

  else
  {
    v13 = a1;
  }

  result = sub_1AAF0DE64(v12);
  if ((result & 1) == 0)
  {

    if (v11)
    {
      v37 = *(v13 + 8 * v11 + 24);

      return v37;
    }

    goto LABEL_106;
  }

  if (!*(v12 + 16))
  {
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v21 = *(v12 + 32);

  if (v21 <= 4)
  {
    v22 = MEMORY[0x1E69E7CC0];
    if (v21 <= 1)
    {
      if (v21)
      {
        if (v11)
        {
          v182[0] = MEMORY[0x1E69E7CC0];
          result = sub_1AAD418F4(0, v11, 0);
          v22 = v182[0];
          v125 = (v13 + 32);
          do
          {
            v127 = *v125++;
            v126 = v127;
            if (v127 >> 60 != 1)
            {
              goto LABEL_112;
            }

            result = sub_1AAEE2F40((v126 & 0xFFFFFFFFFFFFFFFLL) + 16, &v172);
            v182[0] = v22;
            v129 = *(v22 + 16);
            v128 = *(v22 + 24);
            if (v129 >= v128 >> 1)
            {
              result = sub_1AAD418F4((v128 > 1), v129 + 1, 1);
              v22 = v182[0];
            }

            *(v22 + 16) = v129 + 1;
            v130 = (v22 + 176 * v129);
            v131 = v172;
            v132 = v174;
            v130[3] = v173;
            v130[4] = v132;
            v130[2] = v131;
            v133 = v175;
            v134 = v176;
            v135 = v178;
            v130[7] = v177;
            v130[8] = v135;
            v130[5] = v133;
            v130[6] = v134;
            v136 = v179;
            v137 = v180;
            v138 = v181[0];
            *(v130 + 186) = *(v181 + 10);
            v130[10] = v137;
            v130[11] = v138;
            v130[9] = v136;
          }

          while (--v11);
        }

        v161 = swift_allocObject();
        sub_1AAEE54B8(v22, v171, a3, (v161 + 16));

        return v161 | 0x1000000000000000;
      }

      else
      {
        if (v11)
        {
          v183 = MEMORY[0x1E69E7CC0];
          result = sub_1AAD41924(0, v11, 0);
          v50 = *(v13 + 32);
          if (v50 >> 60)
          {
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          v22 = v183;
          v51 = (v13 + 40);
          v52 = v11 - 1;
          while (1)
          {
            v53 = *(v50 + 32);
            v172 = *(v50 + 16);
            v173 = v53;
            v54 = *(v50 + 64);
            v174 = *(v50 + 48);
            v175 = v54;
            result = sub_1AAEE2FA8(&v172, v182);
            v183 = v22;
            v56 = *(v22 + 16);
            v55 = *(v22 + 24);
            if (v56 >= v55 >> 1)
            {
              result = sub_1AAD41924((v55 > 1), v56 + 1, 1);
              v22 = v183;
            }

            *(v22 + 16) = v56 + 1;
            v57 = (v22 + (v56 << 6));
            v58 = v172;
            v59 = v173;
            v60 = v175;
            v57[4] = v174;
            v57[5] = v60;
            v57[2] = v58;
            v57[3] = v59;
            if (!v52)
            {
              break;
            }

            v61 = *v51++;
            v50 = v61;
            --v52;
            if (v61 >> 60)
            {
              goto LABEL_115;
            }
          }
        }

        v37 = swift_allocObject();
        sub_1AAEE5334(v22, v171, a3, a4, &v172);

        v157 = v173;
        v37[1] = v172;
        v37[2] = v157;
        v158 = v175;
        v37[3] = v174;
        v37[4] = v158;
      }

      return v37;
    }

    if (v21 != 2)
    {
      if (v21 == 3)
      {
        if (v11)
        {
          v182[0] = MEMORY[0x1E69E7CC0];
          result = sub_1AAD41894(0, v11, 0);
          v22 = v182[0];
          v23 = (v13 + 32);
          do
          {
            v25 = *v23++;
            v24 = v25;
            if (v25 >> 60 != 3)
            {
              goto LABEL_108;
            }

            result = sub_1AAEE2B64((v24 & 0xFFFFFFFFFFFFFFFLL) + 16, &v172);
            v182[0] = v22;
            v27 = *(v22 + 16);
            v26 = *(v22 + 24);
            if (v27 >= v26 >> 1)
            {
              result = sub_1AAD41894((v26 > 1), v27 + 1, 1);
              v22 = v182[0];
            }

            *(v22 + 16) = v27 + 1;
            v28 = (v22 + 176 * v27);
            v29 = v172;
            v30 = v174;
            v28[3] = v173;
            v28[4] = v30;
            v28[2] = v29;
            v31 = v175;
            v32 = v176;
            v33 = v178;
            v28[7] = v177;
            v28[8] = v33;
            v28[5] = v31;
            v28[6] = v32;
            v34 = v179;
            v35 = v180;
            v36 = v181[0];
            *(v28 + 186) = *(v181 + 10);
            v28[10] = v35;
            v28[11] = v36;
            v28[9] = v34;
          }

          while (--v11);
        }

        v154 = swift_allocObject();
        sub_1AAEE5C8C(v22, v171, a3, a4, v154 + 16);

        return v154 | 0x3000000000000000;
      }

      else
      {
        if (v11)
        {
          v182[0] = MEMORY[0x1E69E7CC0];
          result = sub_1AAD41874(0, v11, 0);
          v22 = v182[0];
          v98 = (v13 + 32);
          do
          {
            v100 = *v98++;
            v99 = v100;
            if (v100 >> 60 != 4)
            {
              goto LABEL_111;
            }

            result = sub_1AAEE2E10((v99 & 0xFFFFFFFFFFFFFFFLL) + 16, &v172);
            v182[0] = v22;
            v102 = *(v22 + 16);
            v101 = *(v22 + 24);
            if (v102 >= v101 >> 1)
            {
              result = sub_1AAD41874((v101 > 1), v102 + 1, 1);
              v22 = v182[0];
            }

            *(v22 + 16) = v102 + 1;
            v103 = v22 + 136 * v102;
            *(v103 + 32) = v172;
            v104 = v173;
            v105 = v174;
            v106 = v176;
            *(v103 + 80) = v175;
            *(v103 + 96) = v106;
            *(v103 + 48) = v104;
            *(v103 + 64) = v105;
            v107 = v177;
            v108 = v178;
            v109 = v179;
            *(v103 + 160) = v180;
            *(v103 + 128) = v108;
            *(v103 + 144) = v109;
            *(v103 + 112) = v107;
          }

          while (--v11);
        }

        v156 = swift_allocObject();
        sub_1AAEE5F20(v22, v171, a3, a4, v156 + 16);

        return v156 | 0x4000000000000000;
      }
    }

    if (!v11)
    {
LABEL_96:
      v149 = swift_allocObject();
      sub_1AAEE5778(v22, v171, a3, a4, (v149 + 16));

      return v149 | 0x2000000000000000;
    }

    v182[0] = MEMORY[0x1E69E7CC0];
    result = sub_1AAD418C4(0, v11, 0);
    v22 = v182[0];
    v68 = (v13 + 32);
    while (1)
    {
      v70 = *v68++;
      v69 = v70;
      if (v70 >> 60 != 2)
      {
        break;
      }

      result = sub_1AAEE2ED8((v69 & 0xFFFFFFFFFFFFFFFLL) + 16, &v172);
      v182[0] = v22;
      v72 = *(v22 + 16);
      v71 = *(v22 + 24);
      if (v72 >= v71 >> 1)
      {
        result = sub_1AAD418C4((v71 > 1), v72 + 1, 1);
        v22 = v182[0];
      }

      *(v22 + 16) = v72 + 1;
      v73 = (v22 + 176 * v72);
      v74 = v172;
      v75 = v174;
      v73[3] = v173;
      v73[4] = v75;
      v73[2] = v74;
      v76 = v175;
      v77 = v176;
      v78 = v178;
      v73[7] = v177;
      v73[8] = v78;
      v73[5] = v76;
      v73[6] = v77;
      v79 = v179;
      v80 = v180;
      v81 = v181[0];
      *(v73 + 186) = *(v181 + 10);
      v73[10] = v80;
      v73[11] = v81;
      v73[9] = v79;
      if (!--v11)
      {
        goto LABEL_96;
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v38 = MEMORY[0x1E69E7CC0];
  if (v21 <= 6)
  {
    if (v21 == 5)
    {
      if (v11)
      {
        *&v172 = MEMORY[0x1E69E7CC0];
        result = sub_1AAD41824(0, v11, 0);
        v38 = v172;
        v62 = (v13 + 32);
        v63 = v164;
        do
        {
          v64 = *v62++;
          if (v64 >> 60 != 5)
          {
            goto LABEL_110;
          }

          v65 = swift_projectBox();
          sub_1AAEEBED8(v65, v10, type metadata accessor for ChartDisplayList.BarItem);
          *&v172 = v38;
          v67 = *(v38 + 16);
          v66 = *(v38 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_1AAD41824(v66 > 1, v67 + 1, 1);
            v38 = v172;
          }

          *(v38 + 16) = v67 + 1;
          result = sub_1AAEEBD58(v10, v38 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v67, type metadata accessor for ChartDisplayList.BarItem);
        }

        while (--v11);
      }

      v159 = swift_allocBox();
      sub_1AAEE61B8(v38, v171, a3, a4, v160);

      return v159 | 0x5000000000000000;
    }

    else
    {
      if (v11)
      {
        *&v172 = MEMORY[0x1E69E7CC0];
        result = sub_1AAD417D4(0, v11, 0);
        v38 = v172;
        v139 = (v13 + 32);
        v140 = v165;
        do
        {
          v141 = *v139++;
          if (v141 >> 60 != 6)
          {
            goto LABEL_113;
          }

          v142 = swift_projectBox();
          sub_1AAEEBED8(v142, v8, type metadata accessor for ChartDisplayList.RectangleItem);
          *&v172 = v38;
          v144 = *(v38 + 16);
          v143 = *(v38 + 24);
          if (v144 >= v143 >> 1)
          {
            sub_1AAD417D4(v143 > 1, v144 + 1, 1);
            v38 = v172;
          }

          *(v38 + 16) = v144 + 1;
          result = sub_1AAEEBD58(v8, v38 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v144, type metadata accessor for ChartDisplayList.RectangleItem);
        }

        while (--v11);
      }

      v162 = swift_allocBox();
      sub_1AAEE6A5C(v38, v171, a3, a4, v163);

      return v162 | 0x6000000000000000;
    }
  }

  if (v21 == 7)
  {
    if (v11)
    {
      v183 = MEMORY[0x1E69E7CC0];
      result = sub_1AAD417B4(0, v11, 0);
      v82 = *(v13 + 32);
      if (v82 >> 60 != 7)
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v38 = v183;
      v83 = (v13 + 40);
      v84 = v11 - 1;
      while (1)
      {
        v85 = (v82 & 0xFFFFFFFFFFFFFFFLL);
        v86 = v85[5];
        v175 = v85[4];
        v176 = v86;
        v87 = v85[7];
        v177 = v85[6];
        v178 = v87;
        v88 = v85[2];
        v172 = v85[1];
        v173 = v88;
        v174 = v85[3];
        result = sub_1AAEEBACC(&v172, v182);
        v183 = v38;
        v90 = *(v38 + 16);
        v89 = *(v38 + 24);
        if (v90 >= v89 >> 1)
        {
          result = sub_1AAD417B4((v89 > 1), v90 + 1, 1);
          v38 = v183;
        }

        *(v38 + 16) = v90 + 1;
        v91 = (v38 + 112 * v90);
        v92 = v172;
        v93 = v174;
        v91[3] = v173;
        v91[4] = v93;
        v91[2] = v92;
        v94 = v175;
        v95 = v176;
        v96 = v178;
        v91[7] = v177;
        v91[8] = v96;
        v91[5] = v94;
        v91[6] = v95;
        if (!v84)
        {
          break;
        }

        v97 = *v83++;
        v82 = v97;
        --v84;
        if (v97 >> 60 != 7)
        {
          goto LABEL_114;
        }
      }
    }

    v145 = swift_allocObject();
    sub_1AAEE7128(v38, v171, a3, a4, &v172);

    v146 = v177;
    *(v145 + 80) = v176;
    *(v145 + 96) = v146;
    *(v145 + 112) = v178;
    v147 = v173;
    *(v145 + 16) = v172;
    *(v145 + 32) = v147;
    v148 = v175;
    *(v145 + 48) = v174;
    *(v145 + 64) = v148;
    return v145 | 0x7000000000000000;
  }

  if (v21 == 8)
  {
    if (v11)
    {
      v182[0] = MEMORY[0x1E69E7CC0];
      result = sub_1AAD41794(0, v11, 0);
      v38 = v182[0];
      v39 = (v13 + 32);
      do
      {
        v41 = *v39++;
        v40 = v41;
        if (v41 >> 60 != 8)
        {
          goto LABEL_109;
        }

        result = sub_1AAEE2D40((v40 & 0xFFFFFFFFFFFFFFFLL) + 16, &v172);
        v182[0] = v38;
        v43 = *(v38 + 16);
        v42 = *(v38 + 24);
        if (v43 >= v42 >> 1)
        {
          result = sub_1AAD41794((v42 > 1), v43 + 1, 1);
          v38 = v182[0];
        }

        *(v38 + 16) = v43 + 1;
        v44 = v38 + 104 * v43;
        v45 = v172;
        v46 = v174;
        *(v44 + 48) = v173;
        *(v44 + 64) = v46;
        *(v44 + 32) = v45;
        v47 = v175;
        v48 = v176;
        v49 = v177;
        *(v44 + 128) = v178;
        *(v44 + 96) = v48;
        *(v44 + 112) = v49;
        *(v44 + 80) = v47;
      }

      while (--v11);
    }

    v155 = swift_allocObject();
    sub_1AAEE73B0(v38, v171, a3, a4, v155 + 16);

    return v155 | 0x8000000000000000;
  }

  if (!v11)
  {
LABEL_97:
    v150 = swift_allocObject();
    sub_1AAEE754C(v38, v171, a3, a4, &v172);

    v151 = v175;
    *(v150 + 48) = v174;
    *(v150 + 64) = v151;
    v152 = v177;
    *(v150 + 80) = v176;
    *(v150 + 96) = v152;
    v153 = v173;
    v37 = (v150 | 0x9000000000000000);
    *(v150 + 16) = v172;
    *(v150 + 32) = v153;
    return v37;
  }

  v183 = MEMORY[0x1E69E7CC0];
  result = sub_1AAD41774(0, v11, 0);
  v110 = *(v13 + 32);
  if (v110 >> 60 == 9)
  {
    v38 = v183;
    v111 = (v13 + 40);
    v112 = v11 - 1;
    do
    {
      v113 = (v110 & 0xFFFFFFFFFFFFFFFLL);
      v114 = v113[4];
      v174 = v113[3];
      v175 = v114;
      v115 = v113[6];
      v176 = v113[5];
      v177 = v115;
      v116 = v113[2];
      v172 = v113[1];
      v173 = v116;
      result = sub_1AAEE2B2C(&v172, v182);
      v183 = v38;
      v118 = *(v38 + 16);
      v117 = *(v38 + 24);
      if (v118 >= v117 >> 1)
      {
        result = sub_1AAD41774((v117 > 1), v118 + 1, 1);
        v38 = v183;
      }

      *(v38 + 16) = v118 + 1;
      v119 = (v38 + 96 * v118);
      v120 = v173;
      v119[2] = v172;
      v119[3] = v120;
      v121 = v174;
      v122 = v175;
      v123 = v177;
      v119[6] = v176;
      v119[7] = v123;
      v119[4] = v121;
      v119[5] = v122;
      if (!v112)
      {
        goto LABEL_97;
      }

      v124 = *v111++;
      v110 = v124;
      --v112;
    }

    while (v124 >> 60 == 9);
  }

LABEL_116:
  __break(1u);
  return result;
}

uint64_t sub_1AAEE5334@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = result;
    v8 = (result + (v5 << 6));
    v9 = *(v8 - 1);
    v33[0] = *(v8 - 2);
    v33[1] = v9;
    v10 = v8[1];
    v33[2] = *v8;
    v33[3] = v10;
    v11 = *&v33[0];
    sub_1AAEE2FA8(v33, v30);
    v30[0] = MEMORY[0x1E69E7CC0];
    v22 = v11;

    sub_1AAD41644(0, v5, 0);
    v12 = v30[0];
    v13 = (v6 + 64);
    do
    {
      v14 = *(v13 - 4);
      v15 = *(v13 - 1);
      v26 = v13[1];
      v28 = *v13;
      v30[0] = v12;
      v16 = *(v12 + 16);
      v17 = *(v12 + 24);

      if (v16 >= v17 >> 1)
      {
        sub_1AAD41644((v17 > 1), v16 + 1, 1);
        v12 = v30[0];
      }

      *(v12 + 16) = v16 + 1;
      v18 = v12 + 48 * v16;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      *(v18 + 48) = v28;
      *(v18 + 64) = v26;
      v13 += 4;
      --v5;
    }

    while (v5);
    v19 = DWORD2(v33[0]);
    sub_1AAEE3C30(v30, v12, a2, a3, a4);
    v20 = v30[0];
    v21 = v30[1];
    v27 = v32;
    v29 = v31;

    result = sub_1AAEE3048(v33);
    *a5 = v22;
    *(a5 + 8) = v19;
    *(a5 + 16) = v20;
    *(a5 + 24) = v21;
    *(a5 + 32) = v29;
    *(a5 + 48) = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEE54B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = result + 32;
    sub_1AAEE2F40(result + 32 + 176 * v4 - 176, a4);
    v8 = MEMORY[0x1E69E7CC0];
    *&v40 = MEMORY[0x1E69E7CC0];
    sub_1AAD413CC(0, v4, 0);
    v9 = v40;
    v10 = v7;
    v11 = v4;
    do
    {
      sub_1AAEE2F40(v10, v43);
      v38 = v45;
      v39 = v44;
      sub_1AAEE2F78(v43);
      *&v40 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1AAD413CC((v12 > 1), v13 + 1, 1);
        v9 = v40;
      }

      *(v9 + 16) = v13 + 1;
      v14 = v9 + 32 * v13;
      *(v14 + 32) = v39;
      *(v14 + 48) = v38;
      v10 += 176;
      --v11;
    }

    while (v11);
    sub_1AAEEA300(v9, a2);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    a4[4] = v16;
    a4[5] = v18;
    a4[6] = v20;
    a4[7] = v22;
    sub_1AAD1FAF4(0, v4, 0);
    v23 = v8;
    v24 = v7;
    v25 = v4;
    do
    {
      sub_1AAEE2F40(v24, v43);
      v26 = v46[6];
      sub_1AAEE2F78(v43);
      *&v40 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1AAD1FAF4((v27 > 1), v28 + 1, 1);
        v23 = v40;
      }

      *(v23 + 16) = v28 + 1;
      *(v23 + 8 * v28 + 32) = v26;
      v24 += 176;
      --v25;
    }

    while (v25);
    sub_1AAD1FF48(v23, a2);
    v30 = v29;

    a4[19] = v30;
    v42 = v8;
    sub_1AAD416A4(0, v4, 0);
    v31 = v8;
    do
    {
      sub_1AAEE2F40(v7, v43);
      sub_1AAEEBB28(v46, &v40);
      sub_1AAEE2F78(v43);
      v42 = v31;
      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1AAD416A4((v32 > 1), v33 + 1, 1);
        v31 = v42;
      }

      *(v31 + 16) = v33 + 1;
      v34 = (v31 + 48 * v33);
      v35 = v40;
      v36 = v41[0];
      *(v34 + 57) = *(v41 + 9);
      v34[2] = v35;
      v34[3] = v36;
      v7 += 176;
      --v4;
    }

    while (v4);
    sub_1AAEE7AE0(v31, a2, a3, v43);

    return sub_1AAEEBB84(v43, (a4 + 13));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEE5778@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v9 = result + 32;
    sub_1AAEE2ED8(result + 32 + 176 * v5 - 176, a5);
    *&v57 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v10 = v57;
    v11 = v9;
    v12 = v5;
    do
    {
      sub_1AAEE2ED8(v11, v60);
      v13 = v61;
      sub_1AAEE2F10(v60);
      *&v57 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AAD1FAF4((v14 > 1), v15 + 1, 1);
        v10 = v57;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 8 * v15 + 32) = v13;
      v11 += 176;
      --v12;
    }

    while (v12);

    sub_1AAEE85D4(v10, a3, a4);
    v17 = v16;

    a5[4] = v17;
    *&v57 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v18 = v57;
    v19 = v9;
    v20 = v5;
    do
    {
      sub_1AAEE2ED8(v19, v60);
      v21 = v63;
      sub_1AAEE2F10(v60);
      *&v57 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1AAD1FAF4((v22 > 1), v23 + 1, 1);
        v18 = v57;
      }

      *(v18 + 16) = v23 + 1;
      *(v18 + 8 * v23 + 32) = v21;
      v19 += 176;
      --v20;
    }

    while (v20);

    sub_1AAEE85D4(v18, a3, a4);
    v25 = v24;

    a5[6] = v25;
    *&v57 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v26 = v57;
    v27 = v9;
    v28 = v5;
    do
    {
      sub_1AAEE2ED8(v27, v60);
      v29 = v62;
      sub_1AAEE2F10(v60);
      *&v57 = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1AAD1FAF4((v30 > 1), v31 + 1, 1);
        v26 = v57;
      }

      *(v26 + 16) = v31 + 1;
      *(v26 + 8 * v31 + 32) = v29;
      v27 += 176;
      --v28;
    }

    while (v28);

    sub_1AAEE88D4(v26, a3, a4);
    v33 = v32;

    a5[5] = v33;
    *&v57 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v34 = v57;
    v35 = v9;
    v36 = v5;
    do
    {
      sub_1AAEE2ED8(v35, v60);
      v37 = v64;
      sub_1AAEE2F10(v60);
      *&v57 = v34;
      v39 = *(v34 + 16);
      v38 = *(v34 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1AAD1FAF4((v38 > 1), v39 + 1, 1);
        v34 = v57;
      }

      *(v34 + 16) = v39 + 1;
      *(v34 + 8 * v39 + 32) = v37;
      v35 += 176;
      --v36;
    }

    while (v36);

    sub_1AAEE88D4(v34, a3, a4);
    v41 = v40;

    a5[7] = v41;
    *&v57 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v42 = v57;
    v43 = v9;
    v44 = v5;
    do
    {
      sub_1AAEE2ED8(v43, v60);
      v45 = v65[11];
      sub_1AAEE2F10(v60);
      *&v57 = v42;
      v47 = *(v42 + 16);
      v46 = *(v42 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1AAD1FAF4((v46 > 1), v47 + 1, 1);
        v42 = v57;
      }

      *(v42 + 16) = v47 + 1;
      *(v42 + 8 * v47 + 32) = v45;
      v43 += 176;
      --v44;
    }

    while (v44);
    sub_1AAD1FF48(v42, a2);
    v49 = v48;

    a5[19] = v49;
    v59 = MEMORY[0x1E69E7CC0];
    sub_1AAD416A4(0, v5, 0);
    v50 = v59;
    do
    {
      sub_1AAEE2ED8(v9, v60);
      sub_1AAEEBB28(v65, &v57);
      sub_1AAEE2F10(v60);
      v59 = v50;
      v52 = *(v50 + 16);
      v51 = *(v50 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1AAD416A4((v51 > 1), v52 + 1, 1);
        v50 = v59;
      }

      *(v50 + 16) = v52 + 1;
      v53 = (v50 + 48 * v52);
      v54 = v57;
      v55 = v58[0];
      *(v53 + 57) = *(v58 + 9);
      v53[2] = v54;
      v53[3] = v55;
      v9 += 176;
      --v5;
    }

    while (v5);
    sub_1AAEE7AE0(v50, a2, a3, v60);

    return sub_1AAEEBB84(v60, (a5 + 8));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEE5C8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v8 = result + 32;
    sub_1AAEE2B64(result + 32 + 176 * v5 - 176, a5);
    v9 = MEMORY[0x1E69E7CC0];
    *&v29 = MEMORY[0x1E69E7CC0];
    sub_1AAF901E4();
    v10 = v8;
    v11 = v5;
    do
    {
      sub_1AAEE2B64(v10, v32);

      sub_1AAEE2B9C(v32);
      sub_1AAF901B4();
      sub_1AAF901F4();
      sub_1AAF90204();
      sub_1AAF901C4();
      v10 += 176;
      --v11;
    }

    while (v11);
    v12 = sub_1AAEEAA74(v29, a3, a4);

    *(a5 + 32) = v12;
    sub_1AAD1FAF4(0, v5, 0);
    v13 = v9;
    v14 = v8;
    v15 = v5;
    do
    {
      sub_1AAEE2B64(v14, v32);
      v16 = v33[11];
      sub_1AAEE2B9C(v32);
      *&v29 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AAD1FAF4((v17 > 1), v18 + 1, 1);
        v13 = v29;
      }

      *(v13 + 16) = v18 + 1;
      *(v13 + 8 * v18 + 32) = v16;
      v14 += 176;
      --v15;
    }

    while (v15);
    sub_1AAD1FF48(v13, a2);
    v20 = v19;

    *(a5 + 136) = v20;
    v31 = v9;
    sub_1AAD416A4(0, v5, 0);
    v21 = v9;
    do
    {
      sub_1AAEE2B64(v8, v32);
      sub_1AAEEBB28(v33, &v29);
      sub_1AAEE2B9C(v32);
      v31 = v21;
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1AAD416A4((v22 > 1), v23 + 1, 1);
        v21 = v31;
      }

      *(v21 + 16) = v23 + 1;
      v24 = (v21 + 48 * v23);
      v25 = v29;
      v26 = v30[0];
      *(v24 + 57) = *(v30 + 9);
      v24[2] = v25;
      v24[3] = v26;
      v8 += 176;
      --v5;
    }

    while (v5);
    sub_1AAEE7AE0(v21, a2, a3, v32);

    return sub_1AAEEBB84(v32, a5 + 48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEE5F20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v8 = result + 32;
    sub_1AAEE2E10(result + 32 + 136 * v5 - 136, a5);
    v9 = MEMORY[0x1E69E7CC0];
    *&v29 = MEMORY[0x1E69E7CC0];
    sub_1AAF901E4();
    v10 = v8;
    v11 = v5;
    do
    {
      sub_1AAEE2E10(v10, v32);

      sub_1AAEE2E48(v32);
      sub_1AAF901B4();
      sub_1AAF901F4();
      sub_1AAF90204();
      sub_1AAF901C4();
      v10 += 136;
      --v11;
    }

    while (v11);
    v12 = sub_1AAEEB1B0(v29, a3, a4);

    *(a5 + 32) = v12;
    sub_1AAD1FAF4(0, v5, 0);
    v13 = v9;
    v14 = v8;
    v15 = v5;
    do
    {
      sub_1AAEE2E10(v14, v32);
      v16 = v33[6];
      sub_1AAEE2E48(v32);
      *&v29 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AAD1FAF4((v17 > 1), v18 + 1, 1);
        v13 = v29;
      }

      *(v13 + 16) = v18 + 1;
      *(v13 + 8 * v18 + 32) = v16;
      v14 += 136;
      --v15;
    }

    while (v15);
    sub_1AAD1FF48(v13, a2);
    v20 = v19;

    *(a5 + 96) = v20;
    v31 = v9;
    sub_1AAD416A4(0, v5, 0);
    v21 = v9;
    do
    {
      sub_1AAEE2E10(v8, v32);
      sub_1AAEEBB28(v33, &v29);
      sub_1AAEE2E48(v32);
      v31 = v21;
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1AAD416A4((v22 > 1), v23 + 1, 1);
        v21 = v31;
      }

      *(v21 + 16) = v23 + 1;
      v24 = (v21 + 48 * v23);
      v25 = v29;
      v26 = v30[0];
      *(v24 + 57) = *(v30 + 9);
      v24[2] = v25;
      v24[3] = v26;
      v8 += 136;
      --v5;
    }

    while (v5);
    sub_1AAEE7AE0(v21, a2, a3, v32);

    return sub_1AAEEBB84(v32, a5 + 48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AAEE61B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a3;
  v81 = a4;
  v78 = a2;
  v7 = type metadata accessor for ChartDisplayList.ClipRect(0);
  v82 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  v83 = type metadata accessor for ChartDisplayList.BarItem(0);
  MEMORY[0x1EEE9AC00](v83);
  v15 = (&v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a1 + 16);
  if (v16)
  {
    v77 = v12;
    v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    v79 = a5;
    sub_1AAEEBED8(v17 + v18 * (v16 - 1), a5, type metadata accessor for ChartDisplayList.BarItem);
    *&v85 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v16, 0);
    v19 = v85;
    v20 = v17;
    v21 = v16;
    do
    {
      sub_1AAEEBED8(v20, v15, type metadata accessor for ChartDisplayList.BarItem);
      v22 = v15[4];
      sub_1AAEEBE24(v15, type metadata accessor for ChartDisplayList.BarItem);
      *&v85 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1AAD1FAF4((v23 > 1), v24 + 1, 1);
        v19 = v85;
      }

      *(v19 + 16) = v24 + 1;
      *(v19 + 8 * v24 + 32) = v22;
      v20 += v18;
      --v21;
    }

    while (v21);
    v25 = v81;

    sub_1AAEE85D4(v19, v80, v25);
    v27 = v26;

    v79[4] = v27;
    *&v85 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v16, 0);
    v28 = v85;
    v29 = v17;
    v30 = v16;
    do
    {
      sub_1AAEEBED8(v29, v15, type metadata accessor for ChartDisplayList.BarItem);
      v31 = v15[5];
      sub_1AAEEBE24(v15, type metadata accessor for ChartDisplayList.BarItem);
      *&v85 = v28;
      v33 = *(v28 + 16);
      v32 = *(v28 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1AAD1FAF4((v32 > 1), v33 + 1, 1);
        v28 = v85;
      }

      *(v28 + 16) = v33 + 1;
      *(v28 + 8 * v33 + 32) = v31;
      v29 += v18;
      --v30;
    }

    while (v30);
    v34 = v81;

    sub_1AAEE85D4(v28, v80, v34);
    v36 = v35;

    v79[5] = v36;
    *&v85 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v16, 0);
    v37 = v85;
    v38 = v17;
    v39 = v16;
    do
    {
      sub_1AAEEBED8(v38, v15, type metadata accessor for ChartDisplayList.BarItem);
      v40 = v15[6];
      sub_1AAEEBE24(v15, type metadata accessor for ChartDisplayList.BarItem);
      *&v85 = v37;
      v42 = *(v37 + 16);
      v41 = *(v37 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1AAD1FAF4((v41 > 1), v42 + 1, 1);
        v37 = v85;
      }

      *(v37 + 16) = v42 + 1;
      *(v37 + 8 * v42 + 32) = v40;
      v38 += v18;
      --v39;
    }

    while (v39);
    v43 = v81;

    sub_1AAEE88D4(v37, v80, v43);
    v45 = v44;

    v79[6] = v45;
    *&v85 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v16, 0);
    v46 = v85;
    v47 = v17;
    v48 = v16;
    do
    {
      sub_1AAEEBED8(v47, v15, type metadata accessor for ChartDisplayList.BarItem);
      v49 = v15[7];
      sub_1AAEEBE24(v15, type metadata accessor for ChartDisplayList.BarItem);
      *&v85 = v46;
      v51 = *(v46 + 16);
      v50 = *(v46 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1AAD1FAF4((v50 > 1), v51 + 1, 1);
        v46 = v85;
      }

      *(v46 + 16) = v51 + 1;
      *(v46 + 8 * v51 + 32) = v49;
      v47 += v18;
      --v48;
    }

    while (v48);
    v52 = v81;

    sub_1AAEE88D4(v46, v80, v52);
    v54 = v53;

    v79[7] = v54;
    *&v85 = MEMORY[0x1E69E7CC0];
    sub_1AAD41724(0, v16, 0);
    v55 = v85;
    v56 = v17;
    v57 = v16;
    do
    {
      sub_1AAEEBED8(v56, v15, type metadata accessor for ChartDisplayList.BarItem);
      sub_1AAEEBED8(v15 + *(v83 + 60), v9, type metadata accessor for ChartDisplayList.ClipRect);
      sub_1AAEEBE24(v15, type metadata accessor for ChartDisplayList.BarItem);
      *&v85 = v55;
      v59 = *(v55 + 16);
      v58 = *(v55 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1AAD41724(v58 > 1, v59 + 1, 1);
        v55 = v85;
      }

      *(v55 + 16) = v59 + 1;
      sub_1AAEEBD58(v9, v55 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v59, type metadata accessor for ChartDisplayList.ClipRect);
      v56 += v18;
      --v57;
    }

    while (v57);
    v60 = v77;
    sub_1AAEE810C(v55, v80, v81, v77);

    v61 = v83;
    sub_1AAEEBDC0(v60, v79 + *(v83 + 60));
    *&v85 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v16, 0);
    v62 = v85;
    v63 = v17;
    v64 = v16;
    do
    {
      sub_1AAEEBED8(v63, v15, type metadata accessor for ChartDisplayList.BarItem);
      v65 = *(v15 + *(v61 + 56));
      sub_1AAEEBE24(v15, type metadata accessor for ChartDisplayList.BarItem);
      *&v85 = v62;
      v67 = *(v62 + 16);
      v66 = *(v62 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1AAD1FAF4((v66 > 1), v67 + 1, 1);
        v62 = v85;
      }

      *(v62 + 16) = v67 + 1;
      *(v62 + 8 * v67 + 32) = v65;
      v63 += v18;
      --v64;
    }

    while (v64);
    sub_1AAD1FF48(v62, v78);
    v69 = v68;

    v70 = v79;
    *(v79 + *(v61 + 56)) = v69;
    v84 = MEMORY[0x1E69E7CC0];
    sub_1AAD416A4(0, v16, 0);
    v71 = v84;
    do
    {
      sub_1AAEEBED8(v17, v15, type metadata accessor for ChartDisplayList.BarItem);
      sub_1AAEEBB28(v15 + *(v61 + 52), &v85);
      sub_1AAEEBE24(v15, type metadata accessor for ChartDisplayList.BarItem);
      v84 = v71;
      v73 = *(v71 + 16);
      v72 = *(v71 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_1AAD416A4((v72 > 1), v73 + 1, 1);
        v71 = v84;
      }

      *(v71 + 16) = v73 + 1;
      v74 = (v71 + 48 * v73);
      v75 = v85;
      v76 = v86[0];
      *(v74 + 57) = *(v86 + 9);
      v74[2] = v75;
      v74[3] = v76;
      v17 += v18;
      --v16;
    }

    while (v16);
    sub_1AAEE7AE0(v71, v78, v80, &v85);

    sub_1AAEEBB84(&v85, v70 + *(v61 + 52));
  }

  else
  {
    __break(1u);
  }
}

void sub_1AAEE6A5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a3;
  v69 = a4;
  v66 = a2;
  v7 = type metadata accessor for ChartDisplayList.RectangleItem(0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    v67 = a5;
    sub_1AAEEBED8(v12 + v13 * (v11 - 1), a5, type metadata accessor for ChartDisplayList.RectangleItem);
    *&v71 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v11, 0);
    v14 = v71;
    v15 = v12;
    v16 = v11;
    do
    {
      sub_1AAEEBED8(v15, v10, type metadata accessor for ChartDisplayList.RectangleItem);
      v17 = v10[4];
      sub_1AAEEBE24(v10, type metadata accessor for ChartDisplayList.RectangleItem);
      *&v71 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AAD1FAF4((v18 > 1), v19 + 1, 1);
        v14 = v71;
      }

      *(v14 + 16) = v19 + 1;
      *(v14 + 8 * v19 + 32) = v17;
      v15 += v13;
      --v16;
    }

    while (v16);
    v20 = v69;

    sub_1AAEE85D4(v14, v68, v20);
    v22 = v21;

    v67[4] = v22;
    *&v71 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v11, 0);
    v23 = v71;
    v24 = v12;
    v25 = v11;
    do
    {
      sub_1AAEEBED8(v24, v10, type metadata accessor for ChartDisplayList.RectangleItem);
      v26 = v10[5];
      sub_1AAEEBE24(v10, type metadata accessor for ChartDisplayList.RectangleItem);
      *&v71 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1AAD1FAF4((v27 > 1), v28 + 1, 1);
        v23 = v71;
      }

      *(v23 + 16) = v28 + 1;
      *(v23 + 8 * v28 + 32) = v26;
      v24 += v13;
      --v25;
    }

    while (v25);
    v29 = v69;

    sub_1AAEE85D4(v23, v68, v29);
    v31 = v30;

    v67[5] = v31;
    *&v71 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v11, 0);
    v32 = v71;
    v33 = v12;
    v34 = v11;
    do
    {
      sub_1AAEEBED8(v33, v10, type metadata accessor for ChartDisplayList.RectangleItem);
      v35 = v10[6];
      sub_1AAEEBE24(v10, type metadata accessor for ChartDisplayList.RectangleItem);
      *&v71 = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1AAD1FAF4((v36 > 1), v37 + 1, 1);
        v32 = v71;
      }

      *(v32 + 16) = v37 + 1;
      *(v32 + 8 * v37 + 32) = v35;
      v33 += v13;
      --v34;
    }

    while (v34);
    v38 = v69;

    sub_1AAEE88D4(v32, v68, v38);
    v40 = v39;

    v67[6] = v40;
    *&v71 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v11, 0);
    v41 = v71;
    v42 = v12;
    v43 = v11;
    do
    {
      sub_1AAEEBED8(v42, v10, type metadata accessor for ChartDisplayList.RectangleItem);
      v44 = v10[7];
      sub_1AAEEBE24(v10, type metadata accessor for ChartDisplayList.RectangleItem);
      *&v71 = v41;
      v46 = *(v41 + 16);
      v45 = *(v41 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1AAD1FAF4((v45 > 1), v46 + 1, 1);
        v41 = v71;
      }

      *(v41 + 16) = v46 + 1;
      *(v41 + 8 * v46 + 32) = v44;
      v42 += v13;
      --v43;
    }

    while (v43);
    v47 = v69;

    sub_1AAEE88D4(v41, v68, v47);
    v49 = v48;

    v67[7] = v49;
    *&v71 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v11, 0);
    v50 = v71;
    v51 = v12;
    v52 = v11;
    do
    {
      sub_1AAEEBED8(v51, v10, type metadata accessor for ChartDisplayList.RectangleItem);
      v53 = *(v10 + *(v7 + 56));
      sub_1AAEEBE24(v10, type metadata accessor for ChartDisplayList.RectangleItem);
      *&v71 = v50;
      v55 = *(v50 + 16);
      v54 = *(v50 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1AAD1FAF4((v54 > 1), v55 + 1, 1);
        v50 = v71;
      }

      *(v50 + 16) = v55 + 1;
      *(v50 + 8 * v55 + 32) = v53;
      v51 += v13;
      --v52;
    }

    while (v52);
    sub_1AAD1FF48(v50, v66);
    v57 = v56;

    v58 = v67;
    *(v67 + *(v7 + 56)) = v57;
    v70 = MEMORY[0x1E69E7CC0];
    sub_1AAD416A4(0, v11, 0);
    v59 = v70;
    do
    {
      sub_1AAEEBED8(v12, v10, type metadata accessor for ChartDisplayList.RectangleItem);
      sub_1AAEEBB28(v10 + *(v7 + 52), &v71);
      sub_1AAEEBE24(v10, type metadata accessor for ChartDisplayList.RectangleItem);
      v70 = v59;
      v61 = *(v59 + 16);
      v60 = *(v59 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1AAD416A4((v60 > 1), v61 + 1, 1);
        v59 = v70;
      }

      *(v59 + 16) = v61 + 1;
      v62 = (v59 + 48 * v61);
      v63 = v71;
      v64 = v72[0];
      *(v62 + 57) = *(v72 + 9);
      v62[2] = v63;
      v62[3] = v64;
      v12 += v13;
      --v11;
    }

    while (v11);
    sub_1AAEE7AE0(v59, v66, v68, &v71);

    sub_1AAEEBB84(&v71, v58 + *(v7 + 52));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AAEE7128@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = result;
    v7 = (result + 112 * v5);
    v8 = *v7;
    v52[4] = *(v7 - 1);
    v52[5] = v8;
    v52[6] = v7[1];
    v9 = *(v7 - 4);
    v52[0] = *(v7 - 5);
    v52[1] = v9;
    v10 = *(v7 - 2);
    v52[2] = *(v7 - 3);
    v52[3] = v10;
    v11 = *&v52[0];
    sub_1AAEEBACC(v52, v46);
    v46[0] = MEMORY[0x1E69E7CC0];
    v35 = v11;

    sub_1AAD41644(0, v5, 0);
    v12 = v46[0];
    v34 = v6;
    v13 = (v6 + 64);
    v14 = v5;
    do
    {
      v15 = *(v13 - 4);
      v16 = *(v13 - 1);
      v40 = v13[1];
      v43 = *v13;
      v46[0] = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_1AAD41644((v17 > 1), v18 + 1, 1);
        v12 = v46[0];
      }

      *(v12 + 16) = v18 + 1;
      v19 = v12 + 48 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      *(v19 + 48) = v43;
      *(v19 + 64) = v40;
      v13 += 7;
      --v14;
    }

    while (v14);
    sub_1AAEE3C30(v49, v12, a2, a3, a4);
    v33 = v49[0];
    v20 = v49[1];
    v31 = v51;
    v32 = v50;

    v46[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD41644(0, v5, 0);
    v21 = v46[0];
    v22 = (v34 + 112);
    do
    {
      v23 = *(v22 - 4);
      v24 = *(v22 - 1);
      v41 = v22[1];
      v44 = *v22;
      v46[0] = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);

      if (v26 >= v25 >> 1)
      {
        sub_1AAD41644((v25 > 1), v26 + 1, 1);
        v21 = v46[0];
      }

      *(v21 + 16) = v26 + 1;
      v27 = v21 + 48 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      *(v27 + 48) = v44;
      *(v27 + 64) = v41;
      v22 += 7;
      --v5;
    }

    while (v5);
    v28 = DWORD2(v52[0]);
    sub_1AAEE3C30(v46, v21, a2, a3, a4);
    v29 = v46[0];
    v30 = v46[1];
    v42 = v48;
    v45 = v47;

    result = sub_1AAEEBE84(v52);
    *a5 = v35;
    *(a5 + 8) = v28;
    *(a5 + 16) = v33;
    *(a5 + 24) = v20;
    *(a5 + 32) = v32;
    *(a5 + 48) = v31;
    *(a5 + 64) = v29;
    *(a5 + 72) = v30;
    *(a5 + 80) = v45;
    *(a5 + 96) = v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}