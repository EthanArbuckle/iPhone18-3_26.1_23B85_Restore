uint64_t sub_213D0E7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v297 = a4;
  v291 = a1;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB208, &unk_213D97260);
  v317 = *(v309 - 8);
  v8 = *(v317 + 64);
  MEMORY[0x28223BE20](v309);
  v319 = (&v281 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v316 = (&v281 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v282 = &v281 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v290 = &v281 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v281 - v18;
  MEMORY[0x28223BE20](v20);
  v302 = &v281 - v21;
  MEMORY[0x28223BE20](v22);
  v305 = &v281 - v23;
  MEMORY[0x28223BE20](v24);
  v307 = &v281 - v25;
  MEMORY[0x28223BE20](v26);
  v311 = &v281 - v27;
  v321 = type metadata accessor for UserAnnotationViewModel(0);
  v28 = *(v321 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v321);
  v287 = &v281 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v298 = &v281 - v32;
  MEMORY[0x28223BE20](v33);
  v288 = &v281 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = (&v281 - v36);
  MEMORY[0x28223BE20](v38);
  v306 = &v281 - v39;
  MEMORY[0x28223BE20](v40);
  v320 = (&v281 - v41);
  v289 = v42;
  MEMORY[0x28223BE20](v43);
  v310 = &v281 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB220, &qword_213D97280);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v314 = &v281 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v313 = (&v281 - v49);
  *&v327 = v5;
  v50 = v5;
  v323 = a5;
  v51 = swift_readAtKeyPath();
  v53 = *(v52 + 16);

  v51(&aBlock, 0);
  v322 = v50;

  v54 = *(a2 + 16);
  v318 = v28;
  if (!v54)
  {
    v57 = MEMORY[0x277D84F90];
    v300 = MEMORY[0x277D84F90];
    v301 = MEMORY[0x277D84F90];
LABEL_51:
    v308 = v57;
    if (v297)
    {
      v151 = objc_opt_self();
      v152 = swift_allocObject();
      *(v152 + 16) = v300;
      v332 = sub_213D1F590;
      v333 = v152;
      aBlock = MEMORY[0x277D85DD0];
      v329 = 1107296256;
      v330 = sub_213CFF278;
      v331 = &block_descriptor_401;
      v153 = _Block_copy(&aBlock);

      v154 = swift_allocObject();
      *(v154 + 16) = v301;
      v332 = sub_213D1F60C;
      v333 = v154;
      aBlock = MEMORY[0x277D85DD0];
      v329 = 1107296256;
      v330 = sub_213D183BC;
      v331 = &block_descriptor_408;
      v155 = _Block_copy(&aBlock);

      [v151 animateWithDuration:v153 animations:v155 completion:0.25];
      _Block_release(v155);
      _Block_release(v153);
    }

    v156 = v53 + 64;
    v157 = 1 << v53[32];
    v158 = -1;
    if (v157 < 64)
    {
      v158 = ~(-1 << v157);
    }

    v159 = v158 & *(v53 + 8);
    v160 = (v157 + 63) >> 6;
    v319 = (v318 + 56);

    v129 = 0;
    v161 = v314;
    v162 = v313;
    v312 = v53 + 64;
    v315 = v53;
    while (v159)
    {
      v165 = v129;
LABEL_68:
      v168 = __clz(__rbit64(v159));
      v159 &= v159 - 1;
      v169 = v168 | (v165 << 6);
      v170 = *(*(v53 + 6) + 8 * v169);
      v171 = v310;
      sub_213D1E9F8(*(v53 + 7) + *(v318 + 72) * v169, v310, type metadata accessor for UserAnnotationViewModel);
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB228, &qword_213D97288);
      v173 = *(v172 + 48);
      *v161 = v170;
      sub_213D1E884(v171, v161 + v173, type metadata accessor for UserAnnotationViewModel);
      (*(*(v172 - 8) + 56))(v161, 0, 1, v172);
      v174 = v170;
LABEL_69:
      sub_213CED608(v161, v162, &qword_27C8EB220, &qword_213D97280);
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB228, &qword_213D97288);
      if ((*(*(v175 - 8) + 48))(v162, 1, v175) == 1)
      {
        v206 = v315;

        v207 = 0;
        v208 = 1 << v206[32];
        v209 = -1;
        if (v208 < 64)
        {
          v209 = ~(-1 << v208);
        }

        v210 = v209 & *(v206 + 8);
        v211 = (v208 + 63) >> 6;
        v129 = v309;
        while (v210)
        {
LABEL_82:
          v210 &= v210 - 1;
        }

        while (1)
        {
          v212 = v207 + 1;
          if (__OFADD__(v207, 1))
          {
            goto LABEL_130;
          }

          if (v212 >= v211)
          {

            if (MEMORY[0x277D84F90] >> 62)
            {
              goto LABEL_137;
            }

            v213 = MEMORY[0x277D84F90];
            sub_213D91F0C();
            goto LABEL_90;
          }

          v210 = *&v312[8 * v212];
          ++v207;
          if (v210)
          {
            v207 = v212;
            goto LABEL_82;
          }
        }
      }

      v176 = *v162;
      v177 = v162 + *(v175 + 48);
      v178 = v320;
      sub_213D1E884(v177, v320, type metadata accessor for UserAnnotationViewModel);
      v179 = *v178;
      *&v327 = v322;
      v180 = v322;
      v181 = swift_modifyAtReferenceWritableKeyPath();
      v183 = v182;
      v184 = *(v182 + 24);
      v185 = sub_213CE22A8(v179);
      v156 = v312;
      if (v186)
      {
        v187 = v185;
        v188 = *(v183 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v190 = *(v183 + 24);
        v324 = v190;
        *(v183 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB230, &qword_213D97290);
          v190 = v324;
        }

        v191 = *(*(v190 + 48) + 8 * v187);

        sub_213D1B868(v187, v190);
        v192 = *(v183 + 24);
        *(v183 + 24) = v190;
      }

      v181(&aBlock, 0);

      *&v327 = v180;
      v193 = v180;
      v194 = swift_modifyAtReferenceWritableKeyPath();
      v196 = v195;
      v197 = *(v195 + 16);
      v198 = sub_213CE23F4(v176);
      if (v199)
      {
        v200 = v198;
        v201 = *(v196 + 16);
        v202 = swift_isUniquelyReferenced_nonNull_native();
        v203 = *(v196 + 16);
        v324 = v203;
        *(v196 + 16) = 0x8000000000000000;
        if (!v202)
        {
          sub_213D1C790();
          v203 = v324;
        }

        v164 = v311;
        sub_213D1E884(*(v203 + 56) + *(v318 + 72) * v200, v311, type metadata accessor for UserAnnotationViewModel);
        sub_213D1B698(v200, v203, type metadata accessor for UserAnnotationViewModel);
        v204 = *(v196 + 16);
        *(v196 + 16) = v203;

        v163 = 0;
      }

      else
      {
        v163 = 1;
        v164 = v311;
      }

      (*v319)(v164, v163, 1, v321);
      sub_213CD8330(v164, &qword_27C8EB680, &unk_213D97FF0);
      v194(&aBlock, 0);

      sub_213D1F330(v320, type metadata accessor for UserAnnotationViewModel);
      v53 = v315;
      v161 = v314;
      v162 = v313;
    }

    if (v160 <= v129 + 1)
    {
      v166 = v129 + 1;
    }

    else
    {
      v166 = v160;
    }

    v167 = (v166 - 1);
    while (1)
    {
      v165 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v165 >= v160)
      {
        v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB228, &qword_213D97288);
        (*(*(v205 - 8) + 56))(v161, 1, 1, v205);
        v159 = 0;
        v129 = v167;
        goto LABEL_69;
      }

      v159 = *&v156[8 * v165];
      v129 = (v129 + 1);
      if (v159)
      {
        v129 = v165;
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
    v213 = sub_213D91EAC();
LABEL_90:
    v214 = v308;
    aBlock = v291;
    v215 = sub_213D17C74(v213, &protocolRef_MKOverlay);
    if (v215)
    {
      v216 = v215;

      v217 = off_28263B068;
      v218 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v217(v216, v218, &off_28263B040);
    }

    else
    {
      v219 = sub_213D17C74(v213, &protocolRef_MKAnnotation);

      if (!v219)
      {
LABEL_95:
        v320 = v214[2];
        if (!v320)
        {
          return v214;
        }

        v222 = *(v129 + 12);
        v315 = v214 + ((*(v317 + 80) + 32) & ~*(v317 + 80));
        v314 = (v318 + 48);

        v223 = 0;
        while (1)
        {
          if (v223 >= v214[2])
          {
            goto LABEL_131;
          }

          v226 = v316;
          sub_213CE2C28(&v315[*(v317 + 72) * v223], v316, &qword_27C8EB208, &unk_213D97260);
          v227 = *v226;
          v228 = v222;
          v229 = *(v226 + v222);
          *&v327 = v322;
          v129 = v322;

          v230 = v227;
          v231 = swift_modifyAtReferenceWritableKeyPath();
          v233 = v232;
          v234 = *(v232 + 24);
          v235 = swift_isUniquelyReferenced_nonNull_native();
          v324 = *(v233 + 24);
          v236 = v324;
          *(v233 + 24) = 0x8000000000000000;
          v237 = sub_213CE22A8(v229);
          v239 = *(v236 + 16);
          v240 = (v238 & 1) == 0;
          v141 = __OFADD__(v239, v240);
          v241 = v239 + v240;
          if (v141)
          {
            goto LABEL_132;
          }

          v242 = v238;
          if (*(v236 + 24) >= v241)
          {
            if ((v235 & 1) == 0)
            {
              v275 = v237;
              sub_213D1CE38(&qword_27C8EB230, &qword_213D97290);
              v237 = v275;
            }
          }

          else
          {
            sub_213D1AEB0(v241, v235, &qword_27C8EB230, &qword_213D97290);
            v237 = sub_213CE22A8(v229);
            if ((v242 & 1) != (v243 & 1))
            {
              goto LABEL_139;
            }
          }

          v222 = v228;
          v244 = v324;
          if (v242)
          {
            v245 = v324[7];
            v246 = *(v245 + 8 * v237);
            *(v245 + 8 * v237) = v230;
          }

          else
          {
            v324[(v237 >> 6) + 8] |= 1 << v237;
            *(v244[6] + 8 * v237) = v229;
            *(v244[7] + 8 * v237) = v230;
            v247 = v244[2];
            v141 = __OFADD__(v247, 1);
            v248 = v247 + 1;
            if (v141)
            {
              goto LABEL_133;
            }

            v244[2] = v248;
          }

          *(v233 + 24) = v244;
          v231(&aBlock, 0);

          v249 = v307;
          sub_213D1E884(v316 + v228, v307, type metadata accessor for UserAnnotationViewModel);
          v250 = *v319;
          v251 = v321;
          (*v319)(v249, 0, 1, v321);
          *&v327 = v129;
          v252 = v129;
          v253 = v230;
          v254 = swift_modifyAtReferenceWritableKeyPath();
          v129 = v255;
          if ((*v314)(v249, 1, v251) == 1)
          {
            sub_213CD8330(v249, &qword_27C8EB680, &unk_213D97FF0);
            v256 = v129[2];
            v257 = sub_213CE23F4(v253);
            if (v258)
            {
              v259 = v257;
              v260 = v129[2];
              v261 = swift_isUniquelyReferenced_nonNull_native();
              v262 = v129[2];
              v324 = v262;
              v129[2] = 0x8000000000000000;
              if (!v261)
              {
                sub_213D1C790();
                v262 = v324;
              }

              v225 = v305;
              sub_213D1E884(*(v262 + 56) + *(v318 + 72) * v259, v305, type metadata accessor for UserAnnotationViewModel);
              sub_213D1B698(v259, v262, type metadata accessor for UserAnnotationViewModel);

              v263 = v129[2];
              v129[2] = v262;

              v224 = 0;
            }

            else
            {

              v224 = 1;
              v225 = v305;
            }

            v250(v225, v224, 1, v321);
            sub_213CD8330(v225, &qword_27C8EB680, &unk_213D97FF0);
            goto LABEL_99;
          }

          sub_213D1E884(v249, v306, type metadata accessor for UserAnnotationViewModel);
          v264 = v129[2];
          v265 = swift_isUniquelyReferenced_nonNull_native();
          v324 = v129[2];
          v266 = v324;
          v129[2] = 0x8000000000000000;
          v267 = sub_213CE23F4(v253);
          v269 = *(v266 + 16);
          v270 = (v268 & 1) == 0;
          v141 = __OFADD__(v269, v270);
          v271 = v269 + v270;
          if (v141)
          {
            goto LABEL_134;
          }

          v272 = v268;
          if (*(v266 + 24) < v271)
          {
            break;
          }

          if (v265)
          {
            goto LABEL_121;
          }

          v276 = v267;
          sub_213D1C790();
          v267 = v276;
          v274 = v324;
          if ((v272 & 1) == 0)
          {
LABEL_124:
            v274[(v267 >> 6) + 8] |= 1 << v267;
            *(v274[6] + 8 * v267) = v253;
            sub_213D1E884(v306, v274[7] + *(v318 + 72) * v267, type metadata accessor for UserAnnotationViewModel);
            v277 = v274[2];
            v141 = __OFADD__(v277, 1);
            v278 = v277 + 1;
            if (v141)
            {
              goto LABEL_135;
            }

            v274[2] = v278;
            goto LABEL_126;
          }

LABEL_122:
          sub_213D1EA60(v306, v274[7] + *(v318 + 72) * v267, type metadata accessor for UserAnnotationViewModel);

LABEL_126:
          v279 = v129[2];
          v129[2] = v274;

LABEL_99:
          v223 = (v223 + 1);
          v254(&aBlock, 0);

          v214 = v308;
          if (v320 == v223)
          {

            return v214;
          }
        }

        sub_213D1A4D8(v271, v265);
        v267 = sub_213CE23F4(v253);
        if ((v272 & 1) != (v273 & 1))
        {
          goto LABEL_140;
        }

LABEL_121:
        v274 = v324;
        if ((v272 & 1) == 0)
        {
          goto LABEL_124;
        }

        goto LABEL_122;
      }

      v220 = off_28263B050;
      v221 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v220(v219, v221, &off_28263B040);
    }

    v129 = v309;
    goto LABEL_95;
  }

  v286 = v19;
  v55 = *(v28 + 80);
  v56 = a2 + ((v55 + 32) & ~v55);
  v304 = (v28 + 56);
  v312 = *(v28 + 72);
  v285 = v55;
  v284 = (v55 + 64) & ~v55;
  v283 = (v28 + 48);
  v57 = MEMORY[0x277D84F90];
  v300 = MEMORY[0x277D84F90];
  v301 = MEMORY[0x277D84F90];
  v299 = v37;
  while (1)
  {
    sub_213D1E9F8(v56, v37, type metadata accessor for UserAnnotationViewModel);
    v61 = *v37;
    *&v327 = v322;
    v62 = v322;
    swift_getAtKeyPath();

    v63 = v331;
    if (!v331[2] || (v64 = sub_213CE22A8(v61), (v65 & 1) == 0))
    {

LABEL_22:
      v97 = [objc_allocWithZone(type metadata accessor for MapBridgingUserAnnotation()) init];
      v98 = *(v309 + 48);
      v99 = v319;
      *v319 = v97;
      sub_213D1E9F8(v37, v99 + v98, type metadata accessor for UserAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_213D70808(0, v57[2] + 1, 1, v57);
      }

      v101 = v57[2];
      v100 = v57[3];
      if (v101 >= v100 >> 1)
      {
        v57 = sub_213D70808(v100 > 1, v101 + 1, 1, v57);
      }

      sub_213D1F330(v37, type metadata accessor for UserAnnotationViewModel);
      v57[2] = v101 + 1;
      sub_213CED608(v319, v57 + ((*(v317 + 80) + 32) & ~*(v317 + 80)) + *(v317 + 72) * v101, &qword_27C8EB208, &unk_213D97260);
      goto LABEL_5;
    }

    v66 = *(v63[7] + 8 * v64);

    *&v327 = v62;
    v67 = v62;
    swift_getAtKeyPath();

    v68 = v330;
    if (!v330[2] || (v69 = sub_213CE23F4(v66), (v70 & 1) == 0))
    {

      v96 = v302;
      (*v304)(v302, 1, 1, v321);
      sub_213CD8330(v96, &qword_27C8EB680, &unk_213D97FF0);
      goto LABEL_22;
    }

    v296 = v67;
    v71 = v68[7] + v69 * v312;
    v303 = v66;
    v72 = v302;
    sub_213D1E9F8(v71, v302, type metadata accessor for UserAnnotationViewModel);

    v295 = *v304;
    v295(v72, 0, 1, v321);
    sub_213CD8330(v72, &qword_27C8EB680, &unk_213D97FF0);
    v331 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    v332 = &off_28263B040;
    v73 = v291;
    aBlock = v291;
    sub_213D1E22C(&aBlock, &v327);
    v74 = v37;
    v75 = v303;
    v76 = v288;
    sub_213D1E9F8(v74, v288, type metadata accessor for UserAnnotationViewModel);
    sub_213D1E22C(&v327, &v324);
    v77 = v298;
    sub_213D1E9F8(v76, v298, type metadata accessor for UserAnnotationViewModel);
    v78 = v284;
    v79 = swift_allocObject();
    sub_213D1E2DC(&v327, v79 + 16);
    *(v79 + 56) = v75;
    sub_213D1E884(v76, v79 + v78, type metadata accessor for UserAnnotationViewModel);
    v80 = v297;
    if (v297)
    {
      v81 = v75;
      v82 = v73;

      sub_213D1F330(v77, type metadata accessor for UserAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&v324);
      v83 = swift_allocObject();
      v83[2] = sub_213D1F5FC;
      v83[3] = v79;
      v83[4] = v80;
      v84 = swift_allocObject();
      *(v84 + 16) = sub_213D1F5FC;
      *(v84 + 24) = v79;

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v85 = swift_allocObject();
      *(v85 + 16) = sub_213D1F610;
      *(v85 + 24) = v83;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v300 = sub_213D6FE48(0, v300[2] + 1, 1, v300);
      }

      v87 = v300[2];
      v86 = v300[3];
      v88 = v303;
      if (v87 >= v86 >> 1)
      {
        v300 = sub_213D6FE48((v86 > 1), v87 + 1, 1, v300);
      }

      v89 = v300;
      v300[2] = v87 + 1;
      v90 = &v89[2 * v87];
      v90[4] = sub_213D1F608;
      v90[5] = v85;
      v91 = swift_allocObject();
      *(v91 + 16) = sub_213D1F584;
      *(v91 + 24) = v84;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v301 = sub_213D6FE48(0, v301[2] + 1, 1, v301);
      }

      v93 = v301[2];
      v92 = v301[3];
      if (v93 >= v92 >> 1)
      {
        v301 = sub_213D6FE48((v92 > 1), v93 + 1, 1, v301);
      }

      v94 = v301;
      v301[2] = v93 + 1;
      v95 = &v94[2 * v93];
      v95[4] = sub_213D1F608;
      v95[5] = v91;
      v292 = sub_213D1F610;
      v294 = sub_213D1F584;
    }

    else
    {
      v315 = v53;
      v308 = v57;
      v102 = v325;
      v103 = v326;
      __swift_project_boxed_opaque_existential_1(&v324, v325);
      v294 = *(v103 + 24);
      v104 = v75;
      v105 = v73;
      v106 = (v294)(v104, v102, v103);
      if (v106)
      {
        v107 = v106;
        type metadata accessor for SwiftUIAnnotationView();
        v108 = swift_dynamicCastClass();
        v53 = v315;
        v109 = v298;
        if (v108)
        {
          v110 = *(v298 + 24);
          v111 = *(v298 + 32);
          v112 = &v108[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
          *v112 = v110;
          v112[1] = v111;
          v113 = v108;
          [v108 frame];
          v116 = v113;
          v109 = v298;
          [v116 setCenterOffset_];
        }

        v57 = v308;
      }

      else
      {

        v57 = v308;
        v53 = v315;
        v109 = v298;
      }

      v88 = v303;
      sub_213D1F330(v109, type metadata accessor for UserAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&v324);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v294 = 0;
      v84 = 0;
      v292 = 0;
      v83 = 0;
    }

    v117 = sub_213CE23F4(v88);
    v293 = v83;
    v308 = v84;
    if (v118)
    {
      v119 = v117;
      v120 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v53;
      v121 = v290;
      if (!v120)
      {
        sub_213D1C790();
        v121 = v290;
        v53 = aBlock;
      }

      v122 = v286;
      sub_213D1E884(*(v53 + 7) + v119 * v312, v286, type metadata accessor for UserAnnotationViewModel);
      sub_213D1B698(v119, v53, type metadata accessor for UserAnnotationViewModel);
      v123 = 0;
    }

    else
    {
      v123 = 1;
      v121 = v290;
      v122 = v286;
    }

    v124 = v321;
    v125 = v295;
    v295(v122, v123, 1, v321);
    sub_213CD8330(v122, &qword_27C8EB680, &unk_213D97FF0);
    sub_213D1E9F8(v299, v121, type metadata accessor for UserAnnotationViewModel);
    v125(v121, 0, 1, v124);
    *&v327 = v296;
    v126 = v296;
    v315 = v303;
    v127 = swift_modifyAtReferenceWritableKeyPath();
    v129 = v128;
    v130 = (*v283)(v121, 1, v124);
    v303 = v127;
    if (v130 != 1)
    {
      break;
    }

    sub_213CD8330(v121, &qword_27C8EB680, &unk_213D97FF0);
    v58 = v282;
    v59 = v315;
    sub_213D18B10(v315, v282);

    sub_213CD8330(v58, &qword_27C8EB680, &unk_213D97FF0);
    v37 = v299;
LABEL_4:
    v60 = v292;
    (v303)(&aBlock, 0);

    sub_213CCE520(v294);
    sub_213CCE520(v60);

    sub_213D1F330(v37, type metadata accessor for UserAnnotationViewModel);
LABEL_5:
    v56 += v312;
    if (!--v54)
    {
      goto LABEL_51;
    }
  }

  sub_213D1E884(v121, v287, type metadata accessor for UserAnnotationViewModel);
  v131 = v129[2];
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v315;
  v134 = v132;
  v324 = v129[2];
  v135 = v324;
  v129[2] = 0x8000000000000000;
  v136 = v133;
  v137 = sub_213CE23F4(v133);
  v139 = *(v135 + 16);
  v140 = (v138 & 1) == 0;
  v141 = __OFADD__(v139, v140);
  v142 = v139 + v140;
  if (v141)
  {
    goto LABEL_136;
  }

  v143 = v138;
  v144 = *(v135 + 24);
  v296 = v129;
  if (v144 >= v142)
  {
    v37 = v299;
    if ((v134 & 1) == 0)
    {
      v150 = v137;
      sub_213D1C790();
      v137 = v150;
    }

    v59 = v136;
    v146 = v324;
    if ((v143 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_48:
    sub_213D1EA60(v287, v146[7] + v137 * v312, type metadata accessor for UserAnnotationViewModel);

    goto LABEL_49;
  }

  sub_213D1A4D8(v142, v134);
  v59 = v136;
  v137 = sub_213CE23F4(v136);
  v37 = v299;
  if ((v143 & 1) != (v145 & 1))
  {
    goto LABEL_140;
  }

  v146 = v324;
  if (v143)
  {
    goto LABEL_48;
  }

LABEL_43:
  v146[(v137 >> 6) + 8] |= 1 << v137;
  *(v146[6] + 8 * v137) = v59;
  sub_213D1E884(v287, v146[7] + v137 * v312, type metadata accessor for UserAnnotationViewModel);
  v147 = v146[2];
  v141 = __OFADD__(v147, 1);
  v148 = v147 + 1;
  if (!v141)
  {
    v146[2] = v148;
LABEL_49:
    v149 = v296[2];
    v296[2] = v146;

    goto LABEL_4;
  }

  __break(1u);
LABEL_139:
  sub_213D91F8C();
  __break(1u);
LABEL_140:
  type metadata accessor for MapBridgingUserAnnotation();
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D10738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v315 = a4;
  v310 = a1;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAA0, &unk_213D972B0);
  v333 = *(v326 - 8);
  v8 = *(v333 + 64);
  MEMORY[0x28223BE20](v326);
  v10 = &v300 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v332 = (&v300 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB260, qword_213D985C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v300 = &v300 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v308 = &v300 - v17;
  MEMORY[0x28223BE20](v18);
  v309 = &v300 - v19;
  MEMORY[0x28223BE20](v20);
  v320 = &v300 - v21;
  MEMORY[0x28223BE20](v22);
  v322 = &v300 - v23;
  MEMORY[0x28223BE20](v24);
  v324 = &v300 - v25;
  MEMORY[0x28223BE20](v26);
  v329 = &v300 - v27;
  v340 = type metadata accessor for MarkerAnnotationViewModel(0);
  v28 = *(v340 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v340);
  v305 = &v300 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v307 = &v300 - v31;
  MEMORY[0x28223BE20](v32);
  v306 = &v300 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v300 - v35;
  MEMORY[0x28223BE20](v37);
  v323 = &v300 - v38;
  MEMORY[0x28223BE20](v39);
  v338 = (&v300 - v40);
  MEMORY[0x28223BE20](v41);
  v328 = &v300 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB268, &qword_213D972C0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = (&v300 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v47);
  v330 = (&v300 - v48);
  *&v346 = v5;
  v49 = v5;
  v342 = a5;
  v50 = swift_readAtKeyPath();
  v331 = *(v51 + 16);

  v50(&aBlock, 0);
  v341 = v49;

  v52 = *(a2 + 16);
  v339 = v28;
  v335 = v46;
  if (!v52)
  {
    v56 = MEMORY[0x277D84F90];
    v317 = MEMORY[0x277D84F90];
    v318 = MEMORY[0x277D84F90];
LABEL_61:
    v337 = v56;
    if (v315)
    {
      v162 = objc_opt_self();
      v163 = swift_allocObject();
      *(v163 + 16) = v317;
      v351 = sub_213D1F590;
      v352 = v163;
      aBlock = MEMORY[0x277D85DD0];
      v348 = 1107296256;
      v349 = sub_213CFF278;
      v350 = &block_descriptor_435;
      v164 = _Block_copy(&aBlock);

      v165 = swift_allocObject();
      *(v165 + 16) = v318;
      v351 = sub_213D1F60C;
      v352 = v165;
      aBlock = MEMORY[0x277D85DD0];
      v348 = 1107296256;
      v349 = sub_213D183BC;
      v350 = &block_descriptor_442;
      v166 = _Block_copy(&aBlock);

      [v162 animateWithDuration:v164 animations:v166 completion:0.25];
      _Block_release(v166);
      _Block_release(v164);
    }

    v167 = v331 + 64;
    v168 = 1 << *(v331 + 32);
    v169 = -1;
    if (v168 < 64)
    {
      v169 = ~(-1 << v168);
    }

    v170 = v169 & *(v331 + 64);
    v171 = (v168 + 63) >> 6;
    v336 = (v339 + 56);

    v172 = 0;
    while (1)
    {
      if (v170)
      {
        v175 = v172;
        v176 = v339;
        goto LABEL_78;
      }

      v177 = v171 <= v172 + 1 ? v172 + 1 : v171;
      v178 = v177 - 1;
      v176 = v339;
      do
      {
        v175 = v172 + 1;
        if (__OFADD__(v172, 1))
        {
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v175 >= v171)
        {
          v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB270, &qword_213D972C8);
          (*(*(v217 - 8) + 56))(v46, 1, 1, v217);
          v170 = 0;
          v172 = v178;
          goto LABEL_79;
        }

        v170 = *(v167 + 8 * v175);
        ++v172;
      }

      while (!v170);
      v172 = v175;
LABEL_78:
      v179 = __clz(__rbit64(v170));
      v170 &= v170 - 1;
      v180 = v179 | (v175 << 6);
      v181 = *(*(v331 + 48) + 8 * v180);
      v182 = v328;
      sub_213D1E9F8(*(v331 + 56) + *(v176 + 72) * v180, v328, type metadata accessor for MarkerAnnotationViewModel);
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB270, &qword_213D972C8);
      v184 = *(v183 + 48);
      *v46 = v181;
      sub_213D1E884(v182, v46 + v184, type metadata accessor for MarkerAnnotationViewModel);
      (*(*(v183 - 8) + 56))(v46, 0, 1, v183);
      v185 = v181;
LABEL_79:
      v186 = v330;
      sub_213CED608(v46, v330, &qword_27C8EB268, &qword_213D972C0);
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB270, &qword_213D972C8);
      if ((*(*(v187 - 8) + 48))(v186, 1, v187) == 1)
      {
        break;
      }

      v188 = *v186;
      v189 = v186 + *(v187 + 48);
      v190 = v338;
      sub_213D1E884(v189, v338, type metadata accessor for MarkerAnnotationViewModel);
      v191 = *v190;
      *&v346 = v341;
      v192 = v341;
      v193 = swift_modifyAtReferenceWritableKeyPath();
      v195 = v194;
      v196 = *(v194 + 24);
      v197 = sub_213CE22A8(v191);
      if (v198)
      {
        v199 = v197;
        v200 = *(v195 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v202 = *(v195 + 24);
        v343 = v202;
        *(v195 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB278, &qword_213D972D0);
          v202 = v343;
        }

        v203 = *(*(v202 + 48) + 8 * v199);

        sub_213D1B868(v199, v202);
        v204 = *(v195 + 24);
        *(v195 + 24) = v202;
      }

      v193(&aBlock, 0);

      *&v346 = v192;
      v205 = v192;
      v206 = swift_modifyAtReferenceWritableKeyPath();
      v208 = v207;
      v209 = *(v207 + 16);
      v210 = sub_213CE2448(v188);
      if (v211)
      {
        v212 = v210;
        v213 = *(v208 + 16);
        v214 = swift_isUniquelyReferenced_nonNull_native();
        v215 = *(v208 + 16);
        v343 = v215;
        *(v208 + 16) = 0x8000000000000000;
        v174 = v329;
        if (!v214)
        {
          sub_213D1C9C8();
          v215 = v343;
        }

        sub_213D1E884(*(v215 + 56) + *(v339 + 72) * v212, v174, type metadata accessor for MarkerAnnotationViewModel);
        sub_213D1B698(v212, v215, type metadata accessor for MarkerAnnotationViewModel);
        v216 = *(v208 + 16);
        *(v208 + 16) = v215;

        v173 = 0;
      }

      else
      {
        v173 = 1;
        v174 = v329;
      }

      (*v336)(v174, v173, 1, v340);
      sub_213CD8330(v174, &qword_27C8EB260, qword_213D985C0);
      v206(&aBlock, 0);

      sub_213D1F330(v338, type metadata accessor for MarkerAnnotationViewModel);
      v46 = v335;
    }

    v218 = v331;

    aBlock = MEMORY[0x277D84F90];
    v219 = 1 << *(v218 + 32);
    v220 = -1;
    if (v219 < 64)
    {
      v220 = ~(-1 << v219);
    }

    v221 = v220 & *(v218 + 64);
    v222 = (v219 + 63) >> 6;

    v223 = 0;
    if (v221)
    {
      while (1)
      {
        v224 = v223;
LABEL_97:
        v225 = __clz(__rbit64(v221));
        v221 &= v221 - 1;
        v226 = *(*(v331 + 48) + ((v224 << 9) | (8 * v225)));
        sub_213D91DEC();
        v227 = *(aBlock + 16);
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
        if (!v221)
        {
          goto LABEL_93;
        }
      }
    }

    while (1)
    {
LABEL_93:
      v224 = v223 + 1;
      if (__OFADD__(v223, 1))
      {
        goto LABEL_142;
      }

      if (v224 >= v222)
      {
        break;
      }

      v221 = *(v167 + 8 * v224);
      ++v223;
      if (v221)
      {
        v223 = v224;
        goto LABEL_97;
      }
    }

    v228 = aBlock;
    if (aBlock < 0 || (aBlock & 0x4000000000000000) != 0)
    {
      goto LABEL_149;
    }

    sub_213D91F6C();
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
    v229 = v228;
    while (1)
    {
      v230 = v337;

      aBlock = v310;
      v231 = sub_213D17C74(v229, &protocolRef_MKOverlay);
      if (v231)
      {
        v232 = v231;

        v233 = off_28263B068;
        v234 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        v233(v232, v234, &off_28263B040);
      }

      else
      {
        v235 = sub_213D17C74(v229, &protocolRef_MKAnnotation);

        if (!v235)
        {
          goto LABEL_107;
        }

        v236 = off_28263B050;
        v237 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        v236(v235, v237, &off_28263B040);
      }

LABEL_107:
      v335 = v230[2];
      if (!v335)
      {
        return v230;
      }

      v238 = *(v326 + 48);
      v334 = v230 + ((*(v333 + 80) + 32) & ~*(v333 + 80));
      v331 = v339 + 48;

      v239 = 0;
      while (v239 < v230[2])
      {
        v242 = *(v333 + 72);
        v338 = v239;
        v243 = v332;
        sub_213CE2C28(v334 + v242 * v239, v332, &unk_27C8EBAA0, &unk_213D972B0);
        v244 = *v243;
        v245 = v238;
        v246 = *(v243 + v238);
        *&v346 = v341;
        v247 = v341;

        v248 = v244;
        v249 = swift_modifyAtReferenceWritableKeyPath();
        v251 = v250;
        v252 = *(v250 + 24);
        v253 = swift_isUniquelyReferenced_nonNull_native();
        v343 = *(v251 + 24);
        v254 = v343;
        *(v251 + 24) = 0x8000000000000000;
        v256 = sub_213CE22A8(v246);
        v257 = *(v254 + 16);
        v258 = (v255 & 1) == 0;
        v259 = v257 + v258;
        if (__OFADD__(v257, v258))
        {
          goto LABEL_144;
        }

        v260 = v255;
        if (*(v254 + 24) >= v259)
        {
          if ((v253 & 1) == 0)
          {
            sub_213D1CE38(&qword_27C8EB278, &qword_213D972D0);
          }
        }

        else
        {
          sub_213D1AEB0(v259, v253, &qword_27C8EB278, &qword_213D972D0);
          v261 = sub_213CE22A8(v246);
          if ((v260 & 1) != (v262 & 1))
          {
            goto LABEL_151;
          }

          v256 = v261;
        }

        v263 = v343;
        if (v260)
        {
          v264 = v343[7];
          v265 = *(v264 + 8 * v256);
          *(v264 + 8 * v256) = v248;
        }

        else
        {
          v343[(v256 >> 6) + 8] |= 1 << v256;
          *(v263[6] + 8 * v256) = v246;
          *(v263[7] + 8 * v256) = v248;
          v266 = v263[2];
          v153 = __OFADD__(v266, 1);
          v267 = v266 + 1;
          if (v153)
          {
            goto LABEL_145;
          }

          v263[2] = v267;
        }

        *(v251 + 24) = v263;
        v249(&aBlock, 0);

        v238 = v245;
        v268 = v324;
        sub_213D1E884(v332 + v245, v324, type metadata accessor for MarkerAnnotationViewModel);
        v269 = *v336;
        v270 = v340;
        (*v336)(v268, 0, 1, v340);
        *&v346 = v247;
        v271 = v247;
        v272 = v248;
        v273 = swift_modifyAtReferenceWritableKeyPath();
        v275 = v274;
        if ((*v331)(v268, 1, v270) == 1)
        {
          sub_213CD8330(v268, &qword_27C8EB260, qword_213D985C0);
          v276 = *(v275 + 16);
          v277 = sub_213CE2448(v272);
          if (v278)
          {
            v279 = v277;
            v280 = *(v275 + 16);
            v281 = swift_isUniquelyReferenced_nonNull_native();
            v282 = *(v275 + 16);
            v343 = v282;
            *(v275 + 16) = 0x8000000000000000;
            if (!v281)
            {
              sub_213D1C9C8();
              v282 = v343;
            }

            v241 = v322;
            sub_213D1E884(*(v282 + 56) + *(v339 + 72) * v279, v322, type metadata accessor for MarkerAnnotationViewModel);
            sub_213D1B698(v279, v282, type metadata accessor for MarkerAnnotationViewModel);

            v283 = *(v275 + 16);
            *(v275 + 16) = v282;

            v240 = 0;
          }

          else
          {

            v240 = 1;
            v241 = v322;
          }

          v269(v241, v240, 1, v340);
          sub_213CD8330(v241, &qword_27C8EB260, qword_213D985C0);
        }

        else
        {
          sub_213D1E884(v268, v323, type metadata accessor for MarkerAnnotationViewModel);
          v284 = *(v275 + 16);
          v285 = swift_isUniquelyReferenced_nonNull_native();
          v343 = *(v275 + 16);
          v286 = v343;
          *(v275 + 16) = 0x8000000000000000;
          v287 = sub_213CE2448(v272);
          v289 = *(v286 + 16);
          v290 = (v288 & 1) == 0;
          v153 = __OFADD__(v289, v290);
          v291 = v289 + v290;
          if (v153)
          {
            goto LABEL_146;
          }

          v292 = v288;
          if (*(v286 + 24) >= v291)
          {
            if ((v285 & 1) == 0)
            {
              v298 = v287;
              sub_213D1C9C8();
              v287 = v298;
            }
          }

          else
          {
            sub_213D1A820(v291, v285);
            v287 = sub_213CE2448(v272);
            if ((v292 & 1) != (v293 & 1))
            {
              goto LABEL_152;
            }
          }

          v294 = v343;
          if (v292)
          {
            sub_213D1EA60(v323, v343[7] + *(v339 + 72) * v287, type metadata accessor for MarkerAnnotationViewModel);
          }

          else
          {
            v343[(v287 >> 6) + 8] |= 1 << v287;
            *(v294[6] + 8 * v287) = v272;
            sub_213D1E884(v323, v294[7] + *(v339 + 72) * v287, type metadata accessor for MarkerAnnotationViewModel);
            v295 = v294[2];
            v153 = __OFADD__(v295, 1);
            v296 = v295 + 1;
            if (v153)
            {
              goto LABEL_147;
            }

            v294[2] = v296;
          }

          v297 = *(v275 + 16);
          *(v275 + 16) = v294;
        }

        v239 = v338 + 1;
        v273(&aBlock, 0);

        v230 = v337;
        if (v335 == v239)
        {

          return v230;
        }
      }

LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

      v229 = sub_213D91EAC();
    }
  }

  v53 = v52;
  v54 = *(v28 + 80);
  v55 = a2 + ((v54 + 32) & ~v54);
  v321 = (v28 + 56);
  v304 = v54;
  v303 = (v54 + 24) & ~v54;
  v302 = (v29 + v303 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = MEMORY[0x277D84F90];
  v301 = (v28 + 48);
  v327 = *(v28 + 72);
  v317 = MEMORY[0x277D84F90];
  v318 = MEMORY[0x277D84F90];
  v325 = v10;
  v57 = v53;
  while (1)
  {
    v336 = v55;
    sub_213D1E9F8(v55, v36, type metadata accessor for MarkerAnnotationViewModel);
    v61 = *v36;
    *&v346 = v341;
    v62 = v341;
    swift_getAtKeyPath();

    v63 = v350;
    v64 = v350[2];
    v337 = v56;
    v334 = v57;
    if (!v64 || (v65 = sub_213CE22A8(v61), (v66 & 1) == 0))
    {

LABEL_18:
      v87 = *(v36 + 1);
      v86 = *(v36 + 2);
      v89 = *(v36 + 3);
      v88 = *(v36 + 4);
      v90 = *(v36 + 11);
      v91 = *(v36 + 12);
      v92 = *(v36 + 5);
      v93 = v36[48];
      v94 = type metadata accessor for MapBridgingMarker();
      v95 = objc_allocWithZone(v94);
      v96 = &v95[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_title];
      *v96 = 0;
      v96[1] = 0;
      v97 = &v95[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_subtitle];
      *v97 = 0;
      v97[1] = 0;
      v98 = OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem;
      *&v95[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem] = 0;
      v99 = OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature;
      v95[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature] = 0;
      *v96 = v87;
      v96[1] = v86;
      *v97 = v89;
      v97[1] = v88;
      v100 = &v95[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_coordinate];
      *v100 = v90;
      v100[1] = v91;
      v101 = *&v95[v98];
      *&v95[v98] = v92;

      v102 = v92;

      v95[v99] = v93;
      v353.receiver = v95;
      v353.super_class = v94;
      v103 = objc_msgSendSuper2(&v353, sel_init);
      v104 = *(v326 + 48);
      v105 = v325;
      *v325 = v103;
      sub_213D1E9F8(v36, v105 + v104, type metadata accessor for MarkerAnnotationViewModel);
      v56 = v337;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_213D7082C(0, v56[2] + 1, 1, v56);
      }

      v60 = v336;
      v107 = v56[2];
      v106 = v56[3];
      v46 = v335;
      v57 = v334;
      if (v107 >= v106 >> 1)
      {
        v56 = sub_213D7082C(v106 > 1, v107 + 1, 1, v56);
      }

      sub_213D1F330(v36, type metadata accessor for MarkerAnnotationViewModel);
      v56[2] = v107 + 1;
      sub_213CED608(v105, v56 + ((*(v333 + 80) + 32) & ~*(v333 + 80)) + *(v333 + 72) * v107, &unk_27C8EBAA0, &unk_213D972B0);
      goto LABEL_5;
    }

    v67 = *(v63[7] + 8 * v65);

    *&v346 = v62;
    v68 = v62;
    swift_getAtKeyPath();

    v69 = v349;
    if (!v349[2] || (v70 = sub_213CE2448(v67), (v71 & 1) == 0))
    {

      v85 = v320;
      (*v321)(v320, 1, 1, v340);
      sub_213CD8330(v85, &qword_27C8EB260, qword_213D985C0);
      goto LABEL_18;
    }

    v314 = v68;
    v72 = v320;
    sub_213D1E9F8(v69[7] + v70 * v327, v320, type metadata accessor for MarkerAnnotationViewModel);

    v313 = *v321;
    v313(v72, 0, 1, v340);
    sub_213CD8330(v72, &qword_27C8EB260, qword_213D985C0);
    v350 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    v351 = &off_28263B040;
    v73 = v310;
    aBlock = v310;
    v74 = v306;
    sub_213D1E9F8(v36, v306, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1E22C(&aBlock, &v346);
    v75 = v307;
    sub_213D1E9F8(v74, v307, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1E22C(&v346, &v343);
    v76 = v302;
    v77 = swift_allocObject();
    *(v77 + 16) = v67;
    sub_213D1E884(v74, v77 + v303, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1E2DC(&v346, v77 + v76);
    v78 = v67;
    v79 = v73;
    v80 = v315;
    if (!v315)
    {
      goto LABEL_14;
    }

    [v78 coordinate];
    if (vabdd_f64(v82, *(v36 + 11)) < 0.00000000999999994 && vabdd_f64(v81, *(v36 + 12)) < 0.00000000999999994)
    {

LABEL_14:
      [v78 setCoordinate_];
      if (*(v75 + 16))
      {
        v83 = *(v75 + 8);
        v84 = sub_213D9190C();
      }

      else
      {
        v84 = 0;
      }

      [v78 setTitle_];

      if (*(v75 + 32))
      {
        v122 = *(v75 + 24);
        v123 = sub_213D9190C();
      }

      else
      {
        v123 = 0;
      }

      [v78 setSubtitle_];

      v124 = v344;
      v125 = v345;
      __swift_project_boxed_opaque_existential_1(&v343, v344);
      v126 = (*(v125 + 24))(v78, v124, v125);
      if (v126)
      {
        v127 = v126;
        objc_opt_self();
        v128 = swift_dynamicCastObjCClass();
        if (!v128)
        {

          goto LABEL_41;
        }

        sub_213D2797C(v128, 0);
      }

LABEL_41:
      __swift_destroy_boxed_opaque_existential_1(&v343);
      sub_213D1F330(v75, type metadata accessor for MarkerAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v312 = 0;
      v319 = 0;
      v311 = 0;
      v316 = 0;
      v112 = v309;
      goto LABEL_42;
    }

    __swift_destroy_boxed_opaque_existential_1(&v343);
    sub_213D1F330(v75, type metadata accessor for MarkerAnnotationViewModel);
    v108 = swift_allocObject();
    v108[2] = sub_213D1F600;
    v108[3] = v77;
    v108[4] = v80;
    v109 = swift_allocObject();
    *(v109 + 16) = sub_213D1F600;
    *(v109 + 24) = v77;
    v319 = v109;

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v110 = swift_allocObject();
    *(v110 + 16) = sub_213D1F610;
    *(v110 + 24) = v108;
    v316 = v108;
    swift_retain_n();
    v111 = v78;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v317 = sub_213D6FE48(0, v317[2] + 1, 1, v317);
    }

    v112 = v309;
    v114 = v317[2];
    v113 = v317[3];
    if (v114 >= v113 >> 1)
    {
      v317 = sub_213D6FE48((v113 > 1), v114 + 1, 1, v317);
    }

    v115 = v317;
    v317[2] = v114 + 1;
    v116 = &v115[2 * v114];
    v116[4] = sub_213D1F608;
    v116[5] = v110;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_213D1F584;
    *(v117 + 24) = v319;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v318 = sub_213D6FE48(0, v318[2] + 1, 1, v318);
    }

    v119 = v318[2];
    v118 = v318[3];
    if (v119 >= v118 >> 1)
    {
      v318 = sub_213D6FE48((v118 > 1), v119 + 1, 1, v318);
    }

    v120 = v318;
    v318[2] = v119 + 1;
    v121 = &v120[2 * v119];
    v121[4] = sub_213D1F608;
    v121[5] = v117;
    v311 = sub_213D1F610;
    v312 = sub_213D1F584;
    v78 = v111;
LABEL_42:
    v129 = v331;
    v130 = sub_213CE2448(v78);
    if (v131)
    {
      v132 = v130;
      v133 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v129;
      if (!v133)
      {
        sub_213D1C9C8();
        v129 = aBlock;
      }

      v134 = v78;

      sub_213D1E884(*(v129 + 56) + v132 * v327, v112, type metadata accessor for MarkerAnnotationViewModel);
      v331 = v129;
      sub_213D1B698(v132, v129, type metadata accessor for MarkerAnnotationViewModel);
      v135 = 0;
    }

    else
    {
      v134 = v78;
      v135 = 1;
    }

    v136 = v340;
    v137 = v313;
    v313(v112, v135, 1, v340);
    sub_213CD8330(v112, &qword_27C8EB260, qword_213D985C0);
    v138 = v308;
    sub_213D1E9F8(v36, v308, type metadata accessor for MarkerAnnotationViewModel);
    v137(v138, 0, 1, v136);
    *&v346 = v314;
    v139 = v314;
    v140 = v134;
    v314 = swift_modifyAtReferenceWritableKeyPath();
    v142 = v141;
    if ((*v301)(v138, 1, v136) != 1)
    {
      break;
    }

    sub_213CD8330(v138, &qword_27C8EB260, qword_213D985C0);
    v58 = v300;
    sub_213D18C8C(v140, v300);

    sub_213CD8330(v58, &qword_27C8EB260, qword_213D985C0);
LABEL_4:
    v59 = v311;
    (v314)(&aBlock, 0);
    sub_213CCE520(v312);
    sub_213CCE520(v59);

    sub_213D1F330(v36, type metadata accessor for MarkerAnnotationViewModel);
    v60 = v336;
LABEL_5:
    v55 = v60 + v327;
    if (!--v57)
    {
      goto LABEL_61;
    }
  }

  sub_213D1E884(v138, v305, type metadata accessor for MarkerAnnotationViewModel);
  v143 = *(v142 + 16);
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v145 = v140;
  v146 = v144;
  v343 = *(v142 + 16);
  v147 = v343;
  *(v142 + 16) = 0x8000000000000000;
  v148 = v145;
  v149 = sub_213CE2448(v145);
  v151 = *(v147 + 16);
  v152 = (v150 & 1) == 0;
  v153 = __OFADD__(v151, v152);
  v154 = v151 + v152;
  if (v153)
  {
    goto LABEL_148;
  }

  v155 = v150;
  if (*(v147 + 24) >= v154)
  {
    if ((v146 & 1) == 0)
    {
      v161 = v149;
      sub_213D1C9C8();
      v149 = v161;
    }

    v140 = v148;
  }

  else
  {
    sub_213D1A820(v154, v146);
    v140 = v148;
    v149 = sub_213CE2448(v148);
    if ((v155 & 1) != (v156 & 1))
    {
      goto LABEL_152;
    }
  }

  v157 = v343;
  if (v155)
  {
    sub_213D1EA60(v305, v343[7] + v149 * v327, type metadata accessor for MarkerAnnotationViewModel);

LABEL_59:
    v160 = *(v142 + 16);
    *(v142 + 16) = v157;

    goto LABEL_4;
  }

  v343[(v149 >> 6) + 8] |= 1 << v149;
  *(v157[6] + 8 * v149) = v140;
  sub_213D1E884(v305, v157[7] + v149 * v327, type metadata accessor for MarkerAnnotationViewModel);
  v158 = v157[2];
  v153 = __OFADD__(v158, 1);
  v159 = v158 + 1;
  if (!v153)
  {
    v157[2] = v159;
    goto LABEL_59;
  }

  __break(1u);
LABEL_151:
  sub_213D91F8C();
  __break(1u);
LABEL_152:
  type metadata accessor for MapBridgingMarker();
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D12848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v321 = a4;
  v315 = a1;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB288, &unk_213D972E0);
  v339 = *(v332 - 8);
  v8 = *(v339 + 64);
  MEMORY[0x28223BE20](v332);
  i = (&v305 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v338 = (&v305 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB290, &qword_213D98000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v306 = &v305 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v313 = &v305 - v16;
  MEMORY[0x28223BE20](v17);
  v314 = &v305 - v18;
  MEMORY[0x28223BE20](v19);
  v327 = &v305 - v20;
  MEMORY[0x28223BE20](v21);
  v329 = &v305 - v22;
  MEMORY[0x28223BE20](v23);
  v331 = &v305 - v24;
  MEMORY[0x28223BE20](v25);
  v335 = &v305 - v26;
  v344 = type metadata accessor for CustomAnnotationViewModel(0);
  v27 = *(v344 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v344);
  v311 = &v305 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v326 = &v305 - v30;
  MEMORY[0x28223BE20](v31);
  v312 = &v305 - v32;
  MEMORY[0x28223BE20](v33);
  v347 = (&v305 - v34);
  MEMORY[0x28223BE20](v35);
  v330 = &v305 - v36;
  MEMORY[0x28223BE20](v37);
  v343 = (&v305 - v38);
  MEMORY[0x28223BE20](v39);
  v334 = &v305 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB298, &qword_213D972F0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v305 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v336 = (&v305 - v46);
  *&v351 = v5;
  v47 = v5;
  v346 = a5;
  v48 = swift_readAtKeyPath();
  v337 = *(v49 + 16);

  v48(&aBlock, 0);
  v345 = v47;

  v50 = *(a2 + 16);
  v341 = v27;
  v342 = v44;
  if (!v50)
  {
    v53 = MEMORY[0x277D84F90];
    v322 = MEMORY[0x277D84F90];
    v323 = MEMORY[0x277D84F90];
LABEL_60:
    v158 = v44;
    v333 = v53;
    if (v321)
    {
      v159 = objc_opt_self();
      v160 = swift_allocObject();
      *(v160 + 16) = v322;
      v356 = sub_213D1F590;
      v357 = v160;
      aBlock = MEMORY[0x277D85DD0];
      v353 = 1107296256;
      v354 = sub_213CFF278;
      v355 = &block_descriptor_469;
      v161 = _Block_copy(&aBlock);

      v162 = swift_allocObject();
      *(v162 + 16) = v323;
      v356 = sub_213D1F60C;
      v357 = v162;
      aBlock = MEMORY[0x277D85DD0];
      v353 = 1107296256;
      v354 = sub_213D183BC;
      v355 = &block_descriptor_476;
      v163 = _Block_copy(&aBlock);

      [v159 animateWithDuration:v161 animations:v163 completion:0.25];
      _Block_release(v163);
      _Block_release(v161);
    }

    v164 = (v337 + 64);
    v165 = 1 << *(v337 + 32);
    v166 = -1;
    if (v165 < 64)
    {
      v166 = ~(-1 << v165);
    }

    v167 = v166 & *(v337 + 64);
    v168 = (v165 + 63) >> 6;
    v169 = v341;
    v347 = (v341 + 56);

    v170 = 0;
    for (i = v164; ; v164 = i)
    {
      if (v167)
      {
        v175 = v170;
        goto LABEL_77;
      }

      v176 = v168 <= v170 + 1 ? v170 + 1 : v168;
      v177 = v176 - 1;
      v178 = v158;
      do
      {
        v175 = v170 + 1;
        if (__OFADD__(v170, 1))
        {
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v175 >= v168)
        {
          v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2A0, &qword_213D972F8);
          (*(*(v220 - 8) + 56))(v158, 1, 1, v220);
          v167 = 0;
          v170 = v177;
          goto LABEL_78;
        }

        v167 = v164[v175];
        ++v170;
      }

      while (!v167);
      v170 = v175;
LABEL_77:
      v179 = __clz(__rbit64(v167));
      v167 &= v167 - 1;
      v180 = v179 | (v175 << 6);
      v181 = *(*(v337 + 48) + 8 * v180);
      v182 = v334;
      sub_213D1E9F8(*(v337 + 56) + *(v169 + 72) * v180, v334, type metadata accessor for CustomAnnotationViewModel);
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2A0, &qword_213D972F8);
      v184 = *(v183 + 48);
      *v158 = v181;
      v185 = v182;
      v178 = v158;
      sub_213D1E884(v185, &v158[v184], type metadata accessor for CustomAnnotationViewModel);
      (*(*(v183 - 8) + 56))(v158, 0, 1, v183);
      v186 = v181;
LABEL_78:
      v187 = v336;
      sub_213CED608(v178, v336, &qword_27C8EB298, &qword_213D972F0);
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2A0, &qword_213D972F8);
      if ((*(*(v188 - 8) + 48))(v187, 1, v188) == 1)
      {
        break;
      }

      v189 = *v187;
      v190 = v187 + *(v188 + 48);
      v191 = v343;
      sub_213D1E884(v190, v343, type metadata accessor for CustomAnnotationViewModel);
      v192 = *v191;
      *&v351 = v345;
      v193 = v345;
      v194 = swift_modifyAtReferenceWritableKeyPath();
      v196 = v195;
      v197 = *(v195 + 24);
      v198 = sub_213CE22A8(v192);
      if (v199)
      {
        v200 = v198;
        v201 = *(v196 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v203 = *(v196 + 24);
        v348 = v203;
        *(v196 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_213D1CE38(&qword_27C8EB2A8, &qword_213D97300);
          v203 = v348;
        }

        v204 = *(*(v203 + 48) + 8 * v200);

        sub_213D1B868(v200, v203);
        v205 = *(v196 + 24);
        *(v196 + 24) = v203;
      }

      v194(&aBlock, 0);

      *&v351 = v193;
      v206 = v193;
      v207 = swift_modifyAtReferenceWritableKeyPath();
      v209 = v208;
      v210 = *(v208 + 16);
      v211 = sub_213CE249C(v189);
      v212 = v341;
      if (v213)
      {
        v214 = v211;
        v171 = v189;
        v215 = *(v209 + 16);
        v216 = swift_isUniquelyReferenced_nonNull_native();
        v217 = *(v209 + 16);
        v348 = v217;
        *(v209 + 16) = 0x8000000000000000;
        if (!v216)
        {
          sub_213D1CC00();
          v217 = v348;
        }

        v172 = v212;
        v218 = *(v217 + 56) + *(v212 + 72) * v214;
        v174 = v335;
        sub_213D1E884(v218, v335, type metadata accessor for CustomAnnotationViewModel);
        sub_213D1B698(v214, v217, type metadata accessor for CustomAnnotationViewModel);
        v219 = *(v209 + 16);
        *(v209 + 16) = v217;

        v173 = 0;
      }

      else
      {
        v171 = v189;
        v172 = v341;
        v173 = 1;
        v174 = v335;
      }

      (*v347)(v174, v173, 1, v344);
      sub_213CD8330(v174, &qword_27C8EB290, &qword_213D98000);
      v207(&aBlock, 0);

      sub_213D1F330(v343, type metadata accessor for CustomAnnotationViewModel);
      v158 = v342;
      v169 = v172;
    }

    v221 = v337;

    aBlock = MEMORY[0x277D84F90];
    v222 = 1 << *(v221 + 32);
    v223 = -1;
    if (v222 < 64)
    {
      v223 = ~(-1 << v222);
    }

    v224 = v223 & *(v221 + 64);
    v225 = (v222 + 63) >> 6;

    v226 = 0;
    if (v224)
    {
LABEL_91:
      v227 = v226;
      v228 = v337;
      goto LABEL_97;
    }

LABEL_92:
    v228 = v337;
    while (1)
    {
      v227 = v226 + 1;
      if (__OFADD__(v226, 1))
      {
        goto LABEL_142;
      }

      if (v227 >= v225)
      {
        break;
      }

      v224 = v164[v227];
      ++v226;
      if (v224)
      {
        v226 = v227;
LABEL_97:
        v229 = __clz(__rbit64(v224));
        v224 &= v224 - 1;
        v230 = *(*(v228 + 48) + ((v227 << 9) | (8 * v229)));
        sub_213D91DEC();
        v231 = *(aBlock + 16);
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
        if (v224)
        {
          goto LABEL_91;
        }

        goto LABEL_92;
      }
    }

    v232 = aBlock;
    if (aBlock < 0 || (aBlock & 0x4000000000000000) != 0)
    {
      goto LABEL_149;
    }

    sub_213D91F6C();
    sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
    v233 = v232;
    while (1)
    {
      v234 = v333;

      aBlock = v315;
      v235 = sub_213D17C74(v233, &protocolRef_MKOverlay);
      if (v235)
      {
        v236 = v235;

        v237 = off_28263B068;
        v238 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        v237(v236, v238, &off_28263B040);
      }

      else
      {
        v239 = sub_213D17C74(v233, &protocolRef_MKAnnotation);

        if (!v239)
        {
          goto LABEL_107;
        }

        v240 = off_28263B050;
        v241 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        v240(v239, v241, &off_28263B040);
      }

LABEL_107:
      v342 = v234[2];
      if (!v342)
      {
        return v234;
      }

      v242 = *(v332 + 48);
      i = (v234 + ((*(v339 + 80) + 32) & ~*(v339 + 80)));
      v337 = v341 + 48;

      v243 = 0;
      while (v243 < v234[2])
      {
        v246 = *(v339 + 72);
        v343 = v243;
        v247 = v338;
        sub_213CE2C28(i + v246 * v243, v338, &qword_27C8EB288, &unk_213D972E0);
        v248 = *v247;
        v249 = v242;
        v250 = *(v247 + v242);
        *&v351 = v345;
        v251 = v345;

        v252 = v248;
        v253 = swift_modifyAtReferenceWritableKeyPath();
        v255 = v254;
        v256 = *(v254 + 24);
        v257 = swift_isUniquelyReferenced_nonNull_native();
        v348 = *(v255 + 24);
        v258 = v348;
        *(v255 + 24) = 0x8000000000000000;
        v260 = sub_213CE22A8(v250);
        v261 = *(v258 + 16);
        v262 = (v259 & 1) == 0;
        v263 = v261 + v262;
        if (__OFADD__(v261, v262))
        {
          goto LABEL_144;
        }

        v264 = v259;
        if (*(v258 + 24) >= v263)
        {
          if ((v257 & 1) == 0)
          {
            sub_213D1CE38(&qword_27C8EB2A8, &qword_213D97300);
          }
        }

        else
        {
          sub_213D1AEB0(v263, v257, &qword_27C8EB2A8, &qword_213D97300);
          v265 = sub_213CE22A8(v250);
          if ((v264 & 1) != (v266 & 1))
          {
            goto LABEL_151;
          }

          v260 = v265;
        }

        v267 = v341;
        v268 = v348;
        if (v264)
        {
          v269 = v348[7];
          v270 = *(v269 + 8 * v260);
          *(v269 + 8 * v260) = v252;
        }

        else
        {
          v348[(v260 >> 6) + 8] |= 1 << v260;
          *(v268[6] + 8 * v260) = v250;
          *(v268[7] + 8 * v260) = v252;
          v271 = v268[2];
          v149 = __OFADD__(v271, 1);
          v272 = v271 + 1;
          if (v149)
          {
            goto LABEL_145;
          }

          v268[2] = v272;
        }

        *(v255 + 24) = v268;
        v253(&aBlock, 0);

        v242 = v249;
        v273 = v331;
        sub_213D1E884(v338 + v249, v331, type metadata accessor for CustomAnnotationViewModel);
        v274 = *v347;
        v275 = v344;
        (*v347)(v273, 0, 1, v344);
        *&v351 = v251;
        v276 = v251;
        v277 = v252;
        v278 = swift_modifyAtReferenceWritableKeyPath();
        v280 = v279;
        if ((*v337)(v273, 1, v275) == 1)
        {
          sub_213CD8330(v273, &qword_27C8EB290, &qword_213D98000);
          v281 = *(v280 + 16);
          v282 = sub_213CE249C(v277);
          if (v283)
          {
            v284 = v282;
            v285 = *(v280 + 16);
            v286 = swift_isUniquelyReferenced_nonNull_native();
            v287 = *(v280 + 16);
            v348 = v287;
            *(v280 + 16) = 0x8000000000000000;
            if (!v286)
            {
              sub_213D1CC00();
              v287 = v348;
            }

            v245 = v329;
            sub_213D1E884(*(v287 + 56) + *(v267 + 72) * v284, v329, type metadata accessor for CustomAnnotationViewModel);
            sub_213D1B698(v284, v287, type metadata accessor for CustomAnnotationViewModel);

            v288 = *(v280 + 16);
            *(v280 + 16) = v287;

            v244 = 0;
          }

          else
          {

            v244 = 1;
            v245 = v329;
          }

          v274(v245, v244, 1, v344);
          sub_213CD8330(v245, &qword_27C8EB290, &qword_213D98000);
        }

        else
        {
          sub_213D1E884(v273, v330, type metadata accessor for CustomAnnotationViewModel);
          v289 = *(v280 + 16);
          v290 = swift_isUniquelyReferenced_nonNull_native();
          v348 = *(v280 + 16);
          v291 = v348;
          *(v280 + 16) = 0x8000000000000000;
          v292 = sub_213CE249C(v277);
          v294 = *(v291 + 16);
          v295 = (v293 & 1) == 0;
          v149 = __OFADD__(v294, v295);
          v296 = v294 + v295;
          if (v149)
          {
            goto LABEL_146;
          }

          v297 = v293;
          if (*(v291 + 24) >= v296)
          {
            if ((v290 & 1) == 0)
            {
              v303 = v292;
              sub_213D1CC00();
              v292 = v303;
            }
          }

          else
          {
            sub_213D1AB68(v296, v290);
            v292 = sub_213CE249C(v277);
            if ((v297 & 1) != (v298 & 1))
            {
              goto LABEL_152;
            }
          }

          v299 = v348;
          if (v297)
          {
            sub_213D1EA60(v330, v348[7] + *(v267 + 72) * v292, type metadata accessor for CustomAnnotationViewModel);
          }

          else
          {
            v348[(v292 >> 6) + 8] |= 1 << v292;
            *(v299[6] + 8 * v292) = v277;
            sub_213D1E884(v330, v299[7] + *(v267 + 72) * v292, type metadata accessor for CustomAnnotationViewModel);
            v300 = v299[2];
            v149 = __OFADD__(v300, 1);
            v301 = v300 + 1;
            if (v149)
            {
              goto LABEL_147;
            }

            v299[2] = v301;
          }

          v302 = *(v280 + 16);
          *(v280 + 16) = v299;
        }

        v243 = v343 + 1;
        v278(&aBlock, 0);

        v234 = v333;
        if (v342 == v243)
        {

          return v234;
        }
      }

LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);

      v233 = sub_213D91EAC();
    }
  }

  v51 = *(v27 + 80);
  v52 = a2 + ((v51 + 32) & ~v51);
  v328 = (v27 + 56);
  v333 = *(v27 + 72);
  v310 = v51;
  v309 = (v51 + 24) & ~v51;
  v308 = (v28 + v309 + 7) & 0xFFFFFFFFFFFFFFF8;
  v307 = (v27 + 48);
  v53 = MEMORY[0x277D84F90];
  v322 = MEMORY[0x277D84F90];
  v323 = MEMORY[0x277D84F90];
  v54 = v347;
  while (1)
  {
    sub_213D1E9F8(v52, v54, type metadata accessor for CustomAnnotationViewModel);
    v57 = *v54;
    *&v351 = v345;
    v58 = v345;
    swift_getAtKeyPath();

    v59 = v355;
    if (!v355[2] || (v60 = sub_213CE22A8(v57), (v61 & 1) == 0))
    {
      v81 = v52;
      v82 = v50;
      v83 = v53;

LABEL_18:
      v85 = v347[1];
      v86 = v347[2];
      v87 = v347[3];
      v88 = v347[4];
      v89 = v347[7];
      v90 = v347[8];
      v91 = v347[5];
      v92 = type metadata accessor for MapBridgingCustomAnnotation();
      v93 = objc_allocWithZone(v92);
      v94 = &v93[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_title];
      *v94 = 0;
      *(v94 + 1) = 0;
      v95 = &v93[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_subtitle];
      *v95 = 0;
      *(v95 + 1) = 0;
      v96 = OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_mapItem;
      *&v93[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_mapItem] = 0;
      *v94 = v85;
      *(v94 + 1) = v86;
      *v95 = v87;
      *(v95 + 1) = v88;
      v97 = &v93[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_coordinate];
      *v97 = v89;
      *(v97 + 1) = v90;
      v98 = *&v93[v96];
      *&v93[v96] = v91;

      v99 = v91;

      v54 = v347;
      v358.receiver = v93;
      v358.super_class = v92;
      v100 = objc_msgSendSuper2(&v358, sel_init);
      v101 = *(v332 + 48);
      v102 = i;
      *i = v100;
      sub_213D1E9F8(v54, v102 + v101, type metadata accessor for CustomAnnotationViewModel);
      v53 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_213D70850(0, v83[2] + 1, 1, v83);
      }

      v44 = v342;
      v50 = v82;
      v104 = v53[2];
      v103 = v53[3];
      v52 = v81;
      if (v104 >= v103 >> 1)
      {
        v53 = sub_213D70850(v103 > 1, v104 + 1, 1, v53);
      }

      sub_213D1F330(v54, type metadata accessor for CustomAnnotationViewModel);
      v53[2] = v104 + 1;
      sub_213CED608(i, v53 + ((*(v339 + 80) + 32) & ~*(v339 + 80)) + *(v339 + 72) * v104, &qword_27C8EB288, &unk_213D972E0);
      goto LABEL_5;
    }

    v62 = *(v59[7] + 8 * v60);

    *&v351 = v58;
    v63 = v58;
    swift_getAtKeyPath();

    v64 = v354;
    if (!v354[2] || (v65 = sub_213CE249C(v62), (v66 & 1) == 0))
    {
      v81 = v52;
      v82 = v50;
      v83 = v53;

      v84 = v327;
      (*v328)(v327, 1, 1, v344);
      sub_213CD8330(v84, &qword_27C8EB290, &qword_213D98000);
      goto LABEL_18;
    }

    v320 = v63;
    v67 = v54;
    v68 = v327;
    sub_213D1E9F8(v64[7] + v65 * v333, v327, type metadata accessor for CustomAnnotationViewModel);

    v319 = *v328;
    v319(v68, 0, 1, v344);
    sub_213CD8330(v68, &qword_27C8EB290, &qword_213D98000);
    v355 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    v356 = &off_28263B040;
    v69 = v315;
    aBlock = v315;
    v70 = v312;
    sub_213D1E9F8(v67, v312, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1E22C(&aBlock, &v351);
    sub_213D1E9F8(v70, v326, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1E22C(&v351, &v348);
    v71 = v308;
    v72 = swift_allocObject();
    *(v72 + 16) = v62;
    sub_213D1E884(v70, v72 + v309, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1E2DC(&v351, v72 + v71);
    v73 = v62;
    v74 = v69;
    v75 = v321;
    v325 = v73;
    if (!v321)
    {
      goto LABEL_14;
    }

    [v73 coordinate];
    if (vabdd_f64(v77, *(v67 + 56)) < 0.00000000999999994 && vabdd_f64(v76, *(v67 + 64)) < 0.00000000999999994)
    {

LABEL_14:
      v78 = v326;
      [v73 setCoordinate_];
      if (v78[2])
      {
        v79 = v78[1];
        v80 = sub_213D9190C();
      }

      else
      {
        v80 = 0;
      }

      v54 = v347;
      [v73 setTitle_];

      if (v78[4])
      {
        v120 = v78[3];
        v121 = sub_213D9190C();
      }

      else
      {
        v121 = 0;
      }

      [v73 setSubtitle_];

      v122 = v73;
      v123 = v349;
      v124 = v350;
      __swift_project_boxed_opaque_existential_1(&v348, v349);
      v125 = (*(v124 + 24))(v122, v123, v124);
      if (v125)
      {
        v126 = v125;
        type metadata accessor for SwiftUIAnnotationView();
        v127 = swift_dynamicCastClass();
        v128 = v326;
        if (v127)
        {
          sub_213D2763C(v127, 0);
          v128 = v326;
        }

        else
        {
        }
      }

      else
      {

        v128 = v326;
      }

      v112 = v325;
      __swift_destroy_boxed_opaque_existential_1(&v348);
      sub_213D1F330(v128, type metadata accessor for CustomAnnotationViewModel);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v318 = 0;
      v324 = 0;
      v316 = 0;
      v107 = 0;
      v109 = v314;
      goto LABEL_42;
    }

    __swift_destroy_boxed_opaque_existential_1(&v348);
    sub_213D1F330(v326, type metadata accessor for CustomAnnotationViewModel);
    v105 = swift_allocObject();
    v105[2] = sub_213D1F604;
    v105[3] = v72;
    v105[4] = v75;
    v106 = swift_allocObject();
    *(v106 + 16) = sub_213D1F604;
    *(v106 + 24) = v72;
    v324 = v106;
    v107 = v105;

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v108 = swift_allocObject();
    *(v108 + 16) = sub_213D1F610;
    *(v108 + 24) = v105;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v322 = sub_213D6FE48(0, v322[2] + 1, 1, v322);
    }

    v109 = v314;
    v111 = v322[2];
    v110 = v322[3];
    if (v111 >= v110 >> 1)
    {
      v322 = sub_213D6FE48((v110 > 1), v111 + 1, 1, v322);
    }

    v112 = v325;

    v113 = v322;
    v322[2] = v111 + 1;
    v114 = &v113[2 * v111];
    v114[4] = sub_213D1F608;
    v114[5] = v108;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_213D1F584;
    *(v115 + 24) = v324;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v323 = sub_213D6FE48(0, v323[2] + 1, 1, v323);
    }

    v117 = v323[2];
    v116 = v323[3];
    if (v117 >= v116 >> 1)
    {
      v323 = sub_213D6FE48((v116 > 1), v117 + 1, 1, v323);
    }

    v118 = v323;
    v323[2] = v117 + 1;
    v119 = &v118[2 * v117];
    v119[4] = sub_213D1F608;
    v119[5] = v115;
    v316 = sub_213D1F610;
    v318 = sub_213D1F584;
    v54 = v347;
LABEL_42:
    v129 = v337;
    v130 = sub_213CE249C(v112);
    v317 = v107;
    if (v131)
    {
      v132 = v130;
      v133 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v129;
      if (!v133)
      {
        sub_213D1CC00();
        v129 = aBlock;
      }

      sub_213D1E884(*(v129 + 56) + v132 * v333, v109, type metadata accessor for CustomAnnotationViewModel);
      v337 = v129;
      sub_213D1B698(v132, v129, type metadata accessor for CustomAnnotationViewModel);
      v134 = 0;
    }

    else
    {
      v134 = 1;
    }

    v135 = v344;
    v136 = v319;
    v319(v109, v134, 1, v344);
    sub_213CD8330(v109, &qword_27C8EB290, &qword_213D98000);
    v137 = v313;
    sub_213D1E9F8(v54, v313, type metadata accessor for CustomAnnotationViewModel);
    v136(v137, 0, 1, v135);
    *&v351 = v320;
    v138 = v320;
    v139 = v325;
    v325 = swift_modifyAtReferenceWritableKeyPath();
    v141 = v140;
    if ((*v307)(v137, 1, v135) != 1)
    {
      break;
    }

    sub_213CD8330(v137, &qword_27C8EB290, &qword_213D98000);
    v55 = v306;
    sub_213D18E08(v139, v306);

    sub_213CD8330(v55, &qword_27C8EB290, &qword_213D98000);
LABEL_4:
    v56 = v316;
    (v325)(&aBlock, 0);
    sub_213CCE520(v318);
    sub_213CCE520(v56);

    sub_213D1F330(v54, type metadata accessor for CustomAnnotationViewModel);
    v44 = v342;
LABEL_5:
    v52 += v333;
    if (!--v50)
    {
      goto LABEL_60;
    }
  }

  sub_213D1E884(v137, v311, type metadata accessor for CustomAnnotationViewModel);
  v142 = *(v141 + 16);
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v348 = *(v141 + 16);
  v144 = v348;
  *(v141 + 16) = 0x8000000000000000;
  v145 = sub_213CE249C(v139);
  v147 = *(v144 + 16);
  v148 = (v146 & 1) == 0;
  v149 = __OFADD__(v147, v148);
  v150 = v147 + v148;
  if (v149)
  {
    goto LABEL_148;
  }

  v151 = v146;
  if (*(v144 + 24) >= v150)
  {
    if ((v143 & 1) == 0)
    {
      v157 = v145;
      sub_213D1CC00();
      v145 = v157;
      v54 = v347;
    }
  }

  else
  {
    sub_213D1AB68(v150, v143);
    v145 = sub_213CE249C(v139);
    if ((v151 & 1) != (v152 & 1))
    {
      goto LABEL_152;
    }
  }

  v153 = v348;
  if (v151)
  {
    sub_213D1EA60(v311, v348[7] + v145 * v333, type metadata accessor for CustomAnnotationViewModel);

LABEL_58:
    v156 = *(v141 + 16);
    *(v141 + 16) = v153;

    goto LABEL_4;
  }

  v348[(v145 >> 6) + 8] |= 1 << v145;
  *(v153[6] + 8 * v145) = v139;
  sub_213D1E884(v311, v153[7] + v145 * v333, type metadata accessor for CustomAnnotationViewModel);
  v154 = v153[2];
  v149 = __OFADD__(v154, 1);
  v155 = v154 + 1;
  if (!v149)
  {
    v153[2] = v155;
    goto LABEL_58;
  }

  __break(1u);
