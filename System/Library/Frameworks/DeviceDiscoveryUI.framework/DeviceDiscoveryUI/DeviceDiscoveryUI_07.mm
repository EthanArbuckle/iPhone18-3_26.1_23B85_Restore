uint64_t sub_23810C19C()
{
  v1 = sub_23815459C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1 || *v0 > 2)
    {
      v6 = [objc_opt_self() systemGray2Color];
      sub_23815465C();
      v7 = sub_23815460C();

      return v7;
    }

    *v0;
    (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0]);
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0]);
  }

  return sub_23815464C();
}

uint64_t sub_23810C384()
{
  v1 = sub_23815459C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  if (!*(v0 + 8))
  {
    goto LABEL_5;
  }

  if (*(v0 + 8) != 1 && *v0 <= 2)
  {
    *v0;
LABEL_5:
    (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
    return sub_23815464C();
  }

  v6 = [objc_opt_self() labelColor];

  return sub_23815465C();
}

uint64_t AirDropUIButtonStyle.init(style:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t AirDropUIButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v270 = a1;
  v275 = a2;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED160, &qword_23815DDA0);
  v3 = *(*(v232 - 8) + 64);
  MEMORY[0x28223BE20](v232);
  v235 = &v223 - v4;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED168, &qword_23815DDA8);
  v5 = *(*(v233 - 8) + 64);
  MEMORY[0x28223BE20](v233);
  v237 = &v223 - v6;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED170, &qword_23815DDB0);
  v7 = *(*(v274 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v274);
  v236 = &v223 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v238 = &v223 - v10;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED178, &qword_23815DDB8);
  v11 = *(*(v229 - 8) + 64);
  MEMORY[0x28223BE20](v229);
  v231 = &v223 - v12;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED180, &qword_23815DDC0);
  v13 = *(*(v224 - 8) + 64);
  MEMORY[0x28223BE20](v224);
  v223 = &v223 - v14;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED188, &qword_23815DDC8);
  v15 = *(*(v261 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v261);
  v230 = &v223 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v234 = &v223 - v18;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED190, &qword_23815DDD0);
  v19 = *(*(v259 - 8) + 64);
  MEMORY[0x28223BE20](v259);
  v260 = &v223 - v20;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED198, &qword_23815DDD8);
  v21 = *(*(v268 - 8) + 64);
  MEMORY[0x28223BE20](v268);
  v262 = &v223 - v22;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1A0, &qword_23815DDE0);
  v23 = *(*(v252 - 8) + 64);
  MEMORY[0x28223BE20](v252);
  v253 = &v223 - v24;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1A8, &qword_23815DDE8);
  v25 = *(*(v256 - 8) + 64);
  MEMORY[0x28223BE20](v256);
  v255 = &v223 - v26;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1B0, &qword_23815DDF0);
  v27 = *(*(v258 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v258);
  v254 = &v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v257 = &v223 - v30;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1B8, &qword_23815DDF8);
  v31 = *(*(v269 - 8) + 64);
  MEMORY[0x28223BE20](v269);
  v33 = &v223 - v32;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1C0, &qword_23815DE00);
  v34 = *(*(v263 - 8) + 64);
  MEMORY[0x28223BE20](v263);
  v241 = &v223 - v35;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1C8, &qword_23815DE08);
  v36 = *(*(v240 - 8) + 64);
  MEMORY[0x28223BE20](v240);
  v242 = &v223 - v37;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1D0, &qword_23815DE10);
  v38 = *(*(v239 - 8) + 64);
  MEMORY[0x28223BE20](v239);
  v244 = &v223 - v39;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1D8, &qword_23815DE18);
  v40 = *(*(v243 - 8) + 64);
  MEMORY[0x28223BE20](v243);
  v246 = &v223 - v41;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1E0, &qword_23815DE20);
  v42 = *(*(v251 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v251);
  v245 = &v223 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v247 = &v223 - v45;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1E8, &qword_23815DE28);
  v46 = *(*(v272 - 8) + 64);
  MEMORY[0x28223BE20](v272);
  v273 = &v223 - v47;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1F0, &qword_23815DE30);
  v48 = *(*(v264 - 8) + 64);
  MEMORY[0x28223BE20](v264);
  v266 = &v223 - v49;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1F8, &qword_23815DE38);
  v50 = *(*(v248 - 8) + 64);
  MEMORY[0x28223BE20](v248);
  v249 = &v223 - v51;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED200, &qword_23815DE40);
  v52 = *(*(v265 - 8) + 64);
  MEMORY[0x28223BE20](v265);
  v250 = &v223 - v53;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED208, &qword_23815DE48);
  v54 = *(*(v271 - 8) + 64);
  MEMORY[0x28223BE20](v271);
  v267 = &v223 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED210, &qword_23815DE50);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v59 = &v223 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED218, &qword_23815DE58);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v63 = &v223 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED220, &qword_23815DE60);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v225 = &v223 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED228, &qword_23815DE68);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v227 = &v223 - v69;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED230, &qword_23815DE70);
  v70 = *(*(v226 - 8) + 64);
  MEMORY[0x28223BE20](v226);
  v228 = &v223 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED238, &qword_23815DE78);
  v73 = *(*(v72 - 8) + 64);
  v74 = MEMORY[0x28223BE20](v72);
  v75 = MEMORY[0x28223BE20](v74);
  v78 = *v2;
  v79 = *(v2 + 8);
  if (v79 < 2)
  {
    v80 = v270;
    sub_238153F7C();
    v81 = sub_23815423C();
    KeyPath = swift_getKeyPath();
    v83 = &v33[*(v269 + 36)];
    *v83 = KeyPath;
    v83[1] = v81;
    sub_23810F1D8();
    v84 = v253;
    sub_2381544EC();
    sub_238071284(v33, &qword_27DEED1B8, &qword_23815DDF8);
    v85 = sub_2381540FC();
    v86 = v84 + *(v263 + 36);
    *v86 = v85;
    __asm { FMOV            V0.2D, #16.0 }

    *(v86 + 8) = _Q0;
    *(v86 + 24) = xmmword_23815DD90;
    *(v86 + 40) = 0;
    sub_2381548DC();
    sub_2381538EC();
    v92 = (v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED300, &qword_23815DEF8) + 36));
    v93 = v279;
    *v92 = v278;
    v92[1] = v93;
    v92[2] = v280;
    v94 = v84 + *(v252 + 36);
    v95 = *(type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier() + 20);
    v96 = sub_238153F9C();
    (*(*(v96 - 8) + 16))(v94 + v95, v80, v96);
    *v94 = v78;
    *(v94 + 8) = v79;
    if (sub_238153F8C())
    {
      v276 = v78;
      v277 = v79;
      v97 = sub_23810C19C();
    }

    else
    {
      v276 = v78;
      v277 = v79;
      v97 = sub_23810C384();
    }

    v119 = v97;
    v120 = v260;
    v121 = v258;
    v122 = swift_getKeyPath();
    v123 = v255;
    sub_23807121C(v84, v255, &qword_27DEED1A0, &qword_23815DDE0);
    v124 = (v123 + *(v256 + 36));
    *v124 = v122;
    v124[1] = v119;
    v125 = v123;
    v126 = v254;
    sub_23807121C(v125, v254, &qword_27DEED1A8, &qword_23815DDE8);
    *(v126 + *(v121 + 36)) = 256;
    v127 = &qword_27DEED1B0;
    v128 = &qword_23815DDF0;
    v129 = v257;
    sub_23807121C(v126, v257, &qword_27DEED1B0, &qword_23815DDF0);
    sub_2380712E4(v129, v120, &qword_27DEED1B0, &qword_23815DDF0);
    swift_storeEnumTagMultiPayload();
    sub_23810F34C();
    sub_23810F574();
    v130 = v262;
    sub_238153ECC();
    v131 = &qword_27DEED198;
    v132 = &qword_23815DDD8;
    sub_2380712E4(v130, v266, &qword_27DEED198, &qword_23815DDD8);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    sub_23810EA70();
    sub_23810F2C0();
    v172 = v267;
    sub_238153ECC();
    sub_238071284(v130, v131, v132);
    sub_2380712E4(v172, v273, &qword_27DEED208, &qword_23815DE48);
    swift_storeEnumTagMultiPayload();
    sub_23810E9E4();
    sub_23810F850();
LABEL_18:
    sub_238153ECC();
    sub_238071284(v172, &qword_27DEED208, &qword_23815DE48);
    return sub_238071284(v129, v127, v128);
  }

  v98 = v269;
  if (v78 > 2)
  {
    v133 = v270;
    if (v78 == 3)
    {
      v263 = v77;
      v269 = &v223 - v76;
      v134 = v75;
      sub_238153F7C();
      *&v59[*(v56 + 36)] = sub_238153EEC();
      sub_23810ED90();
      sub_2381544EC();
      sub_238071284(v59, &qword_27DEED210, &qword_23815DE50);
      v135 = sub_2381540FC();
      sub_23815377C();
      v136 = &v63[*(v60 + 36)];
      *v136 = v135;
      *(v136 + 1) = v137;
      *(v136 + 2) = v138;
      *(v136 + 3) = v139;
      *(v136 + 4) = v140;
      v136[40] = 0;
      sub_2381548DC();
      sub_238153A8C();
      v141 = v225;
      sub_23807121C(v63, v225, &qword_27DEED218, &qword_23815DE58);
      v142 = (v141 + *(v64 + 36));
      v143 = v283;
      v142[4] = v282;
      v142[5] = v143;
      v142[6] = v284;
      v144 = v279;
      *v142 = v278;
      v142[1] = v144;
      v145 = v281;
      v142[2] = v280;
      v142[3] = v145;
      v146 = v227;
      v147 = &v227[*(v67 + 36)];
      v148 = *(type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier() + 20);
      v149 = sub_238153F9C();
      (*(*(v149 - 8) + 16))(&v147[v148], v133, v149);
      *v147 = 3;
      v147[8] = 2;
      sub_23807121C(v141, v146, &qword_27DEED220, &qword_23815DE60);
      v150 = sub_238153F8C();
      v151 = v273;
      v276 = 3;
      v277 = 2;
      if (v150)
      {
        v152 = sub_23810C19C();
      }

      else
      {
        v152 = sub_23810C384();
      }

      v201 = v152;
      v202 = swift_getKeyPath();
      v203 = v228;
      sub_23807121C(v146, v228, &qword_27DEED228, &qword_23815DE68);
      v204 = (v203 + *(v226 + 36));
      *v204 = v202;
      v204[1] = v201;
      v205 = v263;
      v206 = (v263 + *(v134 + 36));
      v207 = *(sub_238153A7C() + 20);
      v208 = *MEMORY[0x277CE0118];
      v209 = sub_238153DDC();
      (*(*(v209 - 8) + 104))(&v206[v207], v208, v209);
      __asm { FMOV            V0.2D, #12.0 }

      *v206 = _Q0;
      *&v206[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80) + 36)] = 256;
      sub_23807121C(v203, v205, &qword_27DEED230, &qword_23815DE70);
      v127 = &qword_27DEED238;
      v128 = &qword_23815DE78;
      v129 = v269;
      sub_23807121C(v205, v269, &qword_27DEED238, &qword_23815DE78);
      sub_2380712E4(v129, v249, &qword_27DEED238, &qword_23815DE78);
      swift_storeEnumTagMultiPayload();
      sub_23810EAFC();
      sub_23810EEC0();
      v211 = v250;
      sub_238153ECC();
      sub_2380712E4(v211, v266, &qword_27DEED200, &qword_23815DE40);
      swift_storeEnumTagMultiPayload();
      sub_23810EA70();
      sub_23810F2C0();
      v172 = v267;
      sub_238153ECC();
      sub_238071284(v211, &qword_27DEED200, &qword_23815DE40);
      sub_2380712E4(v172, v151, &qword_27DEED208, &qword_23815DE48);
      swift_storeEnumTagMultiPayload();
      sub_23810E9E4();
      sub_23810F850();
      goto LABEL_18;
    }

    v174 = v235;
    sub_238153F7C();
    v175 = sub_2381542CC();
    v176 = swift_getKeyPath();
    v177 = &v174[*(v98 + 36)];
    *v177 = v176;
    v177[1] = v175;
    LODWORD(v175) = sub_238153EEC();
    *&v174[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED240, &qword_23815DEB0) + 36)] = v175;
    LOBYTE(v175) = sub_2381540FC();
    v178 = &v174[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED248, &qword_23815DEB8) + 36)];
    *v178 = v175;
    __asm { FMOV            V0.2D, #9.0 }

    *(v178 + 8) = _Q0;
    *(v178 + 24) = xmmword_23815DD70;
    v178[40] = 0;
    v180 = &v174[*(v232 + 36)];
    v181 = *(type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier() + 20);
    v182 = sub_238153F9C();
    (*(*(v182 - 8) + 16))(&v180[v181], v133, v182);
    *v180 = 4;
    v180[8] = 2;
    v183 = sub_238153F8C();
    v184 = v274;
    v185 = v273;
    *&v278 = 4;
    BYTE8(v278) = 2;
    if (v183)
    {
      v186 = sub_23810C19C();
    }

    else
    {
      v186 = sub_23810C384();
    }

    v212 = v186;
    v213 = swift_getKeyPath();
    v214 = v174;
    v215 = v237;
    sub_23807121C(v214, v237, &qword_27DEED160, &qword_23815DDA0);
    v216 = (v215 + *(v233 + 36));
    *v216 = v213;
    v216[1] = v212;
    v217 = v236;
    v218 = &v236[*(v184 + 36)];
    v219 = *(sub_238153A7C() + 20);
    v220 = *MEMORY[0x277CE0118];
    v221 = sub_238153DDC();
    (*(*(v221 - 8) + 104))(&v218[v219], v220, v221);
    __asm { FMOV            V0.2D, #12.0 }

    *v218 = _Q0;
    *&v218[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80) + 36)] = 256;
    sub_23807121C(v215, v217, &qword_27DEED168, &qword_23815DDA8);
    v196 = &qword_27DEED170;
    v197 = &qword_23815DDB0;
    v198 = v238;
    sub_23807121C(v217, v238, &qword_27DEED170, &qword_23815DDB0);
    sub_2380712E4(v198, v185, &qword_27DEED170, &qword_23815DDB0);
    swift_storeEnumTagMultiPayload();
    sub_23810E9E4();
    sub_23810F850();
    sub_238153ECC();
  }

  else
  {
    v99 = v270;
    if (v78 < 2)
    {
      sub_238153F7C();
      v100 = sub_23815424C();
      v101 = swift_getKeyPath();
      v102 = &v33[*(v98 + 36)];
      *v102 = v101;
      v102[1] = v100;
      sub_23810F1D8();
      v103 = v241;
      sub_2381544EC();
      sub_238071284(v33, &qword_27DEED1B8, &qword_23815DDF8);
      LOBYTE(v100) = sub_2381540FC();
      sub_23815377C();
      v104 = v103 + *(v263 + 36);
      *v104 = v100;
      *(v104 + 8) = v105;
      *(v104 + 16) = v106;
      *(v104 + 24) = v107;
      *(v104 + 32) = v108;
      *(v104 + 40) = 0;
      sub_2381548DC();
      sub_238153A8C();
      v109 = v242;
      sub_23807121C(v103, v242, &qword_27DEED1C0, &qword_23815DE00);
      v110 = (v109 + *(v240 + 36));
      v111 = v283;
      v110[4] = v282;
      v110[5] = v111;
      v110[6] = v284;
      v112 = v279;
      *v110 = v278;
      v110[1] = v112;
      v113 = v281;
      v110[2] = v280;
      v110[3] = v113;
      v114 = v244;
      v115 = &v244[*(v239 + 36)];
      v116 = *(type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier() + 20);
      v117 = sub_238153F9C();
      (*(*(v117 - 8) + 16))(&v115[v116], v99, v117);
      *v115 = v78;
      v115[8] = 2;
      sub_23807121C(v109, v114, &qword_27DEED1C8, &qword_23815DE08);
      if (sub_238153F8C())
      {
        v276 = v78;
        v277 = 2;
        v118 = sub_23810C19C();
      }

      else
      {
        v276 = v78;
        v277 = 2;
        v118 = sub_23810C384();
      }

      v163 = v118;
      v164 = swift_getKeyPath();
      v165 = v114;
      v166 = v246;
      sub_23807121C(v165, v246, &qword_27DEED1D0, &qword_23815DE10);
      v167 = (v166 + *(v243 + 36));
      *v167 = v164;
      v167[1] = v163;
      v168 = v245;
      v169 = &v245[*(v251 + 36)];
      v170 = *MEMORY[0x277CE0118];
      v171 = sub_238153DDC();
      (*(*(v171 - 8) + 104))(v169, v170, v171);
      *&v169[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED2D0, &qword_23815DEF0) + 36)] = 256;
      sub_23807121C(v166, v168, &qword_27DEED1D8, &qword_23815DE18);
      v127 = &qword_27DEED1E0;
      v128 = &qword_23815DE20;
      v129 = v247;
      sub_23807121C(v168, v247, &qword_27DEED1E0, &qword_23815DE20);
      sub_2380712E4(v129, v249, &qword_27DEED1E0, &qword_23815DE20);
      swift_storeEnumTagMultiPayload();
      sub_23810EAFC();
      sub_23810EEC0();
      v130 = v250;
      sub_238153ECC();
      v131 = &qword_27DEED200;
      v132 = &qword_23815DE40;
      sub_2380712E4(v130, v266, &qword_27DEED200, &qword_23815DE40);
      goto LABEL_17;
    }

    v153 = v231;
    sub_238153F7C();
    v154 = sub_2381542CC();
    v155 = swift_getKeyPath();
    v156 = (v153 + *(v98 + 36));
    *v156 = v155;
    v156[1] = v154;
    LOBYTE(v154) = sub_2381540FC();
    v157 = v153 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED338, &qword_23815DF08) + 36);
    *v157 = v154;
    __asm { FMOV            V0.2D, #10.0 }

    *(v157 + 8) = _Q0;
    *(v157 + 24) = xmmword_23815DD80;
    *(v157 + 40) = 0;
    v159 = v153 + *(v229 + 36);
    v160 = *(type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier() + 20);
    v161 = sub_238153F9C();
    (*(*(v161 - 8) + 16))(v159 + v160, v99, v161);
    *v159 = 2;
    *(v159 + 8) = 2;
    if (sub_238153F8C())
    {
      *&v278 = 2;
      BYTE8(v278) = 2;
      v162 = sub_23810C19C();
    }

    else
    {
      *&v278 = 2;
      BYTE8(v278) = 2;
      v162 = sub_23810C384();
    }

    v187 = v162;
    v188 = v273;
    v189 = v261;
    v190 = v260;
    v191 = v224;
    v192 = v223;
    v193 = swift_getKeyPath();
    sub_23807121C(v153, v192, &qword_27DEED178, &qword_23815DDB8);
    v194 = (v192 + *(v191 + 36));
    *v194 = v193;
    v194[1] = v187;
    v195 = v230;
    sub_23807121C(v192, v230, &qword_27DEED180, &qword_23815DDC0);
    *(v195 + *(v189 + 36)) = 256;
    v196 = &qword_27DEED188;
    v197 = &qword_23815DDC8;
    v198 = v234;
    sub_23807121C(v195, v234, &qword_27DEED188, &qword_23815DDC8);
    sub_2380712E4(v198, v190, &qword_27DEED188, &qword_23815DDC8);
    swift_storeEnumTagMultiPayload();
    sub_23810F34C();
    sub_23810F574();
    v199 = v262;
    sub_238153ECC();
    sub_2380712E4(v199, v266, &qword_27DEED198, &qword_23815DDD8);
    swift_storeEnumTagMultiPayload();
    sub_23810EA70();
    sub_23810F2C0();
    v200 = v267;
    sub_238153ECC();
    sub_238071284(v199, &qword_27DEED198, &qword_23815DDD8);
    sub_2380712E4(v200, v188, &qword_27DEED208, &qword_23815DE48);
    swift_storeEnumTagMultiPayload();
    sub_23810E9E4();
    sub_23810F850();
    sub_238153ECC();
    sub_238071284(v200, &qword_27DEED208, &qword_23815DE48);
  }

  return sub_238071284(v198, v196, v197);
}

uint64_t sub_23810E26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED388, &qword_23815E038);
  v3 = *(*(v38 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v38);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED390, &qword_23815E040);
  v9 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED398, &qword_23815E048);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = *v2;
  v17 = *(v2 + 8);
  v18 = *(type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier() + 20);
  if ((sub_238153F8C() & 1) == 0 && (v17 == 1 || v17 == 2 && (v16 - 3) <= 1))
  {
    v19 = sub_2381540FC();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED3A0, &qword_23815E050);
    (*(*(v20 - 8) + 16))(v15, v36, v20);
    v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED3B8, &qword_23815E058) + 36)] = v19;
    KeyPath = swift_getKeyPath();
    v22 = &v15[*(v12 + 36)];
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED3E0, &unk_23815E068) + 28);
    v24 = sub_23815488C();
    (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
    *v22 = KeyPath;
    v25 = &qword_27DEED398;
    v26 = &qword_23815E048;
    sub_2380712E4(v15, v11, &qword_27DEED398, &qword_23815E048);
    swift_storeEnumTagMultiPayload();
    sub_23810FED8();
    sub_238110074();
    sub_238153ECC();
    v27 = v15;
  }

  else
  {
    v28 = *v2;
    v29 = *(v2 + 8);
    if (sub_238153F8C())
    {
      v40 = v28;
      v41 = v29;
      v30 = sub_23810C384();
    }

    else
    {
      v40 = v28;
      v41 = v29;
      v30 = sub_23810C19C();
    }

    v31 = v30;
    v32 = sub_2381540FC();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED3A0, &qword_23815E050);
    (*(*(v33 - 8) + 16))(v6, v36, v33);
    v34 = &v6[*(v38 + 36)];
    *v34 = v31;
    v34[8] = v32;
    v25 = &qword_27DEED388;
    v26 = &qword_23815E038;
    sub_23807121C(v6, v8, &qword_27DEED388, &qword_23815E038);
    sub_2380712E4(v8, v11, &qword_27DEED388, &qword_23815E038);
    swift_storeEnumTagMultiPayload();
    sub_23810FED8();
    sub_238110074();
    sub_238153ECC();
    v27 = v8;
  }

  return sub_238071284(v27, v25, v26);
}

uint64_t sub_23810E678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED3F0, &qword_23815E0A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2380712E4(a1, &v6 - v4, &qword_27DEED3F0, &qword_23815E0A8);
  return sub_238153BCC();
}

uint64_t sub_23810E74C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238153C4C();
  *a1 = result;
  return result;
}

uint64_t sub_23810E778(uint64_t *a1)
{
  v1 = *a1;

  return sub_238153C5C();
}

uint64_t sub_23810E7A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238153B4C();
  *a1 = result;
  return result;
}

uint64_t sub_23810E7D0(uint64_t *a1)
{
  v1 = *a1;

  return sub_238153B5C();
}

uint64_t _s17DeviceDiscoveryUI20AirDropUIButtonStyleV0G0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 == 1)
      {
        v5 = *a1;
        v6 = *a2;
        if (v2 == v3)
        {
          return 1;
        }
      }

      return 0;
    }

    if (*&v2 <= 1)
    {
      if (v2 == 0.0)
      {
        return v4 == 2 && v3 == 0.0;
      }

      else
      {
        return v4 == 2 && *&v3 == 1;
      }
    }

    else if (*&v2 == 2)
    {
      return v4 == 2 && *&v3 == 2;
    }

    else
    {
      if (*&v2 == 3)
      {
        return v4 == 2 && *&v3 == 3;
      }

      return v4 == 2 && *&v3 == 4;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    v8 = *a1;
    v9 = *a2;
    return v2 == v3;
  }
}

uint64_t sub_23810E8E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238153C4C();
  *a1 = result;
  return result;
}

uint64_t sub_23810E914(uint64_t *a1)
{
  v1 = *a1;

  return sub_238153C5C();
}

uint64_t type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier()
{
  result = qword_27DEED378;
  if (!qword_27DEED378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23810E98C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238153B4C();
  *a1 = result;
  return result;
}

uint64_t sub_23810E9B8(uint64_t *a1)
{
  v1 = *a1;

  return sub_238153B5C();
}

unint64_t sub_23810E9E4()
{
  result = qword_27DEED250;
  if (!qword_27DEED250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED208, &qword_23815DE48);
    sub_23810EA70();
    sub_23810F2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED250);
  }

  return result;
}

unint64_t sub_23810EA70()
{
  result = qword_27DEED258;
  if (!qword_27DEED258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED200, &qword_23815DE40);
    sub_23810EAFC();
    sub_23810EEC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED258);
  }

  return result;
}

unint64_t sub_23810EAFC()
{
  result = qword_27DEED260;
  if (!qword_27DEED260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED238, &qword_23815DE78);
    sub_23810EBB4();
    sub_2380711D4(&qword_27DEEC850, &qword_27DEEC338, &qword_23815BC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED260);
  }

  return result;
}

