uint64_t sub_24810()
{
  sub_DC40(&qword_1167F8);
  sub_D78B8();
  if (!v2)
  {
    return 1;
  }

  v0 = [v2 customizable];

  return v0;
}

uint64_t sub_24890@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_D6F98();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v49 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for GCSProfileParams() - 8;
  __chkstk_darwin(v46);
  v45 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GCSProfileSheetView();
  v44 = *(v5 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v5);
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_D6D08();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_DC40(&qword_116850);
  v9 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = &v36 - v10;
  v38 = sub_DC40(&qword_116858);
  __chkstk_darwin(v38);
  v13 = &v36 - v12;
  v14 = sub_DC40(&qword_116860);
  v15 = *(v14 - 8);
  v47 = v14;
  v48 = v15;
  __chkstk_darwin(v14);
  v41 = &v36 - v16;
  *v13 = sub_D7078();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_DC40(&qword_116868);
  v55 = v1;
  sub_DC40(&qword_116870);
  sub_15FB8(&qword_116878, &qword_116870);
  sub_D7328();
  sub_D7A48();
  sub_15FB8(&qword_116880, &qword_116850);
  sub_25CA0(&qword_116888, &type metadata accessor for GroupedFormStyle);
  v17 = v37;
  v18 = v39;
  sub_D7558();
  (*(v40 + 8))(v8, v18);
  (*(v9 + 8))(v11, v17);
  v19 = v42;
  sub_27770(v53, v42, type metadata accessor for GCSProfileSheetView);
  v20 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v21 = swift_allocObject();
  sub_25E08(v19, v21 + v20);
  v22 = v38;
  v23 = &v13[*(v38 + 36)];
  *v23 = sub_25E6C;
  v23[1] = v21;
  v23[2] = 0;
  v23[3] = 0;
  sub_DC40(&qword_116840);
  v24 = v45;
  sub_D78B8();
  v25 = (v24 + *(v46 + 28));
  v27 = *v25;
  v26 = v25[1];

  sub_277D8(v24, type metadata accessor for GCSProfileParams);
  v56 = v27;
  v57 = v26;
  v29 = v49;
  v28 = v50;
  v30 = v51;
  (*(v50 + 104))(v49, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v51);
  v31 = sub_25E84();
  v32 = sub_16000();
  v33 = v41;
  sub_D74D8();
  (*(v28 + 8))(v29, v30);

  sub_25F3C(v13);
  v54 = v53;
  sub_DC40(&qword_1168A8);
  v56 = v22;
  v57 = &type metadata for String;
  v58 = v31;
  v59 = v32;
  swift_getOpaqueTypeConformance2();
  sub_15FB8(&qword_1168B0, &qword_1168A8);
  v34 = v47;
  sub_D7528();
  return (*(v48 + 8))(v33, v34);
}

uint64_t sub_24FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v120 = sub_DC40(&qword_116840);
  __chkstk_darwin(v120);
  v116 = v97 - v3;
  v4 = type metadata accessor for GCSProfileContentView();
  __chkstk_darwin(v4 - 8);
  v124 = v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v125 = v97 - v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v100 = *(a1 + 40);
  *&v254 = v100;
  *(&v254 + 1) = v8;
  *&v255 = v9;
  v10 = sub_DC40(&qword_1167F8);
  sub_D78B8();
  v11 = *&v252[0];
  v98 = v9;
  v99 = v8;
  v97[1] = v10;
  if (*&v252[0])
  {
    LODWORD(v121) = [*&v252[0] customizable];
  }

  else
  {
    LODWORD(v121) = 1;
  }

  v123 = type metadata accessor for GCSProfileSheetView();
  v12 = (a1 + *(v123 + 32));
  v13 = v12[7];
  v260 = v12[6];
  v261 = v13;
  v262 = v12[8];
  v263 = *(v12 + 18);
  v14 = v12[3];
  v256 = v12[2];
  v257 = v14;
  v15 = v12[5];
  v258 = v12[4];
  v259 = v15;
  v16 = v12[1];
  v254 = *v12;
  v255 = v16;
  sub_DC40(&qword_116848);
  sub_D78E8();
  swift_getKeyPath();
  v236 = v240[6];
  v237 = v240[7];
  v238 = v240[8];
  v239 = v241;
  v232 = v240[2];
  v233 = v240[3];
  v234 = v240[4];
  v235 = v240[5];
  v230 = v240[0];
  v231 = v240[1];
  sub_D78D8();

  sub_160BC(v240, &qword_116848);
  v118 = v228;
  v119 = v227;
  v117 = v229;
  v17 = v12[7];
  v260 = v12[6];
  v261 = v17;
  v262 = v12[8];
  v263 = *(v12 + 18);
  v18 = v12[3];
  v256 = v12[2];
  v257 = v18;
  v19 = v12[5];
  v258 = v12[4];
  v259 = v19;
  v20 = v12[1];
  v254 = *v12;
  v255 = v20;
  sub_D78E8();
  swift_getKeyPath();
  v223 = v242[6];
  v224 = v242[7];
  v225 = v242[8];
  v226 = v243;
  v219 = v242[2];
  v220 = v242[3];
  v221 = v242[4];
  v222 = v242[5];
  v217 = v242[0];
  v218 = v242[1];
  sub_D78D8();

  sub_160BC(v242, &qword_116848);
  v114 = v215;
  v115 = v214;
  v113 = v216;
  v21 = v12[7];
  v260 = v12[6];
  v261 = v21;
  v262 = v12[8];
  v263 = *(v12 + 18);
  v22 = v12[3];
  v256 = v12[2];
  v257 = v22;
  v23 = v12[5];
  v258 = v12[4];
  v259 = v23;
  v24 = v12[1];
  v254 = *v12;
  v255 = v24;
  sub_D78E8();
  swift_getKeyPath();
  v210 = v244[6];
  v211 = v244[7];
  v212 = v244[8];
  v213 = v245;
  v206 = v244[2];
  v207 = v244[3];
  v208 = v244[4];
  v209 = v244[5];
  v204 = v244[0];
  v205 = v244[1];
  sub_D78D8();

  sub_160BC(v244, &qword_116848);
  v111 = v202;
  v112 = v201;
  v110 = v203;
  v25 = v12[7];
  v260 = v12[6];
  v261 = v25;
  v262 = v12[8];
  v263 = *(v12 + 18);
  v26 = v12[3];
  v256 = v12[2];
  v257 = v26;
  v27 = v12[5];
  v258 = v12[4];
  v259 = v27;
  v28 = v12[1];
  v254 = *v12;
  v255 = v28;
  sub_D78E8();
  swift_getKeyPath();
  v197 = v246[6];
  v198 = v246[7];
  v199 = v246[8];
  v200 = v247;
  v193 = v246[2];
  v194 = v246[3];
  v195 = v246[4];
  v196 = v246[5];
  v191 = v246[0];
  v192 = v246[1];
  sub_D78D8();

  sub_160BC(v246, &qword_116848);
  v108 = v189;
  v109 = v188;
  v107 = v190;
  v29 = v12[7];
  v260 = v12[6];
  v261 = v29;
  v262 = v12[8];
  v263 = *(v12 + 18);
  v30 = v12[3];
  v256 = v12[2];
  v257 = v30;
  v31 = v12[5];
  v258 = v12[4];
  v259 = v31;
  v32 = v12[1];
  v254 = *v12;
  v255 = v32;
  sub_D78E8();
  swift_getKeyPath();
  v184 = v248[6];
  v185 = v248[7];
  v186 = v248[8];
  v187 = v249;
  v180 = v248[2];
  v181 = v248[3];
  v182 = v248[4];
  v183 = v248[5];
  v178 = v248[0];
  v179 = v248[1];
  sub_D78D8();

  sub_160BC(v248, &qword_116848);
  v105 = v176;
  v106 = v175;
  v104 = v177;
  v33 = v12[7];
  v260 = v12[6];
  v261 = v33;
  v262 = v12[8];
  v263 = *(v12 + 18);
  v34 = v12[3];
  v256 = v12[2];
  v257 = v34;
  v35 = v12[5];
  v258 = v12[4];
  v259 = v35;
  v36 = v12[1];
  v254 = *v12;
  v255 = v36;
  sub_D78E8();
  swift_getKeyPath();
  v171 = v250[6];
  v172 = v250[7];
  v173 = v250[8];
  v174 = v251;
  v167 = v250[2];
  v168 = v250[3];
  v169 = v250[4];
  v170 = v250[5];
  v165 = v250[0];
  v166 = v250[1];
  sub_D78D8();

  sub_160BC(v250, &qword_116848);
  v102 = v163;
  v103 = v162;
  v101 = v164;
  v37 = v12[7];
  v260 = v12[6];
  v261 = v37;
  v262 = v12[8];
  v263 = *(v12 + 18);
  v38 = v12[3];
  v256 = v12[2];
  v257 = v38;
  v39 = v12[5];
  v258 = v12[4];
  v259 = v39;
  v40 = v12[1];
  v254 = *v12;
  v255 = v40;
  sub_D78E8();
  swift_getKeyPath();
  v158 = v252[6];
  v159 = v252[7];
  v160 = v252[8];
  v161 = v253;
  v154 = v252[2];
  v155 = v252[3];
  v156 = v252[4];
  v157 = v252[5];
  v152 = v252[0];
  v153 = v252[1];
  sub_D78D8();

  sub_160BC(v252, &qword_116848);
  v264[2] = v148;
  v264[3] = v149;
  v264[4] = v150;
  v265 = v151;
  v264[0] = v146;
  v264[1] = v147;
  v41 = v123;
  v42 = v116;
  sub_D78E8();
  v43 = v12[7];
  v142 = v12[6];
  v143 = v43;
  v144 = v12[8];
  v145 = *(v12 + 18);
  v44 = v12[3];
  v138 = v12[2];
  v139 = v44;
  v45 = v12[5];
  v140 = v12[4];
  v141 = v45;
  v46 = v12[1];
  v136 = *v12;
  v137 = v46;
  sub_D78E8();
  swift_getKeyPath();
  v142 = v260;
  v143 = v261;
  v144 = v262;
  v145 = v263;
  v138 = v256;
  v139 = v257;
  v140 = v258;
  v141 = v259;
  v136 = v254;
  v137 = v255;
  sub_D78D8();

  sub_160BC(&v254, &qword_116848);
  v47 = v133;
  v48 = v134;
  v49 = v135;
  v50 = (a1 + *(v41 + 40));
  v51 = *v50;
  v52 = v50[1];
  v53 = v50[2];
  v130 = v51;
  v131 = v52;
  v132 = v53;
  sub_DC40(&qword_1169A8);
  v54 = sub_D7808();
  v55 = v126;
  v56 = v127;
  v58 = v128;
  v57 = v129;
  v59 = sub_16244(v54);
  v96.n128_u64[0] = v55;
  v96.n128_u64[1] = v56;
  *(&v95 + 1) = v48;
  *&v95 = v47;
  LOBYTE(v94) = 0;
  *(&v93 + 1) = v102;
  *&v93 = v103;
  *(&v92 + 1) = v110;
  *&v92 = v111;
  *(&v91 + 1) = v112;
  *&v91 = v113;
  *(&v90 + 1) = v114;
  *&v90 = v115;
  sub_774D0(0, v121, 1, v59, v60, v119, v118, v117, v125, v90, v91, v92, v109, v108, v107, v106, v105, v104, v93, v101, v94, v264, v42, v95, v49, v96, v58, v57);
  v61 = *(a1 + 24);
  v62 = *(a1 + 32);
  *&v230 = *(a1 + 16);
  *(&v230 + 1) = v61;
  LOBYTE(v231) = v62;
  sub_DC40(&qword_116510);
  sub_D78B8();
  if ((v217 & 1) != 0 || (v64 = v99, v63 = v100, *&v230 = v100, *(&v230 + 1) = v99, v65 = v98, *&v231 = v98, sub_D78B8(), (v66 = v217) != 0) && (v67 = [v217 customizable], v66, !v67))
  {
    v72 = 0;
    v74 = 0;
    v68 = 0;
    v120 = 0;
    v121 = 0;
    v123 = 0;
    v118 = 0;
    v119 = 0;
    v76 = 0;
    v75 = 0;
  }

  else
  {
    *&v230 = v63;
    *(&v230 + 1) = v64;
    *&v231 = v65;
    sub_D78E8();
    v68 = v217;
    v120 = v218;
    v121 = *(&v217 + 1);
    v69 = (a1 + *(v123 + 36));
    v70 = *v69;
    v71 = v69[1];
    LOBYTE(v69) = *(v69 + 16);
    *&v230 = v70;
    *(&v230 + 1) = v71;
    LOBYTE(v231) = v69;
    sub_D78E8();
    v123 = v217;
    v118 = v218;
    v119 = *(&v217 + 1);
    type metadata accessor for GCSPreferencesStore();
    sub_25CA0(&qword_116448, type metadata accessor for GCSPreferencesStore);
    v72 = sub_D6DF8();
    v74 = v73;
    LOBYTE(v217) = 0;
    sub_D77D8();
    v75 = v230;
    v76 = *(&v230 + 1);
  }

  v116 = v74;
  v117 = v75;
  v77 = v124;
  sub_27770(v125, v124, type metadata accessor for GCSProfileContentView);
  v78 = v122;
  sub_27770(v77, v122, type metadata accessor for GCSProfileContentView);
  v79 = (v78 + *(sub_DC40(&qword_1169B8) + 48));
  v80 = v72;
  *&v217 = v72;
  *(&v217 + 1) = v74;
  v81 = v68;
  *&v218 = v68;
  v83 = v120;
  v82 = v121;
  *(&v218 + 1) = v121;
  *&v219 = v120;
  v84 = v123;
  *(&v219 + 1) = v123;
  v86 = v118;
  v85 = v119;
  *&v220 = v119;
  *(&v220 + 1) = v118;
  *&v221 = v75;
  *(&v221 + 1) = v76;
  v87 = v218;
  *v79 = v217;
  v79[1] = v87;
  v88 = v220;
  v79[2] = v219;
  v79[3] = v88;
  v79[4] = v221;
  sub_16054(&v217, &v230, &qword_1169C0);
  sub_277D8(v125, type metadata accessor for GCSProfileContentView);
  *&v230 = v80;
  *(&v230 + 1) = v116;
  *&v231 = v81;
  *(&v231 + 1) = v82;
  *&v232 = v83;
  *(&v232 + 1) = v84;
  *&v233 = v85;
  *(&v233 + 1) = v86;
  *&v234 = v117;
  *(&v234 + 1) = v76;
  sub_160BC(&v230, &qword_1169C0);
  return sub_277D8(v124, type metadata accessor for GCSProfileContentView);
}

uint64_t sub_25CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25CE8(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GCSProfileSheetView();
  sub_DC40(&qword_116840);
  sub_D78B8();
  v7 = &v5[*(v3 + 28)];
  v9 = *v7;
  v8 = *(v7 + 1);

  sub_277D8(v5, type metadata accessor for GCSProfileParams);
  v10 = (a1 + *(v6 + 40));
  v11 = *v10;
  v12 = *(v10 + 2);
  v15 = v11;
  v16 = v12;
  v14[1] = v9;
  v14[2] = v8;
  sub_DC40(&qword_1169A8);
  return sub_D77F8();
}

uint64_t sub_25E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GCSProfileSheetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E84()
{
  result = qword_116890;
  if (!qword_116890)
  {
    sub_EBC0(&qword_116858);
    sub_15FB8(&qword_116898, &qword_1168A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116890);
  }

  return result;
}

uint64_t sub_25F3C(uint64_t a1)
{
  v2 = sub_DC40(&qword_116858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = sub_DC40(&qword_116990);
  __chkstk_darwin(v17[0]);
  v4 = v17 - v3;
  v5 = sub_D7128();
  __chkstk_darwin(v5 - 8);
  v6 = sub_DC40(&qword_116998);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  sub_D7108();
  v17[8] = a1;
  sub_DC40(&qword_116818);
  sub_15FB8(&qword_116830, &qword_116818);
  sub_D6C08();
  sub_D7118();
  v17[4] = a1;
  sub_D6C08();
  v13 = *(v17[0] + 48);
  v14 = *(v7 + 16);
  v14(v4, v12, v6);
  v14(&v4[v13], v9, v6);
  sub_D7098();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v12, v6);
}

uint64_t sub_2626C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for GCSProfileSheetView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v13[0] = sub_A9308(a2, a3);
  v13[1] = v9;
  sub_27770(a1, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSProfileSheetView);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_25E08(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_16000();
  return sub_D7868();
}

void sub_263B8(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (a1 + *(type metadata accessor for GCSProfileSheetView() + 36));
  v6 = *v5;
  v7 = v5[1];
  LOBYTE(v5) = *(v5 + 16);
  *&v16 = v6;
  *(&v16 + 1) = v7;
  LOBYTE(v17) = v5;
  LOBYTE(v15) = 0;
  sub_DC40(&qword_116510);
  sub_D78C8();
  sub_24064();
  v8 = *(a1 + 56);
  v16 = *(a1 + 40);
  v17 = v8;
  sub_DC40(&qword_1167F8);
  sub_D78B8();
  v9 = v15;
  v10 = *a1;
  if (v15)
  {
    if (v10)
    {
      sub_27120();
      v11 = v10;
      sub_DC40(&qword_116840);
      sub_D78B8();
      v12 = sub_D1EF0(v4);
      v13 = static MacParity.Pantheon.getter();
      (*(&stru_298.flags + (swift_isaMask & *v11)))(v9, v12, v13 & 1);

LABEL_6:
      return;
    }
  }

  else if (v10)
  {
    sub_27120();
    v11 = v10;
    sub_DC40(&qword_116840);
    sub_D78B8();
    v12 = sub_D1EF0(v4);
    v14 = static MacParity.Pantheon.getter();
    (*&stru_2E8.segname[(swift_isaMask & *v11) - 8])(v12, v14 & 1);
    goto LABEL_6;
  }

  type metadata accessor for GCSPreferencesStore();
  sub_25CA0(&qword_116448, type metadata accessor for GCSPreferencesStore);
  sub_D6DD8();
  __break(1u);
}

double sub_26688@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v15 = type metadata accessor for GCSProfileSheetView();
  sub_26780(a10, a9 + v15[7]);
  v16 = a9 + v15[8];
  v17 = *(a11 + 112);
  *(v16 + 96) = *(a11 + 96);
  *(v16 + 112) = v17;
  *(v16 + 128) = *(a11 + 128);
  *(v16 + 144) = *(a11 + 144);
  v18 = *(a11 + 48);
  *(v16 + 32) = *(a11 + 32);
  *(v16 + 48) = v18;
  v19 = *(a11 + 80);
  *(v16 + 64) = *(a11 + 64);
  *(v16 + 80) = v19;
  v20 = *(a11 + 16);
  *v16 = *a11;
  *(v16 + 16) = v20;
  v21 = a9 + v15[9];
  *v21 = a12;
  *(v21 + 8) = a13;
  *(v21 + 16) = a14;
  v22 = a9 + v15[10];
  sub_D77D8();
  result = *&v24;
  *v22 = v24;
  *(v22 + 16) = v25;
  return result;
}