LABEL_151:
  sub_213D91F8C();
  __break(1u);
LABEL_152:
  type metadata accessor for MapBridgingCustomAnnotation();
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D14A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB288, &unk_213D972E0);
  v10 = *(v63 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v63);
  v13 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v61 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v68 = a1;
  v20 = sub_213D07EAC(a1, a2, a3, a4, a5);
  v21 = *(v20 + 16);
  v22 = MEMORY[0x277D84F90];
  v65 = v20;
  v66 = v10;
  v64 = v21;
  if (v21)
  {
    v67 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v23 = 0;
    v24 = v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v25 = &qword_27C8EB288;
    do
    {
      if (v23 >= *(v20 + 16))
      {
        goto LABEL_57;
      }

      v26 = v23 + 1;
      sub_213CE2C28(v24 + v66[9] * v23, v19, &qword_27C8EB288, &unk_213D972E0);
      sub_213CE2C28(v19, v16, &qword_27C8EB288, &unk_213D972E0);
      v27 = *v16;
      v28 = *(v63 + 48);
      *v13 = *v16;
      sub_213D1E884(v16 + v28, v13 + v28, type metadata accessor for CustomAnnotationViewModel);
      v29 = v27;
      sub_213CD8330(v13, &qword_27C8EB288, &unk_213D972E0);
      sub_213CD8330(v19, &qword_27C8EB288, &unk_213D972E0);
      sub_213D91DEC();
      v30 = *(v67 + 16);
      sub_213D91E2C();
      v20 = v65;
      sub_213D91E3C();
      sub_213D91DFC();
      v23 = v26;
    }

    while (v64 != v26);
    v24 = v67;
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v67 = v22;
  v25 = v66;
  if (v24 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_213D91EBC())
  {
    v32 = MEMORY[0x277D84F90];
    if (i)
    {
      v33 = 0;
      v61 = v24 & 0xFFFFFFFFFFFFFF8;
      v62 = v24 & 0xC000000000000001;
      while (1)
      {
        if (v62)
        {
          MEMORY[0x21604EF80](v33, v24);
        }

        else
        {
          if (v33 >= *(v61 + 16))
          {
            goto LABEL_59;
          }

          v34 = *(v24 + 8 * v33 + 32);
        }

        v35 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          goto LABEL_58;
        }

        sub_213D91DEC();
        v25 = i;
        v36 = v24;
        v37 = *(v67 + 16);
        sub_213D91E2C();
        v24 = v36;
        i = v25;
        sub_213D91E3C();
        sub_213D91DFC();
        ++v33;
        if (v35 == v25)
        {
          v25 = v66;
          v32 = v67;
          break;
        }
      }
    }

    if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
      v38 = sub_213D91EAC();
    }

    else
    {
      sub_213D91F6C();
      v38 = v32;
    }

    v24 = off_28263B0B8;
    v39 = off_28263B0B8[0];
    v62 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v39(v38, v62, &off_28263B0B0);

    if (!v64)
    {
      break;
    }

    v67 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v40 = 0;
    v41 = v65;
    v24 = v65 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v25 = &unk_213D972E0;
    while (v40 < *(v41 + 16))
    {
      v42 = v40 + 1;
      sub_213CE2C28(v24 + v66[9] * v40, v19, &qword_27C8EB288, &unk_213D972E0);
      sub_213CE2C28(v19, v16, &qword_27C8EB288, &unk_213D972E0);
      v43 = *v16;
      v44 = *(v63 + 48);
      *v13 = *v16;
      sub_213D1E884(v16 + v44, v13 + v44, type metadata accessor for CustomAnnotationViewModel);
      v45 = v43;
      sub_213CD8330(v13, &qword_27C8EB288, &unk_213D972E0);
      sub_213CD8330(v19, &qword_27C8EB288, &unk_213D972E0);
      sub_213D91DEC();
      v46 = *(v67 + 16);
      sub_213D91E2C();
      v41 = v65;
      sub_213D91E3C();
      sub_213D91DFC();
      v40 = v42;
      if (v64 == v42)
      {

        v47 = v67;
        if (v67 >> 62)
        {
          goto LABEL_37;
        }

        goto LABEL_26;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v47 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
LABEL_26:
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_27;
    }

LABEL_38:

    v54 = MEMORY[0x277D84F90];
    v67 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      sub_213D91EBC();
      sub_213D91E1C();
      if (sub_213D91EBC())
      {

        MEMORY[0x21604EF80](0, MEMORY[0x277D84F90]);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_213D91E1C();
    }

    v55 = v67;
    v67 = v54;
    if ((v55 & 0x8000000000000000) != 0 || (v55 & 0x4000000000000000) != 0)
    {
      v56 = sub_213D91EBC();
    }

    else
    {
      v56 = *(v55 + 16);
    }

    v57 = 0;
    v24 = v55 & 0xC000000000000001;
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v56 == v57)
      {

        off_28263B098(v13, v62, &off_28263B080);
      }

      if (v24)
      {
        v58 = MEMORY[0x21604EF80](v57, v55);
      }

      else
      {
        if (v57 >= *(v55 + 16))
        {
          goto LABEL_56;
        }

        v58 = *(v55 + 8 * v57 + 32);
      }

      v19 = v58;
      v25 = (v57 + 1);
      if (__OFADD__(v57, 1))
      {
        break;
      }

      v59 = *&v58[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem];
      v16 = v59;

      v57 = (v57 + 1);
      if (v59)
      {
        MEMORY[0x21604EBA0]();
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v60 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_213D91A1C();
        }

        sub_213D91A6C();
        v13 = v67;
        v57 = v25;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_37:
  v53 = v47;
  v48 = sub_213D91EBC();
  v47 = v53;
  if (!v48)
  {
    goto LABEL_38;
  }