unint64_t sub_23810EBB4()
{
  result = qword_27DEED268;
  if (!qword_27DEED268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED230, &qword_23815DE70);
    sub_23810F710(&qword_27DEED270, &qword_27DEED228, &qword_23815DE68, sub_23810EC98);
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED268);
  }

  return result;
}

unint64_t sub_23810ECC8()
{
  result = qword_27DEED280;
  if (!qword_27DEED280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED218, &qword_23815DE58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED210, &qword_23815DE50);
    sub_23810ED90();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED280);
  }

  return result;
}

unint64_t sub_23810ED90()
{
  result = qword_27DEED288;
  if (!qword_27DEED288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED210, &qword_23815DE50);
    sub_23810EE78(&qword_27DEECB40, MEMORY[0x277CDE278]);
    sub_2380711D4(&qword_27DEEBEE0, &qword_27DEEBEE8, &qword_23815B088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED288);
  }

  return result;
}

uint64_t sub_23810EE78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23810EEC0()
{
  result = qword_27DEED298;
  if (!qword_27DEED298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1E0, &qword_23815DE20);
    sub_23810EF78();
    sub_2380711D4(&qword_27DEED2C8, &qword_27DEED2D0, &qword_23815DEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED298);
  }

  return result;
}

unint64_t sub_23810EF78()
{
  result = qword_27DEED2A0;
  if (!qword_27DEED2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1D8, &qword_23815DE18);
    sub_23810F710(&qword_27DEED2A8, &qword_27DEED1D0, &qword_23815DE10, sub_23810F05C);
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED2A0);
  }

  return result;
}

uint64_t sub_23810F08C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23810F110()
{
  result = qword_27DEED2B8;
  if (!qword_27DEED2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1C0, &qword_23815DE00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1B8, &qword_23815DDF8);
    sub_23810F1D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED2B8);
  }

  return result;
}

unint64_t sub_23810F1D8()
{
  result = qword_27DEED2C0;
  if (!qword_27DEED2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1B8, &qword_23815DDF8);
    sub_23810EE78(&qword_27DEECB40, MEMORY[0x277CDE278]);
    sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED2C0);
  }

  return result;
}

unint64_t sub_23810F2C0()
{
  result = qword_27DEED2D8;
  if (!qword_27DEED2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED198, &qword_23815DDD8);
    sub_23810F34C();
    sub_23810F574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED2D8);
  }

  return result;
}

unint64_t sub_23810F34C()
{
  result = qword_27DEED2E0;
  if (!qword_27DEED2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1B0, &qword_23815DDF0);
    sub_23810F404();
    sub_2380711D4(&qword_27DEED308, &qword_27DEED310, &qword_23815DF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED2E0);
  }

  return result;
}

unint64_t sub_23810F404()
{
  result = qword_27DEED2E8;
  if (!qword_27DEED2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1A8, &qword_23815DDE8);
    sub_23810F710(&qword_27DEED2F0, &qword_27DEED1A0, &qword_23815DDE0, sub_23810F4E8);
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED2E8);
  }

  return result;
}

unint64_t sub_23810F4E8()
{
  result = qword_27DEED2F8;
  if (!qword_27DEED2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED300, &qword_23815DEF8);
    sub_23810F110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED2F8);
  }

  return result;
}

unint64_t sub_23810F574()
{
  result = qword_27DEED318;
  if (!qword_27DEED318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED188, &qword_23815DDC8);
    sub_23810F62C();
    sub_2380711D4(&qword_27DEED308, &qword_27DEED310, &qword_23815DF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED318);
  }

  return result;
}

unint64_t sub_23810F62C()
{
  result = qword_27DEED320;
  if (!qword_27DEED320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED180, &qword_23815DDC0);
    sub_23810F710(&qword_27DEED328, &qword_27DEED178, &qword_23815DDB8, sub_23810F7C4);
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED320);
  }

  return result;
}

uint64_t sub_23810F710(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23810EE78(&qword_27DEED290, type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23810F7C4()
{
  result = qword_27DEED330;
  if (!qword_27DEED330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED338, &qword_23815DF08);
    sub_23810F1D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED330);
  }

  return result;
}

unint64_t sub_23810F850()
{
  result = qword_27DEED340;
  if (!qword_27DEED340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED170, &qword_23815DDB0);
    sub_23810F908();
    sub_2380711D4(&qword_27DEEC850, &qword_27DEEC338, &qword_23815BC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED340);
  }

  return result;
}

unint64_t sub_23810F908()
{
  result = qword_27DEED348;
  if (!qword_27DEED348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED168, &qword_23815DDA8);
    sub_23810F710(&qword_27DEED350, &qword_27DEED160, &qword_23815DDA0, sub_23810F9EC);
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED348);
  }

  return result;
}

unint64_t sub_23810F9EC()
{
  result = qword_27DEED358;
  if (!qword_27DEED358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED248, &qword_23815DEB8);
    sub_23810FA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED358);
  }

  return result;
}

unint64_t sub_23810FA78()
{
  result = qword_27DEED360;
  if (!qword_27DEED360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED240, &qword_23815DEB0);
    sub_23810F1D8();
    sub_2380711D4(&qword_27DEEBEE0, &qword_27DEEBEE8, &qword_23815B088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED360);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23810FB74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23810FBC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_23810FC04(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_23810FC1C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_23810FC48()
{
  result = qword_27DEED368;
  if (!qword_27DEED368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED370, &qword_23815DFC8);
    sub_23810E9E4();
    sub_23810F850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED368);
  }

  return result;
}

uint64_t sub_23810FCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 8);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_238153F9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23810FDA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_238153F9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23810FE40()
{
  result = sub_238153F9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23810FED8()
{
  result = qword_27DEED3A8;
  if (!qword_27DEED3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED398, &qword_23815E048);
    sub_23810FF90();
    sub_2380711D4(&qword_27DEED3D8, &qword_27DEED3E0, &unk_23815E068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED3A8);
  }

  return result;
}

unint64_t sub_23810FF90()
{
  result = qword_27DEED3B0;
  if (!qword_27DEED3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED3B8, &qword_23815E058);
    sub_2380711D4(&qword_27DEED3C0, &qword_27DEED3A0, &qword_23815E050);
    sub_2380711D4(&qword_27DEED3C8, &qword_27DEED3D0, &qword_23815E060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED3B0);
  }

  return result;
}

unint64_t sub_238110074()
{
  result = qword_27DEED3E8;
  if (!qword_27DEED3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED388, &qword_23815E038);
    sub_2380711D4(&qword_27DEED3C0, &qword_27DEED3A0, &qword_23815E050);
    sub_2380711D4(&qword_27DEEB230, &qword_27DEEB238, &qword_2381596B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED3E8);
  }

  return result;
}

unint64_t sub_238110184()
{
  result = qword_27DEED3F8;
  if (!qword_27DEED3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED400, &unk_23815E0B0);
    sub_23810FED8();
    sub_238110074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED3F8);
  }

  return result;
}

void sub_238110218(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void *sub_2381102A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterArchiveData + 8) >> 60 == 15)
  {
    v8 = sub_238153DEC();
    sub_238110874(a1, __src);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v20, __src, sizeof(v20));
    sub_2380712E4(__dst, v28, &qword_27DEED420, &qword_23815E2B0);
    sub_238071284(v20, &qword_27DEED420, &qword_23815E2B0);
    memcpy(&v18[7], __dst, 0x130uLL);
    sub_2381548DC();
    sub_238153A8C();
    v9 = sub_2381540FC();
    sub_2381545CC();
    v10 = sub_23815462C();

    v11 = sub_2381540FC();
    v28[0] = v8;
    LOBYTE(v28[1]) = 1;
    memcpy(&v28[1] + 1, v18, 0x137uLL);
    *(&v28[24] + 8) = v25;
    *(&v28[25] + 8) = v26;
    *(&v28[26] + 8) = v27;
    *(&v28[20] + 8) = v21;
    *(&v28[21] + 8) = v22;
    *(&v28[22] + 8) = v23;
    *(&v28[23] + 8) = v24;
    BYTE8(v28[27]) = v9;
    *&v28[28] = v10;
    BYTE8(v28[28]) = v11;
    sub_238111328(v28);
    memcpy(v17, v28, sizeof(v17));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED480, &qword_23815E2E8);
    sub_23815472C();
    v16 = __src[0];
    v12 = *&__src[1];
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v28[0] = v16;
    *&v28[1] = v12;
    *(&v28[1] + 1) = sub_238111614;
    v28[2] = v13;
    *&v28[3] = 0;
    sub_238111620(v28);
    memcpy(v17, v28, sizeof(v17));

    v14 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED428, &qword_23815E2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED430, &qword_23815E2C0);
  sub_238111334();
  sub_238111414();
  sub_238153ECC();
  return memcpy(a4, __src, 0x1CAuLL);
}

void sub_238110594(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  if (*(a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterArchiveData + 8) >> 60 == 15 || (v7 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterConfiguration, !*(a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterConfiguration)))
  {
    aBlock = a2;
    v22 = a3;
    v27 = 0;
    swift_retain_n();

    v20 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED480, &qword_23815E2E8);
    sub_23815471C();
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
    v12 = objc_allocWithZone(MEMORY[0x277D3EA90]);

    v13 = a2;

    v14 = [v12 initWithTitleString:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:1 imageAssetID:v8 personalPoster:{v9, v10, v11, v8, v9, v10, v11}];
    v15 = *(a1 + v7);
    if (v15)
    {
      v16 = v14;
      v17 = [objc_allocWithZone(MEMORY[0x277D3EB08]) initWithConfiguration:v15 context:v14];
      v18 = swift_allocObject();
      *(v18 + 16) = sub_238111670;
      *(v18 + 24) = v6;
      v25 = sub_2381116B4;
      v26 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = sub_238110218;
      v24 = &block_descriptor_7;
      v19 = _Block_copy(&aBlock);

      [v17 snapshotWithOptions:2 forScreen:0 completionBlock:v19];

      _Block_release(v19);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_238110820(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED480, &qword_23815E2E8);
  return sub_23815471C();
}

uint64_t sub_238110874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2381548DC();
  sub_2381538EC();
  v4 = v36;
  v30 = v38;
  v31 = v34;
  v29 = v39;
  v47 = 1;
  v46 = v35;
  v45 = v37;
  v5 = sub_238153D1C();
  v32[0] = 1;
  sub_238110BC4(a1, &v65);
  v54 = *&v66[80];
  v55 = *&v66[96];
  v56 = *&v66[112];
  v50 = *&v66[16];
  v51 = *&v66[32];
  v52 = *&v66[48];
  v53 = *&v66[64];
  v48 = v65;
  v49 = *v66;
  v58[6] = *&v66[80];
  v58[7] = *&v66[96];
  v58[8] = *&v66[112];
  v58[2] = *&v66[16];
  v58[3] = *&v66[32];
  v58[4] = *&v66[48];
  v58[5] = *&v66[64];
  v57 = v66[128];
  v59 = v66[128];
  v58[0] = v65;
  v58[1] = *v66;
  sub_2380712E4(&v48, &v63, &qword_27DEED488, &qword_23815E2F0);
  sub_238071284(v58, &qword_27DEED488, &qword_23815E2F0);
  *&v33[103] = v54;
  *&v33[119] = v55;
  *&v33[135] = v56;
  *&v33[39] = v50;
  *&v33[55] = v51;
  *&v33[71] = v52;
  *&v33[87] = v53;
  *&v33[7] = v48;
  v33[151] = v57;
  *&v33[23] = v49;
  sub_2381548DC();
  sub_2381538EC();
  v63 = v5;
  v64[0] = 1;
  *&v64[17] = *&v33[16];
  v7 = *v33;
  v6 = *&v33[16];
  *&v64[1] = *v33;
  *&v64[81] = *&v33[80];
  v9 = *&v33[64];
  v8 = *&v33[80];
  *&v64[65] = *&v33[64];
  *&v64[49] = *&v33[48];
  v11 = *&v33[32];
  v10 = *&v33[48];
  *&v64[33] = *&v33[32];
  v12 = *&v33[144];
  *&v64[145] = *&v33[144];
  v13 = *&v33[112];
  *&v64[129] = *&v33[128];
  v14 = *&v33[128];
  *&v64[113] = *&v33[112];
  v15 = *&v33[96];
  *&v64[97] = *&v33[96];
  v16 = *&v64[128];
  *(a2 + 192) = *&v64[112];
  *(a2 + 208) = v16;
  *(a2 + 217) = *&v64[137];
  v17 = *&v64[64];
  *(a2 + 128) = *&v64[48];
  *(a2 + 144) = v17;
  v18 = *&v64[96];
  *(a2 + 160) = *&v64[80];
  *(a2 + 176) = v18;
  v19 = *v64;
  *(a2 + 64) = v63;
  *(a2 + 80) = v19;
  v20 = *&v64[32];
  *(a2 + 96) = *&v64[16];
  *(a2 + 112) = v20;
  *(a2 + 288) = v44;
  *&v66[97] = v15;
  *&v66[113] = v13;
  v67 = v14;
  *&v66[33] = v11;
  *&v66[49] = v10;
  v21 = v40;
  v22 = v41;
  v23 = v42;
  v24 = v43;
  v62 = 1;
  v61 = v41;
  v60 = v43;
  v25 = v47;
  v26 = v46;
  v27 = v45;
  *a2 = 0;
  *(a2 + 8) = v25;
  *(a2 + 16) = v31;
  *(a2 + 24) = v26;
  *(a2 + 32) = v4;
  *(a2 + 40) = v27;
  *(a2 + 48) = v30;
  *(a2 + 56) = v29;
  *(a2 + 240) = 0;
  *(a2 + 248) = 1;
  *(a2 + 256) = v21;
  *(a2 + 264) = v22;
  *(a2 + 272) = v23;
  *(a2 + 280) = v24;
  v65 = v5;
  v66[0] = 1;
  v68 = v12;
  *&v66[65] = v9;
  *&v66[81] = v8;
  *&v66[1] = v7;
  *&v66[17] = v6;
  sub_2380712E4(&v63, v32, &qword_27DEED490, &qword_23815E2F8);
  return sub_238071284(&v65, &qword_27DEED490, &qword_23815E2F8);
}

uint64_t sub_238110BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_contact);
  sub_2381548DC();
  sub_238153A8C();
  v13 = 1;
  *v21 = v3;
  *&v21[72] = v18;
  *&v21[56] = v17;
  *&v21[104] = v20;
  *&v21[88] = v19;
  *&v21[24] = v15;
  *&v21[8] = v14;
  *&v21[40] = v16;
  *&v12[71] = *&v21[64];
  *&v12[87] = *&v21[80];
  *&v12[103] = *&v21[96];
  *&v12[119] = *(&v20 + 1);
  *&v12[7] = *v21;
  *&v12[23] = *&v21[16];
  *&v12[39] = *&v21[32];
  *&v12[55] = *&v21[48];
  v11[120] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = *v12;
  v5 = *&v12[16];
  v6 = *&v12[32];
  *(a2 + 57) = *&v12[48];
  *(a2 + 41) = v6;
  *(a2 + 25) = v5;
  *(a2 + 9) = v4;
  v7 = *&v12[64];
  v8 = *&v12[80];
  v9 = *&v12[96];
  *(a2 + 120) = *&v12[111];
  *(a2 + 105) = v9;
  *(a2 + 89) = v8;
  *(a2 + 73) = v7;
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  v22 = v3;
  v23 = v14;
  v24 = v15;
  v28 = v19;
  v29 = v20;
  v26 = v17;
  v27 = v18;
  v25 = v16;
  sub_2380712E4(v21, v11, &qword_27DEED498, &qword_23815E300);
  return sub_238071284(&v22, &qword_27DEED498, &qword_23815E300);
}

uint64_t sub_238110DB0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_238110E18(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_238110E74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

id sub_238110F00(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED410, &unk_23815E2A0);
  sub_238153FEC();
  v4 = *(v7 + 16);

  v5 = [v4 view];

  sub_23811117C(a1, v3);
  return v5;
}

void sub_238110FA8(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactAvatarView.Coordinator();
  v2 = swift_allocObject();
  v3 = [objc_opt_self() defaultSettings];
  v4 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) initWithSettings_];

  *(v2 + 16) = v4;
  *a1 = v2;
}

uint64_t sub_238111034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2381112D4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_238111098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2381112D4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2381110FC()
{
  sub_2381112D4();
  sub_238153E9C();
  __break(1u);
}

unint64_t sub_238111128()
{
  result = qword_27DEED408;
  if (!qword_27DEED408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED408);
  }

  return result;
}

void sub_23811117C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED410, &unk_23815E2A0);
  sub_238153FEC();
  v3 = *(v8 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2381590E0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = [objc_opt_self() emptyContact];
  }

  *(v4 + 32) = v5;
  sub_238111288();
  v6 = a2;
  v7 = sub_238154ECC();

  [v3 setContacts_];
}

unint64_t sub_238111288()
{
  result = qword_27DEEE300;
  if (!qword_27DEEE300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEEE300);
  }

  return result;
}

unint64_t sub_2381112D4()
{
  result = qword_27DEED418;
  if (!qword_27DEED418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED418);
  }

  return result;
}

unint64_t sub_238111334()
{
  result = qword_27DEED438;
  if (!qword_27DEED438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED428, &qword_23815E2B8);
    sub_2381113C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED438);
  }

  return result;
}

unint64_t sub_2381113C0()
{
  result = qword_27DEED440;
  if (!qword_27DEED440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED440);
  }

  return result;
}

unint64_t sub_238111414()
{
  result = qword_27DEED448;
  if (!qword_27DEED448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED430, &qword_23815E2C0);
    sub_2381114CC();
    sub_2380711D4(&qword_27DEEB270, &qword_27DEEB278, &qword_23815E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED448);
  }

  return result;
}

unint64_t sub_2381114CC()
{
  result = qword_27DEED450;
  if (!qword_27DEED450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED458, &qword_23815E2C8);
    sub_238111558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED450);
  }

  return result;
}

unint64_t sub_238111558()
{
  result = qword_27DEED460;
  if (!qword_27DEED460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED468, &qword_23815E2D0);
    sub_2380711D4(&qword_27DEED470, &qword_27DEED478, &qword_23815E2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED460);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238111670(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_238110820(a1);
}

uint64_t sub_23811167C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2381116D8()
{
  result = qword_27DEED4A0;
  if (!qword_27DEED4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED4A8, &qword_23815E308);
    sub_238111334();
    sub_238111414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED4A0);
  }

  return result;
}

double sub_238111768@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

void (*sub_23811187C(const char *a1, char a2))(_BYTE *, void)
{
  v5 = v2;
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEED4B0);
  v7 = sub_23815291C();
  v8 = sub_2381550FC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_238060000, v7, v8, a1, v9, 2u);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }

  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction) = a2;
  sub_238113068();
  v10 = *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 1;
  sub_23811D4D4(v10);
  sub_23811249C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A9C();
  return sub_23811201C(v12);
}

void (*sub_238111A30())(_BYTE *, void)
{
  v1 = v0;
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEED4B0);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "User selected cancel", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction) = 0;
  sub_238113068();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A9C();
  return sub_23811201C(v7);
}

uint64_t sub_238111BEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

void sub_238111C60()
{
  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_isInvalidated;
  if ((*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_isInvalidated) & 1) == 0)
  {
    v2 = v0;
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v3 = sub_23815293C();
    __swift_project_value_buffer(v3, qword_27DEED4B0);
    v4 = sub_23815291C();
    v5 = sub_2381550FC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238060000, v4, v5, "Invalidating NameDrop session controller", v6, 2u);
      MEMORY[0x2383EA8A0](v6, -1, -1);
    }

    *(v0 + v1) = 1;
    v7 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask;
    if (*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask))
    {
      v8 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask);

      sub_238154FCC();

      v9 = *(v0 + v7);
    }

    *(v0 + v7) = 0;

    if (*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) <= 1uLL)
    {
      v10 = sub_23815291C();
      v11 = sub_2381550FC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_238060000, v10, v11, "Attempting to cancel transfer", v12, 2u);
        MEMORY[0x2383EA8A0](v12, -1, -1);
      }

      sub_238119558();
    }

    v13 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService;
    v14 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService);
    if (v14)
    {
      [v14 invalidate];
      v14 = *(v2 + v13);
    }

    *(v2 + v13) = 0;
  }
}

uint64_t sub_238111E80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

id sub_238111EF4()
{
  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController____lazy_storage___contactsIconImage;
  v2 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController____lazy_storage___contactsIconImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController____lazy_storage___contactsIconImage);
  }

  else
  {
    v4 = sub_23811393C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_238111F54()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEED4B0);
  v1 = __swift_project_value_buffer(v0, qword_27DEED4B0);
  if (qword_27DEEA038 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF3198);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void (*sub_23811201C(char a1))(_BYTE *, void)
{
  v1 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v4[0] != v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    result = sub_238152A7C();
    if (__OFADD__(*v3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v3;
      result(v4, 0);
    }
  }

  return result;
}

uint64_t sub_23811214C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_2381121CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

void (*sub_238112240(char a1))(_BYTE *, void)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v4[0] != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_238152A8C(), , result = , v4[0] != (a1 & 1)))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    result = sub_238152A7C();
    if (__OFADD__(*v3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v3;
      result(v4, 0);
    }
  }

  return result;
}

uint64_t sub_2381123C4(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A9C();
  return a7(v11);
}

uint64_t sub_23811249C()
{
  v1 = v0;
  v2 = sub_2381530DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v78 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v72 - v7;
  v9 = sub_2381545FC();
  v10 = sub_2381545FC();
  v11 = sub_2381545FC();
  v12 = [objc_opt_self() systemFontOfSize:60.0 weight:*MEMORY[0x277D74400]];
  *&v105[0] = 0;
  v104 = 0uLL;
  *(v105 + 8) = xmmword_23815E310;
  BYTE8(v105[1]) = 0;
  *&v106 = 0;
  v76 = v10;
  v77 = v9;
  *(&v106 + 1) = v9;
  *&v107 = v10;
  v74 = v12;
  v75 = v11;
  *(&v107 + 1) = v11;
  *&v109 = 0;
  v108 = v12;
  v110 = 0u;
  v111 = 0u;
  v113 = 0;
  v13 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_meCardContactProvider);
  *&v112 = 0;
  *(&v112 + 1) = v13;
  sub_23809B3A0(v13);
  sub_23809B3A0(v13);
  sub_23809BF44(1);
  if (v13 > 1)
  {
    v72 = v2;
    v14 = sub_23815529C();
    v16 = v15;
    sub_23809BF44(v13);

    *&v109 = v14;
    *(&v109 + 1) = v16;
    sub_23815288C();
    swift_getKeyPath();
    swift_getKeyPath();
    v73 = v1;
    sub_238152A8C();

    v17 = v93;
    sub_23815284C();
    v18 = v93;
    v19 = v94;
    v20 = v95;

    v110 = v18;
    v111 = v19;
    *&v112 = v20;

    sub_23811D1D8(0);
    v21 = [objc_opt_self() sharedApplication];
    v22 = [v21 userInterfaceLayoutDirection];

    if (v22 == 1)
    {
      sub_23811CFD4();
    }

    v23 = *(v18 + 16);

    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v73;
    sub_238152A8C();

    v24 = v93;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v93) = v23 != 0;

    sub_238152A9C();
    sub_238112240(v24);
    v2 = v72;
  }

  else
  {

    *&v109 = 0;
    *(&v109 + 1) = 0xE000000000000000;
  }

  v25 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_posterImage);
  v26 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors + 8);
  v27 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors + 16);
  *(&v106 + 1) = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors);
  *&v107 = v26;
  *(&v108 + 1) = v25;
  *(&v107 + 1) = v27;

  v28 = v25;

  *&v108 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_nameFont);
  v29 = v108;

  v30 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockStateMonitor);
  sub_2381532FC();
  v31 = v78;
  (*(v3 + 104))(v78, *MEMORY[0x277D54940], v2);
  LOBYTE(v30) = sub_2381530CC();
  v32 = *(v3 + 8);
  v32(v31, v2);
  v32(v8, v2);
  BYTE8(v105[1]) = v30 & 1;
  v33 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction;
  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction) == 2)
  {
    v34 = sub_23815467C();
    *&v93 = sub_23807CB28(84);
    *(&v93 + 1) = v35;
    sub_2380704A0();
    v36 = sub_23815438C();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_23811D128(0, 0, 0, 3);
    v43 = v40 & 1;
    *&v104 = v36;
    *(&v104 + 1) = v38;
    *&v105[0] = v43;
    *(&v105[0] + 1) = v42;
    v78 = v34;
    *&v105[1] = v34;
  }

  else
  {
    v36 = 0;
    v38 = 0;
    LOBYTE(v43) = 0;
    v78 = 0;
    v42 = 3;
  }

  v44 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
  if (v44 <= 1)
  {
    if (v44)
    {
      if (v44 == 1)
      {
        sub_23811D128(v36, v38, v43, v42);
        v104 = 0uLL;
        *(v105 + 8) = xmmword_2381587F0;
        v45 = 2;
LABEL_21:
        *&v105[0] = 0;
        *&v106 = v45;
        goto LABEL_26;
      }

      goto LABEL_17;
    }

    v73 = v1;
    *&v93 = sub_23807CB28(80);
    *(&v93 + 1) = v55;
    sub_2380704A0();
    v56 = sub_23815438C();
    v58 = v57;
    *&v104 = v56;
    *(&v104 + 1) = v57;
    v60 = v59 & 1;
    *&v105[0] = v59 & 1;
    *(&v105[0] + 1) = v61;
    *&v105[1] = 0;

    sub_238070430(v56, v58, v60);
    sub_23811D128(v36, v38, v43, v42);
    if (v13 == 1)
    {
      sub_238070490(v56, v58, v60);
    }

    else
    {
      sub_238070490(v56, v58, v60);

      if (v13)
      {
        v62 = 12;
LABEL_25:
        *&v106 = v62;
        goto LABEL_26;
      }
    }

    v62 = 24;
    goto LABEL_25;
  }

  if (v44 == 2)
  {
    sub_23811D128(v36, v38, v43, v42);
    v104 = 0uLL;
    *(v105 + 8) = xmmword_23815E320;
    v45 = 1;
    goto LABEL_21;
  }

  if (v44 != 3)
  {
LABEL_17:
    v113 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
    *&v106 = 1;
    v54 = v44;
    goto LABEL_26;
  }

  *&v106 = 1;
  if (*(v1 + v33) == 1)
  {
    *&v93 = sub_23807CB28(85);
    *(&v93 + 1) = v46;
    sub_2380704A0();
    v47 = sub_23815438C();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_23811D128(v36, v38, v43, v42);
    *&v104 = v47;
    *(&v104 + 1) = v49;
    *&v105[0] = v51 & 1;
    *(&v105[0] + 1) = v53;
    *&v105[1] = 0;
  }

