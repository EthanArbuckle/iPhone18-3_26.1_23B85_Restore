uint64_t sub_22D6EDB98(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27[-v8 - 8];
  v10 = sub_22D72D730();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v13);
  v17 = &v27[-v16 - 8];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510) + 48);
  sub_22D6D42A8(a3, v27);
  sub_22D713738(v27, a4, v9);
  sub_22D6D5984(v27, &qword_27D9FF500, &qword_22D730530);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_22D6D5984(v9, &qword_27D9FFDD0, &qword_22D730140);
  }

  v20 = *(v11 + 32);
  v20(v17, v9, v10);
  v21 = v26;
  v20(v15, v26, v10);
  sub_22D6F4F0C(&unk_27D9FF4E0, MEMORY[0x277CC9578]);
  v22 = sub_22D72E3E0();
  v23 = *(v11 + 8);
  if (v22)
  {
    v23(v17, v10);
    v24 = v21;
    v25 = v15;
  }

  else
  {
    v23(v15, v10);
    v24 = v21;
    v25 = v17;
  }

  return (v20)(v24, v25, v10);
}

void sub_22D6EDE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v241[1] = a3;
  v256 = a2;
  v264 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v251 = v241 - v6;
  v7 = sub_22D72DCF0();
  v253 = *(v7 - 8);
  v254 = v7;
  v8 = *(v253 + 64);
  MEMORY[0x28223BE20](v7);
  v252 = v241 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D72DD20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v257 = v241 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v259 = v241 - v15;
  v261 = type metadata accessor for Alarm(0);
  v243 = *(v261 - 1);
  v16 = *(v243 + 64);
  v17 = MEMORY[0x28223BE20](v261);
  v249 = v241 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v246 = v241 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v255 = v241 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v241[0] = v241 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v241 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v250 = v241 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v242 = v241 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = v241 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v247 = v241 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v248 = v241 - v38;
  v244 = v39;
  MEMORY[0x28223BE20](v37);
  v41 = v241 - v40;
  v42 = sub_22D72E380();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v46 = (v241 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v258 = v3;
  v47 = *(v3 + 216);
  *v46 = v47;
  (*(v43 + 104))(v46, *MEMORY[0x277D85200], v42);
  v48 = v47;
  LOBYTE(v47) = sub_22D72E390();
  (*(v43 + 8))(v46, v42);
  if (v47)
  {
    v263 = v11;
    if (qword_2814572C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v49 = sub_22D72DBE0();
  v50 = __swift_project_value_buffer(v49, qword_2814580E8);
  sub_22D6F37E4(v264, v41);
  v51 = sub_22D72DBB0();
  v52 = sub_22D72E5A0();
  v53 = os_log_type_enabled(v51, v52);
  v260 = v50;
  v262 = v10;
  v245 = v34;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v265[0] = v55;
    *v54 = 136446210;
    sub_22D72D7A0();
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v56 = sub_22D72E960();
    v58 = v57;
    sub_22D6F3848(v41);
    v59 = sub_22D72891C(v56, v58, v265);
    v10 = v262;

    *(v54 + 4) = v59;
    _os_log_impl(&dword_22D6B4000, v51, v52, "%{public}s: Firing event", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x2318D0420](v55, -1, -1);
    MEMORY[0x2318D0420](v54, -1, -1);
  }

  else
  {

    sub_22D6F3848(v41);
  }

  v60 = v261;
  v61 = v263;
  v62 = v259;
  (*(v263 + 16))(v259, v264 + v261[11], v10);
  v63 = (*(v61 + 88))(v62, v10);
  v64 = v63;
  v65 = *MEMORY[0x277CB9920];
  if (v63 == v65)
  {
    v66 = v250;
    sub_22D6F37E4(v264, v250);
    v67 = sub_22D72DBB0();
    v68 = sub_22D72E5A0();
    v69 = os_log_type_enabled(v67, v68);
    LODWORD(v259) = v64;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v265[0] = v71;
      *v70 = 136446210;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v72 = sub_22D72E960();
      v74 = v73;
      sub_22D6F3848(v66);
      v75 = sub_22D72891C(v72, v74, v265);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_22D6B4000, v67, v68, "%{public}s: Scheduled alarm is due to begin", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x2318D0420](v71, -1, -1);
      MEMORY[0x2318D0420](v70, -1, -1);
    }

    else
    {

      sub_22D6F3848(v66);
    }

    v88 = v254;
    v89 = v255;
    sub_22D6F37E4(v264, v27);
    v90 = v251;
    sub_22D6D5A4C(v27 + v60[9], v251, &qword_27D9FF310, &qword_22D7301B8);
    v91 = v253;
    v92 = (*(v253 + 48))(v90, 1, v88);
    v93 = v252;
    if (v92 == 1)
    {
      sub_22D6D5984(v90, &qword_27D9FF310, &qword_22D7301B8);
    }

    else
    {
      (*(v91 + 32))(v252, v90, v88);
      v103 = v60[7];
      v104 = *&v103[v27];
      if (v104)
      {
        *&v105 = COERCE_DOUBLE(sub_22D72DCE0());
      }

      else
      {
        *&v105 = COERCE_DOUBLE(sub_22D72DCD0());
      }

      v131 = *&v105;
      v132 = v106;
      (*(v91 + 8))(v93, v88);
      if ((v132 & 1) == 0)
      {
        sub_22D72D690();
        if (v159 >= v131)
        {
          sub_22D6F37E4(v264, v89);
          v192 = sub_22D72DBB0();
          v193 = sub_22D72E5A0();
          v194 = os_log_type_enabled(v192, v193);
          v255 = v103;
          if (v194)
          {
            v195 = swift_slowAlloc();
            v196 = swift_slowAlloc();
            v265[0] = v196;
            *v195 = 136446210;
            sub_22D72D7A0();
            v254 = v27;
            sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
            v197 = sub_22D72E960();
            v199 = v198;
            sub_22D6F3848(v89);
            v200 = sub_22D72891C(v197, v199, v265);
            v60 = v261;
            v27 = v254;

            *(v195 + 4) = v200;
            _os_log_impl(&dword_22D6B4000, v192, v193, "%{public}s: Alarm wants countdown but is expired; showing alert", v195, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v196);
            MEMORY[0x2318D0420](v196, -1, -1);
            MEMORY[0x2318D0420](v195, -1, -1);
          }

          else
          {

            sub_22D6F3848(v89);
          }

          v213 = v60[11];
          v215 = v262;
          v214 = v263;
          v216 = *(v263 + 104);
          v217 = v257;
          v216(v257, *MEMORY[0x277CB9918], v262);
          v218 = sub_22D72DD10();
          v219 = *(v214 + 8);
          v219(v217, v215);
          if (v218 & 1) != 0 || (v216(v217, v259, v215), v220 = sub_22D72DD10(), v219(v217, v215), (v220))
          {
            if (!__OFADD__(v104, 1))
            {
              *&v255[v27] = v104 + 1;
              v221 = v261;
              v222 = (v27 + v261[10]);
              *v222 = 0;
              v222[8] = 1;
              v223 = v221[14];
              v224 = sub_22D72D730();
              (*(*(v224 - 8) + 24))(v27 + v223, v256, v224);
              v225 = v262;
              v219((v27 + v213), v262);
              v216((v27 + v213), *MEMORY[0x277CB9910], v225);
              goto LABEL_33;
            }

            goto LABEL_62;
          }
        }

        else
        {
          v160 = v159;
          v161 = v241[0];
          sub_22D6F37E4(v264, v241[0]);
          v162 = sub_22D72DBB0();
          v163 = sub_22D72E5A0();
          if (os_log_type_enabled(v162, v163))
          {
            v164 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            v265[0] = v165;
            *v164 = 136446210;
            sub_22D72D7A0();
            sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
            v166 = sub_22D72E960();
            v168 = v167;
            sub_22D6F3848(v161);
            v169 = sub_22D72891C(v166, v168, v265);
            v60 = v261;

            *(v164 + 4) = v169;
            _os_log_impl(&dword_22D6B4000, v162, v163, "%{public}s: Showing countdown", v164, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v165);
            MEMORY[0x2318D0420](v165, -1, -1);
            MEMORY[0x2318D0420](v164, -1, -1);
          }

          else
          {

            sub_22D6F3848(v161);
          }

          v201 = v262;
          v202 = v263;
          v203 = v60[11];
          v204 = *(v263 + 104);
          v205 = v257;
          v204(v257, *MEMORY[0x277CB9910], v262);
          v206 = sub_22D72DD10();
          v207 = *(v202 + 8);
          v207(v205, v201);
          if (v206 & 1) != 0 || (v204(v205, *MEMORY[0x277CB9908], v201), v208 = sub_22D72DD10(), v207(v205, v201), (v208) || (v204(v205, v259, v201), v209 = sub_22D72DD10(), v207(v205, v201), (v209))
          {
            v210 = (v27 + v60[10]);
            *v210 = v160;
            v210[8] = 0;
            v211 = v60[14];
            v212 = sub_22D72D730();
            (*(*(v212 - 8) + 24))(v27 + v211, v256, v212);
            v207((v27 + v203), v201);
            v204((v27 + v203), *MEMORY[0x277CB9918], v201);
            goto LABEL_33;
          }
        }

        goto LABEL_53;
      }
    }

    v133 = v60[11];
    v134 = v262;
    v135 = v263;
    v136 = *(v263 + 104);
    v137 = v257;
    v136(v257, *MEMORY[0x277CB9918], v262);
    v138 = sub_22D72DD10();
    v139 = *(v135 + 8);
    v139(v137, v134);
    if (v138 & 1) != 0 || (v136(v137, v259, v134), v140 = sub_22D72DD10(), v139(v137, v134), (v140))
    {
      v141 = v60[7];
      v142 = *(v27 + v141);
      v119 = __OFADD__(v142, 1);
      v143 = v142 + 1;
      if (!v119)
      {
        *(v27 + v141) = v143;
        v144 = (v27 + v60[10]);
        *v144 = 0;
        v144[8] = 1;
        v145 = v60[14];
        v146 = sub_22D72D730();
        (*(*(v146 - 8) + 24))(v27 + v145, v256, v146);
        v139((v27 + v133), v134);
        v136((v27 + v133), *MEMORY[0x277CB9910], v134);
LABEL_33:
        v147 = __swift_project_boxed_opaque_existential_1((v258 + 176), *(v258 + 200));
        v148 = *(*v147 + 56);
        v149 = MEMORY[0x28223BE20](v147);
        v241[-4] = v150;
        v241[-3] = v27;
        v241[-2] = 0;
        MEMORY[0x28223BE20](v149);
        v241[-2] = sub_22D6F5A94;
        v241[-1] = v151;
        os_unfair_lock_lock(v148 + 4);
        sub_22D6F5B28(v152);
        os_unfair_lock_unlock(v148 + 4);
        v153 = v258;
        sub_22D6DAC98();
        v154 = __swift_project_boxed_opaque_existential_1((v153 + 56), *(v153 + 80));
        v155 = v242;
        sub_22D6F37E4(v264, v242);
        v156 = (*(v243 + 80) + 16) & ~*(v243 + 80);
        v157 = swift_allocObject();
        sub_22D6D3C4C(v155, v157 + v156);
        v158 = *v154;
        sub_22D6BB384(v27, sub_22D6F5A90, v157);

        v176 = v27;
        goto LABEL_57;
      }

      __break(1u);
      goto LABEL_61;
    }

LABEL_53:
    v226 = v27;
    sub_22D6F45E8();
    v227 = swift_allocError();
    swift_willThrow();
    v228 = v249;
    sub_22D6F37E4(v264, v249);
    v229 = v227;
    v230 = sub_22D72DBB0();
    v231 = sub_22D72E580();

    if (os_log_type_enabled(v230, v231))
    {
      v232 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v265[0] = v234;
      *v232 = 136446466;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v235 = sub_22D72E960();
      v237 = v236;
      sub_22D6F3848(v228);
      v238 = sub_22D72891C(v235, v237, v265);

      *(v232 + 4) = v238;
      *(v232 + 12) = 2114;
      v239 = v227;
      v240 = _swift_stdlib_bridgeErrorToNSError();
      *(v232 + 14) = v240;
      *v233 = v240;
      _os_log_impl(&dword_22D6B4000, v230, v231, "%{public}s: Failed to update alarm state to alert: %{public}@", v232, 0x16u);
      sub_22D6D5984(v233, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v233, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v234);
      MEMORY[0x2318D0420](v234, -1, -1);
      MEMORY[0x2318D0420](v232, -1, -1);
    }

    else
    {

      sub_22D6F3848(v228);
    }

    v176 = v226;
    goto LABEL_57;
  }

  if (v63 == *MEMORY[0x277CB9918])
  {
    v76 = v247;
    sub_22D6F37E4(v264, v247);
    v77 = sub_22D72DBB0();
    v78 = sub_22D72E5A0();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = v76;
      v81 = v64;
      v82 = swift_slowAlloc();
      v265[0] = v82;
      *v79 = 136446210;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v83 = sub_22D72E960();
      v85 = v84;
      sub_22D6F3848(v80);
      v86 = sub_22D72891C(v83, v85, v265);
      v60 = v261;

      *(v79 + 4) = v86;
      _os_log_impl(&dword_22D6B4000, v77, v78, "%{public}s: Transitioning from countdown to alert", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      v87 = v82;
      v64 = v81;
      MEMORY[0x2318D0420](v87, -1, -1);
      MEMORY[0x2318D0420](v79, -1, -1);
    }

    else
    {

      sub_22D6F3848(v76);
    }

    v107 = v257;
    v108 = v245;
    sub_22D6F37E4(v264, v245);
    v109 = v60[11];
    v111 = v262;
    v110 = v263;
    v112 = *(v263 + 104);
    v112(v107, v64, v262);
    v113 = sub_22D72DD10();
    v114 = *(v110 + 8);
    v114(v107, v111);
    if ((v113 & 1) == 0)
    {
      v112(v107, v65, v111);
      v115 = sub_22D72DD10();
      v114(v107, v111);
      if ((v115 & 1) == 0)
      {
        sub_22D6F45E8();
        v177 = swift_allocError();
        swift_willThrow();
        v178 = v108;
        v179 = v246;
        sub_22D6F37E4(v264, v246);
        v180 = v177;
        v181 = sub_22D72DBB0();
        v182 = sub_22D72E580();

        if (os_log_type_enabled(v181, v182))
        {
          v183 = swift_slowAlloc();
          v184 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          v265[0] = v185;
          *v183 = 136446466;
          sub_22D72D7A0();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
          v186 = sub_22D72E960();
          v188 = v187;
          sub_22D6F3848(v179);
          v189 = sub_22D72891C(v186, v188, v265);

          *(v183 + 4) = v189;
          *(v183 + 12) = 2114;
          v190 = v177;
          v191 = _swift_stdlib_bridgeErrorToNSError();
          *(v183 + 14) = v191;
          *v184 = v191;
          _os_log_impl(&dword_22D6B4000, v181, v182, "%{public}s: Failed to update alarm state to countdown: %{public}@", v183, 0x16u);
          sub_22D6D5984(v184, &unk_27D9FF4D0, &qword_22D730180);
          MEMORY[0x2318D0420](v184, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v185);
          MEMORY[0x2318D0420](v185, -1, -1);
          MEMORY[0x2318D0420](v183, -1, -1);
        }

        else
        {

          sub_22D6F3848(v179);
        }

        v176 = v178;
        goto LABEL_57;
      }
    }

    v116 = v261;
    v117 = v261[7];
    v118 = *(v108 + v117);
    v119 = __OFADD__(v118, 1);
    v120 = v118 + 1;
    if (!v119)
    {
      *(v108 + v117) = v120;
      v121 = v108 + v116[10];
      *v121 = 0;
      *(v121 + 8) = 1;
      v122 = v116[14];
      v123 = sub_22D72D730();
      (*(*(v123 - 8) + 24))(v108 + v122, v256, v123);
      v124 = v262;
      v114((v108 + v109), v262);
      v112((v108 + v109), *MEMORY[0x277CB9910], v124);
      v125 = __swift_project_boxed_opaque_existential_1((v258 + 176), *(v258 + 200));
      v126 = *(*v125 + 56);
      v127 = MEMORY[0x28223BE20](v125);
      v241[-4] = v128;
      v241[-3] = v108;
      v241[-2] = 0;
      MEMORY[0x28223BE20](v127);
      v241[-2] = sub_22D6F5A94;
      v241[-1] = v129;
      os_unfair_lock_lock(v126 + 4);
      sub_22D6F5B28(v130);
      os_unfair_lock_unlock(v126 + 4);
      v170 = v258;
      sub_22D6DAC98();
      v171 = __swift_project_boxed_opaque_existential_1((v170 + 56), *(v170 + 80));
      v172 = v242;
      sub_22D6F37E4(v264, v242);
      v173 = (*(v243 + 80) + 16) & ~*(v243 + 80);
      v174 = swift_allocObject();
      sub_22D6D3C4C(v172, v174 + v173);
      v175 = *v171;
      sub_22D6BB384(v108, sub_22D6F5A90, v174);

      v176 = v108;
LABEL_57:
      sub_22D6F3848(v176);
      return;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v63 == *MEMORY[0x277CB9908] || v63 == *MEMORY[0x277CB9910])
  {
    v94 = v248;
    sub_22D6F37E4(v264, v248);
    v95 = sub_22D72DBB0();
    v96 = sub_22D72E580();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v265[0] = v98;
      *v97 = 136446210;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v99 = sub_22D72E960();
      v101 = v100;
      sub_22D6F3848(v94);
      v102 = sub_22D72891C(v99, v101, v265);

      *(v97 + 4) = v102;
      _os_log_impl(&dword_22D6B4000, v95, v96, "%{public}s: Unexpected firing for paused or alerting alarm", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
      MEMORY[0x2318D0420](v98, -1, -1);
      MEMORY[0x2318D0420](v97, -1, -1);

      return;
    }

    v176 = v94;
    goto LABEL_57;
  }

LABEL_63:
  sub_22D72E970();
  __break(1u);
}

void sub_22D6EF890(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for Alarm(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v12 = sub_22D72DBE0();
    __swift_project_value_buffer(v12, qword_2814580E8);
    sub_22D6F37E4(a4, v11);
    v13 = a1;
    v14 = sub_22D72DBB0();
    v15 = sub_22D72E580();
    sub_22D6D5828(a1, a2, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v16 = 136446466;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v19 = sub_22D72E960();
      v21 = v20;
      sub_22D6F3848(v11);
      v22 = sub_22D72891C(v19, v21, &v26);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2114;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v24;
      *v17 = v24;
      _os_log_impl(&dword_22D6B4000, v14, v15, "%{public}s: Failed to update activity: %{public}@", v16, 0x16u);
      sub_22D6D5984(v17, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x2318D0420](v18, -1, -1);
      MEMORY[0x2318D0420](v16, -1, -1);
    }

    else
    {

      sub_22D6F3848(v11);
    }
  }
}

void sub_22D6EFB24(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22D72D730();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_project_boxed_opaque_existential_1((a1 + 176), *(a1 + 200));
  v11 = *v10;
  v12 = *(*v10 + 56);
  v21 = sub_22D6F5AF8;
  v22 = v11;
  os_unfair_lock_lock(v12 + 4);
  sub_22D6F5A78(v25);
  if (v2)
  {
    os_unfair_lock_unlock(v12 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v12 + 4);
    v13 = v25[0];
    swift_beginAccess();
    sub_22D6D5A4C(a1 + 16, &v23, &qword_27D9FF500, &qword_22D730530);
    if (v24)
    {
      sub_22D6D5D34(&v23, v25);
      v14 = sub_22D72D710();
      MEMORY[0x28223BE20](v14);
      *&v20[-16] = v25;
      *&v20[-8] = v9;
      v15 = sub_22D6E0460(MEMORY[0x277D84F98], sub_22D6F4734, &v20[-32], v13);

      *a2 = v15;
      (*(v6 + 8))(v9, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    else
    {

      sub_22D6D5984(&v23, &qword_27D9FF500, &qword_22D730530);
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v16 = sub_22D72DBE0();
      __swift_project_value_buffer(v16, qword_2814580E8);
      v17 = sub_22D72DBB0();
      v18 = sub_22D72E580();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_22D6B4000, v17, v18, "Schedule resolver is not set", v19, 2u);
        MEMORY[0x2318D0420](v19, -1, -1);
      }

      *a2 = sub_22D6D4390(MEMORY[0x277D84F90]);
    }
  }
}

uint64_t sub_22D6EFE08(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v68 = a4;
  v63 = a3;
  v72 = a2;
  v67 = a1;
  v4 = sub_22D72D7A0();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72DD20();
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v60 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v54 - v15;
  v16 = sub_22D72D730();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v54 - v26;
  v69 = v10;
  v28 = *(v10 + 48);
  sub_22D6D42A8(v63, v71);
  sub_22D713738(v71, v68, v27);
  sub_22D6D5984(v71, &qword_27D9FF500, &qword_22D730530);
  v63 = v27;
  sub_22D6D5A4C(v27, v25, &qword_27D9FFDD0, &qword_22D730140);
  if ((*(v17 + 48))(v25, 1, v16) == 1)
  {
    sub_22D6D5984(v25, &qword_27D9FFDD0, &qword_22D730140);
    v55 = 0;
    v56 = 0xE000000000000000;
  }

  else
  {
    (*(v17 + 32))(v20, v25, v16);
    v55 = sub_22D72D670();
    v56 = v29;
    (*(v17 + 8))(v20, v16);
  }

  v30 = v72;
  v31 = v70;
  v32 = sub_22D6D5A4C(v72, v70, &unk_27D9FF4A0, &qword_22D730510);
  v33 = v69;
  v59 = *(v69 + 48);
  v34 = MEMORY[0x2318CE8F0](v32);
  v57 = v35;
  v58 = v34;
  v36 = v64;
  v54 = *(v64 + 8);
  v37 = v65;
  v54(v31, v65);
  v71[0] = 0;
  v71[1] = 0xE000000000000000;
  sub_22D6D5A4C(v30, v14, &unk_27D9FF4A0, &qword_22D730510);
  v38 = &v14[*(v33 + 48)];
  v68 = type metadata accessor for Alarm(0);
  v40 = v60;
  v39 = v61;
  v41 = v62;
  (*(v61 + 16))(v60, v38 + v68[11], v62);
  sub_22D6F3848(v38);
  sub_22D72E850();
  (*(v39 + 8))(v40, v41);
  v42 = v54;
  v54(v14, v37);
  MEMORY[0x2318CF680](58, 0xE100000000000000);
  MEMORY[0x2318CF680](v55, v56);

  MEMORY[0x2318CF680](10272, 0xE200000000000000);
  v43 = v72;
  sub_22D6D5A4C(v72, v14, &unk_27D9FF4A0, &qword_22D730510);
  v44 = v69;
  v45 = &v14[*(v69 + 48)];
  v46 = v66;
  (*(v36 + 16))(v66, v45 + v68[5], v37);
  sub_22D6F3848(v45);
  sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
  v47 = sub_22D72E960();
  MEMORY[0x2318CF680](v47);

  v42(v46, v37);
  v42(v14, v37);
  v48 = v42;
  MEMORY[0x2318CF680](58, 0xE100000000000000);
  sub_22D6D5A4C(v43, v14, &unk_27D9FF4A0, &qword_22D730510);
  v49 = &v14[*(v44 + 48)];
  v50 = (v49 + v68[6]);
  v51 = *v50;
  v52 = v50[1];

  sub_22D6F3848(v49);
  MEMORY[0x2318CF680](v51, v52);

  v48(v14, v37);
  MEMORY[0x2318CF680](41, 0xE100000000000000);
  v71[3] = MEMORY[0x277D837D0];
  sub_22D6BBBA4(v71, v58, v57);
  sub_22D6D5984(v63, &qword_27D9FFDD0, &qword_22D730140);
  return sub_22D6F3848(v70 + v59);
}

uint64_t sub_22D6F04F0()
{
  v1 = *(*v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF530, &qword_22D7301D8);
  sub_22D72E600();
  return v3;
}

void sub_22D6F0580(uint64_t *a1)
{
  v80 = type metadata accessor for Alarm(0);
  v77 = *(v80 - 8);
  v2 = *(v77 + 64);
  v3 = MEMORY[0x28223BE20](v80);
  v5 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v76 = v69 - v6;
  v85 = sub_22D72D7A0();
  v7 = *(v85 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v85);
  v75 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v79 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v69 - v14;
  v16 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;

  v20 = v7;
  v21 = sub_22D6F38C4(v19);

  v22 = *(v18 + 200);
  v69[1] = v18;
  v23 = __swift_project_boxed_opaque_existential_1((v18 + 176), v22);
  v24 = *(*v23 + 56);
  MEMORY[0x28223BE20](v23);
  v69[-2] = sub_22D6F5AF8;
  v69[-1] = v25;
  os_unfair_lock_lock(v24 + 4);
  sub_22D6F5A78(v88);
  v70 = 0;
  os_unfair_lock_unlock(v24 + 4);
  v26 = 0;
  v28 = v88[0] + 64;
  v27 = *(v88[0] + 64);
  v78 = v88[0];
  v29 = 1 << *(v88[0] + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & v27;
  v32 = (v29 + 63) >> 6;
  v72 = v20 + 16;
  v71 = v20 + 32;
  v87 = v21;
  v33 = (v21 + 56);
  v74 = v20;
  v83 = (v20 + 8);
  v86 = v5;
  v73 = v15;
  v34 = v79;
  v81 = v32;
  v82 = v88[0] + 64;
  v84 = v33;
  while (1)
  {
    if (!v31)
    {
      if (v32 <= v26 + 1)
      {
        v36 = v26 + 1;
      }

      else
      {
        v36 = v32;
      }

      v37 = v36 - 1;
      while (1)
      {
        v35 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v35 >= v32)
        {
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
          (*(*(v60 - 8) + 56))(v34, 1, 1, v60);
          v31 = 0;
          v26 = v37;
          goto LABEL_18;
        }

        v31 = *(v28 + 8 * v35);
        ++v26;
        if (v31)
        {
          v26 = v35;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    v35 = v26;
LABEL_17:
    v38 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v39 = v38 | (v35 << 6);
    v40 = v78;
    v41 = v74;
    v42 = v75;
    v43 = v85;
    (*(v74 + 16))(v75, *(v78 + 48) + *(v74 + 72) * v39, v85);
    v44 = v76;
    sub_22D6F37E4(*(v40 + 56) + *(v77 + 72) * v39, v76);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v46 = *(v45 + 48);
    v47 = *(v41 + 32);
    v34 = v79;
    v47(v79, v42, v43);
    sub_22D6D3C4C(v44, v34 + v46);
    (*(*(v45 - 8) + 56))(v34, 0, 1, v45);
    v15 = v73;
    v5 = v86;
    v33 = v84;
LABEL_18:
    sub_22D6D591C(v34, v15, &qword_27D9FF9E0, &qword_22D730298);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    if ((*(*(v48 - 8) + 48))(v15, 1, v48) == 1)
    {

      sub_22D6DAC98();
      sub_22D6D7C3C();

      return;
    }

    sub_22D6D3C4C(&v15[*(v48 + 48)], v5);
    v49 = v87;
    if (v87[2])
    {
      v50 = &v5[*(v80 + 24)];
      v52 = *v50;
      v51 = v50[1];
      v53 = v87[5];
      sub_22D72EA20();
      sub_22D72E4E0();
      v54 = sub_22D72EA40();
      v55 = -1 << *(v49 + 32);
      v56 = v54 & ~v55;
      if ((*&v33[(v56 >> 3) & 0xFFFFFFFFFFFFFF8] >> v56))
      {
        break;
      }
    }

LABEL_6:
    v5 = v86;
    sub_22D6F3848(v86);
    (*v83)(v15, v85);
    v32 = v81;
    v28 = v82;
  }

  v57 = ~v55;
  while (1)
  {
    v58 = (v87[6] + 16 * v56);
    v59 = *v58 == v52 && v58[1] == v51;
    if (v59 || (sub_22D72E980() & 1) != 0)
    {
      break;
    }

    v56 = (v56 + 1) & v57;
    if (((*&v33[(v56 >> 3) & 0xFFFFFFFFFFFFFF8] >> v56) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v33 = v70;
  sub_22D6E63E4(&v86[*(v80 + 20)], v52, v51);
  if (!v33)
  {
    v70 = 0;
    v33 = v84;
    goto LABEL_6;
  }

  sub_22D6F3848(v86);
  (*v83)(v15, v85);
  if (qword_2814572C8 == -1)
  {
    goto LABEL_35;
  }

LABEL_39:
  swift_once();
LABEL_35:
  v61 = sub_22D72DBE0();
  __swift_project_value_buffer(v61, qword_2814580E8);
  v62 = v33;
  v63 = sub_22D72DBB0();
  v64 = sub_22D72E580();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v65 = 138543362;
    v67 = v33;
    v68 = _swift_stdlib_bridgeErrorToNSError();
    *(v65 + 4) = v68;
    *v66 = v68;
    _os_log_impl(&dword_22D6B4000, v63, v64, "Failed to remove alarms for uninstalled apps from store: %{public}@", v65, 0xCu);
    sub_22D6D5984(v66, &unk_27D9FF4D0, &qword_22D730180);
    MEMORY[0x2318D0420](v66, -1, -1);
    MEMORY[0x2318D0420](v65, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22D6F0DDC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22D6EBFFC();
  }

  return result;
}

uint64_t sub_22D6F0E34(uint64_t a1)
{
  v2 = sub_22D72E380();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v56 = (&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_22D72D7A0();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v61 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - v9;
  v11 = sub_22D72DD20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Alarm(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v55 = (&v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v59 = a1;
    v60 = result;
    sub_22D6EB8F4();
    v28 = v27;
    if (!*(v27 + 16) || (v29 = sub_22D6CC49C(v59), (v30 & 1) == 0))
    {
    }

    sub_22D6F37E4(*(v28 + 56) + *(v17 + 72) * v29, v23);

    sub_22D6D3C4C(v23, v25);
    (*(v12 + 16))(v15, &v25[v16[11]], v11);
    v31 = (*(v12 + 88))(v15, v11);
    if (v31 == *MEMORY[0x277CB9920] || v31 == *MEMORY[0x277CB9918] || v31 == *MEMORY[0x277CB9908])
    {
      goto LABEL_16;
    }

    if (v31 == *MEMORY[0x277CB9910])
    {
      v32 = v62;
      v33 = v63;
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v34 = sub_22D72DBE0();
      __swift_project_value_buffer(v34, qword_2814580E8);
      (*(v32 + 16))(v10, v59, v33);
      v35 = sub_22D72DBB0();
      v36 = sub_22D72E580();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v64 = v54;
        *v37 = 136446210;
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
        v38 = sub_22D72E960();
        v40 = v39;
        (*(v32 + 8))(v10, v63);
        v41 = sub_22D72891C(v38, v40, &v64);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_22D6B4000, v35, v36, "%{public}s: Stopping alerting alarm for cancelled activity", v37, 0xCu);
        v42 = v54;
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x2318D0420](v42, -1, -1);
        MEMORY[0x2318D0420](v37, -1, -1);
      }

      else
      {

        (*(v32 + 8))(v10, v33);
      }

      v43 = v16[6];
      v63 = v16[5];
      v44 = &v25[v43];
      v45 = *v44;
      v46 = v44[1];
      v47 = *(v60 + 216);
      v48 = v56;
      v49 = v57;
      *v56 = v47;
      v50 = v58;
      (*(v49 + 104))(v48, *MEMORY[0x277D85200], v58);
      v51 = v47;
      LOBYTE(v47) = sub_22D72E390();
      (*(v49 + 8))(v48, v50);
      if (v47)
      {
        v52 = v55;
        sub_22D6E81BC(&v25[v63], v45, v46, v55);
        sub_22D6E6C18(v52);
        sub_22D6F3848(v52);
        sub_22D6DAC98();
        sub_22D6D7C3C();
LABEL_16:

        return sub_22D6F3848(v25);
      }

      __break(1u);
    }

    result = sub_22D72E970();
    __break(1u);
  }

  return result;
}

unint64_t *sub_22D6F16D0(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_22D6F3EA4(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_22D6F1774(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_22D6F1818(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22D72EA20();
  sub_22D72E4E0();
  v9 = sub_22D72EA40();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22D72E980() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_22D6F2768(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22D6F1968(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22D72E740();

    if (v9)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22D72E730();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_22D71B614(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_22D6F22A0(v22 + 1, &qword_27D9FF548, &unk_22D730550);
    }

    v20 = v8;
    sub_22D71E1A8();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for Client();
  v11 = *(v6 + 40);
  v12 = sub_22D72E6A0();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_22D6F28E8(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27D9FF548, &unk_22D730550, type metadata accessor for Client);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22D72E6B0();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_22D6F1BB4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22D72E740();

    if (v9)
    {

      _s12AlarmKitCore6ClientCMa_0();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22D72E730();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_22D71B650(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_22D6F22A0(v22 + 1, &qword_27D9FF540, &unk_22D731770);
    }

    v20 = v8;
    sub_22D71E1A8();

    *v3 = v21;
    goto LABEL_16;
  }

  _s12AlarmKitCore6ClientCMa_0();
  v11 = *(v6 + 40);
  v12 = sub_22D72E6A0();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_22D6F28E8(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27D9FF540, &unk_22D731770, _s12AlarmKitCore6ClientCMa_0);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22D72E6B0();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_22D6F1E00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v5 = *a2;
  v4 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *v2;
  v9 = *(*v2 + 40);
  sub_22D72EA20();
  sub_22D72E4E0();
  v34 = v6;
  sub_22D72E4E0();
  v33 = v3;
  MEMORY[0x2318CFBC0](v3);
  v10 = sub_22D72EA40();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 48);
    do
    {
      v15 = v14 + 40 * v12;
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v18 = *(v15 + 32);
      v19 = *v15 == v5 && *(v15 + 8) == v4;
      if (v19 || (sub_22D72E980() & 1) != 0)
      {
        if (v17 == v7 && v16 == v34)
        {
          if (v33 == v18)
          {
            goto LABEL_16;
          }
        }

        else if ((sub_22D72E980() & 1) != 0 && ((v33 ^ v18) & 1) == 0)
        {
LABEL_16:

          v21 = *(v8 + 48) + 40 * v12;
          v23 = *v21;
          v22 = *(v21 + 8);
          v24 = *(v21 + 16);
          v25 = *(v21 + 24);
          LOBYTE(v21) = *(v21 + 32);
          *a1 = v23;
          *(a1 + 8) = v22;
          *(a1 + 16) = v24;
          *(a1 + 24) = v25;
          *(a1 + 32) = v21;

          return 0;
        }
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  v27 = *v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v30;

  sub_22D6F2A6C(a2, v12, isUniquelyReferenced_nonNull_native);
  *v30 = v35;
  v29 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v29;
  *(a1 + 32) = *(a2 + 32);
  return 1;
}

uint64_t sub_22D6F2018(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF510, &qword_22D730538);
  result = sub_22D72E780();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22D72EA20();
      sub_22D72E4E0();
      result = sub_22D72EA40();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22D6F22A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22D72E780();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_22D72E6A0();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_22D6F24C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFD70, &unk_22D730540);
  result = sub_22D72E780();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_22D72EA20();
      sub_22D72E4E0();
      sub_22D72E4E0();
      MEMORY[0x2318CFBC0](v24);
      result = sub_22D72EA40();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      *(v15 + 32) = v24;
      ++*(v6 + 16);
      v3 = v35;
      v11 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22D6F2768(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22D6F2018(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22D6F2C7C();
      goto LABEL_16;
    }

    sub_22D6F30B8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22D72EA20();
  sub_22D72E4E0();
  result = sub_22D72EA40();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22D72E980();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22D72E990();
  __break(1u);
  return result;
}

void sub_22D6F28E8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_22D6F22A0(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_22D6F2E00(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_22D6F32F0(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_22D72E6A0();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11(0);
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_22D72E6B0();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22D72E990();
  __break(1u);
}

uint64_t sub_22D6F2A6C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v32 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_22D6F24C0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22D6F2F40();
      goto LABEL_24;
    }

    sub_22D6F34FC(v6 + 1);
  }

  v8 = *(v5 + 32);
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22D72EA20();
  sub_22D72E4E0();
  v34 = v11;
  sub_22D72E4E0();
  v33 = v8;
  MEMORY[0x2318CFBC0](v8);
  result = sub_22D72EA40();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a2 = result & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 40 * a2;
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *v19 == v9 && *(v19 + 8) == v10;
      if (v23 || (result = sub_22D72E980(), (result & 1) != 0))
      {
        if (v20 == v34 && v21 == v12)
        {
          if (v33 == v22)
          {
            goto LABEL_23;
          }
        }

        else
        {
          result = sub_22D72E980();
          if ((result & 1) != 0 && ((v33 ^ v22) & 1) == 0)
          {
LABEL_23:
            result = sub_22D72E990();
            __break(1u);
            break;
          }
        }
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v25 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = *(v25 + 48) + 40 * a2;
  v27 = *(v32 + 16);
  *v26 = *v32;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(v32 + 32);
  v28 = *(v25 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v30;
  }

  return result;
}

void *sub_22D6F2C7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF510, &qword_22D730538);
  v2 = *v0;
  v3 = sub_22D72E770();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

id sub_22D6F2E00(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22D72E770();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22D6F2F40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFD70, &unk_22D730540);
  v2 = *v0;
  v3 = sub_22D72E770();
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

uint64_t sub_22D6F30B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF510, &qword_22D730538);
  result = sub_22D72E780();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22D72EA20();

      sub_22D72E4E0();
      result = sub_22D72EA40();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22D6F32F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22D72E780();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_22D72E6A0();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_22D6F34FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFD70, &unk_22D730540);
  result = sub_22D72E780();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v35 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_22D72EA20();

      sub_22D72E4E0();
      sub_22D72E4E0();
      MEMORY[0x2318CFBC0](v24);
      result = sub_22D72EA40();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v23;
      *(v15 + 24) = v22;
      *(v15 + 32) = v24;
      ++*(v6 + 16);
      v3 = v34;
      v11 = v35;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_22D6F3788@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_22D6F37E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D6F3848(uint64_t a1)
{
  v2 = type metadata accessor for Alarm(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22D6F38C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318CF6E0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22D6F1818(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22D6F395C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v60 = a2;
  v61 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v6 = *(*(v69 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v69);
  v78 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v59 - v9;
  v10 = type metadata accessor for Alarm(0);
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v10);
  v76 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22D72D7A0();
  v13 = *(*(v75 - 8) + 64);
  result = MEMORY[0x28223BE20](v75);
  v74 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = 0;
  v17 = 0;
  v72 = a3;
  v20 = a3[8];
  v19 = a3 + 8;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v65 = v15 + 16;
  v66 = v15;
  v70 = (v15 + 8);
  v64 = a4;
  v63 = a4 + 56;
  while (v23)
  {
    v27 = __clz(__rbit64(v23));
    v73 = (v23 - 1) & v23;
LABEL_13:
    v30 = v27 | (v17 << 6);
    v31 = v72;
    v32 = *(v66 + 16);
    v33 = v74;
    v34 = v75;
    v32(v74, v72[6] + *(v66 + 72) * v30, v75);
    v35 = v31[7];
    v36 = *(v67 + 72);
    v71 = v30;
    v37 = v35 + v36 * v30;
    v38 = v76;
    sub_22D6F37E4(v37, v76);
    v39 = v77;
    v32(v77, v33, v34);
    v40 = v69;
    sub_22D6F37E4(v38, v39 + *(v69 + 48));
    v41 = v39;
    v42 = v78;
    sub_22D6D5A4C(v41, v78, &unk_27D9FF4A0, &qword_22D730510);
    v43 = v42 + *(v40 + 48);
    v44 = (v43 + *(v68 + 24));
    v46 = *v44;
    v45 = v44[1];

    sub_22D6F3848(v43);
    v47 = v64;
    v48 = v63;
    if (*(v64 + 16) && (v49 = *(v64 + 40), sub_22D72EA20(), sub_22D72E4E0(), v50 = sub_22D72EA40(), v51 = -1 << *(v47 + 32), v52 = v50 & ~v51, ((*(v48 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) != 0))
    {
      v53 = ~v51;
      while (1)
      {
        v54 = (*(v47 + 48) + 16 * v52);
        v55 = *v54 == v46 && v54[1] == v45;
        if (v55 || (sub_22D72E980() & 1) != 0)
        {
          break;
        }

        v52 = (v52 + 1) & v53;
        if (((*(v48 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      sub_22D6D5984(v77, &unk_27D9FF4A0, &qword_22D730510);
      v56 = *v70;
      v57 = v75;
      (*v70)(v78, v75);
      sub_22D6F3848(v76);
      result = (v56)(v74, v57);
      *(v61 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
      v58 = __OFADD__(v62++, 1);
      v23 = v73;
      if (v58)
      {
        __break(1u);
        return sub_22D6D2B38(v61, v60, v62, v72);
      }
    }

    else
    {
LABEL_5:

      sub_22D6D5984(v77, &unk_27D9FF4A0, &qword_22D730510);
      v25 = *v70;
      v26 = v75;
      (*v70)(v78, v75);
      sub_22D6F3848(v76);
      result = (v25)(v74, v26);
      v23 = v73;
    }
  }

  v28 = v17;
  while (1)
  {
    v17 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v17 >= v24)
    {
      return sub_22D6D2B38(v61, v60, v62, v72);
    }

    v29 = v19[v17];
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v73 = (v29 - 1) & v29;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D6F3EA4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v47 = a2;
  v60 = a4;
  v61 = a5;
  v48 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v6 = *(*(v59 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v59);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - v9;
  v11 = type metadata accessor for Alarm(0);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D72D7A0();
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x28223BE20](v15);
  v20 = 0;
  v62 = a3;
  v21 = a3;
  v22 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v21[8];
  v51 = v21 + 8;
  v24 = 1 << *(v21 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v49 = 0;
  v50 = (v24 + 63) >> 6;
  v55 = v18 + 16;
  v56 = v18;
  v54 = (v18 + 8);
  while (v26)
  {
    v27 = __clz(__rbit64(v26));
    v63 = (v26 - 1) & v26;
LABEL_11:
    v30 = v27 | (v20 << 6);
    v31 = v62;
    v32 = *(v56 + 16);
    v32(v22, v62[6] + *(v56 + 72) * v30, v15);
    v33 = v31[7];
    v34 = *(v57 + 72);
    v52 = v30;
    sub_22D6F37E4(v33 + v34 * v30, v14);
    v32(v10, v22, v15);
    v35 = v59;
    sub_22D6F37E4(v14, &v10[*(v59 + 48)]);
    v36 = v53;
    sub_22D6D5A4C(v10, v53, &unk_27D9FF4A0, &qword_22D730510);
    v37 = v36 + *(v35 + 48);
    v38 = (v37 + *(v58 + 24));
    v40 = *v38;
    v39 = v38[1];

    sub_22D6F3848(v37);
    if (v40 == v60 && v39 == v61)
    {

      sub_22D6D5984(v10, &unk_27D9FF4A0, &qword_22D730510);
      v44 = *v54;
      (*v54)(v36, v15);
      sub_22D6F3848(v14);
      result = (v44)(v22, v15);
      v26 = v63;
LABEL_18:
      *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      if (__OFADD__(v49++, 1))
      {
        __break(1u);
        return sub_22D6D2B38(v48, v47, v49, v62);
      }
    }

    else
    {
      v42 = sub_22D72E980();

      sub_22D6D5984(v10, &unk_27D9FF4A0, &qword_22D730510);
      v43 = *v54;
      (*v54)(v36, v15);
      sub_22D6F3848(v14);
      result = (v43)(v22, v15);
      v26 = v63;
      if (v42)
      {
        goto LABEL_18;
      }
    }
  }

  v28 = v20;
  while (1)
  {
    v20 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v20 >= v50)
    {
      return sub_22D6D2B38(v48, v47, v49, v62);
    }

    v29 = v51[v20];
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v63 = (v29 - 1) & v29;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D6F4304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v12 = sub_22D6F16D0(v15, v9, a1, a2, a3);
      MEMORY[0x2318D0420](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v11);
  bzero(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_22D6F3EA4((v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_22D6F4548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D6F45B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22D6ECF10();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22D6F45E8()
{
  result = qword_27D9FF508;
  if (!qword_27D9FF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF508);
  }

  return result;
}

id sub_22D6F468C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_22D6F4750(char *a1, char a2)
{
  v5 = *(sub_22D72DDD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22D72D7A0() - 8);
  v9 = *(v2 + v7);
  v10 = *(v2 + v7 + 8);
  v11 = (v2 + ((v7 + *(v8 + 80) + 16) & ~*(v8 + 80)));

  sub_22D6E9E94(a1, a2 & 1, v2 + v6, v9, v10, v11);
}

uint64_t sub_22D6F4888(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_22D6F48F0(void *a1, uint64_t a2, char a3)
{
  v7 = *(sub_22D72D7A0() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_22D6E56DC(a1, a2, a3 & 1, v8);
}

uint64_t sub_22D6F4998(uint64_t a1)
{
  v3 = *(sub_22D72E190() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_22D72D7A0() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);
  v11 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_22D6D9040(a1, v8, v1 + v4, v9, v10, v1 + v7, v12, v13);
}

uint64_t objectdestroy_111Tm()
{
  v1 = sub_22D72E190();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_22D72D7A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_22D6F4C50()
{
  v1 = *(sub_22D72E190() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_22D72D7A0() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);
  v9 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_22D6D9EF0(v6, (v0 + v2), v7, v8, v0 + v5, v10, v11);
}

uint64_t sub_22D6F4D70()
{
  v1 = *(sub_22D72DDC0() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_22D6DA74C(v2, v3, v4);
}

void sub_22D6F4DD4(char *a1, char a2)
{
  v5 = *(sub_22D72D7A0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Alarm(0) - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  sub_22D6DDD7C(a1, a2 & 1, v2 + v6, v9, v10);
}

uint64_t sub_22D6F4F0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D6F4F64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a2;
  v58 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v6 = *(*(v66 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v66);
  v74 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v55 - v9;
  v10 = type metadata accessor for Alarm(0);
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22D72D7A0();
  v14 = *(*(v71 - 8) + 64);
  result = MEMORY[0x28223BE20](v71);
  v70 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0;
  v18 = 0;
  v68 = a3;
  v19 = *(a3 + 64);
  v57 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v61 = v16 + 16;
  v24 = a4 + 56;
  v63 = v16;
  v60 = (v16 + 8);
  v62 = v23;
  v72 = v13;
  while (v22)
  {
    v27 = __clz(__rbit64(v22));
    v69 = (v22 - 1) & v22;
LABEL_13:
    v30 = v27 | (v18 << 6);
    v31 = v68;
    v32 = *(v63 + 16);
    v34 = v70;
    v33 = v71;
    v32(v70, v68[6] + *(v63 + 72) * v30, v71);
    v35 = v31[7];
    v36 = *(v64 + 72);
    v67 = v30;
    v37 = v72;
    sub_22D6F37E4(v35 + v36 * v30, v72);
    v38 = v73;
    v32(v73, v34, v33);
    v39 = v66;
    sub_22D6F37E4(v37, v38 + *(v66 + 48));
    v40 = v74;
    sub_22D6D5A4C(v38, v74, &unk_27D9FF4A0, &qword_22D730510);
    v41 = v40 + *(v39 + 48);
    v42 = (v41 + *(v65 + 24));
    v44 = *v42;
    v43 = v42[1];

    sub_22D6F3848(v41);
    if (*(a4 + 16) && (v45 = *(a4 + 40), sub_22D72EA20(), sub_22D72E4E0(), v46 = sub_22D72EA40(), v47 = -1 << *(a4 + 32), v48 = v46 & ~v47, ((*(v24 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0))
    {
      v49 = ~v47;
      while (1)
      {
        v50 = (*(a4 + 48) + 16 * v48);
        v51 = *v50 == v44 && v50[1] == v43;
        if (v51 || (sub_22D72E980() & 1) != 0)
        {
          break;
        }

        v48 = (v48 + 1) & v49;
        if (((*(v24 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      sub_22D6D5984(v73, &unk_27D9FF4A0, &qword_22D730510);
      v25 = *v60;
      v26 = v71;
      (*v60)(v74, v71);
      sub_22D6F3848(v72);
      result = (v25)(v70, v26);
      v23 = v62;
      v22 = v69;
    }

    else
    {
LABEL_22:

      sub_22D6D5984(v73, &unk_27D9FF4A0, &qword_22D730510);
      v52 = *v60;
      v53 = v71;
      (*v60)(v74, v71);
      sub_22D6F3848(v72);
      result = (v52)(v70, v53);
      *(v58 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
      v54 = __OFADD__(v59++, 1);
      v23 = v62;
      v22 = v69;
      if (v54)
      {
        __break(1u);
        return sub_22D6D2B38(v58, v56, v59, v68);
      }
    }
  }

  v28 = v18;
  while (1)
  {
    v18 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      return sub_22D6D2B38(v58, v56, v59, v68);
    }

    v29 = *(v57 + 8 * v18);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v69 = (v29 - 1) & v29;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_22D6F54A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v18[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v14 = sub_22D6F1774(v17, v11, a1, a2, a4);
      MEMORY[0x2318D0420](v17, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v13);
  bzero(v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = a3(v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t objectdestroy_65Tm()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_22D72D7A0();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[5], v6);
  v8 = *(v0 + v3 + v1[6] + 8);

  v9 = v1[8];
  v10 = sub_22D72DDB0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[9];
  v13 = sub_22D72DCF0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = v1[11];
  v16 = sub_22D72DD20();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  v17 = v1[12];
  v18 = sub_22D72DBA0();
  (*(*(v18 - 8) + 8))(v5 + v17, v18);
  v19 = v1[13];
  v20 = sub_22D72D730();
  v21 = *(*(v20 - 8) + 8);
  v21(v5 + v19, v20);
  v21(v5 + v1[14], v20);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void *sub_22D6F59F4@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_22D6F5D3C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v5 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF630, &unk_22D730700);
    sub_22D6D58D4(&qword_281457218, &qword_27D9FF630, &unk_22D730700);
    v2 = v0;
    v1 = sub_22D72DC70();
    v3 = *(v0 + 32);
    *(v2 + 32) = v1;
  }

  return v1;
}

uint64_t sub_22D6F5E00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF628, &qword_22D7306F8);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  off_27D9FF5E8 = result;
  return result;
}

void sub_22D6F5E44()
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF610, &unk_22D7306E0);
  v2 = *(*(v55 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v55);
  v54 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v53 = (&v47 - v6);
  MEMORY[0x28223BE20](v5);
  v52 = &v47 - v7;
  v8 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  v9 = *v8;
  v10 = *(*v8 + 56);
  v61 = sub_22D6F5AF8;
  v62 = v9;
  os_unfair_lock_lock(v10 + 4);
  sub_22D6F5A78(&v63);
  if (!v1)
  {
    os_unfair_lock_unlock(v10 + 4);
    v11 = sub_22D6F8FFC(v63);

    v12 = *(v11 + 16);
    if (!v12)
    {
LABEL_20:

      return;
    }

    v47 = 0;
    v63 = MEMORY[0x277D84F90];
    sub_22D6D3340(0, v12, 0);
    v13 = v63;
    v10 = (v11 + 64);
    v14 = -1 << *(v11 + 32);
    v15 = sub_22D72E6F0();
    v16 = 0;
    v48 = v11 + 72;
    v49 = v12;
    v50 = (v11 + 64);
    v51 = v11;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v11 + 32))
    {
      if ((*&v10[2 * (v15 >> 6)]._os_unfair_lock_opaque & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v58 = 1 << v15;
      v59 = v15 >> 6;
      v20 = *(v11 + 36);
      v56 = v16;
      v57 = v20;
      v21 = v55;
      v22 = *(v55 + 48);
      v23 = *(v11 + 48);
      v24 = *(v11 + 56);
      v25 = (v23 + 16 * v15);
      v60 = v13;
      v26 = *v25;
      v27 = v25[1];
      v28 = sub_22D72E100();
      v29 = *(v28 - 8);
      v30 = v52;
      (*(v29 + 16))(&v52[v22], v24 + *(v29 + 72) * v15, v28);
      v31 = v53;
      *v53 = v26;
      *(v31 + 8) = v27;
      (*(v29 + 32))(v31 + *(v21 + 48), &v30[v22], v28);
      v32 = v54;
      sub_22D6F9CC8(v31, v54);
      v33 = *v32;
      v34 = v32[1];
      v35 = *(v21 + 48);
      v36 = *(v29 + 8);
      v10 = (v29 + 8);

      v36(v32 + v35, v28);
      v13 = v60;
      v63 = v60;
      v38 = *(v60 + 16);
      v37 = *(v60 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_22D6D3340((v37 > 1), v38 + 1, 1);
        v13 = v63;
      }

      *(v13 + 16) = v38 + 1;
      v39 = v13 + 16 * v38;
      *(v39 + 32) = v33;
      *(v39 + 40) = v34;
      v11 = v51;
      v17 = 1 << *(v51 + 32);
      if (v15 >= v17)
      {
        goto LABEL_23;
      }

      v10 = v50;
      v40 = *&v50[2 * v59]._os_unfair_lock_opaque;
      if ((v40 & v58) == 0)
      {
        goto LABEL_24;
      }

      if (v57 != *(v51 + 36))
      {
        goto LABEL_25;
      }

      v41 = v40 & (-2 << (v15 & 0x3F));
      if (v41)
      {
        v17 = __clz(__rbit64(v41)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v49;
        v19 = v56;
      }

      else
      {
        v42 = v59 << 6;
        v43 = v59 + 1;
        v18 = v49;
        v44 = (v48 + 8 * v59);
        v19 = v56;
        while (v43 < (v17 + 63) >> 6)
        {
          v46 = *v44++;
          v45 = v46;
          v42 += 64;
          ++v43;
          if (v46)
          {
            sub_22D6D5264(v15, v57, 0);
            v17 = __clz(__rbit64(v45)) + v42;
            goto LABEL_5;
          }
        }

        sub_22D6D5264(v15, v57, 0);
      }

LABEL_5:
      v16 = v19 + 1;
      v15 = v17;
      if (v16 == v18)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  os_unfair_lock_unlock(v10 + 4);
  __break(1u);
}

void sub_22D6F6298(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (v1 + 40);
      while (v5 < *(v1 + 16))
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v9 = __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
        v10 = *(*v9 + 56);
        v11 = MEMORY[0x28223BE20](v9);
        MEMORY[0x28223BE20](v11);

        os_unfair_lock_lock(v10 + 4);
        sub_22D6F5B28(v12);
        ++v5;
        os_unfair_lock_unlock(v10 + 4);

        v6 += 2;
        if (v4 == v5)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      swift_once();
      v13 = sub_22D72DBE0();
      __swift_project_value_buffer(v13, qword_27DA016E8);
      v14 = 0;
      v15 = sub_22D72DBB0();
      v16 = sub_22D72E580();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138543362;
        v19 = 0;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&dword_22D6B4000, v15, v16, "Failed to remove authorization for uninstalled apps from store: %{public}@", v17, 0xCu);
        sub_22D6D5984(v18, &unk_27D9FF4D0, &qword_22D730180);
        MEMORY[0x2318D0420](v18, -1, -1);
        MEMORY[0x2318D0420](v17, -1, -1);
      }

      else
      {
      }
    }

    else
    {
LABEL_6:
    }
  }
}

uint64_t sub_22D6F6544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D72E300();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D72E370();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_22D6D413C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_38;
  v16 = _Block_copy(aBlock);

  sub_22D72E330();
  v21 = MEMORY[0x277D84F90];
  sub_22D6F8F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_22D6F67EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_22D72E100();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_project_boxed_opaque_existential_1((a1 + 48), *(a1 + 72));
  v15 = *v14;
  v16 = *(*v14 + 56);
  v21 = sub_22D6D562C;
  v22 = v15;
  os_unfair_lock_lock(v16 + 4);
  sub_22D6F37CC(&v23);
  if (v4)
  {
    os_unfair_lock_unlock(v16 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v16 + 4);
    v17 = v23;
    if (*(v23 + 16) && (v18 = sub_22D6CC714(a2, a3), (v19 & 1) != 0))
    {
      (*(v10 + 16))(v13, *(v17 + 56) + *(v10 + 72) * v18, v9);

      (*(v10 + 32))(a4, v13, v9);
    }

    else
    {

      (*(v10 + 104))(a4, *MEMORY[0x277CB9AB8], v9);
    }
  }
}

void sub_22D6F69B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22D72E300();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D72E370();
  v21 = *(v11 - 8);
  v22 = v11;
  v12 = *(v21 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_project_boxed_opaque_existential_1(a1 + 6, a1[9]);
  v16 = *(*v15 + 56);
  v27 = *v15;
  v28 = a2;
  v29 = a3;
  v24 = sub_22D6F8EE4;
  v25 = &v26;
  os_unfair_lock_lock(v16 + 4);
  sub_22D6F5B28(v17);
  os_unfair_lock_unlock(v16 + 4);
  if (!v3)
  {
    v20 = a1[3];
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = a3;
    aBlock[4] = sub_22D6F8F04;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D6C0FD8;
    aBlock[3] = &block_descriptor_1;
    v19 = _Block_copy(aBlock);

    sub_22D72E330();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_22D6F8F28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v14, v10, v19);
    _Block_release(v19);
    (*(v23 + 8))(v10, v7);
    (*(v21 + 8))(v14, v22);
  }
}

uint64_t sub_22D6F6CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AuthorizationBundleIDState();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 40);
  v12 = *(v8 + 28);
  v13 = *MEMORY[0x277CB9AB8];
  v14 = sub_22D72E100();
  (*(*(v14 - 8) + 104))(&v10[v12], v13, v14);
  *v10 = a2;
  *(v10 + 1) = a3;

  sub_22D72DC10();
  return sub_22D6F8F80(v10);
}

void sub_22D6F6DB4(uint64_t a1)
{
  v1 = *(*__swift_project_boxed_opaque_existential_1((a1 + 48), *(a1 + 72)) + 56);
  os_unfair_lock_lock(v1 + 4);
  sub_22D6F4510(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_22D6F6E50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  v169 = a5;
  v170 = a6;
  v157 = a3;
  v158 = a4;
  v174 = *MEMORY[0x277D85DE8];
  v152 = *v6;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFAC0, &qword_22D7306F0);
  v10 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v168 = (&v144 - v11);
  v12 = sub_22D72D7D0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v159 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D72E470();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v156 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D72E450();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v153 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D72D5F0();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v155 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_22D72D5E0();
  v161 = *(v164 - 1);
  v24 = *(v161 + 64);
  v25 = MEMORY[0x28223BE20](v164);
  v154 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v160 = (&v144 - v27);
  v28 = sub_22D72E100();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = MEMORY[0x28223BE20](v28);
  v163 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v165 = &v144 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v144 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v144 - v38;
  if (qword_27D9FF120 != -1)
  {
    swift_once();
  }

  v40 = sub_22D72DBE0();
  v41 = __swift_project_value_buffer(v40, qword_27DA016E8);

  v171 = v41;
  v42 = sub_22D72DBB0();
  v43 = sub_22D72E5A0();

  v44 = os_log_type_enabled(v42, v43);
  v166 = v29;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v162 = v39;
    v46 = v28;
    v47 = v45;
    v48 = swift_slowAlloc();
    error = v48;
    *v47 = 136380675;
    *(v47 + 4) = sub_22D72891C(a1, a2, &error);
    _os_log_impl(&dword_22D6B4000, v42, v43, "Requesting permission to use AlarmKit: %{private}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x2318D0420](v48, -1, -1);
    v49 = v47;
    v28 = v46;
    v39 = v162;
    MEMORY[0x2318D0420](v49, -1, -1);
  }

  v50 = v7[2];
  MEMORY[0x28223BE20](v51);
  *(&v144 - 4) = v7;
  *(&v144 - 3) = a1;
  *(&v144 - 2) = a2;
  sub_22D72E600();
  v150 = a1;
  v151 = a2;
  v52 = v166;
  (v166)[4](v39, v37, v28);
  v53 = v165;
  (v52)[13](v165, *MEMORY[0x277CB9AB8], v28);
  LOBYTE(v50) = sub_22D72E0E0();
  v54 = v52 + 1;
  v55 = v52[1];
  v55(v53, v28);
  if ((v50 & 1) == 0)
  {
    v63 = v52[2];
    v166 = v52 + 2;
    v64 = v163;
    v164 = v63;
    v63(v163, v39, v28);
    v65 = v151;

    v66 = sub_22D72DBB0();
    v67 = sub_22D72E5A0();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v149 = v54;
      v171 = v69;
      error = v69;
      *v68 = 136380931;
      *(v68 + 4) = sub_22D72891C(v150, v65, &error);
      *(v68 + 12) = 2082;
      v164(v165, v64, v28);
      v70 = sub_22D72E4C0();
      v71 = v64;
      v73 = v72;
      v55(v71, v28);
      v74 = sub_22D72891C(v70, v73, &error);

      *(v68 + 14) = v74;
      _os_log_impl(&dword_22D6B4000, v66, v67, "State is already known: %{private}s: %{public}s", v68, 0x16u);
      v75 = v171;
      swift_arrayDestroy();
      MEMORY[0x2318D0420](v75, -1, -1);
      MEMORY[0x2318D0420](v68, -1, -1);
    }

    else
    {

      v55(v64, v28);
    }

    v62 = v168;
    v164(v168, v39, v28);
    goto LABEL_17;
  }

  if (qword_27D9FF100 != -1)
  {
    swift_once();
  }

  v56 = off_27D9FF5E8;

  os_unfair_lock_lock(v56 + 5);
  if (v56[4]._os_unfair_lock_opaque)
  {
    os_unfair_lock_unlock(v56 + 5);

    v57 = sub_22D72DBB0();
    v58 = sub_22D72E580();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_22D6B4000, v57, v58, "Auth request is already in progress", v59, 2u);
      MEMORY[0x2318D0420](v59, -1, -1);
    }

    sub_22D6F9BB4();
    v60 = swift_allocError();
    *v61 = 1;
    v62 = v168;
    *v168 = v60;
LABEL_17:
    swift_storeEnumTagMultiPayload();
    v169(v62);
    sub_22D6D5984(v62, &unk_27D9FFAC0, &qword_22D7306F0);
    result = (v55)(v39, v28);
LABEL_18:
    v80 = *MEMORY[0x277D85DE8];
    return result;
  }

  v145 = v7;
  v162 = v39;
  LOBYTE(v56[4]._os_unfair_lock_opaque) = 1;
  os_unfair_lock_unlock(v56 + 5);

  v76 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v77 = v151;

  v78 = sub_22D72868C(v150, v77, 0);
  v147 = v28;
  v148 = v55;
  v149 = v52 + 1;
  v81 = v78;
  v82 = [v78 localizedName];
  sub_22D72E490();

  v83 = type metadata accessor for AuthorizationManager();
  v85 = v160;
  v84 = v161;
  *v160 = v83;
  v86 = v164;
  (*(v84 + 104))(v85, *MEMORY[0x277CC9120]);
  sub_22D72E440();
  sub_22D72E430();
  sub_22D72E420();

  sub_22D72E430();
  sub_22D72E460();
  v87 = *(v84 + 16);
  v88 = v154;
  v87(v154, v85, v86);
  sub_22D72D7C0();
  sub_22D72D600();
  v89 = sub_22D72E4B0();
  v165 = v90;
  v166 = v89;
  sub_22D72E410();
  v87(v88, v85, v86);
  sub_22D72D7C0();
  sub_22D72D600();
  error = sub_22D72E4B0();
  v173 = v91;
  v146 = v91;

  MEMORY[0x2318CF680](2570, 0xE200000000000000);
  MEMORY[0x2318CF680](v157, v158);
  v163 = error;
  v158 = v173;
  sub_22D72E410();
  v92 = v164;
  v87(v88, v85, v164);
  sub_22D72D7C0();
  sub_22D72D600();
  v153 = sub_22D72E4B0();
  v157 = v93;
  sub_22D72E410();
  v87(v88, v85, v92);
  sub_22D72D7C0();
  sub_22D72D600();
  v94 = sub_22D72E4B0();
  v96 = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF338, &qword_22D7301E0);
  inited = swift_initStackObject();
  v98 = inited;
  *(inited + 16) = xmmword_22D730640;
  result = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_34;
  }

  v98[4] = sub_22D72E490();
  v98[5] = v99;
  v100 = MEMORY[0x277D837D0];
  v98[9] = MEMORY[0x277D837D0];
  v101 = v165;
  v98[6] = v166;
  v98[7] = v101;
  result = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v98[10] = sub_22D72E490();
  v98[11] = v102;
  v98[15] = v100;
  v103 = v158;
  v98[12] = v163;
  v98[13] = v103;
  result = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = sub_22D72E490();
  v98[16] = result;
  v98[17] = v104;
  v98[21] = v100;
  v105 = v157;
  v98[18] = v153;
  v98[19] = v105;
  v106 = v148;
  if (*MEMORY[0x277CBF1C0])
  {

    v98[22] = sub_22D72E490();
    v98[23] = v107;
    v98[27] = v100;
    v98[24] = v94;
    v98[25] = v96;
    sub_22D6D4390(v98);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF348, &unk_22D7301F0);
    swift_arrayDestroy();
    v108 = sub_22D72E3A0();

    LODWORD(error) = 0;
    v166 = v108;
    v109 = CFUserNotificationCreate(0, 0.0, 0, &error, v108);
    if (v109)
    {
      v110 = v109;
      v111 = *MEMORY[0x277CBECE8];
      v112 = v109;
      RunLoopSource = CFUserNotificationCreateRunLoopSource(v111, v112, sub_22D6F82DC, 0);
      if (RunLoopSource)
      {
        v114 = RunLoopSource;
        v115 = swift_allocObject();
        v116 = v151;
        v115[2] = v150;
        v115[3] = v116;
        v117 = v169;
        v118 = v170;
        v115[4] = v145;
        v115[5] = v117;
        v119 = v152;
        v115[6] = v118;
        v115[7] = v119;
        v120 = xmmword_27D9FF5F0;
        v171 = qword_27D9FF600;
        v169 = unk_27D9FF608;
        *&xmmword_27D9FF5F0 = v114;
        *(&xmmword_27D9FF5F0 + 1) = v110;
        qword_27D9FF600 = sub_22D6F9C08;
        unk_27D9FF608 = v115;
        v121 = v114;
        v122 = v112;
        v123 = v121;

        v124 = v122;
        v125 = v123;

        sub_22D6F9C18(v120, *(&v120 + 1));
        v126 = CFRunLoopGetMain();
        CFRunLoopAddSource(v126, v125, *MEMORY[0x277CBF048]);

        (*(v161 + 8))(v160, v164);
        result = (v148)(v162, v147);
        goto LABEL_18;
      }

      v137 = sub_22D72DBB0();
      v138 = sub_22D72E580();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&dword_22D6B4000, v137, v138, "Could not create user notification", v139, 2u);
        MEMORY[0x2318D0420](v139, -1, -1);
      }

      v140 = off_27D9FF5E8;

      os_unfair_lock_lock(v140 + 5);
      LOBYTE(v140[4]._os_unfair_lock_opaque) = 0;
      os_unfair_lock_unlock(v140 + 5);

      sub_22D6F9BB4();
      v141 = swift_allocError();
      *v142 = 0;
      v143 = v168;
      *v168 = v141;
      swift_storeEnumTagMultiPayload();
      v169(v143);

      sub_22D6D5984(v143, &unk_27D9FFAC0, &qword_22D7306F0);
      (*(v161 + 8))(v160, v164);
      v136 = v162;
    }

    else
    {
      v127 = sub_22D72DBB0();
      v128 = sub_22D72E580();
      v129 = os_log_type_enabled(v127, v128);
      v130 = v162;
      if (v129)
      {
        v131 = swift_slowAlloc();
        *v131 = 0;
        _os_log_impl(&dword_22D6B4000, v127, v128, "Could not create user notification", v131, 2u);
        MEMORY[0x2318D0420](v131, -1, -1);
      }

      v132 = off_27D9FF5E8;

      os_unfair_lock_lock(v132 + 5);
      LOBYTE(v132[4]._os_unfair_lock_opaque) = 0;
      os_unfair_lock_unlock(v132 + 5);

      sub_22D6F9BB4();
      v133 = swift_allocError();
      *v134 = 0;
      v135 = v168;
      *v168 = v133;
      swift_storeEnumTagMultiPayload();
      v169(v135);

      sub_22D6D5984(v135, &unk_27D9FFAC0, &qword_22D7306F0);
      (*(v161 + 8))(v160, v164);
      v136 = v130;
    }

    result = v106(v136, v147);
    goto LABEL_18;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_22D6F82DC(uint64_t a1, char a2)
{
  if (xmmword_27D9FF5F0)
  {
    v3 = qword_27D9FF600;

    v3(a2 & 3);
  }

  return result;
}

uint64_t sub_22D6F8348(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(char *), uint64_t a6)
{
  v67 = a6;
  v68 = a5;
  v10 = sub_22D72E300();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v62 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22D72E370();
  v61 = *(v63 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v60 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFAC0, &qword_22D7306F0);
  v15 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v17 = &v56 - v16;
  v70 = sub_22D72E100();
  v18 = *(v70 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v70);
  v58 = v21;
  v59 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  v69 = a2;
  if (a1)
  {
    if (qword_27D9FF120 != -1)
    {
      swift_once();
    }

    v24 = sub_22D72DBE0();
    __swift_project_value_buffer(v24, qword_27DA016E8);

    v25 = sub_22D72DBB0();
    v26 = sub_22D72E5A0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136380675;
      *(v27 + 4) = sub_22D72891C(v69, a3, aBlock);
      _os_log_impl(&dword_22D6B4000, v25, v26, "Denial for %{private}s to use AlarmKit", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2318D0420](v28, -1, -1);
      MEMORY[0x2318D0420](v27, -1, -1);
    }

    v29 = MEMORY[0x277CB9AC0];
  }

  else
  {
    if (qword_27D9FF120 != -1)
    {
      swift_once();
    }

    v30 = sub_22D72DBE0();
    __swift_project_value_buffer(v30, qword_27DA016E8);

    v31 = sub_22D72DBB0();
    v32 = sub_22D72E5A0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136380675;
      *(v33 + 4) = sub_22D72891C(v69, a3, aBlock);
      _os_log_impl(&dword_22D6B4000, v31, v32, "Approval for %{private}s to use AlarmKit", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x2318D0420](v34, -1, -1);
      MEMORY[0x2318D0420](v33, -1, -1);
    }

    v29 = MEMORY[0x277CB9AB0];
  }

  (*(v18 + 104))(v23, *v29, v70);
  v35 = xmmword_27D9FF5F0;
  xmmword_27D9FF5F0 = 0u;
  *&qword_27D9FF600 = 0u;
  sub_22D6F9C18(v35, *(&v35 + 1));
  if (qword_27D9FF100 != -1)
  {
    swift_once();
  }

  v36 = off_27D9FF5E8;

  os_unfair_lock_lock(v36 + 5);
  LOBYTE(v36[4]._os_unfair_lock_opaque) = 0;
  os_unfair_lock_unlock(v36 + 5);

  v37 = __swift_project_boxed_opaque_existential_1(a4 + 6, a4[9]);
  v38 = *(*v37 + 56);
  v39 = MEMORY[0x28223BE20](v37);
  v40 = v69;
  *(&v56 - 4) = v41;
  *(&v56 - 3) = v40;
  *(&v56 - 2) = a3;
  *(&v56 - 1) = v23;
  MEMORY[0x28223BE20](v39);
  *(&v56 - 2) = sub_22D6F9EE8;
  *(&v56 - 1) = v42;
  os_unfair_lock_lock(v38 + 4);
  sub_22D6F5B28(v43);
  os_unfair_lock_unlock(v38 + 4);
  v44 = *(v18 + 16);
  v45 = v23;
  v46 = v23;
  v57 = v23;
  v47 = v70;
  v44(v17, v45, v70);
  swift_storeEnumTagMultiPayload();
  v68(v17);
  sub_22D6D5984(v17, &unk_27D9FFAC0, &qword_22D7306F0);
  v68 = a4[3];
  v48 = v59;
  v44(v59, v46, v47);
  v49 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v50 = swift_allocObject();
  *(v50 + 2) = a4;
  *(v50 + 3) = v40;
  *(v50 + 4) = a3;
  (*(v18 + 32))(&v50[v49], v48, v47);
  aBlock[4] = sub_22D6F9C60;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_30;
  v51 = _Block_copy(aBlock);

  v52 = v60;
  sub_22D72E330();
  v71 = MEMORY[0x277D84F90];
  sub_22D6F8F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
  v53 = v62;
  v54 = v65;
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v52, v53, v51);
  _Block_release(v51);
  (*(v64 + 8))(v53, v54);
  (*(v61 + 8))(v52, v63);
  (*(v18 + 8))(v57, v47);
}

uint64_t sub_22D6F8BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AuthorizationBundleIDState();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 40);
  v14 = *(v10 + 28);
  v15 = sub_22D72E100();
  (*(*(v15 - 8) + 16))(&v12[v14], a4, v15);
  *v12 = a2;
  *(v12 + 1) = a3;

  sub_22D72DC10();
  return sub_22D6F8F80(v12);
}

uint64_t sub_22D6F8C8C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  v3 = *(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_22D6F8D18()
{
  v1 = *(*v0 + 16);
  sub_22D72E100();
  return sub_22D72E600();
}

void sub_22D6F8E84()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  sub_22D6F6DB4(v0[2]);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22D6F8F28()
{
  result = qword_2814571D0;
  if (!qword_2814571D0)
  {
    sub_22D72E300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814571D0);
  }

  return result;
}

uint64_t sub_22D6F8F80(uint64_t a1)
{
  v2 = type metadata accessor for AuthorizationBundleIDState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22D6F8FFC(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_22D6F915C(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_22D6F94AC(v9, v4, v2);
  result = MEMORY[0x2318D0420](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22D6F915C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF610, &unk_22D7306E0);
  v4 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v34 - v5;
  v47 = sub_22D72E100();
  v6 = *(*(v47 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v47);
  v45 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v44 = &v34 - v11;
  v12 = 0;
  v50 = a3;
  v13 = *(a3 + 64);
  v38 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v36 = 0;
  v37 = (v14 + 63) >> 6;
  v43 = v10 + 16;
  v42 = *MEMORY[0x277CB9AB0];
  v46 = v10;
  v40 = v10 + 8;
  v41 = v10 + 104;
  v17 = v48;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v51 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v12 << 6);
    v22 = v50[7];
    v23 = (v50[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v27 = v46;
    v26 = v47;
    v28 = *(v46 + 72);
    v39 = v21;
    v29 = *(v46 + 16);
    v30 = v44;
    v29(v44, v22 + v28 * v21, v47);
    *v17 = v25;
    *(v17 + 1) = v24;
    v29(&v17[*(v49 + 48)], v30, v26);
    v31 = v45;
    (*(v27 + 104))(v45, v42, v26);
    swift_bridgeObjectRetain_n();
    LOBYTE(v25) = sub_22D72E0E0();
    v32 = *(v27 + 8);
    v32(v31, v26);
    sub_22D6D5984(v17, &qword_27D9FF610, &unk_22D7306E0);
    v32(v30, v26);

    v16 = v51;
    if (v25)
    {
      *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_22D6D2FA0(v35, v34, v36, v50);
      }
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v37)
    {
      return sub_22D6D2FA0(v35, v34, v36, v50);
    }

    v20 = *(v38 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v51 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_22D6F94AC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_22D6F915C(result, a2, a3);

    return v6;
  }

  return result;
}

BOOL sub_22D6F9524(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v6 = sub_22D72868C(a1, a2, 0);
  v7 = [v6 infoDictionary];
  v8 = sub_22D72E480();
  sub_22D6F9B68();
  v9 = [v7 objectForKey:v8 ofClass:swift_getObjCClassFromMetadata()];

  if (v9)
  {
    sub_22D72E6D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = [v11 length];

      return v10 > 0;
    }
  }

  else
  {

    sub_22D6D5984(v14, &qword_27D9FF9F0, &unk_22D730240);
  }

  return 0;
}

uint64_t sub_22D6F96C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF610, &unk_22D7306E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v50 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v51 = &v44 - v5;
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  v7 = *v6;
  v8 = *(*v6 + 56);
  v52 = sub_22D6F5AF8;
  v53 = v7;
  os_unfair_lock_lock(v8 + 4);
  sub_22D6F5A78(&v56);
  os_unfair_lock_unlock(v8 + 4);
  v9 = v56 + 64;
  v10 = 1 << *(v56 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v56 + 64);
  v13 = (v10 + 63) >> 6;
  v48 = v56;

  v14 = 0;
  v15 = MEMORY[0x277D84F98];
  v46 = v9;
  v45 = v13;
  v47 = v1;
  v16 = v51;
  while (v12)
  {
LABEL_11:
    v19 = __clz(__rbit64(v12)) | (v14 << 6);
    v20 = *(v48 + 56);
    v21 = (*(v48 + 48) + 16 * v19);
    v23 = *v21;
    v22 = v21[1];
    v24 = sub_22D72E100();
    v25 = v20 + *(*(v24 - 8) + 72) * v19;
    v26 = *(v1 + 48);
    v49 = *(v24 - 8);
    (*(v49 + 16))(&v16[v26], v25, v24);
    *v16 = v23;
    *(v16 + 1) = v22;
    v27 = v50;
    sub_22D6F9AF8(v16, v50);
    v29 = *v27;
    v28 = v27[1];
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;

    sub_22D72E850();
    v57 = MEMORY[0x277D837D0];
    sub_22D6D5254(&v56, v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v15;
    v32 = sub_22D6CC714(v29, v28);
    v33 = v15[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_24;
    }

    v36 = v31;
    if (v15[3] >= v35)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v31)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_22D6D0100();
        if (v36)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_22D6CD59C(v35, isUniquelyReferenced_nonNull_native);
      v37 = sub_22D6CC714(v29, v28);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_26;
      }

      v32 = v37;
      if (v36)
      {
LABEL_4:

        v15 = v54;
        v17 = (v54[7] + 32 * v32);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        sub_22D6D5254(v55, v17);
        sub_22D6D5984(v51, &qword_27D9FF610, &unk_22D7306E0);
        goto LABEL_5;
      }
    }

    v15 = v54;
    v54[(v32 >> 6) + 8] |= 1 << v32;
    v39 = (v15[6] + 16 * v32);
    *v39 = v29;
    v39[1] = v28;
    sub_22D6D5254(v55, (v15[7] + 32 * v32));
    sub_22D6D5984(v51, &qword_27D9FF610, &unk_22D7306E0);
    v40 = v15[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_25;
    }

    v15[2] = v42;
LABEL_5:
    v12 &= v12 - 1;
    v1 = v47;
    (*(v49 + 8))(v50 + *(v47 + 48), v24);
    v9 = v46;
    v13 = v45;
  }

  while (1)
  {
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      return v15;
    }

    v12 = *(v9 + 8 * v18);
    ++v14;
    if (v12)
    {
      v14 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22D72E9A0();
  __break(1u);
  return result;
}

uint64_t sub_22D6F9AF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF610, &unk_22D7306E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22D6F9B68()
{
  result = qword_27D9FF618;
  if (!qword_27D9FF618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9FF618);
  }

  return result;
}

unint64_t sub_22D6F9BB4()
{
  result = qword_27D9FF620;
  if (!qword_27D9FF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF620);
  }

  return result;
}

void *sub_22D6F9C18(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22D6F9C60()
{
  v1 = *(sub_22D72E100() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_22D6F8BA8(v2, v3, v4, v5);
}

uint64_t sub_22D6F9CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF610, &unk_22D7306E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AuthorizationManager.AuthorizationManagerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AuthorizationManager.AuthorizationManagerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22D6F9E8C()
{
  result = qword_27D9FF638;
  if (!qword_27D9FF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF638);
  }

  return result;
}

uint64_t type metadata accessor for AuthorizationBundleIDState()
{
  result = qword_281457560;
  if (!qword_281457560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D6FA088()
{
  result = sub_22D72E100();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22D6FA12C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FA19C()
{
  v14 = sub_22D72E5F0();
  v1 = *(v14 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v14);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D72E5D0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22D72E370();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D6D5838();
  sub_22D72E340();
  v16 = MEMORY[0x277D84F90];
  sub_22D6FA68C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6FA6E4();
  sub_22D72E6E0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v14);
  *(v0 + 16) = sub_22D72E620();
  *(v0 + 24) = 0;
  v15 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF640, qword_22D730950);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_22D72DC40();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 40) = MKBDeviceUnlockedSinceBoot() == 1;
  *(v0 + 48) = sub_22D6FA474();
  return v0;
}

uint64_t sub_22D6FA400()
{
  v1 = *(v0 + 48);
  MKBEventsUnregister();

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FA474()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_22D6B5EB8;
  v10[5] = v2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22D6B5E40;
  v10[3] = &block_descriptor_2;
  v3 = _Block_copy(v10);

  v4 = MKBEventsRegister();
  _Block_release(v3);
  if (!v4)
  {
    if (qword_27D9FF140 != -1)
    {
      swift_once();
    }

    v5 = sub_22D72DBE0();
    __swift_project_value_buffer(v5, qword_27DA01748);
    v6 = sub_22D72DBB0();
    v7 = sub_22D72E580();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22D6B4000, v6, v7, "Failed to begin observing keybag: nil pointer", v8, 2u);
      MEMORY[0x2318D0420](v8, -1, -1);
    }
  }

  return v4;
}

uint64_t sub_22D6FA608()
{
  v1 = *(*v0 + 16);
  sub_22D72E600();
  return v3;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22D6FA68C()
{
  result = qword_281457190;
  if (!qword_281457190)
  {
    sub_22D72E5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281457190);
  }

  return result;
}

unint64_t sub_22D6FA6E4()
{
  result = qword_2814571B0;
  if (!qword_2814571B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9FF740, &unk_22D730C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814571B0);
  }

  return result;
}

uint64_t sub_22D6FA7D8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FA84C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 64);
}

uint64_t sub_22D6FA8A8(void *a1, char *a2, uint64_t a3)
{
  v7 = sub_22D72D7A0();
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v31 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v28 - v15;
  swift_beginAccess();
  v17 = a1[8];
  if (*(v17 + 16))
  {
    v28[1] = v3;

    v18 = sub_22D6CC49C(a2);
    if (v19)
    {
      v20 = v18;
      v28[0] = *(v17 + 56);
      v21 = type metadata accessor for Alarm(0);
      v22 = *(v21 - 8);
      sub_22D6F37E4(v28[0] + *(v22 + 72) * v20, v16);

      (*(v22 + 56))(v16, 0, 1, v21);
      sub_22D6D5984(v16, &qword_27D9FF550, &qword_22D730130);
      v23 = *__swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
      sub_22D72BF64(a2, sub_22D6FB7A4, 0);
LABEL_7:
      v25 = v31;
      (*(v29 + 16))(v31, a2, v30);
      sub_22D6F37E4(a2, v14);
      type metadata accessor for Alarm(0);
      (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
      swift_beginAccess();
      sub_22D6BB998(v14, v25);
      return swift_endAccess();
    }
  }

  v21 = type metadata accessor for Alarm(0);
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  sub_22D6D5984(v16, &qword_27D9FF550, &qword_22D730130);
  if (a3)
  {
    v24 = *__swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);

    sub_22D726318(a2, a3, v24);

    goto LABEL_7;
  }

  sub_22D6FB4F0();
  swift_allocError();
  *v27 = 0;
  return swift_willThrow();
}

void sub_22D6FAC64(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27D9FF138 != -1)
    {
      swift_once();
    }

    v3 = sub_22D72DBE0();
    __swift_project_value_buffer(v3, qword_27DA01730);
    v4 = a1;
    oslog = sub_22D72DBB0();
    v5 = sub_22D72E580();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_22D6B4000, oslog, v5, "Failed to write alarm to database: %{public}@", v6, 0xCu);
      sub_22D6D5984(v7, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v7, -1, -1);
      MEMORY[0x2318D0420](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

void sub_22D6FAE14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_22D72D7A0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a2);
  v13 = type metadata accessor for Alarm(0);
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  swift_beginAccess();
  sub_22D6BB998(v7, v11);
  swift_endAccess();
  v14 = *__swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_22D72701C(a2);
}

uint64_t sub_22D6FAFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = *v7;

  sub_22D724F88(a2, sub_22D6FB060, v8);
}

uint64_t sub_22D6FB060(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, a2 & 1);
}

uint64_t sub_22D6FB08C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v9 = sub_22D72E300();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22D72E370();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v25);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 56);
  v29 = a1;
  v30 = a2 & 1;
  v31 = a3;
  v26 = sub_22D6FB544;
  v27 = &v28;
  os_unfair_lock_lock(v18 + 4);
  sub_22D6F4510(v19);
  os_unfair_lock_unlock(v18 + 4);
  v20 = *(a3 + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = v24;
  *(v21 + 24) = a5;
  aBlock[4] = sub_22D6D413C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_3;
  v22 = _Block_copy(aBlock);

  sub_22D72E330();
  v32 = MEMORY[0x277D84F90];
  sub_22D6F8F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6FB580();
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v17, v13, v22);
  _Block_release(v22);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v25);
}

void sub_22D6FB358(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_27D9FF138 != -1)
    {
      swift_once();
    }

    v4 = sub_22D72DBE0();
    __swift_project_value_buffer(v4, qword_27DA01730);
    v5 = a1;
    v6 = sub_22D72DBB0();
    v7 = sub_22D72E580();
    sub_22D6FB5E4(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_22D6B4000, v6, v7, "Failed to load alarms from database: %{public}@", v8, 0xCu);
      sub_22D6D5984(v9, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v9, -1, -1);
      MEMORY[0x2318D0420](v8, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v13 = *(a3 + 64);
    *(a3 + 64) = a1;
  }
}

unint64_t sub_22D6FB4F0()
{
  result = qword_27D9FF648;
  if (!qword_27D9FF648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF648);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22D6FB580()
{
  result = qword_2814571C0;
  if (!qword_2814571C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9FF520, &qword_22D730150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814571C0);
  }

  return result;
}

void sub_22D6FB5E4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for AlarmPersistentStore.AlarmPersistentStoreError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmPersistentStore.AlarmPersistentStoreError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22D6FB750()
{
  result = qword_27D9FF650;
  if (!qword_27D9FF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF650);
  }

  return result;
}

uint64_t sub_22D6FB8F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v50 = a4;
  v7 = sub_22D72E100();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v48 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  swift_beginAccess();
  v51 = a1;
  v21 = *(a1 + 64);
  v22 = *(v21 + 16);
  v49 = a2;
  v46 = a3;
  if (!v22)
  {
LABEL_6:
    v29 = *(v8 + 56);
    v29(v20, 1, 1, v7);
    sub_22D6FC298(v20);
    v30 = *__swift_project_boxed_opaque_existential_1((v51 + 16), *(v51 + 40));
    v47 = *(v8 + 16);
    v47(v12, v50, v7);
    v31 = (*(v8 + 88))(v12, v7);
    if (v31 == *MEMORY[0x277CB9AB8])
    {
      v28 = 0;
    }

    else if (v31 == *MEMORY[0x277CB9AC0])
    {
      v28 = 1;
    }

    else
    {
      if (v31 != *MEMORY[0x277CB9AB0])
      {
        goto LABEL_25;
      }

      v28 = 2;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v35 = v46;
      v36 = v49;
LABEL_23:
      v41 = v48;
      v47(v48, v50, v7);
      v29(v41, 0, 1, v7);
      swift_beginAccess();

      sub_22D6BBC74(v41, v36, v35);
      return swift_endAccess();
    }

    v33 = Strong;
    v45 = v29;
    v34 = &selRef_createAuthorization_;
    goto LABEL_21;
  }

  v23 = sub_22D6CC714(a2, a3);
  if ((v24 & 1) == 0)
  {

    goto LABEL_6;
  }

  v25 = *(v8 + 16);
  v25(v20, *(v21 + 56) + *(v8 + 72) * v23, v7);

  v45 = *(v8 + 56);
  v45(v20, 0, 1, v7);
  sub_22D6FC298(v20);
  v26 = *__swift_project_boxed_opaque_existential_1((v51 + 16), *(v51 + 40));
  v47 = v25;
  v25(v14, v50, v7);
  v27 = (*(v8 + 88))(v14, v7);
  if (v27 == *MEMORY[0x277CB9AB8])
  {
    v28 = 0;
LABEL_19:
    swift_beginAccess();
    v37 = swift_unknownObjectWeakLoadStrong();
    if (!v37)
    {
      v35 = v46;
      v36 = v49;
      goto LABEL_22;
    }

    v33 = v37;
    v34 = &selRef_updateAuthorization_;
LABEL_21:
    v44 = v34;
    v38 = objc_allocWithZone(MEMORY[0x277CEA588]);
    v36 = v49;
    v35 = v46;
    v39 = sub_22D72E480();
    v40 = [v38 initWithBundleID:v39 status:v28];

    [v33 *v44];
    swift_unknownObjectRelease();
LABEL_22:
    v29 = v45;
    goto LABEL_23;
  }

  if (v27 == *MEMORY[0x277CB9AC0])
  {
    v28 = 1;
    goto LABEL_19;
  }

  if (v27 == *MEMORY[0x277CB9AB0])
  {
    v28 = 2;
    goto LABEL_19;
  }

LABEL_25:
  result = sub_22D72E970();
  __break(1u);
  return result;
}

