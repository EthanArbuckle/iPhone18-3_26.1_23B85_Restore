id sub_23DF23710()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v314 = &v280 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v280 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v8 = *MEMORY[0x277D7CB18];
  v9 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x800000023E2592D0;
  v10 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = v8;
  v12 = v10;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v315 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v16 = v15;
  v17 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v313 = v17;
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v312 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_23E222370;
  v303 = inited;
  v20 = *MEMORY[0x277D7CC20];
  *(v19 + 32) = *MEMORY[0x277D7CC20];
  v21 = v18;
  v22 = v20;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v23 = v315;
  v24 = [v315 bundleURL];
  sub_23E1FBF9C();

  v25 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v26 = v6;
  sub_23DE477A0();
  *(v19 + 40) = v27;
  v28 = *MEMORY[0x277D7CC30];
  v29 = v313;
  *(v19 + 64) = v313;
  *(v19 + 72) = v28;
  v30 = v28;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v31 = [v23 bundleURL];
  sub_23E1FBF9C();

  v32 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v19 + 104) = v29;
  *(v19 + 80) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v34 = sub_23E1FDABC();
  v35 = v312;
  v36 = sub_23DF3BE54(v34);
  v37 = v303;
  v303[15] = v36;
  v38 = *MEMORY[0x277D7CB48];
  v37[18] = v35;
  v37[19] = v38;
  v37[20] = 1953392980;
  v37[21] = 0xE400000000000000;
  v39 = *MEMORY[0x277D7CB60];
  v40 = MEMORY[0x277D837D0];
  v37[23] = MEMORY[0x277D837D0];
  v37[24] = v39;
  v37[25] = 0x7261646E656C6163;
  v37[26] = 0xE800000000000000;
  v41 = *MEMORY[0x277D7CB58];
  v37[28] = v40;
  v37[29] = v41;
  v37[30] = 6579538;
  v37[31] = 0xE300000000000000;
  v42 = *MEMORY[0x277D7CCC0];
  v37[33] = v40;
  v37[34] = v42;
  v43 = v40;
  v44 = v37;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v45 = swift_initStackObject();
  v308 = xmmword_23E222350;
  *(v45 + 16) = xmmword_23E222350;
  *(v45 + 32) = 0x656C7069746C754DLL;
  *(v45 + 40) = 0xE800000000000000;
  v46 = MEMORY[0x277D839B0];
  *(v45 + 48) = 1;
  *(v45 + 72) = v46;
  strcpy((v45 + 80), "ParameterKey");
  *(v45 + 93) = 0;
  *(v45 + 94) = -5120;
  *(v45 + 96) = 0x657461444657;
  *(v45 + 104) = 0xE600000000000000;
  *(v45 + 120) = v43;
  *(v45 + 128) = 0x6465726975716552;
  *(v45 + 136) = 0xE800000000000000;
  *(v45 + 144) = 1;
  *(v45 + 168) = v46;
  *(v45 + 176) = 0x7365707954;
  *(v45 + 184) = 0xE500000000000000;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v45 + 216) = v304;
  *(v45 + 192) = &unk_285025288;
  v47 = v38;
  v48 = v39;
  v49 = v41;
  v50 = v42;
  v51 = sub_23E1FDABC();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v312 = v52;
  v44[35] = v51;
  v53 = *MEMORY[0x277D7CB90];
  v44[38] = v52;
  v44[39] = v53;
  v54 = v53;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v280 = v26;
  sub_23E1FC14C();
  v55 = v315;
  v56 = [v315 bundleURL];
  sub_23E1FBF9C();

  v57 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v44[40] = v58;
  v59 = *MEMORY[0x277D7CDD0];
  v60 = v313;
  v44[43] = v313;
  v44[44] = v59;
  v61 = swift_allocObject();
  *(v61 + 16) = v308;
  *(v61 + 32) = 0x75736F6C63736944;
  *(v61 + 40) = 0xEF6C6576654C6572;
  *(v61 + 48) = 0x63696C627550;
  *(v61 + 56) = 0xE600000000000000;
  *(v61 + 72) = MEMORY[0x277D837D0];
  *(v61 + 80) = 0x656C7069746C754DLL;
  *(v61 + 88) = 0xE800000000000000;
  *(v61 + 96) = 1;
  *(v61 + 120) = MEMORY[0x277D839B0];
  *(v61 + 128) = 0x614E74757074754FLL;
  *(v61 + 136) = 0xEA0000000000656DLL;
  v62 = v59;
  v311 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v63 = [v55 bundleURL];
  sub_23E1FBF9C();

  v64 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v61 + 144) = v65;
  *(v61 + 168) = v60;
  *(v61 + 176) = 0x7365707954;
  *(v61 + 216) = v304;
  *(v61 + 184) = 0xE500000000000000;
  *(v61 + 192) = &unk_2850252B8;
  v66 = MEMORY[0x277D837D0];
  v67 = sub_23E1FDABC();
  v68 = v303;
  v303[45] = v67;
  v69 = *MEMORY[0x277D7CBA0];
  v68[48] = v312;
  v68[49] = v69;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v311 = swift_allocObject();
  *(v311 + 16) = xmmword_23E228180;
  v312 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v70 = swift_allocObject();
  v289 = v70;
  v296 = xmmword_23E224C10;
  *(v70 + 16) = xmmword_23E224C10;
  v71 = *MEMORY[0x277D7CDF8];
  v294 = 0x800000023E24FDA0;
  v295 = 0xD000000000000016;
  *(v70 + 32) = v71;
  *(v70 + 40) = 0xD000000000000016;
  v72 = MEMORY[0x277D7CE00];
  *(v70 + 48) = 0x800000023E24FDA0;
  v73 = *v72;
  *(v70 + 64) = v66;
  *(v70 + 72) = v73;
  *(v70 + 80) = 0x74726F6853;
  *(v70 + 88) = 0xE500000000000000;
  v74 = *MEMORY[0x277D7CE38];
  *(v70 + 104) = v66;
  *(v70 + 112) = v74;
  v310 = swift_allocObject();
  *(v310 + 16) = xmmword_23E224C50;
  v75 = v71;
  v76 = v73;
  v77 = v74;
  v78 = v75;
  v79 = v76;
  v80 = v77;
  v288 = v78;
  v292 = v79;
  v291 = v80;
  v81 = v69;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v82 = v315;
  v83 = [v315 bundleURL];
  sub_23E1FBF9C();

  v84 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v85 = v310;
  *(v310 + 32) = v86;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v87 = [v82 bundleURL];
  sub_23E1FBF9C();

  v88 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v85[5] = v89;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v90 = [v82 bundleURL];
  sub_23E1FBF9C();

  v91 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v85[6] = v92;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v93 = [v82 bundleURL];
  sub_23E1FBF9C();

  v94 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v85[7] = v95;
  v96 = v85;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v97 = v315;
  v98 = [v315 bundleURL];
  sub_23E1FBF9C();

  v99 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v96[8] = v100;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v101 = [v97 bundleURL];
  sub_23E1FBF9C();

  v102 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v96[9] = v103;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v104 = [v97 bundleURL];
  sub_23E1FBF9C();

  v105 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v96[10] = v106;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v107 = [v97 bundleURL];
  sub_23E1FBF9C();

  v108 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v109 = v96;
  v96[11] = v110;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  v290 = v111;
  v112 = v289;
  *(v289 + 120) = v109;
  v113 = *MEMORY[0x277D7CE70];
  v112[18] = v111;
  v112[19] = v113;
  v301 = 0x800000023E24DC40;
  v112[20] = 0xD000000000000011;
  v112[21] = 0x800000023E24DC40;
  v114 = *MEMORY[0x277D7CE80];
  v112[23] = MEMORY[0x277D837D0];
  v112[24] = v114;
  v115 = v113;
  v116 = v114;
  v117 = v115;
  v118 = v116;
  v284 = v117;
  v283 = v118;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v119 = [v97 bundleURL];
  sub_23E1FBF9C();

  v120 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v112[25] = v121;
  v122 = *MEMORY[0x277D7CEE8];
  v112[28] = v313;
  v112[29] = v122;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v123 = swift_allocObject();
  v306 = xmmword_23E222340;
  *(v123 + 16) = xmmword_23E222340;
  v124 = swift_initStackObject();
  v286 = xmmword_23E222380;
  *(v124 + 16) = xmmword_23E222380;
  strcpy((v124 + 32), "WFParameterKey");
  *(v124 + 47) = -18;
  v285 = 0x800000023E2595C0;
  *(v124 + 48) = 0xD000000000000011;
  *(v124 + 56) = 0x800000023E2595C0;
  v300 = 0x800000023E2595E0;
  v125 = MEMORY[0x277D837D0];
  *(v124 + 72) = MEMORY[0x277D837D0];
  *(v124 + 80) = 0xD000000000000011;
  *(v124 + 88) = 0x800000023E2595E0;
  *(v124 + 96) = &unk_2850252E8;
  *(v124 + 120) = v304;
  *(v124 + 128) = 0x72756F7365524657;
  v298 = 0x800000023E24D730;
  *(v124 + 168) = v125;
  v302 = 0xD00000000000001BLL;
  *(v124 + 136) = 0xEF7373616C436563;
  *(v124 + 144) = 0xD00000000000001BLL;
  *(v124 + 152) = 0x800000023E24D730;
  v282 = v122;
  *(v123 + 32) = sub_23E1FDABC();
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  v112[33] = v297;
  v112[30] = v123;
  _s3__C3KeyVMa_0(0);
  v309 = v126;
  v310 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v127 = sub_23E1FDABC();
  v128 = sub_23DF3BE9C(v127);
  *(v311 + 32) = v128;
  v129 = swift_allocObject();
  *(v129 + 16) = v296;
  v130 = v288;
  v131 = v294;
  v132 = v295;
  *(v129 + 32) = v288;
  *(v129 + 40) = v132;
  *(v129 + 48) = v131;
  v133 = v292;
  *(v129 + 64) = v125;
  *(v129 + 72) = v133;
  *(v129 + 80) = 0x6D756964654DLL;
  *(v129 + 88) = 0xE600000000000000;
  v134 = v291;
  *(v129 + 104) = v125;
  *(v129 + 112) = v134;
  v289 = swift_allocObject();
  *(v289 + 16) = xmmword_23E224C00;
  v281 = v130;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v135 = v97;
  v136 = [v97 bundleURL];
  sub_23E1FBF9C();

  v137 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v138 = v289;
  *(v289 + 32) = v139;
  sub_23E1FDCBC();
  v288 = v140;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v141 = [v135 bundleURL];
  sub_23E1FBF9C();

  v142 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v138 + 40) = v143;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v144 = [v135 bundleURL];
  sub_23E1FBF9C();

  v145 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v147 = v289;
  v146 = v290;
  *(v289 + 48) = v148;
  *(v129 + 120) = v147;
  v150 = v283;
  v149 = v284;
  *(v129 + 144) = v146;
  *(v129 + 152) = v149;
  *(v129 + 160) = 0xD000000000000019;
  *(v129 + 168) = 0x800000023E259690;
  *(v129 + 184) = MEMORY[0x277D837D0];
  *(v129 + 192) = v150;
  v284 = v149;
  v283 = v150;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v151 = [v315 bundleURL];
  sub_23E1FBF9C();

  v152 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v129 + 200) = v153;
  v154 = v282;
  *(v129 + 224) = v313;
  *(v129 + 232) = v154;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E0, &qword_23E224C28);
  v155 = swift_allocObject();
  *(v155 + 16) = v306;
  v282 = v154;
  v156 = MEMORY[0x277D837D0];
  *(v155 + 32) = sub_23E1FDABC();
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E8, &unk_23E224C30);
  *(v129 + 264) = v288;
  *(v129 + 240) = v155;
  v157 = sub_23E1FDABC();
  v158 = sub_23DF3BE9C(v157);
  *(v311 + 40) = v158;
  v159 = swift_allocObject();
  *(v159 + 16) = v296;
  v160 = v281;
  v161 = v294;
  v162 = v295;
  *(v159 + 32) = v281;
  *(v159 + 40) = v162;
  *(v159 + 48) = v161;
  v163 = v292;
  *(v159 + 64) = v156;
  *(v159 + 72) = v163;
  *(v159 + 80) = 0x74726F6853;
  *(v159 + 88) = 0xE500000000000000;
  v164 = v291;
  *(v159 + 104) = v156;
  *(v159 + 112) = v164;
  *&v296 = swift_allocObject();
  *(v296 + 16) = xmmword_23E22A520;
  v295 = v160;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v165 = v315;
  v166 = [v315 bundleURL];
  sub_23E1FBF9C();

  v167 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v168 = v296;
  *(v296 + 32) = v169;
  sub_23E1FDCBC();
  v294 = v170;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v171 = [v165 bundleURL];
  sub_23E1FBF9C();

  v172 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v168[5] = v173;
  sub_23E1FDCBC();
  v294 = v174;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v175 = [v165 bundleURL];
  sub_23E1FBF9C();

  v176 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v168[6] = v177;
  sub_23E1FDCBC();
  v294 = v178;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v179 = [v165 bundleURL];
  sub_23E1FBF9C();

  v180 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v168[7] = v181;
  sub_23E1FDCBC();
  v294 = v182;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v183 = [v165 bundleURL];
  sub_23E1FBF9C();

  v184 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v185 = v296;
  *(v296 + 64) = v186;
  *(v159 + 120) = v185;
  v188 = v283;
  v187 = v284;
  *(v159 + 144) = v290;
  *(v159 + 152) = v187;
  *(v159 + 160) = 0xD000000000000011;
  *(v159 + 168) = v285;
  *(v159 + 184) = MEMORY[0x277D837D0];
  *(v159 + 192) = v188;
  v294 = v187;
  *&v296 = v188;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v189 = [v165 bundleURL];
  sub_23E1FBF9C();

  v190 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v159 + 200) = v191;
  v192 = v282;
  *(v159 + 224) = v313;
  *(v159 + 232) = v192;
  v193 = swift_allocObject();
  *(v193 + 16) = v306;
  v194 = swift_allocObject();
  *(v194 + 16) = v286;
  strcpy((v194 + 32), "WFParameterKey");
  *(v194 + 47) = -18;
  v195 = v300;
  v196 = v301;
  *(v194 + 48) = 0xD000000000000011;
  *(v194 + 56) = v196;
  v197 = MEMORY[0x277D837D0];
  *(v194 + 72) = MEMORY[0x277D837D0];
  *(v194 + 80) = 0xD000000000000011;
  *(v194 + 88) = v195;
  *(v194 + 96) = &unk_2850253C8;
  *(v194 + 120) = v304;
  *(v194 + 128) = 0x72756F7365524657;
  *(v194 + 168) = v197;
  *(v194 + 136) = 0xEF7373616C436563;
  v198 = v298;
  *(v194 + 144) = v302;
  *(v194 + 152) = v198;
  v293 = v192;
  *(v193 + 32) = sub_23E1FDABC();
  *(v159 + 264) = v297;
  *(v159 + 240) = v193;
  v199 = sub_23E1FDABC();
  v200 = sub_23DF3BE9C(v199);
  *(v311 + 48) = v200;
  v201 = swift_allocObject();
  *(v201 + 16) = v308;
  v203 = v294;
  v202 = v295;
  *(v201 + 32) = v295;
  *(v201 + 40) = 0xD000000000000011;
  *(v201 + 48) = 0x800000023E250E40;
  *(v201 + 64) = v197;
  *(v201 + 72) = v203;
  v292 = 0xD000000000000014;
  *(v201 + 80) = 0xD000000000000014;
  *(v201 + 88) = 0x800000023E2597D0;
  v204 = v296;
  *(v201 + 104) = v197;
  *(v201 + 112) = v204;
  v291 = v202;
  v290 = v203;
  v295 = v204;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v205 = [v315 bundleURL];
  sub_23E1FBF9C();

  v206 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v201 + 120) = v207;
  v208 = v293;
  *(v201 + 144) = v313;
  *(v201 + 152) = v208;
  v209 = swift_allocObject();
  *(v209 + 16) = v306;
  *&v296 = v208;
  v210 = MEMORY[0x277D837D0];
  *(v209 + 32) = sub_23E1FDABC();
  *(v201 + 184) = v288;
  *(v201 + 160) = v209;
  v211 = sub_23E1FDABC();
  v212 = sub_23DF3BE9C(v211);
  v213 = v311;
  *(v311 + 56) = v212;
  v214 = swift_allocObject();
  *(v214 + 16) = v308;
  v216 = v290;
  v215 = v291;
  v217 = v302;
  *(v214 + 32) = v291;
  *(v214 + 40) = v217;
  *(v214 + 48) = 0x800000023E259840;
  *(v214 + 64) = v210;
  *(v214 + 72) = v216;
  strcpy((v214 + 80), "WFDateFormat");
  *(v214 + 93) = 0;
  *(v214 + 94) = -5120;
  *(v214 + 104) = v210;
  v218 = v295;
  *(v214 + 112) = v295;
  v294 = v215;
  v293 = v216;
  v295 = v218;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v219 = [v315 bundleURL];
  sub_23E1FBF9C();

  v220 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v214 + 120) = v221;
  v222 = v296;
  *(v214 + 144) = v313;
  *(v214 + 152) = v222;
  v223 = swift_allocObject();
  *(v223 + 16) = v306;
  v224 = MEMORY[0x277D837D0];
  *(v223 + 32) = sub_23E1FDABC();
  *(v214 + 184) = v288;
  *(v214 + 160) = v223;
  v225 = sub_23E1FDABC();
  *(v213 + 64) = sub_23DF3BE9C(v225);
  v226 = swift_allocObject();
  *(v226 + 16) = xmmword_23E224710;
  v227 = v292;
  *(v226 + 32) = v294;
  *(v226 + 40) = v227;
  *(v226 + 48) = 0x800000023E250150;
  v228 = v293;
  *(v226 + 64) = v224;
  *(v226 + 72) = v228;
  *(v226 + 80) = 0x657461444657;
  *(v226 + 88) = 0xE600000000000000;
  v229 = v295;
  *(v226 + 104) = v224;
  *(v226 + 112) = v229;
  sub_23E1FDCBC();
  v292 = v230;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v231 = v315;
  v232 = [v315 bundleURL];
  sub_23E1FBF9C();

  v233 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v226 + 120) = v234;
  v235 = *MEMORY[0x277D7CEA8];
  v236 = v313;
  *(v226 + 144) = v313;
  *(v226 + 152) = v235;
  v237 = v235;
  sub_23E1FDCBC();
  v292 = v238;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v239 = [v231 bundleURL];
  sub_23E1FBF9C();

  v240 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v226 + 160) = v241;
  v242 = *MEMORY[0x277D7CEC8];
  *(v226 + 184) = v236;
  *(v226 + 192) = v242;
  v243 = v242;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v244 = [v231 bundleURL];
  sub_23E1FBF9C();

  v245 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v246 = v313;
  *(v226 + 224) = v313;
  *(v226 + 200) = v247;
  v248 = sub_23E1FDABC();
  v249 = sub_23DF3BE9C(v248);
  *(v311 + 72) = v249;
  v250 = swift_allocObject();
  *(v250 + 16) = v308;
  *(v250 + 32) = v294;
  *(v250 + 40) = 0xD000000000000017;
  *(v250 + 48) = 0x800000023E259910;
  v251 = MEMORY[0x277D837D0];
  v252 = v293;
  *(v250 + 64) = MEMORY[0x277D837D0];
  *(v250 + 72) = v252;
  *(v250 + 80) = 0x656C61636F4C4657;
  *(v250 + 88) = 0xE800000000000000;
  v253 = v295;
  *(v250 + 104) = v251;
  *(v250 + 112) = v253;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v254 = [v315 bundleURL];
  sub_23E1FBF9C();

  v255 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v250 + 120) = v256;
  v257 = v296;
  *(v250 + 144) = v246;
  *(v250 + 152) = v257;
  v258 = swift_allocObject();
  *(v258 + 16) = v306;
  v259 = swift_allocObject();
  *(v259 + 16) = v308;
  strcpy((v259 + 32), "WFParameterKey");
  *(v259 + 47) = -18;
  *(v259 + 48) = 0xD000000000000011;
  *(v259 + 56) = v301;
  v260 = MEMORY[0x277D837D0];
  *(v259 + 72) = MEMORY[0x277D837D0];
  *(v259 + 80) = 0xD000000000000013;
  *(v259 + 88) = 0x800000023E24DCC0;
  *(v259 + 96) = 15649;
  *(v259 + 104) = 0xE200000000000000;
  *(v259 + 120) = v260;
  *(v259 + 128) = 0xD000000000000011;
  *(v259 + 136) = v300;
  *(v259 + 144) = &unk_285025538;
  *(v259 + 168) = v304;
  *(v259 + 176) = 0x72756F7365524657;
  *(v259 + 216) = v260;
  *(v259 + 184) = 0xEF7373616C436563;
  v261 = v298;
  *(v259 + 192) = v302;
  *(v259 + 200) = v261;
  *(v258 + 32) = sub_23E1FDABC();
  *(v250 + 184) = v297;
  *(v250 + 160) = v258;
  v262 = sub_23E1FDABC();
  v263 = sub_23DF3BE9C(v262);
  v264 = v311;
  *(v311 + 80) = v263;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v266 = v303;
  v303[50] = v264;
  v267 = *MEMORY[0x277D7CB98];
  v266[53] = v265;
  v266[54] = v267;
  v268 = v267;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v269 = [v315 bundleURL];
  sub_23E1FBF9C();

  v270 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v272 = v271;
  v273 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v274 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v275 = MEMORY[0x277D7CB78];
  v266[55] = v273;
  v276 = *v275;
  v266[58] = v274;
  v266[59] = v276;
  v266[63] = MEMORY[0x277D839B0];
  *(v266 + 480) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v277 = v276;
  v278 = sub_23E1FDABC();
  return sub_23DF3BF9C(v278);
}