LABEL_26:
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v63 = sub_23815293C();
  __swift_project_value_buffer(v63, qword_27DEED4B0);
  v64 = sub_23815291C();
  v65 = sub_2381550FC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v81 = v67;
    *v66 = 136315138;
    swift_beginAccess();
    v101 = v111;
    v102 = v112;
    v97 = v107;
    v98 = v108;
    v99 = v109;
    v100 = v110;
    v93 = v104;
    v94 = v105[0];
    v95 = v105[1];
    v96 = v106;
    v90 = v111;
    v91 = v112;
    v86 = v107;
    v87 = v108;
    v88 = v109;
    v89 = v110;
    v82 = v104;
    v83 = v105[0];
    v103 = v113;
    v92 = v113;
    v84 = v105[1];
    v85 = v106;
    sub_23809F2E8(&v93, v79);
    v68 = sub_238154D2C();
    v70 = sub_238085EAC(v68, v69, &v81);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_238060000, v64, v65, "View model updated: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x2383EA8A0](v67, -1, -1);
    MEMORY[0x2383EA8A0](v66, -1, -1);
  }

  swift_beginAccess();
  v90 = v111;
  v91 = v112;
  v92 = v113;
  v86 = v107;
  v87 = v108;
  v88 = v109;
  v89 = v110;
  v82 = v104;
  v83 = v105[0];
  v84 = v105[1];
  v85 = v106;
  swift_getKeyPath();
  swift_getKeyPath();
  v79[7] = v89;
  v79[8] = v90;
  v79[9] = v91;
  v80 = v92;
  v79[4] = v86;
  v79[5] = v87;
  v79[6] = v88;
  v79[0] = v82;
  v79[1] = v83;
  v79[2] = v84;
  v79[3] = v85;

  sub_23809F2E8(&v82, &v93);
  sub_238152A9C();
  v101 = v111;
  v102 = v112;
  v103 = v113;
  v97 = v107;
  v98 = v108;
  v99 = v109;
  v100 = v110;
  v93 = v104;
  v94 = v105[0];
  v95 = v105[1];
  v96 = v106;
  return sub_23809B34C(&v93);
}

uint64_t sub_238112F9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

void sub_23811301C(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_23811D394(v3);
}

void sub_238113068()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5D0, &qword_23815E670);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v31 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction);
  if (*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction))
  {
    if (v16 == 3)
    {
      if (qword_27DEEA108 != -1)
      {
        swift_once();
      }

      v17 = sub_23815293C();
      __swift_project_value_buffer(v17, qword_27DEED4B0);
      v32 = sub_23815291C();
      v18 = sub_2381550FC();
      if (os_log_type_enabled(v32, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_238060000, v32, v18, "User has not made a selection yet", v19, 2u);
        MEMORY[0x2383EA8A0](v19, -1, -1);
      }

      v20 = v32;
    }

    else
    {
      v21 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_contactPermissionResponseAction;
      swift_beginAccess();
      sub_2380712E4(v0 + v21, v8, &qword_27DEED5D0, &qword_23815E670);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_238071284(v8, &qword_27DEED5D0, &qword_23815E670);
        if (qword_27DEEA108 != -1)
        {
          swift_once();
        }

        v22 = sub_23815293C();
        __swift_project_value_buffer(v22, qword_27DEED4B0);
        v23 = sub_23815291C();
        v24 = sub_2381550FC();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_238060000, v23, v24, "Not in contact permissions response state yet", v25, 2u);
          MEMORY[0x2383EA8A0](v25, -1, -1);
        }
      }

      else
      {
        v26 = *(v10 + 32);
        v31[1] = v10 + 32;
        v32 = v26;
        (v26)(v15, v8, v9);
        v27 = sub_238154FBC();
        (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
        (*(v10 + 16))(v13, v15, v9);
        v28 = (*(v10 + 80) + 17) & ~*(v10 + 80);
        v29 = (v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
        v30 = swift_allocObject();
        *(v30 + 16) = v16;
        (v32)(v30 + v28, v13, v9);
        *(v30 + v29) = v0;

        sub_238154FEC();

        sub_238071284(v4, &qword_27DEEBA00, &qword_23815B4A0);
        (*(v10 + 8))(v15, v9);
      }
    }
  }

  else
  {

    sub_238119558();
  }
}

uint64_t sub_23811358C()
{
  v1 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_posterImage);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 CGImage];
    if (v3)
    {
      v4 = v3;
      v5 = v0;
      Width = CGImageGetWidth(v3);
      Height = CGImageGetHeight(v4);
      if (qword_27DEEA108 != -1)
      {
        swift_once();
      }

      v8 = sub_23815293C();
      __swift_project_value_buffer(v8, qword_27DEED4B0);
      v9 = v2;
      v10 = sub_23815291C();
      v11 = sub_2381550FC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        *(v12 + 4) = v9;
        *v13 = v1;
        v14 = v9;
        _os_log_impl(&dword_238060000, v10, v11, "Computing text colors for poster %@", v12, 0xCu);
        sub_238071284(v13, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v13, -1, -1);
        MEMORY[0x2383EA8A0](v12, -1, -1);
      }

      v15 = Width;
      v34.size.height = (Height / 6);
      v34.origin.x = 0.0;
      v34.origin.y = 0.0;
      v34.size.width = Width;
      v16 = CGImageCreateWithImageInRect(v4, v34);
      if (v16)
      {
        v17 = v16;
        v18 = [objc_opt_self() colorsForImageRef_];
        if (!v18)
        {
          sub_23807A3F8(0, &qword_27DEED678, 0x277D75348);
          sub_238154EDC();
          v18 = sub_238154ECC();
        }

        v19 = [objc_opt_self() backgroundColorsPreferWhiteForegroundText_];

        if (v19)
        {
          v20 = sub_2381545FC();
        }

        else
        {
          v20 = sub_2381545DC();
        }

        v21 = v20;

        v22 = *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors);
        *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors) = v21;
      }

      v35.origin.x = 0.0;
      v35.origin.y = 0.0;
      v35.size.height = 0.0;
      v35.size.width = v15;
      v23 = CGImageCreateWithImageInRect(v4, v35);
      if (v23)
      {
        v24 = v23;
        v25 = [objc_opt_self() colorsForImageRef_];
        if (!v25)
        {
          sub_23807A3F8(0, &qword_27DEED678, 0x277D75348);
          sub_238154EDC();
          v25 = sub_238154ECC();
        }

        v26 = [objc_opt_self() backgroundColorsPreferWhiteForegroundText_];

        if (v26)
        {
          v27 = sub_2381545FC();
        }

        else
        {
          v27 = sub_2381545DC();
        }

        v28 = v27;

        v29 = v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors;
        v30 = *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors + 8);
        v31 = *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors + 16);
        *(v29 + 8) = v28;
        *(v29 + 16) = v28;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return sub_23811249C();
}

id sub_23811393C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v1 = sub_238154C8C();
  v2 = [v0 initWithBundleIdentifier_];

  v3 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:150.0 scale:{150.0, 1.0}];
  v4 = [v2 prepareImageForDescriptor_];
  if (!v4)
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v10 = sub_23815293C();
    __swift_project_value_buffer(v10, qword_27DEED4B0);
    v11 = sub_23815291C();
    v12 = sub_2381550EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_238060000, v11, v12, "Failed to load Contacts icon", v13, 2u);
      MEMORY[0x2383EA8A0](v13, -1, -1);
    }

    v9 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    goto LABEL_9;
  }

  v5 = v4;
  result = [v4 CGImage];
  if (result)
  {
    v7 = result;
    [v5 scale];
    v9 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v7 scale:0 orientation:v8];

    v2 = v5;
    v3 = v7;
LABEL_9:

    return v9;
  }

  __break(1u);
  return result;
}

void sub_238113B5C(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = qword_27DEEA108;
    v6 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_23815293C();
    __swift_project_value_buffer(v7, qword_27DEED4B0);
    v8 = v6;
    v9 = sub_23815291C();
    v10 = sub_2381550FC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = a1;
      v13 = v8;
      _os_log_impl(&dword_238060000, v9, v10, "Received poster image: %@", v11, 0xCu);
      sub_238071284(v12, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v12, -1, -1);
      MEMORY[0x2383EA8A0](v11, -1, -1);
    }

    v14 = *(a3 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_posterImage);
    *(a3 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_posterImage) = a1;
    v24 = v8;

    sub_23811358C();
  }

  else
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v16 = sub_23815293C();
    __swift_project_value_buffer(v16, qword_27DEED4B0);
    v17 = a2;
    v24 = sub_23815291C();
    v18 = sub_2381550DC();

    if (os_log_type_enabled(v24, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      if (a2)
      {
        v21 = a2;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v19 + 4) = v22;
      *v20 = v23;
      _os_log_impl(&dword_238060000, v24, v18, "Failed to create poster snapshot: %@", v19, 0xCu);
      sub_238071284(v20, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v20, -1, -1);
      MEMORY[0x2383EA8A0](v19, -1, -1);
    }
  }
}

uint64_t sub_238113E34()
{
  v1 = v0;
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEED4B0);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "Destroying NameDrop session controller", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService;
  v7 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService);
  if (v7)
  {
    [v7 invalidate];
  }

  v8 = v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_dismissViewAction;
  v10 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_dismissViewAction);
  v9 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_dismissViewAction + 8);

  v10(v11);

  v12 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__viewModel;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5B8, &qword_23815E650);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  v14 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__canChangeFieldSelection;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v16 = *(*(v15 - 8) + 8);
  v16(v1 + v14, v15);
  v17 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__animatePersonalInformationChange;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC190, &qword_23815B890);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  v16(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__hasReviewInfoButton, v15);
  v19 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__fieldSelection;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5C0, &qword_23815E658);
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  v21 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transactionIdentifier;
  v22 = sub_2381527EC();
  (*(*(v22 - 8) + 8))(v1 + v21, v22);
  v23 = *(v8 + 8);

  sub_23811D4D4(*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state));
  v24 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_airDropClient);

  v25 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockStateMonitor);

  sub_23809BF44(*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_meCardContactProvider));
  v26 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask);

  sub_238071284(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_receiveTransfer, &qword_27DEED5C8, &unk_23815E660);
  sub_238071284(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_sendTransferID, &qword_27DEEC4E8, &qword_23815C178);
  sub_238071284(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_contactPermissionResponseAction, &qword_27DEED5D0, &qword_23815E670);

  v27 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors);
  v28 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors + 8);
  v29 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors + 16);

  return v1;
}