uint64_t sub_22D6FBDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16[-v8];
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_22D72E480();
    [v12 deleteAuthorizationWithBundleID_];

    swift_unknownObjectRelease();
  }

  v14 = sub_22D72E100();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  swift_beginAccess();

  sub_22D6BBC74(v9, a2, a3);
  return swift_endAccess();
}

uint64_t sub_22D6FBF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v7 = sub_22D72E300();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22D72E370();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 56);
  v27 = a2;
  v28 = a1;
  v24 = sub_22D6FC300;
  v25 = &v26;
  os_unfair_lock_lock(v16 + 4);
  sub_22D6F4510(v17);
  os_unfair_lock_unlock(v16 + 4);
  v18 = *(a2 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = v22;
  *(v19 + 24) = a4;
  aBlock[4] = sub_22D6D413C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_4;
  v20 = _Block_copy(aBlock);

  sub_22D72E330();
  v29 = MEMORY[0x277D84F90];
  sub_22D6F8F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6FB580();
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v15, v11, v20);
  _Block_release(v20);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v23);
}

uint64_t sub_22D6FC230(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  *(a1 + 64) = a2;
}

uint64_t sub_22D6FC298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22D6FC3C0()
{
  v10 = sub_22D72E5F0();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D72E5D0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_22D72E370();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  sub_22D72E350();
  v11 = MEMORY[0x277D84F90];
  sub_22D6FCEC8(&qword_281457190, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6FCF10(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60);
  sub_22D72E6E0();
  (*(v0 + 104))(v3, *MEMORY[0x277D85268], v10);
  result = sub_22D72E620();
  qword_27D9FF660 = result;
  return result;
}

uint64_t sub_22D6FC620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v30 = sub_22D72E300();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22D72E370();
  v11 = *(v29 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v29);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = 0;
  v2[4] = a1;
  v2[5] = a2;
  sub_22D6FCE80(0, &unk_27D9FF730, 0x277D85CA0);
  v15 = qword_27D9FF108;

  if (v15 != -1)
  {
    swift_once();
  }

  v31 = qword_27D9FF660;
  v2[3] = sub_22D72E640();
  swift_getObjectType();
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = v6;
  v36 = sub_22D6FCE10;
  v37 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v28 = v6;
  v34 = sub_22D6C0FD8;
  v35 = &block_descriptor_5;
  v17 = _Block_copy(&aBlock);
  v27 = a1;
  v18 = v17;

  sub_22D72E330();
  sub_22D6FCC20();
  sub_22D72E650();
  _Block_release(v18);
  (*(v7 + 8))(v10, v30);
  (*(v11 + 8))(v14, v29);

  v19 = v2[3];
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22D72E670();
  swift_unknownObjectRelease();
  v20 = swift_allocObject();
  v22 = v27;
  v21 = v28;
  v20[2] = v3;
  v20[3] = v22;
  v20[4] = a2;
  v20[5] = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22D6FCE74;
  *(v23 + 24) = v20;
  v36 = sub_22D6F45C8;
  v37 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_22D6BEF78;
  v35 = &block_descriptor_14;
  v24 = _Block_copy(&aBlock);

  dispatch_sync(v31, v24);
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if ((v24 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D6FCA50(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22D72DBE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    sub_22D72DBD0();

    v12 = sub_22D72DBB0();
    v13 = sub_22D72E5A0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_22D72891C(a2, a3, &v18);
      _os_log_impl(&dword_22D6B4000, v12, v13, "Dropping transaction for SIGTERM: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x2318D0420](v15, -1, -1);
      MEMORY[0x2318D0420](v14, -1, -1);
    }

    byte_27D9FF668 = 1;
    (*(v7 + 8))(v11, v6);
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22D6FCC20()
{
  sub_22D72E300();
  sub_22D6FCEC8(&qword_2814571D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6FCF10(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
  return sub_22D72E6E0();
}

uint64_t sub_22D6FCCF8(uint64_t a1)
{
  if (byte_27D9FF668)
  {
    v2 = 0;
  }

  else
  {
    sub_22D72E4D0();
    v2 = os_transaction_create();
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = v2;

  return swift_unknownObjectRelease();
}

uint64_t sub_22D6FCD70()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FCDDC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D6FCE74()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_22D6FCCF8(v0[2]);
}

uint64_t sub_22D6FCE80(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22D6FCEC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D6FCF10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22D6FCF6C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = sub_22D72D730();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  [*(a1 + 16) cancel];
  [*(a1 + 16) invalidate];
  v16 = *(a1 + 16);
  *(a1 + 16) = 0;

  sub_22D6FD818(a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22D6FD888(v8);
  }

  v35 = v2;
  v33 = *(v10 + 32);
  v33(v15, v8, v9);
  v18 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v19 = sub_22D72E480();
  v20 = [v18 initWithIdentifier_];

  v21 = *(a1 + 16);
  *(a1 + 16) = v20;

  sub_22D72D710();
  sub_22D72D690();
  v23 = v22;
  v34 = *(v10 + 8);
  result = v34(v13, v9);
  v32 = *(a1 + 16);
  if (v32)
  {
    if (v23 < 0.0)
    {
      v23 = 1.0;
    }

    v31 = *(a1 + 32);
    v24 = swift_allocObject();
    swift_weakInit();
    (*(v10 + 16))(v13, v15, v9);
    v25 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v33((v26 + v25), v13, v9);
    aBlock[4] = sub_22D6FD8F0;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D6FD4B4;
    aBlock[3] = &block_descriptor_6;
    v27 = _Block_copy(aBlock);
    v28 = v32;
    v29 = v31;

    [v28 scheduleWithFireInterval:v29 leewayInterval:v27 queue:v23 handler:0.0];
    _Block_release(v27);

    return v34(v15, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22D6FD34C(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = (Strong + 40);
    v5 = *(Strong + 40);
    if (v5)
    {
      v7 = *(Strong + 48);
      v8 = Strong;

      v5(a3);
      sub_22D6FD97C(v5);
      v9 = *(v8 + 40);
      v10 = *(v8 + 48);
      *v6 = 0;
      v6[1] = 0;
      sub_22D6FD97C(v9);
    }
  }

  else
  {
    if (qword_27D9FF150 != -1)
    {
      swift_once();
    }

    v11 = sub_22D72DBE0();
    __swift_project_value_buffer(v11, qword_27DA01760);
    v12 = sub_22D72DBB0();
    v13 = sub_22D72E590();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22D6B4000, v12, v13, "Wake manager unexpectedly deallocated", v14, 2u);
      MEMORY[0x2318D0420](v14, -1, -1);
    }
  }
}

void sub_22D6FD4B4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_22D6FD51C()
{
  v1 = *(v0 + 16);
  if (v1 && ([v1 cancel], (v2 = *(v0 + 16)) != 0))
  {
    [v2 invalidate];
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 24);

  v5 = *(v0 + 48);
  sub_22D6FD97C(*(v0 + 40));
  return v0;
}

uint64_t sub_22D6FD584()
{
  sub_22D6FD51C();

  return swift_deallocClassInstance();
}

void *sub_22D6FD5DC()
{
  v12[0] = sub_22D72E5F0();
  v1 = *(v12[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v12[0]);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D72E5D0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22D72E370();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v0[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v0[3] = v9;
  sub_22D6D5838();
  sub_22D72E330();
  v12[1] = MEMORY[0x277D84F90];
  sub_22D6FA68C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6FA6E4();
  sub_22D72E6E0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v12[0]);
  v10 = sub_22D72E620();
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = v10;
  return v0;
}

uint64_t sub_22D6FD818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D6FD888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22D6FD8F0(void *a1)
{
  v3 = *(sub_22D72D730() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_22D6FD34C(a1, v4, v5);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22D6FD97C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22D6FD98C()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = *(v0 + 40);
  if (v3 && *(v3 + 16))
  {
    *(v3 + 16) = 0;

    swift_unknownObjectRelease();
    v4 = *(v3 + 24);
    swift_getObjectType();
    sub_22D72E660();
  }

  sub_22D72E4D0();
  xpc_set_event();

  v5 = *(v1 + 16);

  v6 = *(v1 + 24);

  v7 = *(v1 + 40);

  return v1;
}

uint64_t sub_22D6FDA64()
{
  sub_22D6FD98C();

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FDABC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 24);

  os_unfair_lock_lock(v4 + 4);
  sub_22D6FF31C(v10);
  os_unfair_lock_unlock(v4 + 4);
  v5 = v10[0];

  if ((v5 & 1) == 0)
  {
    result = swift_beginAccess();
    v7 = *(v2 + 16);
    if (*(v7 + 16) > a1)
    {
      if (a1 < 0)
      {
        __break(1u);
      }

      else
      {
        sub_22D6D42A8(v7 + 40 * a1 + 32, v10);
        v8 = v11;
        v9 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        (*(v9 + 8))(v2, a1, v8, v9);
        return __swift_destroy_boxed_opaque_existential_1Tm(v10);
      }
    }
  }

  return result;
}

uint64_t sub_22D6FDBC8(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);
  if (v2 && *(v2 + 16))
  {
    *(v2 + 16) = 0;

    swift_unknownObjectRelease();
    v3 = *(v2 + 24);
    swift_getObjectType();
    sub_22D72E660();
  }

  sub_22D72E4D0();
  xpc_set_event();

  *(a1 + 48) = 1;
  return result;
}

uint64_t sub_22D6FDC88(uint64_t a1, uint64_t a2)
{
  result = sub_22D72D6E0();
  v5 = ceil(v4);
  if (v5 < 9.22337204e18)
  {
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v5 <= -9.22337204e18)
      {
        __break(1u);
      }

      else
      {
        v6 = 1000000000 * v5;
        if ((v5 * 1000000000) >> 64 == v6 >> 63)
        {
          v7 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_date(v7, "Date", v6);
          xpc_dictionary_set_BOOL(v7, "UserVisible", 1);
          sub_22D72E4D0();
          swift_unknownObjectRetain();
          xpc_set_event();
          swift_unknownObjectRelease();

          result = a2 + 1;
          if (!__OFADD__(a2, 1))
          {
            sub_22D6FDABC(result);

            return swift_unknownObjectRelease();
          }

LABEL_19:
          __break(1u);
          return result;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (qword_27D9FF150 != -1)
  {
LABEL_16:
    swift_once();
  }

  v8 = sub_22D72DBE0();
  __swift_project_value_buffer(v8, qword_27DA01760);
  v9 = sub_22D72DBB0();
  v10 = sub_22D72E580();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22D6B4000, v9, v10, "Cannot schedule tasks this far into the future", v11, 2u);
    MEMORY[0x2318D0420](v11, -1, -1);
  }

  sub_22D72E4D0();
  xpc_set_event();
}

uint64_t sub_22D6FDEE0()
{
  v1 = OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder11RequestWake_date;
  v2 = sub_22D72D730();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FDFA0(uint64_t a1)
{
  type metadata accessor for KeepAliveTransaction();
  swift_allocObject();
  v2 = sub_22D6FC620(0xD000000000000017, 0x800000022D730C90);
  v3 = *(a1 + 40);
  *(a1 + 40) = v2;
}

uint64_t sub_22D6FE028(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && *(v2 + 16))
  {
    *(v2 + 16) = 0;
    v3 = v2;

    swift_unknownObjectRelease();
    v4 = *(v3 + 24);
    swift_getObjectType();
    sub_22D72E660();

    v5 = *(a1 + 40);
  }

  *(a1 + 40) = 0;
}

uint64_t sub_22D6FE0AC(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D72D730();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22[-v12];
  v14 = *(v2 + 24);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = v14[5];
  v17 = v14[6];
  v14[5] = sub_22D6FF358;
  v14[6] = v15;

  sub_22D6FD97C(v16);
  sub_22D72D710();
  v18 = *(v2 + 16);
  sub_22D72D6A0();
  (*(v6 + 8))(v9, v5);
  (*(v6 + 56))(v13, 0, 1, v5);
  v19 = v14[3];
  v26 = v14;
  v27 = v13;
  v23 = sub_22D6FF338;
  v24 = &v25;

  os_unfair_lock_lock(v19 + 4);
  sub_22D6F5B28(v20);
  os_unfair_lock_unlock(v19 + 4);

  return sub_22D6FD888(v13);
}

uint64_t sub_22D6FE2AC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FE308(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-v7];
  v9 = *(v2 + OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder2At_taskScheduler);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = v9[5];
  v12 = v9[6];
  v9[5] = sub_22D6FF2BC;
  v9[6] = v10;

  sub_22D6FD97C(v11);
  v13 = OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder2At_date;
  v14 = sub_22D72D730();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v8, v2 + v13, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  v16 = v9[3];
  v23 = v9;
  v24 = v8;
  v20 = sub_22D6FF2C0;
  v21 = &v22;

  os_unfair_lock_lock(v16 + 4);
  sub_22D6F5B28(v17);
  os_unfair_lock_unlock(v16 + 4);

  return sub_22D6FD888(v8);
}

uint64_t sub_22D6FE4B0()
{
  v1 = OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder2At_date;
  v2 = sub_22D72D730();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder2At_taskScheduler);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FE580(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  v4();
  result = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    return sub_22D6FDABC(result);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D6FE5D0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22D6FE668()
{
  result = sub_22D72D730();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22D6FE7D4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D6FE80C()
{
  result = sub_22D72D730();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22D6FE8CC(uint64_t a1)
{
  v3 = sub_22D72D730();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  (*(v4 + 16))(v7, a1, v3);
  v9 = type metadata accessor for SequencingTaskScheduler.Builder.RequestWake(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder11RequestWake_date, v7, v3);
  swift_beginAccess();
  v13 = *(v8 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 16) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_22D6CBB50(0, v13[2] + 1, 1, v13);
    *(v8 + 16) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_22D6CBB50((v15 > 1), v16 + 1, 1, v13);
  }

  v19 = v9;
  v20 = &off_2840CD1E0;
  *&v18 = v12;
  v13[2] = v16 + 1;
  sub_22D6B6CF0(&v18, &v13[5 * v16 + 4]);
  *(v8 + 16) = v13;
  swift_endAccess();

  return v1;
}

uint64_t sub_22D6FEAAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D72D730();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  (*(v5 + 16))(v8, a1, v4);
  v10 = type metadata accessor for SequencingTaskScheduler.Builder.At(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder2At_taskScheduler;
  type metadata accessor for NonwakingTaskScheduler();
  swift_allocObject();

  *(v13 + v14) = sub_22D6FD5DC();
  (*(v5 + 32))(v13 + OBJC_IVAR____TtCCC12AlarmKitCore23SequencingTaskScheduler7Builder2At_date, v8, v4);
  swift_beginAccess();
  v15 = *(v9 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + 16) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_22D6CBB50(0, v15[2] + 1, 1, v15);
    *(v9 + 16) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_22D6CBB50((v17 > 1), v18 + 1, 1, v15);
  }

  v21 = v10;
  v22 = &off_2840CD180;
  *&v20 = v13;
  v15[2] = v18 + 1;
  sub_22D6B6CF0(&v20, &v15[5 * v18 + 4]);
  *(v9 + 16) = v15;
  swift_endAccess();

  return v2;
}

uint64_t sub_22D6FED00(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = a1();
  v6 = swift_allocObject();
  swift_beginAccess();
  v7 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_22D6CBB50(0, v7[2] + 1, 1, v7);
    *(v4 + 16) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_22D6CBB50((v9 > 1), v10 + 1, 1, v7);
  }

  v13 = v5;
  v14 = a2;
  *&v12 = v6;
  v7[2] = v10 + 1;
  sub_22D6B6CF0(&v12, &v7[5 * v10 + 4]);
  *(v4 + 16) = v7;
  swift_endAccess();

  return v2;
}

uint64_t sub_22D6FEE1C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for SequencingTaskScheduler.Builder.Execute();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_beginAccess();
  v8 = *(v5 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_22D6CBB50(0, v8[2] + 1, 1, v8);
    *(v5 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_22D6CBB50((v10 > 1), v11 + 1, 1, v8);
  }

  v14 = v6;
  v15 = &off_2840CD170;
  *&v13 = v7;
  v8[2] = v11 + 1;
  sub_22D6B6CF0(&v13, &v8[5 * v11 + 4]);
  *(v5 + 16) = v8;
  swift_endAccess();

  return v2;
}

uint64_t sub_22D6FEF4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);

  os_unfair_lock_lock(v3 + 4);
  sub_22D6F5B28(v4);
  os_unfair_lock_unlock(v3 + 4);

  result = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    return sub_22D6FDABC(result);
  }

  __break(1u);
  return result;
}

void sub_22D6FEFE0(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277D6C090]);
  v5 = sub_22D72E480();
  v6 = [v4 initWithIdentifier_];

  [v6 acquireWithTimeout:0 handler:0.0];
  v7 = *(a1 + 24);

  os_unfair_lock_lock(v7 + 4);
  sub_22D6F5B28(v8);
  os_unfair_lock_unlock(v7 + 4);

  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22D6FDABC(a2 + 1);
  }
}