LABEL_27:
  v49 = 0;
  v50 = v47 & 0xC000000000000001;
  v13 = (v47 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    while (!v50)
    {
      if ((v49 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      if (v49 >= v13[2])
      {
        goto LABEL_62;
      }

      if (++v49 == v48)
      {
        goto LABEL_38;
      }
    }

    v16 = v47;
    MEMORY[0x21604EF80](v49);
    result = swift_unknownObjectRelease();
    if (__OFADD__(v49++, 1))
    {
      break;
    }

    v47 = v16;
    if (v49 == v48)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_213D15170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAA0, &unk_213D972B0);
  v10 = *(v64 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v64);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v60 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v69 = a1;
  v20 = sub_213D05E64(a1, a2, a3, a4, a5);
  v21 = *(v20 + 16);
  v22 = MEMORY[0x277D84F90];
  v66 = v20;
  v67 = v10;
  v65 = v21;
  if (v21)
  {
    v68 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v23 = 0;
    v24 = v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v25 = &unk_27C8EBAA0;
    do
    {
      if (v23 >= *(v20 + 16))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v26 = v23 + 1;
      sub_213CE2C28(v24 + v67[9] * v23, v19, &unk_27C8EBAA0, &unk_213D972B0);
      sub_213CE2C28(v19, v16, &unk_27C8EBAA0, &unk_213D972B0);
      v27 = *v16;
      v28 = *(v64 + 48);
      *v13 = *v16;
      sub_213D1E884(v16 + v28, v13 + v28, type metadata accessor for MarkerAnnotationViewModel);
      v29 = v27;
      sub_213CD8330(v13, &unk_27C8EBAA0, &unk_213D972B0);
      sub_213CD8330(v19, &unk_27C8EBAA0, &unk_213D972B0);
      sub_213D91DEC();
      v30 = *(v68 + 16);
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
      v23 = v26;
      v20 = v66;
    }

    while (v65 != v26);
    v24 = v68;
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v68 = v22;
  v25 = v67;
  if (v24 >> 62)
  {
    goto LABEL_68;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_213D91EBC())
  {
    v32 = MEMORY[0x277D84F90];
    if (i)
    {
      v33 = 0;
      v34 = v24 & 0xC000000000000001;
      v25 = (v24 & 0xFFFFFFFFFFFFFF8);
      v62 = v16;
      v63 = v19;
      while (1)
      {
        if (v34)
        {
          v39 = MEMORY[0x21604EF80](v33, v24);
        }

        else
        {
          if (v33 >= v25[2])
          {
            goto LABEL_64;
          }

          v39 = *(v24 + 8 * v33 + 32);
        }

        v40 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (*(v39 + OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature))
        {
        }

        else
        {
          sub_213D91DEC();
          v35 = v25;
          v36 = i;
          v37 = v24;
          v38 = *(v68 + 16);
          sub_213D91E2C();
          v24 = v37;
          i = v36;
          v25 = v35;
          sub_213D91E3C();
          sub_213D91DFC();
          v16 = v62;
          v19 = v63;
        }

        ++v33;
        if (v40 == i)
        {
          v25 = v67;
          v32 = v68;
          goto LABEL_21;
        }
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_21:

    if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
      v41 = sub_213D91EAC();
    }

    else
    {
      sub_213D91F6C();
      v41 = v32;
    }

    v24 = off_28263B0B8;
    v42 = off_28263B0B8[0];
    v61 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v42(v41, v61, &off_28263B0B0);

    if (!v65)
    {
      break;
    }

    v68 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v43 = 0;
    v44 = v66;
    v25 = (v66 + ((*(v25 + 80) + 32) & ~*(v25 + 80)));
    while (v43 < *(v44 + 16))
    {
      v45 = v43 + 1;
      sub_213CE2C28(v25 + v67[9] * v43, v19, &unk_27C8EBAA0, &unk_213D972B0);
      sub_213CE2C28(v19, v16, &unk_27C8EBAA0, &unk_213D972B0);
      v46 = *v16;
      v47 = *(v64 + 48);
      *v13 = *v16;
      sub_213D1E884(v16 + v47, v13 + v47, type metadata accessor for MarkerAnnotationViewModel);
      v48 = v46;
      sub_213CD8330(v13, &unk_27C8EBAA0, &unk_213D972B0);
      sub_213CD8330(v19, &unk_27C8EBAA0, &unk_213D972B0);
      sub_213D91DEC();
      v24 = *(v68 + 16);
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
      v43 = v45;
      v44 = v66;
      if (v65 == v45)
      {

        v49 = v68;
        goto LABEL_30;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

  v49 = MEMORY[0x277D84F90];
LABEL_30:
  v68 = MEMORY[0x277D84F90];
  if (v49 >> 62)
  {
    v50 = sub_213D91EBC();
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x277D84F90];
  if (v50)
  {
    v13 = 0;
    v25 = (v49 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x21604EF80](v13, v49);
      }

      else
      {
        if (v13 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v51 = *(v49 + 8 * v13 + 32);
      }

      v16 = v51;
      v52 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_66;
      }

      if (*(v51 + OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature))
      {
        sub_213D91DEC();
        v19 = *(v68 + 16);
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
      }

      else
      {
      }

      ++v13;
      if (v52 == v50)
      {
        v53 = v68;
        goto LABEL_45;
      }
    }
  }

  v53 = MEMORY[0x277D84F90];
LABEL_45:

  v68 = v24;
  if ((v53 & 0x8000000000000000) != 0 || (v53 & 0x4000000000000000) != 0)
  {
    v54 = sub_213D91EBC();
  }

  else
  {
    v54 = *(v53 + 16);
  }

  v55 = 0;
  v24 = v53 & 0xC000000000000001;
  v13 = MEMORY[0x277D84F90];
  while (v54 != v55)
  {
    if (v24)
    {
      v56 = MEMORY[0x21604EF80](v55, v53);
    }

    else
    {
      if (v55 >= *(v53 + 16))
      {
        goto LABEL_61;
      }

      v56 = *(v53 + 8 * v55 + 32);
    }

    v19 = v56;
    v25 = (v55 + 1);
    if (__OFADD__(v55, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v57 = *&v56[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem];
    v16 = v57;

    ++v55;
    if (v57)
    {
      MEMORY[0x21604EBA0]();
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v58 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_213D91A1C();
      }

      sub_213D91A6C();
      v13 = v68;
      v55 = v25;
    }
  }

  off_28263B098(v13, v61, &off_28263B080);
}

uint64_t sub_213D158E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB208, &unk_213D97260);
  v10 = *(v62 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v62);
  v13 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v60 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v67 = a1;
  v20 = sub_213D03F90(a1, a2, a3, a4, a5);
  v21 = *(v20 + 16);
  v22 = MEMORY[0x277D84F90];
  v64 = v21;
  v65 = v20;
  v63 = v10;
  if (v21)
  {
    v23 = v20;
    v66 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v24 = 0;
    v25 = v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v21 = &unk_213D97260;
    do
    {
      if (v24 >= *(v23 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v22 = (v24 + 1);
      sub_213CE2C28(v25 + *(v63 + 72) * v24, v19, &qword_27C8EB208, &unk_213D97260);
      sub_213CE2C28(v19, v16, &qword_27C8EB208, &unk_213D97260);
      v26 = *v16;
      v27 = *(v62 + 48);
      *v13 = *v16;
      sub_213D1E884(v16 + v27, v13 + v27, type metadata accessor for UserAnnotationViewModel);
      v28 = v26;
      sub_213CD8330(v13, &qword_27C8EB208, &unk_213D97260);
      sub_213CD8330(v19, &qword_27C8EB208, &unk_213D97260);
      sub_213D91DEC();
      v29 = *(v66 + 16);
      sub_213D91E2C();
      v23 = v65;
      sub_213D91E3C();
      sub_213D91DFC();
      v24 = v22;
    }

    while (v64 != v22);
    v30 = v66;
    v22 = MEMORY[0x277D84F90];
    v21 = v64;
    if (!(v66 >> 62))
    {
LABEL_6:
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_6;
    }
  }

  v38 = v30;
  v31 = sub_213D91EBC();
  v30 = v38;
  if (v31)
  {
LABEL_7:
    v32 = 0;
    v33 = v30 & 0xC000000000000001;
    v34 = v30 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      while (!v33)
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        if (v32 >= *(v34 + 16))
        {
          goto LABEL_60;
        }

        if (++v32 == v31)
        {
          goto LABEL_18;
        }
      }

      v35 = v30;
      MEMORY[0x21604EF80](v32);
      result = swift_unknownObjectRelease();
      v37 = __OFADD__(v32++, 1);
      if (v37)
      {
        break;
      }

      v30 = v35;
      if (v32 == v31)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

LABEL_18:

  v61 = v22 >> 62;
  if (v22 >> 62)
  {
    goto LABEL_64;
  }

  v39 = MEMORY[0x277D84F90];
  sub_213D91F0C();
  while (1)
  {
    v40 = off_28263B0B8[0];
    v60 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v40(v39, v60, &off_28263B0B0);

    if (!v21)
    {
      break;
    }

    v66 = v22;
    sub_213D91E1C();
    v41 = 0;
    v42 = v65;
    v43 = v65 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v21 = &qword_27C8EB208;
    while (v41 < *(v42 + 16))
    {
      v22 = (v41 + 1);
      sub_213CE2C28(v43 + *(v63 + 72) * v41, v19, &qword_27C8EB208, &unk_213D97260);
      sub_213CE2C28(v19, v16, &qword_27C8EB208, &unk_213D97260);
      v44 = *v16;
      v45 = *(v62 + 48);
      *v13 = *v16;
      sub_213D1E884(v16 + v45, v13 + v45, type metadata accessor for UserAnnotationViewModel);
      v46 = v44;
      sub_213CD8330(v13, &qword_27C8EB208, &unk_213D97260);
      sub_213CD8330(v19, &qword_27C8EB208, &unk_213D97260);
      sub_213D91DEC();
      v47 = *(v66 + 16);
      sub_213D91E2C();
      v42 = v65;
      sub_213D91E3C();
      sub_213D91DFC();
      v41 = v22;
      if (v64 == v22)
      {

        v48 = v66;
        if (v66 >> 62)
        {
          goto LABEL_55;
        }

        goto LABEL_25;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v39 = sub_213D91EAC();
  }

  v48 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_55:
    v59 = v48;
    v49 = sub_213D91EBC();
    v48 = v59;
  }

  else
  {
LABEL_25:
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  if (v49)
  {
    v50 = 0;
    v51 = v48 & 0xC000000000000001;
    v52 = v48 & 0xFFFFFFFFFFFFFF8;
    do
    {
      while (!v51)
      {
        if ((v50 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }

        if (v50 >= *(v52 + 16))
        {
          goto LABEL_63;
        }

        if (++v50 == v49)
        {
          goto LABEL_35;
        }
      }

      v13 = v48;
      MEMORY[0x21604EF80](v50);
      result = swift_unknownObjectRelease();
      v37 = __OFADD__(v50++, 1);
      if (v37)
      {
        goto LABEL_67;
      }

      v48 = v13;
    }

    while (v50 != v49);
  }

LABEL_35:

  v66 = v16;
  if (v61)
  {
    sub_213D91EBC();
    sub_213D91E1C();
    if (sub_213D91EBC())
    {

      MEMORY[0x21604EF80](0, MEMORY[0x277D84F90]);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_213D91E1C();
  }

  v53 = v66;
  v66 = v16;
  if ((v53 & 0x8000000000000000) != 0 || (v53 & 0x4000000000000000) != 0)
  {
    v54 = sub_213D91EBC();
  }

  else
  {
    v54 = v53[2];
  }

  v55 = 0;
  v19 = (v53 & 0xC000000000000001);
  v13 = MEMORY[0x277D84F90];
  while (v54 != v55)
  {
    if (v19)
    {
      v56 = MEMORY[0x21604EF80](v55, v53);
    }

    else
    {
      if (v55 >= v53[2])
      {
        goto LABEL_58;
      }

      v56 = v53[v55 + 4];
    }

    v16 = v56;
    v22 = (v55 + 1);
    if (__OFADD__(v55, 1))
    {
      goto LABEL_57;
    }

    v21 = *(v56 + OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem);
    v57 = v21;

    v55 = (v55 + 1);
    if (v21)
    {
      MEMORY[0x21604EBA0]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v58 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_213D91A1C();
      }

      sub_213D91A6C();
      v13 = v66;
      v55 = v22;
    }
  }

  off_28263B098(v13, v60, &off_28263B080);
}

uint64_t sub_213D16014(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a1;
  v4 = sub_213D02A04(a1, a2, a3, a4);
  v5 = sub_213D1DEB8(MEMORY[0x277D84F90], &unk_27C8EB1E0, &qword_213D97248);
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v54 = v6 - 1;
    v55 = v4;
    v10 = 32;
    while (1)
    {
      v60 = v8;
      v56 = v10;
      v58 = v7;
      v12 = *(v4 + v10 + 16);
      v11 = *(v4 + v10 + 32);
      v64 = *(v4 + v10);
      v65 = v12;
      v66 = v11;
      v13 = *(v4 + v10 + 96);
      v14 = *(v4 + v10 + 80);
      v15 = *(v4 + v10 + 48);
      v68 = *(v4 + v10 + 64);
      v69 = v14;
      v70 = v13;
      v67 = v15;
      v16 = v65;
      v17 = v66;
      v18 = v14;
      v19 = BYTE8(v14);
      v20 = WORD4(v65);
      sub_213CE2C28(&v64, &v63, &qword_27C8ECC90, &qword_213D97240);

      sub_213D1E6A0(v16, v20);

      sub_213CE2B28(v18, v19);
      sub_213CCE520(v9);
      v21 = v64;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_213D184B8;
      *(v22 + 24) = 0;
      sub_213CCE520(v60);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v5;
      v24 = sub_213CE21EC(v13);
      v26 = v5[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_34;
      }

      v30 = v25;
      if (v5[3] >= v29)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v24;
          sub_213D1C498(&unk_27C8EB1E0, &qword_213D97248);
          v24 = v40;
          v5 = v63;
          if (v30)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        sub_213D19EE4(v29, isUniquelyReferenced_nonNull_native, &unk_27C8EB1E0, &qword_213D97248);
        v5 = v63;
        v24 = sub_213CE21EC(v13);
        if ((v30 & 1) != (v31 & 1))
        {
          goto LABEL_37;
        }
      }

      if (v30)
      {
        goto LABEL_11;
      }

LABEL_9:
      v32 = *(v22 + 24);
      v33 = v24;
      v34 = (*(v22 + 16))();
      v5[(v33 >> 6) + 8] |= 1 << v33;
      *(v5[6] + 8 * v33) = v13;
      *(v5[7] + 8 * v33) = v34;
      v35 = v5[2];
      v28 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v28)
      {
        goto LABEL_36;
      }

      v24 = v33;
      v5[2] = v36;
LABEL_11:
      v37 = (v5[7] + 8 * v24);
      v38 = v21;
      MEMORY[0x21604EBA0]();
      if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_213D91A1C();
      }

      sub_213D91A6C();

      v4 = v55;
      if (v54 == v58)
      {

        v59 = sub_213D1F580;
        v57 = sub_213D184B8;
        goto LABEL_20;
      }

      v7 = v58 + 1;
      v10 = v56 + 104;
      v9 = sub_213D184B8;
      v8 = sub_213D1F580;
      if ((v58 + 1) >= *(v55 + 16))
      {
        goto LABEL_35;
      }
    }
  }

  v57 = 0;
  v59 = 0;
LABEL_20:
  v41 = 0;
  v42 = v5 + 8;
  v43 = 1 << *(v5 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v5[8];
  v46 = (v43 + 63) >> 6;
  v61 = v5;
  if (v45)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v47 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v47 >= v46)
    {

      sub_213CCE520(v57);
      return sub_213CCE520(v59);
    }

    v45 = v42[v47];
    ++v41;
    if (v45)
    {
      v41 = v47;
      do
      {
LABEL_27:
        v48 = (v41 << 9) | (8 * __clz(__rbit64(v45)));
        v49 = *(v5[7] + v48);
        v62 = *(v5[6] + v48);
        if (v49 >> 62)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
          v50 = sub_213D91EAC();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_213D91F6C();
          v50 = v49;
        }

        v45 &= v45 - 1;

        v51 = off_28263B0D0;
        v52 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
        (v51)(v50, v62, v52, &off_28263B0B0);

        v5 = v61;
      }

      while (v45);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for MKOverlayLevel(0);
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D16504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a1;
  v4 = sub_213D01228(a1, a2, a3, a4);
  v5 = sub_213D1DEB8(MEMORY[0x277D84F90], &qword_27C8EB1B8, &qword_213D97228);
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v52 = v6 - 1;
    v10 = 32;
    while (1)
    {
      v11 = *(v4 + v10);
      v12 = *(v4 + v10 + 16);
      v13 = *(v4 + v10 + 48);
      v55[2] = *(v4 + v10 + 32);
      v55[3] = v13;
      v55[0] = v11;
      v55[1] = v12;
      v14 = *(v4 + v10 + 64);
      v15 = *(v4 + v10 + 80);
      v16 = *(v4 + v10 + 112);
      v55[6] = *(v4 + v10 + 96);
      v56 = v16;
      v55[4] = v14;
      v55[5] = v15;
      sub_213CE2C28(v55, &v54, &qword_27C8EB1B0, &qword_213D97220);
      sub_213D1E4C4(v55 + 8);
      sub_213CCE520(v9);
      v17 = *&v55[0];
      v18 = *(&v56 + 1);
      v19 = swift_allocObject();
      *(v19 + 16) = sub_213D184B8;
      *(v19 + 24) = 0;
      sub_213CCE520(v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v5;
      v21 = sub_213CE21EC(v18);
      v23 = v5[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_34;
      }

      v27 = v22;
      if (v5[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = v21;
          sub_213D1C498(&qword_27C8EB1B8, &qword_213D97228);
          v21 = v37;
          v5 = v54;
          if (v27)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        sub_213D19EE4(v26, isUniquelyReferenced_nonNull_native, &qword_27C8EB1B8, &qword_213D97228);
        v5 = v54;
        v21 = sub_213CE21EC(v18);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_37;
        }
      }

      if (v27)
      {
        goto LABEL_11;
      }

LABEL_9:
      v29 = *(v19 + 24);
      v30 = v21;
      v31 = (*(v19 + 16))();
      v5[(v30 >> 6) + 8] |= 1 << v30;
      *(v5[6] + 8 * v30) = v18;
      *(v5[7] + 8 * v30) = v31;
      v32 = v5[2];
      v25 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v25)
      {
        goto LABEL_36;
      }

      v21 = v30;
      v5[2] = v33;
LABEL_11:
      v34 = (v5[7] + 8 * v21);
      v35 = v17;
      MEMORY[0x21604EBA0]();
      if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_213D91A1C();
      }

      sub_213D91A6C();

      if (v52 == v7)
      {

        v51 = sub_213D1F580;
        v50 = sub_213D184B8;
        goto LABEL_20;
      }

      ++v7;
      v10 += 128;
      v9 = sub_213D184B8;
      v8 = sub_213D1F580;
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_35;
      }
    }
  }

  v50 = 0;
  v51 = 0;
LABEL_20:
  v38 = 0;
  v39 = 1 << *(v5 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v5[8];
  v42 = (v39 + 63) >> 6;
  if (v41)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v43 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v43 >= v42)
    {

      sub_213CCE520(v50);
      return sub_213CCE520(v51);
    }

    v41 = v5[v43 + 8];
    ++v38;
    if (v41)
    {
      v38 = v43;
      do
      {
LABEL_27:
        v44 = (v38 << 9) | (8 * __clz(__rbit64(v41)));
        v45 = *(v5[7] + v44);
        v53 = *(v5[6] + v44);
        if (v45 >> 62)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
          v46 = sub_213D91EAC();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_213D91F6C();
          v46 = v45;
        }

        v41 &= v41 - 1;

        v47 = off_28263B0D0;
        v48 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
        (v47)(v46, v53, v48, &off_28263B0B0);
      }

      while (v41);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for MKOverlayLevel(0);
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D169A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a1;
  v4 = sub_213CFF9F8(a1, a2, a3, a4);
  v5 = sub_213D1DEB8(MEMORY[0x277D84F90], &unk_27C8EB170, &qword_213D97208);
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v52 = v6 - 1;
    v10 = 32;
    while (1)
    {
      v55[0] = *(v4 + v10);
      v11 = *(v4 + v10 + 16);
      v12 = *(v4 + v10 + 32);
      v13 = *(v4 + v10 + 64);
      v55[3] = *(v4 + v10 + 48);
      v55[4] = v13;
      v55[1] = v11;
      v55[2] = v12;
      v14 = *(v4 + v10 + 80);
      v15 = *(v4 + v10 + 96);
      v16 = *(v4 + v10 + 128);
      v55[7] = *(v4 + v10 + 112);
      v56 = v16;
      v55[5] = v14;
      v55[6] = v15;
      sub_213CE2C28(v55, &v54, &qword_27C8ECC50, &unk_213D971F0);
      sub_213D1E108(v55 + 8);
      sub_213CCE520(v9);
      v17 = *&v55[0];
      v18 = *(&v56 + 1);
      v19 = swift_allocObject();
      *(v19 + 16) = sub_213D184B8;
      *(v19 + 24) = 0;
      sub_213CCE520(v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v5;
      v21 = sub_213CE21EC(v18);
      v23 = v5[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_34;
      }

      v27 = v22;
      if (v5[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = v21;
          sub_213D1C498(&unk_27C8EB170, &qword_213D97208);
          v21 = v37;
          v5 = v54;
          if (v27)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        sub_213D19EE4(v26, isUniquelyReferenced_nonNull_native, &unk_27C8EB170, &qword_213D97208);
        v5 = v54;
        v21 = sub_213CE21EC(v18);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_37;
        }
      }

      if (v27)
      {
        goto LABEL_11;
      }

LABEL_9:
      v29 = *(v19 + 24);
      v30 = v21;
      v31 = (*(v19 + 16))();
      v5[(v30 >> 6) + 8] |= 1 << v30;
      *(v5[6] + 8 * v30) = v18;
      *(v5[7] + 8 * v30) = v31;
      v32 = v5[2];
      v25 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v25)
      {
        goto LABEL_36;
      }

      v21 = v30;
      v5[2] = v33;
LABEL_11:
      v34 = (v5[7] + 8 * v21);
      v35 = v17;
      MEMORY[0x21604EBA0]();
      if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_213D91A1C();
      }

      sub_213D91A6C();

      if (v52 == v7)
      {

        v51 = sub_213D1E15C;
        v50 = sub_213D184B8;
        goto LABEL_20;
      }

      ++v7;
      v10 += 144;
      v9 = sub_213D184B8;
      v8 = sub_213D1E15C;
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_35;
      }
    }
  }

  v50 = 0;
  v51 = 0;