id sub_23DF25E1C()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v116 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v118 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E22A530;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x800000023E2599E0;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v131 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v130 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = v17;
  v19 = sub_23E1FDABC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  *&v128 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_23E222340;
  v23 = *MEMORY[0x277D7CC30];
  *(v22 + 32) = *MEMORY[0x277D7CC30];
  v24 = v21;
  v25 = v23;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v26 = [v131 bundleURL];
  v129 = v3;
  sub_23E1FBF9C();

  v27 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v22 + 64) = v130;
  *(v22 + 40) = v28;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v29 = sub_23E1FDABC();
  v30 = v128;
  *(inited + 160) = sub_23DF3BE54(v29);
  v31 = *MEMORY[0x277D7CB50];
  *(inited + 184) = v30;
  *(inited + 192) = v31;
  strcpy((inited + 200), "TranslateIcon");
  *(inited + 214) = -4864;
  v32 = *MEMORY[0x277D7CCC0];
  v33 = MEMORY[0x277D837D0];
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 232) = v32;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v34 = swift_initStackObject();
  v128 = xmmword_23E222350;
  *(v34 + 16) = xmmword_23E222350;
  *(v34 + 32) = 0x656C7069746C754DLL;
  *(v34 + 40) = 0xE800000000000000;
  v35 = MEMORY[0x277D839B0];
  *(v34 + 48) = 1;
  *(v34 + 72) = v35;
  strcpy((v34 + 80), "ParameterKey");
  *(v34 + 93) = 0;
  *(v34 + 94) = -5120;
  *(v34 + 96) = 0x547475706E494657;
  *(v34 + 104) = 0xEB00000000747865;
  *(v34 + 120) = v33;
  *(v34 + 128) = 0x6465726975716552;
  *(v34 + 136) = 0xE800000000000000;
  *(v34 + 144) = 1;
  *(v34 + 168) = v35;
  *(v34 + 176) = 0x7365707954;
  v36 = v35;
  *(v34 + 184) = 0xE500000000000000;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v34 + 216) = v125;
  *(v34 + 192) = &unk_2850255B8;
  v37 = v31;
  v38 = v32;
  v39 = sub_23E1FDABC();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v127 = v40;
  *(inited + 240) = v39;
  v41 = *MEMORY[0x277D7CCC8];
  *(inited + 264) = v40;
  *(inited + 272) = v41;
  *(inited + 280) = 0;
  v42 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v36;
  *(inited + 312) = v42;
  v43 = v41;
  v44 = v42;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v45 = v131;
  v46 = [v131 bundleURL];
  sub_23E1FBF9C();

  v47 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 320) = v48;
  v49 = *MEMORY[0x277D7CDD0];
  v50 = v130;
  *(inited + 344) = v130;
  *(inited + 352) = v49;
  v51 = swift_allocObject();
  *(v51 + 16) = v128;
  *(v51 + 32) = 0x75736F6C63736944;
  *(v51 + 40) = 0xEF6C6576654C6572;
  *(v51 + 48) = 0x63696C627550;
  *(v51 + 56) = 0xE600000000000000;
  *(v51 + 72) = MEMORY[0x277D837D0];
  *(v51 + 80) = 0x656C7069746C754DLL;
  *(v51 + 88) = 0xE800000000000000;
  *(v51 + 96) = 1;
  *(v51 + 120) = MEMORY[0x277D839B0];
  *(v51 + 128) = 0x614E74757074754FLL;
  *(v51 + 136) = 0xEA0000000000656DLL;
  v52 = v49;
  v126 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v53 = [v45 bundleURL];
  sub_23E1FBF9C();

  v54 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v51 + 144) = v55;
  *(v51 + 168) = v50;
  *(v51 + 176) = 0x7365707954;
  *(v51 + 216) = v125;
  *(v51 + 184) = 0xE500000000000000;
  *(v51 + 192) = &unk_2850255E8;
  v56 = MEMORY[0x277D837D0];
  *(inited + 360) = sub_23E1FDABC();
  v57 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v127;
  *(inited + 392) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_23E224C00;
  v126 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v58 = swift_allocObject();
  *(v58 + 16) = v128;
  v59 = *MEMORY[0x277D7CDF8];
  v117 = 0x800000023E259AE0;
  *(v58 + 32) = v59;
  *(v58 + 40) = 0xD000000000000026;
  *(v58 + 48) = 0x800000023E259AE0;
  v60 = *MEMORY[0x277D7CE70];
  *(v58 + 64) = v56;
  *(v58 + 72) = v60;
  *(v58 + 80) = 0xD000000000000016;
  *(v58 + 88) = 0x800000023E259B10;
  v61 = *MEMORY[0x277D7CE80];
  *(v58 + 104) = v56;
  *(v58 + 112) = v61;
  v62 = v59;
  v63 = v60;
  v64 = v61;
  v65 = v62;
  v66 = v63;
  v67 = v64;
  v123 = v65;
  v122 = v66;
  v121 = v67;
  v68 = v57;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v69 = [v131 bundleURL];
  sub_23E1FBF9C();

  v70 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v58 + 144) = v130;
  *(v58 + 120) = v71;
  *(v58 + 152) = sub_23E1FDBDC();
  *(v58 + 184) = MEMORY[0x277D839B0];
  *(v58 + 160) = 1;
  _s3__C3KeyVMa_0(0);
  v120 = v72;
  v119 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v73 = sub_23E1FDABC();
  v74 = sub_23DF3BE9C(v73);
  *(v127 + 32) = v74;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_23E222380;
  *(v75 + 32) = v123;
  *(v75 + 40) = 0xD000000000000026;
  *(v75 + 48) = v117;
  v76 = MEMORY[0x277D837D0];
  v77 = v122;
  *(v75 + 64) = MEMORY[0x277D837D0];
  *(v75 + 72) = v77;
  *(v75 + 80) = 0xD000000000000012;
  *(v75 + 88) = 0x800000023E259B80;
  v78 = v121;
  *(v75 + 104) = v76;
  *(v75 + 112) = v78;
  v117 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v79 = v131;
  v80 = [v131 bundleURL];
  sub_23E1FBF9C();

  v81 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v75 + 144) = v130;
  *(v75 + 120) = v82;
  v83 = sub_23E1FDABC();
  v84 = sub_23DF3BE9C(v83);
  *(v127 + 40) = v84;
  v85 = swift_allocObject();
  *(v85 + 16) = v128;
  *(v85 + 32) = v123;
  *(v85 + 40) = 0xD000000000000014;
  *(v85 + 48) = 0x800000023E24EAF0;
  v86 = MEMORY[0x277D837D0];
  v87 = v122;
  *(v85 + 64) = MEMORY[0x277D837D0];
  *(v85 + 72) = v87;
  *(v85 + 80) = 0x547475706E494657;
  *(v85 + 88) = 0xEB00000000747865;
  v88 = v121;
  *(v85 + 104) = v86;
  *(v85 + 112) = v88;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v89 = [v79 bundleURL];
  sub_23E1FBF9C();

  v90 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v91 = MEMORY[0x277D7CE98];
  *(v85 + 120) = v92;
  v93 = *v91;
  *(v85 + 144) = v130;
  *(v85 + 152) = v93;
  *(v85 + 184) = MEMORY[0x277D839B0];
  *(v85 + 160) = 1;
  v94 = v93;
  v95 = sub_23E1FDABC();
  v96 = sub_23DF3BE9C(v95);
  v97 = v127;
  *(v127 + 48) = v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 400) = v97;
  v99 = *MEMORY[0x277D7CB98];
  *(inited + 424) = v98;
  *(inited + 432) = v99;
  v100 = v99;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v101 = [v131 bundleURL];
  sub_23E1FBF9C();

  v102 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v104 = v103;
  v105 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v106 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 440) = v105;
  v107 = *MEMORY[0x277D7CBB0];
  *(inited + 464) = v106;
  *(inited + 472) = v107;
  *(inited + 480) = &unk_285025618;
  v108 = *MEMORY[0x277D7CF20];
  v109 = v125;
  *(inited + 504) = v125;
  *(inited + 512) = v108;
  *(inited + 544) = v109;
  *(inited + 520) = &unk_285025648;
  v110 = *MEMORY[0x277D7CB78];
  *(inited + 552) = *MEMORY[0x277D7CB78];
  *(inited + 584) = MEMORY[0x277D839B0];
  *(inited + 560) = 0;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v111 = v107;
  v112 = v108;
  v113 = v110;
  v114 = sub_23E1FDABC();
  return sub_23DF3BF9C(v114);
}

id sub_23DF26E08()
{
  v65 = sub_23E1FC77C();
  v62 = *(v65 - 8);
  v0 = *(v62 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = (&v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_23E1FBFBC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E1FC1DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x800000023E24E550;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v67 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v66 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v60 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222340;
  v21 = *MEMORY[0x277D7CC30];
  *(v20 + 32) = *MEMORY[0x277D7CC30];
  v22 = v19;
  v23 = v21;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v24 = [v67 bundleURL];
  v61 = v5;
  sub_23E1FBF9C();

  v25 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v20 + 64) = v66;
  *(v20 + 40) = v26;
  type metadata accessor for DescriptionKey(0);
  sub_23DE39F84(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v27 = sub_23E1FDABC();
  v28 = v60;
  *(inited + 120) = sub_23DF3BE54(v27);
  v29 = *MEMORY[0x277D7CB28];
  *(inited + 144) = v28;
  *(inited + 152) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 160) = &unk_285025678;
  v31 = *MEMORY[0x277D7CB48];
  *(inited + 184) = v30;
  *(inited + 192) = v31;
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v32 = *MEMORY[0x277D7CB60];
  v33 = MEMORY[0x277D837D0];
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 232) = v32;
  *(inited + 240) = 0xD000000000000017;
  *(inited + 248) = 0x800000023E259D20;
  v34 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v33;
  *(inited + 272) = v34;
  v35 = v29;
  v36 = v31;
  v37 = v32;
  v38 = v34;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v39 = v67;
  v40 = [v67 bundleURL];
  sub_23E1FBF9C();

  v41 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 280) = v42;
  v43 = *MEMORY[0x277D7CB98];
  *(inited + 304) = v66;
  *(inited + 312) = v43;
  v44 = v43;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v45 = [v39 bundleURL];
  sub_23E1FBF9C();

  v46 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v48 = v47;
  v49 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v50 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 320) = v49;
  v51 = *MEMORY[0x277D7CF20];
  *(inited + 344) = v50;
  *(inited + 352) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_23E2235B0;
  v54 = v64;
  v53 = v65;
  *v64 = 2;
  (*(v62 + 104))(v54, *MEMORY[0x277D7BEE0], v53);
  v55 = objc_allocWithZone(sub_23E1FC79C());
  v56 = v51;
  *(v52 + 32) = sub_23E1FC78C();
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(inited + 360) = v52;
  type metadata accessor for Key(0);
  sub_23DE39F84(&qword_280DAEDE0, type metadata accessor for Key);
  v57 = sub_23E1FDABC();
  return sub_23DF3BF9C(v57);
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_23E1FDCBC();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_23E1FDCBC();
    }

LABEL_9:
    __break(1u);
    return sub_23E1FDCBC();
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v1 = qword_280DAE278;

  return v1;
}

id sub_23DF27750()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280DAE278 = result;
  return result;
}

id sub_23DF27800()
{
  v277 = sub_23E1FD89C();
  v281 = *(v277 - 8);
  v0 = *(v281 + 64);
  MEMORY[0x28223BE20](v277);
  v276 = &v246 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_23E1FC77C();
  v279 = *(v273 - 1);
  v2 = *(v279 + 8);
  MEMORY[0x28223BE20](v273);
  v254 = &v246 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FBFBC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v246 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E1FC1DC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v246 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224C40;
  v13 = *MEMORY[0x277D7CB18];
  v14 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  v264 = 0xD000000000000014;
  *(inited + 48) = 0x800000023E259E40;
  v15 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v14;
  *(inited + 72) = v15;
  v16 = inited;
  v17 = v13;
  v18 = v15;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v290 = qword_280DAE278;
  v19 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v20 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v22 = v21;
  v23 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v288 = v23;
  v16[10] = v22;
  v24 = *MEMORY[0x277D7CC18];
  v16[13] = v23;
  v16[14] = v24;
  v287 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v25 = swift_initStackObject();
  v250 = xmmword_23E222340;
  *(v25 + 16) = xmmword_23E222340;
  v26 = v7;
  v27 = *MEMORY[0x277D7CC30];
  *(v25 + 32) = *MEMORY[0x277D7CC30];
  v28 = v24;
  v29 = v27;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v30 = [v290 bundleURL];
  v289 = v26;
  sub_23E1FBF9C();

  v31 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v25 + 64) = v288;
  *(v25 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v33 = sub_23E1FDABC();
  v34 = v287;
  v16[15] = sub_23DF3BE54(v33);
  v35 = *MEMORY[0x277D7CB28];
  v16[18] = v34;
  v16[19] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v16[20] = &unk_2850256A8;
  v37 = *MEMORY[0x277D7CB50];
  v16[23] = v36;
  v16[24] = v37;
  v38 = v36;
  v270 = v36;
  v16[25] = 0x657061706C6C6157;
  v16[26] = 0xE900000000000072;
  v39 = *MEMORY[0x277D7CCC0];
  v40 = MEMORY[0x277D837D0];
  v16[28] = MEMORY[0x277D837D0];
  v16[29] = v39;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_23E222350;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x277D839B0];
  *(v41 + 48) = 0;
  *(v41 + 72) = v42;
  strcpy((v41 + 80), "ParameterKey");
  *(v41 + 93) = 0;
  *(v41 + 94) = -5120;
  *(v41 + 96) = 0x7475706E494657;
  *(v41 + 104) = 0xE700000000000000;
  *(v41 + 120) = v40;
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 1;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  *(v41 + 216) = v38;
  *(v41 + 184) = 0xE500000000000000;
  *(v41 + 192) = &unk_2850256D8;
  v43 = v35;
  v44 = v37;
  v45 = v39;
  v46 = sub_23E1FDABC();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v274 = v47;
  v16[30] = v46;
  v48 = *MEMORY[0x277D7CB90];
  v16[33] = v47;
  v16[34] = v48;
  v49 = v48;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v50 = v11;
  sub_23E1FC14C();
  v51 = v290;
  v52 = [v290 bundleURL];
  sub_23E1FBF9C();

  v53 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v272 = v16;
  v16[35] = v54;
  v55 = *MEMORY[0x277D7CDD0];
  v56 = v288;
  v16[38] = v288;
  v16[39] = v55;
  v57 = swift_initStackObject();
  v280 = xmmword_23E222380;
  *(v57 + 16) = xmmword_23E222380;
  *(v57 + 32) = 0x656C7069746C754DLL;
  *(v57 + 40) = 0xE800000000000000;
  *(v57 + 48) = 0;
  *(v57 + 72) = MEMORY[0x277D839B0];
  *(v57 + 80) = 0x614E74757074754FLL;
  *(v57 + 88) = 0xEA0000000000656DLL;
  v58 = v55;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v278 = v50;
  sub_23E1FC14C();
  v59 = [v51 bundleURL];
  sub_23E1FBF9C();

  v60 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v57 + 96) = v61;
  *(v57 + 120) = v56;
  *(v57 + 128) = 0x7365707954;
  *(v57 + 168) = v270;
  *(v57 + 136) = 0xE500000000000000;
  *(v57 + 144) = &unk_285025718;
  v62 = MEMORY[0x277D837D0];
  v63 = sub_23E1FDABC();
  v64 = v272;
  v272[40] = v63;
  v65 = *MEMORY[0x277D7CBA0];
  v64[43] = v274;
  v64[44] = v65;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v286 = swift_allocObject();
  *(v286 + 16) = xmmword_23E228180;
  v287 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v66 = swift_allocObject();
  *(v66 + 16) = v280;
  v67 = *MEMORY[0x277D7CDF8];
  v265 = 0xD000000000000019;
  *(v66 + 32) = v67;
  *(v66 + 40) = 0xD000000000000019;
  *(v66 + 48) = 0x800000023E24F180;
  v68 = *MEMORY[0x277D7CE70];
  *(v66 + 64) = v62;
  *(v66 + 72) = v68;
  *(v66 + 80) = 0x7475706E494657;
  *(v66 + 88) = 0xE700000000000000;
  v69 = *MEMORY[0x277D7CE80];
  *(v66 + 104) = v62;
  *(v66 + 112) = v69;
  v70 = v67;
  v71 = v68;
  v72 = v69;
  v73 = v70;
  v74 = v71;
  v75 = v72;
  v76 = v73;
  *&v267 = v74;
  v268 = v75;
  v77 = v65;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v78 = [v290 bundleURL];
  sub_23E1FBF9C();

  v79 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v66 + 144) = v288;
  *(v66 + 120) = v80;
  _s3__C3KeyVMa_0(0);
  v284 = v81;
  v282 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v82 = sub_23E1FDABC();
  v83 = sub_23DF3BE9C(v82);
  *(v286 + 32) = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_23E224700;
  v85 = *MEMORY[0x277D7CDE0];
  *(v84 + 32) = *MEMORY[0x277D7CDE0];
  *(v84 + 40) = 1;
  *(v84 + 64) = MEMORY[0x277D839B0];
  *(v84 + 72) = v76;
  v271 = 0xD000000000000016;
  v86 = MEMORY[0x277D7CE00];
  *(v84 + 80) = 0xD000000000000016;
  *(v84 + 88) = 0x800000023E24FDA0;
  v87 = *v86;
  *(v84 + 104) = MEMORY[0x277D837D0];
  *(v84 + 112) = v87;
  *(v84 + 120) = &unk_285025748;
  v88 = *MEMORY[0x277D7CE38];
  *(v84 + 144) = v270;
  *(v84 + 152) = v88;
  v266 = swift_allocObject();
  *(v266 + 16) = xmmword_23E2246F0;
  v89 = v87;
  v270 = v76;
  *&v269 = v89;
  v90 = v85;
  v91 = v88;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v92 = v290;
  v93 = [v290 bundleURL];
  sub_23E1FBF9C();

  v94 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v95 = v266;
  *(v266 + 32) = v96;
  v263 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v97 = [v92 bundleURL];
  sub_23E1FBF9C();

  v98 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v95 + 40) = v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v84 + 160) = v95;
  v101 = v267;
  *(v84 + 184) = v100;
  *(v84 + 192) = v101;
  *(v84 + 200) = 0xD000000000000013;
  *(v84 + 208) = 0x800000023E24DCA0;
  v102 = v268;
  *(v84 + 224) = MEMORY[0x277D837D0];
  *(v84 + 232) = v102;
  v103 = v101;
  v268 = v102;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v104 = [v92 bundleURL];
  sub_23E1FBF9C();

  v105 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v84 + 240) = v106;
  v107 = *MEMORY[0x277D7CEE8];
  *(v84 + 264) = v288;
  *(v84 + 272) = v107;
  v108 = swift_allocObject();
  v258 = xmmword_23E2235B0;
  *(v108 + 16) = xmmword_23E2235B0;
  v109 = v254;
  *v254 = 2;
  LODWORD(v262) = *MEMORY[0x277D7BED8];
  v110 = *(v279 + 13);
  v279 = (v279 + 104);
  v256 = v110;
  v110(v109);
  v255 = sub_23E1FC79C();
  v111 = objc_allocWithZone(v255);
  v261 = v107;
  *(v108 + 32) = sub_23E1FC78C();
  *(v84 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(v84 + 280) = v108;
  v112 = sub_23E1FDABC();
  v113 = sub_23DF3BE9C(v112);
  *(v286 + 40) = v113;
  v114 = swift_allocObject();
  v267 = xmmword_23E224710;
  *(v114 + 16) = xmmword_23E224710;
  v266 = 0x800000023E250E40;
  v115 = v270;
  *(v114 + 32) = v270;
  *(v114 + 40) = 0xD000000000000011;
  *(v114 + 48) = 0x800000023E250E40;
  v116 = MEMORY[0x277D837D0];
  v118 = v268;
  v117 = v269;
  *(v114 + 64) = MEMORY[0x277D837D0];
  *(v114 + 72) = v117;
  *(v114 + 80) = 1;
  *(v114 + 104) = MEMORY[0x277D839B0];
  *(v114 + 112) = v103;
  v263 = 0x800000023E25A010;
  *(v114 + 120) = v271;
  *(v114 + 128) = 0x800000023E25A010;
  *(v114 + 144) = v116;
  *(v114 + 152) = v118;
  v253 = v115;
  v257 = v103;
  v259 = v118;
  v249 = v117;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v119 = [v290 bundleURL];
  sub_23E1FBF9C();

  v120 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v114 + 160) = v121;
  v122 = v261;
  *(v114 + 184) = v288;
  *(v114 + 192) = v122;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v123 = swift_allocObject();
  v269 = xmmword_23E222370;
  *(v123 + 16) = xmmword_23E222370;
  *v109 = 2;
  (v256)(v109, v262, v273);
  v124 = v255;
  v125 = objc_allocWithZone(v255);
  v247 = v122;
  v126 = sub_23E1FC78C();
  *(v123 + 56) = v124;
  *(v123 + 32) = v126;
  v260 = 0x800000023E24D710;
  v261 = 0x800000023E24D730;
  v127 = MEMORY[0x277D837D0];
  v128 = sub_23E1FDABC();
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(v123 + 88) = v262;
  *(v123 + 64) = v128;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  *(v114 + 224) = v270;
  *(v114 + 200) = v123;
  v129 = sub_23E1FDABC();
  v130 = sub_23DF3BE9C(v129);
  *(v286 + 48) = v130;
  v131 = swift_allocObject();
  *(v131 + 16) = v267;
  v132 = v253;
  *(v131 + 32) = v253;
  *(v131 + 40) = 0xD000000000000011;
  *(v131 + 48) = v266;
  v133 = v127;
  *(v131 + 64) = v127;
  v134 = v249;
  *(v131 + 72) = v249;
  *(v131 + 80) = 0;
  v135 = v257;
  *(v131 + 104) = MEMORY[0x277D839B0];
  *(v131 + 112) = v135;
  *(v131 + 120) = 0xD00000000000001ALL;
  *(v131 + 128) = 0x800000023E25A070;
  v136 = v259;
  *(v131 + 144) = v133;
  *(v131 + 152) = v136;
  v248 = v132;
  v252 = v135;
  v253 = v136;
  v257 = v134;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v137 = [v290 bundleURL];
  sub_23E1FBF9C();

  v138 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v131 + 160) = v139;
  v140 = v247;
  *(v131 + 184) = v288;
  *(v131 + 192) = v140;
  v141 = swift_allocObject();
  *(v141 + 16) = v269;
  v142 = swift_allocObject();
  *(v142 + 16) = v280;
  strcpy((v142 + 32), "WFParameterKey");
  *(v142 + 47) = -18;
  v143 = v263;
  *(v142 + 48) = v271;
  *(v142 + 56) = v143;
  v144 = MEMORY[0x277D837D0];
  *(v142 + 72) = MEMORY[0x277D837D0];
  *(v142 + 80) = 0xD000000000000010;
  v249 = 0xD000000000000010;
  *(v142 + 88) = v260;
  *(v142 + 96) = 0;
  v145 = MEMORY[0x277D839B0];
  *(v142 + 120) = MEMORY[0x277D839B0];
  *(v142 + 128) = 0x72756F7365524657;
  *(v142 + 168) = v144;
  v259 = 0xD00000000000001BLL;
  *(v142 + 136) = 0xEF7373616C436563;
  *(v142 + 144) = 0xD00000000000001BLL;
  *(v142 + 152) = v261;
  v247 = v140;
  v146 = sub_23E1FDABC();
  v147 = v273;
  *(v141 + 56) = v274;
  *(v141 + 32) = v146;
  *v109 = 1;
  (v256)(v109, *MEMORY[0x277D7BEE0], v147);
  v148 = v255;
  v149 = objc_allocWithZone(v255);
  v150 = sub_23E1FC78C();
  *(v141 + 88) = v148;
  *(v141 + 64) = v150;
  *(v131 + 224) = v270;
  *(v131 + 200) = v141;
  v151 = sub_23E1FDABC();
  v152 = sub_23DF3BE9C(v151);
  *(v286 + 56) = v152;
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_23E224C10;
  *(v153 + 64) = v144;
  v154 = v248;
  *(v153 + 32) = v248;
  *(v153 + 40) = 0xD000000000000017;
  *(v153 + 48) = 0x800000023E252880;
  v279 = v154;
  *(v153 + 72) = sub_23E1FDBDC();
  *(v153 + 80) = 1;
  v155 = v252;
  v156 = v253;
  *(v153 + 104) = v145;
  *(v153 + 112) = v155;
  *(v153 + 120) = 0xD000000000000010;
  *(v153 + 128) = 0x800000023E25A0E0;
  *(v153 + 144) = v144;
  *(v153 + 152) = v156;
  v256 = v155;
  v273 = v156;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v157 = v290;
  v158 = [v290 bundleURL];
  sub_23E1FBF9C();

  v159 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v153 + 160) = v160;
  v161 = v247;
  *(v153 + 184) = v288;
  *(v153 + 192) = v161;
  v162 = swift_allocObject();
  *(v162 + 16) = v258;
  LODWORD(v255) = *MEMORY[0x277D732F8];
  v163 = *(v281 + 104);
  v281 += 104;
  v254 = v163;
  (v163)(v276);
  v253 = sub_23E1FC85C();
  v164 = objc_allocWithZone(v253);
  v252 = v161;
  *(v162 + 32) = sub_23E1FC84C();
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C480, &qword_23E224258);
  *(v153 + 224) = v248;
  *(v153 + 200) = v162;
  v165 = sub_23E1FDBDC();
  v166 = MEMORY[0x277D837D0];
  *(v153 + 264) = MEMORY[0x277D837D0];
  *(v153 + 232) = v165;
  strcpy((v153 + 240), "EligiblePhotos");
  *(v153 + 255) = -18;
  v167 = sub_23E1FDABC();
  v168 = sub_23DF3BE9C(v167);
  *(v286 + 64) = v168;
  v169 = swift_allocObject();
  *(v169 + 16) = v267;
  *(v169 + 32) = v279;
  *(v169 + 40) = 0xD000000000000011;
  *(v169 + 48) = v266;
  v170 = v257;
  *(v169 + 64) = v166;
  *(v169 + 72) = v170;
  *(v169 + 80) = 1;
  v171 = v256;
  *(v169 + 104) = MEMORY[0x277D839B0];
  *(v169 + 112) = v171;
  *(v169 + 120) = v264;
  *(v169 + 128) = 0x800000023E25A120;
  v172 = v273;
  *(v169 + 144) = v166;
  *(v169 + 152) = v172;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v173 = [v157 bundleURL];
  sub_23E1FBF9C();

  v174 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v169 + 160) = v175;
  v176 = v252;
  *(v169 + 184) = v288;
  *(v169 + 192) = v176;
  v177 = swift_allocObject();
  *(v177 + 16) = v258;
  (v254)(v276, v255, v277);
  v178 = objc_allocWithZone(v253);
  *(v177 + 32) = sub_23E1FC84C();
  *(v169 + 224) = v248;
  *(v169 + 200) = v177;
  v179 = sub_23E1FDABC();
  v180 = sub_23DF3BE9C(v179);
  *(v286 + 72) = v180;
  v181 = swift_allocObject();
  *(v181 + 16) = v267;
  *(v181 + 32) = v279;
  *(v181 + 40) = 0xD000000000000011;
  v182 = v265;
  *(v181 + 48) = v266;
  v183 = MEMORY[0x277D837D0];
  v184 = v257;
  *(v181 + 64) = MEMORY[0x277D837D0];
  *(v181 + 72) = v184;
  *(v181 + 80) = 1;
  v185 = v256;
  *(v181 + 104) = MEMORY[0x277D839B0];
  *(v181 + 112) = v185;
  *(v181 + 120) = v182;
  *(v181 + 128) = 0x800000023E25A180;
  v186 = v273;
  *(v181 + 144) = v183;
  *(v181 + 152) = v186;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v187 = [v290 bundleURL];
  sub_23E1FBF9C();

  v188 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v181 + 160) = v189;
  v190 = v252;
  *(v181 + 184) = v288;
  *(v181 + 192) = v190;
  v191 = swift_allocObject();
  *(v191 + 16) = v269;
  (v254)(v276, v255, v277);
  v192 = v253;
  v193 = objc_allocWithZone(v253);
  v194 = sub_23E1FC84C();
  *(v191 + 56) = v192;
  *(v191 + 32) = v194;
  v195 = sub_23E1FDABC();
  *(v191 + 88) = v262;
  *(v191 + 64) = v195;
  *(v181 + 224) = v270;
  *(v181 + 200) = v191;
  v196 = sub_23E1FDABC();
  v197 = sub_23DF3BE9C(v196);
  v198 = v286;
  *(v286 + 80) = v197;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v200 = v272;
  v272[45] = v198;
  v201 = *MEMORY[0x277D7CB98];
  v200[48] = v199;
  v200[49] = v201;
  v288 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v202 = swift_allocObject();
  *(v202 + 16) = xmmword_23E224C00;
  v203 = v201;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v204 = v290;
  v205 = [v290 bundleURL];
  sub_23E1FBF9C();

  v206 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v208 = v207;
  v209 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v202 + 32) = sub_23DF34C40(0x7475706E494657, 0xE700000000000000, v208);
  v287 = "Set wallpaper to ${WFInput}";
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v210 = [v204 bundleURL];
  sub_23E1FBF9C();

  v211 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v213 = v212;
  v214 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v202 + 40) = sub_23DF34C40(v259, v287 | 0x8000000000000000, v213);
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v215 = [v290 bundleURL];
  sub_23E1FBF9C();

  v216 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v218 = v217;
  v219 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v202 + 48) = sub_23DF34C40(0xD00000000000002CLL, 0x800000023E25A260, v218);
  v220 = v288;
  v221 = sub_23DF333E0();
  v222 = v272;
  v272[50] = v221;
  v223 = *MEMORY[0x277D7CCA8];
  v222[53] = v220;
  v222[54] = v223;
  v224 = v223;
  v225 = MEMORY[0x277D837D0];
  v226 = sub_23E1FDABC();
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA30, &unk_23E225EB0);
  v222[55] = v226;
  v228 = *MEMORY[0x277D7CF20];
  v222[58] = v227;
  v222[59] = v228;
  v229 = swift_allocObject();
  *(v229 + 16) = v280;
  *(v229 + 32) = 0xD000000000000025;
  *(v229 + 40) = 0x800000023E252930;
  *(v229 + 88) = v225;
  *(v229 + 56) = v225;
  *(v229 + 64) = 0xD000000000000015;
  v230 = v225;
  *(v229 + 72) = 0x800000023E24D8B0;
  v231 = swift_allocObject();
  *(v231 + 16) = v269;
  *(v231 + 32) = 0xD000000000000011;
  *(v231 + 40) = 0x800000023E254400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v232 = swift_allocObject();
  *(v232 + 16) = v250;
  v233 = swift_allocObject();
  *(v233 + 16) = v280;
  strcpy((v233 + 32), "WFParameterKey");
  *(v233 + 47) = -18;
  v234 = v263;
  *(v233 + 48) = v271;
  *(v233 + 56) = v234;
  v235 = v249;
  *(v233 + 72) = v230;
  *(v233 + 80) = v235;
  *(v233 + 88) = v260;
  *(v233 + 96) = 1;
  *(v233 + 120) = MEMORY[0x277D839B0];
  *(v233 + 128) = 0x72756F7365524657;
  *(v233 + 168) = v230;
  v236 = v259;
  *(v233 + 136) = 0xEF7373616C436563;
  *(v233 + 144) = v236;
  *(v233 + 152) = v261;
  v237 = v228;
  *(v232 + 32) = sub_23E1FDABC();
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v231 + 48) = v232;
  *(v231 + 72) = v238;
  *(v231 + 80) = 0x72756F7365524657;
  *(v231 + 120) = v230;
  v239 = v265;
  *(v231 + 88) = 0xEF7373616C436563;
  *(v231 + 96) = v239;
  *(v231 + 104) = 0x800000023E24D560;
  v240 = sub_23E1FDABC();
  *(v229 + 120) = v274;
  *(v229 + 96) = v240;
  v222[60] = v229;
  v241 = *MEMORY[0x277D7D028];
  v222[63] = v270;
  v222[64] = v241;
  v242 = v241;
  v243 = sub_23E1FDABC();
  v222[68] = v262;
  v222[65] = v243;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v244 = sub_23E1FDABC();
  return sub_23DF3BF9C(v244);
}