uint64_t sub_22D6FF0E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);

  os_unfair_lock_lock(v3 + 4);
  sub_22D6F5B28(v4);
  os_unfair_lock_unlock(v3 + 4);

  result = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    return sub_22D6FDABC(result);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D6FF178(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);

  os_unfair_lock_lock(v3 + 4);
  sub_22D6F4510(v4);
  os_unfair_lock_unlock(v3 + 4);

  result = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    return sub_22D6FDABC(result);
  }

  __break(1u);
  return result;
}

void sub_22D6FF244()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

void sub_22D6FF27C()
{
  [*(v0 + 32) invalidate];
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;
}

uint64_t sub_22D6FF2DC()
{
  v1 = *(v0 + 24);
  result = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 16);
    return sub_22D6FDABC(result);
  }

  return result;
}

CFDictionaryRef sub_22D6FF3AC()
{
  v1 = sub_22D72D630();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *MEMORY[0x277CBECE8];
  v7 = [v0 URL];
  sub_22D72D620();

  v8 = sub_22D72D610();
  (*(v2 + 8))(v5, v1);
  Unique = _CFBundleCreateUnique();

  if (Unique)
  {
    v10 = Unique;
    v11 = CFBundleGetLocalInfoDictionary(v10);

    if (!v11)
    {
      goto LABEL_15;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v23[0] = 0;
      sub_22D72E3B0();

      v12 = v23[0];
      if (!v23[0])
      {
        goto LABEL_15;
      }

      if (*(v23[0] + 16))
      {
        v13 = sub_22D6CC714(0xD00000000000001ALL, 0x800000022D7322A0);
        if (v14)
        {
          sub_22D6D5270(*(v12 + 56) + 32 * v13, v23);

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_15;
          }

          v15 = v21;
          v16 = HIBYTE(v22) & 0xF;
          if ((v22 & 0x2000000000000000) == 0)
          {
            v16 = v21 & 0xFFFFFFFFFFFFLL;
          }

          if (v16)
          {
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
    }

LABEL_15:
    v17 = v10;
    v15 = CFBundleGetInfoDictionary(v17);

    if (v15)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_24;
      }

      v23[0] = 0;
      sub_22D72E3B0();

      v15 = v23[0];
      if (v23[0])
      {
        if (*(v23[0] + 16) && (v18 = sub_22D6CC714(0xD00000000000001ALL, 0x800000022D7322A0), (v19 & 1) != 0))
        {
          sub_22D6D5270(*(v15 + 7) + 32 * v18, v23);

          if (swift_dynamicCast())
          {
            v15 = v21;
            goto LABEL_25;
          }
        }

        else
        {
        }

LABEL_24:
        v15 = 0;
      }
    }

LABEL_25:

    return v15;
  }

  return 0;
}