uint64_t sub_238114210()
{
  sub_238113E34();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NameDropSessionController()
{
  result = qword_27DEED578;
  if (!qword_27DEED578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2381142BC()
{
  sub_2380CAE70(319, &qword_27DEED588);
  if (v1 <= 0x3F)
  {
    v17 = *(v0 - 8) + 64;
    sub_2380CAE70(319, &qword_27DEEB898);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_2380CAE70(319, &qword_27DEECF20);
      if (v6 <= 0x3F)
      {
        v18 = *(v5 - 8) + 64;
        sub_2381145C0();
        if (v8 <= 0x3F)
        {
          v19 = *(v7 - 8) + 64;
          v9 = sub_2381527EC();
          if (v10 <= 0x3F)
          {
            v20 = *(v9 - 8) + 64;
            sub_238114628(319, &qword_27DEED598, MEMORY[0x277D54AA8]);
            if (v12 <= 0x3F)
            {
              v21 = *(v11 - 8) + 64;
              sub_238114628(319, &qword_27DEED5A0, MEMORY[0x277D54BD0]);
              if (v14 <= 0x3F)
              {
                v22 = *(v13 - 8) + 64;
                sub_23811467C();
                if (v16 <= 0x3F)
                {
                  v23 = *(v15 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2381145C0()
{
  if (!qword_27DEED590)
  {
    sub_23807A3F8(255, &qword_27DEEE300, 0x277CBDA58);
    v0 = sub_238152AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEED590);
    }
  }
}

void sub_238114628(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23815530C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23811467C()
{
  if (!qword_27DEED5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC530, &qword_23815E3B0);
    v0 = sub_23815530C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEED5A8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI25NameDropSessionControllerC5State33_A7A3F10AD2D820400D6E87A9188FAB27LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_238114708(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23811475C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_2381147B8(void *result, int a2)
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

unint64_t sub_2381147EC()
{
  result = qword_27DEED5B0;
  if (!qword_27DEED5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED5B0);
  }

  return result;
}

uint64_t sub_238114840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4E8, &qword_23815C178) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v6 = sub_23815305C();
  v4[16] = v6;
  v7 = *(v6 - 8);
  v4[17] = v7;
  v8 = *(v7 + 64) + 15;
  v4[18] = swift_task_alloc();
  v9 = sub_23815300C();
  v4[19] = v9;
  v10 = *(v9 - 8);
  v4[20] = v10;
  v11 = *(v10 + 64) + 15;
  v4[21] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5C8, &unk_23815E660) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v13 = sub_23815328C();
  v4[23] = v13;
  v14 = *(v13 - 8);
  v4[24] = v14;
  v15 = *(v14 + 64) + 15;
  v4[25] = swift_task_alloc();
  v16 = sub_2381535DC();
  v4[26] = v16;
  v17 = *(v16 - 8);
  v4[27] = v17;
  v18 = *(v17 + 64) + 15;
  v4[28] = swift_task_alloc();
  v19 = sub_2381527EC();
  v4[29] = v19;
  v20 = *(v19 - 8);
  v4[30] = v20;
  v21 = *(v20 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v22 = sub_2381536AC();
  v4[33] = v22;
  v23 = *(v22 - 8);
  v4[34] = v23;
  v24 = *(v23 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v25 = sub_23815322C();
  v4[37] = v25;
  v26 = *(v25 - 8);
  v4[38] = v26;
  v27 = *(v26 + 64) + 15;
  v4[39] = swift_task_alloc();
  v28 = sub_2381530BC();
  v4[40] = v28;
  v29 = *(v28 - 8);
  v4[41] = v29;
  v30 = *(v29 + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v31 = sub_2381532BC();
  v4[49] = v31;
  v32 = *(v31 - 8);
  v4[50] = v32;
  v33 = *(v32 + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v34 = sub_23815374C();
  v4[59] = v34;
  v35 = *(v34 - 8);
  v4[60] = v35;
  v36 = *(v35 + 64) + 15;
  v4[61] = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5D0, &qword_23815C2C0) - 8) + 64) + 15;
  v4[62] = swift_task_alloc();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5D8, &qword_23815C2C8);
  v4[63] = v38;
  v39 = *(v38 - 8);
  v4[64] = v39;
  v40 = *(v39 + 64) + 15;
  v4[65] = swift_task_alloc();
  v4[66] = sub_238154F8C();
  v4[67] = sub_238154F7C();
  v42 = sub_238154F3C();
  v4[68] = v42;
  v4[69] = v41;

  return MEMORY[0x2822009F8](sub_238114E3C, v42, v41);
}

uint64_t sub_238114E3C()
{
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  v0[70] = __swift_project_value_buffer(v1, qword_27DEED4B0);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "NameDrop starting to monitor transfers", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = v0[14];

  v6 = *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_airDropClient);
  v7 = *(MEMORY[0x277D549D8] + 4);
  v8 = swift_task_alloc();
  v0[71] = v8;
  *v8 = v0;
  v8[1] = sub_238114FA4;
  v9 = v0[65];

  return MEMORY[0x2821B5F90](v9);
}

uint64_t sub_238114FA4()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;
  *(*v1 + 576) = v0;

  v5 = *(v2 + 552);
  v6 = *(v2 + 544);
  if (v0)
  {
    v7 = sub_2381170F4;
  }

  else
  {
    v7 = sub_2381150E0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2381150E0()
{
  v1 = v0[70];
  v2 = sub_23815291C();
  v3 = sub_2381550CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "NameDrop transfers START", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = v0[65];
  v6 = v0[63];

  v0[12] = sub_2381533BC();
  v0[73] = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transactionIdentifier;
  v0[74] = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_receiveTransfer;
  v0[75] = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_sendTransferID;
  v7 = v0[66];
  v0[76] = sub_238154F7C();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5E0, &qword_23815C2D0);
  v9 = sub_23811D848();
  v10 = *(MEMORY[0x277D856D0] + 4);
  v11 = swift_task_alloc();
  v0[77] = v11;
  *v11 = v0;
  v11[1] = sub_238115264;
  v12 = v0[62];

  return MEMORY[0x282200308](v12, v8, v9);
}

uint64_t sub_238115264()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v4 = *v1;
  *(*v1 + 624) = v0;

  v5 = *(v2 + 608);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_238154F3C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_238116D50;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_238154F3C();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2381153FC;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_2381153FC()
{
  v1 = v0[76];

  v2 = v0[69];
  v3 = v0[68];

  return MEMORY[0x2822009F8](sub_238115464, v3, v2);
}

uint64_t sub_238115464()
{
  v341 = v0;
  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[60];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v339[67];
    v5 = v339[12];

    goto LABEL_7;
  }

  (*(v3 + 32))(v339[61], v1, v2);
  v6 = sub_23815500C();
  v7 = v339[70];
  if (v6)
  {
    v8 = v339[67];

    v9 = sub_23815291C();
    v10 = sub_2381550CC();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v339[60];
    v12 = v339[61];
    v14 = v339[59];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_238060000, v9, v10, "Transfer monitoring task is canceled", v15, 2u);
      MEMORY[0x2383EA8A0](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
    v16 = v339[12];
LABEL_7:
    v17 = v339[70];

    v18 = sub_23815291C();
    v19 = sub_2381550FC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v339[65];
    v22 = v339[63];
    v23 = v339[64];
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_238060000, v18, v19, "NameDrop transfers ENDED", v24, 2u);
      MEMORY[0x2383EA8A0](v24, -1, -1);
    }

    (*(v23 + 8))(v21, v22);
LABEL_10:
    v25 = v339[65];
    v27 = v339[61];
    v26 = v339[62];
    v29 = v339[57];
    v28 = v339[58];
    v31 = v339[55];
    v30 = v339[56];
    v33 = v339[53];
    v32 = v339[54];
    v34 = v339[52];
    v254 = v339[51];
    v256 = v339[48];
    v258 = v339[47];
    v259 = v339[46];
    v260 = v339[45];
    v262 = v339[44];
    v264 = v339[43];
    v267 = v339[42];
    v269 = v339[39];
    v275 = v339[36];
    v281 = v339[35];
    v287 = v339[32];
    loga = v339[31];
    v297 = v339[28];
    v304 = v339[25];
    v313 = v339[22];
    v322 = v339[21];
    v331 = v339[18];
    v335 = v339[15];

    v35 = v339[1];

    return v35();
  }

  v37 = sub_23815291C();
  v38 = sub_2381550CC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_238060000, v37, v38, "NameDrop transfers CHANGED", v39, 2u);
    MEMORY[0x2383EA8A0](v39, -1, -1);
  }

  v40 = v339[61];

  v41 = sub_23815373C();
  v44 = 0;
  v45 = v41 + 64;
  v265 = v41;
  v46 = -1;
  v47 = -1 << *(v41 + 32);
  if (-v47 < 64)
  {
    v46 = ~(-1 << -v47);
  }

  v48 = v46 & *(v41 + 64);
  v49 = (63 - v47) >> 6;
  v261 = v49;
  v263 = v41 + 64;
  while (v48)
  {
LABEL_25:
    v57 = v339[57];
    v56 = v339[58];
    v59 = v339[49];
    v58 = v339[50];
    v60 = v339[38];
    v61 = v339[39];
    v314 = v339[73];
    v323 = v339[37];
    v62 = v339[34];
    v288 = v339[33];
    v276 = v339[36];
    v282 = v339[32];
    v305 = v339[31];
    v270 = v339[30];
    v298 = v339[29];
    logb = v339[14];
    v332 = *(v58 + 16);
    v332(v56, *(v265 + 56) + *(v58 + 72) * (__clz(__rbit64(v48)) | (v44 << 6)), v59);
    (*(v58 + 32))(v57, v56, v59);
    sub_23815325C();
    sub_2381531FC();
    v63 = v61;
    v64 = *(v60 + 8);
    (v64)(v63, v323);
    sub_23815369C();
    v65 = *(v62 + 8);
    v324 = (v48 - 1) & v48;
    v65(v276, v288);
    (v270[2].isa)(v305, logb + v314, v298);
    LOBYTE(v57) = sub_2381527AC();
    isa = v270[1].isa;
    isa(v305, v298);
    isa(v282, v298);
    if (v57)
    {
      v67 = v339[57];
      v68 = v339[39];
      v69 = v339[37];
      v71 = v339[27];
      v70 = v339[28];
      v72 = v339[26];
      sub_23815325C();
      sub_23815320C();
      (v64)(v68, v69);
      LOBYTE(v68) = sub_2381535CC();
      (*(v71 + 8))(v70, v72);
      v73 = v339[70];
      v74 = v339[57];
      if (v68)
      {
        v315 = v65;
        v75 = v339[55];
        v76 = v339[49];
        v77 = v332;
        v332(v339[56], v74, v76);
        v332(v75, v74, v76);
        v78 = sub_23815291C();
        v79 = sub_2381550FC();
        v80 = os_log_type_enabled(v78, v79);
        v82 = v339[55];
        v81 = v339[56];
        v84 = v339[49];
        v83 = v339[50];
        if (v80)
        {
          v85 = v339[36];
          v306 = v79;
          v86 = v339[33];
          v283 = v339[24];
          v271 = v339[25];
          v277 = v339[23];
          v87 = swift_slowAlloc();
          v299 = swift_slowAlloc();
          v340[0] = v299;
          *v87 = 136315394;
          logc = v78;
          sub_23815327C();
          sub_23812133C(&qword_27DEED5E0, MEMORY[0x277D54BD0]);
          v88 = sub_23815559C();
          v89 = v82;
          v91 = v90;
          v315(v85, v86);
          v92 = *(v83 + 8);
          v92(v81, v84);
          v93 = sub_238085EAC(v88, v91, v340);

          *(v87 + 4) = v93;
          *(v87 + 12) = 2080;
          sub_23815329C();
          sub_23812133C(&qword_27DEED5E8, MEMORY[0x277D54A88]);
          v94 = sub_23815559C();
          v96 = v95;
          (v283[1].isa)(v271, v277);
          v92(v89, v84);
          v97 = sub_238085EAC(v94, v96, v340);

          *(v87 + 14) = v97;
          _os_log_impl(&dword_238060000, logc, v306, "NameDrop receive transfer {id: %s, state: %s}", v87, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2383EA8A0](v299, -1, -1);
          v98 = v87;
          v77 = v332;
          MEMORY[0x2383EA8A0](v98, -1, -1);
        }

        else
        {

          v92 = *(v83 + 8);
          v92(v82, v84);
          v92(v81, v84);
        }

        v137 = v339[74];
        v138 = v339[57];
        v139 = v339[49];
        v140 = v339[50];
        v141 = v339[22];
        v142 = v339[14];
        v77(v141, v138, v139);
        (*(v140 + 56))(v141, 0, 1, v139);
        swift_beginAccess();
        sub_23811D8AC(v141, v142 + v137, &qword_27DEED5C8, &unk_23815E660);
        swift_endAccess();
        sub_2381173D0(v138);
        v41 = (v92)(v138, v139);
      }

      else
      {
        v332(v339[54], v74, v339[49]);
        v123 = sub_23815291C();
        v124 = sub_2381550DC();
        v125 = os_log_type_enabled(v123, v124);
        v126 = v339[57];
        v127 = v339[54];
        if (v125)
        {
          v317 = v339[57];
          v128 = v339[53];
          v129 = v339[49];
          v130 = v339[50];
          v131 = swift_slowAlloc();
          v308 = swift_slowAlloc();
          v340[0] = v308;
          *v131 = 136315138;
          v332(v128, v127, v129);
          v132 = sub_238154D2C();
          v134 = v133;
          v135 = *(v130 + 8);
          v135(v127, v129);
          v136 = sub_238085EAC(v132, v134, v340);

          *(v131 + 4) = v136;
          _os_log_impl(&dword_238060000, v123, v124, "NameDrop ignoring transfer for non contactExchange transfer {transfer: %s", v131, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v308);
          MEMORY[0x2383EA8A0](v308, -1, -1);
          MEMORY[0x2383EA8A0](v131, -1, -1);

          v41 = (v135)(v317, v129);
        }

        else
        {
          v143 = v339[49];
          v144 = v339[50];

          v145 = *(v144 + 8);
          v145(v127, v143);
          v41 = (v145)(v126, v143);
        }
      }
    }

    else
    {
      v307 = v64;
      v99 = v339[70];
      v100 = v339[57];
      v101 = v339[51];
      v102 = v339[49];
      v332(v339[52], v100, v102);
      v332(v101, v100, v102);
      v103 = sub_23815291C();
      v104 = sub_2381550CC();
      v105 = os_log_type_enabled(v103, v104);
      v106 = v339[57];
      if (v105)
      {
        logd = v104;
        v107 = v339[52];
        v108 = v339[53];
        v253 = v339[51];
        v300 = v339[57];
        v250 = v339[50];
        v109 = v339[49];
        v316 = v65;
        v110 = v339[39];
        v252 = v339[36];
        v255 = v339[37];
        v257 = v339[35];
        v284 = v103;
        v111 = v339[34];
        v272 = v339[33];
        v112 = swift_slowAlloc();
        v278 = swift_slowAlloc();
        v340[0] = v278;
        *v112 = 136315394;
        v113 = v109;
        v332(v108, v107, v109);
        v251 = v109;
        v114 = sub_238154D2C();
        v116 = v115;
        v117 = *(v250 + 8);
        v117(v107, v113);
        v118 = sub_238085EAC(v114, v116, v340);

        *(v112 + 4) = v118;
        *(v112 + 12) = 2080;
        sub_23815325C();
        sub_2381531FC();
        (v307)(v110, v255);
        (*(v111 + 16))(v257, v252, v272);
        v119 = sub_238154D2C();
        v121 = v120;
        v316(v252, v272);
        v117(v253, v251);
        v122 = sub_238085EAC(v119, v121, v340);

        *(v112 + 14) = v122;
        _os_log_impl(&dword_238060000, v284, logd, "Ignoring untracked receive transfer: %s %s", v112, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2383EA8A0](v278, -1, -1);
        MEMORY[0x2383EA8A0](v112, -1, -1);

        v41 = (v117)(v300, v251);
      }

      else
      {
        v50 = v339[51];
        v51 = v339[52];
        v52 = v339[49];
        v53 = v339[50];

        v54 = *(v53 + 8);
        v54(v50, v52);
        v54(v51, v52);
        v41 = (v54)(v106, v52);
      }
    }

    v49 = v261;
    v45 = v263;
    v48 = v324;
  }

  while (1)
  {
    v55 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v55 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v55);
    ++v44;
    if (v48)
    {
      v44 = v55;
      goto LABEL_25;
    }
  }

  v146 = v339[61];

  v41 = sub_23815372C();
  v147 = 0;
  v148 = (v41 + 64);
  v285 = (v41 + 64);
  v289 = v41;
  v149 = -1;
  v150 = -1 << *(v41 + 32);
  if (-v150 < 64)
  {
    v149 = ~(-1 << -v150);
  }

  v151 = v149 & *(v41 + 64);
  v152 = (63 - v150) >> 6;
  v279 = v152;
  while (v151)
  {
LABEL_46:
    v325 = v339[73];
    v159 = v339[47];
    v158 = v339[48];
    v161 = v339[40];
    v160 = v339[41];
    v162 = v339[36];
    v163 = v339[34];
    v301 = v339[33];
    v164 = v339[31];
    loge = v339[32];
    v165 = v339[30];
    v309 = v339[14];
    v318 = v339[29];
    v336 = *(v160 + 16);
    v336(v158, *(v289 + 56) + *(v160 + 72) * (__clz(__rbit64(v151)) | (v147 << 6)), v161);
    (*(v160 + 32))(v159, v158, v161);
    sub_23815303C();
    sub_23815369C();
    v166 = *(v163 + 8);
    v151 &= v151 - 1;
    v166(v162, v301);
    (*(v165 + 16))(v164, v309 + v325, v318);
    LOBYTE(v158) = sub_2381527AC();
    v167 = *(v165 + 8);
    v167(v164, v318);
    v167(loge, v318);
    if (v158)
    {
      v168 = v339[47];
      v170 = v339[27];
      v169 = v339[28];
      v319 = v166;
      v326 = v339[26];
      v172 = v339[20];
      v171 = v339[21];
      v173 = v339[19];
      sub_23815302C();
      sub_238152FEC();
      (*(v172 + 8))(v171, v173);
      LOBYTE(v171) = sub_2381535CC();
      (*(v170 + 8))(v169, v326);
      v174 = v339[70];
      if ((v171 & 1) == 0)
      {
        v226 = v339[67];
        v227 = v339[47];
        v228 = v339[44];
        v229 = v339[40];

        v336(v228, v227, v229);
        v230 = sub_23815291C();
        v231 = sub_2381550DC();
        v232 = os_log_type_enabled(v230, v231);
        v233 = v339[64];
        v321 = v339[63];
        v330 = v339[65];
        v234 = v339[60];
        v303 = v339[59];
        v312 = v339[61];
        log = v339[47];
        v235 = v339[44];
        if (v232)
        {
          v280 = v231;
          v236 = v339[43];
          v237 = v339[40];
          v274 = v339[41];
          v286 = v339[64];
          v238 = swift_slowAlloc();
          v239 = swift_slowAlloc();
          v340[0] = v239;
          *v238 = 136315138;
          v336(v236, v235, v237);
          v240 = sub_238154D2C();
          v242 = v241;
          v243 = v274[1].isa;
          v243(v235, v237);
          v244 = sub_238085EAC(v240, v242, v340);

          *(v238 + 4) = v244;
          _os_log_impl(&dword_238060000, v230, v280, "NameDrop ignoring transfer for non contactExchange transfer {transfer: %s", v238, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v239);
          MEMORY[0x2383EA8A0](v239, -1, -1);
          MEMORY[0x2383EA8A0](v238, -1, -1);

          v243(log, v237);
          (*(v234 + 8))(v312, v303);
          v245 = v339[12];

          (v286[1].isa)(v330, v321);
        }

        else
        {
          v246 = v339[40];
          v247 = v339[41];

          v248 = *(v247 + 8);
          v248(v235, v246);
          v248(log, v246);
          (*(v234 + 8))(v312, v303);
          v249 = v339[12];

          (*(v233 + 8))(v330, v321);
        }

        goto LABEL_10;
      }

      v175 = v339[47];
      v176 = v339[45];
      v177 = v339[40];
      v336(v339[46], v175, v177);
      v336(v176, v175, v177);
      v178 = sub_23815291C();
      v179 = sub_2381550FC();
      v180 = os_log_type_enabled(v178, v179);
      v181 = v339[46];
      v337 = v339[45];
      v182 = v339[40];
      v183 = v339[41];
      if (v180)
      {
        v184 = v339[36];
        v185 = v339[33];
        v268 = v339[18];
        v310 = v339[17];
        logf = v339[16];
        v186 = swift_slowAlloc();
        v333 = swift_slowAlloc();
        v340[0] = v333;
        *v186 = 136315394;
        v327 = v179;
        sub_23815303C();
        sub_23812133C(&qword_27DEED5E0, MEMORY[0x277D54BD0]);
        v187 = sub_23815559C();
        v273 = v178;
        v188 = v182;
        v266 = v182;
        v190 = v189;
        v319(v184, v185);
        v191 = v337;
        v192 = *(v183 + 8);
        v192(v181, v188);
        v193 = sub_238085EAC(v187, v190, v340);

        *(v186 + 4) = v193;
        *(v186 + 12) = 2080;
        sub_23815306C();
        sub_23812133C(&qword_27DEED5F0, MEMORY[0x277D548F8]);
        v194 = sub_23815559C();
        v196 = v195;
        (v310[1])(v268, logf);
        v338 = v192;
        v192(v191, v266);
        v197 = sub_238085EAC(v194, v196, v340);

        *(v186 + 14) = v197;
        _os_log_impl(&dword_238060000, v273, v327, "NameDrop send transfer {id: %s, state: %s}", v186, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2383EA8A0](v333, -1, -1);
        MEMORY[0x2383EA8A0](v186, -1, -1);
      }

      else
      {

        v214 = *(v183 + 8);
        v214(v337, v182);
        v338 = v214;
        v214(v181, v182);
      }

      v215 = v339[75];
      v216 = v339[47];
      v218 = v339[33];
      v217 = v339[34];
      v220 = v339[14];
      v219 = v339[15];
      v329 = v339[41] + 8;
      v334 = v339[40];
      sub_23815303C();
      (*(v217 + 56))(v219, 0, 1, v218);
      swift_beginAccess();
      sub_23811D8AC(v219, v220 + v215, &qword_27DEEC4E8, &qword_23815C178);
      swift_endAccess();
      sub_2381185DC(v216);
      v41 = v338(v216, v334);
    }

    else
    {
      v198 = v339[70];
      v336(v339[42], v339[47], v339[40]);
      v199 = sub_23815291C();
      v200 = sub_2381550CC();
      v201 = os_log_type_enabled(v199, v200);
      v202 = v339[47];
      if (v201)
      {
        v203 = v339[42];
        v204 = v339[43];
        v205 = v339[40];
        v302 = v203;
        v311 = v339[41];
        v328 = v339[47];
        v206 = swift_slowAlloc();
        v320 = swift_slowAlloc();
        v340[0] = v320;
        *v206 = 136315138;
        v207 = v203;
        v208 = v205;
        v336(v204, v207, v205);
        v209 = sub_238154D2C();
        v211 = v210;
        v212 = v311[1];
        v212(v302, v208);
        v213 = sub_238085EAC(v209, v211, v340);

        *(v206 + 4) = v213;
        _os_log_impl(&dword_238060000, v199, v200, "Ignoring untracked send transfer: %s", v206, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v320);
        MEMORY[0x2383EA8A0](v320, -1, -1);
        MEMORY[0x2383EA8A0](v206, -1, -1);

        v41 = (v212)(v328, v208);
      }

      else
      {
        v154 = v339[41];
        v153 = v339[42];
        v155 = v339[40];

        v156 = *(v154 + 8);
        v156(v153, v155);
        v41 = (v156)(v202, v155);
      }
    }

    v152 = v279;
    v148 = v285;
  }

  while (1)
  {
    v157 = v147 + 1;
    if (__OFADD__(v147, 1))
    {
      break;
    }

    if (v157 >= v152)
    {
      (*(v339[60] + 8))(v339[61], v339[59]);

      v221 = v339[66];
      v339[76] = sub_238154F7C();
      v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5E0, &qword_23815C2D0);
      v223 = sub_23811D848();
      v224 = *(MEMORY[0x277D856D0] + 4);
      v225 = swift_task_alloc();
      v339[77] = v225;
      *v225 = v339;
      v225[1] = sub_238115264;
      v41 = v339[62];
      v42 = v222;
      v43 = v223;

      return MEMORY[0x282200308](v41, v42, v43);
    }

    v151 = v148[v157].isa;
    ++v147;
    if (v151)
    {
      v147 = v157;
      goto LABEL_46;
    }
  }

LABEL_61:
  __break(1u);
  return MEMORY[0x282200308](v41, v42, v43);
}

uint64_t sub_238116D50()
{
  v1 = v0[76];
  v0[13] = v0[78];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  swift_willThrowTypedImpl();

  v2 = v0[69];
  v3 = v0[68];

  return MEMORY[0x2822009F8](sub_238116DF0, v3, v2);
}

uint64_t sub_238116DF0()
{
  v51 = v0;
  v1 = v0[67];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];

  v5 = v0[12];

  (*(v4 + 8))(v2, v3);
  v6 = v0[78];
  v7 = v0[70];
  v8 = v6;
  v9 = sub_23815291C();
  v10 = sub_2381550FC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v50 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = v0[2];
    v13 = v0[3];
    v15 = v0[4];
    v16 = sub_23815563C();
    v18 = sub_238085EAC(v16, v17, &v50);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_238060000, v9, v10, "NameDrop transfers FAILED {error: %s}", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2383EA8A0](v12, -1, -1);
    MEMORY[0x2383EA8A0](v11, -1, -1);
  }

  else
  {
  }

  v19 = v0[65];
  v21 = v0[61];
  v20 = v0[62];
  v23 = v0[57];
  v22 = v0[58];
  v25 = v0[55];
  v24 = v0[56];
  v27 = v0[53];
  v26 = v0[54];
  v28 = v0[52];
  v31 = v0[51];
  v32 = v0[48];
  v33 = v0[47];
  v34 = v0[46];
  v35 = v0[45];
  v36 = v0[44];
  v37 = v0[43];
  v38 = v0[42];
  v39 = v0[39];
  v40 = v0[36];
  v41 = v0[35];
  v42 = v0[32];
  v43 = v0[31];
  v44 = v0[28];
  v45 = v0[25];
  v46 = v0[22];
  v47 = v0[21];
  v48 = v0[18];
  v49 = v0[15];

  v29 = v0[1];

  return v29();
}

uint64_t sub_2381170F4()
{
  v47 = v0;
  v1 = v0[67];

  v2 = v0[72];
  v3 = v0[70];
  v4 = v2;
  v5 = sub_23815291C();
  v6 = sub_2381550FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_23815563C();
    v14 = sub_238085EAC(v12, v13, &v46);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_238060000, v5, v6, "NameDrop transfers FAILED {error: %s}", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2383EA8A0](v8, -1, -1);
    MEMORY[0x2383EA8A0](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[65];
  v17 = v0[61];
  v16 = v0[62];
  v19 = v0[57];
  v18 = v0[58];
  v21 = v0[55];
  v20 = v0[56];
  v23 = v0[53];
  v22 = v0[54];
  v24 = v0[52];
  v27 = v0[51];
  v28 = v0[48];
  v29 = v0[47];
  v30 = v0[46];
  v31 = v0[45];
  v32 = v0[44];
  v33 = v0[43];
  v34 = v0[42];
  v35 = v0[39];
  v36 = v0[36];
  v37 = v0[35];
  v38 = v0[32];
  v39 = v0[31];
  v40 = v0[28];
  v41 = v0[25];
  v42 = v0[22];
  v43 = v0[21];
  v44 = v0[18];
  v45 = v0[15];

  v25 = v0[1];

  return v25();
}

uint64_t sub_2381173D0(uint64_t a1)
{
  v2 = sub_2381532BC();
  v140 = *(v2 - 8);
  v141 = v2;
  v3 = *(v140 + 64);
  MEMORY[0x28223BE20](v2);
  v139 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_23815324C();
  v144 = *(v148 - 8);
  v5 = *(v144 + 64);
  v6 = MEMORY[0x28223BE20](v148);
  v143 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v147 = &v137 - v8;
  v9 = sub_2381532AC();
  v151 = *(v9 - 8);
  v152 = v9;
  v10 = *(v151 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v142 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v146 = &v137 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v145 = &v137 - v16;
  MEMORY[0x28223BE20](v15);
  v150 = &v137 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC508, &unk_23815C190);
  v153 = *(v18 - 8);
  v19 = *(v153 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v137 - v20;
  v22 = sub_23815323C();
  v155 = *(v22 - 1);
  v156 = v22;
  isa = v155[8].isa;
  MEMORY[0x28223BE20](v22);
  v25 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED618, &qword_23815E738);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v149 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v137 - v31;
  v33 = sub_23815328C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v138 = &v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v137 - v38;
  sub_23815329C();
  result = (*(v34 + 88))(v39, v33);
  if (result == *MEMORY[0x277D54A60])
  {
    (*(v34 + 96))(v39, v33);
    (*(v27 + 32))(v32, v39, v26);
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v41 = sub_23815293C();
    __swift_project_value_buffer(v41, qword_27DEED4B0);
    v42 = sub_23815291C();
    v43 = sub_2381550FC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_238060000, v42, v43, "Auto accepting ask response", v44, 2u);
      MEMORY[0x2383EA8A0](v44, -1, -1);
    }

    v46 = v155;
    v45 = v156;
    (v155[13].isa)(v25, *MEMORY[0x277D54A18], v156);
    sub_23811F0D4(v32, v25);
    (v46[1].isa)(v25, v45);
    return (*(v27 + 8))(v32, v26);
  }

  else if (result == *MEMORY[0x277D54A78])
  {
    (*(v34 + 96))(v39, v33);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED648, &qword_23815E758);
    v48 = v153;
    (*(v153 + 32))(v21, &v39[*(v47 + 48)], v18);
    sub_23811A190();
    (*(v48 + 8))(v21, v18);
    v49 = sub_23815354C();
    return (*(*(v49 - 8) + 8))(v39, v49);
  }

  else if (result == *MEMORY[0x277D54A70])
  {
    v50 = v26;
    v51 = v39;
    (*(v34 + 96))(v39, v33);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED640, &qword_23815E750);
    v53 = v27;
    v54 = *(v27 + 32);
    v55 = v149;
    v54(v149, &v39[*(v52 + 48)], v50);
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v56 = sub_23815293C();
    __swift_project_value_buffer(v56, qword_27DEED4B0);
    v57 = sub_23815291C();
    v58 = sub_2381550FC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_238060000, v57, v58, "Auto accepting should import contact response", v59, 2u);
      MEMORY[0x2383EA8A0](v59, -1, -1);
    }

    v61 = v155;
    v60 = v156;
    (v155[13].isa)(v25, *MEMORY[0x277D54A18], v156);
    sub_23811F0D4(v55, v25);
    (v61[1].isa)(v25, v60);
    (*(v53 + 8))(v55, v50);
    v62 = sub_23815354C();
    return (*(*(v62 - 8) + 8))(v51, v62);
  }

  else
  {
    v63 = v39;
    if (result == *MEMORY[0x277D54A58])
    {
      (*(v34 + 96))(v39, v33);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED638, &qword_23815E748);
      v65 = &v39[v64[16]];
      v66 = v65[1];
      v153 = *v65;
      v67 = *&v39[v64[20]];

      v68 = *&v39[v64[24]];

      v69 = *&v39[v64[28]];

      v70 = v150;
      v71 = v151;
      v72 = v152;
      (*(v151 + 32))(v150, v39, v152);
      if (qword_27DEEA108 != -1)
      {
        swift_once();
      }

      v73 = sub_23815293C();
      __swift_project_value_buffer(v73, qword_27DEED4B0);
      v74 = v145;
      (*(v71 + 16))(v145, v70, v72);

      v75 = sub_23815291C();
      v76 = sub_2381550FC();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v158[0] = v149;
        *v77 = 136315394;
        sub_23812133C(&qword_27DEED630, MEMORY[0x277D54A98]);
        LODWORD(v148) = v76;
        v78 = sub_23815559C();
        v80 = v79;
        v81 = *(v71 + 8);
        v81(v74, v152);
        v82 = sub_238085EAC(v78, v80, v158);

        *(v77 + 4) = v82;
        *(v77 + 12) = 2080;
        v83 = v153;
        v157[0] = v153;
        v157[1] = v66;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECE00, &qword_23815AD70);
        v84 = sub_238154D2C();
        v86 = sub_238085EAC(v84, v85, v158);

        *(v77 + 14) = v86;
        v72 = v152;
        _os_log_impl(&dword_238060000, v75, v148, "Boop2Meet AirDrop Successful {Metrics: %s, remoteContactIdentifier: %s}", v77, 0x16u);
        v87 = v149;
        swift_arrayDestroy();
        MEMORY[0x2383EA8A0](v87, -1, -1);
        v88 = v77;
        v63 = v39;
        MEMORY[0x2383EA8A0](v88, -1, -1);
      }

      else
      {

        v81 = *(v71 + 8);
        v81(v74, v72);
        v83 = v153;
      }

      v118 = v64[12];
      sub_23811A74C(v83, v66);

      v81(v150, v72);
      return (v155[1].isa)(&v63[v118], v156);
    }

    else
    {
      v89 = v151;
      if (result == *MEMORY[0x277D54A50])
      {
        (*(v34 + 96))(v39, v33);
        v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED620, &qword_23815E740) + 48);
        v91 = v146;
        v92 = v152;
        (*(v89 + 32))(v146, v63, v152);
        v93 = v144;
        v94 = &v63[v90];
        v96 = v147;
        v95 = v148;
        (*(v144 + 32))(v147, v94, v148);
        if (qword_27DEEA108 != -1)
        {
          swift_once();
        }

        v97 = sub_23815293C();
        __swift_project_value_buffer(v97, qword_27DEED4B0);
        v98 = *(v93 + 16);
        v99 = v143;
        v98(v143, v96, v95);
        v100 = v142;
        (*(v89 + 16))(v142, v91, v92);
        v101 = sub_23815291C();
        v102 = sub_2381550FC();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v155 = v101;
          v105 = v104;
          v156 = swift_slowAlloc();
          v157[0] = v156;
          *v103 = 138412546;
          sub_23812133C(&qword_27DEED628, MEMORY[0x277D54A40]);
          swift_allocError();
          LODWORD(v153) = v102;
          v98(v106, v99, v148);
          v107 = _swift_stdlib_bridgeErrorToNSError();
          v108 = v99;
          v109 = *(v93 + 8);
          v109(v108, v148);
          *(v103 + 4) = v107;
          *v105 = v107;
          *(v103 + 12) = 2080;
          sub_23812133C(&qword_27DEED630, MEMORY[0x277D54A98]);
          v110 = sub_23815559C();
          v112 = v111;
          v113 = *(v89 + 8);
          v113(v100, v92);
          v114 = sub_238085EAC(v110, v112, v157);

          *(v103 + 14) = v114;
          v115 = v155;
          _os_log_impl(&dword_238060000, v155, v153, "Boop2Meet AirDrop failed {ERROR: %@, Metrics: %s}", v103, 0x16u);
          sub_238071284(v105, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v105, -1, -1);
          v116 = v156;
          __swift_destroy_boxed_opaque_existential_1(v156);
          MEMORY[0x2383EA8A0](v116, -1, -1);
          v117 = v103;
          v95 = v148;
          MEMORY[0x2383EA8A0](v117, -1, -1);
        }

        else
        {

          v113 = *(v89 + 8);
          v113(v100, v92);
          v120 = v99;
          v109 = *(v93 + 8);
          v109(v120, v95);
        }

        sub_23811AB70();
        v109(v147, v95);
        return (v113)(v146, v92);
      }

      else if (result != *MEMORY[0x277D54A80])
      {
        if (result == *MEMORY[0x277D54A68])
        {
          if (*(v154 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction) != 3)
          {
            v119 = *(v154 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
            *(v154 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 1;
            sub_23811D4D4(v119);
            return sub_23811249C();
          }
        }

        else
        {
          if (qword_27DEEA108 != -1)
          {
            swift_once();
          }

          v121 = sub_23815293C();
          __swift_project_value_buffer(v121, qword_27DEED4B0);
          v123 = v139;
          v122 = v140;
          v124 = v141;
          (*(v140 + 16))(v139, a1, v141);
          v125 = sub_23815291C();
          v126 = sub_2381550DC();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v154 = v127;
            v156 = swift_slowAlloc();
            v157[0] = v156;
            *v127 = 136315138;
            v128 = v138;
            LODWORD(v155) = v126;
            sub_23815329C();
            sub_23812133C(&qword_27DEED5E8, MEMORY[0x277D54A88]);
            v153 = sub_23815559C();
            v129 = v123;
            v131 = v130;
            v132 = *(v34 + 8);
            v132(v128, v33);
            (*(v122 + 8))(v129, v141);
            v133 = sub_238085EAC(v153, v131, v157);

            v134 = v154;
            *(v154 + 1) = v133;
            v135 = v134;
            _os_log_impl(&dword_238060000, v125, v155, "Shouldn't get state %s for onlyExchange AirDrop", v134, 0xCu);
            v136 = v156;
            __swift_destroy_boxed_opaque_existential_1(v156);
            MEMORY[0x2383EA8A0](v136, -1, -1);
            MEMORY[0x2383EA8A0](v135, -1, -1);
          }

          else
          {

            (*(v122 + 8))(v123, v124);
            v132 = *(v34 + 8);
          }

          return (v132)(v39, v33);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2381185DC(uint64_t a1)
{
  v2 = sub_2381530BC();
  v114 = *(v2 - 8);
  v115 = v2;
  v3 = *(v114 + 64);
  MEMORY[0x28223BE20](v2);
  v113 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_238152FBC();
  v120 = *(v125 - 8);
  v5 = *(v120 + 64);
  v6 = MEMORY[0x28223BE20](v125);
  v119 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v124 = &v113 - v8;
  v126 = sub_23815309C();
  isa = v126[-1].isa;
  v9 = *(isa + 8);
  v10 = MEMORY[0x28223BE20](v126);
  v116 = (&v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v117 = (&v113 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v118 = &v113 - v15;
  MEMORY[0x28223BE20](v14);
  v123 = &v113 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC500, &unk_23815E6B0);
  v122 = *(v17 - 8);
  v18 = *(v122 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v113 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC508, &unk_23815C190);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v113 - v24;
  v26 = sub_23815305C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v113 - v32;
  sub_23815306C();
  result = (*(v27 + 88))(v33, v26);
  if (result == *MEMORY[0x277D548E8])
  {
    (*(v27 + 96))(v33, v26);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC518, &qword_23815C1A0);
    (*(v22 + 32))(v25, &v33[*(v35 + 48)], v21);
    sub_23811A190();
    (*(v22 + 8))(v25, v21);
LABEL_3:
    v36 = sub_23815354C();
    return (*(*(v36 - 8) + 8))(v33, v36);
  }

  v37 = v127;
  if (result == *MEMORY[0x277D548B0])
  {
    (*(v27 + 96))(v33, v26);
    if (*(v37 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction) != 3)
    {
      v38 = *(v37 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
      *(v37 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 1;
      sub_23811D4D4(v38);
      sub_23811249C();
    }

    v36 = sub_23815362C();
    return (*(*(v36 - 8) + 8))(v33, v36);
  }

  if (result == *MEMORY[0x277D548E0])
  {
    (*(v27 + 96))(v33, v26);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC510, &unk_23815E6E0);
    v40 = v122;
    (*(v122 + 32))(v20, &v33[*(v39 + 48)], v17);
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v41 = sub_23815293C();
    __swift_project_value_buffer(v41, qword_27DEED4B0);
    v42 = sub_23815291C();
    v43 = sub_2381550FC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_238060000, v42, v43, "Auto accepting should import contact response", v44, 2u);
      MEMORY[0x2383EA8A0](v44, -1, -1);
    }

    sub_23811F934(v20, 1);
    (*(v40 + 8))(v20, v17);
    goto LABEL_3;
  }

  if (result == *MEMORY[0x277D548C0])
  {
    (*(v27 + 96))(v33, v26);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED608, &unk_23815E6D0) + 48);
    v46 = isa;
    v47 = v123;
    v48 = v126;
    (*(isa + 4))(v123, v33, v126);
    v49 = v120;
    v50 = &v33[v45];
    v52 = v124;
    v51 = v125;
    (*(v120 + 32))(v124, v50, v125);
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v53 = sub_23815293C();
    __swift_project_value_buffer(v53, qword_27DEED4B0);
    v54 = v119;
    v122 = *(v49 + 16);
    (v122)(v119, v52, v51);
    v55 = v118;
    (*(v46 + 2))(v118, v47, v48);
    v56 = sub_23815291C();
    v57 = sub_2381550FC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v115 = v59;
      v117 = swift_slowAlloc();
      v128[0] = v117;
      *v58 = 138412546;
      sub_23812133C(&qword_27DEEC018, MEMORY[0x277D548A0]);
      swift_allocError();
      v116 = v56;
      (v122)(v60, v54, v125);
      v61 = _swift_stdlib_bridgeErrorToNSError();
      v122 = *(v49 + 8);
      (v122)(v54, v125);
      *(v58 + 4) = v61;
      *v59 = v61;
      *(v58 + 12) = 2080;
      sub_23812133C(&qword_27DEED600, MEMORY[0x277D54918]);
      v62 = sub_23815559C();
      v64 = v63;
      v65 = v57;
      v66 = *(v46 + 1);
      v66(v55, v126);
      v67 = sub_238085EAC(v62, v64, v128);
      v68 = v126;

      *(v58 + 14) = v67;
      v69 = v65;
      v70 = v122;
      v71 = v116;
      _os_log_impl(&dword_238060000, v116, v69, "Boop2Meet AirDrop failed {ERROR: %@, Metrics: %s}", v58, 0x16u);
      v72 = v115;
      sub_238071284(v115, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v72, -1, -1);
      v73 = v117;
      __swift_destroy_boxed_opaque_existential_1(v117);
      MEMORY[0x2383EA8A0](v73, -1, -1);
      v74 = v58;
      v51 = v125;
      MEMORY[0x2383EA8A0](v74, -1, -1);
    }

    else
    {

      v66 = *(v46 + 1);
      v66(v55, v48);
      v70 = *(v49 + 8);
      v70(v54, v51);
      v68 = v48;
    }

    sub_23811AB70();
    v70(v124, v51);
    return (v66)(v123, v68);
  }

  else
  {
    v75 = v126;
    if (result == *MEMORY[0x277D548D0])
    {
      (*(v27 + 96))(v33, v26);
      v76 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5F8, &unk_23815E6C0) + 48)];
      v77 = v76[1];
      v125 = *v76;
      v78 = isa;
      v79 = v117;
      (*(isa + 4))(v117, v33, v75);
      if (qword_27DEEA108 != -1)
      {
        swift_once();
      }

      v80 = sub_23815293C();
      __swift_project_value_buffer(v80, qword_27DEED4B0);
      v81 = v116;
      (*(v78 + 2))(v116, v79, v75);

      v82 = sub_23815291C();
      v83 = sub_2381550FC();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v129 = v124;
        *v84 = 136315394;
        sub_23812133C(&qword_27DEED600, MEMORY[0x277D54918]);
        LODWORD(v123) = v83;
        v85 = sub_23815559C();
        v86 = v81;
        v88 = v87;
        v89 = *(v78 + 1);
        v90 = v75;
        v89(v86, v75);
        v91 = sub_238085EAC(v85, v88, &v129);

        *(v84 + 4) = v91;
        *(v84 + 12) = 2080;
        v92 = v125;
        v128[0] = v125;
        v128[1] = v77;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECE00, &qword_23815AD70);
        v93 = sub_238154D2C();
        v95 = sub_238085EAC(v93, v94, &v129);

        *(v84 + 14) = v95;
        _os_log_impl(&dword_238060000, v82, v123, "Boop2Meet AirDrop Successful {Metrics: %s, remoteContactIdentifier: %s}", v84, 0x16u);
        v96 = v124;
        swift_arrayDestroy();
        MEMORY[0x2383EA8A0](v96, -1, -1);
        v97 = v84;
        v79 = v117;
        MEMORY[0x2383EA8A0](v97, -1, -1);
      }

      else
      {

        v89 = *(v78 + 1);
        v90 = v75;
        v89(v81, v75);
        v92 = v125;
      }

      sub_23811A74C(v92, v77);

      return (v89)(v79, v90);
    }

    else if (result != *MEMORY[0x277D548F0])
    {
      if (qword_27DEEA108 != -1)
      {
        swift_once();
      }

      v98 = sub_23815293C();
      __swift_project_value_buffer(v98, qword_27DEED4B0);
      v100 = v113;
      v99 = v114;
      v101 = v115;
      (*(v114 + 16))(v113, a1, v115);
      v102 = sub_23815291C();
      v103 = sub_2381550DC();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v125 = v104;
        v127 = swift_slowAlloc();
        v128[0] = v127;
        *v104 = 136315138;
        v126 = v102;
        sub_23815306C();
        sub_23812133C(&qword_27DEED5F0, MEMORY[0x277D548F8]);
        v123 = sub_23815559C();
        v105 = v100;
        v107 = v106;
        LODWORD(v124) = v103;
        v108 = *(v27 + 8);
        v108(v31, v26);
        (*(v99 + 8))(v105, v101);
        v109 = sub_238085EAC(v123, v107, v128);

        v110 = v125;
        *(v125 + 4) = v109;
        v111 = v126;
        _os_log_impl(&dword_238060000, v126, v124, "Shouldn't get state %s for onlyExchange AirDrop", v110, 0xCu);
        v112 = v127;
        __swift_destroy_boxed_opaque_existential_1(v127);
        MEMORY[0x2383EA8A0](v112, -1, -1);
        MEMORY[0x2383EA8A0](v110, -1, -1);
      }

      else
      {

        (*(v99 + 8))(v100, v101);
        v108 = *(v27 + 8);
      }

      return (v108)(v33, v26);
    }
  }

  return result;
}