LABEL_20:
  v38 = 0;
  v39 = 1 << *(v5 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v5[8];
  v42 = (v39 + 63) >> 6;
  if (v41)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v43 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v43 >= v42)
    {

      sub_213CCE520(v50);
      return sub_213CCE520(v51);
    }

    v41 = v5[v43 + 8];
    ++v38;
    if (v41)
    {
      v38 = v43;
      do
      {
LABEL_27:
        v44 = (v38 << 9) | (8 * __clz(__rbit64(v41)));
        v45 = *(v5[7] + v44);
        v53 = *(v5[6] + v44);
        if (v45 >> 62)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
          v46 = sub_213D91EAC();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_213D91F6C();
          v46 = v45;
        }

        v41 &= v41 - 1;

        v47 = off_28263B0D0;
        v48 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
        (v47)(v46, v53, v48, &off_28263B0B0);
      }

      while (v41);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for MKOverlayLevel(0);
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D16E44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a1;
  v4 = sub_213D0D144(a1, a2, a3, a4);
  v5 = sub_213D1DEB8(MEMORY[0x277D84F90], &unk_27C8EB1E0, &qword_213D97248);
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v54 = v6 - 1;
    v55 = v4;
    v10 = 32;
    while (1)
    {
      v60 = v8;
      v56 = v10;
      v58 = v7;
      v12 = *(v4 + v10 + 16);
      v11 = *(v4 + v10 + 32);
      v64 = *(v4 + v10);
      v65 = v12;
      v66 = v11;
      v13 = *(v4 + v10 + 96);
      v14 = *(v4 + v10 + 80);
      v15 = *(v4 + v10 + 48);
      v68 = *(v4 + v10 + 64);
      v69 = v14;
      v70 = v13;
      v67 = v15;
      v16 = v65;
      v17 = v66;
      v18 = v14;
      v19 = BYTE8(v14);
      v20 = WORD4(v65);
      sub_213CE2C28(&v64, &v63, &qword_27C8ECC90, &qword_213D97240);

      sub_213D1E6A0(v16, v20);

      sub_213CE2B28(v18, v19);
      sub_213CCE520(v9);
      v21 = v64;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_213D184B8;
      *(v22 + 24) = 0;
      sub_213CCE520(v60);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v5;
      v24 = sub_213CE21EC(v13);
      v26 = v5[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_34;
      }

      v30 = v25;
      if (v5[3] >= v29)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v24;
          sub_213D1C498(&unk_27C8EB1E0, &qword_213D97248);
          v24 = v40;
          v5 = v63;
          if (v30)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        sub_213D19EE4(v29, isUniquelyReferenced_nonNull_native, &unk_27C8EB1E0, &qword_213D97248);
        v5 = v63;
        v24 = sub_213CE21EC(v13);
        if ((v30 & 1) != (v31 & 1))
        {
          goto LABEL_37;
        }
      }

      if (v30)
      {
        goto LABEL_11;
      }