id sub_22D6FF6C0(void *a1, uint64_t a2)
{
  v4 = sub_22D72E1D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D72E240();
  sub_22D72E690();
  (*(v5 + 8))(v8, v4);
  sub_22D72E230();
  v9 = sub_22D72E480();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22D6FF7EC(void *a1, uint64_t a2)
{
  sub_22D72E230();
  v4 = sub_22D72E480();

  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v16 = sub_22D6FFA50;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_22D6FD4B4;
  v15 = &block_descriptor_15;
  v10 = _Block_copy(&v12);
  [a1 setInterruptionHandler_];
  _Block_release(v10);
  v16 = sub_22D6FFAEC;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_22D6FD4B4;
  v15 = &block_descriptor_18;
  v11 = _Block_copy(&v12);
  [a1 setInvalidationHandler_];
  _Block_release(v11);
}

uint64_t sub_22D6FFA50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF7F8, qword_22D730E78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22D730E30;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x800000022D732C10;
  sub_22D72EA00();
}

uint64_t sub_22D6FFAEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF7F8, qword_22D730E78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22D730E30;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x800000022D732BF0;
  sub_22D72EA00();
}

id sub_22D6FFC4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateCaptureServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22D6FFD00(uint64_t a1, int64_t a2)
{
  v4 = v3;
  if (a2)
  {
    v5 = a2;
    v7 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_stateCaptureManager), *(v2 + OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_stateCaptureManager + 24));
    v8 = *v7;
    if (qword_2814579C0 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_3;
  }

  v18 = *(v2 + OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_stateCaptureManager + 24);
  v61 = (v2 + OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_stateCaptureManager);
  v19 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_stateCaptureManager), v18);
  v20 = *v19;
  if (qword_2814579C0 != -1)
  {
    v19 = swift_once();
  }

  v9 = qword_2814579C8;
  MEMORY[0x28223BE20](v19);
  v8 = &v53;
  v55 = sub_22D7003F4;
  v56 = v20;
  os_unfair_lock_lock((v9 + 16));
  sub_22D6F59F4(&v65);
  v63 = v3;
  if (v3)
  {
    goto LABEL_40;
  }

  v60 = v9;
  os_unfair_lock_unlock((v9 + 16));
  v21 = 0;
  a1 = v65 + 56;
  v22 = *(v65 + 56);
  v62 = v65;
  v23 = 1 << *(v65 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v5 = (v23 + 63) >> 6;
  v59 = MEMORY[0x277D84F98];
  while (v25)
  {
    v9 = v21;
LABEL_17:
    v26 = (*(v62 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v25)))));
    v28 = *v26;
    v27 = v26[1];
    v29 = __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    v10 = v57;
    v30 = *v29;
    v31 = MEMORY[0x28223BE20](v29);
    v53 = v32;
    v54 = v28;
    v55 = v27;
    MEMORY[0x28223BE20](v31);
    v8 = &v50;
    v51 = sub_22D700410;
    v52 = v33;

    v4 = v60;
    os_unfair_lock_lock(v60 + 4);
    v34 = v63;
    sub_22D6F37CC(&v65);
    v63 = v34;
    if (v34)
    {
      goto LABEL_37;
    }

    v25 &= v25 - 1;
    os_unfair_lock_unlock(v4 + 4);
    v4 = v65;
    if (v65)
    {
      v36 = *(v65 + 48);
      v35 = *(v65 + 56);

      v37 = v36(v28, v27);

      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF530, &qword_22D7301D8);
      *&v65 = v37;
      sub_22D6D5254(&v65, v64);
      v38 = v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v38;
      v10 = sub_22D6CC714(v28, v27);
      v40 = *&v38[4]._os_unfair_lock_opaque;
      v41 = (v39 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        os_unfair_lock_unlock(v4 + 4);
        __break(1u);
        goto LABEL_38;
      }

      if (*&v38[6]._os_unfair_lock_opaque >= v42)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v39 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          LODWORD(v59) = v39;
          sub_22D6D0100();
          if ((v59 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

LABEL_27:

        v59 = v67;
        v8 = (*&v67[14]._os_unfair_lock_opaque + 32 * v10);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        sub_22D6D5254(v64, v8);

        v21 = v9;
      }

      else
      {
        LODWORD(v59) = v39;
        sub_22D6CD59C(v42, isUniquelyReferenced_nonNull_native);
        v43 = sub_22D6CC714(v28, v27);
        if ((v59 & 1) != (v44 & 1))
        {
          goto LABEL_39;
        }

        v10 = v43;
        if (v59)
        {
          goto LABEL_27;
        }

LABEL_29:
        v8 = v4;
        v4 = v67;
        *&v67[2 * (v10 >> 6) + 16]._os_unfair_lock_opaque |= 1 << v10;
        v45 = (*&v4[12]._os_unfair_lock_opaque + 16 * v10);
        *v45 = v28;
        v45[1] = v27;
        sub_22D6D5254(v64, (*&v4[14]._os_unfair_lock_opaque + 32 * v10));

        v46 = *&v4[4]._os_unfair_lock_opaque;
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_36;
        }

        v59 = v4;
        *&v4[4]._os_unfair_lock_opaque = v48;
        v21 = v9;
      }
    }

    else
    {

      v21 = v9;
    }
  }

  while (1)
  {
    v9 = &v21->_os_unfair_lock_opaque + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      goto LABEL_32;
    }

    v25 = *(a1 + 8 * v9);
    v21 = (v21 + 1);
    if (v25)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  v7 = swift_once();