id sub_23DF29978()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v135 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v142 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E225EA0;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  strcpy((inited + 40), "WFDateAction");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = inited;
  v11 = v7;
  v12 = v9;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v152 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v16 = v15;
  v17 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v151 = v17;
  v10[10] = v16;
  v18 = *MEMORY[0x277D7CC18];
  v10[13] = v17;
  v10[14] = v18;
  v150 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v19 = swift_initStackObject();
  v141 = xmmword_23E222340;
  *(v19 + 16) = xmmword_23E222340;
  v20 = v3;
  v21 = *MEMORY[0x277D7CC30];
  *(v19 + 32) = *MEMORY[0x277D7CC30];
  v22 = v18;
  v23 = v21;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v24 = [v152 bundleURL];
  sub_23E1FBF9C();

  v25 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v19 + 64) = v151;
  *(v19 + 40) = v26;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v27 = sub_23E1FDABC();
  v28 = v150;
  v10[15] = sub_23DF3BE54(v27);
  v29 = *MEMORY[0x277D7CB48];
  v10[18] = v28;
  v10[19] = v29;
  v10[20] = 1953392980;
  v10[21] = 0xE400000000000000;
  v30 = *MEMORY[0x277D7CB60];
  v31 = MEMORY[0x277D837D0];
  v10[23] = MEMORY[0x277D837D0];
  v10[24] = v30;
  v10[25] = 0x7261646E656C6163;
  v10[26] = 0xE800000000000000;
  v32 = *MEMORY[0x277D7CB58];
  v10[28] = v31;
  v10[29] = v32;
  v10[30] = 6579538;
  v10[31] = 0xE300000000000000;
  v33 = *MEMORY[0x277D7CB90];
  v10[33] = v31;
  v10[34] = v33;
  v34 = v29;
  v35 = v30;
  v36 = v32;
  v37 = v33;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v38 = v152;
  v39 = [v152 bundleURL];
  v149 = v20;
  sub_23E1FBF9C();

  v40 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v10[35] = v41;
  v42 = *MEMORY[0x277D7CDD0];
  v10[38] = v151;
  v10[39] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v43 = swift_initStackObject();
  v146 = xmmword_23E222350;
  *(v43 + 16) = xmmword_23E222350;
  *(v43 + 32) = 0x75736F6C63736944;
  *(v43 + 40) = 0xEF6C6576654C6572;
  *(v43 + 48) = 0x63696C627550;
  *(v43 + 56) = 0xE600000000000000;
  *(v43 + 72) = MEMORY[0x277D837D0];
  *(v43 + 80) = 0x656C7069746C754DLL;
  *(v43 + 88) = 0xE800000000000000;
  v44 = MEMORY[0x277D839B0];
  *(v43 + 96) = 0;
  *(v43 + 120) = v44;
  *(v43 + 128) = 0x614E74757074754FLL;
  *(v43 + 136) = 0xEA0000000000656DLL;
  v45 = v42;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v46 = [v38 bundleURL];
  sub_23E1FBF9C();

  v47 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v43 + 144) = v48;
  *(v43 + 168) = v151;
  *(v43 + 176) = 0x7365707954;
  *(v43 + 184) = 0xE500000000000000;
  *(v43 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v43 + 192) = &unk_285025970;
  v49 = MEMORY[0x277D837D0];
  v50 = sub_23E1FDABC();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v136 = v10;
  v10[40] = v50;
  v52 = *MEMORY[0x277D7CBA0];
  v10[43] = v51;
  v10[44] = v52;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_23E225530;
  v150 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v53 = swift_initStackObject();
  v54 = MEMORY[0x277D7CDF8];
  *(v53 + 16) = v146;
  v55 = *v54;
  v140 = 0xD00000000000001FLL;
  *(v53 + 32) = v55;
  *(v53 + 40) = 0xD00000000000001FLL;
  v56 = MEMORY[0x277D7CE00];
  *(v53 + 48) = 0x800000023E25A3E0;
  v57 = *v56;
  v58 = v49;
  *(v53 + 64) = v49;
  *(v53 + 72) = v57;
  strcpy((v53 + 80), "Current Date");
  *(v53 + 93) = 0;
  *(v53 + 94) = -5120;
  v59 = *MEMORY[0x277D7CE70];
  *(v53 + 104) = v58;
  *(v53 + 112) = v59;
  *(v53 + 120) = 0xD000000000000010;
  *(v53 + 128) = 0x800000023E24DD10;
  v60 = *MEMORY[0x277D7CE80];
  *(v53 + 144) = v58;
  *(v53 + 152) = v60;
  v61 = v55;
  v62 = v59;
  v63 = v60;
  v64 = v61;
  v65 = v62;
  v66 = v63;
  v67 = v57;
  v68 = v64;
  v143 = v65;
  v138 = v66;
  v137 = v67;
  v69 = v52;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v70 = [v152 bundleURL];
  sub_23E1FBF9C();

  v71 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v53 + 184) = v151;
  *(v53 + 160) = v72;
  _s3__C3KeyVMa_0(0);
  v145 = v73;
  *&v146 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v74 = sub_23E1FDABC();
  v75 = sub_23DF3BE9C(v74);
  *(v148 + 32) = v75;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_23E224C10;
  *(v76 + 32) = v68;
  *(v76 + 40) = 0xD000000000000014;
  *(v76 + 48) = 0x800000023E250150;
  v77 = MEMORY[0x277D837D0];
  v78 = v143;
  *(v76 + 64) = MEMORY[0x277D837D0];
  *(v76 + 72) = v78;
  *(v76 + 80) = 0xD000000000000010;
  *(v76 + 88) = 0x800000023E25A420;
  v79 = v138;
  *(v76 + 104) = v77;
  *(v76 + 112) = v79;
  v144 = v68;
  v143 = v78;
  v138 = v79;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v80 = v152;
  v81 = [v152 bundleURL];
  sub_23E1FBF9C();

  v82 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v76 + 120) = v83;
  v84 = *MEMORY[0x277D7CEA8];
  v85 = v151;
  *(v76 + 144) = v151;
  *(v76 + 152) = v84;
  v86 = v84;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v87 = [v80 bundleURL];
  sub_23E1FBF9C();

  v88 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v76 + 160) = v89;
  v90 = *MEMORY[0x277D7CEE8];
  *(v76 + 184) = v85;
  *(v76 + 192) = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E0, &qword_23E224C28);
  v91 = swift_allocObject();
  *(v91 + 16) = v141;
  v92 = v90;
  v93 = MEMORY[0x277D837D0];
  *(v91 + 32) = sub_23E1FDABC();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E8, &unk_23E224C30);
  *(v76 + 200) = v91;
  v95 = *MEMORY[0x277D7CF10];
  *(v76 + 224) = v94;
  *(v76 + 232) = v95;
  *(v76 + 264) = v93;
  *(v76 + 240) = 0x7468676952;
  *(v76 + 248) = 0xE500000000000000;
  v96 = v95;
  v97 = sub_23E1FDABC();
  v98 = sub_23DF3BE9C(v97);
  *(v148 + 40) = v98;
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_23E224710;
  *(v99 + 32) = v144;
  *(v99 + 40) = 0xD000000000000016;
  *(v99 + 48) = 0x800000023E24FDA0;
  v100 = v137;
  *(v99 + 64) = v93;
  *(v99 + 72) = v100;
  *(v99 + 80) = 0x63634F207478654ELL;
  *(v99 + 88) = 0xEF65636E65727275;
  v101 = *MEMORY[0x277D7CE38];
  *(v99 + 104) = v93;
  *(v99 + 112) = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_23E2246F0;
  v103 = v101;
  *&v141 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v104 = v152;
  v105 = [v152 bundleURL];
  sub_23E1FBF9C();

  v106 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v102 + 32) = v107;
  *&v141 = sub_23E1FDCBC();
  v139 = v108;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v109 = [v104 bundleURL];
  sub_23E1FBF9C();

  v110 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v102 + 40) = v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v99 + 120) = v102;
  v113 = v143;
  *(v99 + 144) = v112;
  *(v99 + 152) = v113;
  *(v99 + 160) = 0xD000000000000015;
  *(v99 + 168) = 0x800000023E25A510;
  v114 = v138;
  *(v99 + 184) = MEMORY[0x277D837D0];
  *(v99 + 192) = v114;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v115 = [v152 bundleURL];
  sub_23E1FBF9C();

  v116 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v99 + 224) = v151;
  *(v99 + 200) = v117;
  v118 = sub_23E1FDABC();
  v119 = sub_23DF3BE9C(v118);
  v120 = v148;
  *(v148 + 48) = v119;
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_23E222380;
  v122 = v140;
  *(v121 + 32) = v144;
  *(v121 + 40) = v122;
  *(v121 + 48) = 0x800000023E25A560;
  v123 = MEMORY[0x277D837D0];
  v124 = v143;
  *(v121 + 64) = MEMORY[0x277D837D0];
  *(v121 + 72) = v124;
  *(v121 + 80) = 0xD00000000000001ELL;
  *(v121 + 88) = 0x800000023E25A580;
  *(v121 + 104) = v123;
  *(v121 + 112) = v114;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v125 = [v152 bundleURL];
  sub_23E1FBF9C();

  v126 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v121 + 144) = v151;
  *(v121 + 120) = v127;
  v128 = sub_23E1FDABC();
  *(v120 + 56) = sub_23DF3BE9C(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v130 = v136;
  v136[45] = v120;
  v131 = *MEMORY[0x277D7CB78];
  v130[48] = v129;
  v130[49] = v131;
  v130[53] = MEMORY[0x277D839B0];
  *(v130 + 400) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v132 = v131;
  v133 = sub_23E1FDABC();
  return sub_23DF3BF9C(v133);
}

id sub_23DF2AB78()
{
  v207 = sub_23E1FC77C();
  v205 = *(v207 - 8);
  v0 = *(v205 + 64);
  MEMORY[0x28223BE20](v207);
  v206 = (&v201 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_23E1FBFBC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v201 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E1FC1DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224C40;
  v11 = *MEMORY[0x277D7CB18];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  sub_23DE38DA8(0, &qword_27E32DAD0, off_278C01808);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = v11;
  v14 = NSStringFromClass(ObjCClassFromMetadata);
  v15 = sub_23E1FDC1C();
  v17 = v16;

  v18 = MEMORY[0x277D837D0];
  *(inited + 40) = v15;
  *(inited + 48) = v17;
  v19 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v18;
  *(inited + 72) = v19;
  v20 = v19;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v224 = qword_280DAE278;
  v21 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v22 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v23 = v9;
  sub_23DE477A0();
  v25 = v24;
  v26 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v222 = v26;
  v27 = inited;
  *(inited + 80) = v25;
  v28 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v26;
  *(inited + 112) = v28;
  v29 = v28;
  v30 = sub_23E1FDABC();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v208 = v31;
  *(inited + 120) = v30;
  v32 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v31;
  *(inited + 152) = v32;
  v220 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_23E222370;
  v34 = *MEMORY[0x277D7CC28];
  *(v33 + 32) = *MEMORY[0x277D7CC28];
  v35 = v32;
  v36 = v34;
  v219 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v37 = v224;
  v38 = [v224 bundleURL];
  v223 = v5;
  sub_23E1FBF9C();

  v39 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v33 + 40) = v40;
  v41 = *MEMORY[0x277D7CC30];
  v42 = v222;
  *(v33 + 64) = v222;
  *(v33 + 72) = v41;
  v43 = v41;
  sub_23E1FDCBC();
  v219 = v44;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v45 = [v37 bundleURL];
  sub_23E1FBF9C();

  v46 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v33 + 104) = v42;
  *(v33 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v48 = sub_23E1FDABC();
  v49 = v220;
  *(v27 + 160) = sub_23DF3BE54(v48);
  v50 = *MEMORY[0x277D7CB28];
  *(v27 + 184) = v49;
  *(v27 + 192) = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v218 = v51;
  v52 = MEMORY[0x277D7CCC8];
  *(v27 + 200) = &unk_285025A70;
  v53 = *v52;
  *(v27 + 224) = v51;
  *(v27 + 232) = v53;
  v54 = MEMORY[0x277D839B0];
  *(v27 + 240) = 0;
  v55 = *MEMORY[0x277D7CB90];
  *(v27 + 264) = v54;
  *(v27 + 272) = v55;
  v56 = v50;
  v57 = v53;
  v58 = v55;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v59 = v224;
  v60 = [v224 bundleURL];
  sub_23E1FBF9C();

  v61 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v62 = v27;
  v221 = v27;
  *(v27 + 280) = v63;
  v64 = *MEMORY[0x277D7CDD0];
  v65 = v222;
  *(v62 + 304) = v222;
  *(v62 + 312) = v64;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v66 = swift_initStackObject();
  v217 = xmmword_23E222350;
  *(v66 + 16) = xmmword_23E222350;
  *(v66 + 32) = 0x656C7069746C754DLL;
  *(v66 + 40) = 0xE800000000000000;
  *(v66 + 48) = 1;
  *(v66 + 72) = MEMORY[0x277D839B0];
  *(v66 + 80) = 0x614E74757074754FLL;
  *(v66 + 88) = 0xEA0000000000656DLL;
  v67 = v64;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v210 = v23;
  sub_23E1FC14C();
  v68 = [v59 bundleURL];
  sub_23E1FBF9C();

  v69 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v66 + 96) = v70;
  *(v66 + 120) = v65;
  *(v66 + 128) = 0x6465726975716552;
  *(v66 + 136) = 0xE800000000000000;
  *(v66 + 144) = 1;
  v71 = MEMORY[0x277D839B0];
  *(v66 + 168) = MEMORY[0x277D839B0];
  *(v66 + 176) = 0x7365707954;
  *(v66 + 216) = v218;
  *(v66 + 184) = 0xE500000000000000;
  *(v66 + 192) = &unk_285025AA0;
  v72 = MEMORY[0x277D837D0];
  v73 = sub_23E1FDABC();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v75 = v221;
  v221[40] = v73;
  v76 = *MEMORY[0x277D7CBA0];
  v75[43] = v74;
  v75[44] = v76;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v220 = swift_allocObject();
  *(v220 + 16) = xmmword_23E224C00;
  v219 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v77 = swift_allocObject();
  *(v77 + 16) = v217;
  v78 = *MEMORY[0x277D7CDF8];
  *(v77 + 32) = *MEMORY[0x277D7CDF8];
  *(v77 + 40) = 0xD000000000000011;
  *(v77 + 48) = 0x800000023E250E40;
  v79 = *MEMORY[0x277D7CE00];
  v80 = v72;
  *(v77 + 64) = v72;
  *(v77 + 72) = v79;
  *(v77 + 80) = 1;
  v81 = *MEMORY[0x277D7CE70];
  *(v77 + 104) = v71;
  *(v77 + 112) = v81;
  *&v217 = 0x800000023E25A6C0;
  *(v77 + 120) = 0xD00000000000001ALL;
  *(v77 + 128) = 0x800000023E25A6C0;
  v82 = *MEMORY[0x277D7CE80];
  *(v77 + 144) = v80;
  *(v77 + 152) = v82;
  v83 = v78;
  v84 = v79;
  v85 = v81;
  v86 = v83;
  v87 = v84;
  v88 = v85;
  v89 = v82;
  v212 = v86;
  v211 = v87;
  v90 = v88;
  v203 = v90;
  v204 = v89;
  v91 = v76;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v92 = [v224 bundleURL];
  sub_23E1FBF9C();

  v93 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v77 + 184) = v222;
  *(v77 + 160) = v94;
  _s3__C3KeyVMa_0(0);
  v215 = v95;
  v214 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v96 = sub_23E1FDABC();
  v97 = sub_23DF3BE9C(v96);
  *(v220 + 32) = v97;
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_23E224700;
  *(v98 + 32) = v212;
  *(v98 + 40) = 0xD000000000000012;
  *(v98 + 48) = 0x800000023E252300;
  v99 = MEMORY[0x277D837D0];
  v100 = v211;
  *(v98 + 64) = MEMORY[0x277D837D0];
  *(v98 + 72) = v100;
  v101 = MEMORY[0x277D83B88];
  *(v98 + 80) = 1;
  *(v98 + 104) = v101;
  *(v98 + 112) = v90;
  strcpy((v98 + 120), "WFPhotoCount");
  *(v98 + 133) = 0;
  *(v98 + 134) = -5120;
  v102 = *MEMORY[0x277D7CEE8];
  *(v98 + 144) = v99;
  *(v98 + 152) = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_23E222340;
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_23E222380;
  strcpy((v104 + 32), "WFParameterKey");
  *(v104 + 47) = -18;
  v105 = v217;
  *(v104 + 48) = 0xD00000000000001ALL;
  *(v104 + 56) = v105;
  v201 = 0xD000000000000010;
  *(v104 + 72) = v99;
  *(v104 + 80) = 0xD000000000000010;
  *(v104 + 88) = 0x800000023E24D710;
  *(v104 + 96) = 1;
  *(v104 + 120) = MEMORY[0x277D839B0];
  *(v104 + 128) = 0x72756F7365524657;
  *(v104 + 168) = v99;
  *(v104 + 136) = 0xEF7373616C436563;
  *(v104 + 144) = 0xD00000000000001BLL;
  *(v104 + 152) = 0x800000023E24D730;
  v202 = v102;
  *(v103 + 32) = sub_23E1FDABC();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v98 + 160) = v103;
  v107 = *MEMORY[0x277D7CEF0];
  *(v98 + 184) = v106;
  *(v98 + 192) = v107;
  v108 = v107;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v109 = v224;
  v110 = [v224 bundleURL];
  sub_23E1FBF9C();

  v111 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v98 + 200) = v112;
  v113 = *MEMORY[0x277D7CEF8];
  v114 = v222;
  *(v98 + 224) = v222;
  *(v98 + 232) = v113;
  v115 = v113;
  v116 = sub_23E1FDCBC();
  v118 = v117;
  v229 = 0;
  v230 = 0xE000000000000000;
  sub_23E1FE5CC();

  v229 = v116;
  v230 = v118;
  v227 = 10;
  v228 = 0xE100000000000000;
  v225 = 32;
  v226 = 0xE100000000000000;
  sub_23DE655BC();
  v229 = sub_23E1FE46C();
  v230 = v119;
  MEMORY[0x23EF044F0](v201, 0x800000023E252360);
  sub_23E1FC14C();
  v120 = [v109 bundleURL];
  sub_23E1FBF9C();

  v121 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v98 + 240) = v122;
  v123 = *MEMORY[0x277D7CF00];
  *(v98 + 264) = v114;
  *(v98 + 272) = v123;
  v124 = v123;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v125 = [v224 bundleURL];
  sub_23E1FBF9C();

  v126 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v98 + 304) = v114;
  *(v98 + 280) = v127;
  v128 = sub_23E1FDABC();
  v129 = sub_23DF3BE9C(v128);
  *(v220 + 40) = v129;
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_23E224C10;
  *(v130 + 32) = v212;
  *(v130 + 40) = 0xD000000000000016;
  *(v130 + 48) = 0x800000023E24FDA0;
  v131 = MEMORY[0x277D837D0];
  v132 = v211;
  *(v130 + 64) = MEMORY[0x277D837D0];
  *(v130 + 72) = v132;
  *(v130 + 80) = 1801675074;
  *(v130 + 88) = 0xE400000000000000;
  v133 = *MEMORY[0x277D7CE38];
  *(v130 + 104) = v131;
  *(v130 + 112) = v133;
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_23E2246F0;
  v135 = v133;
  v213 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v136 = v224;
  v137 = [v224 bundleURL];
  sub_23E1FBF9C();

  v138 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v134 + 32) = v139;
  sub_23E1FDCBC();
  v213 = v140;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v141 = [v136 bundleURL];
  sub_23E1FBF9C();

  v142 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v134 + 40) = v143;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v130 + 120) = v134;
  v145 = v203;
  *(v130 + 144) = v144;
  *(v130 + 152) = v145;
  *(v130 + 160) = 0xD000000000000015;
  *(v130 + 168) = 0x800000023E25A800;
  v146 = v204;
  *(v130 + 184) = MEMORY[0x277D837D0];
  *(v130 + 192) = v146;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v147 = [v224 bundleURL];
  sub_23E1FBF9C();

  v148 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v130 + 200) = v149;
  v150 = v202;
  *(v130 + 224) = v222;
  *(v130 + 232) = v150;
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_23E2235B0;
  v152 = v205;
  v153 = v206;
  *v206 = 2;
  (*(v152 + 104))(v153, *MEMORY[0x277D7BED8], v207);
  v154 = objc_allocWithZone(sub_23E1FC79C());
  *(v151 + 32) = sub_23E1FC78C();
  *(v130 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(v130 + 240) = v151;
  v155 = sub_23E1FDABC();
  v156 = sub_23DF3BE9C(v155);
  v157 = v220;
  *(v220 + 48) = v156;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v159 = v221;
  v221[45] = v157;
  v160 = *MEMORY[0x277D7CB98];
  v159[48] = v158;
  v159[49] = v160;
  v222 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_23E225530;
  v162 = v161;
  v220 = v161;
  v163 = v160;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v164 = v224;
  v165 = [v224 bundleURL];
  sub_23E1FBF9C();

  v166 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v168 = v167;
  v169 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v162 + 32) = sub_23DF34C40(0xD00000000000001ALL, v217, v168);
  v219 = "meter Summary)";
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v170 = v164;
  v171 = [v164 bundleURL];
  sub_23E1FBF9C();

  v172 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v174 = v173;
  v175 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v176 = sub_23DF34C40(0xD000000000000030, v219 | 0x8000000000000000, v174);
  v177 = v220;
  *(v220 + 40) = v176;
  v219 = "${WFCameraCaptureDevice} camera";
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v178 = [v170 bundleURL];
  sub_23E1FBF9C();

  v179 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v181 = v180;
  v182 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v177 + 48) = sub_23DF34C40(0xD00000000000002ALL, v219 | 0x8000000000000000, v181);
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v183 = [v224 bundleURL];
  sub_23E1FBF9C();

  v184 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v186 = v185;
  v187 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v177 + 56) = sub_23DF34C40(0xD000000000000040, 0x800000023E25A940, v186);
  v188 = v222;
  v189 = sub_23DF333E0();
  v190 = MEMORY[0x277D7CF20];
  v191 = v221;
  v221[50] = v189;
  v192 = *v190;
  v191[53] = v188;
  v191[54] = v192;
  v191[55] = &unk_285025AD0;
  v193 = *MEMORY[0x277D7D028];
  v194 = v218;
  v191[58] = v218;
  v191[59] = v193;
  v195 = v192;
  v196 = v193;
  v191[60] = sub_23E1FDABC();
  v197 = *MEMORY[0x277D7D030];
  v191[63] = v208;
  v191[64] = v197;
  v191[68] = v194;
  v191[65] = &unk_285025B70;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v198 = v197;
  v199 = sub_23E1FDABC();
  return sub_23DF3BF9C(v199);
}