LABEL_9:
      v32 = *(v22 + 24);
      v33 = v24;
      v34 = (*(v22 + 16))();
      v5[(v33 >> 6) + 8] |= 1 << v33;
      *(v5[6] + 8 * v33) = v13;
      *(v5[7] + 8 * v33) = v34;
      v35 = v5[2];
      v28 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v28)
      {
        goto LABEL_36;
      }

      v24 = v33;
      v5[2] = v36;
LABEL_11:
      v37 = (v5[7] + 8 * v24);
      v38 = v21;
      MEMORY[0x21604EBA0]();
      if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_213D91A1C();
      }

      sub_213D91A6C();

      v4 = v55;
      if (v54 == v58)
      {

        v59 = sub_213D1F580;
        v57 = sub_213D184B8;
        goto LABEL_20;
      }

      v7 = v58 + 1;
      v10 = v56 + 104;
      v9 = sub_213D184B8;
      v8 = sub_213D1F580;
      if ((v58 + 1) >= *(v55 + 16))
      {
        goto LABEL_35;
      }
    }
  }

  v57 = 0;
  v59 = 0;
LABEL_20:
  v41 = 0;
  v42 = v5 + 8;
  v43 = 1 << *(v5 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v5[8];
  v46 = (v43 + 63) >> 6;
  v61 = v5;
  if (v45)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v47 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v47 >= v46)
    {

      sub_213CCE520(v57);
      return sub_213CCE520(v59);
    }

    v45 = v42[v47];
    ++v41;
    if (v45)
    {
      v41 = v47;
      do
      {
LABEL_27:
        v48 = (v41 << 9) | (8 * __clz(__rbit64(v45)));
        v49 = *(v5[7] + v48);
        v62 = *(v5[6] + v48);
        if (v49 >> 62)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
          v50 = sub_213D91EAC();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_213D91F6C();
          v50 = v49;
        }

        v45 &= v45 - 1;

        v51 = off_28263B060;
        v52 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        (v51)(v50, v62, v52, &off_28263B040);

        v5 = v61;
      }

      while (v45);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for MKOverlayLevel(0);
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D17334(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a1;
  v4 = sub_213D0B88C(a1, a2, a3, a4);
  v5 = sub_213D1DEB8(MEMORY[0x277D84F90], &qword_27C8EB1B8, &qword_213D97228);
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v52 = v6 - 1;
    v10 = 32;
    while (1)
    {
      v11 = *(v4 + v10);
      v12 = *(v4 + v10 + 16);
      v13 = *(v4 + v10 + 48);
      v55[2] = *(v4 + v10 + 32);
      v55[3] = v13;
      v55[0] = v11;
      v55[1] = v12;
      v14 = *(v4 + v10 + 64);
      v15 = *(v4 + v10 + 80);
      v16 = *(v4 + v10 + 112);
      v55[6] = *(v4 + v10 + 96);
      v56 = v16;
      v55[4] = v14;
      v55[5] = v15;
      sub_213CE2C28(v55, &v54, &qword_27C8EB1B0, &qword_213D97220);
      sub_213D1E4C4(v55 + 8);
      sub_213CCE520(v9);
      v17 = *&v55[0];
      v18 = *(&v56 + 1);
      v19 = swift_allocObject();
      *(v19 + 16) = sub_213D184B8;
      *(v19 + 24) = 0;
      sub_213CCE520(v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v5;
      v21 = sub_213CE21EC(v18);
      v23 = v5[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_34;
      }

      v27 = v22;
      if (v5[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = v21;
          sub_213D1C498(&qword_27C8EB1B8, &qword_213D97228);
          v21 = v37;
          v5 = v54;
          if (v27)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        sub_213D19EE4(v26, isUniquelyReferenced_nonNull_native, &qword_27C8EB1B8, &qword_213D97228);
        v5 = v54;
        v21 = sub_213CE21EC(v18);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_37;
        }
      }

      if (v27)
      {
        goto LABEL_11;
      }

LABEL_9:
      v29 = *(v19 + 24);
      v30 = v21;
      v31 = (*(v19 + 16))();
      v5[(v30 >> 6) + 8] |= 1 << v30;
      *(v5[6] + 8 * v30) = v18;
      *(v5[7] + 8 * v30) = v31;
      v32 = v5[2];
      v25 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v25)
      {
        goto LABEL_36;
      }

      v21 = v30;
      v5[2] = v33;
LABEL_11:
      v34 = (v5[7] + 8 * v21);
      v35 = v17;
      MEMORY[0x21604EBA0]();
      if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_213D91A1C();
      }

      sub_213D91A6C();

      if (v52 == v7)
      {

        v51 = sub_213D1F580;
        v50 = sub_213D184B8;
        goto LABEL_20;
      }

      ++v7;
      v10 += 128;
      v9 = sub_213D184B8;
      v8 = sub_213D1F580;
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_35;
      }
    }
  }

  v50 = 0;
  v51 = 0;