LABEL_3:
  v9 = v57;
  v10 = qword_2814579C8;
  v11 = MEMORY[0x28223BE20](v7);
  v53 = v8;
  v54 = a1;
  v55 = v5;
  MEMORY[0x28223BE20](v11);
  v51 = sub_22D700654;
  v52 = v12;
  os_unfair_lock_lock((v10 + 16));
  sub_22D6F5A78(&v65);
  if (v4)
  {
LABEL_38:
    os_unfair_lock_unlock((v10 + 16));
    __break(1u);
LABEL_39:
    sub_22D72E9A0();
    __break(1u);
LABEL_40:
    os_unfair_lock_unlock((v9 + 16));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v10 + 16));
  v13 = MEMORY[0x277D84F98];
  if (v65)
  {
    v15 = *(v65 + 48);
    v14 = *(v65 + 56);

    v16 = v15(a1, v5);

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF530, &qword_22D7301D8);
    *&v65 = v16;
    sub_22D6D5254(&v65, v64);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v13;
    sub_22D6CF19C(v64, a1, v5, v17);
  }

LABEL_32:
  v49 = sub_22D72E3A0();

  *&v65 = v49;
  sub_22D72E4C0();
}

id sub_22D700430(void *a1)
{
  v3 = [a1 remoteProcess];
  v4 = sub_22D72E480();
  v5 = [v3 hasEntitlement_];

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_22D700624;
    *(v7 + 24) = v6;
    v12[4] = sub_22D70062C;
    v12[5] = v7;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_22D70D678;
    v12[3] = &block_descriptor_7;
    v8 = _Block_copy(v12);
    v9 = v1;

    [a1 configureConnection_];
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [a1 activate];
    }
  }

  else
  {

    return [a1 invalidate];
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22D700728()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_2814579C8 = result;
  return result;
}