unint64_t sub_23DF2C440()
{
  result = qword_280DAEA88;
  if (!qword_280DAEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA88);
  }

  return result;
}

unint64_t sub_23DF2C498()
{
  result = qword_280DAEA98;
  if (!qword_280DAEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA98);
  }

  return result;
}

unint64_t sub_23DF2C570()
{
  result = qword_280DAEA90;
  if (!qword_280DAEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA90);
  }

  return result;
}

uint64_t sub_23DF2C5C4()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E1FC1DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_23E1FDBCC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v9, qword_27E33E188);
  __swift_project_value_buffer(v9, qword_27E33E188);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t sub_23DF2C7BC()
{
  v0 = sub_23E1FC7FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  sub_23E1FC82C();
  v9 = sub_23E1FC81C();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  (*(v1 + 104))(v4, *MEMORY[0x277D7BF40], v0);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v10 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DF2C97C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_23E1FDECC();
  *(v1 + 24) = sub_23E1FDEBC();
  v3 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DF2CA14, v3, v2);
}

uint64_t sub_23DF2CA14()
{
  v1 = *(v0 + 24);

  v2 = [objc_allocWithZone(MEMORY[0x277CF05B0]) init];
  v3 = [v2 currentDeviceOrientation];

  v4 = 0x5040302010006uLL >> (8 * v3);
  if (v3 >= 7)
  {
    LOBYTE(v4) = 6;
  }

  v5 = *(v0 + 16);
  *(v0 + 32) = v4;
  sub_23DF2CCE8();
  sub_23E1FB53C();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23DF2CAF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E32B990 != -1)
  {
    swift_once();
  }

  v2 = sub_23E1FBF0C();
  v3 = __swift_project_value_buffer(v2, qword_27E33E188);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23DF2CB9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE662F0;

  return sub_23DF2C97C(a1);
}

uint64_t sub_23DF2CC38(uint64_t a1)
{
  v2 = sub_23DF2C570();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_23DF2CC84()
{
  result = qword_27E32DAD8;
  if (!qword_27E32DAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32DAE0, "pg\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32DAD8);
  }

  return result;
}

unint64_t sub_23DF2CCE8()
{
  result = qword_280DAEA58;
  if (!qword_280DAEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA58);
  }

  return result;
}

unint64_t Orientation.init(value:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x5040302010006uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v2) = 6;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_23DF2CD68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v61 = &v49 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v49 - v5;
  v6 = sub_23E1FC1DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_23E1FBEEC();
  v65 = *(v60 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v60);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23E1FDBCC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_23E1FBF0C();
  v17 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB20, &qword_23E22A958);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB28, &qword_23E22A960);
  v19 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  v63 = *(*(v18 - 8) + 72);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23E224700;
  v21 = (v20 + v19);
  v62 = v18;
  v52 = *(v18 + 48);
  v53 = v20;
  *v21 = 0;
  sub_23E1FDB5C();
  if (qword_280DAE5D0 != -1)
  {
    swift_once();
  }

  v22 = v60;
  v58 = __swift_project_value_buffer(v60, qword_280DB7710);
  v23 = *(v65 + 16);
  v65 += 16;
  v23(v12, v58, v22);
  v57 = v23;
  v54 = v9;
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v24 = v59;
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v64);
  v25 = sub_23E1FB75C();
  v55 = v25;
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v25);
  sub_23E1FB76C();
  v56 = v21;
  v52 = *(v62 + 48);
  v21[v63] = 1;
  v49 = v16;
  sub_23E1FDB5C();
  v26 = v58;
  v23(v12, v58, v22);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v64);
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v25);
  sub_23E1FB76C();
  v27 = v63;
  v28 = v56;
  v29 = *(v62 + 48);
  v51 = &v56[2 * v63];
  v52 = v29;
  *v51 = 2;
  sub_23E1FDB5C();
  v30 = v26;
  v31 = v60;
  v32 = v57;
  v57(v12, v30, v60);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v64);
  v33 = v55;
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v55);
  sub_23E1FB76C();
  v34 = &v28[3 * v27];
  v35 = v62;
  v36 = *(v62 + 48);
  v51 = v34;
  v52 = v36;
  *v34 = 3;
  sub_23E1FDB5C();
  v50 = v12;
  v37 = v58;
  v32(v12, v58, v31);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v38 = v64;
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v64);
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v33);
  sub_23E1FB76C();
  v39 = v56;
  v52 = *(v35 + 48);
  v56[4 * v63] = 4;
  sub_23E1FDB5C();
  v40 = v50;
  v41 = v60;
  v57(v50, v37, v60);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v38);
  v42 = v61;
  v43 = v55;
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v55);
  sub_23E1FB76C();
  v52 = *(v62 + 48);
  v39[5 * v63] = 5;
  sub_23E1FDB5C();
  v44 = v57;
  v57(v40, v58, v41);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v45 = v59;
  v46 = v64;
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v64);
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v43);
  sub_23E1FB76C();
  v47 = *(v62 + 48);
  v56[6 * v63] = 6;
  sub_23E1FDB5C();
  v44(v40, v58, v60);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v46);
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v55);
  sub_23E1FB76C();
  sub_23E1FB77C();
  sub_23DF2E46C();
  result = sub_23E1FDABC();
  qword_27E32DAE8 = result;
  return result;
}

uint64_t *sub_23DF2D758()
{
  if (qword_27E32B998 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  return &qword_27E32DAE8;
}

uint64_t static Orientation.caseDisplayRepresentations.getter()
{
  if (qword_27E32B998 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  swift_beginAccess();
  return sub_23E1FB7BC();
}

uint64_t static Orientation.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27E32B998 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  swift_beginAccess();
  qword_27E32DAE8 = a1;
}

uint64_t (*static Orientation.caseDisplayRepresentations.modify())()
{
  if (qword_27E32B998 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_23DF2D8E8@<X0>(void *a1@<X8>)
{
  sub_23DF2D758();
  swift_beginAccess();
  *a1 = qword_27E32DAE8;
  return sub_23E1FB7BC();
}

uint64_t sub_23DF2D93C(uint64_t *a1)
{
  v1 = *a1;
  sub_23E1FB7BC();
  sub_23DF2D758();
  swift_beginAccess();
  qword_27E32DAE8 = v1;
}

uint64_t sub_23DF2D998()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18[-v2];
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_23E1FBEEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_23E1FDBCC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_23E1FBF0C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v15, qword_27E32DAF0);
  __swift_project_value_buffer(v15, qword_27E32DAF0);
  sub_23E1FDB5C();
  if (qword_280DAE5D0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_280DB7710);
  (*(v7 + 16))(v10, v16, v6);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v13);
  return sub_23E1FB8EC();
}

uint64_t sub_23DF2DC88()
{
  if (qword_27E32B9A0 != -1)
  {
    OUTLINED_FUNCTION_1_21();
  }

  v0 = sub_23E1FB8FC();

  return __swift_project_value_buffer(v0, qword_27E32DAF0);
}

uint64_t static Orientation.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E32B9A0 != -1)
  {
    OUTLINED_FUNCTION_1_21();
  }

  v2 = sub_23E1FB8FC();
  v3 = __swift_project_value_buffer(v2, qword_27E32DAF0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Orientation.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27E32B9A0 != -1)
  {
    OUTLINED_FUNCTION_1_21();
  }

  v2 = sub_23E1FB8FC();
  v3 = __swift_project_value_buffer(v2, qword_27E32DAF0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Orientation.typeDisplayRepresentation.modify())()
{
  if (qword_27E32B9A0 != -1)
  {
    OUTLINED_FUNCTION_1_21();
  }

  v0 = sub_23E1FB8FC();
  __swift_project_value_buffer(v0, qword_27E32DAF0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23DF2DEF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DF2DC88();
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DF2DF70(uint64_t a1)
{
  v2 = sub_23DF2DC88();
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

ActionKit::Orientation_optional __swiftcall Orientation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_23DF2E020()
{
  result = qword_280DAEA20;
  if (!qword_280DAEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA20);
  }

  return result;
}

uint64_t sub_23DF2E084@<X0>(uint64_t *a1@<X8>)
{
  result = Orientation.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_23DF2E0B0()
{
  result = qword_280DAEA60;
  if (!qword_280DAEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA60);
  }

  return result;
}

unint64_t sub_23DF2E108()
{
  result = qword_280DAEA38;
  if (!qword_280DAEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA38);
  }

  return result;
}

unint64_t sub_23DF2E160()
{
  result = qword_280DAEA18;
  if (!qword_280DAEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA18);
  }

  return result;
}

unint64_t sub_23DF2E1C4()
{
  result = qword_280DAEA48;
  if (!qword_280DAEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA48);
  }

  return result;
}

unint64_t sub_23DF2E218()
{
  result = qword_280DAEA40;
  if (!qword_280DAEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA40);
  }

  return result;
}

unint64_t sub_23DF2E270()
{
  result = qword_280DAEA50;
  if (!qword_280DAEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA50);
  }

  return result;
}

unint64_t sub_23DF2E318()
{
  result = qword_27E32DB08;
  if (!qword_27E32DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32DB08);
  }

  return result;
}

uint64_t sub_23DF2E36C(uint64_t a1)
{
  v2 = sub_23DF2E318();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23DF2E3BC()
{
  result = qword_280DAEA30;
  if (!qword_280DAEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA30);
  }

  return result;
}

unint64_t sub_23DF2E414()
{
  result = qword_280DAEA10;
  if (!qword_280DAEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA10);
  }

  return result;
}

unint64_t sub_23DF2E46C()
{
  result = qword_280DAEA28;
  if (!qword_280DAEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA28);
  }

  return result;
}

uint64_t sub_23DF2E4C4(uint64_t a1)
{
  v2 = sub_23DF2E270();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23DF2E514()
{
  result = qword_27E32DB10;
  if (!qword_27E32DB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32DB18, &qword_23E22A8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32DB10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Orientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Orientation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return swift_once();
}

id sub_23DF2E768()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v112 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x800000023E258320;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v117 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v116 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = v17;
  v19 = sub_23E1FDABC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v110 = v20;
  *(inited + 120) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  v114 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_23E222340;
  v23 = v3;
  v24 = *MEMORY[0x277D7CC30];
  *(v22 + 32) = *MEMORY[0x277D7CC30];
  v25 = v21;
  v26 = v24;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v27 = [v117 bundleURL];
  sub_23E1FBF9C();

  v28 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v22 + 64) = v116;
  *(v22 + 40) = v29;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v30 = sub_23E1FDABC();
  v31 = v114;
  *(inited + 160) = sub_23DF3BE54(v30);
  v32 = *MEMORY[0x277D7CCC0];
  *(inited + 184) = v31;
  *(inited + 192) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_23E222350;
  *(v33 + 32) = 0x656C7069746C754DLL;
  *(v33 + 40) = 0xE800000000000000;
  v34 = MEMORY[0x277D839B0];
  *(v33 + 48) = 0;
  *(v33 + 72) = v34;
  strcpy((v33 + 80), "ParameterKey");
  *(v33 + 93) = 0;
  *(v33 + 94) = -5120;
  strcpy((v33 + 96), "WFCallContact");
  *(v33 + 110) = -4864;
  v35 = MEMORY[0x277D837D0];
  *(v33 + 120) = MEMORY[0x277D837D0];
  *(v33 + 128) = 0x6465726975716552;
  *(v33 + 136) = 0xE800000000000000;
  *(v33 + 144) = 1;
  *(v33 + 168) = v34;
  *(v33 + 176) = 0x7365707954;
  v36 = v34;
  *(v33 + 184) = 0xE500000000000000;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v33 + 216) = v111;
  *(v33 + 192) = &unk_285025C08;
  v37 = v32;
  v38 = sub_23E1FDABC();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 200) = v38;
  v40 = *MEMORY[0x277D7CCC8];
  *(inited + 224) = v39;
  *(inited + 232) = v40;
  *(inited + 264) = v36;
  *(inited + 240) = 1;
  v41 = v40;
  *(inited + 272) = sub_23E1FDBDC();
  *(inited + 280) = 0xD000000000000023;
  *(inited + 288) = 0x800000023E2583C0;
  v42 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v35;
  *(inited + 312) = v42;
  v43 = v42;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v44 = v117;
  v45 = [v117 bundleURL];
  v115 = v23;
  sub_23E1FBF9C();

  v46 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 320) = v47;
  v48 = *MEMORY[0x277D7CBA0];
  *(inited + 344) = v116;
  *(inited + 352) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_23E2246F0;
  v113 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v49 = swift_allocObject();
  v108 = xmmword_23E224C10;
  *(v49 + 16) = xmmword_23E224C10;
  v50 = *MEMORY[0x277D7CDF8];
  *(v49 + 32) = *MEMORY[0x277D7CDF8];
  *(v49 + 40) = 0xD00000000000001ALL;
  *(v49 + 48) = 0x800000023E258410;
  v51 = *MEMORY[0x277D7CE00];
  v52 = MEMORY[0x277D837D0];
  *(v49 + 64) = MEMORY[0x277D837D0];
  *(v49 + 72) = v51;
  v106 = v50;
  v53 = v48;
  v54 = v51;
  v55 = sub_23E1FDABC();
  v56 = MEMORY[0x277D7CE40];
  *(v49 + 80) = v55;
  v57 = *v56;
  *(v49 + 104) = v110;
  *(v49 + 112) = v57;
  *(v49 + 144) = MEMORY[0x277D839B0];
  *(v49 + 120) = 1;
  v58 = v57;
  *(v49 + 152) = sub_23E1FDBDC();
  *(v49 + 160) = 0xD000000000000011;
  *(v49 + 168) = 0x800000023E258430;
  v59 = *MEMORY[0x277D7CE70];
  *(v49 + 184) = v52;
  *(v49 + 192) = v59;
  *(v49 + 200) = 0xD000000000000013;
  *(v49 + 208) = 0x800000023E258450;
  v60 = *MEMORY[0x277D7CE80];
  *(v49 + 224) = v52;
  *(v49 + 232) = v60;
  v61 = v59;
  v62 = v60;
  v105 = v61;
  v104 = v62;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v63 = [v44 bundleURL];
  sub_23E1FBF9C();

  v64 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v49 + 264) = v116;
  *(v49 + 240) = v65;
  _s3__C3KeyVMa_0(0);
  v110 = v66;
  v107 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v67 = sub_23E1FDABC();
  v68 = sub_23DF3BE9C(v67);
  *(v114 + 32) = v68;
  v69 = swift_allocObject();
  *(v69 + 16) = v108;
  v70 = *MEMORY[0x277D7CDE0];
  *(v69 + 32) = *MEMORY[0x277D7CDE0];
  *(v69 + 40) = 0;
  v71 = v106;
  *(v69 + 64) = MEMORY[0x277D839B0];
  *(v69 + 72) = v71;
  v72 = MEMORY[0x277D837D0];
  *(v69 + 104) = MEMORY[0x277D837D0];
  *(v69 + 80) = 0xD00000000000001BLL;
  *(v69 + 88) = 0x800000023E254D00;
  v73 = v70;
  *(v69 + 112) = sub_23E1FDBDC();
  *(v69 + 120) = 0x73746361746E6F63;
  *(v69 + 128) = 0xE800000000000000;
  v74 = v104;
  v75 = v105;
  *(v69 + 144) = v72;
  *(v69 + 152) = v75;
  strcpy((v69 + 160), "WFCallContact");
  *(v69 + 174) = -4864;
  *(v69 + 184) = v72;
  *(v69 + 192) = v74;
  v109 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v76 = v117;
  v77 = [v117 bundleURL];
  sub_23E1FBF9C();

  v78 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v69 + 200) = v79;
  v80 = *MEMORY[0x277D7CEC8];
  v81 = v116;
  *(v69 + 224) = v116;
  *(v69 + 232) = v80;
  v82 = v80;
  sub_23E1FDCBC();
  v109 = v83;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v84 = [v76 bundleURL];
  sub_23E1FBF9C();

  v85 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v69 + 264) = v81;
  *(v69 + 240) = v86;
  v87 = sub_23E1FDABC();
  v88 = sub_23DF3BE9C(v87);
  v89 = v114;
  *(v114 + 40) = v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 360) = v89;
  v91 = *MEMORY[0x277D7CB98];
  *(inited + 384) = v90;
  *(inited + 392) = v91;
  v92 = v91;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v93 = [v117 bundleURL];
  sub_23E1FBF9C();

  v94 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v96 = v95;
  v97 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v98 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 400) = v97;
  v99 = *MEMORY[0x277D7CF20];
  *(inited + 424) = v98;
  *(inited + 432) = v99;
  *(inited + 464) = v111;
  *(inited + 440) = &unk_285025C88;
  v100 = v99;
  v101 = sub_23E1FDBDC();
  *(inited + 504) = MEMORY[0x277D837D0];
  *(inited + 472) = v101;
  *(inited + 480) = 0x656E6F6850;
  *(inited + 488) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v102 = sub_23E1FDABC();
  return sub_23DF3BF9C(v102);
}

uint64_t sub_23DF2F58C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32DB60, &qword_23E224230);
  v0 = sub_23E1FBBDC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E224C10;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277CFC0F8], v0);
  v6(v5 + v2, *MEMORY[0x277CFC100], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277CFC0E8], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277CFC108], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277CFC0F0], v0);
  result = (v6)(v5 + 5 * v2, *MEMORY[0x277CFC0D0], v0);
  qword_27E33E1A0 = v4;
  return result;
}

void sub_23DF2F728(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_23DF2F7A0(v2);
}

void sub_23DF2F7A0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_23DF2F7FC(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___WFGenerativeResultTypePickerParameter_action;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_23DE62A4C;
}

id sub_23DF2F880(void *a1)
{
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFGenerativeResultTypePickerParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithDefinition_, a1);
  [v3 setDataSource_];

  return v3;
}

uint64_t sub_23DF2F97C()
{
  v0 = sub_23E1FBBDC();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_59();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v12 = sub_23E1FC9CC();
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = [v12 value];
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v14;
  v37 = 0;
  v38 = 0;
  sub_23E1FDC0C();

  if (!v38)
  {
    goto LABEL_23;
  }

  sub_23E1FB7BC();
  sub_23E1FBBBC();
  (*(v3 + 16))(v8, v11, v0);
  v16 = (*(v3 + 88))(v8, v0);
  if (v16 == *MEMORY[0x277CFC0D8])
  {
    v17 = *(v3 + 8);
    v18 = OUTLINED_FUNCTION_35_0();
    v17(v18);

    (v17)(v8, v0);
    return 0;
  }

  if (v16 == *MEMORY[0x277CFC110])
  {

    v19 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v20 = 0x73656C6B72617073;
    v21 = 0xEA0000000000322ELL;
LABEL_15:
    v25 = sub_23DE63D1C(v20, v21, 0, 2);

    v26 = *(v3 + 8);
    v27 = OUTLINED_FUNCTION_35_0();
    v28(v27);
    return v25;
  }

  if (v16 == *MEMORY[0x277CFC0F8])
  {

    v22 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v21 = 0x800000023E25AB70;
    v20 = 0xD000000000000014;
    goto LABEL_15;
  }

  if (v16 == *MEMORY[0x277CFC100])
  {

    v23 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v20 = 0x7265626D756ELL;
LABEL_14:
    v21 = 0xE600000000000000;
    goto LABEL_15;
  }

  if (v16 == *MEMORY[0x277CFC108])
  {

    v24 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v20 = 0x686374697773;
    goto LABEL_14;
  }

  if (v16 == *MEMORY[0x277CFC0F0])
  {

    v29 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v20 = 0x6C75622E7473696CLL;
    v30 = 7628140;
LABEL_20:
    v21 = v30 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    goto LABEL_15;
  }

  if (v16 == *MEMORY[0x277CFC0D0])
  {

    v31 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v20 = 0x6F6C632E6B6F6F62;
    v30 = 6579571;
    goto LABEL_20;
  }

  if (v16 == *MEMORY[0x277CFC0E0])
  {
    v32 = *(v3 + 8);
    v33 = OUTLINED_FUNCTION_35_0();
    v34(v33);

LABEL_23:

    return 0;
  }

  if (v16 == *MEMORY[0x277CFC0E8])
  {

    v36 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v20 = 0x7261646E656C6163;
    v21 = 0xE800000000000000;
    goto LABEL_15;
  }

  result = sub_23E1FE74C();
  __break(1u);
  return result;
}

void sub_23DF2FE20()
{
  v0 = sub_23E1FBBDC();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v4 = sub_23E1FC9CC();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 value];
    if (v6)
    {
      v7 = v6;
      sub_23E1FDC0C();
    }
  }
}

id sub_23DF30248()
{
  v0 = sub_23E1FBBDC();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v4 = sub_23E1FC9CC();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 value];
  if (v6)
  {
    sub_23E1FDC0C();

    return 0;
  }

  return v6;
}