LABEL_20:
  v38 = 0;
  v39 = 1 << *(v5 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v5[8];
  v42 = (v39 + 63) >> 6;
  if (v41)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v43 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v43 >= v42)
    {

      sub_213CCE520(v50);
      return sub_213CCE520(v51);
    }

    v41 = v5[v43 + 8];
    ++v38;
    if (v41)
    {
      v38 = v43;
      do
      {
LABEL_27:
        v44 = (v38 << 9) | (8 * __clz(__rbit64(v41)));
        v45 = *(v5[7] + v44);
        v53 = *(v5[6] + v44);
        if (v45 >> 62)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
          v46 = sub_213D91EAC();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_213D91F6C();
          v46 = v45;
        }

        v41 &= v41 - 1;

        v47 = off_28263B060;
        v48 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        (v47)(v46, v53, v48, &off_28263B040);
      }

      while (v41);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for MKOverlayLevel(0);
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D177D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a1;
  v4 = sub_213D09FA0(a1, a2, a3, a4);
  v5 = sub_213D1DEB8(MEMORY[0x277D84F90], &unk_27C8EB170, &qword_213D97208);
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v52 = v6 - 1;
    v10 = 32;
    while (1)
    {
      v55[0] = *(v4 + v10);
      v11 = *(v4 + v10 + 16);
      v12 = *(v4 + v10 + 32);
      v13 = *(v4 + v10 + 64);
      v55[3] = *(v4 + v10 + 48);
      v55[4] = v13;
      v55[1] = v11;
      v55[2] = v12;
      v14 = *(v4 + v10 + 80);
      v15 = *(v4 + v10 + 96);
      v16 = *(v4 + v10 + 128);
      v55[7] = *(v4 + v10 + 112);
      v56 = v16;
      v55[5] = v14;
      v55[6] = v15;
      sub_213CE2C28(v55, &v54, &qword_27C8ECC50, &unk_213D971F0);
      sub_213D1E108(v55 + 8);
      sub_213CCE520(v9);
      v17 = *&v55[0];
      v18 = *(&v56 + 1);
      v19 = swift_allocObject();
      *(v19 + 16) = sub_213D184B8;
      *(v19 + 24) = 0;
      sub_213CCE520(v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v5;
      v21 = sub_213CE21EC(v18);
      v23 = v5[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_34;
      }

      v27 = v22;
      if (v5[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = v21;
          sub_213D1C498(&unk_27C8EB170, &qword_213D97208);
          v21 = v37;
          v5 = v54;
          if (v27)
          {
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        sub_213D19EE4(v26, isUniquelyReferenced_nonNull_native, &unk_27C8EB170, &qword_213D97208);
        v5 = v54;
        v21 = sub_213CE21EC(v18);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_37;
        }
      }

      if (v27)
      {
        goto LABEL_11;
      }

LABEL_9:
      v29 = *(v19 + 24);
      v30 = v21;
      v31 = (*(v19 + 16))();
      v5[(v30 >> 6) + 8] |= 1 << v30;
      *(v5[6] + 8 * v30) = v18;
      *(v5[7] + 8 * v30) = v31;
      v32 = v5[2];
      v25 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v25)
      {
        goto LABEL_36;
      }

      v21 = v30;
      v5[2] = v33;
LABEL_11:
      v34 = (v5[7] + 8 * v21);
      v35 = v17;
      MEMORY[0x21604EBA0]();
      if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_213D91A1C();
      }

      sub_213D91A6C();

      if (v52 == v7)
      {

        v51 = sub_213D1F580;
        v50 = sub_213D184B8;
        goto LABEL_20;
      }

      ++v7;
      v10 += 144;
      v9 = sub_213D184B8;
      v8 = sub_213D1F580;
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_35;
      }
    }
  }

  v50 = 0;
  v51 = 0;