uint64_t sub_26780(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_116840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_2682C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_26848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_DC40(&qword_116840);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_269D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_DC40(&qword_116840);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26A88()
{
  sub_26BDC();
  if (v0 <= 0x3F)
  {
    sub_26D2C(319, &qword_116918, &type metadata for Bool, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_26C70();
      if (v2 <= 0x3F)
      {
        sub_26CD4();
        if (v3 <= 0x3F)
        {
          sub_26D2C(319, &qword_116930, &type metadata for GCSProfileViewData, &type metadata accessor for Binding);
          if (v4 <= 0x3F)
          {
            sub_26D2C(319, &qword_116938, &type metadata for String, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26BDC()
{
  if (!qword_116910)
  {
    type metadata accessor for GCSPreferencesStore();
    sub_25CA0(&qword_116448, type metadata accessor for GCSPreferencesStore);
    v0 = sub_D6E08();
    if (!v1)
    {
      atomic_store(v0, &qword_116910);
    }
  }
}

void sub_26C70()
{
  if (!qword_116920)
  {
    sub_EBC0(&qword_116800);
    v0 = sub_D7958();
    if (!v1)
    {
      atomic_store(v0, &qword_116920);
    }
  }
}

void sub_26CD4()
{
  if (!qword_116928)
  {
    type metadata accessor for GCSProfileParams();
    v0 = sub_D7958();
    if (!v1)
    {
      atomic_store(v0, &qword_116928);
    }
  }
}

void sub_26D2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26D80()
{
  result = qword_116980;
  if (!qword_116980)
  {
    sub_EBC0(&qword_116988);
    sub_EBC0(&qword_116818);
    sub_EBC0(&qword_116828);
    sub_15FB8(&qword_116830, &qword_116818);
    sub_16000();
    sub_15FB8(&qword_116838, &qword_116828);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116980);
  }

  return result;
}

uint64_t sub_26EF0()
{
  sub_EBC0(&qword_116860);
  sub_EBC0(&qword_1168A8);
  sub_EBC0(&qword_116858);
  sub_25E84();
  sub_16000();
  swift_getOpaqueTypeConformance2();
  sub_15FB8(&qword_1168B0, &qword_1168A8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_270AC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GCSProfileSheetView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_27120()
{
  result = qword_118F10;
  if (!qword_118F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_118F10);
  }

  return result;
}

void *sub_2716C(void *result, int64_t a2, char a3, void *a4)
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
    sub_DC40(&qword_1169B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_DC40(&qword_1169A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_272B4(void *a1, int64_t a2, char a3)
{
  result = sub_27348(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_272DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_272FC(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

void *sub_27348(void *result, int64_t a2, char a3, void *a4)
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
    sub_DC40(&qword_1169B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_DC40(&qword_1169A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_27490()
{
  v1 = (type metadata accessor for GCSProfileSheetView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];

  v6 = v5 + *(sub_DC40(&qword_116840) + 32);
  v7 = sub_D6998();
  (*(*(v7 - 8) + 8))(v6, v7);
  type metadata accessor for GCSProfileParams();

  v8 = v0 + v3 + v1[10];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_276D0()
{
  type metadata accessor for GCSProfileSheetView();
  sub_DC40(&qword_116510);
  return sub_D78C8();
}

uint64_t sub_27770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_277D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_27838()
{

  return _swift_deallocObject(v0, 104, 7);
}

void sub_278A8()
{
  v1 = *(v0 + 96);
  sub_DC40(&qword_116510);
  sub_D78C8();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = v2;
    v4 = static MacParity.Pantheon.getter();
    (*&stru_2E8.segname[swift_isaMask & *v3])(v1, v4 & 1);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_25CA0(&qword_116448, type metadata accessor for GCSPreferencesStore);
    sub_D6DD8();
    __break(1u);
  }
}

uint64_t sub_279CC()
{

  return _swift_deallocObject(v0, 96, 7);
}

id sub_27AA4()
{
  v1 = *v0;
  if (*v0)
  {

    return v1;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_288D8(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_27B30()
{
  type metadata accessor for GCSPreferencesStore();
  sub_288D8(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DC8();
}

uint64_t sub_27BC0()
{
  sub_DC40(&qword_116510);
  sub_D78B8();
  return v1;
}

void (*sub_27C74(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 48);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_16444(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_DC40(&qword_116510);
  sub_D78B8();
  return sub_22030;
}

uint64_t sub_27D30()
{
  sub_DC40(&qword_116510);
  sub_D78E8();
  return v1;
}

uint64_t sub_27D8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_DC40(&qword_116818);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v25 = sub_A9308(0xD00000000000001ALL, 0x80000000000E4FF0);
  v26 = v7;
  v8 = swift_allocObject();
  v9 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = *(v1 + 48);
  sub_2817C(v1, &v23);
  sub_16000();
  sub_D7868();
  v10 = *v1;
  if (*v1)
  {
    v11 = *(v1 + 16);
    v12 = *(&stru_248.size + (swift_isaMask & *v10));
    v13 = v10;
    if (v12(v11))
    {
      v14 = (*(&stru_248.size + (swift_isaMask & *v13)))(v11);

      if (v14)
      {
        v23 = *(v2 + 32);
        v24 = *(v2 + 48);
        sub_DC40(&qword_116510);
        sub_D78B8();
        v15 = v25;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {

      v15 = 1;
    }

    KeyPath = swift_getKeyPath();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    v18 = v22;
    (*(v4 + 32))(v22, v6, v3);
    result = sub_DC40(&qword_1169D0);
    v20 = (v18 + *(result + 36));
    *v20 = KeyPath;
    v20[1] = sub_285D8;
    v20[2] = v17;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_288D8(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_280AC()
{
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  v6 = 1;
  sub_DC40(&qword_116510);
  sub_D78C8();
  v1 = swift_allocObject();
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 64) = *(v0 + 64);
  sub_2817C(v0 + 16, &v4);
  sub_AD770(sub_287B8, v1);
}

uint64_t sub_281B4(uint64_t a1)
{
  v2 = sub_D7AC8();
  v15 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_D7AF8();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_287C0();
  v8 = sub_D7E58();
  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = *(a1 + 48);
  aBlock[4] = sub_28864;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_284B4;
  aBlock[3] = &unk_1070B0;
  v11 = _Block_copy(aBlock);
  sub_2817C(a1, &v16);

  sub_D7AE8();
  v16 = _swiftEmptyArrayStorage;
  sub_288D8(&qword_1169F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_DC40(&unk_118F40);
  sub_15FB8(&qword_1169F8, &unk_118F40);
  sub_D7F78();
  sub_D7E68();
  _Block_release(v11);

  (*(v15 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v14);
}

uint64_t sub_284B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_284FC()
{
  type metadata accessor for GCSPreferencesStore();
  sub_288D8(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DF8();
}

uint64_t sub_28570@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

__n128 sub_2860C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_28628(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_28670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_286D4()
{
  result = qword_1169D8;
  if (!qword_1169D8)
  {
    sub_EBC0(&qword_1169D0);
    sub_15FB8(&qword_116830, &qword_116818);
    sub_15FB8(&qword_1169E0, &qword_1169E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1169D8);
  }

  return result;
}

unint64_t sub_287C0()
{
  result = qword_118F30;
  if (!qword_118F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_118F30);
  }

  return result;
}

uint64_t sub_2880C()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_288C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_288D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for GCSProfileShareGestureView()
{
  result = qword_11A840;
  if (!qword_11A840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_289B4(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GCSProfileShareGestureView();
  sub_28A68(a1, v4);
  sub_DC40(&qword_116840);
  sub_D78C8();
  return sub_28ACC(a1);
}

uint64_t sub_28A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GCSProfileParams();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_28ACC(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_28B28(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(type metadata accessor for GCSProfileParams() - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = sub_DC40(&qword_116840);
  a1[2] = v5;
  v6 = *(*(v5 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for GCSProfileShareGestureView();
  sub_16054(v1 + *(v9 + 24), v8, &qword_116840);
  sub_D78B8();
  return sub_28C5C;
}

void sub_28C5C(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_28A68(v4, v3);
    sub_D78C8();
    sub_160BC(v2, &qword_116840);
    sub_28ACC(v4);
  }

  else
  {
    sub_D78C8();
    sub_160BC(v2, &qword_116840);
  }

  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_28D24(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for GCSProfileShareGestureView();
  v2 = sub_DC40(&qword_116840);
  return a1(v2);
}

uint64_t sub_28D80(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      return sub_A9308(0xD000000000000019, 0x80000000000E5050);
    }

    return sub_A9308(4605519, 0xE300000000000000);
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      return sub_A9308(0xD00000000000001DLL, 0x80000000000E5010);
    }

    return sub_A9308(4605519, 0xE300000000000000);
  }

  return sub_A9308(0xD000000000000014, 0x80000000000E5030);
}

uint64_t sub_28E14@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = sub_DC40(&qword_116840);
  __chkstk_darwin(v1);
  v3 = v26 - v2;
  v4 = sub_DC40(&qword_116A00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v29 = v26 - v8;
  __chkstk_darwin(v9);
  v28 = v26 - v10;
  __chkstk_darwin(v11);
  v27 = v26 - v12;
  v36 = sub_A9308(0x505F454C42554F44, 0xEC00000053534552);
  v37 = v13;
  v26[4] = *(type metadata accessor for GCSProfileShareGestureView() + 24);
  v26[2] = v1;
  sub_D78E8();
  swift_getKeyPath();
  sub_D78D8();

  sub_160BC(v3, &qword_116840);
  v32 = v34;
  v33 = v35;
  type metadata accessor for ShareGesture(0);
  v26[1] = v14;
  v26[0] = sub_DC40(&qword_116A08);
  sub_292C0();
  sub_2AB9C(&qword_116A18, &qword_116A08);
  sub_16000();
  v15 = v27;
  sub_D7898();
  v36 = sub_A9308(0x4552505F474E4F4CLL, 0xEA00000000005353);
  v37 = v16;
  sub_D78E8();
  swift_getKeyPath();
  sub_D78D8();

  sub_160BC(v3, &qword_116840);
  v32 = v34;
  v33 = v35;
  v17 = v28;
  sub_D7898();
  v18 = *(v5 + 16);
  v19 = v29;
  v20 = v15;
  v18(v29, v15, v4);
  v21 = v30;
  v18(v30, v17, v4);
  v22 = v31;
  v18(v31, v19, v4);
  v23 = sub_DC40(&qword_116A20);
  v18(&v22[*(v23 + 48)], v21, v4);
  v24 = *(v5 + 8);
  v24(v17, v4);
  v24(v20, v4);
  v24(v21, v4);
  return (v24)(v19, v4);
}

unint64_t sub_292C0()
{
  result = qword_116A10;
  if (!qword_116A10)
  {
    type metadata accessor for ShareGesture(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116A10);
  }

  return result;
}

uint64_t sub_2931C@<X0>(char *a1@<X8>)
{
  v51 = a1;
  v1 = sub_DC40(&qword_116B20);
  v52 = *(v1 - 8);
  __chkstk_darwin(v1);
  v50 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v54 = &v47 - v4;
  __chkstk_darwin(v5);
  v49 = &v47 - v6;
  __chkstk_darwin(v7);
  v53 = &v47 - v8;
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  v55 = sub_A9308(4605519, 0xE300000000000000);
  v56 = v21;
  sub_16000();
  *v20 = sub_D73B8();
  *(v20 + 1) = v22;
  v20[16] = v23 & 1;
  *(v20 + 3) = v24;
  *(v20 + 4) = 0;
  v20[40] = 1;
  v55 = sub_A9308(0xD000000000000019, 0x80000000000E5050);
  v56 = v25;
  *v17 = sub_D73B8();
  *(v17 + 1) = v26;
  v17[16] = v27 & 1;
  *(v17 + 3) = v28;
  *(v17 + 4) = 1;
  v17[40] = 1;
  v55 = sub_A9308(0xD000000000000014, 0x80000000000E5030);
  v56 = v29;
  *v14 = sub_D73B8();
  *(v14 + 1) = v30;
  v14[16] = v31 & 1;
  *(v14 + 3) = v32;
  *(v14 + 4) = 2;
  v14[40] = 1;
  v48 = v14;
  v55 = sub_A9308(0xD00000000000001DLL, 0x80000000000E5010);
  v56 = v33;
  v34 = v11;
  *v11 = sub_D73B8();
  *(v11 + 1) = v35;
  v11[16] = v36 & 1;
  *(v11 + 3) = v37;
  *(v11 + 4) = 3;
  v11[40] = 1;
  v47 = v11;
  v38 = v53;
  v39 = *(v52 + 16);
  v39(v53, v20, v1);
  v40 = v49;
  v39(v49, v17, v1);
  v41 = v54;
  v39(v54, v14, v1);
  v42 = v50;
  v39(v50, v34, v1);
  v43 = v51;
  v39(v51, v38, v1);
  v44 = sub_DC40(&qword_116B28);
  v39(&v43[v44[12]], v40, v1);
  v39(&v43[v44[16]], v41, v1);
  v39(&v43[v44[20]], v42, v1);
  v45 = *(v52 + 8);
  v45(v47, v1);
  v45(v48, v1);
  v45(v17, v1);
  v45(v20, v1);
  v45(v42, v1);
  v45(v54, v1);
  v45(v40, v1);
  return (v45)(v53, v1);
}

uint64_t sub_297B4()
{
  if (sub_D62A8(2, 26, 0, 0))
  {
    sub_D71B8();

    return sub_D6CF8();
  }

  else
  {
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    sub_D7EE8();
    swift_getWitnessTable();
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    return sub_D6CF8();
  }
}

uint64_t sub_29918()
{
  if (sub_D62A8(2, 26, 0, 0))
  {
    sub_D71B8();
    sub_D6CF8();
  }

  else
  {
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    sub_D7EE8();
    swift_getWitnessTable();
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_29B18@<X0>(_OWORD *a1@<X8>)
{
  v7 = sub_D6FB8();
  LOBYTE(v28[0]) = 1;
  sub_29E6C(&v37);
  v16 = *&v38[16];
  v17 = *&v38[32];
  v14 = v37;
  v15 = *v38;
  v19[2] = *&v38[16];
  v19[3] = *&v38[32];
  v19[4] = *&v38[48];
  v19[1] = *v38;
  v18 = *&v38[48];
  v19[0] = v37;
  sub_16054(&v14, v30, &qword_116A28);
  sub_160BC(v19, &qword_116A28);
  *&v13[23] = v15;
  *&v13[39] = v16;
  *&v13[55] = v17;
  *&v13[71] = v18;
  *&v13[7] = v14;
  v2 = v28[0];
  v3 = sub_D6FB8();
  LOBYTE(v28[0]) = 1;
  sub_2A0B4(&v37);
  v22 = *&v38[16];
  v23 = *&v38[32];
  v20 = v37;
  v21 = *v38;
  v25[2] = *&v38[16];
  v25[3] = *&v38[32];
  v25[4] = *&v38[48];
  v25[1] = *v38;
  v24 = *&v38[48];
  v25[0] = v37;
  sub_16054(&v20, v30, &qword_116A28);
  sub_160BC(v25, &qword_116A28);
  *&v12[23] = v21;
  *&v12[39] = v22;
  *&v12[55] = v23;
  *&v12[71] = v24;
  *&v12[7] = v20;
  v4 = v28[0];
  v26 = v7;
  v27[0] = v2;
  *&v27[1] = *v13;
  *&v27[17] = *&v13[16];
  *&v27[80] = *&v13[79];
  *&v27[65] = *&v13[64];
  *&v27[49] = *&v13[48];
  *&v27[33] = *&v13[32];
  v8 = *v27;
  *v11 = *&v27[80];
  v9 = *&v27[48];
  v10 = *&v27[64];
  v28[0] = v3;
  v28[1] = 0;
  v29[0] = v4;
  *&v29[1] = *v12;
  *&v29[17] = *&v12[16];
  *&v29[80] = *(&v24 + 1);
  *&v29[65] = *&v12[64];
  *&v29[49] = *&v12[48];
  *&v29[33] = *&v12[32];
  *&v11[40] = *&v29[16];
  *&v11[24] = *v29;
  *&v11[8] = v3;
  *&v11[88] = *&v29[64];
  *&v11[104] = *&v29[80];
  *&v11[72] = *&v29[48];
  *&v11[56] = *&v29[32];
  v5 = *&v27[32];
  a1[2] = *&v27[16];
  a1[3] = v5;
  *a1 = v7;
  a1[1] = v8;
  a1[6] = *v11;
  a1[7] = *&v11[16];
  a1[4] = v9;
  a1[5] = v10;
  a1[11] = *&v11[80];
  a1[12] = *&v11[96];
  a1[9] = *&v11[48];
  a1[10] = *&v11[64];
  a1[8] = *&v11[32];
  v34 = *&v12[32];
  v30[0] = v3;
  v30[1] = 0;
  v31 = v4;
  v35 = *&v12[48];
  *v36 = *&v12[64];
  *&v36[15] = *&v12[79];
  v32 = *v12;
  v33 = *&v12[16];
  sub_16054(&v26, &v37, &qword_116A30);
  sub_16054(v28, &v37, &qword_116A30);
  sub_160BC(v30, &qword_116A30);
  v37 = v7;
  v38[0] = v2;
  *&v38[33] = *&v13[32];
  *&v38[49] = *&v13[48];
  *v39 = *&v13[64];
  *&v39[15] = *&v13[79];
  *&v38[1] = *v13;
  *&v38[17] = *&v13[16];
  return sub_160BC(&v37, &qword_116A30);
}

uint64_t sub_29E6C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GCSProfileParams();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_A9308(0x505F454C42554F44, 0xEC00000053534552);
  v38 = v6;
  sub_16000();
  v32 = sub_D73B8();
  v33 = v7;
  v9 = v8;
  v31 = v10;
  type metadata accessor for GCSProfileShareGestureView();
  sub_DC40(&qword_116840);
  sub_D78B8();
  v11 = *&v5[*(v3 + 64)];
  sub_28ACC(v5);
  v37 = sub_28D80(v11);
  v38 = v12;
  v13 = sub_D73B8();
  v15 = v14;
  v17 = v16;
  LODWORD(v37) = sub_D7198();
  v18 = sub_D7388();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1F8F0(v13, v15, v17 & 1);

  v25 = v31 & 1;
  LOBYTE(v37) = v31 & 1;
  v36 = v31 & 1;
  v35 = 1;
  v22 &= 1u;
  v34 = v22;
  v26 = v32;
  v27 = v33;
  *a1 = v32;
  *(a1 + 8) = v9;
  *(a1 + 16) = v25;
  *(a1 + 24) = v27;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v18;
  *(a1 + 56) = v20;
  *(a1 + 64) = v22;
  *(a1 + 72) = v24;
  v28 = v26;
  sub_1F900(v26, v9, v25);

  sub_1F900(v18, v20, v22);

  sub_1F8F0(v18, v20, v22);

  sub_1F8F0(v28, v9, v37);
}

uint64_t sub_2A0B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GCSProfileParams();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_A9308(0x4552505F474E4F4CLL, 0xEA00000000005353);
  v38 = v6;
  sub_16000();
  v32 = sub_D73B8();
  v33 = v7;
  v9 = v8;
  v31 = v10;
  type metadata accessor for GCSProfileShareGestureView();
  sub_DC40(&qword_116840);
  sub_D78B8();
  v11 = *&v5[*(v3 + 68)];
  sub_28ACC(v5);
  v37 = sub_28D80(v11);
  v38 = v12;
  v13 = sub_D73B8();
  v15 = v14;
  v17 = v16;
  LODWORD(v37) = sub_D7198();
  v18 = sub_D7388();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1F8F0(v13, v15, v17 & 1);

  v25 = v31 & 1;
  LOBYTE(v37) = v31 & 1;
  v36 = v31 & 1;
  v35 = 1;
  v22 &= 1u;
  v34 = v22;
  v26 = v32;
  v27 = v33;
  *a1 = v32;
  *(a1 + 8) = v9;
  *(a1 + 16) = v25;
  *(a1 + 24) = v27;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v18;
  *(a1 + 56) = v20;
  *(a1 + 64) = v22;
  *(a1 + 72) = v24;
  v28 = v26;
  sub_1F900(v26, v9, v25);

  sub_1F900(v18, v20, v22);

  sub_1F8F0(v18, v20, v22);

  sub_1F8F0(v28, v9, v37);
}

uint64_t sub_2A2F8()
{
  sub_A9308(0xD000000000000014, 0x80000000000E5070);
  sub_16000();
  sub_D73B8();
  sub_DC40(&qword_115F08);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_DCB80;
  v2 = [*(v0 + 16) localizedName];
  v3 = sub_D7C18();
  v5 = v4;

  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_14B60();
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  String.localized(with:)(v1);

  sub_D73B8();
  sub_DC40(&qword_116A38);
  sub_2AAE0();
  return sub_D79B8();
}

uint64_t sub_2A4B8(uint64_t a1)
{
  v2 = sub_DC40(&qword_116B18);
  __chkstk_darwin(v2);
  v4 = (v21 - v3);
  v22 = sub_DC40(&qword_116A50);
  __chkstk_darwin(v22);
  v6 = v21 - v5;
  v7 = sub_D6F68();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*(a1 + 8) == 1)
  {
    if ((v11 & 1) == 0)
    {
LABEL_3:
      sub_29B18(v23);
      v12 = v23[11];
      v4[10] = v23[10];
      v4[11] = v12;
      v4[12] = v23[12];
      v13 = v23[7];
      v4[6] = v23[6];
      v4[7] = v13;
      v14 = v23[9];
      v4[8] = v23[8];
      v4[9] = v14;
      v15 = v23[3];
      v4[2] = v23[2];
      v4[3] = v15;
      v16 = v23[5];
      v4[4] = v23[4];
      v4[5] = v16;
      v17 = v23[1];
      *v4 = v23[0];
      v4[1] = v17;
      swift_storeEnumTagMultiPayload();
      sub_DC40(&qword_116A60);
      sub_2AB9C(&qword_116A48, &qword_116A50);
      sub_2AB9C(&qword_116A58, &qword_116A60);
      return sub_D70B8();
    }
  }

  else
  {

    sub_D7E28();
    v19 = sub_D71C8();
    v21[1] = a1;
    v20 = v19;
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();
    sub_16AA0(v11, 0);
    (*(v8 + 8))(v10, v7);
    if (LOBYTE(v23[0]) != 1)
    {
      goto LABEL_3;
    }
  }

  sub_28E14(v6);
  sub_2AFF0(v6, v4);
  swift_storeEnumTagMultiPayload();
  sub_DC40(&qword_116A60);
  sub_2AB9C(&qword_116A48, &qword_116A50);
  sub_2AB9C(&qword_116A58, &qword_116A60);
  sub_D70B8();
  return sub_2B060(v6);
}

uint64_t sub_2A884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_DC40(&qword_115F08);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_DCB80;
  v5 = [*(a1 + 16) localizedName];
  v6 = sub_D7C18();
  v8 = v7;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_14B60();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  String.localized(with:)(v4);

  sub_16000();
  result = sub_D73B8();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_2A98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  v6 = a3 + *(type metadata accessor for GCSProfileShareGestureView() + 24);

  return sub_26780(a2, v6);
}

uint64_t sub_2A9F8()
{
  sub_A9308(0xD000000000000014, 0x80000000000E5070);
  sub_16000();
  v6 = sub_D73B8();
  v7 = v1;
  v8 = v2 & 1;
  v9 = v3;
  sub_2A884(v0, v5);
  sub_DC40(&qword_116A38);
  sub_2AAE0();
  return sub_D79B8();
}

unint64_t sub_2AAE0()
{
  result = qword_116A40;
  if (!qword_116A40)
  {
    sub_EBC0(&qword_116A38);
    sub_2AB9C(&qword_116A48, &qword_116A50);
    sub_2AB9C(&qword_116A58, &qword_116A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116A40);
  }

  return result;
}

uint64_t sub_2AB9C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_EBC0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2AC20(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_DC40(&qword_116840);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2ACF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_DC40(&qword_116840);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2ADA0()
{
  sub_2AE60(319, &qword_116AC0, &type metadata for Bool, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_2AEB0();
    if (v1 <= 0x3F)
    {
      sub_26CD4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2AE60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2AEB0()
{
  result = qword_116AC8;
  if (!qword_116AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_116AC8);
  }

  return result;
}

unint64_t sub_2AF60()
{
  result = qword_116B00;
  if (!qword_116B00)
  {
    sub_EBC0(&qword_116B08);
    sub_2AAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116B00);
  }

  return result;
}

uint64_t sub_2AFF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_116A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B060(uint64_t a1)
{
  v2 = sub_DC40(&qword_116A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2B0D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  return v1;
}

uint64_t sub_2B144@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2B1DC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

uint64_t (*sub_2B24C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_2B340(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&unk_118EC0);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2B458(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo__batteryPresent;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0);
  sub_D6A98();
  return sub_EC10;
}

float sub_2B5DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  return v1;
}

uint64_t sub_2B6E4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

uint64_t (*sub_2B75C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_E248;
}

uint64_t sub_2B858(uint64_t a1)
{
  v2 = sub_DC40(&qword_116B38);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_116B30);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2B970(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_116B38);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo__batteryLevel;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_116B30);
  sub_D6A98();
  return sub_E57C;
}

uint64_t sub_2BB30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  return v1;
}

uint64_t sub_2BBA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_2BC38()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

uint64_t (*sub_2BCA8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_2BDA4(uint64_t a1)
{
  v2 = sub_DC40(&qword_116B48);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_116B40);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2BEBC(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_116B48);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo__batteryState;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_116B40);
  sub_D6A98();
  return sub_EC10;
}

void *sub_2C010()
{
  v1 = *(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo_controller);
  v2 = v1;
  return v1;
}

void sub_2C07C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_DC40(&qword_116B50);
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v50 = v39 - v7;
  v8 = sub_DC40(&qword_116B58);
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v53 = v39 - v9;
  v10 = sub_DC40(&qword_116B60);
  __chkstk_darwin(v10 - 8);
  v12 = v39 - v11;
  v13 = sub_DC40(&qword_116B68);
  v46 = *(v13 - 8);
  v47 = v13;
  __chkstk_darwin(v13);
  v15 = v39 - v14;
  v16 = sub_DC40(&qword_116B70);
  v48 = *(v16 - 8);
  v49 = v16;
  __chkstk_darwin(v16);
  v18 = v39 - v17;
  v19 = *(*v2 + 328);
  v20 = a2;
  v19(a2);
  v21 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo_batteryLevelCancellable;
  if (*&v2[OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo_batteryLevelCancellable])
  {

    sub_D6A48();
  }

  v22 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo_batteryStateCancellable;
  if (*&v2[OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo_batteryStateCancellable])
  {

    sub_D6A48();
  }

  if (a2)
  {
    v45 = v22;
    v23 = *&stru_298.segname[(swift_isaMask & *a1) - 8];
    v56 = v20;
    v24 = v23();
    if (v24)
    {
      v44 = v24;
      v25 = [v24 battery];
      if (v25)
      {
        v26 = v25;
        (*(*v2 + 136))(1);
        (*(*v2 + 184))([v26 batteryLevel]);
        (*(*v2 + 232))([v26 batteryState]);
        swift_getKeyPath();
        sub_D6878();

        v43 = objc_opt_self();
        v27 = [v43 mainRunLoop];
        v57 = v27;
        v41 = sub_D7EC8();
        v28 = *(v41 - 8);
        v40 = *(v28 + 56);
        v42 = v28 + 56;
        v40(v12, 1, 1, v41);
        v39[1] = sub_2C8C4();
        v39[2] = &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>;
        sub_15FB8(&qword_116B80, &qword_116B68);
        v39[0] = sub_2D098(&qword_116B88, sub_2C8C4);
        v29 = v47;
        sub_D6AF8();
        sub_160BC(v12, &qword_116B60);

        (*(v46 + 8))(v15, v29);
        swift_getKeyPath();
        v57 = v2;
        sub_15FB8(&qword_116B90, &qword_116B70);
        v30 = v49;
        v31 = sub_D6B08();

        (*(v48 + 8))(v18, v30);
        *&v3[v21] = v31;

        swift_getKeyPath();
        v32 = v50;
        sub_D6878();

        v33 = [v43 mainRunLoop];
        v57 = v33;
        v40(v12, 1, 1, v41);
        sub_15FB8(&qword_116B98, &qword_116B50);
        v34 = v52;
        v35 = v53;
        sub_D6AF8();
        sub_160BC(v12, &qword_116B60);

        (*(v51 + 8))(v32, v34);
        swift_getKeyPath();
        v57 = v3;
        sub_15FB8(&qword_116BA0, &qword_116B58);
        v36 = v55;
        v37 = sub_D6B08();

        (*(v54 + 8))(v35, v36);
        *&v3[v45] = v37;

        return;
      }

      v38 = v44;
    }

    else
    {
      v38 = v56;
    }
  }
}

id sub_2C890@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 batteryLevel];
  *a2 = v4;
  return result;
}

unint64_t sub_2C8C4()
{
  result = qword_116B78;
  if (!qword_116B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_116B78);
  }

  return result;
}

id sub_2C91C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 batteryState];
  *a2 = result;
  return result;
}

uint64_t sub_2C950()
{
  v1 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo__batteryPresent;
  v2 = sub_DC40(&unk_118EC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo__batteryLevel;
  v4 = sub_DC40(&qword_116B30);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo__batteryState;
  v6 = sub_DC40(&qword_116B40);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t sub_2CA84()
{
  v1 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo__batteryPresent;
  v2 = sub_DC40(&unk_118EC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo__batteryLevel;
  v4 = sub_DC40(&qword_116B30);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo__batteryState;
  v6 = sub_DC40(&qword_116B40);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_2CBF4()
{
  v0 = swift_allocObject();
  sub_2CC2C();
  return v0;
}

uint64_t sub_2CC2C()
{
  v17 = sub_DC40(&qword_116B40);
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = &v16 - v2;
  v4 = sub_DC40(&qword_116B30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_DC40(&unk_118EC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo__batteryPresent;
  v20 = 0;
  sub_D6A88();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo__batteryLevel;
  v19 = 1065353216;
  sub_D6A88();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo__batteryState;
  v18 = -1;
  type metadata accessor for State(0);
  sub_D6A88();
  (*(v1 + 32))(v0 + v14, v3, v17);
  *(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo_batteryLevelCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo_batteryStateCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerBatteryInfo_controller) = 0;
  return v0;
}

uint64_t sub_2CED8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GCSControllerBatteryInfo();
  result = sub_D6A68();
  *a1 = result;
  return result;
}

id sub_2CF18()
{
  v1 = *v0;
  if (*v0)
  {

    return v1;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_2D098(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_2CFA4()
{
  type metadata accessor for GCSPreferencesStore();
  sub_2D098(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DC8();
}

uint64_t type metadata accessor for GCSControllerBatteryInfo()
{
  result = qword_11A9C0;
  if (!qword_11A9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2D098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2D0FC()
{
  type metadata accessor for GCSControllerBatteryInfo();
  v0 = swift_allocObject();
  sub_2CC2C();
  return v0;
}

uint64_t sub_2D150(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = type metadata accessor for GCSControllerBatteryInfo();
  v6 = sub_2D098(&qword_116BA8, type metadata accessor for GCSControllerBatteryInfo);

  return a1(v2, v3, v4, v5, v6);
}

uint64_t sub_2D1FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_D6FA8();
  v48 = 0;
  v40 = v1 + 1;
  type metadata accessor for GCSControllerBatteryInfo();
  sub_2D098(&qword_116BA8, type metadata accessor for GCSControllerBatteryInfo);
  v4 = sub_D6BD8();
  v5 = (*(*v4 + 128))(v4);

  v41 = v1;
  if ((v5 & 1) == 0 || (v6 = sub_D6BD8(), v7 = (*(*v6 + 224))(v6), , v7 == -1))
  {
    LOBYTE(v43) = 1;
    v54[24] = 1;
    sub_DC40(&qword_116DB8);
    sub_15FB8(&qword_116DC0, &qword_116DB8);
    sub_D70B8();
LABEL_11:
    *(v46 + 9) = *&v58[9];
    v45 = v57;
    v46[0] = *v58;
    v43 = v55;
    v44 = v56;
    v51 = v55;
    v52 = v56;
    v53 = v57;
    *v54 = *v58;
    *&v54[9] = *(v46 + 9);
    *&v58[9] = *(v46 + 9);
    *v58 = v46[0];
    sub_16054(&v51, v42, &qword_116BB0);
    sub_160BC(&v55, &qword_116BB0);
    *(&v47[1] + 7) = v52;
    *(&v47[2] + 7) = v53;
    *(&v47[3] + 7) = *v54;
    v47[4] = *&v54[9];
    *(v47 + 7) = v51;
    v31 = v48;
    v49 = *v41;
    v43 = *v40;
    LOBYTE(v44) = *(v40 + 16);
    v32 = *(v41 + 5);
    v33 = swift_allocObject();
    v34 = v41[1];
    v33[1] = *v41;
    v33[2] = v34;
    v33[3] = v41[2];
    sub_16054(&v49, v42, &qword_116BB8);
    sub_16054(&v43, v42, &qword_116BC0);
    v35 = v32;
    v36 = sub_D76C8();
    result = swift_getKeyPath();
    *a1 = v3;
    *(a1 + 8) = 0x4000000000000000;
    *(a1 + 16) = v31;
    *(a1 + 33) = v47[1];
    *(a1 + 49) = v47[2];
    *(a1 + 65) = v47[3];
    *(a1 + 81) = v47[4];
    *(a1 + 17) = v47[0];
    *(a1 + 104) = sub_2DAAC;
    *(a1 + 112) = v33;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = result;
    *(a1 + 144) = v36;
    return result;
  }

  v8 = sub_D6BD8();
  v9 = (*(*v8 + 176))(v8);

  v10 = sub_D6BD8();
  v11 = (*(*v10 + 224))(v10);

  sub_D7028();
  v12 = sub_D73A8();
  v14 = v13;
  v16 = v15;
  sub_D72E8();
  v17 = sub_D7398();
  v39 = v18;
  v37 = v19;

  sub_1F8F0(v12, v14, v16 & 1);

  sub_DC40(&qword_115F08);
  result = swift_allocObject();
  *(result + 16) = xmmword_DCB80;
  v21 = roundf(v9 * 100.0);
  if ((LODWORD(v21) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v21 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v21 < 9.2234e18)
  {
    *(result + 56) = &type metadata for Int;
    *(result + 64) = &protocol witness table for Int;
    *(result + 32) = v21;
    String.localized(with:)(result);

    if (v11 == 1)
    {
      sub_D7738();
    }

    else
    {
      sub_4F804();
    }

    sub_16000();
    v22 = sub_D73B8();
    v24 = v23;
    v26 = v25;
    sub_D72E8();
    v38 = sub_D7398();
    v28 = v27;
    v30 = v29;

    sub_1F8F0(v22, v24, v26 & 1);

    v42[0] = v37 & 1;
    LOBYTE(v49) = v37 & 1;
    v50 = v30 & 1;
    sub_1F900(v17, v39, v37 & 1);

    sub_1F900(v38, v28, v30 & 1);

    sub_1F900(v17, v39, v37 & 1);

    sub_1F900(v38, v28, v30 & 1);

    sub_1F8F0(v38, v28, v30 & 1);

    sub_1F8F0(v17, v39, v37 & 1);

    LOBYTE(v43) = 0;
    sub_DC40(&qword_116DB8);
    sub_15FB8(&qword_116DC0, &qword_116DB8);
    sub_D70B8();
    sub_1F8F0(v38, v28, v30 & 1);

    sub_1F8F0(v17, v39, v37 & 1);

    v57 = v53;
    *v58 = *v54;
    *&v58[9] = *&v54[9];
    v55 = v51;
    v56 = v52;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_2DA00(char a1)
{
  if (a1)
  {
    return sub_D7738();
  }

  else
  {
    return sub_4F804();
  }
}

uint64_t sub_2DA58()
{
  sub_2DAA4();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2DAAC()
{
  type metadata accessor for GCSControllerBatteryInfo();
  sub_2D098(&qword_116BA8, type metadata accessor for GCSControllerBatteryInfo);
  v1 = sub_D6BD8();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(*v1 + 344);
    v4 = v2;
    v3();
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_2D098(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_2DBF8()
{
  type metadata accessor for GCSPreferencesStore();
  sub_2D098(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DF8();
}

uint64_t sub_2DC6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = 0;
  *(a6 + 40) = a5;
  return result;
}

void *sub_2DC98@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_2DCD8()
{
  sub_2DE30(319, &qword_119010, &type metadata for Bool, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_2DE30(319, &qword_116BF0, &type metadata for Float, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_2DE80();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2DE30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2DE80()
{
  if (!qword_116BF8)
  {
    type metadata accessor for State(255);
    v0 = sub_D6AE8();
    if (!v1)
    {
      atomic_store(v0, &qword_116BF8);
    }
  }
}

__n128 sub_2DEE4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2DEF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2DF40(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_2DFA0()
{
  result = qword_116D80;
  if (!qword_116D80)
  {
    sub_EBC0(&qword_116D88);
    sub_2E058();
    sub_15FB8(&qword_116578, &qword_116580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116D80);
  }

  return result;
}

unint64_t sub_2E058()
{
  result = qword_116D90;
  if (!qword_116D90)
  {
    sub_EBC0(&qword_116D98);
    sub_15FB8(&qword_116DA0, &qword_116DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116D90);
  }

  return result;
}

uint64_t sub_2E114()
{
  v0 = sub_D6A38();
  sub_2E2D0(v0, qword_11FB68);
  sub_2E1F0(v0, qword_11FB68);
  return sub_D6A28();
}

uint64_t sub_2E18C()
{
  if (qword_11AAD0 != -1)
  {
    swift_once();
  }

  v0 = sub_D6A38();

  return sub_2E1F0(v0, qword_11FB68);
}

uint64_t sub_2E1F0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2E228@<X0>(uint64_t a1@<X8>)
{
  if (qword_11AAD0 != -1)
  {
    swift_once();
  }

  v2 = sub_D6A38();
  v3 = sub_2E1F0(v2, qword_11FB68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_2E2D0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2E334()
{
  v0 = sub_D69C8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D7BC8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v13[-v6];
  sub_D7BB8();
  sub_D7BB8();
  v8 = *(v2 + 8);
  v8(v7, v1);
  (*(v2 + 32))(v7, v4, v1);
  (*(v2 + 16))(v4, v7, v1);
  sub_D69B8();
  v9 = sub_D7C38();
  v11 = sub_A9308(v9, v10);

  v8(v7, v1);
  return v11;
}

CGColorRef sub_2E65C(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 != 3)
      {
        v1 = 0.0;
        v2 = 0.0;
        v3 = 1.0;
        v4 = 1.0;
        return CGColorCreateGenericRGB(v1, v2, v3, v4);
      }

      v2 = 0.9;
      v1 = 0.1;
LABEL_16:
      v4 = 1.0;
      v3 = v1;
      return CGColorCreateGenericRGB(v1, v2, v3, v4);
    }

    if (a1 == 5)
    {
      v1 = 0.501960784;
      v2 = 0.0;
      goto LABEL_16;
    }

    if (a1 == 6)
    {
      return CGColorCreateGenericRGB(0.862745098, 0.745098039, 0.0, 1.0);
    }

    return CGColorCreateGenericRGB(1.0, 1.0, 1.0, 0.0);
  }

  if (!a1)
  {
    return CGColorCreateGenericRGB(1.0, 1.0, 1.0, 0.0);
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return CGColorCreateGenericRGB(0.9, 0.1, 0.1, 1.0);
    }

    return CGColorCreateGenericRGB(1.0, 1.0, 1.0, 0.0);
  }

  return CGColorCreateGenericRGB(0.882352941, 0.219607843, 0.239215686, 1.0);
}

uint64_t sub_2E760()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_2E790()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_2E7C0()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_2E7F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2E334();
  v6 = v5;
  swift_bridgeObjectRetain_n();
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 != 3)
      {
        v7 = 0.0;
        v8 = 0.0;
        v9 = 1.0;
LABEL_17:
        v10 = 1.0;
        goto LABEL_18;
      }

      v8 = 0.9;
      v7 = 0.1;
      goto LABEL_15;
    }

    if (a1 == 5)
    {
      v7 = 0.501960784;
      v8 = 0.0;
LABEL_15:
      v10 = 1.0;
      v9 = v7;
      goto LABEL_18;
    }

    if (a1 == 6)
    {
      v7 = 0.862745098;
      v8 = 0.745098039;
      v9 = 0.0;
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  if (a1 == 1)
  {
    v7 = 0.882352941;
    v8 = 0.219607843;
    v9 = 0.239215686;
    goto LABEL_17;
  }

  if (a1 != 2)
  {
LABEL_12:
    v7 = 1.0;
    v8 = 1.0;
    v9 = 1.0;
    v10 = 0.0;
    goto LABEL_18;
  }

  v7 = 0.9;
  v8 = 0.1;
  v10 = 1.0;
  v9 = 0.1;
LABEL_18:
  CGColorCreateGenericRGB(v7, v8, v9, v10);
  result = sub_D7578();
  *a2 = a1;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = v4;
  a2[6] = v6;
  a2[7] = a1;
  a2[8] = result;
  return result;
}

uint64_t sub_2E94C()
{
  sub_D8178(*v0);
  sub_D7C78();
  sub_D7C78();
  sub_D7C78();
  sub_D8178(v0[7]);

  return sub_D75F8();
}

Swift::Int sub_2E9BC()
{
  sub_D8168();
  sub_D8178(*v0);
  sub_D7C78();
  sub_D7C78();
  sub_D7C78();
  sub_D8178(v0[7]);
  sub_D75F8();
  return sub_D8198();
}

uint64_t sub_2EA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_31ECC(v7, v9) & 1;
}

Swift::Int sub_2EA9C()
{
  v1 = *v0;
  v2 = v0[7];
  sub_D8168();
  sub_D8178(v1);
  sub_D7C78();
  sub_D7C78();
  sub_D7C78();
  sub_D8178(v2);
  sub_D75F8();
  return sub_D8198();
}

uint64_t sub_2EB5C()
{
  v1 = v0[7];
  sub_D8178(*v0);
  sub_D7C78();
  sub_D7C78();
  sub_D7C78();
  sub_D8178(v1);

  return sub_D75F8();
}

Swift::Int sub_2EC08()
{
  v1 = *v0;
  v2 = v0[7];
  sub_D8168();
  sub_D8178(v1);
  sub_D7C78();
  sub_D7C78();
  sub_D7C78();
  sub_D8178(v2);
  sub_D75F8();
  return sub_D8198();
}

uint64_t sub_2ECD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_D6F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_DC40(&qword_116DC8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_16054(v2, &v14 - v9, &qword_116DC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_D6BB8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_D7E28();
    v13 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2EEF4(uint64_t a1)
{
  v2 = sub_D6BB8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_D6E68();
}

uint64_t sub_2EFBC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LightbarSwatchButton() + 20);

  return sub_31FEC(v3, a1);
}

__n128 sub_2F000@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for LightbarSwatchButton();
  sub_DC40(&qword_116DD0);
  sub_D78B8();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_2F098()
{
  v1 = v0 + *(type metadata accessor for LightbarSwatchButton() + 24);
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  v14 = *(v1 + 32);
  v15 = v2;
  v4 = *(v1 + 48);
  v16 = *(v1 + 64);
  v5 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v5;
  v9 = v14;
  v10 = v4;
  v11 = *(v1 + 64);
  v17 = *(v1 + 80);
  v12 = *(v1 + 80);
  v7 = v13[0];
  v8 = v3;
  sub_16054(v13, v18, &qword_116DD0);
  sub_DC40(&qword_116DD0);
  sub_D78C8();
  v18[2] = v9;
  v18[3] = v10;
  v18[4] = v11;
  v19 = v12;
  v18[0] = v7;
  v18[1] = v8;
  return sub_160BC(v18, &qword_116DD0);
}

uint64_t (*sub_2F1A0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x2D0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for LightbarSwatchButton() + 24));
  v6 = v5[2];
  v7 = v5[3];
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  v8 = v5[4];
  *(v4 + 64) = v8;
  v9 = *(v5 + 10);
  *(v4 + 80) = v9;
  v10 = *v5;
  v11 = v5[1];
  *v4 = *v5;
  *(v4 + 16) = v11;
  *(v4 + 88) = v10;
  *(v4 + 120) = v6;
  *(v4 + 136) = v7;
  *(v4 + 152) = v8;
  *(v4 + 168) = v9;
  *(v4 + 104) = v11;
  sub_16054(v4, v4 + 176, &qword_116DD0);
  *(v4 + 712) = sub_DC40(&qword_116DD0);
  sub_D78B8();
  return sub_2F294;
}

double sub_2F298@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for LightbarSwatchButton();
  sub_DC40(&qword_116DD0);
  sub_D78E8();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_2F348@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_D6D68();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LightbarSwatchButton();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = sub_DC40(&qword_116DD8);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v39 = sub_DC40(&qword_116DE0);
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v35 = &v35 - v14;
  v40 = sub_DC40(&qword_116DE8);
  __chkstk_darwin(v40);
  v36 = &v35 - v15;
  sub_32054(v2, &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_32234(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v43 = v2;
  sub_DC40(&qword_116DF0);
  sub_32530();
  sub_D7848();
  sub_D7A18();
  sub_D6C28();
  v18 = &v13[*(v11 + 36)];
  v19 = v49;
  *v18 = v48;
  *(v18 + 1) = v19;
  *(v18 + 2) = v50;
  sub_D6D58();
  v20 = sub_325E8();
  v21 = sub_327E8(&qword_116E28, &type metadata accessor for PlainButtonStyle);
  v22 = v11;
  v23 = v37;
  sub_D7428();
  (*(v38 + 8))(v6, v23);
  sub_160BC(v13, &qword_116DD8);
  v24 = (v2 + *(v8 + 28));
  v25 = v24[4];
  v44 = v24[3];
  v45 = v25;
  v38 = sub_16000();

  v26 = sub_D73B8();
  v28 = v27;
  LOBYTE(v9) = v29;
  v44 = v22;
  v45 = v23;
  v46 = v20;
  v47 = v21;
  swift_getOpaqueTypeConformance2();
  v30 = v36;
  v31 = v39;
  v32 = v35;
  sub_D7478();
  sub_1F8F0(v26, v28, v9 & 1);

  (*(v41 + 8))(v32, v31);
  v33 = v24[6];
  v44 = v24[5];
  v45 = v33;
  sub_326A0();
  sub_D7508();
  return sub_32830(v30);
}

uint64_t sub_2F850@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_DC40(&qword_116DC8);

  return swift_storeEnumTagMultiPayload();
}

__n128 sub_2F8B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_32898(a1, a4);
  v7 = type metadata accessor for LightbarSwatchButton();
  v8 = a4 + v7[5];
  v9 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a2 + 64);
  v10 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v10;
  v11 = a4 + v7[6];
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  *(v11 + 80) = *(a3 + 80);
  result = *(a3 + 48);
  v14 = *(a3 + 64);
  *(v11 + 48) = result;
  *(v11 + 64) = v14;
  *(v11 + 32) = *(a3 + 32);
  *(a4 + v7[7]) = 0x4030000000000000;
  *(a4 + v7[8]) = 0x4030000000000000;
  return result;
}

uint64_t sub_2F974()
{
  v0 = sub_D69C8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_D7BC8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v15[-v6];
  sub_D7BB8();
  sub_D7BB8();
  v8 = *(v2 + 8);
  v8(v7, v1);
  (*(v2 + 32))(v7, v4, v1);
  (*(v2 + 16))(v4, v7, v1);
  sub_D69B8();
  v9 = sub_D7C38();
  v11 = sub_A9308(v9, v10);
  v13 = v12;

  v8(v7, v1);
  swift_bridgeObjectRetain_n();
  CGColorCreateGenericRGB(1.0, 1.0, 1.0, 0.0);
  result = sub_D7578();
  *&xmmword_11FB80 = 0;
  *(&xmmword_11FB80 + 1) = v11;
  qword_11FB90 = v13;
  unk_11FB98 = v11;
  *&xmmword_11FBA0 = v13;
  *(&xmmword_11FBA0 + 1) = v11;
  qword_11FBB0 = v13;
  unk_11FBB8 = 0;
  qword_11FBC0 = result;
  return result;
}

__int128 *sub_2FBB0()
{
  if (qword_11AAE0 != -1)
  {
    swift_once();
  }

  return &xmmword_11FB80;
}

uint64_t sub_2FC00@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_11AAE0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_31FEC(&xmmword_11FB80, v2);
}

uint64_t sub_2FC70()
{
  v0 = sub_D69C8();
  __chkstk_darwin(v0 - 8);
  v2 = v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_D7BC8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v62 - v8;
  sub_DC40(&qword_116F90);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_DDF20;
  if (qword_11AAE0 != -1)
  {
    swift_once();
  }

  v11 = *&qword_11FBB0;
  v68[2] = xmmword_11FBA0;
  v68[3] = *&qword_11FBB0;
  v12 = qword_11FBC0;
  v69 = qword_11FBC0;
  v14 = xmmword_11FB80;
  v13 = *&qword_11FB90;
  v68[0] = xmmword_11FB80;
  v68[1] = *&qword_11FB90;
  *(v10 + 64) = xmmword_11FBA0;
  *(v10 + 80) = v11;
  *(v10 + 96) = v12;
  *(v10 + 32) = v14;
  *(v10 + 48) = v13;
  sub_31FEC(v68, v67);
  sub_D7BB8();
  sub_D7BB8();
  v15 = v4[1];
  v15(v9, v3);
  v16 = v4[4];
  v62[3] = v4 + 4;
  v65 = v16;
  v16(v9, v6, v3);
  v17 = v4[2];
  v66 = v4 + 2;
  v63 = v17;
  v17(v6, v9, v3);
  sub_D69B8();
  v18 = sub_D7C38();
  v20 = sub_A9308(v18, v19);
  v22 = v21;

  v62[1] = v4 + 1;
  v64 = v15;
  v15(v9, v3);
  swift_bridgeObjectRetain_n();
  CGColorCreateGenericRGB(0.882352941, 0.219607843, 0.239215686, 1.0);
  v23 = sub_D7578();
  *(v10 + 104) = 1;
  *(v10 + 112) = v20;
  *(v10 + 120) = v22;
  *(v10 + 128) = v20;
  *(v10 + 136) = v22;
  *(v10 + 144) = v20;
  *(v10 + 152) = v22;
  *(v10 + 160) = 1;
  *(v10 + 168) = v23;
  sub_D7BB8();
  sub_D7BB8();
  v15(v9, v3);
  v62[2] = v2;
  v65(v9, v6, v3);
  v63(v6, v9, v3);
  sub_D69B8();
  v24 = sub_D7C38();
  v26 = sub_A9308(v24, v25);
  v28 = v27;

  v29 = v64;
  v64(v9, v3);
  swift_bridgeObjectRetain_n();
  CGColorCreateGenericRGB(0.0, 0.0, 1.0, 1.0);
  v30 = sub_D7578();
  *(v10 + 176) = 4;
  *(v10 + 184) = v26;
  *(v10 + 192) = v28;
  *(v10 + 200) = v26;
  *(v10 + 208) = v28;
  *(v10 + 216) = v26;
  *(v10 + 224) = v28;
  *(v10 + 232) = 4;
  *(v10 + 240) = v30;
  sub_D7BB8();
  sub_D7BB8();
  v29(v9, v3);
  v65(v9, v6, v3);
  v31 = v63;
  v63(v6, v9, v3);
  sub_D69B8();
  v32 = sub_D7C38();
  v34 = sub_A9308(v32, v33);
  v36 = v35;

  v37 = v64;
  v64(v9, v3);
  swift_bridgeObjectRetain_n();
  CGColorCreateGenericRGB(0.9, 0.1, 0.1, 1.0);
  v38 = sub_D7578();
  *(v10 + 248) = 2;
  *(v10 + 256) = v34;
  *(v10 + 264) = v36;
  *(v10 + 272) = v34;
  *(v10 + 280) = v36;
  *(v10 + 288) = v34;
  *(v10 + 296) = v36;
  *(v10 + 304) = 2;
  *(v10 + 312) = v38;
  sub_D7BB8();
  sub_D7BB8();
  v37(v9, v3);
  v39 = v65;
  v65(v9, v6, v3);
  v31(v6, v9, v3);
  sub_D69B8();
  v40 = sub_D7C38();
  v42 = sub_A9308(v40, v41);
  v44 = v43;

  v45 = v64;
  v64(v9, v3);
  swift_bridgeObjectRetain_n();
  CGColorCreateGenericRGB(0.501960784, 0.0, 0.501960784, 1.0);
  v46 = sub_D7578();
  *(v10 + 320) = 5;
  *(v10 + 328) = v42;
  *(v10 + 336) = v44;
  *(v10 + 344) = v42;
  *(v10 + 352) = v44;
  *(v10 + 360) = v42;
  *(v10 + 368) = v44;
  *(v10 + 376) = 5;
  *(v10 + 384) = v46;
  sub_D7BB8();
  sub_D7BB8();
  v45(v9, v3);
  v39(v9, v6, v3);
  v47 = v63;
  v63(v6, v9, v3);
  sub_D69B8();
  v48 = sub_D7C38();
  v50 = sub_A9308(v48, v49);
  v52 = v51;

  v53 = v64;
  v64(v9, v3);
  swift_bridgeObjectRetain_n();
  CGColorCreateGenericRGB(0.1, 0.9, 0.1, 1.0);
  v54 = sub_D7578();
  *(v10 + 392) = 3;
  *(v10 + 400) = v50;
  *(v10 + 408) = v52;
  *(v10 + 416) = v50;
  *(v10 + 424) = v52;
  *(v10 + 432) = v50;
  *(v10 + 440) = v52;
  *(v10 + 448) = 3;
  *(v10 + 456) = v54;
  sub_D7BB8();
  sub_D7BB8();
  v53(v9, v3);
  v55 = v53;
  v65(v9, v6, v3);
  v47(v6, v9, v3);
  sub_D69B8();
  v56 = sub_D7C38();
  v58 = sub_A9308(v56, v57);
  v60 = v59;

  v55(v9, v3);
  swift_bridgeObjectRetain_n();
  CGColorCreateGenericRGB(0.862745098, 0.745098039, 0.0, 1.0);
  result = sub_D7578();
  *(v10 + 464) = 6;
  *(v10 + 472) = v58;
  *(v10 + 480) = v60;
  *(v10 + 488) = v58;
  *(v10 + 496) = v60;
  *(v10 + 504) = v58;
  *(v10 + 512) = v60;
  *(v10 + 520) = 6;
  *(v10 + 528) = result;
  qword_11FBC8 = v10;
  return result;
}

uint64_t *sub_305C8()
{
  if (qword_11AAE8 != -1)
  {
    swift_once();
  }

  return &qword_11FBC8;
}

uint64_t sub_30618()
{
  if (qword_11AAE8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_30674@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_D69C8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_D7BC8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v11 = &v31[-v10 - 8];
  if (qword_11AAE8 != -1)
  {
    swift_once();
  }

  v12 = *(qword_11FBC8 + 16);
  if (v12)
  {
    v13 = qword_11FBC8 + 32;
    while (1)
    {
      v32 = *v13;
      v14 = *(v13 + 16);
      v15 = *(v13 + 32);
      v16 = *(v13 + 48);
      v36 = *(v13 + 64);
      v34 = v15;
      v35 = v16;
      v33 = v14;
      if (v32 == a1)
      {
        break;
      }

      v13 += 72;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    v20 = *(&v32 + 1);
    v26 = *(&v33 + 1);
    v22 = v33;
    v28 = *(&v34 + 1);
    v27 = v34;
    v25 = *(&v35 + 1);
    v29 = v35;
    v24 = v36;
    result = sub_31FEC(&v32, v31);
  }

  else
  {
LABEL_7:
    sub_D7BB8();
    sub_D7BB8();
    v17 = *(v6 + 8);
    v17(v11, v5);
    (*(v6 + 32))(v11, v8, v5);
    (*(v6 + 16))(v8, v11, v5);
    sub_D69B8();
    v18 = sub_D7C38();
    v20 = sub_A9308(v18, v19);
    v22 = v21;

    v17(v11, v5);
    swift_bridgeObjectRetain_n();
    CGColorCreateGenericRGB(1.0, 1.0, 1.0, 0.0);
    result = sub_D7578();
    v24 = result;
    a1 = 0;
    v25 = 0;
    v26 = v20;
    v27 = v22;
    v28 = v20;
    v29 = v22;
  }

  *a2 = a1;
  a2[1] = v20;
  a2[2] = v22;
  a2[3] = v26;
  a2[4] = v27;
  a2[5] = v28;
  a2[6] = v29;
  a2[7] = v25;
  a2[8] = v24;
  return result;
}

__n128 sub_30974@<Q0>(uint64_t a1@<X8>)
{
  sub_DC40(&qword_116DD0);
  sub_D78B8();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_309FC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v13 = *(v0 + 48);
  v14 = v1;
  v3 = *(v0 + 64);
  v15 = *(v0 + 80);
  v4 = *(v0 + 32);
  v12[0] = *(v0 + 16);
  v12[1] = v4;
  v8 = v13;
  v9 = v3;
  v10 = *(v0 + 80);
  v16 = *(v0 + 96);
  v11 = *(v0 + 96);
  v6 = v12[0];
  v7 = v2;
  sub_16054(v12, v17, &qword_116DD0);
  sub_DC40(&qword_116DD0);
  sub_D78C8();
  v17[2] = v8;
  v17[3] = v9;
  v17[4] = v10;
  v18 = v11;
  v17[0] = v6;
  v17[1] = v7;
  return sub_160BC(v17, &qword_116DD0);
}

uint64_t (*sub_30AF0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x2D0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  v7 = *(v1 + 80);
  *(v3 + 64) = v7;
  v8 = *(v1 + 96);
  *(v3 + 80) = v8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 32);
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 120) = v5;
  *(v3 + 136) = v6;
  *(v3 + 152) = v7;
  *(v3 + 168) = v8;
  *(v3 + 88) = v9;
  *(v3 + 104) = v10;
  sub_16054(v3, v3 + 176, &qword_116DD0);
  *(v4 + 712) = sub_DC40(&qword_116DD0);
  sub_D78B8();
  return sub_33520;
}

void sub_30BD0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 264;
  v4 = *a1 + 424;
  if (a2)
  {
    v6 = v2[24];
    v5 = v2[25];
    v7 = v2[23];
    v2[33] = v6;
    v2[34] = v5;
    v8 = v2[23];
    v9 = v2[22];
    v2[31] = v9;
    v2[32] = v8;
    v10 = v2[3];
    *(v3 + 32) = v2[2];
    *(v3 + 48) = v10;
    *(v3 + 64) = v2[4];
    v11 = v2[1];
    *v3 = *v2;
    *(v3 + 16) = v11;
    v12 = v2[25];
    *(v2 + 600) = v6;
    *(v2 + 616) = v12;
    *(v2 + 70) = *(v2 + 52);
    *(v3 + 80) = *(v2 + 10);
    *(v2 + 79) = *(v2 + 52);
    *(v2 + 568) = v9;
    *(v2 + 584) = v7;
    sub_31FEC((v2 + 31), (v2 + 40));
    sub_D78C8();
    v13 = *(v3 + 48);
    v2[13] = *(v3 + 32);
    v2[14] = v13;
    v2[15] = *(v3 + 64);
    *(v2 + 32) = *(v3 + 80);
    v14 = *(v3 + 16);
    v2[11] = *v3;
    v2[12] = v14;
    sub_160BC((v2 + 11), &qword_116DD0);
    v15 = v2[25];
    *(v4 + 32) = v2[24];
    *(v4 + 48) = v15;
    *(v4 + 64) = *(v2 + 52);
    v16 = v2[23];
    *v4 = v2[22];
    *(v4 + 16) = v16;
    sub_32024(v4);
  }

  else
  {
    v17 = v2[25];
    *(*a1 + 456) = v2[24];
    *(v4 + 48) = v17;
    *(v4 + 64) = *(v2 + 52);
    v18 = v2[23];
    *v4 = v2[22];
    *(v4 + 16) = v18;
    v19 = v2[3];
    *(v3 + 32) = v2[2];
    *(v3 + 48) = v19;
    *(v3 + 64) = v2[4];
    *(v3 + 80) = *(v2 + 10);
    v20 = v2[1];
    *v3 = *v2;
    *(v3 + 16) = v20;
    sub_D78C8();
    v21 = *(v3 + 48);
    v2[13] = *(v3 + 32);
    v2[14] = v21;
    v2[15] = *(v3 + 64);
    *(v2 + 32) = *(v3 + 80);
    v22 = *(v3 + 16);
    v2[11] = *v3;
    v2[12] = v22;
    sub_160BC((v2 + 11), &qword_116DD0);
  }

  free(v2);
}

double sub_30D6C@<D0>(uint64_t a1@<X8>)
{
  sub_DC40(&qword_116DD0);
  sub_D78E8();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_30E04@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v110 = sub_DC40(&qword_116E48);
  __chkstk_darwin(v110);
  v111 = &v95 - v2;
  v112 = sub_DC40(&qword_116E50);
  v109 = *(v112 - 8);
  __chkstk_darwin(v112);
  v108 = &v95 - v3;
  v4 = sub_D6F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = *(v1 + 8);
  v8 = *v1;
  v156 = *v1;
  if (v157 == 1)
  {
    if ((v8 & 1) == 0)
    {
LABEL_3:
      v103 = sub_D6FB8();
      v132 = 0;
      v102 = sub_D7088();
      LOBYTE(v125) = 1;
      *&v142 = sub_A9308(0xD000000000000014, 0x80000000000E51E0);
      *(&v142 + 1) = v9;
      v101 = sub_16000();
      v10 = sub_D73B8();
      v104 = v11;
      v105 = v10;
      LODWORD(v107) = v12;
      v109 = v13;
      *&v142 = sub_A9308(0xD000000000000013, 0x80000000000E5200);
      *(&v142 + 1) = v14;
      v15 = sub_D73B8();
      v17 = v16;
      v19 = v18;
      sub_D72E8();
      v20 = sub_D7398();
      v22 = v21;
      v24 = v23;
      v106 = v25;

      sub_1F8F0(v15, v17, v19 & 1);

      LODWORD(v142) = sub_D7198();
      v26 = sub_D7388();
      v28 = v27;
      v30 = v29;
      v108 = v31;
      sub_1F8F0(v20, v22, v24 & 1);

      LODWORD(v106) = v107 & 1;
      LOBYTE(v114) = v107 & 1;
      LOBYTE(v142) = v107 & 1;
      v32 = v30 & 1;
      LOBYTE(v133) = v30 & 1;
      LODWORD(v107) = v30 & 1;
      v34 = v104;
      v33 = v105;
      sub_1F900(v105, v104, v106);

      v99 = v28;
      v100 = v26;
      sub_1F900(v26, v28, v32);

      sub_1F8F0(v26, v28, v32);

      v35 = v33;
      v36 = v34;
      sub_1F8F0(v33, v34, v114);

      LOBYTE(v22) = v125;
      v98 = v125;
      v37 = *(v1 + 4);
      v144 = *(v1 + 3);
      v145 = v37;
      v146 = *(v1 + 5);
      v147 = v1[12];
      v38 = *(v1 + 2);
      v142 = *(v1 + 1);
      v143 = v38;
      sub_DC40(&qword_116DD0);
      sub_D78B8();
      v40 = v115;
      v39 = v116;

      sub_32024(&v114);
      *&v142 = v40;
      *(&v142 + 1) = v39;
      v41 = sub_D73B8();
      v43 = v42;
      LOBYTE(v34) = v44;
      LODWORD(v142) = sub_D7198();
      v45 = sub_D7388();
      v96 = v46;
      v97 = v45;
      v48 = v47;
      v101 = v49;
      sub_1F8F0(v41, v43, v34 & 1);

      v50 = v102;
      v133 = v102;
      LOBYTE(v134) = v22;
      *(&v134 + 1) = *v162;
      DWORD1(v134) = *&v162[3];
      *(&v134 + 1) = v35;
      *&v135 = v36;
      BYTE8(v135) = v106;
      *(&v135 + 9) = v161[0];
      HIDWORD(v135) = *(v161 + 3);
      *&v136 = v109;
      v52 = v99;
      v51 = v100;
      *(&v136 + 1) = v100;
      *&v137 = v99;
      BYTE8(v137) = v107;
      *(&v137 + 9) = v160[0];
      HIDWORD(v137) = *(v160 + 3);
      *&v138 = v108;
      v159 = 0;
      v158 = v48 & 1;
      v125 = v102;
      v126 = v134;
      v130 = v108;
      v128 = v136;
      v129 = v137;
      v127 = v135;
      sub_16054(&v133, &v142, &qword_116E78);
      v53 = v96;
      v54 = v97;
      sub_1F900(v97, v96, v48 & 1);
      v55 = v101;

      sub_1F8F0(v54, v53, v48 & 1);

      v142 = v50;
      LOBYTE(v143) = v98;
      *(&v143 + 1) = *v162;
      DWORD1(v143) = *&v162[3];
      *(&v143 + 1) = v105;
      *&v144 = v104;
      BYTE8(v144) = v106;
      *(&v144 + 9) = v161[0];
      HIDWORD(v144) = *(v161 + 3);
      *&v145 = v109;
      *(&v145 + 1) = v51;
      *&v146 = v52;
      BYTE8(v146) = v107;
      HIDWORD(v146) = *(v160 + 3);
      *(&v146 + 9) = v160[0];
      v147 = v108;
      sub_160BC(&v142, &qword_116E78);
      v135 = v127;
      v136 = v128;
      v137 = v129;
      v133 = v125;
      v134 = v126;
      DWORD1(v139) = *&v162[3];
      *(&v139 + 1) = *v162;
      HIDWORD(v140) = *(v161 + 3);
      *(&v140 + 9) = v161[0];
      *&v138 = v130;
      *(&v138 + 1) = 0x402E000000000000;
      LOBYTE(v139) = 0;
      *(&v139 + 1) = v54;
      *&v140 = v53;
      BYTE8(v140) = v48 & 1;
      v141 = v55;
      v142 = v125;
      v143 = v126;
      v145 = v128;
      v146 = v129;
      v144 = v127;
      v147 = v130;
      v148 = 0x402E000000000000;
      v149 = 0;
      *&v150[3] = *&v162[3];
      *v150 = *v162;
      v151 = v54;
      v152 = v53;
      v153 = v48 & 1;
      *&v154[3] = *(v161 + 3);
      *v154 = v161[0];
      v155 = v55;
      sub_16054(&v133, &v114, &qword_116E58);
      sub_160BC(&v142, &qword_116E58);
      *(&v131[2] + 7) = v135;
      *(&v131[1] + 7) = v134;
      *(&v131[5] + 7) = v138;
      *(&v131[6] + 7) = v139;
      *(&v131[7] + 7) = v140;
      *(&v131[8] + 7) = v141;
      *(&v131[3] + 7) = v136;
      *(&v131[4] + 7) = v137;
      *(v131 + 7) = v133;
      v56 = v131[4];
      v57 = v111;
      *(v111 + 97) = v131[5];
      v58 = v131[7];
      *(v57 + 113) = v131[6];
      *(v57 + 129) = v58;
      *(v57 + 9) = *(&v131[7] + 15);
      v59 = v131[0];
      *(v57 + 33) = v131[1];
      v60 = v131[3];
      *(v57 + 49) = v131[2];
      *(v57 + 65) = v60;
      *(v57 + 81) = v56;
      v61 = v132;
      *v57 = v103;
      *(v57 + 1) = 0;
      v57[16] = v61;
      *(v57 + 17) = v59;
      swift_storeEnumTagMultiPayload();
      sub_DC40(&qword_116E60);
      sub_15FB8(&qword_116E68, &qword_116E50);
      sub_15FB8(&qword_116E70, &qword_116E60);
      return sub_D70B8();
    }
  }

  else
  {

    sub_D7E28();
    v63 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();
    sub_160BC(&v156, &qword_1165C8);
    (*(v5 + 8))(v7, v4);
    if (v142 != 1)
    {
      goto LABEL_3;
    }
  }

  v64 = *(v1 + 4);
  v135 = *(v1 + 3);
  v136 = v64;
  v137 = *(v1 + 5);
  *&v138 = v1[12];
  v65 = *(v1 + 2);
  v133 = *(v1 + 1);
  v134 = v65;
  sub_DC40(&qword_116DD0);
  sub_D78E8();
  v135 = v144;
  v136 = v145;
  v137 = v146;
  *&v138 = v147;
  v133 = v142;
  v134 = v143;
  v107 = sub_D7088();
  LOBYTE(v161[0]) = 1;
  v114 = sub_A9308(0xD000000000000014, 0x80000000000E51E0);
  v115 = v66;
  sub_16000();
  v67 = sub_D73B8();
  v104 = v68;
  v105 = v67;
  LODWORD(v103) = v69;
  v106 = v70;
  v114 = sub_A9308(0xD000000000000013, 0x80000000000E5200);
  v115 = v71;
  v72 = sub_D73B8();
  v74 = v73;
  v76 = v75;
  sub_D72E8();
  v77 = sub_D7398();
  v79 = v78;
  v81 = v80;

  sub_1F8F0(v72, v74, v76 & 1);

  LODWORD(v114) = sub_D7198();
  v82 = sub_D7388();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  sub_1F8F0(v77, v79, v81 & 1);

  LOBYTE(v79) = v103 & 1;
  v162[0] = v103 & 1;
  LOBYTE(v114) = v103 & 1;
  v86 &= 1u;
  LOBYTE(v125) = v86;
  v90 = v104;
  v89 = v105;
  sub_1F900(v105, v104, v103 & 1);
  v91 = v106;

  sub_1F900(v82, v84, v86);

  sub_1F8F0(v82, v84, v86);

  sub_1F8F0(v89, v90, v162[0]);

  v114 = v107;
  v115 = 0;
  LOBYTE(v116) = v161[0];
  v117 = v89;
  v118 = v90;
  v119 = v79;
  v120 = v91;
  v121 = v82;
  v122 = v84;
  v123 = v86;
  v124 = v88;
  sub_DC40(&qword_116E78);
  sub_DC40(&qword_116E80);
  sub_15FB8(&qword_116E88, &qword_116E78);
  sub_32908();
  sub_3295C();
  v92 = v108;
  sub_D7878();
  v93 = v109;
  v94 = v112;
  (*(v109 + 16))(v111, v92, v112);
  swift_storeEnumTagMultiPayload();
  sub_DC40(&qword_116E60);
  sub_15FB8(&qword_116E68, &qword_116E50);
  sub_15FB8(&qword_116E70, &qword_116E60);
  sub_D70B8();
  return (*(v93 + 8))(v92, v94);
}

uint64_t sub_31B00()
{
  if (qword_11AAE8 != -1)
  {
    swift_once();
  }

  sub_DC40(&qword_116F70);
  sub_DC40(&qword_116F78);
  sub_15FB8(&qword_116F80, &qword_116F70);
  sub_32908();
  swift_getOpaqueTypeConformance2();
  sub_334C4();
  return sub_D7998();
}

uint64_t sub_31C68@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v13 = *a1;
  v14 = v3;
  v4 = a1[3];
  v15 = a1[2];
  v16 = v4;
  v17 = *(a1 + 8);
  sub_16000();

  v22[2] = v15;
  v22[3] = v16;
  v23 = v17;
  v22[0] = v13;
  v22[1] = v14;
  v20 = v15;
  *v21 = v16;
  *&v21[16] = v17;
  v18 = v13;
  v19 = v14;
  v21[24] = 1;
  *a2 = sub_D73B8();
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  v8 = v18;
  v9 = v19;
  *(a2 + 89) = *&v21[9];
  v10 = *v21;
  *(a2 + 64) = v20;
  *(a2 + 80) = v10;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  v24 = 1;
  sub_31FEC(&v13, v12);
  sub_16054(&v18, v12, &qword_116EA0);
  return sub_160BC(v22, &qword_116EA0);
}

__n128 sub_31D74@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  *&v6[7] = *a1;
  *&v6[23] = *(a1 + 16);
  *&v6[87] = *(a1 + 80);
  *&v6[71] = *(a1 + 64);
  *&v6[55] = *(a1 + 48);
  *&v6[39] = *(a1 + 32);
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 25) = *&v6[16];
  *(a2 + 9) = *v6;
  result = *&v6[32];
  *(a2 + 88) = *&v6[79];
  *(a2 + 73) = *&v6[64];
  *(a2 + 57) = *&v6[48];
  *(a2 + 41) = *&v6[32];
  return result;
}

Swift::Int sub_31E14()
{
  v1 = *v0;
  sub_D8168();
  sub_D8178(v1);
  return sub_D8198();
}

Swift::Int sub_31E88()
{
  v1 = *v0;
  sub_D8168();
  sub_D8178(v1);
  return sub_D8198();
}

uint64_t sub_31ECC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_D8118() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v5 && (sub_D8118() & 1) == 0 || (a1[5] != a2[5] || a1[6] != a2[6]) && (sub_D8118() & 1) == 0)
  {
    return 0;
  }

  if (a1[7] != a2[7])
  {
    return 0;
  }

  v6 = a1[8];
  v7 = a2[8];

  return static Color.== infix(_:_:)(v6, v7);
}

uint64_t type metadata accessor for LightbarSwatchButton()
{
  result = qword_11AD80;
  if (!qword_11AD80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_32054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LightbarSwatchButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_320B8()
{
  v1 = *(type metadata accessor for LightbarSwatchButton() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_DC40(&qword_116DC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_D6BB8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_32234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LightbarSwatchButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_32298()
{
  v1 = type metadata accessor for LightbarSwatchButton();
  v2 = *(v1 - 8);
  v1 -= 8;
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = v3 + *(v1 + 28);
  v5 = *(v4 + 48);
  v19[2] = *(v4 + 32);
  v19[3] = v5;
  v20 = *(v4 + 64);
  v6 = *(v4 + 16);
  v19[0] = *v4;
  v19[1] = v6;
  v7 = v3 + *(v1 + 32);
  v8 = *(v7 + 48);
  v24 = *(v7 + 64);
  v9 = *(v7 + 48);
  v10 = *(v7 + 16);
  v22 = *(v7 + 32);
  v23 = v9;
  v11 = *(v7 + 16);
  v21[0] = *v7;
  v21[1] = v11;
  v15 = v22;
  v16 = v8;
  v17 = *(v7 + 64);
  v13 = v21[0];
  v14 = v10;
  v25 = *(v7 + 80);
  v18 = *(v7 + 80);
  sub_16054(v21, v26, &qword_116DD0);
  sub_31FEC(v19, v26);
  sub_DC40(&qword_116DD0);
  sub_D78C8();
  v26[2] = v15;
  v26[3] = v16;
  v26[4] = v17;
  v27 = v18;
  v26[0] = v13;
  v26[1] = v14;
  return sub_160BC(v26, &qword_116DD0);
}

double sub_32400@<D0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(sub_D6D98() + 20);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = sub_D7048();
  (*(*(v6 - 8) + 104))(&a1[v4], v5, v6);
  __asm { FMOV            V0.2D, #5.0 }

  *a1 = _Q0;
  v12 = *(v3 + *(type metadata accessor for LightbarSwatchButton() + 20) + 64);
  v13 = sub_DC40(&qword_116E08);
  *&a1[*(v13 + 52)] = v12;
  *&a1[*(v13 + 56)] = 256;

  sub_D7A18();
  sub_D6C28();
  v14 = &a1[*(sub_DC40(&qword_116DF0) + 36)];
  *v14 = v16;
  *(v14 + 1) = v17;
  result = *&v18;
  *(v14 + 2) = v18;
  return result;
}

unint64_t sub_32530()
{
  result = qword_116DF8;
  if (!qword_116DF8)
  {
    sub_EBC0(&qword_116DF0);
    sub_15FB8(&qword_116E00, &qword_116E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116DF8);
  }

  return result;
}

unint64_t sub_325E8()
{
  result = qword_116E10;
  if (!qword_116E10)
  {
    sub_EBC0(&qword_116DD8);
    sub_15FB8(&qword_116E18, &qword_116E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116E10);
  }

  return result;
}

unint64_t sub_326A0()
{
  result = qword_116E30;
  if (!qword_116E30)
  {
    sub_EBC0(&qword_116DE8);
    sub_EBC0(&qword_116DD8);
    sub_D6D68();
    sub_325E8();
    sub_327E8(&qword_116E28, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_327E8(&qword_116E38, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116E30);
  }

  return result;
}

uint64_t sub_327E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_32830(uint64_t a1)
{
  v2 = sub_DC40(&qword_116DE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_32898(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_116E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_32908()
{
  result = qword_116E90;
  if (!qword_116E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116E90);
  }

  return result;
}

unint64_t sub_3295C()
{
  result = qword_116E98;
  if (!qword_116E98)
  {
    sub_EBC0(&qword_116E80);
    sub_32908();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116E98);
  }

  return result;
}

uint64_t sub_32A20()
{
  if (sub_D62A8(2, 26, 0, 0))
  {
    sub_D71B8();

    return sub_D6CF8();
  }

  else
  {
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    sub_D7EE8();
    swift_getWitnessTable();
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    return sub_D6CF8();
  }
}

uint64_t sub_32B84()
{
  if (sub_D62A8(2, 26, 0, 0))
  {
    sub_D71B8();
    sub_D6CF8();
  }

  else
  {
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    sub_D7EE8();
    swift_getWitnessTable();
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_32D88()
{
  result = qword_116EA8;
  if (!qword_116EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116EA8);
  }

  return result;
}

__n128 sub_32E20(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_32E44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_32E8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_32F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_DC40(&qword_116E40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_32FF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_DC40(&qword_116E40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

void sub_330B8()
{
  sub_33170();
  if (v0 <= 0x3F)
  {
    sub_3342C(319, &qword_116F10, &type metadata for LightbarSwatch, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_33170()
{
  if (!qword_116F08)
  {
    sub_D6BB8();
    v0 = sub_D6BC8();
    if (!v1)
    {
      atomic_store(v0, &qword_116F08);
    }
  }
}

__n128 sub_331C8(uint64_t a1, __int128 *a2)
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

uint64_t sub_331F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3323C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_332A4()
{
  sub_EBC0(&qword_116DE8);
  sub_326A0();
  sub_16000();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_33320()
{
  result = qword_116F50;
  if (!qword_116F50)
  {
    sub_EBC0(&qword_116F58);
    sub_15FB8(&qword_116E68, &qword_116E50);
    sub_15FB8(&qword_116E70, &qword_116E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116F50);
  }

  return result;
}

void sub_3342C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_334C4()
{
  result = qword_116F88;
  if (!qword_116F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116F88);
  }

  return result;
}

uint64_t sub_3352C()
{
  sub_DC40(&qword_116F98);
  sub_D78B8();
  return v1;
}

void (*sub_335E0(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[1];
  v6 = v1[2];
  v3[10] = v5;
  v3[11] = v6;
  v7 = v1[3];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  sub_16054((v4 + 7), (v4 + 3), &qword_116FA0);
  v4[13] = sub_DC40(&qword_116F98);
  sub_D78B8();
  return sub_336C0;
}

uint64_t sub_336D4()
{
  sub_DC40(&qword_116F98);
  sub_D78E8();
  return v1;
}

uint64_t sub_33730()
{
  sub_DC40(&qword_1164C8);
  sub_D78B8();
  return v1;
}

void (*sub_337E4(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[4];
  v6 = v1[5];
  v3[10] = v5;
  v3[11] = v6;
  v7 = v1[6];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  sub_16054((v4 + 7), (v4 + 3), &qword_1164D0);
  v4[13] = sub_DC40(&qword_1164C8);
  sub_D78B8();
  return sub_338C4;
}

void sub_338D8(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  *(*a1 + 24) = *(*a1 + 80);
  *(v4 + 72) = *(v4 + 64);
  *(v4 + 32) = *(v4 + 88);
  if (a2)
  {

    sub_D78C8();
    sub_164A0(v4 + 48);

    sub_160BC(v4 + 56, a3);
  }

  else
  {
    sub_D78C8();
    sub_164A0(v4 + 48);

    sub_160BC(v4 + 56, a3);
  }

  free(v4);
}

uint64_t sub_339CC()
{
  sub_DC40(&qword_1164C8);
  sub_D78E8();
  return v1;
}

uint64_t sub_33A28()
{
  sub_DC40(&qword_116FA8);
  sub_D78B8();
  return v1;
}

void (*sub_33ADC(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[7];
  v6 = v1[8];
  v3[10] = v5;
  v3[11] = v6;
  v7 = v1[9];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  sub_16054((v4 + 7), (v4 + 3), &qword_116FB0);
  v4[13] = sub_DC40(&qword_116FA8);
  sub_D78B8();
  return sub_33BBC;
}

uint64_t sub_33BD0()
{
  sub_DC40(&qword_116FA8);
  sub_D78E8();
  return v1;
}

uint64_t sub_33C2C()
{
  v1 = v0;
  v10 = *(v0 + 56);
  v11 = *(v0 + 72);
  sub_DC40(&qword_116FA8);
  sub_D78E8();
  v2 = v12;
  v3 = v13;
  v4 = v14;
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v6[5] = v1[4];
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  sub_34680(v1, &v10);
  return sub_34428(v2, v3, v4, KeyPath, sub_342E4, v6);
}

uint64_t sub_33D24@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = sub_DC40(&qword_116FE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = a1[3];
  v40 = a1[2];
  v41 = v9;
  v42 = a1[4];
  v10 = a1[1];
  v38 = *a1;
  v39 = v10;
  swift_getKeyPath();
  v11 = a1[3];
  v54 = a1[2];
  v55 = v11;
  v56 = a1[4];
  v12 = a1[1];
  v52 = *a1;
  v53 = v12;
  sub_DC40(&qword_117040);
  sub_D78D8();

  v13 = sub_342EC();

  if (v13 <= 0)
  {
    swift_getKeyPath();
    v54 = v40;
    v55 = v41;
    v56 = v42;
    v52 = v38;
    v53 = v39;
    sub_D78D8();

    v15 = sub_210CC();

    if (v15 < 1)
    {
      v34 = 1;
      v33 = v37;
      return (*(v6 + 56))(v33, v34, 1, v5);
    }
  }

  v36 = &v36;
  __chkstk_darwin(v14);
  v54 = v40;
  v55 = v41;
  v56 = v42;
  v52 = v38;
  v53 = v39;
  sub_DC40(&qword_117040);
  sub_D78B8();
  v57 = v48;
  v58 = v49;
  v59 = v50;
  v60 = v51;
  v16 = v48;

  sub_35304(&v57);
  if (v16 == __PAIR128__(0xE700000000000000, 0x636972656E6547))
  {
  }

  else
  {
    v17 = sub_D8118();

    if ((v17 & 1) == 0)
    {
      v52 = *(a2 + 56);
      *&v53 = *(a2 + 72);
      sub_DC40(&qword_116FA8);
      sub_D78B8();
      v18 = *(v48 + 16);

      if (v18 >= 2)
      {
        v54 = v40;
        v55 = v41;
        v56 = v42;
        v52 = v38;
        v53 = v39;
        sub_D78B8();
        v48 = v44;
        v49 = v45;
        v50 = v46;
        v51 = v47;
        v19 = v44;

        sub_35304(&v48);
        v43 = v19;
        sub_16000();
        v20 = sub_D73B8();
        v24 = v23 & 1;
        goto LABEL_9;
      }
    }
  }

  v20 = 0;
  v21 = 0;
  v24 = 0;
  v22 = 0;
LABEL_9:
  *&v44 = v20;
  *(&v44 + 1) = v21;
  *&v45 = v24;
  *(&v45 + 1) = v22;
  v54 = v40;
  v55 = v41;
  v56 = v42;
  v52 = v38;
  v53 = v39;
  sub_DC40(&qword_117040);
  sub_D78B8();
  v57 = v48;
  v58 = v49;
  v59 = v50;
  v60 = v51;
  v25 = v49;

  sub_35304(&v57);
  if (__PAIR128__(0x80000000000E5220, 0xD00000000000001BLL) == v25)
  {
  }

  else
  {
    v26 = sub_D8118();

    if ((v26 & 1) == 0)
    {
      v28 = 0;
      v29 = 0;
      v32 = 0;
      v30 = 0;
      goto LABEL_14;
    }
  }

  *&v52 = sub_A9308(0xD00000000000001FLL, 0x80000000000E5240);
  *(&v52 + 1) = v27;
  sub_16000();
  v28 = sub_D73B8();
  v32 = v31 & 1;
LABEL_14:
  *&v52 = v28;
  *(&v52 + 1) = v29;
  *&v53 = v32;
  *(&v53 + 1) = v30;
  sub_DC40(&qword_116FF0);
  sub_DC40(&qword_117000);
  sub_34A70();
  sub_15FB8(&qword_116FF8, &qword_117000);
  sub_D79B8();
  v33 = v37;
  (*(v6 + 32))(v37, v8, v5);
  v34 = 0;
  return (*(v6 + 56))(v33, v34, 1, v5);
}

uint64_t sub_342EC()
{
  sub_DC40(&qword_116F98);
  sub_15FB8(&qword_117050, &qword_116FA0);
  sub_D7918();
  sub_D7928();
  return 0;
}

uint64_t sub_34428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_DC40(&qword_116FA8);
  sub_D78B8();

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  sub_DC40(&qword_116FD0);
  sub_DC40(&qword_116FB0);
  sub_34930();
  sub_15FB8(&qword_117008, &qword_116FB0);
  sub_15FB8(&qword_117010, &qword_116FB0);
  swift_getKeyPath();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a5;
  v13[6] = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_34E70;
  *(v14 + 24) = v13;

  sub_DC40(&qword_117018);
  sub_34F0C();
  return sub_D7988();
}

uint64_t sub_346B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t sub_346F0()
{
  v1 = v0[3];
  v18 = v0[2];
  v19 = v1;
  v20 = v0[4];
  v2 = v0[1];
  v16 = *v0;
  v17 = v2;
  v11 = *(v0 + 56);
  v12 = *(v0 + 9);
  sub_DC40(&qword_116FA8);
  sub_D78E8();
  v3 = v13;
  v4 = v14;
  v5 = v15;
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v8 = v19;
  v7[3] = v18;
  v7[4] = v8;
  v7[5] = v20;
  v9 = v17;
  v7[1] = v16;
  v7[2] = v9;
  sub_34680(&v16, &v11);
  return sub_34428(v3, v4, v5, KeyPath, sub_35818, v7);
}

uint64_t sub_347FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_34844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_348AC()
{
  result = qword_116FB8;
  if (!qword_116FB8)
  {
    sub_EBC0(&qword_116FC0);
    sub_34930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116FB8);
  }

  return result;
}

unint64_t sub_34930()
{
  result = qword_116FC8;
  if (!qword_116FC8)
  {
    sub_EBC0(&qword_116FD0);
    sub_349B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116FC8);
  }

  return result;
}

unint64_t sub_349B4()
{
  result = qword_116FD8;
  if (!qword_116FD8)
  {
    sub_EBC0(&qword_116FE0);
    sub_34A70();
    sub_15FB8(&qword_116FF8, &qword_117000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116FD8);
  }

  return result;
}

unint64_t sub_34A70()
{
  result = qword_116FE8;
  if (!qword_116FE8)
  {
    sub_EBC0(&qword_116FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116FE8);
  }

  return result;
}

uint64_t sub_34AEC()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_34B6C(unint64_t a1)
{
  sub_DC40(&qword_116FA8);
  result = sub_D78B8();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v11 + 16) > a1)
  {
    v3 = (v11 + (a1 << 6));
    v4 = v3[2];
    v5 = v3[3];
    v6 = v3[5];
    v14 = v3[4];
    v15 = v6;
    v12 = v4;
    v13 = v5;
    sub_35294(&v12, v16);

    v7 = v12;
    v8 = v13;
    v9 = v14;
    v10 = v15;
    swift_getAtKeyPath();
    v16[0] = v7;
    v16[1] = v8;
    v16[2] = v9;
    v16[3] = v10;
    sub_35304(v16);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_34C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(_OWORD *))
{
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v13[7] = a1;
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_D7908();
  a7(v15);
  v16[2] = v15[2];
  v16[3] = v15[3];
  v16[4] = v15[4];
  v16[0] = v15[0];
  v16[1] = v15[1];
  return sub_160BC(v16, &qword_117040);
}

uint64_t sub_34D98()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_34DE8@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_34B6C(*a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_34E20()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_34E8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_34EC4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  v6[1] = a1[2];
  v7 = v3;
  v6[0] = v4;
  return v2(&v7, v6);
}

unint64_t sub_34F0C()
{
  result = qword_117020;
  if (!qword_117020)
  {
    sub_EBC0(&qword_117018);
    sub_34F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117020);
  }

  return result;
}

unint64_t sub_34F90()
{
  result = qword_117028;
  if (!qword_117028)
  {
    sub_EBC0(&qword_117030);
    sub_3501C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117028);
  }

  return result;
}

unint64_t sub_3501C()
{
  result = qword_117038;
  if (!qword_117038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117038);
  }

  return result;
}

uint64_t sub_35070@<X0>(uint64_t *a1@<X2>, unint64_t *a2@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a2;
  v14 = *a1;
  v15 = *(a1 + 1);
  sub_DC40(&qword_116FA8);
  result = sub_D78B8();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(v13 + 16))
  {
    v6 = (v13 + (v4 << 6));
    v7 = v6[2];
    v8 = v6[3];
    v9 = v6[5];
    v18 = v6[4];
    v19 = v9;
    v16 = v7;
    v17 = v8;
    sub_35294(&v16, &v12);

    v10 = v17;
    *a3 = v16;
    a3[1] = v10;
    v11 = v19;
    a3[2] = v18;
    a3[3] = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_3513C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  v5 = a1[1];
  v21 = *a1;
  v22 = v5;
  v6 = a1[3];
  v23 = a1[2];
  v24 = v6;
  v7 = *a5;
  v19 = *a4;
  v20 = *(a4 + 1);
  sub_35294(&v21, v17);
  sub_DC40(&qword_116FA8);
  sub_D78B8();
  v8 = v18;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_352F0(v8);
  v8 = result;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v7 < *(v8 + 16))
  {
    v10 = (v8 + (v7 << 6));
    v11 = v10[2];
    v12 = v10[3];
    v13 = v10[5];
    v17[2] = v10[4];
    v17[3] = v13;
    v17[0] = v11;
    v17[1] = v12;
    v14 = v21;
    v15 = v22;
    v16 = v24;
    v10[4] = v23;
    v10[5] = v16;
    v10[2] = v14;
    v10[3] = v15;
    sub_35304(v17);
    v18 = v8;
    return sub_D78C8();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_35234()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

char *sub_35358(char *result, int64_t a2, char a3, char *a4)
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
    sub_DC40(&qword_117048);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_35464@<X0>(_OWORD *a1@<X8>)
{
  v3 = **(v1 + 16);
  swift_bridgeObjectRetain_n();
  sub_DC40(&qword_116F98);
  sub_D78E8();
  swift_getKeyPath();
  sub_DC40(&qword_117040);
  sub_D78D8();

  sub_5F914(v3, v40, *(&v40 + 1), v41, v40, *(&v40 + 1), v41, &v31);
  sub_DC40(&qword_1164C8);
  sub_D78E8();
  v4 = v40;
  v5 = v41;
  swift_getKeyPath();
  sub_D78D8();

  sub_16DE0(v3, v4, *(&v4 + 1), v5, v40, *(&v40 + 1), v41, &v25);
  v6 = v35;
  v7 = v30;
  *v24 = v35;
  *&v24[88] = v30;
  v8 = v26;
  *&v24[24] = v26;
  *&v24[8] = v25;
  v9 = v28;
  *&v24[72] = v29;
  *&v24[56] = v28;
  *&v24[40] = v27;
  v36[2] = v33;
  v36[3] = v34;
  v22 = v33;
  v23 = v34;
  v36[0] = v31;
  v36[1] = v32;
  v20 = v31;
  v21 = v32;
  v10 = v25;
  v38[0] = v25;
  v38[1] = v26;
  v11 = v27;
  v38[3] = v28;
  v38[4] = v29;
  v38[2] = v27;
  v12 = v32;
  *a1 = v31;
  a1[1] = v12;
  v13 = *&v24[16];
  a1[4] = *v24;
  a1[5] = v13;
  v14 = v23;
  a1[2] = v22;
  a1[3] = v14;
  v15 = *&v24[80];
  a1[8] = *&v24[64];
  a1[9] = v15;
  v16 = *&v24[48];
  a1[6] = *&v24[32];
  a1[7] = v16;
  v37 = v6;
  v39 = v7;
  v42 = v11;
  v43 = v9;
  v44 = v29;
  v45 = v30;
  v40 = v10;
  v41 = v8;
  sub_3570C(v36, v18);
  sub_16AB4(v38, v18);
  sub_35768(&v40);
  v18[2] = v33;
  v18[3] = v34;
  v19 = v35;
  v18[0] = v31;
  v18[1] = v32;
  return sub_357BC(v18);
}

id sub_3581C(void *a1)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_38EB4(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_35898()
{
  type metadata accessor for GCSPreferencesStore();
  sub_38EB4(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DC8();
}

uint64_t sub_35924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  else
  {
    type metadata accessor for BluetoothManager();
    sub_38EB4(&qword_117058, type metadata accessor for BluetoothManager);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_359EC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  a1(0);
  sub_38EB4(a2, a3);

  return sub_D6DF8();
}

uint64_t sub_35A58()
{
  type metadata accessor for BluetoothManager();
  sub_38EB4(&qword_117058, type metadata accessor for BluetoothManager);

  return sub_D6DC8();
}

uint64_t sub_35AE4(void *a1, uint64_t a2, int64_t a3)
{
  v37 = _swiftEmptyArrayStorage;
  if (a1)
  {
    v4 = [a1 controllers];
    sub_35F0C();
    v5 = sub_D7D28();

    if (v5 >> 62)
    {
      goto LABEL_48;
    }

    for (i = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
    {
      if (i < 1)
      {
        __break(1u);
        goto LABEL_52;
      }

      v7 = 0;
      v36 = a3;
      v8 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = sub_D7FF8();
        }

        else
        {
          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = [v9 uuidIdentifiers];
        if (!v11)
        {
          goto LABEL_25;
        }

        v12 = v11;
        v13 = sub_D7D28();

        v14 = *(v13 + 16);
        v15 = *(v8 + 2);
        a3 = v15 + v14;
        if (__OFADD__(v15, v14))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && a3 <= *(v8 + 3) >> 1)
        {
          if (*(v13 + 16))
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v15 <= a3)
          {
            v20 = v15 + v14;
          }

          else
          {
            v20 = v15;
          }

          v8 = sub_38A50(isUniquelyReferenced_nonNull_native, v20, 1, v8);
          if (*(v13 + 16))
          {
LABEL_16:
            if ((*(v8 + 3) >> 1) - *(v8 + 2) < v14)
            {
              goto LABEL_44;
            }

            swift_arrayInitWithCopy();

            if (v14)
            {
              v17 = *(v8 + 2);
              v18 = __OFADD__(v17, v14);
              v19 = v17 + v14;
              if (v18)
              {
                goto LABEL_46;
              }

              *(v8 + 2) = v19;
            }

            goto LABEL_25;
          }
        }

        if (v14)
        {
          goto LABEL_41;
        }

LABEL_25:
        v21 = [v10 macAddresses];
        if (!v21)
        {
          goto LABEL_7;
        }

        v22 = v21;
        v23 = sub_D7D28();

        v24 = *(v23 + 16);
        a3 = *(v8 + 2);
        v25 = a3 + v24;
        if (__OFADD__(a3, v24))
        {
          goto LABEL_42;
        }

        v26 = swift_isUniquelyReferenced_nonNull_native();
        if (v26 && (v27 = *(v8 + 3) >> 1, v27 >= v25))
        {
          if (*(v23 + 16))
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (a3 <= v25)
          {
            v28 = a3 + v24;
          }

          else
          {
            v28 = a3;
          }

          v8 = sub_38A50(v26, v28, 1, v8);
          v27 = *(v8 + 3) >> 1;
          if (*(v23 + 16))
          {
LABEL_35:
            if (v27 - *(v8 + 2) < v24)
            {
              goto LABEL_45;
            }

            swift_arrayInitWithCopy();

            if (v24)
            {
              v29 = *(v8 + 2);
              v18 = __OFADD__(v29, v24);
              v30 = v29 + v24;
              if (v18)
              {
                goto LABEL_47;
              }

              *(v8 + 2) = v30;
            }

            goto LABEL_7;
          }
        }

        if (v24)
        {
          goto LABEL_43;
        }

LABEL_7:
        ++v7;

        if (i == v7)
        {
          v37 = v8;
          a3 = v36;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      ;
    }

LABEL_49:

    if (a3)
    {
      v31 = *(*a3 + 1160);

      v33 = v31(v32);

      v34 = sub_38B5C(v33, &v37);

      return v34;
    }

    type metadata accessor for BluetoothManager();
    sub_38EB4(&qword_117058, type metadata accessor for BluetoothManager);
  }

  else
  {
LABEL_52:
    type metadata accessor for GCSPreferencesStore();
    sub_38EB4(&qword_116448, type metadata accessor for GCSPreferencesStore);
  }

  result = sub_D6DD8();
  __break(1u);
  return result;
}

unint64_t sub_35F0C()
{
  result = qword_117060;
  if (!qword_117060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_117060);
  }

  return result;
}

void *sub_35F58(void *a1, uint64_t a2, int64_t a3)
{
  v3 = sub_35AE4(a1, a2, a3);
  v4 = v3;
  if (v3 >> 62)
  {
LABEL_16:
    v5 = sub_D8078();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = sub_D7FF8();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        if ((*(*v7 + 760))())
        {
          sub_D8028();
          sub_D8058();
          sub_D8068();
          sub_D8038();
        }

        else
        {
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_360D0(void *a1, uint64_t a2, int64_t a3)
{
  v3 = sub_35AE4(a1, a2, a3);
  v4 = v3;
  if (v3 >> 62)
  {
LABEL_16:
    v5 = sub_D8078();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = sub_D7FF8();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        if ((*(*v7 + 760))())
        {
        }

        else
        {
          sub_D8028();
          sub_D8058();
          sub_D8068();
          sub_D8038();
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_36248@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t a4@<X8>)
{
  v59 = sub_DC40(&qword_117068);
  __chkstk_darwin(v59);
  v9 = &v51 - v8;
  v10 = sub_DC40(&qword_117070);
  __chkstk_darwin(v10);
  v56 = &v51 - v11;
  v12 = sub_DC40(&qword_117078);
  __chkstk_darwin(v12 - 8);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v58 = &v51 - v15;
  v16 = sub_DC40(&qword_117080);
  v55 = *(v16 - 8);
  __chkstk_darwin(v16);
  v53 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v63 = &v51 - v19;
  v20 = sub_35AE4(a1, a2, a3);
  v21 = v20;
  v68 = _swiftEmptyArrayStorage;
  v22 = v20 >> 62;
  if (v20 >> 62)
  {
LABEL_38:
    v23 = sub_D8078();
  }

  else
  {
    v23 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
  }

  v57 = v16;
  v61 = v9;
  v62 = a4;
  v60 = v10;
  if (!v23)
  {
    v25 = _swiftEmptyArrayStorage;
    v27 = _swiftEmptyArrayStorage;
    v28 = v21 & 0xFFFFFFFFFFFFFF8;
    if (!v22)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v52 = v22;
  v22 = 0;
  v16 = v21 & 0xC000000000000001;
  v10 = v21 & 0xFFFFFFFFFFFFFF8;
  while (!v16)
  {
    if (v22 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v24 = *(v21 + 8 * v22 + 32);

    v9 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    if ((*(*v24 + 760))())
    {
      sub_D8028();
      sub_D8058();
      sub_D8068();
      sub_D8038();
    }

    else
    {
    }

    ++v22;
    if (v9 == v23)
    {
      goto LABEL_15;
    }
  }

  v24 = sub_D7FF8();
  v9 = (v22 + 1);
  if (!__OFADD__(v22, 1))
  {
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  v22 = 0;
  v25 = v68;
  v68 = _swiftEmptyArrayStorage;
  while (2)
  {
    if (v16)
    {
      v26 = sub_D7FF8();
      a4 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      goto LABEL_21;
    }

    if (v22 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_37;
    }

    v26 = *(v21 + 8 * v22 + 32);

    a4 = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
LABEL_21:
      if ((*(*v26 + 760))())
      {
      }

      else
      {
        sub_D8028();
        v9 = v68[2];
        sub_D8058();
        sub_D8068();
        sub_D8038();
      }

      ++v22;
      if (a4 == v23)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_26:
  v27 = v68;
  v28 = v21 & 0xFFFFFFFFFFFFFF8;
  if (!v52)
  {
LABEL_27:
    v29 = *(v28 + 16);
    goto LABEL_30;
  }

LABEL_29:
  v29 = sub_D8078();
LABEL_30:

  if (v29 <= 0)
  {

    swift_storeEnumTagMultiPayload();
    sub_15FB8(&qword_117088, &qword_117070);
    return sub_D70B8();
  }

  else
  {
    v68 = v25;
    sub_DC40(&qword_115EC0);
    sub_15FB8(&qword_117090, &qword_115EC0);
    sub_38E60();
    sub_38EB4(&qword_1170A0, type metadata accessor for Device);
    sub_D7998();
    if ((v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
    {
      v30 = sub_D8078();
      if (v30 < 1)
      {
        goto LABEL_40;
      }

LABEL_34:
      __chkstk_darwin(v30);
      v68 = sub_A9308(0xD000000000000017, 0x80000000000E5260);
      v69 = v31;
      sub_16000();
      v68 = sub_D73B8();
      v69 = v32;
      v70 = v33 & 1;
      v71 = v34;
      v64 = sub_A9308(0xD000000000000016, 0x80000000000E5280);
      v65 = v35;
      v64 = sub_D73B8();
      v65 = v36;
      v66 = v37 & 1;
      v67 = v38;
      sub_39004();
      v39 = v57;
      v40 = v58;
      sub_D79B8();

      v41 = 0;
    }

    else
    {
      v30 = *(v27 + 16);
      if (v30 >= 1)
      {
        goto LABEL_34;
      }

LABEL_40:

      v41 = 1;
      v39 = v57;
      v40 = v58;
    }

    v43 = sub_DC40(&qword_1170A8);
    (*(*(v43 - 8) + 56))(v40, v41, 1, v43);
    v44 = v55;
    v45 = *(v55 + 16);
    v46 = v53;
    v45(v53, v63, v39);
    v47 = v54;
    sub_16054(v40, v54, &qword_117078);
    v48 = v56;
    v45(v56, v46, v39);
    v49 = sub_DC40(&qword_1170B0);
    sub_16054(v47, v48 + *(v49 + 48), &qword_117078);
    sub_160BC(v47, &qword_117078);
    v50 = *(v44 + 8);
    v50(v46, v39);
    sub_16054(v48, v61, &qword_117070);
    swift_storeEnumTagMultiPayload();
    sub_15FB8(&qword_117088, &qword_117070);
    sub_D70B8();
    sub_160BC(v48, &qword_117070);
    sub_160BC(v40, &qword_117078);
    return (v50)(v63, v39);
  }
}

uint64_t sub_36B30()
{
  type metadata accessor for GCSPreferencesStore();
  sub_38EB4(&qword_116448, type metadata accessor for GCSPreferencesStore);
  v0 = sub_D6DF8();
  type metadata accessor for BluetoothManager();
  sub_38EB4(&qword_117058, type metadata accessor for BluetoothManager);
  sub_D6DF8();
  return v0;
}

double sub_36C5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D7078();
  v35 = 1;
  v5 = sub_D6FB8();
  v34 = 1;
  sub_36EDC(a1, &v17);
  v48 = v29;
  v49 = v30;
  v50 = v31;
  v44 = v25;
  v45 = v26;
  v46 = v27;
  v47 = v28;
  v40 = v21;
  v41 = v22;
  v42 = v23;
  v43 = v24;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v52[12] = v29;
  v52[13] = v30;
  v52[14] = v31;
  v52[8] = v25;
  v52[9] = v26;
  v52[10] = v27;
  v52[11] = v28;
  v52[4] = v21;
  v52[5] = v22;
  v52[6] = v23;
  v52[7] = v24;
  v52[0] = v17;
  v52[1] = v18;
  v51 = v32;
  v53 = v32;
  v52[2] = v19;
  v52[3] = v20;
  sub_16054(&v36, v16, &qword_1170C0);
  sub_160BC(v52, &qword_1170C0);
  *&v33[199] = v48;
  *&v33[215] = v49;
  *&v33[231] = v50;
  *&v33[135] = v44;
  *&v33[151] = v45;
  *&v33[167] = v46;
  *&v33[183] = v47;
  *&v33[71] = v40;
  *&v33[87] = v41;
  *&v33[103] = v42;
  *&v33[119] = v43;
  *&v33[7] = v36;
  *&v33[23] = v37;
  *&v33[39] = v38;
  *&v33[55] = v39;
  v6 = *&v33[208];
  *(a2 + 233) = *&v33[192];
  *(a2 + 249) = v6;
  *(a2 + 265) = *&v33[224];
  v7 = *&v33[144];
  *(a2 + 169) = *&v33[128];
  *(a2 + 185) = v7;
  v8 = *&v33[176];
  *(a2 + 201) = *&v33[160];
  *(a2 + 217) = v8;
  v9 = *&v33[80];
  *(a2 + 105) = *&v33[64];
  *(a2 + 121) = v9;
  v10 = *&v33[112];
  *(a2 + 137) = *&v33[96];
  *(a2 + 153) = v10;
  v11 = *&v33[16];
  *(a2 + 41) = *v33;
  *(a2 + 57) = v11;
  result = *&v33[32];
  v13 = *&v33[48];
  *(a2 + 73) = *&v33[32];
  v33[247] = v51;
  v14 = v34;
  v15 = v35;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v15;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = v14;
  *(a2 + 281) = *&v33[240];
  *(a2 + 89) = v13;
  return result;
}

void sub_36EDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for GCSPreferencesStore();
  sub_38EB4(&qword_116448, type metadata accessor for GCSPreferencesStore);

  v4 = sub_D6DF8();
  v86 = v5;
  v87 = v4;
  v85 = sub_D7088();
  v111 = 0;
  *v128 = (*(*a1 + 360))();
  *&v128[8] = v6;
  sub_16000();
  v7 = sub_D73B8();
  v82 = v8;
  v83 = v7;
  v81 = v9;
  v84 = v10;
  v88 = a1;
  if ((*(*a1 + 760))())
  {
    v80 = sub_D6FA8();
    LOBYTE(v154) = 0;
    v77 = sub_D7658();
    sub_D7A18();
    sub_D6C28();
    *&v118[6] = *v112;
    *&v118[22] = *&v112[16];
    *&v118[38] = *&v112[32];
    *v128 = sub_A9308(0xD000000000000013, 0x80000000000E52F0);
    *&v128[8] = v11;
    v12 = sub_D73B8();
    v14 = v13;
    v16 = v15;
    sub_D72E8();
    v17 = sub_D7398();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_1F8F0(v12, v14, v16 & 1);

    *v127 = v77;
    *&v127[8] = 256;
    *&v127[10] = *v118;
    *&v127[26] = *&v118[16];
    *&v127[42] = *&v118[32];
    *&v127[56] = *&v112[40];
    v91 = *&v127[32];
    v92 = *&v127[48];
    v89 = *v127;
    v90 = *&v127[16];
    sub_16054(v127, v128, &qword_1171A0);
    sub_1F900(v17, v19, v21 & 1);

    sub_1F8F0(v17, v19, v21 & 1);

    *v128 = v77;
    *&v128[8] = 256;
    *&v128[10] = *v118;
    *&v128[26] = *&v118[16];
    *&v128[42] = *&v118[32];
    *&v128[56] = *&v112[40];
    sub_160BC(v128, &qword_1171A0);
    v142 = v89;
    v143 = v90;
    v144 = v91;
    v145 = v92;
    *&v146 = v17;
    *(&v146 + 1) = v19;
    LOBYTE(v147) = v21 & 1;
    DWORD1(v147) = *&v127[3];
    *(&v147 + 1) = *v127;
    *(&v147 + 1) = v23;
    v148[3] = v92;
    v148[2] = v91;
    v148[1] = v90;
    v148[0] = v89;
    v149 = v17;
    v150 = v19;
    v151 = v21 & 1;
    *&v152[3] = *&v127[3];
    *v152 = *v127;
    v153 = v23;
    sub_16054(&v142, v128, &qword_117150);
    sub_160BC(v148, &qword_117150);
    *&v141[39] = v144;
    *&v141[55] = v145;
    *&v141[71] = v146;
    *&v141[87] = v147;
    *&v141[7] = v142;
    *&v141[23] = v143;
    v24 = v154;
    v25 = sub_D7198();
    *&v154 = v80;
    *(&v154 + 1) = 0x4014000000000000;
    v155[0] = v24;
    *&v155[49] = *&v141[48];
    *&v155[65] = *&v141[64];
    *&v155[81] = *&v141[80];
    *&v155[96] = *&v141[95];
    *&v155[1] = *v141;
    *&v155[17] = *&v141[16];
    *&v155[33] = *&v141[32];
    *&v155[104] = v25;
    *v128 = sub_A9308(0xD000000000000025, 0x80000000000E52C0);
    *&v128[8] = v26;
    v27 = sub_D73B8();
    v29 = v28;
    LOBYTE(v12) = v30;
    sub_D72E8();
    v31 = sub_D7398();
    v33 = v32;
    v35 = v34;

    sub_1F8F0(v27, v29, v12 & 1);

    *v128 = sub_D7198();
    v36 = sub_D7388();
    v38 = v37;
    LOBYTE(v29) = v39;
    v41 = v40;
    sub_1F8F0(v31, v33, v35 & 1);

    v138 = *&v155[48];
    v139 = *&v155[64];
    v140[0] = *&v155[80];
    *(v140 + 12) = *&v155[92];
    v134 = v154;
    v135 = *v155;
    v136 = *&v155[16];
    v137 = *&v155[32];
    v102 = *&v155[16];
    v103 = *&v155[32];
    v100 = v154;
    v101 = *v155;
    *&v106[12] = *&v155[92];
    *v106 = *&v155[80];
    v104 = *&v155[48];
    v105 = *&v155[64];
    *&v118[32] = *&v155[16];
    *&v118[48] = *&v155[32];
    *v118 = v154;
    *&v118[16] = *v155;
    *&v121[12] = *&v155[92];
    v120 = *&v155[64];
    *v121 = *&v155[80];
    v119 = *&v155[48];
    v133 = v29 & 1;
    sub_16054(&v154, v128, &qword_117160);
    sub_1F900(v36, v38, v29 & 1);

    sub_16054(&v100, v128, &qword_117160);
    sub_1F900(v36, v38, v29 & 1);

    sub_1F8F0(v36, v38, v29 & 1);

    *&v112[64] = v138;
    *&v112[80] = v139;
    *&v112[96] = v140[0];
    *&v112[108] = *(v140 + 12);
    *v112 = v134;
    *&v112[16] = v135;
    *&v112[32] = v136;
    *&v112[48] = v137;
    sub_160BC(v112, &qword_117160);
    *&v127[64] = v119;
    *&v127[80] = v120;
    *&v127[96] = *v121;
    *&v127[112] = *&v121[16];
    *v127 = *v118;
    *&v127[16] = *&v118[16];
    *&v127[32] = *&v118[32];
    *&v127[48] = *&v118[48];
    *&v127[128] = v36;
    *&v127[136] = v38;
    v127[144] = v29 & 1;
    *&v127[152] = v41;
    sub_398E8(v127);
    *&v128[128] = *&v127[128];
    *&v128[144] = *&v127[144];
    v128[160] = v127[160];
    *&v128[64] = *&v127[64];
    *&v128[80] = *&v127[80];
    *&v128[112] = *&v127[112];
    *&v128[96] = *&v127[96];
    *v128 = *v127;
    *&v128[16] = *&v127[16];
    *&v128[48] = *&v127[48];
    *&v128[32] = *&v127[32];
    sub_DC40(&qword_117158);
    sub_DC40(&qword_117160);
    sub_15FB8(&qword_117168, &qword_117158);
    sub_39804();
    sub_D70B8();
    sub_1F8F0(v36, v38, v29 & 1);

    sub_160BC(&v154, &qword_117160);
    *&v128[128] = v97;
    *&v128[144] = v98;
    v128[160] = v99;
    *&v128[64] = v93;
    *&v128[80] = v94;
    *&v128[112] = v96;
    *&v128[96] = v95;
    *v128 = v89;
    *&v128[16] = v90;
    *&v128[48] = v92;
    *&v128[32] = v91;
  }

  else
  {
    v79 = sub_D6FA8();
    LOBYTE(v154) = 0;
    v78 = sub_D75C8();
    sub_D7A18();
    sub_D6C28();
    *&v118[6] = *v112;
    *&v118[22] = *&v112[16];
    *&v118[38] = *&v112[32];
    *v128 = sub_A9308(0xD000000000000016, 0x80000000000E5310);
    *&v128[8] = v42;
    v43 = sub_D73B8();
    v45 = v44;
    v47 = v46;
    sub_D72E8();
    v48 = sub_D7398();
    v50 = v49;
    v52 = v51;
    v54 = v53;

    sub_1F8F0(v43, v45, v47 & 1);

    *v127 = v78;
    *&v127[8] = 256;
    *&v127[10] = *v118;
    *&v127[26] = *&v118[16];
    *&v127[42] = *&v118[32];
    *&v127[56] = *&v112[40];
    v91 = *&v127[32];
    v92 = *&v127[48];
    v89 = *v127;
    v90 = *&v127[16];
    sub_16054(v127, v128, &qword_1171A0);
    sub_1F900(v48, v50, v52 & 1);

    sub_1F8F0(v48, v50, v52 & 1);

    *v128 = v78;
    *&v128[8] = 256;
    *&v128[10] = *v118;
    *&v128[26] = *&v118[16];
    *&v128[42] = *&v118[32];
    *&v128[56] = *&v112[40];
    sub_160BC(v128, &qword_1171A0);
    v100 = v89;
    v101 = v90;
    v102 = v91;
    v103 = v92;
    *&v104 = v48;
    *(&v104 + 1) = v50;
    LOBYTE(v105) = v52 & 1;
    DWORD1(v105) = *&v127[3];
    *(&v105 + 1) = *v127;
    *(&v105 + 1) = v54;
    *&v118[32] = v91;
    *&v118[48] = v92;
    *v118 = v89;
    *&v118[16] = v90;
    *&v119 = v48;
    *(&v119 + 1) = v50;
    LOBYTE(v120) = v52 & 1;
    DWORD1(v120) = *&v127[3];
    *(&v120 + 1) = *v127;
    *(&v120 + 1) = v54;
    sub_16054(&v100, v128, &qword_117150);
    sub_160BC(v118, &qword_117150);
    *&v112[39] = v102;
    *&v112[55] = v103;
    *&v112[71] = v104;
    *&v112[87] = v105;
    *&v112[7] = v100;
    *&v112[23] = v101;
    LOBYTE(v43) = v154;
    v55 = sub_D7198();
    *&v127[65] = *&v112[48];
    *&v127[81] = *&v112[64];
    *&v127[97] = *&v112[80];
    *&v127[17] = *v112;
    *&v127[33] = *&v112[16];
    *v127 = v79;
    *&v127[8] = 0x4014000000000000;
    v127[16] = v43;
    *&v127[112] = *&v112[95];
    *&v127[49] = *&v112[32];
    *&v127[120] = v55;
    sub_397F8(v127);
    v97 = *&v127[128];
    v98 = *&v127[144];
    v99 = v127[160];
    v93 = *&v127[64];
    v94 = *&v127[80];
    v95 = *&v127[96];
    v96 = *&v127[112];
    v89 = *v127;
    v90 = *&v127[16];
    v91 = *&v127[32];
    v92 = *&v127[48];
    sub_DC40(&qword_117158);
    sub_DC40(&qword_117160);
    sub_15FB8(&qword_117168, &qword_117158);
    sub_39804();
    sub_D70B8();
  }

  *&v127[128] = *&v128[128];
  *&v127[144] = *&v128[144];
  *&v127[64] = *&v128[64];
  *&v127[80] = *&v128[80];
  *&v127[112] = *&v128[112];
  *&v127[96] = *&v128[96];
  *v127 = *v128;
  *&v127[16] = *&v128[16];
  *&v127[48] = *&v128[48];
  *&v127[32] = *&v128[32];
  v97 = *&v128[128];
  v98 = *&v128[144];
  v93 = *&v128[64];
  v94 = *&v128[80];
  v95 = *&v128[96];
  v96 = *&v128[112];
  v89 = *v128;
  v90 = *&v128[16];
  v91 = *&v128[32];
  v92 = *&v128[48];
  v107 = *&v128[128];
  v108 = *&v128[144];
  v104 = *&v128[64];
  v105 = *&v128[80];
  *v106 = *&v128[96];
  *&v106[16] = *&v128[112];
  v100 = *v128;
  v101 = *&v128[16];
  v127[160] = v128[160];
  LOBYTE(v154) = v81 & 1;
  v99 = v128[160];
  v109 = v128[160];
  v102 = *&v128[32];
  v103 = *&v128[48];
  sub_1F900(v83, v82, v81 & 1);

  sub_16054(&v89, v118, &qword_117198);
  sub_160BC(v127, &qword_117198);
  sub_1F8F0(v83, v82, v81 & 1);

  *&v112[32] = v100;
  *&v112[48] = v101;
  *&v112[96] = v104;
  *&v112[112] = v105;
  *&v112[64] = v102;
  *&v112[80] = v103;
  v115 = v107;
  v116 = v108;
  v113 = *v106;
  v114 = *&v106[16];
  v124 = v107;
  v125 = v108;
  *v121 = v104;
  *&v121[16] = v105;
  v123 = *&v106[16];
  v122 = *v106;
  *&v112[17] = *v127;
  *v112 = v83;
  *&v112[8] = v82;
  v112[16] = v81 & 1;
  *&v112[20] = *&v127[3];
  *&v112[24] = v84;
  v117 = v109;
  *v118 = v83;
  *&v118[8] = v82;
  v118[16] = v81 & 1;
  *&v118[17] = *v127;
  *&v118[20] = *&v127[3];
  *&v118[24] = v84;
  v126 = v109;
  *&v118[32] = v100;
  *&v118[48] = v101;
  v119 = v102;
  v120 = v103;
  sub_16054(v112, v128, &qword_117140);
  sub_160BC(v118, &qword_117140);
  *&v110[151] = v114;
  *&v110[167] = v115;
  *&v110[183] = v116;
  v110[199] = v117;
  *&v110[87] = *&v112[80];
  *&v110[103] = *&v112[96];
  *&v110[119] = *&v112[112];
  *&v110[135] = v113;
  *&v110[23] = *&v112[16];
  *&v110[39] = *&v112[32];
  *&v110[55] = *&v112[48];
  *&v110[71] = *&v112[64];
  *&v110[7] = *v112;
  v56 = v111;
  v57 = *&v110[192];
  *&v127[209] = *&v110[192];
  *v127 = v85;
  *&v127[8] = 0x4010000000000000;
  v127[16] = v111;
  *&v127[161] = *&v110[144];
  v58 = *&v110[144];
  v59 = *&v110[160];
  *&v127[177] = *&v110[160];
  v60 = *&v110[176];
  *&v127[193] = *&v110[176];
  *&v127[97] = *&v110[80];
  v61 = *&v110[80];
  v62 = *&v110[96];
  *&v127[113] = *&v110[96];
  *&v127[129] = *&v110[112];
  v63 = *&v110[112];
  v64 = *&v110[128];
  *&v127[145] = *&v110[128];
  v65 = *&v110[32];
  *&v127[33] = *&v110[16];
  v66 = *&v110[16];
  *&v127[49] = *&v110[32];
  v67 = *&v110[64];
  *&v127[65] = *&v110[48];
  v68 = *&v110[48];
  *&v127[81] = *&v110[64];
  v69 = *v110;
  *&v127[17] = *v110;
  v70 = *&v127[176];
  *(a2 + 184) = *&v127[160];
  *(a2 + 200) = v70;
  *(a2 + 216) = *&v127[192];
  *(a2 + 225) = *&v127[201];
  v71 = *&v127[112];
  *(a2 + 120) = *&v127[96];
  *(a2 + 136) = v71;
  v72 = *&v127[144];
  *(a2 + 152) = *&v127[128];
  *(a2 + 168) = v72;
  v73 = *&v127[48];
  *(a2 + 56) = *&v127[32];
  *(a2 + 72) = v73;
  v74 = *&v127[80];
  *(a2 + 88) = *&v127[64];
  *(a2 + 104) = v74;
  v75 = *&v127[16];
  *(a2 + 24) = *v127;
  *(a2 + 40) = v75;
  v129 = v58;
  v130 = v59;
  v131 = v60;
  *&v128[97] = v61;
  *&v128[113] = v62;
  *&v128[129] = v63;
  *&v128[145] = v64;
  *&v128[33] = v66;
  *&v128[49] = v65;
  *&v128[65] = v68;
  *&v128[81] = v67;
  *a2 = v87;
  *(a2 + 8) = v86;
  *(a2 + 16) = v88;
  *v128 = v85;
  *&v128[8] = 0x4010000000000000;
  v128[16] = v56;
  v132 = v57;
  *&v128[17] = v69;
  v76 = v87;

  sub_16054(v127, &v89, &qword_117148);
  sub_160BC(v128, &qword_117148);
}

uint64_t sub_37F10@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for GCSPreferencesStore();
  sub_38EB4(&qword_116448, type metadata accessor for GCSPreferencesStore);

  result = sub_D6DF8();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_37FA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for GCSPreferencesStore();
  sub_38EB4(&qword_116448, type metadata accessor for GCSPreferencesStore);

  result = sub_D6DF8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v3;
  *(a1 + 24) = 1;
  return result;
}

Swift::Int ActivityEditView.Use.hashValue.getter(char a1)
{
  sub_D8168();
  sub_D8178(a1 & 1);
  return sub_D8198();
}

Swift::Int sub_380D0()
{
  v1 = *v0;
  sub_D8168();
  sub_D8178(v1);
  return sub_D8198();
}

Swift::Int sub_38144()
{
  v1 = *v0;
  sub_D8168();
  sub_D8178(v1);
  return sub_D8198();
}

double sub_38190@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_D7708();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D7598();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_D6D98();
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_DC40(&qword_1170C8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v54 = &v53 - v15;
  v57 = sub_DC40(&qword_1170D0) - 8;
  __chkstk_darwin(v57);
  v55 = &v53 - v16;
  v17 = *(v10 + 28);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = sub_D7048();
  (*(*(v19 - 8) + 104))(v12 + v17, v18, v19);
  v20 = 5.5;
  if (a1)
  {
    v20 = 7.0;
  }

  *v12 = v20;
  v12[1] = v20;
  v21 = 0x4038000000000000;
  if (a1)
  {
    v21 = 0x403E000000000000;
  }

  v60 = v21;
  sub_DC40(&qword_1170D8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_DC430;
  v23 = enum case for Color.RGBColorSpace.sRGB(_:);
  v24 = *(v6 + 104);
  v24(v8, enum case for Color.RGBColorSpace.sRGB(_:), v5);
  *(v22 + 32) = sub_D76D8();
  v24(v8, v23, v5);
  *(v22 + 40) = sub_D76D8();
  sub_D79D8();
  sub_D6C78();
  v25 = v54;
  sub_39088(v12, v54);
  v26 = v25 + *(v14 + 60);
  v27 = v92;
  *v26 = v91;
  *(v26 + 16) = v27;
  *(v26 + 32) = v93;
  *(v25 + *(v14 + 64)) = 256;
  v28 = sub_D7A18();
  v30 = v29;
  sub_D76F8();
  v32 = v58;
  v31 = v59;
  v33 = v56;
  (*(v58 + 104))(v56, enum case for Image.ResizingMode.stretch(_:), v59);
  v34 = sub_D7758();

  (*(v32 + 8))(v33, v31);
  v35 = sub_D7668();
  LOBYTE(v33) = sub_D71F8();
  sub_D6B68();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v89 = 1;
  v85 = 0;
  v64 = v34;
  LOWORD(v65) = 1;
  *(&v65 + 2) = v87;
  WORD3(v65) = v88;
  *(&v65 + 1) = v35;
  LOBYTE(v66) = v33;
  DWORD1(v66) = *&v86[3];
  *(&v66 + 1) = *v86;
  *(&v66 + 1) = v36;
  *&v67 = v38;
  *(&v67 + 1) = v40;
  *&v68 = v42;
  BYTE8(v68) = 0;
  HIDWORD(v68) = *&v90[3];
  *(&v68 + 9) = *v90;
  *&v69 = v28;
  *(&v69 + 1) = v30;
  v44 = v55;
  sub_21A44(v25, v55, &qword_1170C8);
  v45 = (v44 + *(v57 + 44));
  v46 = v67;
  v45[2] = v66;
  v45[3] = v46;
  v47 = v69;
  v45[4] = v68;
  v45[5] = v47;
  v48 = v65;
  *v45 = v64;
  v45[1] = v48;
  v70[0] = v34;
  v70[1] = 0;
  v71 = 1;
  v73 = v88;
  v72 = v87;
  v74 = v35;
  v75 = v33;
  *&v76[3] = *&v86[3];
  *v76 = *v86;
  v77 = v37;
  v78 = v39;
  v79 = v41;
  v80 = v43;
  v81 = 0;
  *v82 = *v90;
  *&v82[3] = *&v90[3];
  v83 = v28;
  v84 = v30;
  sub_16054(&v64, v62, &qword_1170E0);
  sub_160BC(v70, &qword_1170E0);
  sub_D7A18();
  sub_D6C28();
  v49 = v61;
  sub_21A44(v44, v61, &qword_1170D0);
  v50 = (v49 + *(sub_DC40(&qword_1170E8) + 36));
  v51 = v62[1];
  *v50 = v62[0];
  v50[1] = v51;
  result = *&v63;
  v50[2] = v63;
  return result;
}

double sub_387D0@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_D7078();
  v35 = 1;
  v5 = sub_D6FB8();
  v34 = 1;
  sub_36EDC(v3, &v17);
  v48 = v29;
  v49 = v30;
  v50 = v31;
  v44 = v25;
  v45 = v26;
  v46 = v27;
  v47 = v28;
  v40 = v21;
  v41 = v22;
  v42 = v23;
  v43 = v24;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v52[12] = v29;
  v52[13] = v30;
  v52[14] = v31;
  v52[8] = v25;
  v52[9] = v26;
  v52[10] = v27;
  v52[11] = v28;
  v52[4] = v21;
  v52[5] = v22;
  v52[6] = v23;
  v52[7] = v24;
  v52[0] = v17;
  v52[1] = v18;
  v51 = v32;
  v53 = v32;
  v52[2] = v19;
  v52[3] = v20;
  sub_16054(&v36, v16, &qword_1170C0);
  sub_160BC(v52, &qword_1170C0);
  *&v33[199] = v48;
  *&v33[215] = v49;
  *&v33[231] = v50;
  *&v33[135] = v44;
  *&v33[151] = v45;
  *&v33[167] = v46;
  *&v33[183] = v47;
  *&v33[71] = v40;
  *&v33[87] = v41;
  *&v33[103] = v42;
  *&v33[119] = v43;
  *&v33[7] = v36;
  *&v33[23] = v37;
  *&v33[39] = v38;
  *&v33[55] = v39;
  v6 = *&v33[208];
  *(a1 + 233) = *&v33[192];
  *(a1 + 249) = v6;
  *(a1 + 265) = *&v33[224];
  v7 = *&v33[144];
  *(a1 + 169) = *&v33[128];
  *(a1 + 185) = v7;
  v8 = *&v33[176];
  *(a1 + 201) = *&v33[160];
  *(a1 + 217) = v8;
  v9 = *&v33[80];
  *(a1 + 105) = *&v33[64];
  *(a1 + 121) = v9;
  v10 = *&v33[112];
  *(a1 + 137) = *&v33[96];
  *(a1 + 153) = v10;
  v11 = *&v33[16];
  *(a1 + 41) = *v33;
  *(a1 + 57) = v11;
  result = *&v33[32];
  v13 = *&v33[48];
  *(a1 + 73) = *&v33[32];
  v33[247] = v51;
  v14 = v34;
  v15 = v35;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v15;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = v14;
  *(a1 + 281) = *&v33[240];
  *(a1 + 89) = v13;
  return result;
}

char *sub_38A50(char *result, int64_t a2, char a3, char *a4)
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
    sub_DC40(&qword_1171A8);
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

void *sub_38B5C(unint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v4 = 0;
    v22 = v2 & 0xFFFFFFFFFFFFFF8;
    v23 = v2 & 0xC000000000000001;
    v20 = v2;
    v21 = v2 + 32;
    v19 = i;
    while (1)
    {
      if (v23)
      {
        v5 = sub_D7FF8();
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v4 >= *(v22 + 16))
        {
          goto LABEL_27;
        }

        v5 = *(v21 + 8 * v4);

        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
LABEL_24:
          __break(1u);
          return _swiftEmptyArrayStorage;
        }
      }

      v7 = *a2;
      v26 = *(*a2 + 16);
      if (v26)
      {
        break;
      }

LABEL_5:
      sub_D8028();
      sub_D8058();
      sub_D8068();
      sub_D8038();
LABEL_6:
      if (v4 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    v25 = *(*v5 + 408);

    v8 = 0;
    v9 = v7 + 40;
    while (v8 < *(v7 + 16))
    {

      v11 = v25(v10);
      if (v12)
      {
        sub_16000();
        v13 = sub_D7F18();

        if (!v13)
        {

          goto LABEL_21;
        }
      }

      v14 = (*(*v5 + 264))(v11);
      v15 = [v14 identifier];

      if (v15)
      {
        sub_D7C18();
        v2 = v16;

        sub_16000();
        v17 = sub_D7F18();

        if (!v17)
        {

LABEL_21:

          i = v19;
          v2 = v20;
          goto LABEL_6;
        }
      }

      else
      {
      }

      ++v8;
      v9 += 16;
      if (v26 == v8)
      {

        i = v19;
        v2 = v20;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_38E60()
{
  result = qword_117098;
  if (!qword_117098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117098);
  }

  return result;
}

uint64_t sub_38EB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_38EFC()
{

  sub_DC40(&qword_115EC0);
  sub_15FB8(&qword_117090, &qword_115EC0);
  sub_38E60();
  sub_38EB4(&qword_1170A0, type metadata accessor for Device);
  return sub_D7998();
}

unint64_t sub_39004()
{
  result = qword_1170B8;
  if (!qword_1170B8)
  {
    sub_EBC0(&qword_117080);
    sub_38E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1170B8);
  }

  return result;
}

uint64_t sub_39088(uint64_t a1, uint64_t a2)
{
  v4 = sub_D6D98();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_39128()
{
  result = qword_1170F0;
  if (!qword_1170F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1170F0);
  }

  return result;
}

uint64_t sub_391B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_39210(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_39284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_392CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3931C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_39364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GCSDeviceListRowView.GCSSingleDeviceIconView.Size(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GCSDeviceListRowView.GCSSingleDeviceIconView.Size(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_39530()
{
  result = qword_1170F8;
  if (!qword_1170F8)
  {
    sub_EBC0(&qword_117100);
    sub_15FB8(&qword_117088, &qword_117070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1170F8);
  }

  return result;
}

unint64_t sub_39630()
{
  result = qword_117118;
  if (!qword_117118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117118);
  }

  return result;
}

unint64_t sub_39688()
{
  result = qword_117120;
  if (!qword_117120)
  {
    sub_EBC0(&qword_1170E8);
    sub_39714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117120);
  }

  return result;
}

unint64_t sub_39714()
{
  result = qword_117128;
  if (!qword_117128)
  {
    sub_EBC0(&qword_1170D0);
    sub_15FB8(&qword_117130, &qword_1170C8);
    sub_15FB8(&qword_117138, &qword_1170E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117128);
  }

  return result;
}

unint64_t sub_39804()
{
  result = qword_117170;
  if (!qword_117170)
  {
    sub_EBC0(&qword_117160);
    sub_15FB8(&qword_117178, &qword_117180);
    sub_15FB8(&qword_117188, &qword_117190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117170);
  }

  return result;
}

uint64_t GCSCopilotFusedController.id.getter()
{
  v1 = [v0 fusedControllerIdentifier];
  v2 = sub_D7C18();

  return v2;
}

void sub_39960(uint64_t *a1@<X8>)
{
  v3 = [*v1 fusedControllerIdentifier];
  v4 = sub_D7C18();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

void sub_399B8()
{
  v1 = (*v0 + 264);
  v2 = *v1;
  v3 = (*v1)();
  if (v3)
  {
  }

  else
  {
    v4 = (*(*v0 + 272))([objc_allocWithZone(CBController) init]);
  }

  v5 = (v2)(v4);
  if (v5)
  {
    v6 = v5;
    v27 = sub_39E70;
    v28 = v0;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_284B4;
    v26 = &unk_107720;
    v7 = _Block_copy(&v23);

    [v6 setBluetoothStateChangedHandler:v7];
    _Block_release(v7);
  }

  v8 = v2();
  if (v8)
  {
    v9 = v8;
    v27 = sub_39FC0;
    v28 = v0;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_284B4;
    v26 = &unk_107748;
    v10 = _Block_copy(&v23);

    [v9 setDiscoverableStateChangedHandler:v10];
    _Block_release(v10);
  }

  v11 = v2();
  if (v11)
  {
    v12 = v11;
    v27 = sub_3A158;
    v28 = v0;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_284B4;
    v26 = &unk_107770;
    v13 = _Block_copy(&v23);

    [v12 setInquiryStateChangedHandler:v13];
    _Block_release(v13);
  }

  v14 = v2();
  if (v14)
  {
    v15 = v14;
    v27 = sub_3A2A0;
    v28 = v0;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_3B5B8;
    v26 = &unk_107798;
    v16 = _Block_copy(&v23);

    [v15 getControllerInfoWithCompletion:v16];
    _Block_release(v16);
  }

  v17 = v2();
  if (v17)
  {
    v18 = v17;
    v27 = sub_3A36C;
    v28 = v0;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_3B5B8;
    v26 = &unk_1077C0;
    v19 = _Block_copy(&v23);

    [v18 getControllerSettingsWithCompletionHandler:v19];
    _Block_release(v19);
  }

  v20 = v2();
  if (v20)
  {
    v21 = v20;
    v27 = sub_3A4C0;
    v28 = v0;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_3A5C8;
    v26 = &unk_1077E8;
    v22 = _Block_copy(&v23);

    [v21 activateWithCompletion:v22];
    _Block_release(v22);
  }
}

uint64_t sub_39E70()
{
  v1 = (*v0 + 264);
  v2 = *v1;
  v3 = (*v1)();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 bluetoothState];

    v6 = v5 == &dword_4 + 1;
  }

  else
  {
    v6 = 0;
  }

  result = (*(*v0 + 1016))();
  if (v6 != (result & 1))
  {
    v8 = v2();
    if (v8)
    {
      v9 = v8;
      [v8 bluetoothState];
    }

    v10 = *(*v0 + 1024);

    return v10();
  }

  return result;
}

uint64_t sub_39FA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_39FC0()
{
  sub_DC40(&qword_1171B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_DC430;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0xD00000000000002BLL;
  *(v1 + 40) = 0x80000000000E55A0;
  v2 = *(*v0 + 264);
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 discoverableState];

    v13 = &type metadata for Int32;
    LODWORD(v12) = v5;
    sub_3B548(&v12, (v1 + 64));
  }

  else
  {
    *(v1 + 88) = &type metadata for String;
    *(v1 + 64) = 0;
    *(v1 + 72) = 0xE000000000000000;
  }

  sub_D8158();

  v7 = (v2)(v6);
  if (v7 && (v8 = v7, v9 = [v7 discoverableState], v8, v9 == 2))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  return (*(*v0 + 592))(v10);
}

void *sub_3A158()
{
  result = (*(*v0 + 264))();
  if (result)
  {
    v2 = result;
    v3 = [result inquiryState];

    (*(*v0 + 640))(v3);
    sub_DC40(&qword_1171B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_DC430;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 32) = 0xD000000000000026;
    *(v4 + 40) = 0x80000000000E5570;
    *(v4 + 88) = &type metadata for Int32;
    *(v4 + 64) = v3;
    sub_D8158();
  }

  return result;
}

uint64_t sub_3A2A0(void *a1, uint64_t a2)
{
  result = (*(*v2 + 1176))(0xD000000000000020, 0x80000000000E5540, a2);
  if ((result & 1) == 0)
  {
    v6 = *(*v2 + 320);
    v5 = a1;

    return v6(a1);
  }

  return result;
}

uint64_t sub_3A36C(void *a1, uint64_t a2)
{
  result = (*(*v2 + 1176))(0xD00000000000002BLL, 0x80000000000E5510, a2);
  if ((result & 1) == 0)
  {
    v6 = *(*v2 + 344);
    v5 = a1;

    return v6(a1);
  }

  return result;
}

void sub_3A434(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_3A4C0(uint64_t a1)
{
  result = (*(*v1 + 1176))(0xD000000000000013, 0x80000000000E54F0, a1);
  if ((result & 1) == 0)
  {
    v3 = (*(*v1 + 264))();
    if (v3)
    {
      v4 = v3;
      [v3 bluetoothState];
    }

    v5 = *(*v1 + 1024);

    return v5();
  }

  return result;
}

void sub_3A5C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_3A634()
{
  v6 = (*(*v0 + 336))();
  if (v6)
  {
    if ((*(*v0 + 1064))())
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }

    if ((*(*v0 + 1112))([v6 setSetupAssistantIfNoKeyboard:v1]))
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    v3 = (*(*v0 + 264))([v6 setSetupAssistantIfNoPointingDevice:v2]);
    if (v3)
    {
      v4 = v3;
      aBlock[4] = sub_3A838;
      aBlock[5] = v0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_3A5C8;
      aBlock[3] = &unk_107810;
      v5 = _Block_copy(aBlock);

      [v4 modifyControllerSettings:v6 completionHandler:v5];

      _Block_release(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_3A838(uint64_t a1)
{
  result = (*(*v1 + 1176))(0xD000000000000039, 0x80000000000E54B0, a1);
  if ((result & 1) == 0)
  {
    v3 = *(*v1 + 440);

    return v3(0);
  }

  return result;
}

void sub_3A8DC(uint64_t a1)
{
  v3 = (*v1 + 264);
  v4 = *v3;
  v5 = (*v3)();
  if (!v5 || (v6 = v5, v7 = [v5 discoverableState], v6, v7 != a1))
  {
    v8 = (*(*v1 + 336))();
    if (v8)
    {
      v12 = v8;
      v9 = (v4)([v8 setDiscoverableState:a1]);
      if (v9)
      {
        v10 = v9;
        aBlock[4] = sub_3B164;
        aBlock[5] = v1;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_3A5C8;
        aBlock[3] = &unk_107838;
        v11 = _Block_copy(aBlock);

        [v10 modifyControllerSettings:v12 completionHandler:v11];

        _Block_release(v11);
      }

      else
      {
      }
    }
  }
}

void sub_3AA8C(uint64_t a1)
{
  v2 = v1;
  v10 = [objc_allocWithZone(CBDeviceSettings) init];
  v4 = sub_D7BD8();
  [v10 setName:v4];

  v5 = (*(*v2 + 264))();
  if (v5)
  {
    v6 = v5;
    v7 = (*(*a1 + 264))();
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = a1;
    aBlock[4] = sub_3B1B0;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3A5C8;
    aBlock[3] = &unk_107888;
    v9 = _Block_copy(aBlock);

    [v6 modifyDevice:v7 settings:v10 completion:v9];

    _Block_release(v9);
  }

  else
  {
  }
}

void sub_3AC84(uint64_t a1)
{
  v2 = v1;
  v10 = [objc_allocWithZone(CBDeviceSettings) init];
  v4 = [v10 setSmartRoutingMode:(*(*a1 + 568))()];
  v5 = (*(*v1 + 264))(v4);
  if (v5)
  {
    v6 = v5;
    v7 = (*(*a1 + 264))();
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = a1;
    aBlock[4] = sub_3B254;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3A5C8;
    aBlock[3] = &unk_1078D8;
    v9 = _Block_copy(aBlock);

    [v6 modifyDevice:v7 settings:v10 completion:v9];

    _Block_release(v9);
  }

  else
  {
  }
}

void sub_3AE9C(int a1)
{
  if (a1)
  {
    v3 = 5;
  }

  else
  {
    v3 = 4;
  }

  v4 = (*v1 + 264);
  v5 = *v4;
  v6 = (*v4)();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 bluetoothState];

    if (((v8 != &dword_4 + 1) ^ a1))
    {
      return;
    }

    if ((a1 & 1) == 0)
    {
      sub_CCFD0();
    }
  }

  else if ((a1 & 1) == 0)
  {
    return;
  }

  v9 = v5();
  if (v9)
  {
    v10 = v9;
    v12[4] = sub_3B3F8;
    v12[5] = v1;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_3A5C8;
    v12[3] = &unk_107900;
    v11 = _Block_copy(v12);

    [v10 setPowerState:v3 completion:v11];
    _Block_release(v11);
  }
}

void sub_3B000(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*v1 + 264))();
  if (v4)
  {
    v5 = v4;
    v6 = (*(*a1 + 264))();
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = a1;
    v9[4] = sub_3B480;
    v9[5] = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_3A5C8;
    v9[3] = &unk_107950;
    v8 = _Block_copy(v9);

    [v5 deleteDevice:v6 completion:v8];
    _Block_release(v8);
  }
}

uint64_t sub_3B1B0(uint64_t a1)
{
  v2 = *(v1 + 24);
  result = (*(**(v1 + 16) + 1176))(0xD00000000000001FLL, 0x80000000000E5450, a1);
  if ((result & 1) == 0)
  {
    return (*(*v2 + 960))(0);
  }

  return result;
}

uint64_t sub_3B254(uint64_t a1)
{
  v2 = *(v1 + 24);
  result = (*(**(v1 + 16) + 1176))(0xD00000000000002DLL, 0x80000000000E5400, a1);
  if ((result & 1) == 0)
  {
    sub_DC40(&qword_1171B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_DE9A0;
    *(v4 + 32) = (*(*v2 + 360))();
    *(v4 + 40) = v5;
    *(v4 + 88) = &type metadata for String;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = 0xD000000000000019;
    *(v4 + 72) = 0x80000000000E5430;
    v6 = (*(*v2 + 568))();
    sub_3B524(v6);
    v7 = sub_D7CC8();
    *(v4 + 120) = &type metadata for String;
    *(v4 + 96) = v7;
    *(v4 + 104) = v8;
    sub_D8158();
  }

  return result;
}

uint64_t sub_3B440()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B480(uint64_t a1)
{
  v2 = *(v1 + 24);
  result = (*(**(v1 + 16) + 1176))(0xD000000000000012, 0x80000000000E53C0, a1);
  if ((result & 1) == 0)
  {
    return (*(*v2 + 960))(0);
  }

  return result;
}

const char *sub_3B524(unsigned int a1)
{
  if (a1 > 2)
  {
    return "?";
  }

  else
  {
    return off_107978[a1];
  }
}

_OWORD *sub_3B548(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3B5BC()
{
  sub_DC40(&qword_116840);

  return sub_D78B8();
}

uint64_t sub_3B604(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2 - 8);
  sub_28A68(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_DC40(&qword_116840);
  sub_D78C8();
  return sub_28ACC(a1);
}

void (*sub_3B6A8(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(type metadata accessor for GCSProfileParams() - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = sub_DC40(&qword_116840);
  a1[2] = v5;
  v6 = *(*(v5 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  a1[3] = v7;
  sub_16054(v1, v7, &qword_116840);
  sub_D78B8();
  return sub_28C5C;
}

uint64_t sub_3B7D0()
{
  sub_DC40(&qword_116840);

  return sub_D78E8();
}

__n128 sub_3B818@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSProfileLightView();
  sub_DC40(&qword_116DD0);
  sub_D78B8();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t type metadata accessor for GCSProfileLightView()
{
  result = qword_11B3B0;
  if (!qword_11B3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3B8FC()
{
  v1 = v0 + *(type metadata accessor for GCSProfileLightView() + 20);
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  v14 = *(v1 + 32);
  v15 = v2;
  v4 = *(v1 + 48);
  v16 = *(v1 + 64);
  v5 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v5;
  v9 = v14;
  v10 = v4;
  v11 = *(v1 + 64);
  v17 = *(v1 + 80);
  v12 = *(v1 + 80);
  v7 = v13[0];
  v8 = v3;
  sub_16054(v13, v18, &qword_116DD0);
  sub_DC40(&qword_116DD0);
  sub_D78C8();
  v18[2] = v9;
  v18[3] = v10;
  v18[4] = v11;
  v19 = v12;
  v18[0] = v7;
  v18[1] = v8;
  return sub_160BC(v18, &qword_116DD0);
}

void (*sub_3BA04(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x2D0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for GCSProfileLightView() + 20));
  v6 = v5[2];
  v7 = v5[3];
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  v8 = v5[4];
  *(v4 + 64) = v8;
  v9 = *(v5 + 10);
  *(v4 + 80) = v9;
  v10 = *v5;
  v11 = v5[1];
  *v4 = *v5;
  *(v4 + 16) = v11;
  *(v4 + 88) = v10;
  *(v4 + 120) = v6;
  *(v4 + 136) = v7;
  *(v4 + 152) = v8;
  *(v4 + 168) = v9;
  *(v4 + 104) = v11;
  sub_16054(v4, v4 + 176, &qword_116DD0);
  *(v4 + 712) = sub_DC40(&qword_116DD0);
  sub_D78B8();
  return sub_30BD0;
}

double sub_3BAF8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSProfileLightView();
  sub_DC40(&qword_116DD0);
  sub_D78E8();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_3BBFC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GCSProfileLightView() + 20));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  *&v14 = *(v3 + 10);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_DC40(&qword_116DD0);
  sub_D78E8();
  sub_31D74(v16, &v9);
  v6 = v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v6;
  *(a2 + 96) = v15;
  v7 = v10;
  *a2 = v9;
  *(a2 + 16) = v7;
  result = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = result;
  return result;
}

unint64_t sub_3BCAC()
{
  result = qword_1171B8;
  if (!qword_1171B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1171B8);
  }

  return result;
}

__n128 sub_3BD00@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26780(a1, a3);
  v5 = a3 + *(type metadata accessor for GCSProfileLightView() + 20);
  v6 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v6;
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = *(a2 + 80);
  result = *a2;
  v8 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v8;
  return result;
}

uint64_t sub_3BDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_DC40(&qword_116840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_3BEC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_DC40(&qword_116840);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_3BF90()
{
  sub_26CD4();
  if (v0 <= 0x3F)
  {
    sub_3C014();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3C014()
{
  if (!qword_116F10)
  {
    v0 = sub_D7958();
    if (!v1)
    {
      atomic_store(v0, &qword_116F10);
    }
  }
}

unint64_t sub_3C068()
{
  result = qword_117240;
  if (!qword_117240)
  {
    sub_EBC0(&qword_117248);
    sub_3BCAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117240);
  }

  return result;
}

uint64_t sub_3C0FC()
{
  v0 = type metadata accessor for GCSEntryView();
  __chkstk_darwin(v0 - 8);
  sub_48804(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = objc_allocWithZone(sub_DC40(&qword_117250));
  return sub_D70A8();
}

id sub_3C22C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_3C260()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIViewFactory();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_3C2F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIViewFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3C32C(void *a1, void *a2)
{
  v29 = sub_D6928();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = [a1 bundleIdentifier];
  v12 = sub_D7C18();
  v14 = v13;

  v15 = [a2 bundleIdentifier];
  v16 = sub_D7C18();
  v18 = v17;

  if (v12 == v16 && v14 == v18)
  {
  }

  else
  {
    v20 = sub_D8118();

    v21 = 0;
    if ((v20 & 1) == 0)
    {
      return v21 & 1;
    }
  }

  v22 = [a1 modifiedDate];
  sub_D6908();

  v23 = [a2 modifiedDate];
  sub_D6908();

  v21 = sub_D68F8();
  v24 = *(v4 + 8);
  v25 = v6;
  v26 = v29;
  v24(v25, v29);
  v24(v10, v26);
  return v21 & 1;
}

uint64_t GCSGame.id.getter()
{
  v1 = [v0 bundleIdentifier];
  v2 = sub_D7C18();

  return v2;
}

unint64_t sub_3C5A0(void *a1, void *a2)
{
  v5 = sub_D6998();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v9);
  v12 = &v32[-v11];
  v13 = [v2 controllerToProfileMappings];
  v14 = sub_D7B48();

  v15 = [a1 persistentIdentifier];
  v16 = sub_D7C18();
  v18 = v17;

  if (!*(v14 + 16))
  {

    goto LABEL_10;
  }

  v19 = sub_1ED4C(v16, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:

    return (*&stru_248.segname[(swift_isaMask & *a2) - 8])(v28);
  }

  (*(v6 + 16))(v8, *(v14 + 56) + *(v6 + 72) * v19, v5);

  (*(v6 + 32))(v12, v8, v5);
  v22 = [a2 profiles];
  sub_27120();
  v23 = sub_D7D28();

  __chkstk_darwin(v24);
  *&v32[-16] = v12;
  result = sub_3C928(sub_3E058, &v32[-32], v23);
  if (result >> 62)
  {
    v29 = result;
    v30 = sub_D8078();
    result = v29;
    if (v30)
    {
      goto LABEL_5;
    }

LABEL_12:

    v27 = (*&stru_248.segname[(swift_isaMask & *a2) - 8])(v31);
    goto LABEL_13;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v26 = sub_D7FF8();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v26 = *(result + 32);
  }

  v27 = v26;

LABEL_13:
  (*(v6 + 8))(v12, v5);
  return v27;
}