id sub_23DF30460()
{
  v1 = v0;
  v114 = sub_23E1FD03C();
  v2 = OUTLINED_FUNCTION_6_0(v114);
  v116 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_59();
  v115 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v111 = &v98 - v9;
  v10 = sub_23E1FBBDC();
  v11 = OUTLINED_FUNCTION_6_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_59();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v98 - v20;
  v126 = MEMORY[0x277D84F90];
  v22 = *MEMORY[0x277CFC110];
  v23 = *(v13 + 104);
  v107 = v13 + 104;
  v106 = v23;
  v23((&v98 - v20), v22, v10);
  sub_23E1FBBCC();
  v24 = sub_23E1FDBDC();

  v25 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

  v26 = sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  v27 = sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v28 = sub_23E1FC98C();

  v122 = v13;
  v30 = *(v13 + 8);
  v29 = v13 + 8;
  v112 = v30;
  v30(v21, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_23E2235B0;
  *(v31 + 32) = v28;
  objc_allocWithZone(MEMORY[0x277CD3E30]);
  v105 = v28;
  sub_23DE63D90(0, 0);
  MEMORY[0x23EF045A0]();
  v32 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v32 >> 1)
  {
    goto LABEL_107;
  }

  while (1)
  {
    v113 = v26;
    sub_23E1FDE3C();
    if (qword_27E32B9A8 != -1)
    {
      swift_once();
    }

    v33 = qword_27E33E1A0;
    v34 = *(qword_27E33E1A0 + 16);
    v35 = 0x277D7C000;
    v119 = v18;
    if (v34)
    {
      v118 = v1;
      v125 = MEMORY[0x277D84F90];
      sub_23E1FE63C();
      v36 = *(v122 + 16);
      v37 = v33 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
      v120 = *(v122 + 72);
      v121 = v36;
      v122 = v29;
      v123 = v27;
      v38 = v112;
      do
      {
        v121(v21, v37, v10);
        sub_23E1FBBCC();
        v39 = sub_23E1FDBDC();

        v40 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

        sub_23E1FC98C();
        v38(v21, v10);
        sub_23E1FE61C();
        v41 = *(v125 + 16);
        sub_23E1FE64C();
        sub_23E1FE65C();
        sub_23E1FE62C();
        v37 += v120;
        --v34;
      }

      while (v34);
      v18 = v119;
      v29 = v122;
      v27 = v123;
      v35 = 0x277D7C000uLL;
    }

    v42 = objc_allocWithZone(MEMORY[0x277CD3E30]);
    sub_23DE63D90(0, 0);
    MEMORY[0x23EF045A0]();
    v43 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v43 >> 1)
    {
      OUTLINED_FUNCTION_9(v43);
      sub_23E1FDE0C();
    }

    sub_23E1FDE3C();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v91 = v105;
      goto LABEL_94;
    }

    v21 = Strong;
    v1 = v27;
    v45 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    v46 = OUTLINED_FUNCTION_3_12();
    v47 = [v21 parameterStateForKey_];

    v99 = v21;
    if (!v47)
    {
      v108 = v45;
      goto LABEL_91;
    }

    v26 = [v47 containedVariables];
    sub_23DE38DA8(0, &qword_27E32CC50, 0x277D7C9F8);
    v48 = sub_23E1FDDEC();

    v118 = sub_23DE4D8B0(v48);
    if (!v118)
    {
      break;
    }

    v122 = v29;
    v102 = v10;
    v50 = 0;
    v117 = v48 & 0xC000000000000001;
    v104 = v48 & 0xFFFFFFFFFFFFFF8;
    v103 = v48 + 32;
    v101 = *MEMORY[0x277CFC0D8];
    v51 = *MEMORY[0x277D7A440];
    v109 = (v116 + 8);
    v110 = v51;
    v108 = MEMORY[0x277D84F90];
    *&v49 = 138412290;
    v100 = v49;
    v123 = v27;
    v116 = v48;
    while (1)
    {
      if (v117)
      {
        v52 = MEMORY[0x23EF04DD0](v50, v48);
      }

      else
      {
        v32 = *(v104 + 16);
        if (v50 >= v32)
        {
          goto LABEL_105;
        }

        v52 = *(v103 + 8 * v50);
      }

      v53 = v52;
      v54 = __OFADD__(v50++, 1);
      if (v54)
      {
        break;
      }

      v29 = v35;
      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (v55)
      {
        v21 = v55;
        v56 = v53;
        v57 = sub_23E1FDFBC();
        v121 = v56;

        v120 = v21;
        v58 = [v21 action];
        if (v58)
        {
          v26 = v58;
          v59 = sub_23E1FE41C();

          v10 = *(v59 + 16);
          if (v10)
          {
            v1 = 0;
            v18 = (v59 + 32);
            while (1)
            {
              v32 = *(v59 + 16);
              if (v1 >= v32)
              {
                break;
              }

              v27 = v18[v1++];
              v26 = *(v57 + 16);
              v60 = v26;
              v61 = 32;
              while (v60)
              {
                v62 = *(v57 + v61);
                v61 += 8;
                --v60;
                if (v62 == v27)
                {
                  goto LABEL_33;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_23DE4CC50();
                v57 = v64;
              }

              v21 = *(v57 + 16);
              v63 = *(v57 + 24);
              v26 = v21 + 1;
              if (v21 >= v63 >> 1)
              {
                OUTLINED_FUNCTION_9(v63);
                sub_23DE4CC50();
                v57 = v65;
              }

              *(v57 + 16) = v26;
              *(v57 + 8 * v21 + 32) = v27;
LABEL_33:
              if (v1 == v10)
              {

                v18 = v119;
                v1 = v123;
                goto LABEL_40;
              }
            }

LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
            break;
          }
        }

LABEL_40:
        v26 = 0;
        v70 = *(v57 + 16);
        v27 = v57 + 32;
LABEL_41:
        if (v26 == v70)
        {
          v73 = *(v57 + 16);
          v26 = v73;
        }

        else
        {
          v1 = *(v27 + 8 * v26);
          if (qword_27E32B9B0 != -1)
          {
            OUTLINED_FUNCTION_2_20();
            swift_once();
          }

          v10 = off_27E32DB30;
          v32 = *(off_27E32DB30 + 2);
          v71 = (off_27E32DB30 + 32);
          do
          {
            if (!v32)
            {
              ++v26;
              v1 = v123;
              goto LABEL_41;
            }

            v72 = *v71++;
            --v32;
          }

          while (v72 != v1);
          v73 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_104;
          }

          v1 = off_27E32DB30 + 32;
          while (1)
          {
            v32 = *(v57 + 16);
            if (v73 == v32)
            {
              break;
            }

            if (v73 >= v32)
            {
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            v27 = *(v57 + 32 + 8 * v73);
            v74 = v10[2];
            v75 = v10 + 4;
            while (v74)
            {
              v76 = *v75++;
              --v74;
              if (v76 == v27)
              {
                goto LABEL_63;
              }
            }

            if (v26 != v73)
            {
              if (v26 >= v32)
              {
                goto LABEL_99;
              }

              v21 = *(v57 + 32 + 8 * v26);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_23DF31B34(v57);
                v57 = v77;
              }

              v32 = v57 + 32;
              *(v57 + 32 + 8 * v26) = v27;
              *(v57 + 32 + 8 * v73) = v21;
            }

            v54 = __OFADD__(v26++, 1);
            if (v54)
            {
              goto LABEL_97;
            }

LABEL_63:
            v54 = __OFADD__(v73++, 1);
            if (v54)
            {
              goto LABEL_96;
            }
          }

          if (v73 < v26)
          {
            goto LABEL_101;
          }

          v1 = v123;
          if (v26 < 0)
          {
            goto LABEL_102;
          }
        }

        v10 = (v26 - v73);
        v21 = v26;
        if (__OFADD__(v73, v26 - v73))
        {
          goto LABEL_103;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v26 > *(v57 + 24) >> 1)
        {
          sub_23DE4CC50();
          v57 = v78;
        }

        v21 = *(v57 + 16);
        if (v26 != v73)
        {
          memmove((v57 + 32 + 8 * v26), (v57 + 32 + 8 * v73), 8 * (v21 - v73));
          v32 = *(v57 + 16);
          v21 = v10 + v32;
          if (__OFADD__(v32, v10))
          {
            goto LABEL_106;
          }

          *(v57 + 16) = v21;
        }

        if (v21)
        {
          v79 = [v120 name];
          v80 = sub_23E1FDC1C();
          v82 = v81;

          *v18 = v80;
          v18[1] = v82;
          v10 = v102;
          v106(v18, v101, v102);
          sub_23E1FBBCC();
          v83 = sub_23E1FDBDC();

          v84 = [objc_allocWithZone(*(v29 + 2344)) initWithValue_];

          v21 = sub_23E1FC98C();
          MEMORY[0x23EF045A0]();
          v85 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v85 >> 1)
          {
            OUTLINED_FUNCTION_9(v85);
            sub_23E1FDE0C();
          }

          sub_23E1FDE3C();
          v26 = v121;

          v112(v18, v10);
          v108 = v124;
        }

        else
        {
          sub_23E1FCB9C();
          v86 = v121;
          v87 = sub_23E1FD02C();
          v88 = sub_23E1FE1AC();

          if (os_log_type_enabled(v87, v88))
          {
            v26 = swift_slowAlloc();
            swift_slowAlloc();
            OUTLINED_FUNCTION_7_11();
            v89 = v120;
            *(v26 + 4) = v120;
            *v90 = v89;
            v21 = v86;
            _os_log_impl(&dword_23DE30000, v87, v88, "Variable %@ only provides content item types that are not allowed", v26, 0xCu);
            sub_23DE8B994(v10);
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_56();
          }

          else
          {
            v21 = v87;
            v87 = v86;
          }

          (*v109)(v111, v114);
          v18 = v119;
        }

        v35 = v29;
      }

      else
      {
        v26 = v115;
        sub_23E1FCB9C();
        v21 = v53;
        v66 = sub_23E1FD02C();
        v67 = sub_23E1FE1AC();

        if (os_log_type_enabled(v66, v67))
        {
          v26 = swift_slowAlloc();
          swift_slowAlloc();
          OUTLINED_FUNCTION_7_11();
          *(v26 + 4) = v21;
          *v68 = v21;
          v69 = v21;
          _os_log_impl(&dword_23DE30000, v66, v67, "Variable %@ is not the output of an action, ignoring it", v26, 0xCu);
          sub_23DE8B994(v10);
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_56();
        }

        else
        {
          v69 = v66;
          v66 = v21;
        }

        v35 = v29;

        (*v109)(v115, v114);
        v18 = v119;
      }

      v48 = v116;
      if (v50 == v118)
      {
        goto LABEL_90;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    OUTLINED_FUNCTION_9(v32);
    sub_23E1FDE0C();
  }

  v108 = MEMORY[0x277D84F90];
LABEL_90:
  swift_unknownObjectRelease();

LABEL_91:
  v92 = objc_allocWithZone(MEMORY[0x277CD3E30]);
  sub_23DE63D90(0, 0);
  MEMORY[0x23EF045A0]();
  v93 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v91 = v105;
  if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v93 >> 1)
  {
    OUTLINED_FUNCTION_9(v93);
    sub_23E1FDE0C();
  }

  OUTLINED_FUNCTION_35_0();
  sub_23E1FDE3C();

LABEL_94:
  v94 = objc_allocWithZone(MEMORY[0x277CD3E28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB40, &unk_23E2243C0);
  v95 = sub_23E1FDDCC();

  v96 = [v94 initWithSections_];

  return v96;
}

uint64_t sub_23DF3123C()
{
  v0 = sub_23DF1DC70();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23E222330;
  *(v3 + 32) = sub_23DE38DA8(0, &unk_280DAE6E0, 0x277CFC270);
  *(v3 + 40) = sub_23DE38DA8(0, &unk_280DAE720, 0x277CFC368);
  *(v3 + 48) = sub_23DE38DA8(0, &qword_27E32DB48, off_278C01420);
  *(v3 + 56) = sub_23DE38DA8(0, &qword_27E32CD40, 0x277CFC388);
  *(v3 + 64) = sub_23DE38DA8(0, &unk_280DAE680, 0x277CFC3F0);
  *(v3 + 72) = sub_23DE38DA8(0, &qword_27E32DB50, off_278C01518);
  *(v3 + 80) = sub_23DE38DA8(0, &qword_27E32C7F8, 0x277CFC410);
  *(v3 + 88) = sub_23DE38DA8(0, &qword_280DAE710, 0x277CFC480);
  *(v3 + 96) = sub_23DE38DA8(0, &qword_27E32DB58, off_278C016B0);
  *(v3 + 104) = sub_23DE38DA8(0, &qword_27E32C3A0, 0x277CFC4C0);
  result = sub_23DE38DA8(0, &unk_280DAE700, 0x277CFC530);
  *(v3 + 112) = result;
  off_27E32DB30 = v3;
  return result;
}

uint64_t static WFGenerativeResultTypePickerParameter.prohibitedContentItemTypes.getter()
{
  if (qword_27E32B9B0 != -1)
  {
    OUTLINED_FUNCTION_2_20();
    swift_once();
  }

  return sub_23E1FB7BC();
}

void sub_23DF3141C(void *a1@<X8>)
{
  v2 = sub_23E1FBBDC();
  v3 = OUTLINED_FUNCTION_6_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  (*(v5 + 104))(v9 - v8, *MEMORY[0x277CFC110], v2);
  sub_23E1FBBCC();
  v11 = sub_23E1FDBDC();

  v12 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

  sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v13 = sub_23E1FC98C();

  (*(v5 + 8))(v10, v2);
  v14 = [v13 serializedRepresentation];
  if (v14)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {

    ObjectType = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v14;
  a1[3] = ObjectType;
}

id WFGenerativeResultTypePickerParameter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFGenerativeResultTypePickerParameter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_23DF3175C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

char *sub_23DF31824(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

char *sub_23DF318A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

char *sub_23DF318CC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

uint64_t sub_23DF319CC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_8_8();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_8_8();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_23DF31ABC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23E1FE6AC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_23E1FE5FC();
}

uint64_t OUTLINED_FUNCTION_3_12()
{

  return sub_23E1FDBDC();
}

__n128 OUTLINED_FUNCTION_7_11()
{
  result = *(v1 - 336);
  *v0 = result.n128_u32[0];
  return result;
}

id sub_23DF31DA4()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v113 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E25AC00;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v117 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v116 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v117 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v114 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_23E222380;
  v19 = *MEMORY[0x277D7CC20];
  *(v18 + 32) = *MEMORY[0x277D7CC20];
  v20 = v17;
  v21 = v19;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v115 = inited;
  v22 = v116;
  v23 = [v116 bundleURL];
  v118 = v3;
  sub_23E1FBF9C();

  v24 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v18 + 40) = v25;
  v26 = *MEMORY[0x277D7CC28];
  *(v18 + 64) = v117;
  *(v18 + 72) = v26;
  v27 = v26;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v28 = v22;
  v29 = [v22 bundleURL];
  sub_23E1FBF9C();

  v30 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v18 + 80) = v31;
  v32 = *MEMORY[0x277D7CC30];
  v33 = v117;
  *(v18 + 104) = v117;
  *(v18 + 112) = v32;
  v34 = v32;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v35 = [v28 bundleURL];
  sub_23E1FBF9C();

  v36 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v18 + 144) = v33;
  *(v18 + 120) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v38 = sub_23E1FDABC();
  v39 = v114;
  v40 = sub_23DF3BE54(v38);
  v41 = v115;
  v115[15] = v40;
  v42 = *MEMORY[0x277D7CB48];
  v41[18] = v39;
  v41[19] = v42;
  v41[20] = 0x6E65657247;
  v41[21] = 0xE500000000000000;
  v43 = *MEMORY[0x277D7CB60];
  v44 = MEMORY[0x277D837D0];
  v41[23] = MEMORY[0x277D837D0];
  v41[24] = v43;
  v41[25] = 0x2E79726574746162;
  v41[26] = 0xEB00000000303031;
  v45 = *MEMORY[0x277D7CB90];
  v41[28] = v44;
  v41[29] = v45;
  v46 = v41;
  v47 = v42;
  v48 = v43;
  v49 = v45;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v50 = v116;
  v51 = [v116 bundleURL];
  sub_23E1FBF9C();

  v52 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v46[30] = v53;
  v54 = *MEMORY[0x277D7CDD0];
  v55 = v117;
  v46[33] = v117;
  v46[34] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_23E222350;
  *(v56 + 32) = 0x75736F6C63736944;
  *(v56 + 40) = 0xEF6C6576654C6572;
  *(v56 + 48) = 0x63696C627550;
  *(v56 + 56) = 0xE600000000000000;
  *(v56 + 72) = MEMORY[0x277D837D0];
  *(v56 + 80) = 0x656C7069746C754DLL;
  *(v56 + 88) = 0xE800000000000000;
  v57 = MEMORY[0x277D839B0];
  *(v56 + 96) = 0;
  *(v56 + 120) = v57;
  *(v56 + 128) = 0x614E74757074754FLL;
  *(v56 + 136) = 0xEA0000000000656DLL;
  v58 = v54;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v59 = [v50 bundleURL];
  sub_23E1FBF9C();

  v60 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v56 + 144) = v61;
  *(v56 + 168) = v55;
  *(v56 + 176) = 0x7365707954;
  *(v56 + 184) = 0xE500000000000000;
  *(v56 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v56 + 192) = &unk_285025CC8;
  v62 = MEMORY[0x277D837D0];
  v63 = sub_23E1FDABC();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v65 = v115;
  v115[35] = v63;
  v66 = *MEMORY[0x277D7CBA0];
  v65[38] = v64;
  v65[39] = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_23E2235B0;
  v111[2] = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v67 = swift_initStackObject();
  v68 = MEMORY[0x277D7CDF8];
  *(v67 + 16) = xmmword_23E224710;
  v69 = *v68;
  *(v67 + 32) = *v68;
  *(v67 + 40) = 0xD000000000000016;
  *(v67 + 48) = 0x800000023E24FDA0;
  v70 = *MEMORY[0x277D7CE00];
  *(v67 + 64) = v62;
  *(v67 + 72) = v70;
  strcpy((v67 + 80), "Battery Level");
  *(v67 + 94) = -4864;
  v71 = *MEMORY[0x277D7CE38];
  *(v67 + 104) = v62;
  *(v67 + 112) = v71;
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_23E224C00;
  v72 = v66;
  v73 = v69;
  v74 = v70;
  v75 = v71;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v76 = v116;
  v77 = [v116 bundleURL];
  sub_23E1FBF9C();

  v78 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v79 = v114;
  *(v114 + 32) = v80;
  sub_23E1FDCBC();
  v111[1] = v81;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v82 = [v76 bundleURL];
  sub_23E1FBF9C();

  v83 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v79 + 40) = v84;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v85 = [v76 bundleURL];
  sub_23E1FBF9C();

  v86 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v87 = v114;
  *(v114 + 48) = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v67 + 120) = v87;
  v90 = *MEMORY[0x277D7CE70];
  *(v67 + 144) = v89;
  *(v67 + 152) = v90;
  *(v67 + 160) = 0x7463656A627553;
  *(v67 + 168) = 0xE700000000000000;
  v91 = *MEMORY[0x277D7CE80];
  *(v67 + 184) = MEMORY[0x277D837D0];
  *(v67 + 192) = v91;
  v92 = v90;
  v93 = v91;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v94 = [v76 bundleURL];
  sub_23E1FBF9C();

  v95 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v67 + 224) = v117;
  *(v67 + 200) = v96;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v97 = sub_23E1FDABC();
  v98 = sub_23DF3BE9C(v97);
  v99 = v112;
  *(v112 + 32) = v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v101 = v115;
  v115[40] = v99;
  v102 = *MEMORY[0x277D7CB98];
  v101[43] = v100;
  v101[44] = v102;
  v103 = v102;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v104 = [v116 bundleURL];
  sub_23E1FBF9C();

  v105 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v107 = v106;
  v108 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v101[48] = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v101[45] = v108;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v109 = sub_23E1FDABC();
  return sub_23DF3BF9C(v109);
}

id sub_23DF32CAC()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23E1FC1DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x800000023E2518B0;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v10 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v11 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v13 = v12;
  v14 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v13;
  v15 = *MEMORY[0x277D7CB50];
  *(inited + 104) = v14;
  *(inited + 112) = v15;
  *(inited + 144) = v6;
  *(inited + 120) = 1954047316;
  *(inited + 128) = 0xE400000000000000;
  v16 = v15;
  *(inited + 152) = sub_23E1FDBDC();
  v17 = MEMORY[0x277D839B0];
  *(inited + 184) = MEMORY[0x277D839B0];
  v18 = v17;
  *(inited + 160) = 1;
  *(inited + 192) = sub_23E1FDBDC();
  *(inited + 200) = 0xD00000000000004FLL;
  *(inited + 208) = 0x800000023E25AF70;
  v19 = *MEMORY[0x277D7CDD0];
  *(inited + 224) = v6;
  *(inited + 232) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222370;
  *(v20 + 32) = 0x75736F6C63736944;
  *(v20 + 40) = 0xEF6C6576654C6572;
  *(v20 + 48) = 0x63696C627550;
  *(v20 + 56) = 0xE600000000000000;
  *(v20 + 72) = v6;
  *(v20 + 80) = 0x656C7069746C754DLL;
  *(v20 + 88) = 0xE800000000000000;
  *(v20 + 120) = v18;
  *(v20 + 96) = 1;
  v21 = v19;
  v22 = sub_23E1FDABC();
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 240) = v22;
  *(inited + 272) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23E222370;
  *(v23 + 32) = 0x65536D6F74737563;
  *(v23 + 40) = 0xEF726F7461726170;
  sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_23E222340;
  v25 = *MEMORY[0x277D7CE70];
  *(v24 + 64) = v6;
  *(v24 + 32) = v25;
  *(v24 + 40) = 0xD000000000000015;
  *(v24 + 48) = 0x800000023E251950;
  _s3__C3KeyVMa_0(0);
  sub_23DE71CF8(&qword_280DAE748, _s3__C3KeyVMa_0);
  v40 = v25;
  v26 = sub_23E1FDABC();
  *(v23 + 48) = sub_23DF3BE9C(v26);
  *(v23 + 56) = 0x6F74617261706573;
  *(v23 + 64) = 0xE900000000000072;
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_23E222370;
  v28 = *MEMORY[0x277D7CE58];
  *(v27 + 32) = *MEMORY[0x277D7CE58];
  v29 = v28;
  v30 = sub_23E1FDABC();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(v27 + 40) = v30;
  *(v27 + 64) = v31;
  *(v27 + 72) = v40;
  *(v27 + 104) = v6;
  *(v27 + 80) = 0x6553747865544657;
  *(v27 + 88) = 0xEF726F7461726170;
  v32 = sub_23E1FDABC();
  *(v23 + 72) = sub_23DF3BE9C(v32);
  v33 = sub_23E1FDABC();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  *(inited + 280) = v33;
  v35 = *MEMORY[0x277D7CB78];
  *(inited + 304) = v34;
  *(inited + 312) = v35;
  *(inited + 344) = MEMORY[0x277D839B0];
  *(inited + 320) = 1;
  v36 = v35;
  v37 = sub_23E1FDBDC();
  *(inited + 384) = v6;
  *(inited + 352) = v37;
  *(inited + 360) = 0x74696C7053;
  *(inited + 368) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_23DE71CF8(&qword_280DAEDE0, type metadata accessor for Key);
  v38 = sub_23E1FDABC();
  return sub_23DF3BF9C(v38);
}

id sub_23DF333E0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_23DE38DA8(0, &unk_27E32DB70, 0x277D7C0C8);
  v1 = sub_23E1FDDCC();

  v2 = [v0 initWithValues_];

  return v2;
}