LABEL_20:
  v38 = 0;
  v39 = 1 << *(v5 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v5[8];
  v42 = (v39 + 63) >> 6;
  if (v41)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v43 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v43 >= v42)
    {

      sub_213CCE520(v50);
      return sub_213CCE520(v51);
    }

    v41 = v5[v43 + 8];
    ++v38;
    if (v41)
    {
      v38 = v43;
      do
      {
LABEL_27:
        v44 = (v38 << 9) | (8 * __clz(__rbit64(v41)));
        v45 = *(v5[7] + v44);
        v53 = *(v5[6] + v44);
        if (v45 >> 62)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
          v46 = sub_213D91EAC();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_213D91F6C();
          v46 = v45;
        }

        v41 &= v41 - 1;

        v47 = off_28263B060;
        v48 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
        (v47)(v46, v53, v48, &off_28263B040);
      }

      while (v41);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for MKOverlayLevel(0);
  result = sub_213D91F8C();
  __break(1u);
  return result;
}

uint64_t sub_213D17C74(unint64_t a1, uint64_t *a2)
{
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_213D91E1C();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_213D91EBC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21604EF80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = *a2;
      if (!swift_dynamicCastObjCProtocolConditional())
      {

        return 0;
      }

      sub_213D91DEC();
      v10 = *(v13 + 16);
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_213D91EBC();
    sub_213D91E1C();
  }

  return v13;
}

uint64_t sub_213D17DE0(unint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_213D91EBC();
    sub_213D91E1C();
    v3 = sub_213D91EBC();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_213D91E1C();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21604EF80](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for MapBridgingMarker();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_213D91DEC();
        v7 = *(v9 + 16);
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

unint64_t sub_213D17F50(unint64_t a1)
{
  v2 = sub_213D17C74(a1, &protocolRef_MKOverlay);
  if (v2)
  {
    v3 = v2;
    v4 = off_28263B0D8;
    v5 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
    v4(v3, v5, &off_28263B0B0);
  }

  result = sub_213D17C74(a1, &protocolRef_MKAnnotation);
  if (result)
  {
    v7 = result;
    v33 = MEMORY[0x277D84F90];
    v8 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_56;
    }

    v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
    v10 = MEMORY[0x277D84F90];
    if (!v9)
    {
      goto LABEL_22;
    }

    v11 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21604EF80](v11, v7);
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          v10 = MEMORY[0x277D84F90];
LABEL_22:

          v16 = off_28263B0C0;
          v31 = sub_213CE2B34(0, &qword_27C8EB168, 0x277CD4FA0);
          v16(v7, v31, &off_28263B0B0);
          v33 = v10;
          if (!v9)
          {
            v22 = v10;
            goto LABEL_37;
          }

          v17 = 0;
          while (1)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21604EF80](v17, v7);
              v19 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                goto LABEL_34;
              }
            }

            else
            {
              if (v17 >= *(v8 + 16))
              {
                goto LABEL_53;
              }

              v18 = *(v7 + 8 * v17 + 32);
              swift_unknownObjectRetain();
              v19 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
LABEL_34:
                __break(1u);
LABEL_35:
                v22 = v33;
                v10 = MEMORY[0x277D84F90];
LABEL_37:

                v7 = sub_213D17DE0(v22);

                if (v7)
                {
                  v33 = v10;
                  if (v7 >> 62)
                  {
                    v23 = sub_213D91EBC();
                  }

                  else
                  {
                    v23 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v24 = 0;
                  v8 = v7 & 0xC000000000000001;
                  v32 = MEMORY[0x277D84F90];
                  while (v23 != v24)
                  {
                    if (v8)
                    {
                      v25 = MEMORY[0x21604EF80](v24, v7);
                    }

                    else
                    {
                      if (v24 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_55;
                      }

                      v25 = *(v7 + 8 * v24 + 32);
                    }

                    v26 = v25;
                    v27 = v24 + 1;
                    if (__OFADD__(v24, 1))
                    {
                      goto LABEL_54;
                    }

                    v28 = *&v25[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem];
                    v29 = v28;

                    ++v24;
                    if (v28)
                    {
                      MEMORY[0x21604EBA0]();
                      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        v30 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        sub_213D91A1C();
                      }

                      sub_213D91A6C();
                      v32 = v33;
                      v24 = v27;
                    }
                  }

                  off_28263B0A0(v32, v31, &off_28263B080);
                }

                return result;
              }
            }

            type metadata accessor for MapBridgingMarker();
            v20 = swift_dynamicCastClass();
            if (v20 && (*(v20 + OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature) & 1) != 0)
            {
              sub_213D91DEC();
              v21 = *(v33 + 16);
              sub_213D91E2C();
              sub_213D91E3C();
              sub_213D91DFC();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            ++v17;
            if (v19 == v9)
            {
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
        if (v11 >= *(v8 + 16))
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          v9 = sub_213D91EBC();
          goto LABEL_8;
        }

        v13 = *(v7 + 8 * v11 + 32);
        swift_unknownObjectRetain();
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_20;
        }
      }

      type metadata accessor for MapBridgingMarker();
      v15 = swift_dynamicCastClass();
      if (v15 && *(v15 + OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature) == 1)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_213D91DEC();
        v12 = *(v33 + 16);
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
      }

      ++v11;
      if (v14 == v9)
      {
        goto LABEL_21;
      }
    }
  }

  return result;
}

uint64_t sub_213D183BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_213D18410(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_213D903BC();
      sub_213D91DEC();
      v6 = *(v7 + 16);
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_213D184C4@<X0>(char *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v67) = a3;
  v72 = a2;
  v70 = a4;
  v6 = type metadata accessor for MarkerAnnotationViewModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MapContentList.Item.Content(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ResolvedMarker();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for MapContentList.Item(0);
  v19 = *(v68 + 24);
  v71 = a1;
  sub_213D1E9F8(&a1[v19], v14, type metadata accessor for MapContentList.Item.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v69 = v6;
    v65 = v7;
    v66 = v4;
    sub_213D1E884(v14, v18, type metadata accessor for ResolvedMarker);
    v20 = v15[8];
    v21 = sub_213D90CCC();
    v22 = v15;
    if (v21)
    {
      v23 = v21;
      v24 = [v21 string];

      v25 = sub_213D9193C();
      v63 = v26;
      v64 = v25;
    }

    else
    {
      v63 = 0;
      v64 = 0;
    }

    v28 = sub_213D90CEC();
    if (v28)
    {
      v29 = v28;
      v30 = [v28 string];

      v31 = sub_213D9193C();
      v61 = v32;
      v62 = v31;
    }

    else
    {
      v61 = 0;
      v62 = 0;
    }

    v33 = *(v68 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB240, &qword_213D972A0);
    sub_213CEDCEC(&qword_27C8EB248, &qword_27C8EB240, &qword_213D972A0);
    v68 = v33;
    sub_213D9101C();
    if (v72)
    {
      v34 = 1;
    }

    else
    {
      v34 = v67 & (v73 ^ 1);
    }

    v72 = v34;
    v67 = *v71;

    v35 = sub_213D90CDC();
    if (v35)
    {
      v36 = v35;
      v37 = [v35 &off_278172178];

      v38 = sub_213D9193C();
      v59 = v39;
      v60 = v38;
    }

    else
    {
      v59 = 0;
      v60 = 0;
    }

    v40 = *&v18[v15[9]];
    v41 = v18[v15[10]];
    v42 = v40;
    v43 = sub_213D90CBC();
    v44 = *(v18 + 8);
    v45 = *v18;
    v46 = *(v18 + 1);
    v47 = v18[18];
    v48 = *(v69 + 68);
    v49 = sub_213D9100C();
    (*(*(v49 - 8) + 16))(&v10[v48], &v71[v68], v49);
    v51 = v59;
    v50 = v60;
    *v10 = v67;
    *(v10 + 1) = v50;
    v52 = v63;
    v53 = v64;
    *(v10 + 2) = v51;
    *(v10 + 3) = v53;
    *(v10 + 4) = v52;
    *(v10 + 5) = v40;
    v10[48] = v41;
    v54 = v61;
    *(v10 + 7) = v62;
    *(v10 + 8) = v54;
    *(v10 + 9) = v43;
    *(v10 + 40) = v44;
    *(v10 + 11) = v45;
    *(v10 + 12) = v46;
    v10[104] = v72 & 1;
    v10[105] = v47;
    *(v10 + 14) = 0;
    if (*&v18[v22[11]])
    {
      sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);

      v55 = sub_213D91C3C();
      sub_213D1F330(v18, type metadata accessor for ResolvedMarker);
      *(v10 + 14) = v55;
    }

    else
    {
      sub_213D1F330(v18, type metadata accessor for ResolvedMarker);
    }

    v56 = v65;
    v57 = v70;
    sub_213D1E9F8(v10, v70, type metadata accessor for MarkerAnnotationViewModel);
    (*(v56 + 56))(v57, 0, 1, v69);
    return sub_213D1F330(v10, type metadata accessor for MarkerAnnotationViewModel);
  }

  else
  {
    sub_213D1F330(v14, type metadata accessor for MapContentList.Item.Content);
    return (*(v7 + 56))(v70, 1, 1, v6);
  }
}

uint64_t sub_213D18A48(uint64_t a1)
{
  v2 = sub_213D9089C();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_213D90B2C();
}