void sub_238119558()
{
  v57 = sub_2381532BC();
  v55 = *(v57 - 8);
  v1 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5D8, &unk_23815E678);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v51 - v5;
  v6 = sub_23815361C();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = v9;
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4E8, &qword_23815C178);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v51 - v17;
  v19 = sub_2381536AC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v23 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v51 - v24;
  v26 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_sendTransferID;
  swift_beginAccess();
  v60 = v0;
  sub_2380712E4(v0 + v26, v18, &qword_27DEEC4E8, &qword_23815C178);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v32 = *(v20 + 32);
    v32(v25, v18, v19);
    v33 = sub_238154FBC();
    (*(*(v33 - 8) + 56))(v14, 1, 1, v33);
    (*(v20 + 16))(v23, v25, v19);
    v34 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v35 = swift_allocObject();
    v32((v35 + v34), v23, v19);
    *(v35 + ((v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v60;

    sub_238154FEC();

    sub_238071284(v14, &qword_27DEEBA00, &qword_23815B4A0);
    (*(v20 + 8))(v25, v19);
    return;
  }

  sub_238071284(v18, &qword_27DEEC4E8, &qword_23815C178);
  v27 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_receiveTransfer;
  v28 = v60;
  swift_beginAccess();
  v29 = v55;
  v30 = v57;
  if ((*(v55 + 48))(v28 + v27, 1, v57))
  {
    v31 = v56;
    (*(v58 + 56))(v56, 1, 1, v59);
  }

  else
  {
    v36 = v28 + v27;
    v37 = v54;
    (*(v29 + 16))(v54, v36, v30);
    v31 = v56;
    sub_23815326C();
    (*(v29 + 8))(v37, v30);
    v39 = v58;
    v38 = v59;
    if ((*(v58 + 48))(v31, 1, v59) != 1)
    {
      v44 = *(v39 + 32);
      v45 = v53;
      v44(v53, v31, v38);
      v46 = sub_238154FBC();
      v47 = v14;
      (*(*(v46 - 8) + 56))(v14, 1, 1, v46);
      v48 = v52;
      (*(v39 + 16))(v52, v45, v38);
      v49 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v50 = swift_allocObject();
      v44((v50 + v49), v48, v38);
      sub_238154FEC();

      sub_238071284(v47, &qword_27DEEBA00, &qword_23815B4A0);
      (*(v39 + 8))(v45, v38);
      return;
    }
  }

  sub_238071284(v31, &qword_27DEED5D8, &unk_23815E678);
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v40 = sub_23815293C();
  __swift_project_value_buffer(v40, qword_27DEED4B0);
  v41 = sub_23815291C();
  v42 = sub_2381550FC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_238060000, v41, v42, "No transfer ID or receive transfer to cancel yet", v43, 2u);
    MEMORY[0x2383EA8A0](v43, -1, -1);
  }
}

void sub_238119CDC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService;
  [*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService) invalidate];
  v3 = [objc_allocWithZone(MEMORY[0x277D66B30]) init];
  v4 = *(v0 + v2);
  *(v1 + v2) = v3;
  v5 = v3;

  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEED4B0);
  v7 = sub_23815291C();
  v8 = sub_2381550FC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_238060000, v7, v8, "Requesting device unlock if necessary", v9, 2u);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }

  v10 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_23811D828;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_23811A13C;
  v12[3] = &block_descriptor_8;
  v11 = _Block_copy(v12);

  [v5 requestPasscodeUnlockUIWithOptions:0 withCompletion:v11];
  _Block_release(v11);
}

void sub_238119EC0(char a1)
{
  if (a1)
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v1 = sub_23815293C();
    __swift_project_value_buffer(v1, qword_27DEED4B0);
    v2 = sub_23815291C();
    v3 = sub_2381550FC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_238060000, v2, v3, "Device was unlocked", v4, 2u);
      MEMORY[0x2383EA8A0](v4, -1, -1);
    }
  }

  else
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v5 = sub_23815293C();
    __swift_project_value_buffer(v5, qword_27DEED4B0);
    v6 = sub_23815291C();
    v7 = sub_2381550FC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_238060000, v6, v7, "Device was not unlocked", v8, 2u);
      MEMORY[0x2383EA8A0](v8, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = *(Strong + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_dismissViewAction);
      v10 = *(Strong + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_dismissViewAction + 8);

      v11(v12);
    }
  }

  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService);
    if (v14)
    {
      v15 = v14;

      [v15 invalidate];
    }

    else
    {
    }
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v17 = *(v16 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService);
    *(v16 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService) = 0;
  }
}

uint64_t sub_23811A13C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_23811A190()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5D0, &qword_23815E670);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v36 = &v35 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC538, &qword_23815C1D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC540, &qword_23815C1D8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC508, &unk_23815C190);
  sub_23815365C();
  if ((*(v15 + 88))(v18, v14) == *MEMORY[0x277D54B90])
  {
    (*(v15 + 96))(v18, v14);
    v19 = *(v18 + 1);

    v20 = *(v18 + 3);

    v21 = *(v18 + 4);
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC550, &qword_23815C1E0) + 80);
    v23 = sub_23815361C();
    (*(*(v23 - 8) + 8))(&v18[v22], v23);
    v24 = *(v21 + 16);
    if (v24)
    {
      v25 = *(v8 + 16);
      v26 = v37;
      v25(v37, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

      if (v24 == 1)
      {
        v25(v12, v26, v7);
        if ((*(v8 + 88))(v12, v7) == *MEMORY[0x277D54B60])
        {
          (*(v8 + 96))(v12, v7);
          v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC558, &qword_23815C1E8) + 48);
          v28 = v38;
          (*(v4 + 32))(v38, v12, v3);
          v29 = sub_2381527EC();
          (*(*(v29 - 8) + 8))(&v12[v27], v29);
          v30 = v36;
          (*(v4 + 16))(v36, v28, v3);
          (*(v4 + 56))(v30, 0, 1, v3);
          v31 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_contactPermissionResponseAction;
          v32 = v39;
          swift_beginAccess();
          sub_2381200D4(v30, v32 + v31);
          swift_endAccess();
          sub_238113068();
          sub_238071284(v30, &qword_27DEED5D0, &qword_23815E670);
          (*(v4 + 8))(v28, v3);
          return (*(v8 + 8))(v26, v7);
        }

        v34 = *(v8 + 8);
        v34(v26, v7);
        v34(v12, v7);
      }

      else
      {
        (*(v8 + 8))(v26, v7);
      }
    }

    else
    {
    }
  }

  else
  {
    (*(v15 + 8))(v18, v14);
  }

  result = sub_2381554EC();
  __break(1u);
  return result;
}

void sub_23811A74C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  if (a2)
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v10 = sub_23815293C();
    __swift_project_value_buffer(v10, qword_27DEED4B0);

    v11 = sub_23815291C();
    v12 = sub_2381550FC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_238085EAC(a1, a2, &v30);
      _os_log_impl(&dword_238060000, v11, v12, "Fetching remote contact with identifier: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x2383EA8A0](v14, -1, -1);
      MEMORY[0x2383EA8A0](v13, -1, -1);
    }

    v29 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v15 = sub_2380FEF6C(a1, a2);
    if (v15)
    {
      v16 = v15;
      v17 = sub_238154FBC();
      (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
      sub_238154F8C();

      v18 = v16;
      v19 = sub_238154F7C();
      v20 = swift_allocObject();
      v21 = MEMORY[0x277D85700];
      v20[2] = v19;
      v20[3] = v21;
      v20[4] = v3;
      v20[5] = v18;
      sub_2380D2A4C(0, 0, v9, &unk_23815E720, v20);
    }

    else
    {

      v23 = sub_23815291C();
      v24 = sub_2381550DC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v30 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_238085EAC(a1, a2, &v30);
        _os_log_impl(&dword_238060000, v23, v24, "Failed to fetch contact from identifier: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x2383EA8A0](v26, -1, -1);
        MEMORY[0x2383EA8A0](v25, -1, -1);
      }

      v27 = *(v3 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
      *(v3 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 2;
      sub_23811D4D4(v27);
      sub_23811249C();
      sub_238111C60();
      v28 = v29;
    }
  }

  else
  {
    v22 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
    *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 3;
    sub_23811D4D4(v22);
    sub_23811249C();

    sub_238111C60();
  }
}

void sub_23811AB70()
{
  v1 = v0;
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEED4B0);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "Setting state to error", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
  *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 2;
  sub_23811D4D4(v6);
  sub_23811249C();

  sub_238111C60();
}

uint64_t sub_23811AC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(MEMORY[0x277D54B50] + 4);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
  *v8 = v5;
  v8[1] = sub_238087150;

  return MEMORY[0x2821B6230](a5, v9);
}

uint64_t sub_23811AD40(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a3)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      v12[1] = a3;
      v13 = a2;
      v14 = a3;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_23811AE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = sub_238154F8C();
  v5[8] = sub_238154F7C();
  v7 = swift_task_alloc();
  v5[9] = v7;
  *v7 = v5;
  v7[1] = sub_23811AED0;

  return sub_23812061C(a5);
}

uint64_t sub_23811AED0()
{
  v2 = v0;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 80) = v2;

  v7 = sub_238154F3C();
  if (v2)
  {
    v8 = sub_23811B168;
  }

  else
  {
    v8 = sub_23811B02C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23811B02C()
{
  receiver = v0[4].receiver;

  super_class = v0[2].super_class;
  v3 = v0[3].receiver;
  v4 = type metadata accessor for SnapshottingContactViewController();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase] = 0;
  v6 = &v5[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss];
  *v6 = 0;
  v6[1] = 0;
  *&v5[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController] = 0;
  *&v5[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_snapshotView] = 0;
  *&v5[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_contact] = v3;
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v7 = v3;
  v8 = objc_msgSendSuper2(v0 + 1, sel_initWithNibName_bundle_, 0, 0);
  sub_23813275C(v8[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase]);
  v9 = *(super_class + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
  *(super_class + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = v8;
  v10 = v8;
  sub_23811D4D4(v9);
  sub_23811249C();

  sub_238111C60();
  v11 = v0->super_class;

  return v11();
}

uint64_t sub_23811B168()
{
  v27 = v0;
  receiver = v0[4].receiver;

  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v2 = v0[5].receiver;
  v3 = sub_23815293C();
  __swift_project_value_buffer(v3, qword_27DEED4B0);
  v4 = v2;
  v5 = sub_23815291C();
  v6 = sub_2381550DC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5].receiver;
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    v0[2].receiver = v8;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
    v12 = sub_238154D2C();
    v14 = sub_238085EAC(v12, v13, &v26);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_238060000, v5, v6, "Unable to prewarm poster cache: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2383EA8A0](v10, -1, -1);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }

  else
  {
  }

  super_class = v0[2].super_class;
  v16 = v0[3].receiver;
  v17 = type metadata accessor for SnapshottingContactViewController();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase] = 0;
  v19 = &v18[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss];
  *v19 = 0;
  v19[1] = 0;
  *&v18[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController] = 0;
  *&v18[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_snapshotView] = 0;
  *&v18[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_contact] = v16;
  v0[1].receiver = v18;
  v0[1].super_class = v17;
  v20 = v16;
  v21 = objc_msgSendSuper2(v0 + 1, sel_initWithNibName_bundle_, 0, 0);
  sub_23813275C(v21[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase]);
  v22 = *(super_class + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
  *(super_class + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = v21;
  v23 = v21;
  sub_23811D4D4(v22);
  sub_23811249C();

  sub_238111C60();
  v24 = v0->super_class;

  return v24();
}

uint64_t sub_23811B40C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = a4;
  *(v4 + 233) = a2;
  v5 = sub_23815354C();
  *(v4 + 88) = v5;
  v6 = *(v5 - 8);
  *(v4 + 96) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v8 = sub_23815352C();
  *(v4 + 112) = v8;
  v9 = *(v8 - 8);
  *(v4 + 120) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v11 = sub_23815362C();
  *(v4 + 144) = v11;
  v12 = *(v11 - 8);
  *(v4 + 152) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23811B5A0, 0, 0);
}

uint64_t sub_23811B5A0()
{
  if (!*(v0 + 233))
  {
    goto LABEL_19;
  }

  if (*(v0 + 233) == 1)
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v1 = sub_23815293C();
    __swift_project_value_buffer(v1, qword_27DEED4B0);
    v2 = sub_23815291C();
    v3 = sub_2381550FC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_238060000, v2, v3, "Accepting NameDrop with receive only", v4, 2u);
      MEMORY[0x2383EA8A0](v4, -1, -1);
    }

    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v7 = *(v0 + 152);

    (*(v7 + 104))(v5, *MEMORY[0x277D54B80], v6);
    v8 = *(MEMORY[0x277D54B50] + 4);
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
    *v9 = v0;
    v9[1] = sub_23811BDD0;
    v11 = *(v0 + 168);
    goto LABEL_8;
  }

  v13 = *(*(v0 + 80) + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_meCardContactProvider);
  *(v0 + 192) = v13;
  if (v13 < 2)
  {
    goto LABEL_14;
  }

  sub_23815288C();
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v13;
  sub_238152A8C();

  v15 = *(v0 + 48);
  v16 = sub_23815286C();
  v18 = v17;

  *(v0 + 200) = v16;
  *(v0 + 208) = v18;
  if (v18 >> 60 != 15)
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v30 = sub_23815293C();
    __swift_project_value_buffer(v30, qword_27DEED4B0);
    v31 = sub_23815291C();
    v32 = sub_2381550FC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_238060000, v31, v32, "Accepting NameDrop with share", v33, 2u);
      MEMORY[0x2383EA8A0](v33, -1, -1);
    }

    v34 = *(v0 + 80);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v35 = *(v0 + 56);
    v36 = sub_23815528C();
    v38 = v37;

    v39 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v39 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (!v39)
    {
      v44 = *(v0 + 80);

      v20 = sub_23815291C();
      v45 = sub_2381550EC();

      if (os_log_type_enabled(v20, v45))
      {
        v46 = *(v0 + 80);
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_238152A8C();

        v49 = *(v0 + 64);
        *(v47 + 4) = v49;
        *v48 = v49;
        _os_log_impl(&dword_238060000, v20, v45, "no handle for contact:%@", v47, 0xCu);
        sub_238071284(v48, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v48, -1, -1);
        MEMORY[0x2383EA8A0](v47, -1, -1);
      }

      sub_23809BF44(v13);
      sub_238087244(v16, v18);
      goto LABEL_18;
    }

    *(v0 + 16) = v36;
    *(v0 + 24) = v38;
    *(v0 + 32) = 64;
    *(v0 + 40) = 0xE100000000000000;
    sub_2380704A0();
    v40 = sub_23815533C();
    v41 = sub_238154C8C();
    v68 = v18;
    v69 = v16;
    v67 = v14;
    if (v40)
    {
      v42 = CUNormalizeEmailAddress();

      if (v42)
      {
        v43 = MEMORY[0x277D54B40];
LABEL_36:
        v61 = v43;
        v50 = *(v0 + 152);
        v51 = *(v0 + 136);
        v65 = *(v0 + 160);
        v66 = *(v0 + 144);
        v52 = *(v0 + 120);
        v53 = *(v0 + 112);
        v62 = *(v0 + 128);
        v63 = *(v0 + 104);
        v54 = *(v0 + 96);
        v64 = *(v0 + 88);

        v55 = sub_238154CCC();
        v57 = v56;

        *v51 = v55;
        v51[1] = v57;
        (*(v52 + 104))(v51, *v61, v53);
        v58 = v67;
        sub_23815529C();
        sub_23809BF44(v13);
        (*(v52 + 16))(v62, v51, v53);
        sub_2380E6764(v69, v68);
        sub_23815353C();
        (*(v54 + 16))(v65, v63, v64);
        (*(v50 + 104))(v65, *MEMORY[0x277D54B78], v66);
        v59 = *(MEMORY[0x277D54B50] + 4);
        v60 = swift_task_alloc();
        *(v0 + 216) = v60;
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
        *v60 = v0;
        v60[1] = sub_23811BFA0;
        v11 = *(v0 + 160);
LABEL_8:
        v12 = *(v0 + 72);

        return MEMORY[0x2821B6230](v11, v10);
      }

      __break(1u);
    }

    else
    {
      v42 = CUNormalizePhoneNumber();

      if (v42)
      {
        v43 = MEMORY[0x277D54B48];
        goto LABEL_36;
      }
    }

    __break(1u);
    return MEMORY[0x2821B6230](v11, v10);
  }

  sub_23809BF44(v13);