uint64_t sub_22D700768()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_281457660 = result;
  return result;
}

uint64_t sub_22D7007BC()
{
  v0 = sub_22D72E5F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D72E5D0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22D72E370();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D6D5838();
  sub_22D72E360();
  v10[1] = MEMORY[0x277D84F90];
  sub_22D702504(&qword_281457190, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6FA6E4();
  sub_22D72E6E0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v0);
  result = sub_22D72E620();
  qword_2814578C0 = result;
  return result;
}

uint64_t sub_22D7009F4(uint64_t a1)
{
  if (qword_281457400 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(a1 + 24);
  swift_beginAccess();
  sub_22D6CC414(v1);
  swift_endAccess();
}

void *sub_22D700AD8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_2814572B8 != -1)
  {
    swift_once();
  }

  v12 = sub_22D72DBE0();
  __swift_project_value_buffer(v12, qword_2814580D0);

  v13 = sub_22D72DBB0();
  v14 = sub_22D72E5A0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22D72891C(a1, a2, &v18);
    _os_log_impl(&dword_22D6B4000, v13, v14, "[state-capture] StateCaptureEntry created with title: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2318D0420](v16, -1, -1);
    MEMORY[0x2318D0420](v15, -1, -1);
  }

  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return v6;
}

uint64_t sub_22D700C50()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