uint64_t sub_213D18B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_213CE23F4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_213D1C790();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for UserAnnotationViewModel(0);
    v20 = *(v13 - 8);
    sub_213D1E884(v12 + *(v20 + 72) * v8, a2, type metadata accessor for UserAnnotationViewModel);
    sub_213D1B698(v8, v11, type metadata accessor for UserAnnotationViewModel);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for UserAnnotationViewModel(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_213D18C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_213CE2448(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_213D1C9C8();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for MarkerAnnotationViewModel(0);
    v20 = *(v13 - 8);
    sub_213D1E884(v12 + *(v20 + 72) * v8, a2, type metadata accessor for MarkerAnnotationViewModel);
    sub_213D1B698(v8, v11, type metadata accessor for MarkerAnnotationViewModel);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for MarkerAnnotationViewModel(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_213D18E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_213CE249C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_213D1CC00();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for CustomAnnotationViewModel(0);
    v20 = *(v13 - 8);
    sub_213D1E884(v12 + *(v20 + 72) * v8, a2, type metadata accessor for CustomAnnotationViewModel);
    sub_213D1B698(v8, v11, type metadata accessor for CustomAnnotationViewModel);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for CustomAnnotationViewModel(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_213D18F84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2E0, &qword_213D97330);
  result = sub_213D91EDC();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_213D91FAC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_213D191F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2C0, &qword_213D97310);
  result = sub_213D91EDC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = 8 * (v18 | (v9 << 6));
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + v21;
      if (a2)
      {
        sub_213CE2A78(v23, v34);
      }

      else
      {
        sub_213CE2A1C(v23, v34);
      }

      v24 = *(v8 + 40);
      sub_213D91FBC();
      sub_213D9179C();
      result = sub_213D91FFC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 8 * v16;
      *(*(v8 + 48) + v17) = v22;
      result = sub_213CE2A78(v34, *(v8 + 56) + v17);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_213D19490(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2C8, &qword_213D97318);
  v37 = a2;
  result = sub_213D91EDC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_213CEB34C(v23, v38);
      }

      else
      {
        sub_213D1F124(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_213D9193C();
      sub_213D91FBC();
      sub_213D9195C();
      v26 = sub_213D91FFC();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_213CEB34C(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_213D19760(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB1A0, &qword_213D97218);
  v52 = a2;
  result = sub_213D91EDC();
  v8 = result;
  if (*(v5 + 16))
  {
    v50 = v3;
    v51 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      if (v52)
      {
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = *(v5 + 56) + 136 * v21;
        v53 = *v23;
        v24 = *(v23 + 24);
        v54 = v24;
        v55 = *(v23 + 8);
        v25 = *(v23 + 40);
        v26 = *(v23 + 56);
        v27 = *(v23 + 64);
        v28 = *(v23 + 72);
        v56 = *(v23 + 48);
        v57 = *(v23 + 80);
        v29 = *(v23 + 88);
        v30 = *(v23 + 96);
        v31 = *(v23 + 104);
        v58 = v30;
        v59 = *(v23 + 112);
        v32 = *(v23 + 120);
        v60 = *(v23 + 128);
      }

      else
      {
        v33 = *(*(v5 + 48) + 8 * v21);
        v34 = *(v5 + 56) + 136 * v21;
        *v62 = *v34;
        v35 = *(v34 + 64);
        v37 = *(v34 + 16);
        v36 = *(v34 + 32);
        v63 = *(v34 + 48);
        v64 = v35;
        *&v62[16] = v37;
        *&v62[32] = v36;
        v39 = *(v34 + 96);
        v38 = *(v34 + 112);
        v40 = *(v34 + 80);
        v68 = *(v34 + 128);
        v66 = v39;
        v67 = v38;
        v65 = v40;
        v60 = v68;
        v32 = BYTE8(v38);
        v58 = v39;
        v59 = v38;
        v31 = BYTE8(v39);
        v26 = *(&v63 + 1);
        v28 = *(&v64 + 1);
        v27 = v64;
        v29 = *(&v40 + 1);
        v56 = v63;
        v57 = v40;
        v54 = *&v62[24];
        v55 = *&v62[8];
        v25 = v62[40];
        v53 = *v62;
        v22 = v33;
        sub_213D1E18C(v62, v61);
      }

      v41 = *(v8 + 40);
      result = sub_213D91C4C();
      v42 = -1 << *(v8 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v15 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v15 + 8 * v44);
          if (v48 != -1)
          {
            v16 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v43) & ~*(v15 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v62[0] = v25;
      v61[0] = v31;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 136 * v16;
      *v17 = v53;
      *(v17 + 8) = v55;
      *(v17 + 24) = v54;
      *(v17 + 40) = v25;
      *(v17 + 48) = v56;
      *(v17 + 56) = v26;
      *(v17 + 64) = v27;
      *(v17 + 72) = v28;
      *(v17 + 80) = v57;
      *(v17 + 88) = v29;
      *(v17 + 96) = v58;
      *(v17 + 104) = v31;
      *(v17 + 112) = v59;
      *(v17 + 120) = v32;
      *(v17 + 128) = v60;
      ++*(v8 + 16);
      v5 = v51;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v52)
    {
      v49 = 1 << *(v5 + 32);
      if (v49 >= 64)
      {
        bzero(v10, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v49;
      }

      *(v5 + 16) = 0;
    }

    v3 = v50;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_213D19B34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB1D0, &qword_213D97238);
  v49 = a2;
  result = sub_213D91EDC();
  v8 = result;
  if (*(v5 + 16))
  {
    v48 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      if (v49)
      {
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = *(v5 + 56) + 120 * v21;
        v51 = *v23;
        v52 = *(v23 + 8);
        v50 = *(v23 + 24);
        v24 = *(v23 + 40);
        v25 = *(v23 + 48);
        v26 = *(v23 + 56);
        v27 = *(v23 + 64);
        v28 = *(v23 + 72);
        v53 = v27;
        v54 = *(v23 + 80);
        v29 = *(v23 + 88);
        v30 = *(v23 + 104);
        v55 = *(v23 + 112);
        v56 = *(v23 + 96);
      }

      else
      {
        v31 = *(*(v5 + 48) + 8 * v21);
        v32 = *(v5 + 56) + 120 * v21;
        v34 = *(v32 + 32);
        v33 = *(v32 + 48);
        v35 = *(v32 + 16);
        *v58 = *v32;
        *&v58[16] = v35;
        *&v58[32] = v34;
        v37 = *(v32 + 80);
        v36 = *(v32 + 96);
        v38 = *(v32 + 64);
        v63 = *(v32 + 112);
        v61 = v37;
        v62 = v36;
        v59 = v33;
        v60 = v38;
        v55 = v63;
        v56 = v36;
        v30 = BYTE8(v36);
        v29 = BYTE8(v37);
        v24 = *&v58[40];
        v26 = *(&v33 + 1);
        v25 = v33;
        v53 = v38;
        v54 = v37;
        v28 = *(&v38 + 1);
        v52 = *&v58[8];
        v50 = *&v58[24];
        v51 = *v58;
        v22 = v31;
        sub_213D1E518(v58, v57);
      }

      v39 = *(v8 + 40);
      result = sub_213D91C4C();
      v40 = -1 << *(v8 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v15 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v15 + 8 * v42);
          if (v46 != -1)
          {
            v16 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v41) & ~*(v15 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v58[0] = v29;
      v57[0] = v30;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 120 * v16;
      *v17 = v51;
      *(v17 + 8) = v52;
      *(v17 + 24) = v50;
      *(v17 + 40) = v24;
      *(v17 + 48) = v25;
      *(v17 + 56) = v26;
      *(v17 + 64) = v53;
      *(v17 + 72) = v28;
      *(v17 + 80) = v54;
      *(v17 + 88) = v29;
      *(v17 + 96) = v56;
      *(v17 + 104) = v30;
      *(v17 + 112) = v55;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_36;
    }

    v47 = 1 << *(v5 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero((v5 + 64), ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v47;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_213D19EE4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = a2;
  result = sub_213D91EDC();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_213D91FBC();
      MEMORY[0x21604F190](v23);
      result = sub_213D91FFC();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_213D1A16C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB200, &qword_213D97258);
  v46 = a2;
  result = sub_213D91EDC();
  v8 = result;
  if (*(v5 + 16))
  {
    v45 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      if (v46)
      {
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = *(v5 + 56) + 96 * v21;
        v24 = *v23;
        v47 = *(v23 + 16);
        v48 = *(v23 + 8);
        v49 = *(v23 + 24);
        v25 = *(v23 + 32);
        v26 = *(v23 + 40);
        v27 = *(v23 + 48);
        v28 = *(v23 + 64);
        v52 = *(v23 + 72);
        v29 = *(v23 + 80);
        v50 = *(v23 + 56);
        v51 = *(v23 + 88);
      }

      else
      {
        v30 = *(*(v5 + 48) + 8 * v21);
        v31 = (*(v5 + 56) + 96 * v21);
        v33 = v31[2];
        v32 = v31[3];
        v34 = v31[5];
        v57 = v31[4];
        v58 = v34;
        v55 = v33;
        v56 = v32;
        v35 = v31[1];
        v54[0] = *v31;
        v54[1] = v35;
        v51 = *(&v34 + 1);
        v52 = *(&v57 + 1);
        v29 = v34;
        v26 = *(&v55 + 1);
        v25 = v55;
        v27 = v32;
        v28 = v57;
        v49 = *(&v35 + 1);
        v50 = *(&v32 + 1);
        v47 = v35;
        v48 = *(&v54[0] + 1);
        v24 = *&v54[0];
        v22 = v30;
        sub_213D1E6AC(v54, v53);
      }

      v36 = *(v8 + 40);
      result = sub_213D91C4C();
      v37 = -1 << *(v8 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v15 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v15 + 8 * v39);
          if (v43 != -1)
          {
            v16 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v38) & ~*(v15 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v54[0]) = v29;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 96 * v16;
      *v17 = v24;
      *(v17 + 8) = v48;
      *(v17 + 16) = v47;
      *(v17 + 24) = v49;
      *(v17 + 32) = v25;
      *(v17 + 40) = v26;
      *(v17 + 48) = v27;
      *(v17 + 56) = v50;
      *(v17 + 64) = v28;
      *(v17 + 72) = v52;
      *(v17 + 80) = v29;
      *(v17 + 88) = v51;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v46)
    {
      v44 = 1 << *(v5 + 32);
      if (v44 >= 64)
      {
        bzero((v5 + 64), ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v44;
      }

      *(v5 + 16) = 0;
    }

    v3 = v45;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_213D1A4D8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UserAnnotationViewModel(0);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB238, &qword_213D97298);
  v42 = a2;
  result = sub_213D91EDC();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v42)
      {
        sub_213D1E884(v28, v9, type metadata accessor for UserAnnotationViewModel);
      }

      else
      {
        sub_213D1E9F8(v28, v9, type metadata accessor for UserAnnotationViewModel);
        v29 = v26;
      }

      v30 = *(v13 + 40);
      result = sub_213D91C4C();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_213D1E884(v9, *(v13 + 56) + v27 * v21, type metadata accessor for UserAnnotationViewModel);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_213D1A820(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for MarkerAnnotationViewModel(0);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB280, &qword_213D972D8);
  v42 = a2;
  result = sub_213D91EDC();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v42)
      {
        sub_213D1E884(v28, v9, type metadata accessor for MarkerAnnotationViewModel);
      }

      else
      {
        sub_213D1E9F8(v28, v9, type metadata accessor for MarkerAnnotationViewModel);
        v29 = v26;
      }

      v30 = *(v13 + 40);
      result = sub_213D91C4C();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_213D1E884(v9, *(v13 + 56) + v27 * v21, type metadata accessor for MarkerAnnotationViewModel);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_213D1AB68(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CustomAnnotationViewModel(0);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2B0, &qword_213D97308);
  v42 = a2;
  result = sub_213D91EDC();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v42)
      {
        sub_213D1E884(v28, v9, type metadata accessor for CustomAnnotationViewModel);
      }

      else
      {
        sub_213D1E9F8(v28, v9, type metadata accessor for CustomAnnotationViewModel);
        v29 = v26;
      }

      v30 = *(v13 + 40);
      result = sub_213D91C4C();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_213D1E884(v9, *(v13 + 56) + v27 * v21, type metadata accessor for CustomAnnotationViewModel);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_213D1AEB0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_213D91EDC();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v23 = __clz(__rbit64(v15));
      v42 = (v15 - 1) & v15;
LABEL_18:
      v26 = v23 | (v11 << 6);
      v27 = *(*(v7 + 48) + 8 * v26);
      v28 = *(*(v7 + 56) + 8 * v26);
      if ((v41 & 1) == 0)
      {

        v29 = v28;
      }

      v30 = *(v10 + 40);
      sub_213D91FBC();
      MEMORY[0x21604F190](*(v27 + 16));
      v31 = *(v27 + 16);
      if (v31)
      {
        v32 = v27 + 32;
        do
        {
          sub_213D1E468(v32, v48);
          sub_213D1E468(v48, v45);
          if (v47)
          {
            v43[0] = v45[0];
            v43[1] = v45[1];
            v44 = v46;
            MEMORY[0x21604F190](1);
            sub_213D91D3C();
            sub_213CE2B7C(v43);
          }

          else
          {
            v33 = *&v45[0];
            MEMORY[0x21604F190](0);
            MEMORY[0x21604F190](v33);
          }

          sub_213CDF5B8(v48);
          v32 += 48;
          --v31;
        }

        while (v31);
      }

      result = sub_213D91FFC();
      v18 = -1 << *(v10 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v17 + 8 * (v19 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v18) >> 6;
        v22 = v28;
        while (++v20 != v35 || (v34 & 1) == 0)
        {
          v36 = v20 == v35;
          if (v20 == v35)
          {
            v20 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v20);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v20 << 6);
            goto LABEL_10;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v17 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v28;
LABEL_10:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v10 + 48) + 8 * v21) = v27;
      *(*(v10 + 56) + 8 * v21) = v22;
      ++*(v10 + 16);
      v7 = v40;
      v15 = v42;
    }

    v24 = v11;
    while (1)
    {
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v12[v11];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v42 = (v25 - 1) & v25;
        goto LABEL_18;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_41;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_41:
  *v5 = v10;
  return result;
}

void sub_213D1B1E8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_213D91CDC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_213D91C4C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 136 * v3);
          v20 = (v18 + 136 * v6);
          if (v3 != v6 || v19 >= v20 + 136)
          {
            memmove(v19, v20, 0x88uLL);
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_213D1B378(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_213D91CDC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_213D91C4C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 120 * v3);
          v20 = (v18 + 120 * v6);
          if (v3 != v6 || v19 >= v20 + 120)
          {
            memmove(v19, v20, 0x78uLL);
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_213D1B508(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_213D91CDC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_213D91C4C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 96 * v3);
          v20 = (v18 + 96 * v6);
          if (v3 != v6 || v19 >= v20 + 96)
          {
            memmove(v19, v20, 0x60uLL);
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_213D1B698(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_213D91CDC() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v7);
      v13 = sub_213D91C4C();

      v14 = v13 & v9;
      if (v4 >= v10)
      {
        if (v14 < v10 || v4 < v14)
        {
          goto LABEL_5;
        }
      }

      else if (v14 < v10 && v4 < v14)
      {
        goto LABEL_5;
      }

      v17 = *(a2 + 48);
      v18 = (v17 + 8 * v4);
      v19 = (v17 + 8 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      v23 = v20 + v21 * v4;
      v24 = v21 * v7;
      v25 = v20 + v21 * v7 + v21;
      if (v22 < v24 || v23 >= v25)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v24)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

uint64_t sub_213D1B868(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_213D91CDC() + 1) & ~v5;
    v26 = v4;
    do
    {
      v9 = *(v2 + 40);
      v10 = v2;
      v11 = *(*(v2 + 48) + 8 * v6);
      sub_213D91FBC();
      MEMORY[0x21604F190](*(v11 + 16));
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = v11 + 32;

        do
        {
          sub_213D1E468(v13, v32);
          sub_213D1E468(v32, v29);
          if (v31)
          {
            v27[0] = v29[0];
            v27[1] = v29[1];
            v28 = v30;
            MEMORY[0x21604F190](1);
            sub_213D91D3C();
            sub_213CE2B7C(v27);
          }

          else
          {
            v14 = *&v29[0];
            MEMORY[0x21604F190](0);
            MEMORY[0x21604F190](v14);
          }

          sub_213CDF5B8(v32);
          v13 += 48;
          --v12;
        }

        while (v12);
      }

      else
      {
      }

      v15 = sub_213D91FFC();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        v4 = v26;
        v2 = v10;
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v26;
        v2 = v10;
        if (v16 >= v8)
        {
          goto LABEL_17;
        }
      }

      if (v3 >= v16)
      {
LABEL_17:
        v17 = *(v2 + 48);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(v2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(v2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v25;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t sub_213D1BAC8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_213D91CDC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_213D91FBC();
      sub_213D9179C();
      result = sub_213D91FFC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v3);
      v14 = (v12 + 8 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      result = v15 + 8 * v3;
      if (v3 < v6 || result >= v15 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_213D1BC7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2E0, &qword_213D97330);
  v2 = *v0;
  v3 = sub_213D91ECC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_213D1BDD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2C0, &qword_213D97310);
  v2 = *v0;
  v3 = sub_213D91ECC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_213CE2A1C(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_213CE2A78(v19, *(v4 + 56) + v17);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_213D1BF54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2C8, &qword_213D97318);
  v2 = *v0;
  v3 = sub_213D91ECC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_213D1F124(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_213CEB34C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_213D1C0D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB1A0, &qword_213D97218);
  v2 = *v0;
  v3 = sub_213D91ECC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_213D1E18C(&v34, v33))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = *(v2 + 56) + 136 * v16;
      v20 = *(v18 + 16);
      v19 = *(v18 + 32);
      v21 = *(v18 + 64);
      v37 = *(v18 + 48);
      v38 = v21;
      v23 = *(v18 + 96);
      v22 = *(v18 + 112);
      v24 = *(v18 + 80);
      v42 = *(v18 + 128);
      v40 = v23;
      v41 = v22;
      v39 = v24;
      v34 = *v18;
      v35 = v20;
      v36 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v25 = *(v4 + 56) + 136 * v16;
      *v25 = v34;
      v26 = v35;
      v27 = v36;
      v28 = v38;
      *(v25 + 48) = v37;
      *(v25 + 64) = v28;
      *(v25 + 16) = v26;
      *(v25 + 32) = v27;
      v29 = v39;
      v30 = v40;
      v31 = v41;
      *(v25 + 128) = v42;
      *(v25 + 96) = v30;
      *(v25 + 112) = v31;
      *(v25 + 80) = v29;
      v32 = v17;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_213D1C2B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB1D0, &qword_213D97238);
  v2 = *v0;
  v3 = sub_213D91ECC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_213D1E518(&v35, v34))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 8 * v16;
      v18 = *(*(v2 + 48) + 8 * v16);
      v16 *= 120;
      v19 = *(v2 + 56) + v16;
      v21 = *(v19 + 80);
      v20 = *(v19 + 96);
      v22 = *(v19 + 64);
      v42 = *(v19 + 112);
      v40 = v21;
      v41 = v20;
      v39 = v22;
      v24 = *v19;
      v23 = *(v19 + 16);
      v25 = *(v19 + 48);
      v37 = *(v19 + 32);
      v38 = v25;
      v35 = v24;
      v36 = v23;
      *(*(v4 + 48) + v17) = v18;
      v26 = *(v4 + 56) + v16;
      v27 = v35;
      v28 = v36;
      v29 = v38;
      *(v26 + 32) = v37;
      *(v26 + 48) = v29;
      *v26 = v27;
      *(v26 + 16) = v28;
      v30 = v39;
      v31 = v40;
      v32 = v41;
      *(v26 + 112) = v42;
      *(v26 + 80) = v31;
      *(v26 + 96) = v32;
      *(v26 + 64) = v30;
      v33 = v18;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_213D1C498(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_213D91ECC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_213D1C5E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB200, &qword_213D97258);
  v2 = *v0;
  v3 = sub_213D91ECC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 96 * v17);
        v20 = v19[2];
        v21 = v19[3];
        v22 = v19[5];
        v35 = v19[4];
        v36 = v22;
        v34 = v21;
        v23 = v19[1];
        v31 = *v19;
        v32 = v23;
        v33 = v20;
        *(*(v4 + 48) + 8 * v17) = v18;
        v24 = (*(v4 + 56) + 96 * v17);
        v25 = v32;
        *v24 = v31;
        v24[1] = v25;
        v26 = v33;
        v27 = v34;
        v28 = v36;
        v24[4] = v35;
        v24[5] = v28;
        v24[2] = v26;
        v24[3] = v27;
        v29 = v18;
        result = sub_213D1E6AC(&v31, &v30);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_213D1C790()
{
  v1 = v0;
  v2 = type metadata accessor for UserAnnotationViewModel(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB238, &qword_213D97298);
  v6 = *v0;
  v7 = sub_213D91ECC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_213D1E9F8(*(v6 + 56) + v23, v5, type metadata accessor for UserAnnotationViewModel);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_213D1E884(v5, *(v8 + 56) + v23, type metadata accessor for UserAnnotationViewModel);
        result = v22;
      }

      while (v16);
    }

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

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_213D1C9C8()
{
  v1 = v0;
  v2 = type metadata accessor for MarkerAnnotationViewModel(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB280, &qword_213D972D8);
  v6 = *v0;
  v7 = sub_213D91ECC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_213D1E9F8(*(v6 + 56) + v23, v5, type metadata accessor for MarkerAnnotationViewModel);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_213D1E884(v5, *(v8 + 56) + v23, type metadata accessor for MarkerAnnotationViewModel);
        result = v22;
      }

      while (v16);
    }

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

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_213D1CC00()
{
  v1 = v0;
  v2 = type metadata accessor for CustomAnnotationViewModel(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2B0, &qword_213D97308);
  v6 = *v0;
  v7 = sub_213D91ECC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_213D1E9F8(*(v6 + 56) + v23, v5, type metadata accessor for CustomAnnotationViewModel);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_213D1E884(v5, *(v8 + 56) + v23, type metadata accessor for CustomAnnotationViewModel);
        result = v22;
      }

      while (v16);
    }

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

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_213D1CE38(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_213D91ECC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;

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

      v18 = *(v4 + 64 + 8 * v10);
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

uint64_t sub_213D1CF88@<X0>(uint64_t a1@<X3>, _DWORD *a2@<X8>)
{
  sub_213CDB9F8();
  v4 = *(a1 + 8);
  result = sub_213D903EC();
  *a2 = result;
  return result;
}

uint64_t sub_213D1D01C@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for StaticMapBridgingView(0);
  sub_213CDB9F8();
  v5 = *(v4 + 8);
  result = sub_213D903EC();
  *a1 = result;
  return result;
}

uint64_t sub_213D1D0FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_213D1D144()
{
  if (!qword_27C8EAE30[0])
  {
    v0 = type metadata accessor for StaticMap.NetworkUsageMode();
    if (!v1)
    {
      atomic_store(v0, qword_27C8EAE30);
    }
  }
}

void sub_213D1D1A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_213D1D568();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213D1D234(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_213D1D388(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_213D1D568()
{
  if (!qword_27C8EAEB8)
  {
    sub_213CE2B34(255, qword_27C8EAEC0, 0x277CBFC10);
    v0 = sub_213D91C7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8EAEB8);
    }
  }
}

uint64_t sub_213D1D644()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213D1D694(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213D1D6B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

void sub_213D1D710()
{
  sub_213D1D568();
  if (v0 <= 0x3F)
  {
    sub_213D1D860(319, &qword_27C8EB080, MEMORY[0x277CDDE20]);
    if (v1 <= 0x3F)
    {
      sub_213D1D860(319, &qword_27C8EB088, MEMORY[0x277CDFAA0]);
      if (v2 <= 0x3F)
      {
        sub_213D1D8B4();
        if (v3 <= 0x3F)
        {
          sub_213D1D860(319, &unk_27C8EB098, sub_213D1D144);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213D1D860(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213D9052C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_213D1D8B4()
{
  if (!qword_27C8EB090)
  {
    v0 = sub_213D9052C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8EB090);
    }
  }
}

uint64_t sub_213D1D968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v11);
  v18 = &v22[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v13);
  sub_213D9042C();
  (*(v9 + 8))(v13, a5);
  v24 = a5;
  v25 = a6;
  sub_213D48E14(v18, sub_213D1F2C8, v23, a4, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v19);
  result = (*(v15 + 8))(v18, a4);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t (*sub_213D1DB5C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x21604EF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_213D1DBDC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_213D1DBE4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x21604EF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_213D1F588;
  }

  __break(1u);
  return result;
}