LABEL_14:
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v19 = sub_23815293C();
  __swift_project_value_buffer(v19, qword_27DEED4B0);
  v20 = sub_23815291C();
  v21 = sub_2381550DC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_238060000, v20, v21, "Unable to fetch vCard", v22, 2u);
    MEMORY[0x2383EA8A0](v22, -1, -1);
  }

LABEL_18:

LABEL_19:
  v24 = *(v0 + 160);
  v23 = *(v0 + 168);
  v26 = *(v0 + 128);
  v25 = *(v0 + 136);
  v27 = *(v0 + 104);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_23811BDD0()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *v1;
  v6[23] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23811C208, 0, 0);
  }

  else
  {
    v8 = v6[20];
    v7 = v6[21];
    v10 = v6[16];
    v9 = v6[17];
    v11 = v6[13];

    v12 = v6[1];

    return v12();
  }
}

uint64_t sub_23811BFA0()
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 224) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_23811C450;
  }

  else
  {
    v6 = sub_23811C110;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23811C110()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  sub_23809BF44(*(v0 + 192));
  sub_238087244(v1, v2);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  v13 = *(v0 + 104);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_23811C208()
{
  v23 = v0;
  v1 = *(v0 + 184);
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEED4B0);
  v3 = v1;
  v4 = sub_23815291C();
  v5 = sub_2381550DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 233);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v7 = 136315394;
    *(v0 + 232) = v6;
    v10 = sub_238154D2C();
    v12 = sub_238085EAC(v10, v11, &v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_238060000, v4, v5, "Failed to process user action %s: %@", v7, 0x16u);
    sub_238071284(v8, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2383EA8A0](v9, -1, -1);
    MEMORY[0x2383EA8A0](v7, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_23811C450()
{
  v31 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  sub_23809BF44(*(v0 + 192));
  sub_238087244(v1, v2);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  v9 = *(v0 + 224);
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v10 = sub_23815293C();
  __swift_project_value_buffer(v10, qword_27DEED4B0);
  v11 = v9;
  v12 = sub_23815291C();
  v13 = sub_2381550DC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 233);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v15 = 136315394;
    *(v0 + 232) = v14;
    v18 = sub_238154D2C();
    v20 = sub_238085EAC(v18, v19, &v30);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v9;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v16 = v22;
    _os_log_impl(&dword_238060000, v12, v13, "Failed to process user action %s: %@", v15, 0x16u);
    sub_238071284(v16, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x2383EA8A0](v17, -1, -1);
    MEMORY[0x2383EA8A0](v15, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 160);
  v23 = *(v0 + 168);
  v26 = *(v0 + 128);
  v25 = *(v0 + 136);
  v27 = *(v0 + 104);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_23811C6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = sub_2381536AC();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23811C7B0, 0, 0);
}

uint64_t sub_23811C7B0()
{
  v24 = v0;
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_23815293C();
  v0[7] = __swift_project_value_buffer(v5, qword_27DEED4B0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_23815291C();
  v7 = sub_2381550FC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    sub_23812133C(&qword_27DEED5E0, MEMORY[0x277D54BD0]);
    v14 = sub_23815559C();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_238085EAC(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_238060000, v6, v7, "Attempting to cancel sent NameDrop with id %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2383EA8A0](v13, -1, -1);
    MEMORY[0x2383EA8A0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0[3] + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_airDropClient);
  v19 = *(MEMORY[0x277D549B0] + 4);
  v20 = swift_task_alloc();
  v0[8] = v20;
  *v20 = v0;
  v20[1] = sub_23811CA38;
  v21 = v0[2];

  return MEMORY[0x2821B5F60](v21);
}

uint64_t sub_23811CA38()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23811CB74, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23811CB74()
{
  v1 = *(v0 + 56);
  v2 = sub_23815291C();
  v3 = sub_2381550DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "Failed to cancel NameDrop", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23811CC74()
{
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  v0[3] = __swift_project_value_buffer(v1, qword_27DEED4B0);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "Attempting to cancel received NameDrop", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = *(MEMORY[0x277D54B70] + 4);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_23811CDC8;
  v7 = v0[2];

  return MEMORY[0x2821B6270]();
}

uint64_t sub_23811CDC8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23811CEFC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_23811CEFC()
{
  v1 = *(v0 + 24);
  v2 = sub_23815291C();
  v3 = sub_2381550DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "Failed to cancel NameDrop", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_23811CFD4()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  v4 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = sub_23811D288(v1);
  }

  v2 = &v1[16 * v2 + 24];
  v5 = (v1 + 40);
  v6 = 1;
  while (1)
  {
    if (v6 - 1 == v3)
    {
      goto LABEL_6;
    }

    v9 = *(v1 + 2);
    if (v6 - 1 >= v9)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v3 >= v9)
    {
      goto LABEL_16;
    }

    v10 = *(v5 - 1);
    v11 = *v5;
    v12 = *v2;
    *(v5 - 1) = *(v2 - 8);
    *v5 = v12;
    v13 = *(v1 + 2);

    if (v3 >= v13)
    {
      break;
    }

    v7 = *v2;
    *(v2 - 8) = v10;
    *v2 = v11;

LABEL_6:
    --v3;
    v2 -= 16;
    v5 += 2;
    if (v6++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

uint64_t sub_23811D0CC()
{
  v1 = 0x2065766965636552;
  if (*v0 != 1)
  {
    v1 = 0x6572616853;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C65636E6143;
  }
}

uint64_t sub_23811D128(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 3)
  {
    return sub_23811D138(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_23811D138(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 - 1) >= 2)
  {
    sub_23807BE0C(result, a2, a3, a4);
  }

  return result;
}

void sub_23811D18C(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_23811D394(v3);
}

uint64_t sub_23811D1D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23811D2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 24) = *a5;
  v6 = *(MEMORY[0x277D54B50] + 4);
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220);
  *v7 = v5;
  v7[1] = sub_238087150;

  return MEMORY[0x2821B6230](v5 + 24, v8);
}

void sub_23811D394(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  swift_getKeyPath();
  swift_getKeyPath();

  v2 = a1;
  sub_238152A9C();
  if (sub_23815526C())
  {
    sub_23815288C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    sub_23815287C();
  }

  sub_23811249C();
}

void sub_23811D4D4(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_23811D4E4()
{
  v1 = sub_23815361C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23811D56C(uint64_t a1)
{
  v4 = *(sub_23815361C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238087150;

  return sub_23811CC54(a1, v1 + v5);
}

uint64_t sub_23811D648()
{
  v1 = sub_2381536AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_23811D6E4(uint64_t a1)
{
  v4 = *(sub_2381536AC() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_23811C6F0(a1, v1 + v5, v6);
}

uint64_t sub_23811D7F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23811D848()
{
  result = qword_27DEEC5E8;
  if (!qword_27DEEC5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC5E0, &qword_23815C2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC5E8);
  }

  return result;
}

uint64_t sub_23811D8AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_23811D914(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v168 = a3;
  v167 = a2;
  v175 = a1;
  v194 = *MEMORY[0x277D85DE8];
  v171 = sub_23815313C();
  v170 = *(v171 - 8);
  v5 = *(v170 + 64);
  MEMORY[0x28223BE20](v171);
  v169 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_2381527EC();
  v165 = *(v166 - 8);
  v7 = *(v165 + 64);
  MEMORY[0x28223BE20](v166);
  v164 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5C0, &qword_23815E658);
  v173 = *(v174 - 8);
  v9 = *(v173 + 64);
  MEMORY[0x28223BE20](v174);
  v163 = &v159 - v10;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC190, &qword_23815B890);
  v161 = *(v162 - 1);
  v11 = *(v161 + 64);
  MEMORY[0x28223BE20](v162);
  v13 = &v159 - v12;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v14 = *(v160 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v160);
  v17 = &v159 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5B8, &qword_23815E650);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v159 - v21;
  v159 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__viewModel;
  v23 = sub_2381545FC();
  v24 = sub_2381545FC();
  v25 = sub_2381545FC();
  v172 = objc_opt_self();
  v26 = *MEMORY[0x277D74400];
  v27 = [v172 systemFontOfSize:60.0 weight:*MEMORY[0x277D74400]];
  v178 = 0;
  aBlock = 0;
  v179 = 0;
  v180 = xmmword_23815E310;
  LOBYTE(v181) = 0;
  v182 = 0;
  v183 = v23;
  v184 = v24;
  v185 = v25;
  v186 = v27;
  v187 = 0;
  v188 = 0;
  v189 = 0xE000000000000000;
  v190 = 0u;
  v191 = 0u;
  v192 = 0;
  v193 = xmmword_2381587F0;
  sub_238152A5C();
  (*(v19 + 32))(v4 + v159, v22, v18);
  v28 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__canChangeFieldSelection;
  LOBYTE(aBlock) = 1;
  sub_238152A5C();
  v29 = *(v14 + 32);
  v30 = v160;
  v29(v4 + v28, v17, v160);
  v31 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__animatePersonalInformationChange;
  aBlock = 0;
  sub_238152A5C();
  (*(v161 + 32))(v4 + v31, v13, v162);
  v32 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__hasReviewInfoButton;
  LOBYTE(aBlock) = 0;
  sub_238152A5C();
  v29(v4 + v32, v17, v30);
  v33 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__fieldSelection;
  aBlock = [objc_allocWithZone(MEMORY[0x277CBDA58]) init];
  sub_23807A3F8(0, &qword_27DEEE300, 0x277CBDA58);
  v34 = v163;
  sub_238152A5C();
  (*(v173 + 32))(v4 + v33, v34, v174);
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 0;
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService) = 0;
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_isInvalidated) = 0;
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask) = 0;
  v35 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_receiveTransfer;
  v36 = sub_2381532BC();
  (*(*(v36 - 8) + 56))(v4 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_sendTransferID;
  v38 = sub_2381536AC();
  (*(*(v38 - 8) + 56))(v4 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_contactPermissionResponseAction;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
  (*(*(v40 - 8) + 56))(v4 + v39, 1, 1, v40);
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction) = 3;
  v41 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_nameFont;
  *(v4 + v41) = [v172 systemFontOfSize:60.0 weight:v26];
  v42 = (v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors);
  v43 = sub_2381545FC();
  v44 = sub_2381545FC();
  v45 = sub_2381545FC();
  *v42 = v43;
  v42[1] = v44;
  v42[2] = v45;
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_posterImage) = 0;
  v174 = v4;
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController____lazy_storage___contactsIconImage) = 0;
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v46 = sub_23815293C();
  v47 = __swift_project_value_buffer(v46, qword_27DEED4B0);
  v48 = v165;
  v49 = *(v165 + 16);
  v50 = v164;
  v51 = v175;
  v52 = v166;
  v49(v164, v175, v166);
  v173 = v47;
  v53 = sub_23815291C();
  v54 = sub_2381550FC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v163 = v49;
    v56 = v50;
    v57 = v55;
    v162 = swift_slowAlloc();
    aBlock = v162;
    *v57 = 136315138;
    sub_23812133C(&qword_27DEED670, MEMORY[0x277CC95F0]);
    v58 = sub_23815559C();
    v60 = v59;
    v61 = *(v48 + 8);
    v62 = v56;
    v49 = v163;
    v61(v62, v52);
    v63 = sub_238085EAC(v58, v60, &aBlock);

    *(v57 + 4) = v63;
    v51 = v175;
    _os_log_impl(&dword_238060000, v53, v54, "Creating NameDrop session controller for transaction %s", v57, 0xCu);
    v64 = v162;
    __swift_destroy_boxed_opaque_existential_1(v162);
    MEMORY[0x2383EA8A0](v64, -1, -1);
    MEMORY[0x2383EA8A0](v57, -1, -1);
  }

  else
  {

    v61 = *(v48 + 8);
    v61(v50, v52);
  }

  v65 = v174;
  v49((v174 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transactionIdentifier), v51, v52);
  v66 = (v65 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_dismissViewAction);
  v67 = v168;
  *v66 = v167;
  v66[1] = v67;

  v68 = *(**sub_2381528AC() + 136);

  v70 = v68(v69);

  if (v70)
  {
    v71 = *(sub_2381552BC() + 16);

    if (v71)
    {
      goto LABEL_12;
    }
  }

  v72 = sub_23815291C();
  v73 = sub_2381550DC();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_238060000, v72, v73, "NameDrop unable to find a local contact", v74, 2u);
    MEMORY[0x2383EA8A0](v74, -1, -1);
  }

  v70 = 0;
LABEL_12:
  *(v65 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_meCardContactProvider) = v70;
  sub_2381531EC();
  (*(v170 + 104))(v169, *MEMORY[0x277D54998], v171);
  *(v65 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_airDropClient) = sub_23815314C();
  v75 = sub_23815332C();
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  *(v65 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockStateMonitor) = sub_23815331C();
  sub_23812133C(&qword_27DEED660, type metadata accessor for NameDropSessionController);

  sub_23815330C();

  v78 = *(v65 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_meCardContactProvider);
  if (v78)
  {
    if (v78 == 1)
    {
      v79 = sub_23815291C();
      v80 = sub_2381550DC();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        v82 = "NameDrop: None case";
LABEL_18:
        _os_log_impl(&dword_238060000, v79, v80, v82, v81, 2u);
        MEMORY[0x2383EA8A0](v81, -1, -1);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    sub_23815288C();
    v78;
    v84 = MEMORY[0x2383E6E90](v78);
    sub_23811D394(v84);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v85 = aBlock;
    LOBYTE(v84) = sub_23815526C();

    if ((v84 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      v86 = aBlock;
      [aBlock mutableCopy];

      sub_23815534C();
      swift_unknownObjectRelease();
      sub_23807A3F8(0, &qword_27DEEC050, 0x277CBDB38);
      if (swift_dynamicCast())
      {
        v87 = v176;
        v88 = sub_23815291C();
        v89 = sub_2381550FC();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_238060000, v88, v89, "No NameDrop preferences; selecting a default handle", v90, 2u);
          MEMORY[0x2383EA8A0](v90, -1, -1);
        }

        v91 = sub_2381552DC();
        v92 = [v91 emailAddresses];
        if (!v92)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED668, &unk_23815E7D0);
          sub_238154EDC();
          v92 = sub_238154ECC();
        }

        [v87 setEmailAddresses_];

        v93 = [v91 phoneNumbers];
        if (!v93)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED668, &unk_23815E7D0);
          sub_238154EDC();
          v93 = sub_238154ECC();
        }

        [v87 setPhoneNumbers_];

        v94 = v87;
        v95 = v174;
        sub_23811D394(v94);

        v65 = v95;
      }
    }

    v171 = v61;
    v96 = sub_2381552AC();
    v98 = v96;
    v99 = v97;
    if (v97 >> 60 == 15)
    {
      v100 = sub_23815291C();
      v101 = sub_2381550FC();
      if (!os_log_type_enabled(v100, v101))
      {

        sub_23809BF44(v78);
LABEL_54:
        v83 = v175;
        v61 = v171;
        goto LABEL_55;
      }

      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_238060000, v100, v101, "NameDrop no poster for me card", v102, 2u);
      MEMORY[0x2383EA8A0](v102, -1, -1);

      sub_23809BF44(v78);
      v103 = v98;
    }

    else
    {
      sub_238085D80(v96, v97);
      v104 = sub_23815291C();
      v105 = sub_2381550FC();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&dword_238060000, v104, v105, "Fetching poster configuration", v106, 2u);
        MEMORY[0x2383EA8A0](v106, -1, -1);
      }

      v107 = objc_opt_self();
      v170 = v98;
      v108 = sub_23815274C();
      aBlock = 0;
      v109 = [v107 unarchiveConfigurationFromData:v108 format:-1 error:&aBlock];

      v110 = aBlock;
      if (v109)
      {
        v111 = v109;
        v112 = v110;
        v113 = sub_23815291C();
        v114 = sub_2381550FC();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          *v115 = 138412290;
          *(v115 + 4) = v111;
          *v116 = v109;
          _os_log_impl(&dword_238060000, v113, v114, "Received poster configuration: %@", v115, 0xCu);
          sub_238071284(v116, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v116, -1, -1);
          MEMORY[0x2383EA8A0](v115, -1, -1);
        }

        else
        {
        }

        sub_238087244(v170, v99);

        v128 = v111;
        v129 = sub_23815291C();
        v130 = sub_2381550FC();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&dword_238060000, v129, v130, "Fetching poster font", v131, 2u);
          MEMORY[0x2383EA8A0](v131, -1, -1);
        }

        v132 = objc_opt_self();
        aBlock = 0;
        v133 = [v132 titleStyleAttributesForConfiguration:v128 error:&aBlock];
        if (v133)
        {
          v134 = v133;
          v135 = aBlock;
          v136 = v134;
          v137 = sub_23815291C();
          v138 = sub_2381550FC();

          v139 = &off_278A48000;
          if (os_log_type_enabled(v137, v138))
          {
            v140 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            *v140 = 138412290;
            v142 = [v136 titleFont];
            *(v140 + 4) = v142;
            *v141 = v142;
            _os_log_impl(&dword_238060000, v137, v138, "Received poster font: %@", v140, 0xCu);
            sub_238071284(v141, &unk_27DEECA10, &qword_2381588F0);
            MEMORY[0x2383EA8A0](v141, -1, -1);
            v143 = v140;
            v139 = &off_278A48000;
            MEMORY[0x2383EA8A0](v143, -1, -1);
          }

          v144 = [v136 v139[395]];
          v145 = [v144 fontDescriptor];

          v146 = [v172 fontWithDescriptor:v145 size:60.0];
          v147 = *(v174 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_nameFont);
          *(v174 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_nameFont) = v146;
        }

        else
        {
          v148 = aBlock;
          v149 = sub_23815266C();

          swift_willThrow();
        }

        v150 = [objc_allocWithZone(MEMORY[0x277D3EA90]) initWithTitleString:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:1 imageAssetID:*MEMORY[0x277CBF3A0] personalPoster:{*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v151 = [objc_allocWithZone(MEMORY[0x277D3EB08]) initWithConfiguration:v128 context:v150];
        v152 = sub_23815291C();
        v153 = sub_2381550FC();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          *v154 = 0;
          _os_log_impl(&dword_238060000, v152, v153, "Fetching poster image", v154, 2u);
          MEMORY[0x2383EA8A0](v154, -1, -1);
        }

        *(&v180 + 1) = sub_238121334;
        v155 = v174;
        v181 = v174;
        aBlock = MEMORY[0x277D85DD0];
        v178 = 1107296256;
        v179 = sub_238110218;
        *&v180 = &block_descriptor_74;
        v156 = _Block_copy(&aBlock);

        [v151 snapshotWithOptions:2 forScreen:0 completionBlock:v156];
        _Block_release(v156);

        v65 = v155;
        sub_238087244(v170, v99);
        sub_23809BF44(v78);

        goto LABEL_54;
      }

      v117 = aBlock;
      v118 = sub_23815266C();

      swift_willThrow();
      v119 = v118;
      v120 = sub_23815291C();
      v121 = sub_2381550DC();

      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        *v122 = 138412290;
        v124 = v118;
        v125 = _swift_stdlib_bridgeErrorToNSError();
        *(v122 + 4) = v125;
        *v123 = v125;
        _os_log_impl(&dword_238060000, v120, v121, "Failed to create poster configuration: %@", v122, 0xCu);
        sub_238071284(v123, &unk_27DEECA10, &qword_2381588F0);
        v126 = v123;
        v65 = v174;
        MEMORY[0x2383EA8A0](v126, -1, -1);
        MEMORY[0x2383EA8A0](v122, -1, -1);
        v127 = v170;
        sub_238087244(v170, v99);
      }

      else
      {
        v127 = v170;
        sub_238087244(v170, v99);
      }

      sub_23809BF44(v78);
      v103 = v127;
    }

    sub_238087244(v103, v99);
    goto LABEL_54;
  }

  v79 = sub_23815291C();
  v80 = sub_2381550DC();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    v82 = "NameDrop: No Me Card";
    goto LABEL_18;
  }

LABEL_19:

  v83 = v175;
LABEL_55:
  sub_23811249C();
  v61(v83, v52);
  v157 = *MEMORY[0x277D85DE8];
  return v65;
}

uint64_t sub_23811F0D4(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v2 = sub_23815323C();
  v65 = *(v2 - 8);
  v3 = *(v65 + 64);
  MEMORY[0x28223BE20](v2);
  v70 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v56 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
  v63 = *(v69 - 8);
  v7 = *(v63 + 64);
  v8 = MEMORY[0x28223BE20](v69);
  v66 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDB8, &unk_23815AED0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED650, &qword_23815E760);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v56 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED618, &qword_23815E738);
  sub_23815365C();
  if ((*(v18 + 88))(v21, v17) == *MEMORY[0x277D54B90])
  {
    v61 = v15;
    v62 = v11;
    (*(v18 + 96))(v21, v17);
    v22 = *(v21 + 1);

    v23 = *(v21 + 3);

    v24 = *(v21 + 4);
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED658, &qword_23815E768) + 80);
    v26 = *(v24 + 16);
    if (v26)
    {
      v59 = v2;
      v60 = v25;
      v27 = v62;
      v28 = *(v62 + 16);
      v29 = v71;
      v28(v71, v24 + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v10);

      if (v26 == 1)
      {
        v30 = v61;
        v28(v61, v29, v10);
        if ((*(v27 + 88))(v30, v10) == *MEMORY[0x277D54B60])
        {
          (*(v27 + 96))(v30, v10);
          v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDC0, &qword_23815E770) + 48);
          v32 = v63;
          v57 = *(v63 + 32);
          v58 = v31;
          v33 = v67;
          v34 = v69;
          v57();
          v35 = sub_238154FBC();
          (*(*(v35 - 8) + 56))(v68, 1, 1, v35);
          (*(v32 + 16))(v66, v33, v34);
          v36 = v65;
          (*(v65 + 16))(v70, v64, v59);
          v37 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v38 = (v7 + *(v36 + 80) + v37) & ~*(v36 + 80);
          v39 = swift_allocObject();
          *(v39 + 16) = 0;
          *(v39 + 24) = 0;
          v40 = v39 + v37;
          v41 = v69;
          (v57)(v40, v66, v69);
          (*(v36 + 32))(v39 + v38, v70, v59);
          sub_2381351C8(0, 0, v68, &unk_23815E780, v39);

          (*(v32 + 8))(v67, v41);
          (*(v27 + 8))(v71, v10);
          v42 = sub_2381527EC();
          (*(*(v42 - 8) + 8))(&v61[v58], v42);
        }

        else
        {
          if (qword_27DEEA108 != -1)
          {
            swift_once();
          }

          v49 = sub_23815293C();
          __swift_project_value_buffer(v49, qword_27DEED4B0);
          v50 = sub_23815291C();
          v51 = sub_2381550FC();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_238060000, v50, v51, "Not supported", v52, 2u);
            v53 = v52;
            v30 = v61;
            v27 = v62;
            MEMORY[0x2383EA8A0](v53, -1, -1);
          }

          v54 = *(v27 + 8);
          v54(v71, v10);
          v54(v30, v10);
        }

        v55 = sub_23815361C();
        return (*(*(v55 - 8) + 8))(&v21[v60], v55);
      }

      (*(v27 + 8))(v29, v10);
      v25 = v60;
    }

    else
    {
    }

    v48 = sub_23815361C();
    return (*(*(v48 - 8) + 8))(&v21[v25], v48);
  }

  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v43 = sub_23815293C();
  __swift_project_value_buffer(v43, qword_27DEED4B0);
  v44 = sub_23815291C();
  v45 = sub_2381550FC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_238060000, v44, v45, "Not supported", v46, 2u);
    MEMORY[0x2383EA8A0](v46, -1, -1);
  }

  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_23811F934(uint64_t a1, int a2)
{
  v59 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v62 = &v54 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220);
  v60 = *(v63 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x28223BE20](v63);
  v7 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC570, &qword_23815C228);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC578, &qword_23815C230);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC500, &unk_23815E6B0);
  sub_23815365C();
  if ((*(v18 + 88))(v21, v17) == *MEMORY[0x277D54B90])
  {
    v58 = v10;
    (*(v18 + 96))(v21, v17);
    v22 = *(v21 + 1);

    v23 = *(v21 + 3);

    v24 = *(v21 + 4);
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC588, &qword_23815C238) + 80);
    v26 = *(v24 + 16);
    if (v26)
    {
      v56 = v25;
      v57 = v14;
      v27 = v58;
      v28 = *(v58 + 16);
      v28(v16, v24 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v9);

      if (v26 == 1)
      {
        v29 = v57;
        v28(v57, v16, v9);
        if ((*(v27 + 88))(v29, v9) == *MEMORY[0x277D54B60])
        {
          (*(v27 + 96))(v29, v9);
          v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC590, &qword_23815C240) + 48);
          v31 = v60;
          v54 = *(v60 + 32);
          v55 = v30;
          v32 = v61;
          v33 = v63;
          v54();
          v34 = sub_238154FBC();
          (*(*(v34 - 8) + 56))(v62, 1, 1, v34);
          (*(v31 + 16))(v7, v32, v33);
          v35 = v58;
          v59 &= 1u;
          v36 = (*(v31 + 80) + 32) & ~*(v31 + 80);
          v37 = v36 + v5;
          v38 = swift_allocObject();
          *(v38 + 16) = 0;
          *(v38 + 24) = 0;
          v39 = v38 + v36;
          v40 = v63;
          (v54)(v39, v7, v63);
          *(v38 + v37) = v59;
          sub_2381351C8(0, 0, v62, &unk_23815E710, v38);

          (*(v31 + 8))(v61, v40);
          (*(v35 + 8))(v16, v9);
          v41 = sub_2381527EC();
          (*(*(v41 - 8) + 8))(&v57[v55], v41);
        }

        else
        {
          if (qword_27DEEA108 != -1)
          {
            swift_once();
          }

          v48 = sub_23815293C();
          __swift_project_value_buffer(v48, qword_27DEED4B0);
          v49 = sub_23815291C();
          v50 = sub_2381550FC();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_238060000, v49, v50, "Not supported", v51, 2u);
            v27 = v58;
            MEMORY[0x2383EA8A0](v51, -1, -1);
          }

          v52 = *(v27 + 8);
          v52(v16, v9);
          v52(v57, v9);
        }

        v53 = sub_23815361C();
        return (*(*(v53 - 8) + 8))(&v21[v56], v53);
      }

      (*(v27 + 8))(v16, v9);
      v25 = v56;
    }

    else
    {
    }

    v47 = sub_23815361C();
    return (*(*(v47 - 8) + 8))(&v21[v25], v47);
  }

  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v42 = sub_23815293C();
  __swift_project_value_buffer(v42, qword_27DEED4B0);
  v43 = sub_23815291C();
  v44 = sub_2381550FC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_238060000, v43, v44, "Not supported", v45, 2u);
    MEMORY[0x2383EA8A0](v45, -1, -1);
  }

  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_2381200D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5D0, &qword_23815E670);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_238120144()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2381201EC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0) - 8);
  v5 = (*(v4 + 80) + 17) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v1 + 16);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238088780;

  return sub_23811B40C(a1, v7, v1 + v5, v6);
}