double sub_22D700CBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a3;
  v14[7] = a4;
  aBlock[4] = sub_22D702488;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D7017AC;
  aBlock[3] = &block_descriptor_8;
  v15 = _Block_copy(aBlock);

  v16 = os_state_add_handler();
  _Block_release(v15);
  if (v16)
  {
    if (qword_281457658 != -1)
    {
      v17 = swift_once();
    }

    v18 = qword_281457660;
    v19 = MEMORY[0x28223BE20](v17);
    MEMORY[0x28223BE20](v19);
    os_unfair_lock_lock(v18 + 4);
    sub_22D6F4510(v20);
    os_unfair_lock_unlock(v18 + 4);
    v21 = type metadata accessor for StateCaptureInvalidator();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = v16;
    *(a7 + 24) = v21;
    *(a7 + 32) = &off_2840CD338;
    *a7 = v22;
  }

  else
  {
    if (qword_2814572B8 != -1)
    {
      swift_once();
    }

    v24 = sub_22D72DBE0();
    __swift_project_value_buffer(v24, qword_2814580D0);
    v25 = sub_22D72DBB0();
    v26 = sub_22D72E580();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22D6B4000, v25, v26, "[state-capture] os_state_add_handler() failed to return a handle", v27, 2u);
      MEMORY[0x2318D0420](v27, -1, -1);
    }

    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
  }

  return result;
}

_OWORD *sub_22D700F8C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a2(a4, a5);
  v9 = sub_22D70122C(a6, a7);
  v11 = v10;
  v12 = v9;

  if (v11 < 0x8000)
  {
    return v12;
  }

  if (qword_2814572B8 != -1)
  {
    swift_once();
  }

  v14 = sub_22D72DBE0();
  __swift_project_value_buffer(v14, qword_2814580D0);
  v15 = sub_22D72DBB0();
  v16 = sub_22D72E580();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22D6B4000, v15, v16, "[state-capture] cannot capture state data larger than 32KB", v17, 2u);
    MEMORY[0x2318D0420](v17, -1, -1);
  }

  return 0;
}

_OWORD *sub_22D70122C(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = sub_22D72D540();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = objc_opt_self();
  v10 = sub_22D72E3A0();
  *v51 = 0;
  v11 = [v9 dataWithPropertyList:v10 format:200 options:0 error:v51];

  v12 = *v51;
  if (!v11)
  {
    v18 = v12;
    sub_22D72D5D0();

    swift_willThrow();
    goto LABEL_38;
  }

  v13 = sub_22D72D650();
  v15 = v14;

  v50 = v15;
  v16 = v15 >> 62;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_13;
    }

    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    v21 = __OFSUB__(v19, v20);
    v17 = v19 - v20;
    if (!v21)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    LODWORD(v17) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = v17;
    goto LABEL_13;
  }

  if (v16)
  {
    goto LABEL_10;
  }

  v17 = BYTE6(v50);
LABEL_13:
  if (__OFADD__(v17, 200))
  {
    __break(1u);
    goto LABEL_40;
  }

  v22 = malloc(v17 + 200);
  if (v22)
  {
    v11 = v22;
    *v51 = 1;
    memset(&v51[4], 0, 196);
    sub_22D701938(a1, a2, &v51[136], &v52);
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_32;
      }

      v32 = *(v13 + 16);
      v31 = *(v13 + 24);
      v21 = __OFSUB__(v31, v32);
      v33 = v31 - v32;
      v23 = v50;
      if (!v21)
      {
LABEL_25:
        if ((v33 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v33))
          {
            *&v51[4] = v33;
            v34 = *&v51[176];
            v11[10] = *&v51[160];
            v11[11] = v34;
            *(v11 + 24) = *&v51[192];
            v35 = *&v51[112];
            v11[6] = *&v51[96];
            v11[7] = v35;
            v36 = *&v51[144];
            v11[8] = *&v51[128];
            v11[9] = v36;
            v37 = *&v51[48];
            v11[2] = *&v51[32];
            v11[3] = v37;
            v38 = *&v51[80];
            v11[4] = *&v51[64];
            v11[5] = v38;
            v39 = *&v51[16];
            *v11 = *v51;
            v11[1] = v39;
            if (v16 != 2)
            {
              if (__OFSUB__(HIDWORD(v13), v13))
              {
                goto LABEL_46;
              }

              v24 = HIDWORD(v13) - v13;
              goto LABEL_35;
            }

            if (__OFSUB__(*(v13 + 24), *(v13 + 16)))
            {
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
            }

            sub_22D72D660();
            v41 = *(v13 + 16);
            v40 = *(v13 + 24);
            sub_22D6D5664(v13, v23);
            v21 = __OFSUB__(v40, v41);
            v24 = v40 - v41;
            if (!v21)
            {
              goto LABEL_37;
            }

            __break(1u);
LABEL_32:
            v23 = v50;
            *&v51[4] = 0;
            v42 = *&v51[176];
            v11[10] = *&v51[160];
            v11[11] = v42;
            *(v11 + 24) = *&v51[192];
            v43 = *&v51[112];
            v11[6] = *&v51[96];
            v11[7] = v43;
            v44 = *&v51[144];
            v11[8] = *&v51[128];
            v11[9] = v44;
            v45 = *&v51[48];
            v11[2] = *&v51[32];
            v11[3] = v45;
            v46 = *&v51[80];
            v11[4] = *&v51[64];
            v11[5] = v46;
            v47 = *&v51[16];
            *v11 = *v51;
            v11[1] = v47;
            sub_22D72D660();
            v24 = 0;
LABEL_36:
            sub_22D6D5664(v13, v23);
LABEL_37:
            if (!__OFADD__(v24, 200))
            {
              goto LABEL_38;
            }

            goto LABEL_42;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v23 = v50;
      v24 = BYTE6(v50);
      *&v51[4] = BYTE6(v50);
      v25 = *&v51[176];
      v11[10] = *&v51[160];
      v11[11] = v25;
      *(v11 + 24) = *&v51[192];
      v26 = *&v51[112];
      v11[6] = *&v51[96];
      v11[7] = v26;
      v27 = *&v51[144];
      v11[8] = *&v51[128];
      v11[9] = v27;
      v28 = *&v51[48];
      v11[2] = *&v51[32];
      v11[3] = v28;
      v29 = *&v51[80];
      v11[4] = *&v51[64];
      v11[5] = v29;
      v30 = *&v51[16];
      *v11 = *v51;
      v11[1] = v30;
LABEL_35:
      sub_22D72D660();
      goto LABEL_36;
    }

    LODWORD(v33) = HIDWORD(v13) - v13;
    v23 = v50;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v33 = v33;
    goto LABEL_25;
  }

  *v51 = 12;
  sub_22D6D4390(MEMORY[0x277D84F90]);
  sub_22D702504(&qword_27D9FF860, MEMORY[0x277CC8658]);
  sub_22D72D5B0();
  v11 = v8;
  sub_22D72D530();
  (*(v5 + 8))(v8, v4);
  swift_willThrow();
  sub_22D6D5664(v13, v50);
LABEL_38:
  v48 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_22D7017AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

uint64_t sub_22D7017FC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for StateCaptureEntry();
  v12 = swift_allocObject();

  v13 = a3;

  sub_22D700AD8(a1, a2, v13, a4, a5);
  if (qword_281457400 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = qword_281457408;
  qword_281457408 = 0x8000000000000000;
  sub_22D6CF46C(v12, a6, isUniquelyReferenced_nonNull_native);
  qword_281457408 = v16;
  swift_endAccess();
}

uint64_t sub_22D701938(uint64_t result, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_22D72E7C0();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = result;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (__dst)
    {
      v4 = a4 - __dst;
      v5 = __src;
      return strncpy(__dst, v5, v4);
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    return sub_22D72E7C0();
  }

  if (!__dst)
  {
    goto LABEL_12;
  }

  v4 = a4 - __dst;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v5, v4);
}

uint64_t sub_22D7019D4()
{
  sub_22D6D5A4C((v0 + 8), v9, &qword_27D9FF868, &unk_22D730FF8);
  if (v10)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v9, v10);
    if ((*(*v1 + 16) & 1) == 0 && *(*v1 + 24))
    {
      v2 = os_state_remove_handler();
      if (qword_281457658 != -1)
      {
        v2 = swift_once();
      }

      v3 = qword_281457660;
      MEMORY[0x28223BE20](v2);
      os_unfair_lock_lock(v3 + 4);
      sub_22D6F5B28(v4);
      os_unfair_lock_unlock(v3 + 4);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    sub_22D70254C(v9);
  }

  v5 = v0[3];

  v6 = v0[5];

  v7 = v0[7];

  sub_22D70254C((v0 + 8));
  return swift_deallocClassInstance();
}

void *sub_22D701B44()
{
  v11[0] = sub_22D72E5F0();
  v1 = *(v11[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v11[0]);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D72E5D0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22D72E370();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = MEMORY[0x277D84F98];
  v0[2] = MEMORY[0x277D84F98];
  v0[3] = v9;
  sub_22D6D5838();
  sub_22D72E320();
  v11[1] = MEMORY[0x277D84F90];
  sub_22D702504(&qword_281457190, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6FA6E4();
  sub_22D72E6E0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v11[0]);
  v0[4] = sub_22D72E620();
  return v0;
}

uint64_t sub_22D701D8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);

  result = sub_22D6EBBC4(v5);
  *a2 = result;
  return result;
}