id sub_23DF3349C()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v207 = &v192 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v8 = *MEMORY[0x277D7CB18];
  v9 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  strcpy((inited + 40), "WFSetVPNAction");
  *(inited + 55) = -18;
  v10 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = v8;
  v12 = v10;
  v208 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v209 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v15 = v6;
  sub_23DE477A0();
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v208 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v20 = v19;
  v21 = sub_23E1FDABC();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v21;
  v23 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v22;
  *(inited + 152) = v23;
  v206 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_23E222370;
  v25 = *MEMORY[0x277D7CC20];
  *(v24 + 32) = *MEMORY[0x277D7CC20];
  v26 = v23;
  v27 = v25;
  sub_23E1FDCBC();
  v205 = v28;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v29 = v209;
  v30 = [v209 bundleURL];
  sub_23E1FBF9C();

  v31 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v32 = v15;
  sub_23DE477A0();
  *(v24 + 40) = v33;
  v34 = *MEMORY[0x277D7CC30];
  v35 = v208;
  *(v24 + 64) = v208;
  *(v24 + 72) = v34;
  v36 = v34;
  v205 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v37 = [v29 bundleURL];
  sub_23E1FBF9C();

  v38 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v24 + 104) = v35;
  *(v24 + 80) = v39;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v40 = sub_23E1FDABC();
  v41 = v206;
  *(inited + 160) = sub_23DF3BE54(v40);
  v42 = *MEMORY[0x277D7CB28];
  *(inited + 184) = v41;
  *(inited + 192) = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 200) = &unk_285025DE8;
  v44 = *MEMORY[0x277D7CB48];
  *(inited + 224) = v43;
  *(inited + 232) = v44;
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  v45 = inited;
  v46 = *MEMORY[0x277D7CB60];
  v47 = MEMORY[0x277D837D0];
  *(v45 + 264) = MEMORY[0x277D837D0];
  *(v45 + 272) = v46;
  *(v45 + 280) = 0xD000000000000024;
  *(v45 + 288) = 0x800000023E25B130;
  v48 = *MEMORY[0x277D7CCC8];
  *(v45 + 304) = v47;
  *(v45 + 312) = v48;
  v49 = MEMORY[0x277D839B0];
  *(v45 + 320) = 1;
  v50 = *MEMORY[0x277D7CB90];
  *(v45 + 344) = v49;
  *(v45 + 352) = v50;
  v51 = v42;
  v52 = v44;
  v53 = v46;
  v54 = v48;
  v55 = v50;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v192 = v32;
  sub_23E1FC14C();
  v56 = [v209 bundleURL];
  sub_23E1FBF9C();

  v57 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v203 = v45;
  *(v45 + 360) = v58;
  v59 = *MEMORY[0x277D7CBA0];
  *(v45 + 384) = v208;
  *(v45 + 392) = v59;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v206 = swift_allocObject();
  *(v206 + 16) = xmmword_23E224C00;
  v205 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v60 = swift_initStackObject();
  v194 = xmmword_23E224710;
  v61 = MEMORY[0x277D7CDF8];
  *(v60 + 16) = xmmword_23E224710;
  v62 = *v61;
  *(v60 + 32) = *v61;
  *(v60 + 40) = 0xD000000000000016;
  *(v60 + 48) = 0x800000023E24FDA0;
  v63 = *MEMORY[0x277D7CE00];
  v64 = MEMORY[0x277D837D0];
  *(v60 + 64) = MEMORY[0x277D837D0];
  *(v60 + 72) = v63;
  *(v60 + 80) = 0x7463656E6E6F43;
  *(v60 + 88) = 0xE700000000000000;
  v65 = *MEMORY[0x277D7CE38];
  *(v60 + 104) = v64;
  *(v60 + 112) = v65;
  v204 = swift_allocObject();
  v195 = xmmword_23E22A520;
  *(v204 + 16) = xmmword_23E22A520;
  v66 = v62;
  v67 = v63;
  v201 = v66;
  v193 = v67;
  v68 = v59;
  v69 = v65;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v70 = v209;
  v71 = [v209 bundleURL];
  sub_23E1FBF9C();

  v72 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v73 = v204;
  *(v204 + 32) = v74;
  sub_23E1FDCBC();
  v200 = v75;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v76 = [v70 bundleURL];
  sub_23E1FBF9C();

  v77 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v73 + 40) = v78;
  sub_23E1FDCBC();
  v200 = v79;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v80 = v209;
  v81 = [v209 bundleURL];
  sub_23E1FBF9C();

  v82 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v83 = v204;
  *(v204 + 48) = v84;
  sub_23E1FDCBC();
  v200 = v85;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v86 = [v80 bundleURL];
  sub_23E1FBF9C();

  v87 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v83 + 56) = v88;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v89 = v209;
  v90 = [v209 bundleURL];
  sub_23E1FBF9C();

  v91 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v92 = v204;
  *(v204 + 64) = v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  v95 = MEMORY[0x277D7CE70];
  *(v60 + 120) = v92;
  v96 = *v95;
  *(v60 + 144) = v94;
  *(v60 + 152) = v96;
  strcpy((v60 + 160), "WFVPNOperation");
  *(v60 + 175) = -18;
  v97 = *MEMORY[0x277D7CE80];
  *(v60 + 184) = MEMORY[0x277D837D0];
  *(v60 + 192) = v97;
  v98 = v96;
  v99 = v97;
  v100 = v98;
  v101 = v99;
  v198 = v100;
  v199 = v101;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v102 = [v89 bundleURL];
  sub_23E1FBF9C();

  v103 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v104 = v208;
  *(v60 + 224) = v208;
  *(v60 + 200) = v105;
  _s3__C3KeyVMa_0(0);
  v204 = v106;
  v200 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v107 = sub_23E1FDABC();
  v108 = sub_23DF3BE9C(v107);
  *(v206 + 32) = v108;
  v109 = swift_allocObject();
  *(v109 + 16) = v194;
  *(v109 + 32) = v201;
  *(v109 + 40) = 0xD000000000000011;
  *(v109 + 48) = 0x800000023E250E40;
  v110 = MEMORY[0x277D837D0];
  v111 = v193;
  *(v109 + 64) = MEMORY[0x277D837D0];
  *(v109 + 72) = v111;
  *(v109 + 80) = 1;
  v112 = v198;
  *(v109 + 104) = MEMORY[0x277D839B0];
  *(v109 + 112) = v112;
  *(v109 + 120) = 0x616D65446E4F4657;
  *(v109 + 128) = 0xEF65756C6156646ELL;
  v113 = v199;
  *(v109 + 144) = v110;
  *(v109 + 152) = v113;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v114 = [v89 bundleURL];
  sub_23E1FBF9C();

  v115 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v109 + 160) = v116;
  v117 = *MEMORY[0x277D7CEE8];
  *(v109 + 184) = v104;
  *(v109 + 192) = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E0, &qword_23E224C28);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_23E222340;
  v119 = v117;
  v120 = MEMORY[0x277D837D0];
  *(v118 + 32) = sub_23E1FDABC();
  *(v109 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E8, &unk_23E224C30);
  *(v109 + 200) = v118;
  v121 = sub_23E1FDABC();
  v122 = sub_23DF3BE9C(v121);
  *(v206 + 40) = v122;
  v123 = swift_allocObject();
  v124 = MEMORY[0x277D7CE28];
  *(v123 + 16) = xmmword_23E224C10;
  v125 = *v124;
  *(v123 + 32) = v125;
  *(v123 + 40) = 1;
  v126 = v201;
  *(v123 + 64) = MEMORY[0x277D839B0];
  *(v123 + 72) = v126;
  *(v123 + 80) = 0xD000000000000014;
  *(v123 + 88) = 0x800000023E25B2F0;
  v127 = *MEMORY[0x277D7CE08];
  *(v123 + 104) = v120;
  *(v123 + 112) = v127;
  v128 = v125;
  v129 = v127;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v130 = v209;
  v131 = [v209 bundleURL];
  sub_23E1FBF9C();

  v132 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v123 + 120) = v133;
  v134 = v208;
  v135 = v198;
  *(v123 + 144) = v208;
  *(v123 + 152) = v135;
  *(v123 + 160) = 0x4E50564657;
  *(v123 + 168) = 0xE500000000000000;
  v136 = v199;
  *(v123 + 184) = MEMORY[0x277D837D0];
  *(v123 + 192) = v136;
  v137 = sub_23E1FDCBC();
  v201 = v138;
  v202 = v137;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v139 = [v130 bundleURL];
  sub_23E1FBF9C();

  v140 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v123 + 200) = v141;
  v142 = *MEMORY[0x277D7CEC8];
  *(v123 + 224) = v134;
  *(v123 + 232) = v142;
  v143 = v142;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v144 = [v130 bundleURL];
  sub_23E1FBF9C();

  v145 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v123 + 264) = v208;
  *(v123 + 240) = v146;
  v147 = sub_23E1FDABC();
  v148 = sub_23DF3BE9C(v147);
  v149 = v206;
  *(v206 + 48) = v148;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v151 = v203;
  v203[50] = v149;
  v152 = *MEMORY[0x277D7CB98];
  v151[53] = v150;
  v151[54] = v152;
  v206 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v153 = swift_allocObject();
  *(v153 + 16) = v195;
  v208 = v153;
  v205 = "Which VPN? (WFVPN)";
  v154 = v152;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v155 = v209;
  v156 = [v209 bundleURL];
  sub_23E1FBF9C();

  v157 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v159 = v158;
  v160 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v153 + 32) = sub_23DF34C40(0xD00000000000001DLL, v205 | 0x8000000000000000, v159);
  v205 = "} to ${WFVPN} VPN";
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v161 = v155;
  v162 = [v155 bundleURL];
  sub_23E1FBF9C();

  v163 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v165 = v164;
  v166 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v167 = sub_23DF34C40(0xD000000000000020, v205 | 0x8000000000000000, v165);
  v168 = v208;
  *(v208 + 40) = v167;
  v205 = "} from ${WFVPN} VPN";
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v169 = [v161 bundleURL];
  sub_23E1FBF9C();

  v170 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v172 = v171;
  v173 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v168 + 48) = sub_23DF34C40(0xD000000000000033, v205 | 0x8000000000000000, v172);
  v205 = "dValue} for ${WFVPN} VPN";
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v174 = [v161 bundleURL];
  sub_23E1FBF9C();

  v175 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v177 = v176;
  v178 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v168 + 56) = sub_23DF34C40(0xD000000000000026, v205 | 0x8000000000000000, v177);
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v179 = [v161 bundleURL];
  sub_23E1FBF9C();

  v180 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v182 = v181;
  v183 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v184 = sub_23DF34C40(0xD00000000000001CLL, 0x800000023E25B540, v182);
  *(v208 + 64) = v184;
  v185 = v206;
  v186 = sub_23DF333E0();
  v187 = v203;
  v203[55] = v186;
  v188 = *MEMORY[0x277D7CF20];
  v187[58] = v185;
  v187[59] = v188;
  v187[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v187[60] = MEMORY[0x277D84F90];
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v189 = v188;
  v190 = sub_23E1FDABC();
  return sub_23DF3BF9C(v190);
}

id sub_23DF34C40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_23E1FDBDC();

  v6 = [v3 initWithKey:v5 summaryString:a3];

  return v6;
}

uint64_t CMMotionActivity.isEmpty.getter()
{
  if ([v0 stationary] & 1) != 0 || (objc_msgSend(v0, sel_walking) & 1) != 0 || (objc_msgSend(v0, sel_running) & 1) != 0 || (objc_msgSend(v0, sel_cycling) & 1) != 0 || (objc_msgSend(v0, sel_automotive))
  {
    return 0;
  }

  else
  {
    return [v0 unknown] ^ 1;
  }
}

uint64_t CMMotionActivity.debugString.getter()
{
  v1 = [v0 confidence];
  if (v1)
  {
    if (v1 == 2)
    {
      v2 = 0xE400000000000000;
      v3 = 1751607624;
    }

    else if (v1 == 1)
    {
      v2 = 0xE600000000000000;
      v3 = 0x6D756964654DLL;
    }

    else
    {
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E55;
    }
  }

  else
  {
    v2 = 0xE300000000000000;
    v3 = 7827276;
  }

  sub_23E1FE5CC();
  MEMORY[0x23EF044F0](0x3A6E776F6E6B6E55, 0xE900000000000020);
  [v0 unknown];
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_1_22([v0 stationary]);
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_1_22([v0 walking]);
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_1_22([v0 running]);
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_1_22([v0 cycling]);
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_2_21();
  v4 = OUTLINED_FUNCTION_1_22([v0 automotive]);
  if (v5)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x23EF044F0](v4, v6);

  OUTLINED_FUNCTION_2_21();
  MEMORY[0x23EF044F0](v3, v2);

  return 0;
}

void OUTLINED_FUNCTION_0_26()
{

  JUMPOUT(0x23EF044F0);
}

uint64_t OUTLINED_FUNCTION_1_22(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void OUTLINED_FUNCTION_2_21()
{

  JUMPOUT(0x23EF044F0);
}

void OUTLINED_FUNCTION_3_13()
{

  JUMPOUT(0x23EF044F0);
}

id sub_23DF3505C()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0x7463414C52554657;
  *(inited + 48) = 0xEB000000006E6F69;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v100 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v99 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v97 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222340;
  v101 = v3;
  v21 = v7;
  v22 = *MEMORY[0x277D7CC30];
  *(v20 + 32) = *MEMORY[0x277D7CC30];
  v23 = v19;
  v24 = v22;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v25 = [v100 bundleURL];
  sub_23E1FBF9C();

  v26 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v20 + 64) = v99;
  *(v20 + 40) = v27;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v28 = sub_23E1FDABC();
  v29 = v97;
  *(inited + 120) = sub_23DF3BE54(v28);
  v30 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v29;
  *(inited + 152) = v30;
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v31 = *MEMORY[0x277D7CB60];
  v32 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v31;
  v33 = MEMORY[0x277D7CB58];
  *(inited + 200) = 1802398060;
  *(inited + 208) = 0xE400000000000000;
  v34 = *v33;
  *(inited + 224) = v32;
  *(inited + 232) = v34;
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  v35 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v32;
  *(inited + 272) = v35;
  v36 = v30;
  v37 = v31;
  v38 = v34;
  v39 = v35;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v40 = v100;
  v41 = [v100 bundleURL];
  sub_23E1FBF9C();

  v42 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 280) = v43;
  v44 = *MEMORY[0x277D7CDD0];
  *(inited + 304) = v99;
  *(inited + 312) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_23E222350;
  *(v45 + 32) = 0x75736F6C63736944;
  *(v45 + 40) = 0xEF6C6576654C6572;
  *(v45 + 48) = 0x63696C627550;
  *(v45 + 56) = 0xE600000000000000;
  *(v45 + 72) = MEMORY[0x277D837D0];
  *(v45 + 80) = 0x656C7069746C754DLL;
  *(v45 + 88) = 0xE800000000000000;
  v46 = MEMORY[0x277D839B0];
  *(v45 + 96) = 1;
  *(v45 + 120) = v46;
  *(v45 + 128) = 0x614E74757074754FLL;
  *(v45 + 136) = 0xEA0000000000656DLL;
  v47 = v44;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v48 = [v40 bundleURL];
  sub_23E1FBF9C();

  v49 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v50 = v21;
  sub_23DE477A0();
  *(v45 + 144) = v51;
  *(v45 + 168) = v99;
  *(v45 + 176) = 0x7365707954;
  *(v45 + 184) = 0xE500000000000000;
  *(v45 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v45 + 192) = &unk_285025E98;
  v52 = MEMORY[0x277D837D0];
  v53 = sub_23E1FDABC();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 320) = v53;
  v55 = *MEMORY[0x277D7CBA0];
  *(inited + 344) = v54;
  *(inited + 352) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_23E2235B0;
  v96[2] = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_23E224710;
  v57 = *MEMORY[0x277D7CDE0];
  *(v56 + 32) = *MEMORY[0x277D7CDE0];
  *(v56 + 40) = 1;
  v58 = *MEMORY[0x277D7CDF8];
  *(v56 + 64) = MEMORY[0x277D839B0];
  *(v56 + 72) = v58;
  v59 = MEMORY[0x277D7CE70];
  strcpy((v56 + 80), "WFURLParameter");
  *(v56 + 95) = -18;
  v60 = *v59;
  *(v56 + 104) = v52;
  *(v56 + 112) = v60;
  strcpy((v56 + 120), "WFURLActionURL");
  *(v56 + 135) = -18;
  v61 = *MEMORY[0x277D7CE80];
  *(v56 + 144) = v52;
  *(v56 + 152) = v61;
  v62 = v55;
  v63 = v57;
  v64 = v58;
  v65 = v60;
  v66 = v61;
  sub_23E1FDCBC();
  v96[0] = v67;
  sub_23E1FDCBC();
  v68 = v50;
  sub_23E1FC14C();
  v69 = v100;
  v70 = [v100 bundleURL];
  sub_23E1FBF9C();

  v71 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v56 + 160) = v72;
  v73 = *MEMORY[0x277D7CEA8];
  v74 = v99;
  *(v56 + 184) = v99;
  *(v56 + 192) = v73;
  v75 = v73;
  v96[0] = sub_23E1FDCBC();
  sub_23E1FDCBC();
  v96[1] = v68;
  sub_23E1FC14C();
  v76 = [v69 bundleURL];
  sub_23E1FBF9C();

  v77 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v56 + 224) = v74;
  *(v56 + 200) = v78;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v79 = sub_23E1FDABC();
  v80 = sub_23DF3BE9C(v79);
  v81 = v97;
  *(v97 + 32) = v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 360) = v81;
  v83 = *MEMORY[0x277D7CB98];
  *(inited + 384) = v82;
  *(inited + 392) = v83;
  v84 = v83;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v85 = [v100 bundleURL];
  sub_23E1FBF9C();

  v86 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v88 = v87;
  v89 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v90 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v91 = MEMORY[0x277D7CB78];
  *(inited + 400) = v89;
  v92 = *v91;
  *(inited + 424) = v90;
  *(inited + 432) = v92;
  *(inited + 464) = MEMORY[0x277D839B0];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v93 = v92;
  v94 = sub_23E1FDABC();
  return sub_23DF3BF9C(v94);
}

id sub_23DF35C78()
{
  v0 = sub_23E1FC77C();
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224700;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E2536A0;
  v7 = *MEMORY[0x277D7CB10];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v10 = sub_23E1FDABC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 80) = v10;
  v12 = *MEMORY[0x277D7CB28];
  *(inited + 104) = v11;
  *(inited + 112) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v14 = MEMORY[0x277D7CB50];
  *(inited + 120) = &unk_285025F08;
  v15 = *v14;
  *(inited + 144) = v13;
  *(inited + 152) = v15;
  *(inited + 184) = v6;
  *(inited + 160) = 1769105747;
  *(inited + 168) = 0xE400000000000000;
  v16 = v12;
  v17 = v15;
  v18 = sub_23E1FDBDC();
  *(inited + 224) = v6;
  *(inited + 192) = v18;
  *(inited + 200) = 0xD000000000000060;
  *(inited + 208) = 0x800000023E25B730;
  *(inited + 232) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v19 = swift_initStackObject();
  v32 = xmmword_23E222340;
  *(v19 + 16) = xmmword_23E222340;
  *(v19 + 32) = 0x6574617473;
  *(v19 + 40) = 0xE500000000000000;
  sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v20 = swift_initStackObject();
  *(v20 + 16) = v32;
  v21 = *MEMORY[0x277D7CE70];
  *(v20 + 64) = v6;
  *(v20 + 32) = v21;
  *(v20 + 40) = 0x65756C61566E4FLL;
  *(v20 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_23DE71CF8(&qword_280DAE748, _s3__C3KeyVMa_0);
  v22 = v21;
  v23 = sub_23E1FDABC();
  *(v19 + 48) = sub_23DF3BE9C(v23);
  v24 = sub_23E1FDABC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  *(inited + 240) = v24;
  v26 = *MEMORY[0x277D7CF20];
  *(inited + 264) = v25;
  *(inited + 272) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_23E2235B0;
  *v3 = 2;
  (*(v33 + 104))(v3, *MEMORY[0x277D7BED8], v34);
  v28 = objc_allocWithZone(sub_23E1FC79C());
  v29 = v26;
  *(v27 + 32) = sub_23E1FC78C();
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(inited + 280) = v27;
  type metadata accessor for Key(0);
  sub_23DE71CF8(&qword_280DAEDE0, type metadata accessor for Key);
  v30 = sub_23E1FDABC();
  return sub_23DF3BF9C(v30);
}

uint64_t sub_23DF36144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD50, &qword_23E22A9F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_23E1FDEFC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_23E22AA00;
  v10[5] = v9;
  sub_23DF37A18(0, 0, v7, &unk_23E22AA10, v10);
}

uint64_t sub_23DF36254()
{
  OUTLINED_FUNCTION_23();
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = sub_23E1FBFBC();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_23E1FDECC();
  v1[7] = sub_23E1FDEBC();
  v6 = sub_23E1FDE6C();
  v1[8] = v6;
  v1[9] = v5;

  return MEMORY[0x2822009F8](sub_23DF36350, v6, v5);
}

uint64_t sub_23DF36350()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[2];
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v2 = sub_23E1FE3FC();
  if (v2)
  {
    v3 = v2;
    sub_23E1FDC0C();

    v2 = 0;
  }

  v4 = v0[6];
  v5 = v0[3];
  sub_23DF366B8(v2, 0);

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_23DF36470;
  v7 = v0[6];
  v8 = v0[3];

  return sub_23DF36828(v7);
}

uint64_t sub_23DF36470()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_23DF36630;
  }

  else
  {
    v7 = sub_23DF365A8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23DF365A8()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];

  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23DF36630()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];

  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_19();
  v6 = v0[11];

  return v5();
}

void sub_23DF366B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C750, &qword_23E224B18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    *(inited + 32) = 0x686372616573;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    sub_23E1FB7BC();
    sub_23E1FDABC();
    v6 = sub_23E1FDA9C();

    v7 = [v4 passwordManagerURLWithParameters_];

    sub_23E1FBF9C();
  }

  else
  {
    v8 = [objc_opt_self() passwordManagerURL];
    sub_23E1FBF9C();
  }
}

uint64_t sub_23DF36828(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_23E1FDECC();
  v1[4] = sub_23E1FDEBC();
  v3 = sub_23E1FDE6C();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_23DF368C4, v3, v2);
}

uint64_t sub_23DF368C4()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_23E1FDEBC();
  v0[7] = v3;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_23DF369C8;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v3, v7, 0x284C52556E65706FLL, 0xEB00000000293A5FLL, sub_23DF38020, v4, v8);
}

uint64_t sub_23DF369C8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = v2[9];
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_23DF36B38;
  }

  else
  {
    v10 = v3[7];
    v11 = v3[8];

    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_23DF36ADC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23DF36ADC()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DF36B38()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[4];

  OUTLINED_FUNCTION_19();
  v5 = v0[10];

  return v4();
}

uint64_t sub_23DF36C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DF36CCC, v5, v4);
}

uint64_t sub_23DF36CCC()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23DEC7D20;
  v8 = v0[4];

  return sub_23DF36254();
}

void sub_23DF36D84(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB80, &qword_23E22AA40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = sub_23E1FBFBC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v14;
  v25 = sub_23DE38DA8(0, &qword_27E32DB88, 0x277D7C558);
  (*(v11 + 16))(v14, a2, v10);
  v15 = *(v5 + 16);
  v15(v9, a1, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = *(v5 + 32);
  v18(v17 + v16, v9, v4);
  v19 = v26;
  v15(v26, v23, v4);
  v20 = swift_allocObject();
  v18(v20 + v16, v19, v4);
  v21 = sub_23DF370FC(v24, 0, 0, 0, 0, sub_23DF38028, v17, sub_23DF38148, v20);
  v22 = [objc_opt_self() sharedManager];
  [v22 performRequest_];
}

void *sub_23DF370A4(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB80, &qword_23E22AA40);
    return sub_23E1FDE7C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23DF370FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9)
{
  v16 = sub_23E1FBF6C();
  if (a5)
  {
    v17 = sub_23E1FDBDC();
  }

  else
  {
    v17 = 0;
  }

  if (!a6)
  {
    v18 = 0;
    if (!a8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = a6;
  v27 = a7;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_23DF373EC;
  v25 = &block_descriptor_35;
  v18 = _Block_copy(&v22);

  if (a8)
  {
LABEL_6:
    v26 = a8;
    v27 = a9;
    v22 = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_23DF37484;
    v25 = &block_descriptor_18;
    a8 = _Block_copy(&v22);
  }

LABEL_7:
  v19 = [swift_getObjCClassFromMetadata() requestWithURL:v16 scheme:a2 userInterface:a3 bundleIdentifier:v17 successHandler:v18 failureHandler:a8];
  _Block_release(a8);
  _Block_release(v18);

  swift_unknownObjectRelease();
  v20 = sub_23E1FBFBC();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v19;
}

id sub_23DF372F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v9 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v10 = sub_23E1FDA9C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_definition_serializedParameters_, v9, a3, v10);

  if (v11)
  {
  }

  return v11;
}

uint64_t sub_23DF373EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_23E1FDAAC();
  }

  else
  {
    v6 = 0;
  }

  sub_23E1FB7CC();
  v5(v6, a3);
}

void sub_23DF37484(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_23E1FB7CC();
  v5 = a2;
  v4(a2);
}

uint64_t sub_23DF375D4()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE47040;

  return sub_23DF36C30(v2, v3, v4);
}

uint64_t sub_23DF37684(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23DE4D8A8;

  return v7();
}

uint64_t sub_23DF3776C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23DE4D8A8;

  return sub_23DF37684(v2, v3, v5);
}

uint64_t sub_23DF3782C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23DE47040;

  return v8();
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23DF37954(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_5_13(v7);
  *v8 = v9;
  v8[1] = sub_23DE4D8A8;

  return sub_23DF3782C(a1, v3, v4, v6);
}

uint64_t sub_23DF37A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD50, &qword_23E22A9F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_23DE58B60(a3, v25 - v11);
  v13 = sub_23E1FDEFC();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_23DF37CB4(v12);
  }

  else
  {
    sub_23E1FDEEC();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_23E1FDE6C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23E1FDC9C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_23E1FB7CC();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23DF37CB4(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23DF37CB4(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23DF37CB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD50, &qword_23E22A9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DF37D1C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DF37E14;

  return v7(a1);
}

uint64_t sub_23DF37E14()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23DF37EF8()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_13(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_16(v4);

  return v7(v6);
}

uint64_t sub_23DF37F8C()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_13(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_16(v4);

  return v7(v6);
}

uint64_t sub_23DF38028()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB80, &qword_23E22AA40) - 8) + 80);

  return sub_23DF37068();
}

uint64_t objectdestroy_28Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB80, &qword_23E22AA40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void *sub_23DF38148(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB80, &qword_23E22AA40) - 8) + 80);

  return sub_23DF370A4(a1);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

id sub_23DF38248()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x800000023E25B7F0;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v88 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v87 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v84 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_23E222370;
  v19 = *MEMORY[0x277D7CC20];
  *(v18 + 32) = *MEMORY[0x277D7CC20];
  v20 = v17;
  v21 = v19;
  sub_23E1FDCBC();
  *&v83 = v22;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v23 = v88;
  v24 = [v88 bundleURL];
  v86 = v3;
  sub_23E1FBF9C();

  v25 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v18 + 40) = v26;
  v27 = *MEMORY[0x277D7CC30];
  v28 = v87;
  *(v18 + 64) = v87;
  *(v18 + 72) = v27;
  v29 = v27;
  *&v83 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v30 = [v23 bundleURL];
  sub_23E1FBF9C();

  v31 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v18 + 104) = v28;
  *(v18 + 80) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v33 = sub_23E1FDABC();
  v34 = v84;
  v35 = sub_23DF3BE54(v33);
  v36 = MEMORY[0x277D7CB48];
  *(inited + 120) = v35;
  v37 = *v36;
  *(inited + 144) = v34;
  *(inited + 152) = v37;
  *(inited + 160) = 0x65676E61724FLL;
  *(inited + 168) = 0xE600000000000000;
  v38 = *MEMORY[0x277D7CB60];
  v39 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v38;
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x800000023E24FCE0;
  v40 = *MEMORY[0x277D7CB90];
  *(inited + 224) = v39;
  *(inited + 232) = v40;
  v41 = v39;
  v42 = v37;
  v43 = v38;
  v44 = v40;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v45 = [v88 bundleURL];
  sub_23E1FBF9C();

  v46 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 240) = v47;
  v48 = *MEMORY[0x277D7CDD0];
  *(inited + 264) = v87;
  *(inited + 272) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v49 = swift_initStackObject();
  v83 = xmmword_23E222350;
  *(v49 + 16) = xmmword_23E222350;
  *(v49 + 32) = 0x75736F6C63736944;
  *(v49 + 40) = 0xEF6C6576654C6572;
  *(v49 + 48) = 0x63696C627550;
  *(v49 + 56) = 0xE600000000000000;
  *(v49 + 72) = v41;
  *(v49 + 80) = 0x656C7069746C754DLL;
  *(v49 + 88) = 0xE800000000000000;
  v50 = MEMORY[0x277D839B0];
  *(v49 + 96) = 0;
  *(v49 + 120) = v50;
  *(v49 + 128) = 0x614E74757074754FLL;
  *(v49 + 136) = 0xEA0000000000656DLL;
  v51 = v48;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v52 = [v88 bundleURL];
  sub_23E1FBF9C();

  v53 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v49 + 144) = v54;
  *(v49 + 168) = v87;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 184) = 0xE500000000000000;
  *(v49 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v49 + 192) = &unk_285025F38;
  v55 = MEMORY[0x277D837D0];
  v56 = sub_23E1FDABC();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 280) = v56;
  v58 = *MEMORY[0x277D7CBA0];
  *(inited + 304) = v57;
  *(inited + 312) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_23E2235B0;
  v82[1] = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v59 = swift_initStackObject();
  *(v59 + 16) = v83;
  v60 = *MEMORY[0x277D7CE10];
  *(v59 + 32) = *MEMORY[0x277D7CE10];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB90, &qword_23E22AA48);
  *(v59 + 40) = &unk_285025F68;
  v62 = *MEMORY[0x277D7CDF8];
  *(v59 + 64) = v61;
  *(v59 + 72) = v62;
  *(v59 + 80) = 0xD000000000000015;
  *(v59 + 88) = 0x800000023E25B900;
  v63 = *MEMORY[0x277D7CE70];
  v64 = v55;
  *(v59 + 104) = v55;
  *(v59 + 112) = v63;
  *(v59 + 120) = 0x736D6574494657;
  *(v59 + 128) = 0xE700000000000000;
  v65 = *MEMORY[0x277D7CE80];
  *(v59 + 144) = v64;
  *(v59 + 152) = v65;
  v66 = v58;
  v67 = v60;
  v68 = v62;
  v69 = v63;
  v70 = v65;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v71 = [v88 bundleURL];
  sub_23E1FBF9C();

  v72 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v59 + 184) = v87;
  *(v59 + 160) = v73;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v74 = sub_23E1FDABC();
  v75 = sub_23DF3BE9C(v74);
  v76 = v84;
  *(v84 + 32) = v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 320) = v76;
  v78 = *MEMORY[0x277D7CB78];
  *(inited + 344) = v77;
  *(inited + 352) = v78;
  *(inited + 384) = MEMORY[0x277D839B0];
  *(inited + 360) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v79 = v78;
  v80 = sub_23E1FDABC();
  return sub_23DF3BF9C(v80);
}