uint64_t sub_238120314()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_2381203E8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220) - 8);
  v5 = *(v4 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238088780;

  return sub_23811D2CC(a1, v6, v7, v8, (v8 + v5));
}

uint64_t sub_238120514()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23812055C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238088780;

  return sub_23811AE20(a1, v4, v5, v7, v6);
}

uint64_t sub_23812061C(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 160) = a1;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2381206AC, 0, 0);
}

uint64_t sub_2381206AC()
{
  v53 = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  v2 = sub_2381552AC();
  v0[21] = v2;
  v0[22] = v3;
  if (v3 >> 60 == 15)
  {
LABEL_18:
    v34 = v0[1];
    v48 = *MEMORY[0x277D85DE8];
    goto LABEL_19;
  }

  v4 = v2;
  v5 = v3;
  v6 = objc_opt_self();
  v7 = sub_23815274C();
  v0[10] = 0;
  v8 = [v6 unarchiveConfigurationFromData:v7 format:-1 error:v0 + 10];
  v0[23] = v8;

  v9 = v0[10];
  if (!v8)
  {
    v33 = v9;
    sub_23815266C();

    swift_willThrow();
    sub_238087244(v4, v5);
    v34 = v0[1];
    v35 = *MEMORY[0x277D85DE8];
LABEL_19:

    return v34();
  }

  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v14 = objc_allocWithZone(MEMORY[0x277D3EA90]);
  v15 = v9;
  v16 = [v14 initWithTitleString:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:0 imageAssetID:v10 personalPoster:{v11, v12, v13, v10, v11, v12, v13}];
  v0[24] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277D3EA98]) initWithBaseIdentifier:*MEMORY[0x277D3EB58] context:v16 attachmentUniqueIdentifiers:0];
  v0[25] = v17;
  v52 = v17;
  v18 = [objc_opt_self() snapshotRequestForPRSPosterConfiguration:v8 definition:v17 interfaceOrientation:1];
  v0[26] = v18;
  v19 = [objc_opt_self() sharedIncomingCallSnapshotController];
  v0[27] = v19;
  v0[10] = 0;
  v20 = [v19 latestSnapshotBundleForRequest:v18 error:v0 + 10];
  v21 = v0[10];
  if (v20)
  {
    v22 = v20;
    v51 = v16;
    v23 = qword_27DEEA108;
    v24 = v21;
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = sub_23815293C();
    __swift_project_value_buffer(v25, qword_27DEED4B0);
    v26 = v18;
    v27 = sub_23815291C();
    v28 = sub_2381550FC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v50 = v19;
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_238060000, v27, v28, "Not prewarming contact poster as a cached snapshot bundle already exists for request: %@", v29, 0xCu);
      sub_238071284(v30, &unk_27DEECA10, &qword_2381588F0);
      v32 = v50;
      MEMORY[0x2383EA8A0](v30, -1, -1);
      MEMORY[0x2383EA8A0](v29, -1, -1);
    }

    else
    {
      v47 = v22;
      v22 = v19;
      v32 = v27;
      v27 = v26;
      v31 = v47;
    }

    sub_238087244(v4, v5);

    goto LABEL_18;
  }

  v36 = v21;
  v37 = sub_23815266C();

  swift_willThrow();
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v38 = sub_23815293C();
  __swift_project_value_buffer(v38, qword_27DEED4B0);
  v39 = v18;
  v40 = sub_23815291C();
  v41 = sub_2381550FC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    *(v42 + 4) = v39;
    *v43 = v39;
    v44 = v39;
    _os_log_impl(&dword_238060000, v40, v41, "Prewarming contact poster for request: %@", v42, 0xCu);
    sub_238071284(v43, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v43, -1, -1);
    MEMORY[0x2383EA8A0](v42, -1, -1);
  }

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_238120D18;
  v45 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED610, &qword_23815E730);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23811AD40;
  v0[13] = &block_descriptor_59;
  v0[14] = v45;
  [v19 executeSnapshotRequest:v39 completion:v0 + 10];
  v46 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238120D18()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_238120F24;
  }

  else
  {
    v3 = sub_238120E54;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238120E54()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);
  sub_238087244(*(v0 + 168), *(v0 + 176));

  v6 = *(v0 + 8);
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_238120F24()
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  swift_willThrow();
  sub_238087244(v7, v8);

  v9 = v0[28];
  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_238121018()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_23815323C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_238121174(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23815323C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_238087150;

  return sub_23811AC7C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_23812133C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23812138C()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEED680);
  __swift_project_value_buffer(v0, qword_27DEED680);
  v1 = *MEMORY[0x277D04790];
  sub_238154DEC();
  return sub_23815292C();
}

uint64_t DDDataReturnType.hashValue.getter()
{
  v1 = *v0;
  sub_23815568C();
  MEMORY[0x2383E9CD0](v1);
  return sub_2381556BC();
}

uint64_t DDDeviceDiscoveryView.outputType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DDDeviceDiscoveryView(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t DDDeviceDiscoveryView.outputType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DDDeviceDiscoveryView(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t DDDeviceDiscoveryView.previewImageData.getter()
{
  v1 = (v0 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 72));
  v4 = *v1;
  v5 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  return v3;
}

double sub_2381215CC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 72));
  v6 = *v3;
  v7 = *(v3 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_238121648(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 72));
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  sub_2380E6764(*v4, v7);

  sub_2380E6764(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815471C();
  sub_238087244(v6, v7);
}

uint64_t DDDeviceDiscoveryView.previewImageData.setter()
{
  v1 = (v0 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 72));
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_2380E6764(*v1, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815471C();
  sub_238087244(v3, v4);
}

void (*DDDeviceDiscoveryView.previewImageData.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 72));
  v6 = *v5;
  v7 = v5[1];
  v4[10] = *v5;
  v4[11] = v7;
  v8 = v5[2];
  v4[12] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  sub_2380E6764(v6, v7);

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  return sub_2380D3A0C;
}

uint64_t DDDeviceDiscoveryView.$previewImageData.getter()
{
  v1 = (v0 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 72));
  v4 = *v1;
  v5 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815472C();
  return v3;
}

uint64_t DDDeviceDiscoveryView.init(airDropClient:bundleID:hostBundleID:previewImageLoader:browseDescriptor:browseParameters:publicKey:applicationServiceEndpointCallback:bonjourEndpointCallback:browserResultDataCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, char *a18)
{
  v155 = a6;
  v156 = a7;
  v152 = a4;
  v153 = a5;
  v157 = a3;
  v158 = a2;
  v154 = a1;
  v147 = sub_238152E0C();
  v146 = *(v147 - 8);
  v20 = *(v146 + 64);
  v21 = MEMORY[0x28223BE20](v147);
  v145 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v144 = &v137 - v23;
  v159 = sub_238152E1C();
  v24 = *(v159 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v159);
  v151 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v148 = &v137 - v29;
  MEMORY[0x28223BE20](v28);
  v161 = (&v137 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6A0, &unk_23815E808);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v137 - v36;
  v38 = type metadata accessor for DDDeviceDiscoveryView(0);
  v39 = v38[11];
  *(a9 + v39) = [objc_allocWithZone(sub_23815289C()) init];
  *(a9 + v38[13]) = 0;
  v40 = sub_238154C8C();
  v41 = MGCopyAnswer();

  if (!v41)
  {
    __break(1u);
    goto LABEL_38;
  }

  *&v167 = v41;
  v42 = swift_dynamicCast();
  v162 = a8;
  if (v42)
  {
    v43 = *(&v163 + 1);
    v44 = v163;
  }

  else
  {
    v43 = 0xED00003E656D614ELL;
    v44 = 0x206563697665443CLL;
  }

  v45 = (a9 + v38[14]);
  *v45 = v44;
  v45[1] = v43;
  v46 = v38[15];
  sub_2381528EC();
  swift_allocObject();
  *(a9 + v46) = sub_2381528DC();
  v47 = a9 + v38[16];
  LOBYTE(v167) = 1;
  sub_2381546FC();
  v48 = *(&v163 + 1);
  *v47 = v163;
  *(v47 + 1) = v48;
  v49 = v38[17];
  v50 = type metadata accessor for PermissionTask(0);
  (*(*(v50 - 8) + 56))(v37, 1, 1, v50);
  sub_2380712E4(v37, v35, &unk_27DEED6A0, &unk_23815E808);
  sub_2381546FC();
  sub_238071284(v37, &unk_27DEED6A0, &unk_23815E808);
  v51 = a9 + v38[18];
  v167 = xmmword_23815BDB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADE8, &qword_238158E00);
  sub_2381546FC();
  v52 = v164;
  *v51 = v163;
  *(v51 + 2) = v52;
  v53 = (a9 + v38[24]);
  v54 = (a9 + v38[26]);
  if (qword_27DEEA030 != -1)
  {
    swift_once();
  }

  v55 = qword_27DEF3190;
  type metadata accessor for DDDeviceAccessController();
  sub_23812F7E0(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController);
  v56 = v55;
  *v54 = sub_2381539BC();
  v54[1] = v57;
  v138 = v57;
  v58 = (a9 + v38[27]);
  *&v167 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6B8, &qword_23815E818);
  sub_2381546FC();
  v59 = *(&v163 + 1);
  *v58 = v163;
  v58[1] = v59;
  a9[7] = a10;
  v60 = *(v24 + 16);
  v61 = v162;
  v62 = v159;
  v60(a9 + v38[10], v162, v159);
  v150 = a10;

  v63 = sub_238130894();
  v160 = v24;
  v149 = v63;
  if (v63)
  {
    v64 = v161;
    v60(v161, v61, v62);
    *(a9 + v38[12]) = 1;
    v139 = sub_238130D2C();
    *v53 = v139;
    v53[1] = v65;
    v140 = v65;
    goto LABEL_26;
  }

  v66 = v148;
  v60(v148, v61, v62);
  v67 = (*(v24 + 88))(v66, v62);
  v68 = v67;
  if (v67 != *MEMORY[0x277CD9090])
  {
    if (v67 == *MEMORY[0x277CD90A8])
    {
      (*(v160 + 96))(v66, v62);
      v73 = v66[1];
      v139 = *v66;
      v140 = v73;
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC430, &qword_23815E820);
      v74 = v146;
      v75 = v66 + *(v145 + 12);
      v76 = v144;
      v148 = *(v146 + 32);
      (v148)(v144, v75, v147);
      v165 = &type metadata for RapportFeatureFlags;
      v166 = sub_23812277C();
      v77 = sub_23815283C();
      __swift_destroy_boxed_opaque_existential_1(&v163);
      if (v77)
      {
        (*(v74 + 8))(v76, v147);
LABEL_19:
        v64 = v161;
        v72 = v162;
        v71 = v161;
        v62 = v159;
        goto LABEL_20;
      }

      v84 = *(v145 + 12);
      v64 = v161;
      *v161 = 0xD000000000000015;
      v64[1] = 0x80000002381629C0;
      goto LABEL_23;
    }

    v79 = v146;
    if (v67 == *MEMORY[0x277CD90A0])
    {
      v80 = v148;
      (*(v160 + 96))(v148, v62);
      v81 = v80[1];
      v139 = *v80;
      v140 = v81;
      v82 = v80[3];
      v143 = v80[2];
      v144 = v82;
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA0, &qword_23815A7B0);
      v83 = v80 + *(v142 + 64);
      v76 = v145;
      v148 = *(v79 + 32);
      (v148)(v145, v83, v147);
      v165 = &type metadata for RapportFeatureFlags;
      v166 = sub_23812277C();
      LOBYTE(v80) = sub_23815283C();
      __swift_destroy_boxed_opaque_existential_1(&v163);
      if (v80)
      {
        (*(v79 + 8))(v76, v147);
        sub_238085CA0(v143, v144);
        goto LABEL_19;
      }

      v84 = *(v142 + 64);
      v64 = v161;
      *v161 = 0xD000000000000015;
      v64[1] = 0x80000002381629C0;
      v85 = v144;
      v64[2] = v143;
      v64[3] = v85;
LABEL_23:
      (v148)(v64 + v84, v76, v147);
      v62 = v159;
      v78 = v160;
      goto LABEL_24;
    }

LABEL_38:
    *&v163 = 0;
    *(&v163 + 1) = 0xE000000000000000;
    sub_23815541C();

    *&v163 = 0xD000000000000024;
    *(&v163 + 1) = 0x8000000238163130;
    v133 = [sub_238152D6C() description];
    swift_unknownObjectRelease();
    v134 = sub_238154CCC();
    v136 = v135;

    MEMORY[0x2383E9410](v134, v136);

    result = sub_2381554EC();
    __break(1u);
    return result;
  }

  (*(v24 + 96))(v66, v62);
  v69 = v66[1];
  v139 = *v66;
  v140 = v69;
  v165 = &type metadata for RapportFeatureFlags;
  v166 = sub_23812277C();
  v70 = sub_23815283C();
  __swift_destroy_boxed_opaque_existential_1(&v163);
  if ((v70 & 1) == 0)
  {
    v64 = v161;
    *v161 = 0xD000000000000015;
    v64[1] = 0x80000002381629C0;
    v78 = v24;
LABEL_24:
    (*(v78 + 104))(v64, v68, v62);
    goto LABEL_25;
  }

  v64 = v161;
  v71 = v161;
  v72 = v61;
LABEL_20:
  v60(v71, v72, v62);
LABEL_25:
  v86 = v140;
  *v53 = v139;
  v53[1] = v86;
  *(a9 + v38[12]) = 0;
LABEL_26:
  v148 = a18;
  v147 = a17;
  v144 = a16;
  v143 = a15;
  v142 = a14;
  v141 = a13;
  v146 = a12;
  v145 = a11;
  v87 = v151;
  v60(v151, v64, v62);
  v88 = type metadata accessor for _DDContactInfoCache(0);
  v89 = *(v88 + 48);
  v90 = *(v88 + 52);
  swift_allocObject();
  v91 = sub_2380C1928();
  v92 = type metadata accessor for _DDAirDropMetadataCache(0);
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  v95 = swift_allocObject();
  v96 = v62;
  v97 = v154;

  *&v163 = sub_2380EED1C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBF70, &qword_23815BE80);
  sub_238152A5C();
  *(v95 + OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache_airDropClient) = v97;
  v98 = type metadata accessor for DeviceBrowserViewModel(0);
  v99 = *(v98 + 48);
  v100 = *(v98 + 52);
  swift_allocObject();
  v101 = sub_2380A0DD8(v87, v150, v91, v95);
  v102 = v153;
  a9[5] = v152;
  a9[6] = v102;
  v103 = v157;
  a9[3] = v158;
  a9[4] = v103;
  *a9 = v101;
  a9[1] = v97;
  v104 = *(v92 + 48);
  v105 = *(v92 + 52);
  v106 = swift_allocObject();

  *&v163 = sub_2380EED1C(MEMORY[0x277D84F90]);
  sub_238152A5C();
  *(v106 + OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache_airDropClient) = v97;
  a9[2] = v106;
  v107 = (a9 + v38[19]);
  v108 = v156;
  *v107 = v155;
  v107[1] = v108;
  *(a9 + v38[20]) = 0;
  v109 = (a9 + v38[21]);
  v110 = v142;
  *v109 = v141;
  v109[1] = v110;
  v111 = (a9 + v38[22]);
  v112 = v144;
  *v111 = v143;
  v111[1] = v112;
  v113 = (a9 + v38[23]);
  v114 = v148;
  *v113 = v147;
  v113[1] = v114;
  v115 = (a9 + v38[25]);
  v116 = v146;
  *v115 = v145;
  v115[1] = v116;
  if (v149)
  {
    v117 = v162;
    v118 = v160;
    if (v103)
    {
      v119 = v140;
      if (v140)
      {
        v120 = *(v160 + 8);

        v120(v117, v96);
        v120(v161, v96);
        v121 = v138;
        v122 = (v138 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
        v123 = *(v138 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8);
        *v122 = v158;
        v122[1] = v103;

        *(v121 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role) = 0;
        v124 = (v121 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName);
        v125 = *(v121 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName + 8);
        *v124 = v139;
        v124[1] = v119;
      }
    }

    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v128 = sub_23815293C();
    __swift_project_value_buffer(v128, qword_27DEED680);
    v129 = sub_23815291C();
    v130 = sub_2381550DC();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_238060000, v129, v130, "Unable to create device access session due to missing bundle ID and service name.", v131, 2u);
      MEMORY[0x2383EA8A0](v131, -1, -1);
    }

    v132 = *(v118 + 8);
    v132(v117, v96);
    return (v132)(v161, v96);
  }

  else
  {

    v127 = *(v160 + 8);
    v127(v162, v62);
    return (v127)(v161, v62);
  }
}

unint64_t sub_23812277C()
{
  result = qword_27DEED6C8;
  if (!qword_27DEED6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED6C8);
  }

  return result;
}

__n128 DDDeviceDiscoveryView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED6D0, &qword_23815E828);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  *v7 = sub_238153DEC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED6D8, &qword_23815E830);
  sub_238122958(v1, &v7[*(v8 + 44)]);
  v9 = sub_23815410C();
  v10 = sub_238153A4C();
  v11 = &v7[*(v4 + 44)];
  *v11 = v10;
  v11[8] = v9;
  sub_2381548BC();
  sub_238153A8C();
  sub_23807121C(v7, a1, &qword_27DEED6D0, &qword_23815E828);
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED6E0, &qword_23815E838) + 36);
  v13 = v16[5];
  *(v12 + 64) = v16[4];
  *(v12 + 80) = v13;
  *(v12 + 96) = v16[6];
  v14 = v16[1];
  *v12 = v16[0];
  *(v12 + 16) = v14;
  result = v16[3];
  *(v12 + 32) = v16[2];
  *(v12 + 48) = result;
  return result;
}

uint64_t sub_238122958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED818, &qword_23815E9F8);
  v3 = *(*(v68 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v68);
  v6 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = (&v62 - v7);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED820, &qword_23815EA00);
  v9 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v67 = &v62 - v10;
  v11 = type metadata accessor for DDDeviceDiscoveryView(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED828, &qword_23815EA08);
  v15 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v17 = &v62 - v16;
  if (*(a1 + v11[12]) == 1 && (v18 = a1 + v11[16], v19 = *v18, v20 = *(v18 + 8), v71 = v19, v72 = v20, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E8, &qword_23815C638), sub_23815470C(), (v70 & 1) != 0))
  {
    v64 = v8;
    v21 = *(a1 + 24);
    v22 = *(a1 + 32);
    if (v22)
    {
      objc_allocWithZone(MEMORY[0x277CC1E70]);

      v23 = sub_2381293D0(v21, v22, 0);
      if (v23)
      {
        v48 = v23;
        v49 = [v23 localizedName];
        v21 = sub_238154CCC();
        v63 = v50;
      }

      else
      {
        v21 = 0;
        v63 = 0;
      }
    }

    else
    {
      v63 = 0;
    }

    v51 = (a1 + v11[14]);
    v52 = v51[1];
    v62 = *v51;
    sub_23812AE68(a1, v14);
    v53 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v54 = swift_allocObject();
    sub_23812C0A8(v14, v54 + v53, type metadata accessor for DDDeviceDiscoveryView);
    sub_23812AE68(a1, v14);
    v55 = swift_allocObject();
    sub_23812C0A8(v14, v55 + v53, type metadata accessor for DDDeviceDiscoveryView);
    v56 = (v6 + *(v68 + 36));
    v57 = *(sub_23815396C() + 20);

    sub_238154F9C();
    *v56 = &unk_23815EA48;
    v56[1] = v55;
    v58 = v62;
    v59 = v63;
    *v6 = v21;
    v6[1] = v59;
    v6[2] = v58;
    v6[3] = v52;
    v6[4] = sub_23812B444;
    v6[5] = v54;
    v45 = &qword_27DEED818;
    v46 = &qword_23815E9F8;
    v60 = v64;
    sub_23807121C(v6, v64, &qword_27DEED818, &qword_23815E9F8);
    sub_2380712E4(v60, v67, &qword_27DEED818, &qword_23815E9F8);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEED848, &qword_27DEED828, &qword_23815EA08);
    sub_23812B388();
    sub_238153ECC();
    v47 = v60;
  }

  else
  {
    sub_23812310C(v17);
    sub_23812AE68(a1, &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v25 = swift_allocObject();
    sub_23812C0A8(&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for DDDeviceDiscoveryView);
    v26 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED830, &qword_23815EA20) + 36)];
    v27 = &v26[*(sub_23815396C() + 20)];
    sub_238154F9C();
    *v26 = &unk_23815EA18;
    *(v26 + 1) = v25;
    sub_23812AE68(a1, &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = swift_allocObject();
    v64 = type metadata accessor for DDDeviceDiscoveryView;
    sub_23812C0A8(&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v24, type metadata accessor for DDDeviceDiscoveryView);
    v29 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED838, &qword_23815EA28) + 36)];
    *v29 = 0;
    *(v29 + 1) = 0;
    *(v29 + 2) = sub_23812B294;
    *(v29 + 3) = v28;
    sub_23812AE68(a1, &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = swift_allocObject();
    sub_23812C0A8(&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v24, type metadata accessor for DDDeviceDiscoveryView);
    v63 = objc_opt_self();
    v31 = [v63 defaultCenter];
    v32 = a1;
    v33 = *MEMORY[0x277D76E80];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED840, &unk_23815EA30);
    v35 = &v17[*(v34 + 52)];
    sub_2381551DC();

    v36 = swift_allocObject();
    *(v36 + 16) = sub_23812B2AC;
    *(v36 + 24) = v30;
    v37 = &v17[*(v34 + 56)];
    *v37 = sub_2380F93A4;
    v37[1] = v36;
    sub_23812AE68(v32, v14);
    v38 = swift_allocObject();
    sub_23812C0A8(v14, v38 + v24, v64);
    v39 = [v63 defaultCenter];
    v40 = *MEMORY[0x277D76E58];
    v41 = v65;
    v42 = &v17[*(v65 + 52)];
    sub_2381551DC();

    v43 = swift_allocObject();
    *(v43 + 16) = sub_23812B2FC;
    *(v43 + 24) = v38;
    v44 = &v17[*(v41 + 56)];
    *v44 = sub_2380F93A4;
    v44[1] = v43;
    v45 = &qword_27DEED828;
    v46 = &qword_23815EA08;
    sub_2380712E4(v17, v67, &qword_27DEED828, &qword_23815EA08);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEED848, &qword_27DEED828, &qword_23815EA08);
    sub_23812B388();
    sub_238153ECC();
    v47 = v17;
  }

  return sub_238071284(v47, v45, v46);
}