uint64_t sub_22D701E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  if (*(v9 + 16))
  {

    v10 = sub_22D6CC714(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  return result;
}

uint64_t sub_22D701ED4(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = v11;
  swift_beginAccess();
  if (*(*(v3 + 16) + 16) && (v13 = *(v3 + 16), , sub_22D6CC714(a2, a3), v15 = v14, , (v15 & 1) != 0))
  {
    if (qword_2814572B8 != -1)
    {
      swift_once();
    }

    v28 = sub_22D72DBE0();
    __swift_project_value_buffer(v28, qword_2814580D0);

    v29 = sub_22D72DBB0();
    v30 = sub_22D72E580();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v34[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_22D72891C(a2, a3, v34);
      _os_log_impl(&dword_22D6B4000, v29, v30, "[state-capture] identifier [%{public}s] is already in use", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x2318D0420](v32, -1, -1);
      MEMORY[0x2318D0420](v31, -1, -1);
    }

    result = sub_22D72E860();
    __break(1u);
  }

  else
  {
    sub_22D6D42A8(a1, v34);
    v16 = swift_allocObject();
    sub_22D6B6CF0(v34, v16 + 16);
    type metadata accessor for StateCaptureItem();
    v17 = swift_allocObject();
    v17[2] = v10;
    v17[3] = v12;
    v17[4] = a2;
    v17[5] = a3;
    v17[6] = sub_22D70241C;
    v17[7] = v16;
    v18 = qword_2814578B8;

    if (v18 != -1)
    {
      swift_once();
    }

    sub_22D700CBC(sub_22D70241C, v16, v10, v12, a2, a3, (v17 + 8));

    if (qword_2814572B8 != -1)
    {
      swift_once();
    }

    v19 = sub_22D72DBE0();
    __swift_project_value_buffer(v19, qword_2814580D0);

    v20 = sub_22D72DBB0();
    v21 = sub_22D72E5A0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v34[0] = v23;
      *v22 = 136446466;
      v24 = sub_22D72891C(v10, v12, v34);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_22D72891C(a2, a3, v34);
      _os_log_impl(&dword_22D6B4000, v20, v21, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318D0420](v23, -1, -1);
      MEMORY[0x2318D0420](v22, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();

    v25 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_22D6CF5B8(v17, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v33;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22D7023B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22D70241C(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_22D7024D4(char *__src)
{
  result = *(v1 + 16);
  if (result)
  {
    return strncpy(result, __src, *(v1 + 24) - result);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D702504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D70254C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF868, &unk_22D730FF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22D7025D0(void *a1, uint64_t a2)
{
  v4 = sub_22D72E1D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D72DFA0();
  sub_22D72E690();
  (*(v5 + 8))(v8, v4);
  sub_22D72DF90();
  v9 = sub_22D72E480();

  [a1 setService_];

  return [a1 setDelegate_];
}

void *sub_22D7026FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B8, &qword_22D731050);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  result = *(v0 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_listener);
  if (result)
  {
    [result activate];
    v11 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v0 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
    v18 = sub_22D6D60B0();
    v19 = *(v1 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_queue);
    v12 = v19;
    v13 = sub_22D72E5E0();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF9C0, &qword_22D731058);
    sub_22D6D5838();
    sub_22D6D58D4(&unk_281457250, &unk_27D9FF9C0, &qword_22D731058);
    sub_22D70D554(&qword_281457180, sub_22D6D5838);
    sub_22D72DCA0();
    sub_22D6D5984(v5, &qword_27D9FF9B0, &qword_22D7302B0);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_22D6D58D4(&qword_281457280, &qword_27D9FF9B8, &qword_22D731050);
    v15 = v17;
    sub_22D72DCB0();

    (*(v6 + 8))(v9, v15);
    swift_beginAccess();
    sub_22D72DC00();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D702A58(uint64_t *a1)
{
  v268 = sub_22D72DD20();
  v2 = *(v268 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v268);
  v267 = &v237 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v266 = &v237 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v265 = &v237 - v10;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v276 = *(v289 - 8);
  v11 = *(v276 + 64);
  v12 = MEMORY[0x28223BE20](v289);
  v264 = &v237 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v263 = &v237 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v284 = &v237 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v283 = &v237 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v262 = &v237 - v21;
  MEMORY[0x28223BE20](v20);
  v261 = &v237 - v22;
  v260 = sub_22D72DDC0();
  v272 = *(v260 - 8);
  v23 = *(v272 + 64);
  MEMORY[0x28223BE20](v260);
  v25 = &v237 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF9D0, &unk_22D731060);
  v26 = *(*(v258 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v258);
  v245 = &v237 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v249 = (&v237 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v237 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v282 = &v237 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v251 = &v237 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v244 = &v237 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v237 - v42;
  MEMORY[0x28223BE20](v41);
  v280 = &v237 - v44;
  v45 = type metadata accessor for Alarm(0);
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v279 = &v237 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v281 = &v237 - v51;
  MEMORY[0x28223BE20](v50);
  v271 = &v237 - v52;
  v288 = sub_22D72D7A0();
  v53 = *(v288 - 8);
  v54 = *(v53 + 64);
  v55 = MEMORY[0x28223BE20](v288);
  v253 = &v237 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  i = &v237 - v58;
  MEMORY[0x28223BE20](v57);
  v287 = &v237 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v60 - 8);
  v252 = &v237 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v62);
  v246 = &v237 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v254 = &v237 - v67;
  MEMORY[0x28223BE20](v66);
  v250 = &v237 - v68;
  v69 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v243 = v34;
  v241 = v2;
  v285 = v45;
  v71 = v46;
  v72 = *(result + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock);
  v73 = MEMORY[0x28223BE20](result);
  v238 = v73;
  *(&v237 - 2) = v73;
  *(&v237 - 1) = v69;
  MEMORY[0x28223BE20](v73);
  *(&v237 - 2) = sub_22D70D484;
  *(&v237 - 1) = v74;

  os_unfair_lock_lock(v72 + 4);
  sub_22D70D4A0(&v293);
  v240 = 0;
  os_unfair_lock_unlock(v72 + 4);
  v75 = *(&v293 + 1);
  v239 = v293;

  v77 = v69 + 64;
  v76 = *(v69 + 64);
  v78 = 1 << *(v69 + 32);
  v292 = MEMORY[0x277D84FA0];
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  else
  {
    v79 = -1;
  }

  v80 = v53;
  v81 = v79 & v76;
  v242 = (v78 + 63) >> 6;
  v270 = (v276 + 56);
  v273 = v80 + 16;
  v286 = (v80 + 32);
  v269 = (v276 + 48);
  v274 = v80;
  v275 = (v80 + 8);
  v257 = (v71 + 56);
  v276 = v71;
  v256 = (v71 + 48);
  v255 = v69;

  v82 = 0;
  v259 = v25;
  v83 = v282;
  v278 = v75;
  v277 = v43;
  v84 = v280;
  v85 = v254;
  v247 = v69 + 64;
  while (1)
  {
    if (v81)
    {
      v87 = v289;
      v88 = v82;
LABEL_19:
      v91 = __clz(__rbit64(v81));
      v81 &= v81 - 1;
      v92 = v91 | (v88 << 6);
      v93 = v255;
      v94 = v274;
      v96 = v287;
      v95 = v288;
      (*(v274 + 16))(v287, *(v255 + 48) + *(v274 + 72) * v92, v288);
      v97 = *(v93 + 56) + *(v276 + 72) * v92;
      v98 = v271;
      sub_22D6F37E4(v97, v271);
      v99 = *(v87 + 48);
      v100 = *(v94 + 32);
      v85 = v254;
      v100(v254, v96, v95);
      sub_22D6D3C4C(v98, &v85[v99]);
      v101 = 0;
      v83 = v282;
      v75 = v278;
      v102 = v277;
      v84 = v280;
    }

    else
    {
      v89 = v242 <= v82 + 1 ? v82 + 1 : v242;
      v90 = v89 - 1;
      while (1)
      {
        v88 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          __break(1u);
          goto LABEL_117;
        }

        if (v88 >= v242)
        {
          break;
        }

        v81 = *(v77 + 8 * v88);
        ++v82;
        if (v81)
        {
          v87 = v289;
          v82 = v88;
          goto LABEL_19;
        }
      }

      v102 = v43;
      v81 = 0;
      v101 = 1;
      v82 = v90;
    }

    v103 = *v270;
    v104 = v289;
    (*v270)(v85, v101, 1, v289);
    v105 = v85;
    v106 = v250;
    sub_22D70D4E4(v105, v250);
    v107 = *v269;
    if ((*v269)(v106, 1, v104) == 1)
    {
      break;
    }

    sub_22D6D3C4C(v106 + *(v289 + 48), v281);
    v108 = i;
    (*v286)(i, v106, v288);
    if (*(v75 + 16))
    {
      v109 = sub_22D6CC49C(v108);
      v110 = v102;
      v111 = v285;
      if (v112)
      {
        sub_22D6F37E4(*(v75 + 56) + *(v276 + 72) * v109, v84);
        v113 = 0;
      }

      else
      {
        v113 = 1;
      }
    }

    else
    {
      v113 = 1;
      v110 = v102;
      v111 = v285;
    }

    (*v275)(v108, v288);
    v114 = *v257;
    (*v257)(v84, v113, 1, v111);
    sub_22D6F37E4(v281, v110);
    v114(v110, 0, 1, v111);
    v115 = *(v258 + 48);
    v116 = v84;
    v117 = v249;
    sub_22D6D5A4C(v116, v249, &qword_27D9FF550, &qword_22D730130);
    sub_22D6D5A4C(v110, v117 + v115, &qword_27D9FF550, &qword_22D730130);
    v118 = *v256;
    if ((*v256)(v117, 1, v111) == 1)
    {
      sub_22D6D5984(v110, &qword_27D9FF550, &qword_22D730130);
      sub_22D6D5984(v280, &qword_27D9FF550, &qword_22D730130);
      v119 = v118(v117 + v115, 1, v111);
      v83 = v282;
      v85 = v254;
      if (v119 == 1)
      {
        sub_22D6D5984(v117, &qword_27D9FF550, &qword_22D730130);
        v43 = v277;
LABEL_7:
        v86 = v281;
        goto LABEL_8;
      }

      goto LABEL_31;
    }

    v120 = v244;
    sub_22D6D5A4C(v117, v244, &qword_27D9FF550, &qword_22D730130);
    if (v118(v117 + v115, 1, v111) == 1)
    {
      sub_22D6D5984(v277, &qword_27D9FF550, &qword_22D730130);
      sub_22D6D5984(v280, &qword_27D9FF550, &qword_22D730130);
      sub_22D6F3848(v120);
      v83 = v282;
      v85 = v254;
LABEL_31:
      sub_22D6D5984(v117, &unk_27D9FF9D0, &unk_22D731060);
      goto LABEL_32;
    }

    v126 = v271;
    sub_22D6D3C4C(v117 + v115, v271);
    v127 = sub_22D7176CC(v120, v126);
    sub_22D6F3848(v126);
    v128 = v277;
    sub_22D6D5984(v277, &qword_27D9FF550, &qword_22D730130);
    sub_22D6D5984(v280, &qword_27D9FF550, &qword_22D730130);
    v129 = v120;
    v43 = v128;
    sub_22D6F3848(v129);
    sub_22D6D5984(v117, &qword_27D9FF550, &qword_22D730130);
    v83 = v282;
    v85 = v254;
    if (v127)
    {
      goto LABEL_7;
    }

LABEL_32:
    v121 = v281;
    v122 = (v281 + v111[6]);
    v123 = *v122;
    v124 = v122[1];

    v125 = v124;
    v43 = v277;
    sub_22D6F1818(&v293, v123, v125);

    v86 = v121;
LABEL_8:
    result = sub_22D6F3848(v86);
    v84 = v280;
    v77 = v247;
    v75 = v278;
  }

  v280 = v107;

  v130 = 0;
  v131 = v75 + 64;
  v132 = 1 << *(v75 + 32);
  v133 = -1;
  if (v132 < 64)
  {
    v133 = ~(-1 << v132);
  }

  v134 = v133 & *(v75 + 64);
  v135 = (v132 + 63) >> 6;
  v136 = v253;
  v281 = v103;
  v137 = v252;
  v277 = v131;
  v254 = v135;
  while (2)
  {
    v139 = v276;
    if (v134)
    {
      v140 = v130;
LABEL_52:
      v143 = __clz(__rbit64(v134));
      v134 &= v134 - 1;
      v144 = v143 | (v140 << 6);
      v145 = v278;
      v146 = v274;
      v147 = v287;
      v148 = v288;
      (*(v274 + 16))(v287, *(v278 + 48) + *(v274 + 72) * v144, v288);
      v149 = *(v145 + 56) + *(v139 + 72) * v144;
      v150 = v271;
      sub_22D6F37E4(v149, v271);
      v151 = *(v289 + 48);
      v152 = v252;
      (*(v146 + 32))(v252, v147, v148);
      v153 = &v152[v151];
      v137 = v152;
      sub_22D6D3C4C(v150, v153);
      v154 = 0;
      v103 = v281;
      v83 = v282;
      v136 = v253;
LABEL_53:
      v155 = v289;
      v103(v137, v154, 1, v289);
      v156 = v137;
      v157 = v246;
      sub_22D70D4E4(v156, v246);
      if ((v280)(v157, 1, v155) == 1)
      {

        v176 = v240;
        result = sub_22D70B2C8(v239, &v292);
        if ((result & 0xC000000000000001) != 0)
        {
          sub_22D72E720();
          type metadata accessor for Client();
          sub_22D70D554(&qword_27D9FF9E8, type metadata accessor for Client);
          sub_22D72E560();
          v177 = *(&v293 + 1);
          result = v293;
          v178 = v294;
          v179 = v295;
          v180 = v296;
        }

        else
        {
          v179 = 0;
          v181 = -1 << *(result + 32);
          v177 = result + 56;
          v182 = ~v181;
          v183 = -v181;
          if (v183 < 64)
          {
            v184 = ~(-1 << v183);
          }

          else
          {
            v184 = -1;
          }

          v180 = (v184 & *(result + 56));
          v178 = v182;
        }

        v185 = v274;
        v247 = v178;
        v186 = (v178 + 64) >> 6;
        v258 = v241 + 16;
        v257 = (v272 + 32);
        v251 = result;
        v250 = v177;
        for (i = v186; ; v186 = i)
        {
          if (result < 0)
          {
            v192 = sub_22D72E750();
            if (!v192 || (v290 = v192, type metadata accessor for Client(), swift_dynamicCast(), v191 = v291, v189 = v179, v190 = v180, !v291))
            {
LABEL_114:
              sub_22D6D3C44();
            }
          }

          else
          {
            v187 = v179;
            v188 = v180;
            v189 = v179;
            if (!v180)
            {
              do
              {
                v189 = (v187 + 1);
                if (__OFADD__(v187, 1))
                {
                  goto LABEL_123;
                }

                if (v189 >= v186)
                {
                  goto LABEL_114;
                }

                v188 = *(v177 + 8 * v189);
                ++v187;
              }

              while (!v188);
            }

            v190 = (v188 - 1) & v188;
            v191 = *(*(result + 48) + ((v189 << 9) | (8 * __clz(__rbit64(v188)))));
            if (!v191)
            {
              goto LABEL_114;
            }
          }

          v253 = v190;
          v254 = v189;
          v193 = v191;
          v194 = sub_22D70BFD8(v255, v193);
          v252 = v176;

          v195 = *(v194 + 16);
          if (v195)
          {
            v249 = v193;
            v291 = MEMORY[0x277D84F90];
            sub_22D6D3360(0, v195, 0);
            v196 = v291;
            v197 = (v194 + 64);
            v198 = -1 << *(v194 + 32);
            result = sub_22D72E6F0();
            v199 = result;
            v200 = 0;
            v256 = (v194 + 72);
            v269 = v195;
            v270 = (v194 + 64);
            v271 = v194;
            while ((v199 & 0x8000000000000000) == 0 && v199 < 1 << *(v194 + 32))
            {
              if ((v197[v199 >> 6] & (1 << v199)) == 0)
              {
                goto LABEL_119;
              }

              v279 = 1 << v199;
              v280 = v199 >> 6;
              v277 = v200;
              v278 = *(v194 + 36);
              v201 = v289;
              v202 = *(v289 + 48);
              v203 = *(v194 + 48) + v185[9] * v199;
              v204 = v185[2];
              v205 = v261;
              v282 = v196;
              v206 = v288;
              v204(v261, v203, v288);
              sub_22D6F37E4(*(v194 + 56) + *(v276 + 72) * v199, &v205[v202]);
              v207 = v185[4];
              v208 = v262;
              v207(v262, v205, v206);
              sub_22D6D3C4C(&v205[v202], v208 + *(v201 + 48));
              v209 = v283;
              sub_22D6D5A4C(v208, v283, &unk_27D9FF4A0, &qword_22D730510);
              v210 = v209 + *(v201 + 48);
              v281 = v199;
              v211 = v285;
              v204(v287, v210 + v285[5], v206);
              sub_22D6F3848(v210);
              v212 = v284;
              sub_22D6D5A4C(v208, v284, &unk_27D9FF4A0, &qword_22D730510);
              v213 = v212 + *(v201 + 48);
              sub_22D6D5A4C(v213 + v211[8], v265, &qword_27D9FF4B0, &unk_22D7301A0);
              sub_22D6F3848(v213);
              v214 = v263;
              sub_22D6D5A4C(v208, v263, &unk_27D9FF4A0, &qword_22D730510);
              v215 = v214 + *(v201 + 48);
              sub_22D6D5A4C(v215 + v211[9], v266, &qword_27D9FF310, &qword_22D7301B8);
              sub_22D6F3848(v215);
              v216 = v264;
              sub_22D6D5A4C(v208, v264, &unk_27D9FF4A0, &qword_22D730510);
              v217 = *(v201 + 48);
              v218 = v259;
              v219 = v216 + v217;
              (*v258)(v267, v216 + v217 + v211[11], v268);
              sub_22D6F3848(v219);
              sub_22D72DD00();
              v220 = v208;
              v185 = v274;
              sub_22D6D5984(v220, &unk_27D9FF4A0, &qword_22D730510);
              v221 = v185[1];
              v221(v216, v206);
              v221(v214, v206);
              v221(v284, v206);
              v222 = v206;
              v196 = v282;
              v221(v283, v222);
              v291 = v196;
              v224 = *(v196 + 16);
              v223 = *(v196 + 24);
              if (v224 >= v223 >> 1)
              {
                sub_22D6D3360(v223 > 1, v224 + 1, 1);
                v196 = v291;
              }

              *(v196 + 16) = v224 + 1;
              (*(v272 + 32))(v196 + ((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v224, v218, v260);
              v194 = v271;
              v199 = 1 << *(v271 + 32);
              result = v281;
              if (v281 >= v199)
              {
                goto LABEL_120;
              }

              v197 = v270;
              v225 = v270[v280];
              if ((v225 & v279) == 0)
              {
                goto LABEL_121;
              }

              if (v278 != *(v271 + 36))
              {
                goto LABEL_122;
              }

              v226 = v225 & (-2 << (v281 & 0x3F));
              if (v226)
              {
                v199 = __clz(__rbit64(v226)) | v281 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v227 = v280 << 6;
                v228 = v280 + 1;
                v229 = &v256[v280];
                while (v228 < (v199 + 63) >> 6)
                {
                  v231 = *v229++;
                  v230 = v231;
                  v227 += 64;
                  ++v228;
                  if (v231)
                  {
                    result = sub_22D6D5264(v281, v278, 0);
                    v199 = __clz(__rbit64(v230)) + v227;
                    goto LABEL_91;
                  }
                }

                result = sub_22D6D5264(v281, v278, 0);
              }

LABEL_91:
              v200 = (v277 + 1);
              if (v277 + 1 == v269)
              {

                v193 = v249;
                goto LABEL_108;
              }
            }

            goto LABEL_118;
          }

          v196 = MEMORY[0x277D84F90];
LABEL_108:
          v232 = v193;
          v176 = v252;
          sub_22D704A18(v196);
          if (v176)
          {

            if (qword_27D9FF128 != -1)
            {
              swift_once();
            }

            v233 = sub_22D72DBE0();
            __swift_project_value_buffer(v233, qword_27DA01700);
            v234 = sub_22D72DBB0();
            v235 = sub_22D72E580();
            if (os_log_type_enabled(v234, v235))
            {
              v236 = swift_slowAlloc();
              *v236 = 0;
              _os_log_impl(&dword_22D6B4000, v234, v235, "Failed to send alarms change to client", v236, 2u);
              MEMORY[0x2318D0420](v236, -1, -1);
            }

            v176 = 0;
            v179 = v254;
            v180 = v253;
          }

          else
          {

            v179 = v254;
            v180 = v253;
            v234 = v193;
          }

          result = v251;
          v177 = v250;
        }
      }

      sub_22D6D3C4C(v157 + *(v289 + 48), v279);
      (*v286)(v136, v157, v288);
      v158 = v255;
      if (*(v255 + 16))
      {
        v159 = sub_22D6CC49C(v136);
        v160 = v251;
        if (v161)
        {
          sub_22D6F37E4(*(v158 + 56) + *(v139 + 72) * v159, v251);
          v162 = 0;
        }

        else
        {
          v162 = 1;
        }

        v83 = v282;
      }

      else
      {
        v162 = 1;
        v160 = v251;
      }

      (*v275)(v136, v288);
      v163 = *v257;
      v164 = v285;
      (*v257)(v160, v162, 1, v285);
      sub_22D6F37E4(v279, v83);
      v163(v83, 0, 1, v164);
      v165 = *(v258 + 48);
      v166 = v245;
      sub_22D6D5A4C(v160, v245, &qword_27D9FF550, &qword_22D730130);
      sub_22D6D5A4C(v83, v166 + v165, &qword_27D9FF550, &qword_22D730130);
      v167 = *v256;
      if ((*v256)(v166, 1, v164) == 1)
      {
        sub_22D6D5984(v83, &qword_27D9FF550, &qword_22D730130);
        sub_22D6D5984(v160, &qword_27D9FF550, &qword_22D730130);
        v168 = v167(v166 + v165, 1, v164);
        v131 = v277;
        if (v168 != 1)
        {
LABEL_65:
          sub_22D6D5984(v166, &unk_27D9FF9D0, &unk_22D731060);
          v135 = v254;
          goto LABEL_66;
        }

        sub_22D6D5984(v166, &qword_27D9FF550, &qword_22D730130);
        v135 = v254;
LABEL_40:
        v138 = v279;
      }

      else
      {
        v169 = v243;
        sub_22D6D5A4C(v166, v243, &qword_27D9FF550, &qword_22D730130);
        if (v167(v166 + v165, 1, v164) == 1)
        {
          sub_22D6D5984(v282, &qword_27D9FF550, &qword_22D730130);
          sub_22D6D5984(v251, &qword_27D9FF550, &qword_22D730130);
          sub_22D6F3848(v169);
          v131 = v277;
          goto LABEL_65;
        }

        v174 = v271;
        sub_22D6D3C4C(v166 + v165, v271);
        v175 = sub_22D7176CC(v169, v174);
        sub_22D6F3848(v174);
        sub_22D6D5984(v282, &qword_27D9FF550, &qword_22D730130);
        sub_22D6D5984(v251, &qword_27D9FF550, &qword_22D730130);
        sub_22D6F3848(v169);
        sub_22D6D5984(v166, &qword_27D9FF550, &qword_22D730130);
        v131 = v277;
        v135 = v254;
        if (v175)
        {
          goto LABEL_40;
        }

LABEL_66:
        v170 = v279;
        v171 = (v279 + v285[6]);
        v172 = *v171;
        v173 = v171[1];

        sub_22D6F1818(&v293, v172, v173);

        v138 = v170;
      }

      result = sub_22D6F3848(v138);
      v137 = v252;
      v136 = v253;
      v103 = v281;
      v83 = v282;
      continue;
    }

    break;
  }

  if (v135 <= v130 + 1)
  {
    v141 = v130 + 1;
  }

  else
  {
    v141 = v135;
  }

  v142 = v141 - 1;
  while (1)
  {
    v140 = v130 + 1;
    if (__OFADD__(v130, 1))
    {
      break;
    }

    if (v140 >= v135)
    {
      v134 = 0;
      v154 = 1;
      v130 = v142;
      goto LABEL_53;
    }

    v134 = *(v131 + 8 * v140);
    ++v130;
    if (v134)
    {
      v130 = v140;
      goto LABEL_52;
    }
  }

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
  return result;
}

uint64_t sub_22D704674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock_clients;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *(a1 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock_alarms);
  *(a1 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock_alarms) = a2;
  *a3 = v7;
  a3[1] = v8;
}

void sub_22D7046FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v27[-v12];
  v14 = sub_22D72D7A0();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  sub_22D6F37E4(a2, &v13[*(v7 + 48)]);
  v16 = *(a3 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock);
  v31 = a3;
  v28 = sub_22D70D5E8;
  v29 = &v30;
  os_unfair_lock_lock(v16 + 4);
  sub_22D70D638(&v32);
  if (!v3)
  {
    os_unfair_lock_unlock(v16 + 4);
    if (v32)
    {
      sub_22D6D5A4C(v13, v11, &unk_27D9FF4A0, &qword_22D730510);
      v17 = &v11[*(v7 + 48)];
      v18 = (v17 + *(type metadata accessor for Alarm(0) + 24));
      v20 = *v18;
      v19 = v18[1];

      sub_22D6F3848(v17);
      v21 = sub_22D70582C();
      if (v22)
      {
        if (v20 == v21 && v22 == v19)
        {

          (*(v15 + 8))(v11, v14);
          goto LABEL_12;
        }

        v24 = sub_22D72E980();

        (*(v15 + 8))(v11, v14);
        if (v24)
        {
          goto LABEL_12;
        }
      }

      else
      {

        (*(v15 + 8))(v11, v14);
      }
    }

    v25 = [*(a3 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v26 = sub_22D72E480();
    [v25 hasEntitlement_];

LABEL_12:
    sub_22D6D5984(v13, &unk_27D9FF4A0, &qword_22D730510);
    return;
  }

  os_unfair_lock_unlock(v16 + 4);
  __break(1u);
}

void sub_22D704A18(uint64_t a1)
{
  v3 = v1;
  v5 = sub_22D72DFE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *&v1[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock];
  v24 = v1;
  v25 = a1;
  v21 = sub_22D70D59C;
  v22 = &v23;
  os_unfair_lock_lock(v10 + 4);
  sub_22D6FF31C(&aBlock);
  if (v2)
  {
    os_unfair_lock_unlock(v10 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v10 + 4);
    if (aBlock)
    {
      if ([*&v1[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection] remoteTarget])
      {
        sub_22D72E6D0();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0u;
        v31 = 0u;
      }

      aBlock = v30;
      v27 = v31;
      if (*(&v31 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9F8, qword_22D731070);
        if (swift_dynamicCast())
        {
          v11 = v32;

          sub_22D72DFD0();
          sub_22D70D554(&unk_27D9FF950, MEMORY[0x277CB9A58]);
          v12 = sub_22D72E220();
          v13 = swift_allocObject();
          *(v13 + 16) = v3;
          v28 = sub_22D70D5B8;
          v29 = v13;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v27 = sub_22D70D6CC;
          *(&v27 + 1) = &block_descriptor_90;
          v14 = _Block_copy(&aBlock);
          v15 = v3;

          [v11 alarmsDidUpdateWithParameters:v12 completion:v14];
          _Block_release(v14);
          swift_unknownObjectRelease();

          (*(v6 + 8))(v9, v5);
          return;
        }
      }

      else
      {
        sub_22D6D5984(&aBlock, &qword_27D9FF9F0, &unk_22D730240);
      }

      if (qword_27D9FF128 != -1)
      {
        swift_once();
      }

      v16 = sub_22D72DBE0();
      __swift_project_value_buffer(v16, qword_27DA01700);
      v17 = sub_22D72DBB0();
      v18 = sub_22D72E590();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_22D6B4000, v17, v18, "Failed to cast connection to client interface protocol", v19, 2u);
        MEMORY[0x2318D0420](v19, -1, -1);
      }
    }
  }
}

void sub_22D704ED8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_22D6F1968(&v4, a2);
  v3 = v4;
  swift_endAccess();
}

void sub_22D704F54(void *a1, void *a2, uint64_t a3)
{
  sub_22D72DF90();
  v6 = sub_22D72E480();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22D705300;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D705378;
  v25 = &block_descriptor_65_0;
  v8 = _Block_copy(&v22);
  v9 = &unk_2840D68B0;

  v10 = objc_opt_self();
  v11 = [v10 protocolForProtocol:v9 interpreter:v8];
  _Block_release(v8);

  [v7 setClient_];
  v12 = [v10 protocolForProtocol_];
  [v7 setServer_];

  v13 = [objc_opt_self() main];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  v26 = sub_22D70D410;
  v27 = v15;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D6FD4B4;
  v25 = &block_descriptor_74;
  v16 = _Block_copy(&v22);
  v17 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v16);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v26 = sub_22D70D458;
  v27 = v19;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D6FD4B4;
  v25 = &block_descriptor_81;
  v20 = _Block_copy(&v22);
  v21 = v17;

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}