void sub_23DF38D2C()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23E1FBEEC();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v11 = sub_23E1FC1DC();
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_12();
  v15 = sub_23E1FDBCC();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_5();
  v19 = sub_23E1FBF0C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_8();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v8 + 104))(v0, *MEMORY[0x277CC9110], v5);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
  sub_23E1FB8EC();
  OUTLINED_FUNCTION_76();
}

void sub_23DF38F30()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_4();
  v39 = sub_23E1FBEEC();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_5();
  v11 = sub_23E1FC1DC();
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v15 = sub_23E1FDBCC();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  v43 = sub_23E1FBF0C();
  v19 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC28, &qword_23E22AF78);
  v20 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC30, &qword_23E22AF80) - 8);
  v41 = *(*v20 + 72);
  v21 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_23E222370;
  v22 = v44 + v21;
  v37 = v20[14];
  *(v44 + v21) = 0;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v38 = *MEMORY[0x277CC9110];
  v40 = *(v9 + 104);
  v40(v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v43);
  v26 = sub_23E1FB75C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  OUTLINED_FUNCTION_15_12();
  v30 = (v22 + v41);
  v42 = v20[14];
  *v30 = 1;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v40)(v0, v38, v39);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v43);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v26);
  OUTLINED_FUNCTION_15_12();
  sub_23E1FB77C();
  sub_23DF39870();
  sub_23E1FDABC();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF39338()
{
  v0 = sub_23E1FE6EC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_23DF39390()
{
  result = qword_280DAF1F8;
  if (!qword_280DAF1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1F8);
  }

  return result;
}

uint64_t sub_23DF393E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23DF39338();
  *a2 = result;
  return result;
}

unint64_t sub_23DF3946C()
{
  result = qword_280DAF238;
  if (!qword_280DAF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF238);
  }

  return result;
}

unint64_t sub_23DF394C4()
{
  result = qword_280DAF210;
  if (!qword_280DAF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF210);
  }

  return result;
}

unint64_t sub_23DF3951C()
{
  result = qword_280DAF1F0;
  if (!qword_280DAF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1F0);
  }

  return result;
}

unint64_t sub_23DF39574()
{
  result = qword_280DAF220;
  if (!qword_280DAF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF220);
  }

  return result;
}

unint64_t sub_23DF395C8()
{
  result = qword_280DAF218;
  if (!qword_280DAF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF218);
  }

  return result;
}

unint64_t sub_23DF3961C()
{
  result = qword_280DAF230;
  if (!qword_280DAF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF230);
  }

  return result;
}

unint64_t sub_23DF39674()
{
  result = qword_280DAF228;
  if (!qword_280DAF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF228);
  }

  return result;
}

unint64_t sub_23DF3971C()
{
  result = qword_280DAE578;
  if (!qword_280DAE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE578);
  }

  return result;
}

uint64_t sub_23DF39770(uint64_t a1)
{
  v2 = sub_23DF3971C();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23DF397C0()
{
  result = qword_280DAF208;
  if (!qword_280DAF208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF208);
  }

  return result;
}

unint64_t sub_23DF39818()
{
  result = qword_280DAF1E8;
  if (!qword_280DAF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1E8);
  }

  return result;
}

unint64_t sub_23DF39870()
{
  result = qword_280DAF200;
  if (!qword_280DAF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF200);
  }

  return result;
}

uint64_t sub_23DF398C8(uint64_t a1)
{
  v2 = sub_23DF39674();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23DF39918()
{
  result = qword_280DAF1D0;
  if (!qword_280DAF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1D0);
  }

  return result;
}

unint64_t sub_23DF39970()
{
  result = qword_280DAF1E0;
  if (!qword_280DAF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1E0);
  }

  return result;
}

uint64_t sub_23DF399FC()
{
  v0 = sub_23E1FBEEC();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = sub_23E1FC1DC();
  v10 = OUTLINED_FUNCTION_25(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v13 = sub_23E1FDBCC();
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_12();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v3 + 104))(v8, *MEMORY[0x277CC9110], v0);
  OUTLINED_FUNCTION_2_5();
  return sub_23E1FBF1C();
}

void sub_23DF39B78()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_4();
  v5 = sub_23E1FBEEC();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v11 = sub_23E1FC1DC();
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_12();
  v15 = sub_23E1FDBCC();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_5();
  v19 = sub_23E1FBF0C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v36 = *MEMORY[0x277CC9110];
  v22 = *(v8 + 104);
  v22(v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C600, &qword_23E224590);
  v26 = *(v20 + 72);
  v27 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  *(swift_allocObject() + 16) = xmmword_23E22AA50;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v22)(v0, v36, v5);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v28 = OUTLINED_FUNCTION_36_5();
  v22(v28);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v29 = OUTLINED_FUNCTION_36_5();
  v22(v29);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v30 = OUTLINED_FUNCTION_36_5();
  v22(v30);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v22)(v0, v36, v5);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v22)(v0, v36, v5);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v22)(v0, v36, v5);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v22)(v0, v36, v5);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v31 = OUTLINED_FUNCTION_8_9();
  v22(v31);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v32 = OUTLINED_FUNCTION_8_9();
  v22(v32);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v33 = OUTLINED_FUNCTION_8_9();
  v22(v33);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v34 = OUTLINED_FUNCTION_8_9();
  v22(v34);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v22)(v0, v36, v5);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v22)(v0, v36, v5);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v22)(v0, v36, v5);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_11_13();
  sub_23E1FB69C();
  v35 = sub_23E1FB67C();
  OUTLINED_FUNCTION_9_0(v35);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF3A2F4()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBC0, &qword_23E22AED8);
  v2 = sub_23DF3BD40();
  v3 = sub_23DE66434(&qword_27E32DBC8, &qword_27E32DBC0, &qword_23E22AED8);

  return MEMORY[0x28210C568](KeyPath, sub_23DF3A3C0, 0, v1, v2, v3);
}

uint64_t sub_23DF3A3C0@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBD0, &qword_23E22AEE0);
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v27 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBD8, &qword_23E22AEE8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v25 = &v21 - v12;
  v32 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBE0, &qword_23E22AEF0);
  v23 = sub_23DF3BD40();
  sub_23DF3961C();
  sub_23DE66434(&qword_27E32DBE8, &qword_27E32DBE0, &qword_23E22AEF0);
  v24 = v13;
  sub_23E1FB9AC();
  sub_23DE66434(&qword_27E32DBF0, &qword_27E32DBD8, &qword_23E22AEE8);
  v14 = v7;
  sub_23E1FB91C();
  v22 = *(v31 + 8);
  v31 += 8;
  v22(v11, v7);
  v15 = v26;
  sub_23E1FB9EC();
  sub_23DE66434(&qword_27E32DBF8, &qword_27E32DBD0, &qword_23E22AEE0);
  v16 = v27;
  v17 = v28;
  sub_23E1FB91C();
  v18 = *(v29 + 8);
  v18(v15, v17);
  v19 = v25;
  sub_23E1FB90C();
  v18(v16, v17);
  return (v22)(v19, v14);
}

uint64_t sub_23DF3A7A0@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC00, &qword_23E22AEF8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC08, &qword_23E22AF00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBE0, &qword_23E22AEF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_23DF3BD40();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC10, &qword_23E22AF08);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC20, &unk_23E22AF68);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC18, &qword_23E22AF38);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  sub_23E1FB7DC();
  v13 = sub_23DE66434(&qword_27E32DBE8, &qword_27E32DBE0, &qword_23E22AEF0);
  MEMORY[0x23EF02050](v10, &type metadata for ToggleCellularPlanAction, v5, v13);
  v14 = *(v6 + 8);
  v14(v10, v5);
  MEMORY[0x23EF02040](v12, &type metadata for ToggleCellularPlanAction, v5, v13);
  return (v14)(v12, v5);
}

uint64_t sub_23DF3AB38@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC00, &qword_23E22AEF8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC08, &qword_23E22AF00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBE0, &qword_23E22AEF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_23DF3BD40();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC10, &qword_23E22AF08);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DC18, &qword_23E22AF38);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  sub_23E1FB7DC();
  v13 = sub_23DE66434(&qword_27E32DBE8, &qword_27E32DBE0, &qword_23E22AEF0);
  MEMORY[0x23EF02050](v10, &type metadata for ToggleCellularPlanAction, v5, v13);
  v14 = *(v6 + 8);
  v14(v10, v5);
  MEMORY[0x23EF02040](v12, &type metadata for ToggleCellularPlanAction, v5, v13);
  return (v14)(v12, v5);
}

uint64_t sub_23DF3AE84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  v4 = sub_23E1FC7FC();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  v13 = *MEMORY[0x277D7A2B8];
  *v12 = sub_23E1FDC1C();
  v12[1] = v14;
  (*(v7 + 104))(v12, *MEMORY[0x277D7BF38], v4);
  sub_23E1FC82C();
  v15 = sub_23E1FC81C();
  OUTLINED_FUNCTION_9_0(v15);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v16 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DF3B030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v4[44] = a3;
  v4[45] = a4;
  v4[42] = a1;
  v4[43] = a2;
  v5 = sub_23E1FD03C();
  v4[46] = v5;
  v6 = *(v5 - 8);
  v4[47] = v6;
  v7 = *(v6 + 64) + 15;
  v4[48] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23DF3B120, 0, 0);
}

uint64_t sub_23DF3B120()
{
  v38 = v0;
  v37[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 344);
  sub_23E1FB5DC();
  v2 = *(v0 + 24);
  if (!v2)
  {
    sub_23DE99EEC();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
LABEL_11:
    v26 = *(v0 + 384);

    v27 = *(v0 + 8);
    v28 = *MEMORY[0x277D85DE8];
    goto LABEL_12;
  }

  v3 = *(v0 + 32);
  *(v0 + 88) = *(v0 + 16);
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  v4 = *(v0 + 56);
  *(v0 + 112) = *(v0 + 40);
  *(v0 + 128) = v4;
  *(v0 + 144) = *(v0 + 72);
  sub_23DED4C08((v0 + 88));
  if (!v5)
  {
    v14 = *(v0 + 384);
    v15 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    memcpy((v0 + 160), (v0 + 16), 0x48uLL);
    sub_23DE99F40(v0 + 160, v0 + 232);
    v16 = sub_23E1FD02C();
    v17 = sub_23E1FE1BC();
    sub_23DF3BD94(v0 + 16);
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 376);
    v19 = *(v0 + 384);
    v21 = *(v0 + 368);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37[0] = v23;
      *v22 = 136315138;
      sub_23E1FB55C();
      v24 = sub_23DE56B40(*(v0 + 304), *(v0 + 312), v37);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_23DE30000, v16, v17, "Could not find cellular plan with matching label %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23EF074C0](v23, -1, -1);
      MEMORY[0x23EF074C0](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    sub_23DE99EEC();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  v6 = v5;
  v7 = *(v0 + 352);
  v8 = [objc_allocWithZone(WFCellularPlansManager) init];
  sub_23E1FB5DC();
  if (*(v0 + 392))
  {
    v9 = [v6 isActive];
    *(v0 + 320) = 0;
    v10 = [v8 setPlanStatus:v9 ^ 1 forPlan:v6 error:v0 + 320];
    v11 = *(v0 + 320);
    if (!v10)
    {
LABEL_5:
      v12 = v11;
      sub_23E1FBECC();

      swift_willThrow();
LABEL_10:
      sub_23DF3BD94(v0 + 16);
      goto LABEL_11;
    }
  }

  else
  {
    v30 = *(v0 + 360);
    sub_23E1FB5DC();
    v31 = *(v0 + 393);
    *(v0 + 328) = 0;
    v32 = [v8 setPlanStatus:v31 forPlan:v6 error:v0 + 328];
    v11 = *(v0 + 328);
    if ((v32 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v33 = *(v0 + 384);
  v34 = *(v0 + 336);
  v35 = v11;
  sub_23E1FB54C();

  sub_23DF3BD94(v0 + 16);

  v27 = *(v0 + 8);
  v36 = *MEMORY[0x277D85DE8];
LABEL_12:

  return v27();
}

void sub_23DF3B4C0()
{
  OUTLINED_FUNCTION_90();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA58, &unk_23E229D50);
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_16_4();
  v78 = v4;
  v5 = sub_23E1FB84C();
  v86 = OUTLINED_FUNCTION_6_0(v5);
  v87 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_15();
  v85 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  v17 = v72 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v21);
  v83 = sub_23E1FBEEC();
  v22 = *(v83 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_15();
  v26 = v25 - v24;
  v27 = sub_23E1FC1DC();
  v28 = OUTLINED_FUNCTION_25(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15();
  v31 = sub_23E1FDBCC();
  v32 = OUTLINED_FUNCTION_25(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_15();
  v35 = sub_23E1FBF0C();
  v76 = v35;
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_12();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA68, &qword_23E22AE90);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v81 = *MEMORY[0x277CC9110];
  v37 = *(v22 + 104);
  v82 = v22 + 104;
  v84 = v37;
  v79 = v26;
  v37(v26);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v35);
  v41 = sub_23E1FB51C();
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0;
  v72[1] = v17;
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v41);
  v73 = *MEMORY[0x277CBA308];
  v48 = v86;
  v49 = *(v87 + 104);
  v87 += 104;
  v80 = v49;
  (v49)(v85);
  sub_23DE99E98();
  v77 = sub_23E1FB61C();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DBB8, &unk_23E22AE98);
  OUTLINED_FUNCTION_13_8();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v84(v79, v81, v83);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_18_0();
  v50 = v76;
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v76);
  LOBYTE(v88) = 0;
  OUTLINED_FUNCTION_18_0();
  v75 = v41;
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v41);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v41);
  v60 = v85;
  v61 = v73;
  v80(v85, v73, v48);
  sub_23DF3971C();
  v74 = sub_23E1FB60C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA70, &qword_23E226300);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v84(v79, v81, v83);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v50);
  LOBYTE(v88) = 1;
  sub_23E1FDE4C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v75);
  v80(v60, v61, v86);
  sub_23E1FB64C();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF3BB34(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23DE662F0;

  return sub_23DF3B030(a1, v4, v5, v6);
}

void sub_23DF3BBE8(void *a1@<X8>)
{
  sub_23DF3B4C0();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t sub_23DF3BC18(uint64_t a1)
{
  v2 = sub_23DF3BD40();

  return MEMORY[0x28210B538](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for ToggleCellularPlanAction.ToggleCellularPlanOperation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DF3BD40()
{
  result = qword_280DAF1D8;
  if (!qword_280DAF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF1D8);
  }

  return result;
}

uint64_t sub_23DF3BD94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA80, &qword_23E229D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return sub_23E1FBF1C();
}

uint64_t OUTLINED_FUNCTION_11_13()
{

  return sub_23E1FBF1C();
}

id sub_23DF3BEE4(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  a2(0);
  sub_23DE5D888(a3, a4);
  v8 = sub_23E1FDA9C();

  v9 = [v7 initWithDictionary_];

  return v9;
}

id sub_23DF3C018()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v153 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  strcpy((inited + 40), "WFCountAction");
  *(inited + 54) = -4864;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v168 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v16 = v3;
  sub_23DE477A0();
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v166 = v19;
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v165 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_23E222370;
  v22 = *MEMORY[0x277D7CC20];
  *(v21 + 32) = *MEMORY[0x277D7CC20];
  v23 = v20;
  v24 = v22;
  v164 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v25 = v168;
  v26 = [v168 bundleURL];
  v167 = v16;
  sub_23E1FBF9C();

  v27 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v28 = v7;
  sub_23DE477A0();
  *(v21 + 40) = v29;
  v30 = *MEMORY[0x277D7CC30];
  v31 = v166;
  *(v21 + 64) = v166;
  *(v21 + 72) = v30;
  v32 = v30;
  v164 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v33 = [v25 bundleURL];
  sub_23E1FBF9C();

  v34 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v35 = v28;
  sub_23DE477A0();
  *(v21 + 104) = v31;
  *(v21 + 80) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v37 = sub_23E1FDABC();
  v38 = v165;
  *(inited + 120) = sub_23DF3BEE4(v37, type metadata accessor for DescriptionKey, &unk_27E32BA50, type metadata accessor for DescriptionKey);
  v39 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v38;
  *(inited + 152) = v39;
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v40 = *MEMORY[0x277D7CB60];
  v41 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v40;
  *(inited + 200) = 7173491;
  *(inited + 208) = 0xE300000000000000;
  v42 = *MEMORY[0x277D7CCC0];
  *(inited + 224) = v41;
  *(inited + 232) = v42;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v43 = swift_initStackObject();
  v160 = xmmword_23E222350;
  *(v43 + 16) = xmmword_23E222350;
  v44 = v35;
  *(v43 + 32) = 0x656C7069746C754DLL;
  *(v43 + 40) = 0xE800000000000000;
  v45 = MEMORY[0x277D839B0];
  *(v43 + 48) = 1;
  *(v43 + 72) = v45;
  strcpy((v43 + 80), "ParameterKey");
  *(v43 + 93) = 0;
  *(v43 + 94) = -5120;
  *(v43 + 96) = 0x7475706E49;
  *(v43 + 104) = 0xE500000000000000;
  *(v43 + 120) = v41;
  *(v43 + 128) = 0x6465726975716552;
  *(v43 + 136) = 0xE800000000000000;
  *(v43 + 144) = 1;
  *(v43 + 168) = v45;
  *(v43 + 176) = 0x7365707954;
  *(v43 + 184) = 0xE500000000000000;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v43 + 216) = v165;
  *(v43 + 192) = &unk_285026050;
  v46 = v39;
  v47 = v40;
  v48 = v42;
  v49 = sub_23E1FDABC();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v164 = v50;
  *(inited + 240) = v49;
  v51 = *MEMORY[0x277D7CB88];
  *(inited + 264) = v50;
  *(inited + 272) = v51;
  *(inited + 280) = 1;
  v52 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v45;
  *(inited + 312) = v52;
  v53 = v51;
  v54 = v52;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v55 = v168;
  v56 = [v168 bundleURL];
  sub_23E1FBF9C();

  v57 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v58 = v44;
  sub_23DE477A0();
  *(inited + 320) = v59;
  v60 = *MEMORY[0x277D7CDD0];
  v61 = v166;
  *(inited + 344) = v166;
  *(inited + 352) = v60;
  v62 = swift_allocObject();
  *(v62 + 16) = v160;
  *(v62 + 32) = 0x75736F6C63736944;
  *(v62 + 40) = 0xEF6C6576654C6572;
  *(v62 + 48) = 0x63696C627550;
  *(v62 + 56) = 0xE600000000000000;
  *(v62 + 72) = MEMORY[0x277D837D0];
  *(v62 + 80) = 0x656C7069746C754DLL;
  *(v62 + 88) = 0xE800000000000000;
  *(v62 + 96) = 0;
  *(v62 + 120) = MEMORY[0x277D839B0];
  *(v62 + 128) = 0x614E74757074754FLL;
  *(v62 + 136) = 0xEA0000000000656DLL;
  v63 = v60;
  v162 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  v163 = v58;
  sub_23E1FC14C();
  v64 = [v55 bundleURL];
  sub_23E1FBF9C();

  v65 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v62 + 144) = v66;
  *(v62 + 168) = v61;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 216) = v165;
  *(v62 + 184) = 0xE500000000000000;
  *(v62 + 192) = &unk_285026090;
  v67 = MEMORY[0x277D837D0];
  v68 = sub_23E1FDABC();
  v158 = inited;
  *(inited + 360) = v68;
  v69 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v164;
  *(inited + 392) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_23E2246F0;
  v164 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  *&v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_23E224C10;
  v71 = *MEMORY[0x277D7CDF8];
  *(v70 + 32) = *MEMORY[0x277D7CDF8];
  *(v70 + 40) = 0xD000000000000016;
  v72 = MEMORY[0x277D7CE00];
  *(v70 + 48) = 0x800000023E24FDA0;
  v73 = *v72;
  *(v70 + 64) = v67;
  *(v70 + 72) = v73;
  *(v70 + 80) = 0x736D657449;
  *(v70 + 88) = 0xE500000000000000;
  v74 = *MEMORY[0x277D7CE38];
  *(v70 + 104) = v67;
  *(v70 + 112) = v74;
  v162 = swift_allocObject();
  v162[1] = xmmword_23E22A520;
  v159 = v71;
  v75 = v69;
  v76 = v73;
  v77 = v74;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v78 = v168;
  v79 = [v168 bundleURL];
  sub_23E1FBF9C();

  v80 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v81 = v162;
  *(v162 + 4) = v82;
  sub_23E1FDCBC();
  v157 = v83;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v84 = [v78 bundleURL];
  sub_23E1FBF9C();

  v85 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v81[5] = v86;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v87 = [v78 bundleURL];
  sub_23E1FBF9C();

  v88 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v81[6] = v89;
  sub_23E1FDCBC();
  v157 = v90;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v91 = v168;
  v92 = [v168 bundleURL];
  sub_23E1FBF9C();

  v93 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v81[7] = v94;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v95 = [v91 bundleURL];
  sub_23E1FBF9C();

  v96 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v97 = v162;
  *(v162 + 8) = v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v70 + 120) = v97;
  v100 = *MEMORY[0x277D7CE70];
  *(v70 + 144) = v99;
  *(v70 + 152) = v100;
  *(v70 + 160) = 0x54746E756F434657;
  *(v70 + 168) = 0xEB00000000657079;
  v101 = *MEMORY[0x277D7CE80];
  *(v70 + 184) = MEMORY[0x277D837D0];
  *(v70 + 192) = v101;
  v102 = v100;
  v103 = v101;
  v162 = v102;
  v157 = v103;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v104 = v168;
  v105 = [v168 bundleURL];
  sub_23E1FBF9C();

  v106 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v70 + 200) = v107;
  v108 = *MEMORY[0x277D7CEC8];
  v109 = v166;
  *(v70 + 224) = v166;
  *(v70 + 232) = v108;
  v110 = v108;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v111 = [v104 bundleURL];
  sub_23E1FBF9C();

  v112 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v70 + 264) = v109;
  *(v70 + 240) = v113;
  _s3__C3KeyVMa_0(0);
  v156 = v114;
  v153[1] = &unk_23E2234E4;
  v154 = _s3__C3KeyVMa_0;
  v155 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v115 = sub_23E1FDABC();
  v153[0] = _s3__C3KeyVMa_0;
  v116 = sub_23DF3BEE4(v115, _s3__C3KeyVMa_0, &qword_280DAE748, _s3__C3KeyVMa_0);
  *(v165 + 32) = v116;
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_23E224710;
  *(v117 + 32) = v159;
  *(v117 + 40) = 0xD000000000000019;
  *(v117 + 48) = 0x800000023E24F180;
  v118 = MEMORY[0x277D837D0];
  v119 = v162;
  *(v117 + 64) = MEMORY[0x277D837D0];
  *(v117 + 72) = v119;
  *(v117 + 80) = 0x7475706E49;
  *(v117 + 88) = 0xE500000000000000;
  v120 = v157;
  *(v117 + 104) = v118;
  *(v117 + 112) = v120;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v121 = v168;
  v122 = [v168 bundleURL];
  sub_23E1FBF9C();

  v123 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v117 + 120) = v124;
  v125 = *MEMORY[0x277D7CEA8];
  v126 = v166;
  *(v117 + 144) = v166;
  *(v117 + 152) = v125;
  v127 = v125;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v128 = [v121 bundleURL];
  sub_23E1FBF9C();

  v129 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v130 = MEMORY[0x277D7CEC0];
  *(v117 + 160) = v131;
  v132 = *v130;
  *(v117 + 184) = v126;
  *(v117 + 192) = v132;
  v133 = MEMORY[0x277D839B0];
  *(v117 + 224) = MEMORY[0x277D839B0];
  *(v117 + 200) = 1;
  v134 = v132;
  v135 = sub_23E1FDABC();
  v136 = sub_23DF3BEE4(v135, v153[0], &qword_280DAE748, v154);
  v137 = v165;
  *(v165 + 40) = v136;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v139 = v158;
  *(v158 + 400) = v137;
  v140 = *MEMORY[0x277D7CB98];
  *(v139 + 424) = v138;
  *(v139 + 432) = v140;
  v141 = v140;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v142 = [v168 bundleURL];
  sub_23E1FBF9C();

  v143 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v145 = v144;
  v146 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v147 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v148 = MEMORY[0x277D7CB78];
  *(v139 + 440) = v146;
  v149 = *v148;
  *(v139 + 464) = v147;
  *(v139 + 472) = v149;
  *(v139 + 504) = v133;
  *(v139 + 480) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v150 = v149;
  v151 = sub_23E1FDABC();
  return sub_23DF3BEE4(v151, type metadata accessor for Key, &qword_280DAEDE0, type metadata accessor for Key);
}