uint64_t sub_23812310C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v83 = &v77 - v5;
  v6 = type metadata accessor for DDDeviceDiscoveryView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = type metadata accessor for _DDDevicePickerView();
  v11 = *(*(v10 - 1) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v77 - v15;
  v17 = *v1;
  v18 = v1 + *(v7 + 80);
  v19 = *(v18 + 2);
  v87 = *v18;
  v88 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  v80 = v86;
  v81 = v85;
  v20 = (v1 + *(v7 + 104));
  v21 = v20[1];
  v82 = *v20;
  sub_23812AE68(v2, &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v79 = swift_allocObject();
  sub_23812C0A8(&v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v79 + v22, type metadata accessor for DDDeviceDiscoveryView);
  LOBYTE(v85) = 0;

  sub_2381546FC();
  v23 = *(&v87 + 1);
  v14[32] = v87;
  *(v14 + 5) = v23;
  v24 = v10[7];
  *&v14[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v25 = v10[8];
  *&v14[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  swift_storeEnumTagMultiPayload();
  v26 = v10[9];
  *&v14[v26] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v27 = &v14[v10[10]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v10[11];
  *&v14[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v29 = v10[12];
  *&v14[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  swift_storeEnumTagMultiPayload();
  v30 = &v14[v10[13]];
  [objc_allocWithZone(type metadata accessor for _DDAskToAirDropManager()) init];
  sub_23812F7E0(&qword_27DEEA920, type metadata accessor for _DDAskToAirDropManager);
  v31 = sub_2381539BC();
  v33 = v32;
  *v30 = v31;
  v30[1] = v32;
  v34 = &v14[v10[14]];
  v35 = objc_allocWithZone(type metadata accessor for _DDWirelessSettingsController());
  v78 = v33;
  [v35 init];
  sub_23812F7E0(&unk_27DEED8A0, type metadata accessor for _DDWirelessSettingsController);
  *v34 = sub_2381539BC();
  v34[1] = v36;
  v37 = &v14[v10[15]];
  if (qword_27DEEA100 != -1)
  {
    swift_once();
  }

  v38 = qword_27DEF3290;
  type metadata accessor for _DDPinPairingManager();
  sub_23812F7E0(&qword_27DEEA930, type metadata accessor for _DDPinPairingManager);
  v39 = v38;
  *v37 = sub_2381539BC();
  v37[1] = v40;
  v41 = &v14[v10[16]];
  v42 = qword_27DEEA030;
  v43 = v40;
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = qword_27DEF3190;
  type metadata accessor for DDDeviceAccessController();
  sub_23812F7E0(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController);
  v45 = v44;
  *v41 = sub_2381539BC();
  v41[1] = v46;
  v47 = v10[17];
  if (qword_27DEEA128 != -1)
  {
    swift_once();
  }

  v48 = &v14[v47];
  v85 = qword_27DEEDA60;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB70, &qword_238159970);
  sub_2381546FC();
  v49 = *(&v87 + 1);
  *v48 = v87;
  *(v48 + 1) = v49;
  v50 = &v14[v10[18]];
  LOBYTE(v85) = 0;
  sub_2381546FC();
  v51 = *(&v87 + 1);
  *v50 = v87;
  *(v50 + 1) = v51;
  v52 = &v14[v10[19]];
  LOBYTE(v85) = 0;
  sub_2381546FC();
  v53 = *(&v87 + 1);
  *v52 = v87;
  *(v52 + 1) = v53;
  v54 = &v14[v10[20]];
  LOBYTE(v85) = 0;
  sub_2381546FC();
  v55 = *(&v87 + 1);
  *v54 = v87;
  *(v54 + 1) = v55;
  v56 = v10[21];
  swift_unknownObjectWeakInit();
  *&v14[v10[26]] = 4;
  *&v14[v10[27]] = 5;
  *&v14[v10[28]] = xmmword_23815BDD0;
  v57 = *(v17 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_contactInfoCache);
  type metadata accessor for _DDContactInfoCache(0);
  sub_23812F7E0(&qword_27DEEC608, type metadata accessor for _DDContactInfoCache);

  *(v14 + 2) = sub_2381539BC();
  *(v14 + 3) = v58;
  type metadata accessor for DeviceBrowserViewModel(0);
  sub_23812F7E0(&unk_27DEED8B0, type metadata accessor for DeviceBrowserViewModel);

  *v14 = sub_2381539BC();
  *(v14 + 1) = v59;
  sub_2380BDAE8();
  v60 = &v14[v10[25]];
  *v60 = v61;
  *(v60 + 1) = v62;
  v63 = &v14[v10[22]];
  v64 = v80;
  *v63 = v81;
  *(v63 + 1) = v64;
  swift_unknownObjectWeakAssign();
  v65 = &v14[v10[23]];
  v66 = v79;
  *v65 = sub_23812BFD4;
  v65[1] = v66;
  v67 = &v14[v10[24]];
  v68 = v82;
  *v67 = v82;
  *(v67 + 1) = v21;
  if (v21)
  {
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  v70 = 0xE000000000000000;
  if (v21)
  {
    v70 = v21;
  }

  v71 = &v43[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_serviceIdentifier];
  v72 = *&v43[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_serviceIdentifier + 8];
  *v71 = v69;
  *(v71 + 1) = v70;

  v73 = sub_238154FBC();
  v74 = v83;
  (*(*(v73 - 8) + 56))(v83, 1, 1, v73);
  v75 = swift_allocObject();
  v75[2] = 0;
  v75[3] = 0;
  v75[4] = v78;
  sub_2380D2A4C(0, 0, v74, &unk_23815C430, v75);

  sub_23812C0A8(v14, v16, type metadata accessor for _DDDevicePickerView);
  return sub_23812C0A8(v16, v84, type metadata accessor for _DDDevicePickerView);
}

uint64_t sub_238123A04(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_238154F8C();
  *(v1 + 24) = sub_238154F7C();
  v3 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_238123A9C, v3, v2);
}

uint64_t sub_238123A9C()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_238123B00();
  v3 = v0[1];

  return v3();
}

uint64_t sub_238123B00()
{
  v1 = v0;
  v2 = sub_238152F3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DEEA110 != -1)
  {
    swift_once();
  }

  v7 = sub_23815293C();
  __swift_project_value_buffer(v7, qword_27DEED680);
  v8 = sub_23815291C();
  v9 = sub_2381550FC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_238060000, v8, v9, "Picker Did Appear", v10, 2u);
    MEMORY[0x2383EA8A0](v10, -1, -1);
  }

  v11 = *v1;
  sub_2380A54D4();
  sub_238152EFC();
  LOBYTE(v11) = sub_238152EEC();
  result = (*(v3 + 8))(v6, v2);
  if (v11)
  {
    return sub_238124DC4();
  }

  return result;
}

uint64_t sub_238123CA8()
{
  v1 = v0;
  if (qword_27DEEA110 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = sub_23815293C();
    __swift_project_value_buffer(v2, qword_27DEED680);
    v3 = sub_23815291C();
    v4 = sub_2381550FC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_238060000, v3, v4, "Picker Did Disappear", v5, 2u);
      MEMORY[0x2383EA8A0](v5, -1, -1);
    }

    v6 = *v1;
    sub_2380A8BA4();
    v7 = type metadata accessor for DDDeviceDiscoveryView(0);
    v8 = v7;
    if (*(v1 + *(v7 + 48)) == 1)
    {
      v9 = *(v1 + *(v7 + 104) + 8);
      sub_23808C144();
    }

    v10 = (v1 + *(v8 + 108));
    v26 = *v10;
    v27 = v10[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED868, &qword_23815EA70);
    sub_23815470C();
    if ((v25 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_2381553BC();
      sub_2381529CC();
      sub_23812F7E0(&qword_27DEED870, MEMORY[0x277CBCDA8]);
      sub_23815503C();
      v12 = v26;
      v11 = v27;
      v13 = v28;
      v14 = v29;
      v1 = v30;
    }

    else
    {
      v15 = -1 << *(v25 + 32);
      v11 = v25 + 56;
      v13 = ~v15;
      v16 = -v15;
      v17 = v16 < 64 ? ~(-1 << v16) : -1;
      v1 = (v17 & *(v25 + 56));

      v14 = 0;
      v12 = v25;
    }

    v18 = (v13 + 64) >> 6;
    if (v12 < 0)
    {
      break;
    }

LABEL_13:
    v19 = v14;
    v20 = v1;
    v21 = v14;
    if (v1)
    {
LABEL_17:
      v22 = (v20 - 1) & v20;
      v23 = *(*(v12 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));

      if (v23)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        goto LABEL_23;
      }

      v20 = *(v11 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  while (sub_2381553CC())
  {
    sub_2381529CC();
    swift_dynamicCast();
    v21 = v14;
    v22 = v1;
    if (!v25)
    {
      break;
    }

LABEL_21:
    sub_2381529BC();

    v14 = v21;
    v1 = v22;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_23:
  sub_23807A314();

  sub_23815470C();

  sub_23815471C();
}

void sub_238124030(uint64_t *a1)
{
  if (qword_27DEEA110 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEED680);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "Picker was Foregrounded", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  v6 = *a1;
  sub_2380A54D4();
}

void sub_238124114(void *a1)
{
  if (qword_27DEEA110 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEED680);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "Picker was Backgrounded", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  v6 = *a1;
  sub_2380A8BA4();
  v7 = type metadata accessor for DDDeviceDiscoveryView(0);
  if (*(a1 + *(v7 + 48)) == 1)
  {
    v8 = *(a1 + *(v7 + 104) + 8);
    sub_23808C144();
  }
}

void sub_238124220()
{
  v1 = type metadata accessor for DDDeviceDiscoveryView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = *(v0 + 32);
  if (v9)
  {
    v10 = *(v0 + 24);
    v11 = sub_238154FBC();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_23812AE68(v0, &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_238154F8C();

    v12 = sub_238154F7C();
    v13 = (*(v2 + 80) + 48) & ~*(v2 + 80);
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v12;
    v14[3] = v15;
    v14[4] = v10;
    v14[5] = v9;
    sub_23812C0A8(v4, v14 + v13, type metadata accessor for DDDeviceDiscoveryView);
    sub_2380D2A4C(0, 0, v8, &unk_23815EA68, v14);
  }

  else
  {
    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v16 = sub_23815293C();
    __swift_project_value_buffer(v16, qword_27DEED680);
    v21 = sub_23815291C();
    v17 = sub_2381550DC();
    if (os_log_type_enabled(v21, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_238060000, v21, v17, "No bundleID to enable WifiAware for", v18, 2u);
      MEMORY[0x2383EA8A0](v18, -1, -1);
    }

    v19 = v21;
  }
}

uint64_t sub_2381244EC()
{
  v0[2] = sub_238154F8C();
  v0[3] = sub_238154F7C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_238124598;

  return sub_2381246D4();
}

uint64_t sub_238124598()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_2380D780C, v5, v4);
}

uint64_t sub_2381246D4()
{
  v1[8] = v0;
  v2 = type metadata accessor for DDDeviceDiscoveryView(0);
  v1[9] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_238154F8C();
  v1[11] = sub_238154F7C();
  v5 = sub_238154F3C();
  v1[12] = v5;
  v1[13] = v4;

  return MEMORY[0x2822009F8](sub_23812479C, v5, v4);
}

uint64_t sub_23812479C()
{
  v25 = v0;
  v1 = *(v0 + 64);
  v2 = *(v1 + 24);
  *(v0 + 112) = v2;
  v3 = *(v1 + 32);
  *(v0 + 120) = v3;
  if (v3)
  {
    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v4 = sub_23815293C();
    *(v0 + 128) = __swift_project_value_buffer(v4, qword_27DEED680);

    v5 = sub_23815291C();
    v6 = sub_2381550FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_238085EAC(v2, v3, &v24);
      _os_log_impl(&dword_238060000, v5, v6, "Loading setting for %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2383EA8A0](v8, -1, -1);
      MEMORY[0x2383EA8A0](v7, -1, -1);
    }

    v9 = *(*(v0 + 64) + *(*(v0 + 72) + 60));
    *(v0 + 136) = v9;
    v10 = (*v9 + 152) & 0xFFFFFFFFFFFFLL | 0x517C000000000000;
    *(v0 + 144) = *(*v9 + 152);
    *(v0 + 152) = v10;

    return MEMORY[0x2822009F8](sub_238124AB0, v9, 0);
  }

  else
  {
    v11 = *(v0 + 88);

    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v12 = sub_23815293C();
    __swift_project_value_buffer(v12, qword_27DEED680);
    v13 = sub_23815291C();
    v14 = sub_2381550DC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_238060000, v13, v14, "No bundleID to load setting for", v15, 2u);
      MEMORY[0x2383EA8A0](v15, -1, -1);
    }

    v17 = *(v0 + 64);
    v16 = *(v0 + 72);

    v18 = (v17 + *(v16 + 64));
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v0 + 16) = v19;
    *(v0 + 24) = v20;
    *(v0 + 160) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E8, &qword_23815C638);
    sub_23815471C();
    v21 = *(v0 + 80);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_238124AB0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  *(v0 + 163) = (*(v0 + 144))(*(v0 + 112), *(v0 + 120));
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_238124B20, v3, v4);
}

uint64_t sub_238124B20()
{
  v29 = v0;
  v1 = *(v0 + 163);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);

  v8 = v6 + *(v7 + 64);
  v9 = *v8;
  v10 = *(v8 + 8);
  *(v0 + 32) = v9;
  *(v0 + 40) = v10;
  *(v0 + 161) = (v1 == 2) | v1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E8, &qword_23815C638);
  sub_23815471C();
  sub_23812AE68(v6, v5);

  v11 = sub_23815291C();
  v12 = sub_2381550FC();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 80);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_238085EAC(v14, v13, &v28);
    *(v16 + 12) = 2080;
    v18 = v15 + *(v7 + 64);
    v19 = *v18;
    v20 = *(v18 + 8);
    *(v0 + 48) = v19;
    *(v0 + 56) = v20;
    sub_23815470C();
    if (*(v0 + 162))
    {
      v21 = 0x64656C6261736964;
    }

    else
    {
      v21 = 0x64656C62616E65;
    }

    if (*(v0 + 162))
    {
      v22 = 0xE800000000000000;
    }

    else
    {
      v22 = 0xE700000000000000;
    }

    sub_23812ECB0(v15, type metadata accessor for DDDeviceDiscoveryView);
    v23 = sub_238085EAC(v21, v22, &v28);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_238060000, v11, v12, "Loaded setting for %s: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383EA8A0](v17, -1, -1);
    MEMORY[0x2383EA8A0](v16, -1, -1);
  }

  else
  {
    v24 = *(v0 + 80);

    sub_23812ECB0(v24, type metadata accessor for DDDeviceDiscoveryView);
  }

  v25 = *(v0 + 80);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_238124DC4()
{
  v1 = v0;
  v2 = type metadata accessor for DDDeviceDiscoveryView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED878, &qword_23815EA78);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9F0, &unk_23815EA80);
  sub_238152A6C();
  swift_endAccess();
  sub_23812AE68(v1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_23812C0A8(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for DDDeviceDiscoveryView);
  sub_2380711D4(&qword_27DEED888, &unk_27DEED878, &qword_23815EA78);
  sub_238152AFC();

  (*(v7 + 8))(v10, v6);
  v14 = (v1 + *(v3 + 116));
  v16 = v14[1];
  v19 = *v14;
  v15 = v19;
  v20 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED868, &qword_23815EA70);
  sub_23815470C();
  sub_2381529AC();

  v18[2] = v15;
  v18[3] = v16;
  v18[1] = v18[4];
  sub_23815471C();
}

void sub_238125098(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DDDeviceDiscoveryView(0);
  v95 = *(v4 - 1);
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4);
  v96 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v80 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED890, &qword_2381593F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v80 - v12;
  v14 = sub_238152BAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v2[4];
  if (v21)
  {
    v94 = v9;
    v97 = (&v80 - v20);
    v92 = v2[3];
    v22 = v19;
    sub_2380712E4(a1, v13, &unk_27DEED890, &qword_2381593F0);
    if ((*(v15 + 48))(v13, 1, v22) == 1)
    {
      sub_238071284(v13, &unk_27DEED890, &qword_2381593F0);
      if (qword_27DEEA110 != -1)
      {
        swift_once();
      }

      v23 = sub_23815293C();
      __swift_project_value_buffer(v23, qword_27DEED680);
      v24 = sub_23815291C();
      v25 = sub_2381550DC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_238060000, v24, v25, "boop endpoint is nil", v26, 2u);
        MEMORY[0x2383EA8A0](v26, -1, -1);
      }

      return;
    }

    v91 = v15;
    v31 = v15 + 32;
    v32 = *(v15 + 32);
    v93 = v22;
    v32(v97, v13, v22);
    v33 = (v2 + v4[22]);
    v34 = *v33;
    if (!*v33)
    {
      if (qword_27DEEA110 != -1)
      {
        swift_once();
      }

      v42 = sub_23815293C();
      __swift_project_value_buffer(v42, qword_27DEED680);
      v39 = sub_23815291C();
      v43 = sub_2381550DC();
      if (os_log_type_enabled(v39, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_238060000, v39, v43, "no bonjour endpoint callback set", v44, 2u);
        MEMORY[0x2383EA8A0](v44, -1, -1);
      }

      goto LABEL_37;
    }

    v90 = v32;
    v35 = v33[1];
    v36 = (v2 + v4[25]);
    v37 = v36[1];
    if (v37 >> 60 == 15)
    {
      sub_238086B74(v34);
      if (qword_27DEEA110 != -1)
      {
        swift_once();
      }

      v38 = sub_23815293C();
      __swift_project_value_buffer(v38, qword_27DEED680);
      v39 = sub_23815291C();
      v40 = sub_2381550DC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_238060000, v39, v40, "public key is nil", v41, 2u);
        MEMORY[0x2383EA8A0](v41, -1, -1);

        sub_23807A454(v34);
LABEL_38:
        (*(v91 + 8))(v97, v93);
        return;
      }

LABEL_36:
      sub_23807A454(v34);
LABEL_37:

      goto LABEL_38;
    }

    v45 = *v36;
    v46 = (v2 + v4[24]);
    v47 = v46[1];
    if (!v47)
    {
      sub_238086B74(v34);
      v76 = v45;
      sub_2380E6764(v45, v37);
      if (qword_27DEEA110 != -1)
      {
        swift_once();
      }

      v77 = sub_23815293C();
      __swift_project_value_buffer(v77, qword_27DEED680);
      v39 = sub_23815291C();
      v78 = sub_2381550DC();
      if (os_log_type_enabled(v39, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_238060000, v39, v78, "Missing serviceIdentifier", v79, 2u);
        MEMORY[0x2383EA8A0](v79, -1, -1);

        sub_23807A454(v34);
        sub_238087244(v76, v37);
        goto LABEL_38;
      }

      sub_238087244(v76, v37);
      goto LABEL_36;
    }

    v82 = v31;
    v84 = *v46;
    v89 = v37;
    v48 = v35;
    v86 = sub_238152CEC();
    v49 = *(*v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_identity);

    v83 = v34;
    v88 = v48;
    sub_238086B74(v34);
    v87 = v45;
    sub_2380E6764(v45, v89);
    v85 = v47;

    swift_unknownObjectRetain();
    v50 = sub_238152CBC();
    swift_unknownObjectRelease();
    v86 = v50;
    sub_238152C7C();
    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v51 = v83;
    v52 = sub_23815293C();
    __swift_project_value_buffer(v52, qword_27DEED680);
    v53 = sub_23815291C();
    v54 = sub_2381550FC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_238060000, v53, v54, "connect with boop endpoint", v55, 2u);
      MEMORY[0x2383EA8A0](v55, -1, -1);
    }

    v56 = sub_238154FBC();
    (*(*(v56 - 8) + 56))(v94, 1, 1, v56);
    sub_23812AE68(v2, v96);
    v57 = v91;
    (*(v91 + 16))(v18, v97, v93);
    sub_238154F8C();
    sub_238086B74(v51);
    sub_2380E6764(v87, v89);

    v58 = sub_238154F7C();
    v59 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v60 = (v5 + *(v57 + 80) + v59) & ~*(v57 + 80);
    v61 = (v16 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
    v80 = v58;
    v81 = (v62 + 23) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v95 + 23) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    v65 = MEMORY[0x277D85700];
    *(v64 + 16) = v80;
    *(v64 + 24) = v65;
    sub_23812C0A8(v96, v64 + v59, type metadata accessor for DDDeviceDiscoveryView);
    v66 = v93;
    v90(v64 + v60, v18, v93);
    *(v64 + v61) = v86;
    v67 = (v64 + v62);
    *v67 = v92;
    v67[1] = v21;
    v68 = (v64 + v81);
    v69 = v85;
    *v68 = v84;
    v68[1] = v69;
    v70 = v94;
    v71 = (v64 + v95);
    v72 = v87;
    v73 = v89;
    *v71 = v87;
    v71[1] = v73;
    v74 = (v64 + v63);
    v75 = v88;
    *v74 = v51;
    v74[1] = v75;
    sub_2381351C8(0, 0, v70, &unk_23815EA98, v64);

    sub_23807A454(v51);
    sub_238087244(v72, v73);

    (*(v57 + 8))(v97, v66);
  }

  else
  {
    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v27 = sub_23815293C();
    __swift_project_value_buffer(v27, qword_27DEED680);
    v97 = sub_23815291C();
    v28 = sub_2381550DC();
    if (os_log_type_enabled(v97, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_238060000, v97, v28, "No bundleID for boop endpoint", v29, 2u);
      MEMORY[0x2383EA8A0](v29, -1, -1);
    }

    v30 = v97;
  }
}

uint64_t sub_238125B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_238154F8C();
  v6[5] = sub_238154F7C();
  v8 = sub_238154F3C();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_238125BA4, v8, v7);
}

uint64_t sub_238125BA4()
{
  v14 = v0;
  if (qword_27DEEA110 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEED680);

  v3 = sub_23815291C();
  v4 = sub_2381550FC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_238085EAC(v6, v5, &v13);
    _os_log_impl(&dword_238060000, v3, v4, "Attempting to set app setting to enabled for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2383EA8A0](v8, -1, -1);
    MEMORY[0x2383EA8A0](v7, -1, -1);
  }

  v9 = v0[4];
  v10 = *(v9 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 60));
  v0[8] = v10;
  v11 = (*v10 + 160) & 0xFFFFFFFFFFFFLL | 0x25F0000000000000;
  v0[9] = *(*v10 + 160);
  v0[10] = v11;

  return MEMORY[0x2822009F8](sub_238125D60, v10, 0);
}

uint64_t sub_238125D60()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  (*(v0 + 72))(0, *(v0 + 16), *(v0 + 24));
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_238125E04;
  v4 = *(v0 + 32);

  return sub_2381246D4();
}

uint64_t sub_238125E04()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_238125F24, v4, v3);
}

uint64_t sub_238125F24()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238125F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v15;
  *(v8 + 96) = v16;
  *(v8 + 72) = v14;
  *(v8 + 56) = v13;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  sub_238154F8C();
  *(v8 + 104) = sub_238154F7C();
  v10 = sub_238154F3C();
  *(v8 + 112) = v10;
  *(v8 + 120) = v9;

  return MEMORY[0x2822009F8](sub_23812603C, v10, v9);
}

uint64_t sub_23812603C()
{
  v1 = v0[2];
  v2 = *((*MEMORY[0x277D85000] & **(v1 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 44))) + 0xA8);
  v14 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_238126184;
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[4];
  v12 = v0[3];

  return v14(v12, v11, v9, v10, v7, v8, v5, v6);
}

uint64_t sub_238126184(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v7 = *(v3 + 120);
  v8 = *(v3 + 112);
  if (v1)
  {
    v9 = sub_238126350;
  }

  else
  {
    v9 = sub_2381262C8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2381262C8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);

  if (v1)
  {
    v3 = *(v0 + 96);
    (*(v0 + 88))(*(v0 + 136));
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_238126350()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

uint64_t DDDeviceDiscoveryView.endpoint(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 24);
  sub_238152A2C();
  sub_2380D23F8(sub_2380EF054, v5, a1);
}

uint64_t sub_238126454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_2381554BC();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  sub_238154F8C();
  v7[13] = sub_238154F7C();
  v12 = sub_238154F3C();
  v7[14] = v12;
  v7[15] = v11;

  return MEMORY[0x2822009F8](sub_23812654C, v12, v11);
}

uint64_t sub_23812654C()
{
  v1 = *(v0 + 96);
  sub_23815562C();
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_238126618;
  v3 = *(v0 + 96);

  return sub_23814A898(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_238126618()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 136) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 120);
  v9 = *(v2 + 112);
  if (v0)
  {
    v10 = sub_238126930;
  }

  else
  {
    v10 = sub_2381267B0;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2381267B0()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);

  v4 = *MEMORY[0x277CE7BF8];
  if (sub_238154CCC() == v3 && v5 == v2)
  {

    goto LABEL_8;
  }

  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = sub_2381555CC();

  if (v9)
  {
LABEL_8:
    v10 = *(v0 + 72);
    v11 = **(v0 + 64);
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = sub_238152A7C();
    v14 = v13;
    v15 = *v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v14;
    *v14 = 0x8000000000000000;
    sub_2380C7958(54, v10, isUniquelyReferenced_nonNull_native);
    v17 = *v14;
    *v14 = v21;

    v12(v0 + 16, 0);
  }

  v18 = *(v0 + 96);

  v19 = *(v0 + 8);

  return v19();
}