uint64_t libssh2_sftp_dtor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = *(*a4 + 88);
  if (v6)
  {
    (*(a1 + 24))(v6, a1);
  }

  v7 = *(v5 + 192);
  if (v7)
  {
    (*(a1 + 24))(v7, a1);
  }

  v8 = *(a1 + 24);

  return v8(v5, a1);
}

uint64_t libssh2_sftp_init(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if ((*(a1 + 128) & 4) != 0)
  {
    v4 = a1 + 69632;
    v5 = time(0);
    v6 = (a1 + 72892);
    v7 = "session";
    v8 = "Would block starting up channel";
    while (1)
    {
      v34 = 0;
      v35 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v9 = *(a1 + 72892);
      v2 = *(a1 + 72896);
      if (v9 <= 2)
      {
        break;
      }

      if (v9 == 3)
      {
        v11 = *(a1 + 72904);
LABEL_20:
        v12 = _libssh2_channel_process_startup(v11, "subsystem", 9uLL, "sftp", 4uLL);
        if (v12)
        {
          if (v12 == -37)
          {
            v13 = a1;
            v14 = 4294967259;
            v15 = "Would block to request SFTP subsystem";
LABEL_47:
            _libssh2_error(v13, v14, v15);
            goto LABEL_59;
          }

          v13 = a1;
          v14 = 4294967275;
          v19 = "Unable to request SFTP subsystem";
          goto LABEL_57;
        }

        *v6 = 4;
        goto LABEL_24;
      }

      if (v9 != 4)
      {
        if (v9 != 5)
        {
          goto LABEL_40;
        }

        v10 = *(a1 + 72928);
        goto LABEL_28;
      }

LABEL_24:
      if (_libssh2_channel_extended_data(*(a1 + 72904), 1) == -37)
      {
        v13 = a1;
        v14 = 4294967259;
        v15 = "Would block requesting handle extended data";
        goto LABEL_47;
      }

      v16 = _libssh2_calloc(a1, 0x168uLL);
      *(a1 + 72896) = v16;
      if (!v16)
      {
        v13 = a1;
        v14 = 4294967290;
        v19 = "Unable to allocate a new SFTP structure";
        goto LABEL_57;
      }

      v2 = v16;
      *v16 = *(a1 + 72904);
      v16[2] = 0;
      _libssh2_htonu32((a1 + 72912), 5u);
      *(a1 + 72916) = 1;
      _libssh2_htonu32((a1 + 72917), 3u);
      v10 = 0;
      *(a1 + 72928) = 0;
      *(a1 + 72892) = 5;
LABEL_28:
      v17 = _libssh2_channel_write(*(a1 + 72904), 0, (a1 + 72912 + v10), 9 - v10);
      if (v17 == -37)
      {
        v13 = a1;
        v14 = 4294967259;
        v15 = "Would block sending SSH_FXP_INIT";
        goto LABEL_47;
      }

      if (v17 < 0)
      {
        v13 = a1;
        v14 = 4294967289;
        v19 = "Unable to send SSH_FXP_INIT";
        goto LABEL_57;
      }

      v18 = *(a1 + 72928) + v17;
      *(a1 + 72928) = v18;
      if (v18 == 9)
      {
        *v6 = 6;
        goto LABEL_43;
      }

      v9 = *v6;
LABEL_40:
      if (v9 == 16)
      {
        if (_libssh2_channel_free(*(a1 + 72904)) == -37)
        {
          v13 = a1;
          v14 = 4294967259;
          v15 = "Would block closing channel";
          goto LABEL_47;
        }

        *(a1 + 72904) = 0;
        v21 = *(a1 + 72896);
        if (v21)
        {
          (*(a1 + 24))(v21, a1);
          *(a1 + 72896) = 0;
        }

LABEL_50:
        *v6 = 0;
        goto LABEL_59;
      }

LABEL_43:
      v20 = sftp_packet_require(v2, 2, 0, &v35, &v34, 5uLL);
      if (v20 == -38)
      {
        if (v34)
        {
          (*(a1 + 24))(v35, a1);
        }

        v13 = a1;
        v14 = 4294967265;
        v19 = "Invalid SSH_FXP_VERSION response";
      }

      else
      {
        v14 = v20;
        if (!v20)
        {
          v22 = v8;
          v23 = v7;
          v25 = v34;
          v24 = v35;
          v31 = v35;
          v32 = v35 + 1;
          v33 = v34;
          if (_libssh2_get_u32(&v31, (v2 + 12)))
          {
            (*(a1 + 24))(v35, a1);
            v7 = v23;
            v8 = v22;
          }

          else
          {
            if (*(v2 + 12) >= 4u)
            {
              *(v2 + 12) = 3;
            }

            v26 = v24 + v25;
            v7 = v23;
            v8 = v22;
            if (v32 >= v26)
            {
LABEL_73:
              (*(a1 + 24))(v35, a1);
              v28 = *v2;
              *(v28 + 112) = v2;
              *(v28 + 120) = libssh2_sftp_dtor;
              *v6 = 0;
              *(v4 + 3268) = 0;
              *(v4 + 3276) = 0;
              _libssh2_list_init((v2 + 48));
              return v2;
            }

            while (1)
            {
              v29 = 0;
              v30 = 0;
              if (_libssh2_get_string(&v31, &v30, 0))
              {
                (*(a1 + 24))(v35, a1);
                v27 = "Data too short when extracting extname";
                goto LABEL_72;
              }

              if (_libssh2_get_string(&v31, &v29, 0))
              {
                break;
              }

              if (v32 >= v26)
              {
                goto LABEL_73;
              }
            }

            (*(a1 + 24))(v35, a1);
            v27 = "Data too short when extracting extdata";
LABEL_72:
            _libssh2_error(a1, 4294967258, v27);
          }

          goto LABEL_58;
        }

        v13 = a1;
        if (v14 == -37)
        {
          v15 = "Would block receiving SSH_FXP_VERSION";
          goto LABEL_47;
        }

        v19 = "Timeout waiting for response from SFTP subsystem";
      }

LABEL_57:
      _libssh2_error(v13, v14, v19);
LABEL_58:
      *v6 = 16;
LABEL_59:
      if (!*(a1 + 172) || libssh2_session_last_errno(a1) != -37 || _libssh2_wait_socket(a1, v5))
      {
        return 0;
      }
    }

    if (v9)
    {
      if (v9 != 2)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v2)
      {
        libssh2_sftp_init_cold_1();
      }

      *v6 = 2;
    }

    v11 = _libssh2_channel_open(a1, v7, 7u, 0x200000u, 0x8000u, 0, 0);
    *(a1 + 72904) = v11;
    if (!v11)
    {
      if (libssh2_session_last_errno(a1) == -37)
      {
        v13 = a1;
        v14 = 4294967259;
        v15 = v8;
        goto LABEL_47;
      }

      _libssh2_error(a1, 4294967275, "Unable to startup channel");
      goto LABEL_50;
    }

    *v6 = 3;
    goto LABEL_20;
  }

  _libssh2_error(a1, 4294967262, "session not authenticated yet");
  return 0;
}

uint64_t libssh2_sftp_shutdown(uint64_t *a1)
{
  if (!a1)
  {
    return 4294967257;
  }

  v2 = time(0);
  do
  {
    v3 = *(*a1 + 104);
    v4 = a1[11];
    if (v4)
    {
      (*(v3 + 24))(v4, *(*a1 + 104));
      a1[11] = 0;
    }

    v5 = a1[16];
    if (v5)
    {
      (*(v3 + 24))(v5, v3);
      a1[16] = 0;
    }

    v6 = a1[24];
    if (v6)
    {
      (*(v3 + 24))(v6, v3);
      a1[24] = 0;
    }

    v7 = a1[26];
    if (v7)
    {
      (*(v3 + 24))(v7, v3);
      a1[26] = 0;
    }

    v8 = a1[28];
    if (v8)
    {
      (*(v3 + 24))(v8, v3);
      a1[28] = 0;
    }

    v9 = a1[30];
    if (v9)
    {
      (*(v3 + 24))(v9, v3);
      a1[30] = 0;
    }

    v10 = a1[33];
    if (v10)
    {
      (*(v3 + 24))(v10, v3);
      a1[33] = 0;
    }

    v11 = a1[35];
    if (v11)
    {
      (*(v3 + 24))(v11, v3);
      a1[35] = 0;
    }

    v12 = a1[37];
    if (v12)
    {
      (*(v3 + 24))(v12, v3);
      a1[37] = 0;
    }

    v13 = a1[39];
    if (v13)
    {
      (*(v3 + 24))(v13, v3);
      a1[39] = 0;
    }

    v14 = a1[41];
    if (v14)
    {
      (*(v3 + 24))(v14, v3);
      a1[41] = 0;
    }

    v15 = a1[43];
    if (v15)
    {
      (*(v3 + 24))(v15, v3);
      a1[43] = 0;
    }

    v16 = a1[22];
    if (v16)
    {
      (*(v3 + 24))(v16, v3);
      a1[22] = 0;
    }

    v17 = *(*a1 + 104);
    v18 = _libssh2_list_first((a1 + 2));
    v19 = _libssh2_list_first((a1 + 4));
    if (v18)
    {
      do
      {
        v20 = _libssh2_list_next(v18);
        _libssh2_list_remove(v18);
        (*(v17 + 24))(v18[4], v17);
        (*(v17 + 24))(v18, v17);
        v18 = v20;
      }

      while (v20);
    }

    if (v19)
    {
      do
      {
        v21 = _libssh2_list_next(v19);
        _libssh2_list_remove(v19);
        (*(v17 + 24))(v19, v17);
        v19 = v21;
      }

      while (v21);
    }

    result = _libssh2_channel_free(*a1);
    if (result != -37)
    {
      break;
    }

    v23 = *(*a1 + 104);
    if (!*(v23 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v23, v2);
  }

  while (!result);
  return result;
}

void *libssh2_sftp_open_ex(void *result, const void *a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6)
{
  if (result)
  {
    v11 = result;
    v12 = time(0);
    while (1)
    {
      result = sftp_open(v11, a2, a3, a4, a5, a6, 0);
      if (!*(*(*v11 + 104) + 172) || result != 0)
      {
        break;
      }

      if (libssh2_session_last_errno(*(*v11 + 104)) != -37 || _libssh2_wait_socket(*(*v11 + 104), v12))
      {
        return 0;
      }
    }
  }

  return result;
}

void *sftp_open(uint64_t a1, const void *a2, size_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7)
{
  v9 = *a1;
  v10 = *(*a1 + 104);
  memset(v45 + 8, 0, 48);
  v44 = 0;
  *&v45[0] = 4;
  v11 = *(a1 + 120);
  if (v11 != 2)
  {
    if (v11)
    {
      goto LABEL_25;
    }

    *(a1 + 64) = 0;
    if (a7)
    {
      v16 = *(a7 + 16);
      v45[0] = *a7;
      v45[1] = v16;
      v45[2] = *(a7 + 32);
      *&v45[3] = *(a7 + 48);
    }

    if (a6)
    {
      v17 = 0;
    }

    else
    {
      v17 = (v45[0] & 0xC) + 8 * (v45[0] & 1) + ((4 * LODWORD(v45[0])) & 8) + 8;
    }

    v18 = a3 + 13 + v17;
    *(a1 + 136) = v18;
    *(a1 + 144) = 0;
    v19 = (*(v10 + 8))(v18, v10);
    *(a1 + 128) = v19;
    v44 = v19;
    if (!v19)
    {
      v27 = "Unable to allocate memory for FXP_OPEN or FXP_OPENDIR packet";
      v28 = v10;
      v29 = 4294967290;
      goto LABEL_36;
    }

    v20 = *(a1 + 136) - 4;
    v21 = 0x8000;
    if (a6)
    {
      v21 = 0x4000;
    }

    *&v45[2] = v21 | a5;
    if (a6)
    {
      v22 = 11;
    }

    else
    {
      v22 = 3;
    }

    _libssh2_store_u32(&v44, v20);
    v23 = v44;
    v44 = (v44 + 1);
    *v23 = v22;
    v24 = *(a1 + 8);
    *(a1 + 8) = v24 + 1;
    *(a1 + 152) = v24;
    _libssh2_store_u32(&v44, v24);
    _libssh2_store_str(&v44, a2, a3);
    if (!a6)
    {
      _libssh2_store_u32(&v44, a4);
      v25 = sftp_attr2bin(v44, v45);
      v44 = (v44 + v25);
    }

    *(a1 + 120) = 2;
  }

  v26 = _libssh2_channel_write(v9, 0, (*(a1 + 128) + *(a1 + 144)), *(a1 + 136) - *(a1 + 144));
  if (v26 == -37)
  {
    v27 = "Would block sending FXP_OPEN or FXP_OPENDIR command";
    v28 = v10;
    v29 = 4294967259;
LABEL_36:
    _libssh2_error(v28, v29, v27);
    return 0;
  }

  if (v26 < 0)
  {
    _libssh2_error(v10, v26, "Unable to send FXP_OPEN*");
    (*(v10 + 24))(*(a1 + 128), v10);
    v31 = 0;
    *(a1 + 128) = 0;
    *(a1 + 120) = 0;
    return v31;
  }

  v30 = *(a1 + 144) + v26;
  *(a1 + 144) = v30;
  if (v30 == *(a1 + 136))
  {
    (*(v10 + 24))(*(a1 + 128), v10);
    *(a1 + 128) = 0;
    *(a1 + 120) = 3;
    goto LABEL_26;
  }

  v11 = *(a1 + 120);
LABEL_25:
  if (v11 != 3)
  {
    return 0;
  }

LABEL_26:
  v42 = 0;
  v43 = 0;
  v32 = sftp_packet_requirev(a1, &sftp_open_fopen_responses, *(a1 + 152), &v42, &v43, 1uLL);
  if (v32 == -38)
  {
    if (v43)
    {
      (*(v10 + 24))(v42, v10);
    }

    v27 = "Response too small";
    goto LABEL_32;
  }

  v29 = v32;
  if (v32 == -37)
  {
    v27 = "Would block waiting for status message";
LABEL_35:
    v28 = v10;
    goto LABEL_36;
  }

  *(a1 + 120) = 0;
  if (v32)
  {
    v27 = "Timeout waiting for status message";
    goto LABEL_35;
  }

  if (*v42 == 101)
  {
    if (v43 <= 8)
    {
      v34 = "Too small FXP_STATUS";
LABEL_50:
      _libssh2_error(v10, 4294967265, v34);
      (*(v10 + 24))(v42, v10);
      return 0;
    }

    v35 = _libssh2_ntohu32((v42 + 5));
    *(a1 + 64) = v35;
    if (v35)
    {
LABEL_43:
      v34 = "Failed opening remote file";
      goto LABEL_50;
    }

    (*(v10 + 24))(v42, v10);
    v36 = sftp_packet_require(a1, 102, *(a1 + 152), &v42, &v43, 0xAuLL);
    if (v36 != -38)
    {
      if (v36)
      {
        if (v36 == -37)
        {
          v31 = 0;
          *(a1 + 120) = 3;
          return v31;
        }

        goto LABEL_43;
      }

      goto LABEL_48;
    }

    if (v43)
    {
      (*(v10 + 24))(v42, v10);
    }

    v27 = "Too small FXP_HANDLE";
LABEL_32:
    v28 = v10;
    v29 = 4294967265;
    goto LABEL_36;
  }

LABEL_48:
  if (v43 <= 9)
  {
    v34 = "Too small FXP_HANDLE";
    goto LABEL_50;
  }

  v37 = _libssh2_calloc(v10, 0x188uLL);
  v31 = v37;
  if (v37)
  {
    *(v37 + 74) = a6 != 0;
    v38 = _libssh2_ntohu32((v42 + 5));
    if (v38 >= 0x100)
    {
      v39 = 256;
    }

    else
    {
      v39 = v38;
    }

    v40 = v42;
    if (v43 - 9 >= v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = v43 - 9;
    }

    v31[36] = v41;
    memcpy(v31 + 4, (v40 + 9), v41);
    (*(v10 + 24))(v40, v10);
    _libssh2_list_add((a1 + 48), v31);
    v31[3] = a1;
    v31[38] = 0;
    v31[39] = 0;
  }

  else
  {
    _libssh2_error(v10, 4294967290, "Unable to allocate new SFTP handle structure");
    (*(v10 + 24))(v42, v10);
  }

  return v31;
}

void *libssh2_sftp_open_ex_r(void *result, const void *a2, size_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7)
{
  if (result)
  {
    v13 = result;
    v14 = time(0);
    while (1)
    {
      result = sftp_open(v13, a2, a3, a4, a5, a6, a7);
      if (!*(*(*v13 + 104) + 172) || result != 0)
      {
        break;
      }

      if (libssh2_session_last_errno(*(*v13 + 104)) != -37 || _libssh2_wait_socket(*(*v13 + 104), v14))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t libssh2_sftp_read(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a1)
  {
    return -39;
  }

  v56 = time(0);
  v5 = 4 * a3;
  if (4 * a3 >= 0x800000)
  {
    v5 = 0x800000;
  }

  v54 = v5;
  v53 = 8 * v5;
  while (2)
  {
    v6 = *(a1 + 24);
    v7 = *v6;
    v8 = *(*v6 + 104);
    v9 = v6[39];
    if (v9 == 5)
    {
LABEL_44:
      v6[39] = 0;
      v31 = _libssh2_list_first(a1 + 376);
      if (v31)
      {
        v32 = v31;
        v11 = 0;
        v33 = a2;
        while (1)
        {
          v57 = 0;
          v58 = 0;
          if (*(v32 + 48))
          {
LABEL_67:
            if (v11)
            {
              goto LABEL_80;
            }

            goto LABEL_68;
          }

          v34 = sftp_packet_requirev(v6, &sftp_read_read_responses, *(v32 + 56), &v58, &v57, 9uLL);
          if (v34 == -37 && v11 != 0)
          {
            goto LABEL_80;
          }

          if (v34 == -38)
          {
            if (v57)
            {
              (*(v8 + 24))(v58, v8);
            }

            v45 = v8;
            v46 = 4294967265;
            v47 = "Response too small";
            goto LABEL_69;
          }

          if (v34 < 0)
          {
            v11 = v34;
            v48 = 5;
            goto LABEL_79;
          }

          v36 = *v58;
          if (v36 != 103)
          {
            break;
          }

          if (*(v32 + 24) != *(a1 + 304))
          {
            v45 = v8;
            v46 = 4294967265;
            v47 = "Read Packet At Unexpected Offset";
            goto LABEL_69;
          }

          v37 = _libssh2_ntohu32((v58 + 5));
          v38 = v57;
          if (v57 - 9 < v37)
          {
            v45 = v8;
            v46 = 4294967265;
            v47 = "SFTP Protocol badness";
            goto LABEL_69;
          }

          v39 = v37;
          v40 = *(v32 + 32);
          v41 = v37 >= v40;
          v42 = v37 - v40;
          if (v42 != 0 && v41)
          {
            v45 = v8;
            v46 = 4294967265;
            v47 = "FXP_READ response too big";
            goto LABEL_69;
          }

          if (v42)
          {
            *(a1 + 312) += v42;
          }

          if (v11 + v37 <= a3)
          {
            v38 = 0;
            v43 = v58;
            v11 += v37;
          }

          else
          {
            *(a1 + 344) = v11 + v37 - a3;
            v39 = (a3 - v11);
            v43 = v58;
            *(a1 + 328) = v58;
            v11 += v39;
          }

          *(a1 + 336) = v38;
          memcpy(v33, v43 + 9, v39);
          *(a1 + 304) += v39;
          if (!*(a1 + 336))
          {
            (*(v8 + 24))(v43, v8);
          }

          v44 = _libssh2_list_next(v32);
          _libssh2_list_remove(v32);
          (*(v8 + 24))(v32, v8);
          if (v11 < a3)
          {
            v33 += v39;
            v32 = v44;
            if (v44)
            {
              continue;
            }
          }

          goto LABEL_67;
        }

        if (v36 == 101)
        {
          _libssh2_list_remove(v32);
          (*(v8 + 24))(v32, v8);
          sftp_packetlist_flush(a1);
          v49 = _libssh2_ntohu32((v58 + 5));
          (*(v8 + 24))(v58, v8);
          if (v49 == 1)
          {
            *(a1 + 352) = 1;
            goto LABEL_80;
          }

          v6[16] = v49;
          v45 = v8;
          v46 = 4294967265;
          v47 = "SFTP READ error";
        }

        else
        {
          v45 = v8;
          v46 = 4294967265;
          v47 = "SFTP Protocol badness: unrecognised read request response";
        }
      }

      else
      {
LABEL_68:
        v45 = v8;
        v46 = 4294967265;
        v47 = "sftp_read() internal error";
      }

LABEL_69:
      v16 = _libssh2_error(v45, v46, v47);
      goto LABEL_70;
    }

    if (v9 != 3)
    {
      if (v9)
      {
        libssh2_sftp_read_cold_3();
      }

      v6[16] = 0;
      v10 = *(a1 + 344);
      if (v10)
      {
        if (v10 >= a3)
        {
          v11 = a3;
        }

        else
        {
          v11 = *(a1 + 344);
        }

        memcpy(a2, (*(a1 + 328) + *(a1 + 336) - v10), v11);
        v12 = *(a1 + 344);
        *(a1 + 304) += v11;
        v13 = v12 - v11;
        *(a1 + 344) = v13;
        if (!v13)
        {
          (*(v8 + 24))(*(a1 + 328), v8);
          *(a1 + 328) = 0;
        }

        goto LABEL_80;
      }

      if (*(a1 + 352))
      {
        return 0;
      }

      v14 = *(a1 + 312) - *(a1 + 304);
      if (v54 >= v14)
      {
        v15 = v54 - v14;
      }

      else
      {
        v15 = 0;
      }

      if (v54 > libssh2_channel_window_read_ex(v7, 0, 0))
      {
        v16 = _libssh2_channel_receive_window_adjust(*v6, v53, 1, 0);
        if (v16)
        {
          if (v16 == -37)
          {
            if (*(a1 + 344))
            {
              libssh2_sftp_read_cold_1();
            }

            if (*(a1 + 352))
            {
              libssh2_sftp_read_cold_2();
            }

            goto LABEL_81;
          }

LABEL_70:
          v11 = v16;
          goto LABEL_80;
        }
      }

      if (v54 > v14)
      {
        while (1)
        {
          v58 = 0;
          v17 = *(a1 + 288);
          v18 = (v17 + 25);
          v19 = (*(v8 + 8))(v18 + 64, v8);
          if (!v19)
          {
            break;
          }

          v20 = v19;
          if (a3 <= v15)
          {
            v21 = v15;
          }

          else
          {
            v21 = a3;
          }

          if (v21 >= 0x7530)
          {
            v22 = 30000;
          }

          else
          {
            v22 = v21;
          }

          *(v19 + 24) = *(a1 + 312);
          *(v19 + 32) = v22;
          *(v19 + 40) = 0;
          *(v19 + 48) = v18;
          v58 = (v19 + 60);
          _libssh2_store_u32(&v58, v17 + 21);
          v23 = v58;
          v58 = (v58 + 1);
          *v23 = 5;
          v24 = v6[2];
          v6[2] = v24 + 1;
          *(v20 + 56) = v24;
          _libssh2_store_u32(&v58, v24);
          _libssh2_store_str(&v58, (a1 + 32), *(a1 + 288));
          *v58 = bswap64(*(a1 + 312));
          v58 += 2;
          *(a1 + 312) += v22;
          _libssh2_store_u32(&v58, v22);
          _libssh2_list_add((a1 + 376), v20);
          v25 = v15 > v22;
          if (v15 >= v22)
          {
            v15 -= v22;
          }

          else
          {
            v15 = 0;
          }

          if (!v25)
          {
            goto LABEL_36;
          }
        }

        v45 = v8;
        v46 = 4294967290;
        v47 = "malloc fail for FXP_WRITE";
        goto LABEL_69;
      }
    }

LABEL_36:
    v6[39] = 0;
    v26 = _libssh2_list_first(a1 + 376);
    if (!v26)
    {
      goto LABEL_44;
    }

    v27 = v26;
    while (1)
    {
      while (1)
      {
        v28 = *(v27 + 48);
        if (v28)
        {
          break;
        }

LABEL_43:
        v27 = _libssh2_list_next(v27);
        if (!v27)
        {
          goto LABEL_44;
        }
      }

      v29 = _libssh2_channel_write(v7, 0, (v27 + 60 + *(v27 + 40)), v28);
      v11 = v29;
      if (v29 < 0)
      {
        break;
      }

      v30 = *(v27 + 48) - v29;
      *(v27 + 40) += v29;
      *(v27 + 48) = v30;
      if (!v30)
      {
        goto LABEL_43;
      }

      if (v27 != _libssh2_list_first(a1 + 376))
      {
        goto LABEL_44;
      }
    }

    v48 = 3;
LABEL_79:
    v6[39] = v48;
LABEL_80:
    if (v11 == -37)
    {
LABEL_81:
      v50 = *(**(a1 + 24) + 104);
      if (!*(v50 + 172))
      {
        return -37;
      }

      v51 = _libssh2_wait_socket(v50, v56);
      if (v51)
      {
        return v51;
      }

      continue;
    }

    return v11;
  }
}