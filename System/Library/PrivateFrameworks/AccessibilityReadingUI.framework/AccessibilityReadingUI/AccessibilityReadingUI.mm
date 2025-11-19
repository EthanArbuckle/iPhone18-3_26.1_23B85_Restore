AccessibilityReadingUI::SSWindowState_optional __swiftcall SSWindowState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23D82DF44()
{
  v1 = *v0;
  sub_23D8DED50();
  MEMORY[0x23EEF0EB0](v1);
  return sub_23D8DED80();
}

uint64_t sub_23D82DFB8()
{
  v1 = *v0;
  sub_23D8DED50();
  MEMORY[0x23EEF0EB0](v1);
  return sub_23D8DED80();
}

void *sub_23D82DFFC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t IconDirection.hashValue.getter()
{
  v1 = *v0;
  sub_23D8DED50();
  MEMORY[0x23EEF0EB0](v1);
  return sub_23D8DED80();
}

uint64_t sub_23D82E0C4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  return v4;
}

uint64_t sub_23D82E124(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 40));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  return sub_23D8DE330();
}

uint64_t sub_23D82E188()
{
  type metadata accessor for CGPoint(0);
  sub_23D8DE310();
  return v1;
}

double sub_23D82E1C8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v5 = *v2;
  v6 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E8, &qword_23D8E03C0);
  sub_23D8DE320();
  return v4;
}

uint64_t sub_23D82E228(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v4 = *v2;
  v5 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E8, &qword_23D8E03C0);
  return sub_23D8DE330();
}

double sub_23D82E28C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v5 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  sub_23D8DE320();
  return v4;
}

uint64_t sub_23D82E2EC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  return sub_23D8DE330();
}

uint64_t SSDraggableView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v47 = v6;
  v7 = *(a1 + 24);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 24) = v7;
  (*(v3 + 32))(v6 + v5, &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v46 = sub_23D8DEB20();
  type metadata accessor for SSHUDRoundView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  type metadata accessor for SSRoundPipView();
  sub_23D8DD020();
  sub_23D8DD6C0();
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF8, &qword_23D8DFDC0);
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECF00, &qword_23D8DFDC8);
  sub_23D8DD020();
  sub_23D8DCE50();
  sub_23D8DD020();
  v45 = sub_23D8DD020();
  v44 = sub_23D8333AC(&qword_27E2ECF08, MEMORY[0x277CC9DB0]);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-");
  v71 = WitnessTable;
  v72 = v9;
  v10 = swift_getWitnessTable();
  v69 = swift_getWitnessTable();
  v70 = v9;
  v11 = swift_getWitnessTable();
  v67 = v10;
  v68 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_23D833358();
  v65 = v12;
  v66 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_23D835AD0(&qword_27E2ECF20, &qword_27E2ECEF8, &qword_23D8DFDC0);
  v63 = v14;
  v64 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_23D835AD0(&qword_27E2ECF28, &qword_27E2ECF00, &qword_23D8DFDC8);
  v61 = v16;
  v62 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_23D8333AC(&qword_27E2ECF30, MEMORY[0x277CDD8B0]);
  v59 = v18;
  v60 = v19;
  v57 = swift_getWitnessTable();
  v58 = MEMORY[0x277CDFB28];
  v20 = v45;
  v21 = swift_getWitnessTable();
  v22 = v46;
  v53 = v46;
  v54 = v20;
  v23 = v44;
  v55 = v44;
  v56 = v21;
  v24 = sub_23D8DD0A0();
  v25 = swift_getWitnessTable();
  v53 = v22;
  v54 = v24;
  v55 = v23;
  v56 = v25;
  v26 = sub_23D8DD0A0();
  type metadata accessor for AXSpeakStopType(255);
  v28 = v27;
  v29 = swift_getWitnessTable();
  v30 = sub_23D8333AC(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType);
  v53 = v26;
  v54 = v28;
  v55 = v29;
  v56 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for AXSFSpeakFingerState(255);
  v33 = v32;
  v53 = v26;
  v54 = v28;
  v55 = v29;
  v56 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_23D8333AC(&qword_27E2ECF40, type metadata accessor for AXSFSpeakFingerState);
  v53 = OpaqueTypeMetadata2;
  v54 = v33;
  v55 = OpaqueTypeConformance2;
  v56 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECF48, &unk_23D8DFDD0);
  v53 = OpaqueTypeMetadata2;
  v54 = v33;
  v55 = OpaqueTypeConformance2;
  v56 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_23D835AD0(&qword_27E2ECF50, &qword_27E2ECF48, &unk_23D8DFDD0);
  v53 = v36;
  v54 = v37;
  v55 = v38;
  v56 = v39;
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD020();
  v53 = v36;
  v54 = v37;
  v55 = v38;
  v56 = v39;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  v49 = sub_23D8DCE70();
  v50 = v40;
  v41 = sub_23D8DCE80();
  swift_getWitnessTable();
  v42 = *(*(v41 - 8) + 16);
  v42(&v53, &v49, v41);

  v49 = v53;
  v50 = v54;
  v42(v48, &v49, v41);
}

uint64_t sub_23D82EB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v279 = a4;
  v282 = a2;
  v269 = a1;
  v250 = a5;
  v243 = sub_23D8DD6D0();
  v6 = *(*(v243 - 8) + 64);
  MEMORY[0x28223BE20](v243);
  v242 = &v201 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_23D8DCD10();
  v246 = *(v245 - 8);
  v8 = *(v246 + 64);
  MEMORY[0x28223BE20](v245);
  v260 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0B8, &qword_23D8E01E8);
  v249 = *(v247 - 8);
  v10 = *(v249 + 64);
  MEMORY[0x28223BE20](v247);
  v261 = &v201 - v11;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ECF48, &unk_23D8DFDD0);
  v248 = *(v270 - 8);
  v12 = *(v248 + 64);
  MEMORY[0x28223BE20](v270);
  v244 = &v201 - v13;
  v264 = sub_23D8DEB20();
  v268 = *(v264 - 8);
  v14 = *(v268 + 64);
  MEMORY[0x28223BE20](v264);
  v240 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_23D8DEA00();
  v238 = *(v239 - 8);
  v16 = *(v238 + 64);
  MEMORY[0x28223BE20](v239);
  v237 = &v201 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_23D8DCE10();
  v272 = *(v267 - 8);
  v273 = *(v272 + 64);
  MEMORY[0x28223BE20](v267);
  v258 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = type metadata accessor for SSDraggableView();
  v283 = *(v277 - 8);
  v280 = *(v283 + 64);
  MEMORY[0x28223BE20](v277);
  v266 = &v201 - v19;
  v281 = a3;
  type metadata accessor for SSHUDRoundView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  type metadata accessor for SSRoundPipView();
  v274 = sub_23D8DD020();
  v20 = sub_23D8DD6C0();
  v278 = *(v20 - 8);
  v21 = *(v278 + 64);
  MEMORY[0x28223BE20](v20);
  v276 = &v201 - v22;
  v275 = v20;
  v23 = sub_23D8DD020();
  v262 = *(v23 - 8);
  v24 = *(v262 + 64);
  MEMORY[0x28223BE20](v23);
  v263 = &v201 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF8, &qword_23D8DFDC0);
  v253 = v23;
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECF00, &qword_23D8DFDC8);
  v26 = sub_23D8DD020();
  v222 = *(v26 - 8);
  v27 = *(v222 + 64);
  MEMORY[0x28223BE20](v26);
  v255 = (&v201 - v28);
  sub_23D8DCE50();
  v202 = v26;
  v29 = sub_23D8DD020();
  v223 = *(v29 - 8);
  v30 = *(v223 + 64);
  MEMORY[0x28223BE20](v29);
  v217 = &v201 - v31;
  v204 = v29;
  v32 = sub_23D8DD020();
  v229 = *(v32 - 8);
  v33 = *(v229 + 64);
  MEMORY[0x28223BE20](v32);
  v220 = &v201 - v34;
  v265 = sub_23D8333AC(&qword_27E2ECF08, MEMORY[0x277CC9DB0]);
  WitnessTable = swift_getWitnessTable();
  v36 = sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-");
  v304 = WitnessTable;
  v305 = v36;
  v37 = MEMORY[0x277CDFAD8];
  v38 = swift_getWitnessTable();
  v302 = swift_getWitnessTable();
  v303 = v36;
  v39 = swift_getWitnessTable();
  v300 = v38;
  v301 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_23D833358();
  v298 = v40;
  v299 = v41;
  v42 = swift_getWitnessTable();
  v252 = v42;
  v43 = sub_23D835AD0(&qword_27E2ECF20, &qword_27E2ECEF8, &qword_23D8DFDC0);
  v296 = v42;
  v297 = v43;
  v44 = swift_getWitnessTable();
  v45 = sub_23D835AD0(&qword_27E2ECF28, &qword_27E2ECF00, &qword_23D8DFDC8);
  v294 = v44;
  v295 = v45;
  v241 = v37;
  v46 = swift_getWitnessTable();
  v201 = v46;
  v47 = sub_23D8333AC(&qword_27E2ECF30, MEMORY[0x277CDD8B0]);
  v292 = v46;
  v293 = v47;
  v203 = swift_getWitnessTable();
  v290 = v203;
  v291 = MEMORY[0x277CDFB28];
  v205 = v32;
  v206 = swift_getWitnessTable();
  v48 = v264;
  v286 = v264;
  v287 = v32;
  v49 = v265;
  v288 = v265;
  v289 = v206;
  v50 = sub_23D8DD0A0();
  v215 = v50;
  v218 = *(v50 - 8);
  v51 = *(v218 + 64);
  MEMORY[0x28223BE20](v50);
  v256 = &v201 - v52;
  v216 = swift_getWitnessTable();
  v286 = v48;
  v287 = v50;
  v288 = v49;
  v289 = v216;
  v53 = sub_23D8DD0A0();
  v219 = *(v53 - 8);
  v54 = *(v219 + 64);
  MEMORY[0x28223BE20](v53);
  v257 = &v201 - v55;
  type metadata accessor for AXSpeakStopType(255);
  v57 = v56;
  v58 = swift_getWitnessTable();
  v59 = sub_23D8333AC(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType);
  v286 = v53;
  v287 = v57;
  v209 = v53;
  v60 = v57;
  v207 = v57;
  v288 = v58;
  v289 = v59;
  v61 = v58;
  v211 = v58;
  v62 = v59;
  v210 = v59;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v221 = *(OpaqueTypeMetadata2 - 8);
  v64 = *(v221 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v254 = &v201 - v65;
  type metadata accessor for AXSFSpeakFingerState(255);
  v67 = v66;
  v286 = v53;
  v287 = v60;
  v288 = v61;
  v289 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = sub_23D8333AC(&qword_27E2ECF40, type metadata accessor for AXSFSpeakFingerState);
  v286 = OpaqueTypeMetadata2;
  v287 = v67;
  v70 = OpaqueTypeMetadata2;
  v212 = OpaqueTypeMetadata2;
  v71 = v67;
  v208 = v67;
  v288 = OpaqueTypeConformance2;
  v289 = v69;
  v72 = OpaqueTypeConformance2;
  v214 = OpaqueTypeConformance2;
  v73 = v69;
  v213 = v69;
  v74 = swift_getOpaqueTypeMetadata2();
  v227 = v74;
  v233 = *(v74 - 8);
  v75 = *(v233 + 64);
  MEMORY[0x28223BE20](v74);
  v259 = &v201 - v76;
  v286 = v70;
  v287 = v71;
  v288 = v72;
  v289 = v73;
  v77 = swift_getOpaqueTypeConformance2();
  v226 = v77;
  v225 = sub_23D835AD0(&qword_27E2ECF50, &qword_27E2ECF48, &unk_23D8DFDD0);
  v286 = v74;
  v287 = v270;
  v288 = v77;
  v289 = v225;
  v232 = MEMORY[0x277CE0D90];
  v230 = swift_getOpaqueTypeMetadata2();
  v236 = *(v230 - 8);
  v78 = *(v236 + 64);
  MEMORY[0x28223BE20](v230);
  v224 = &v201 - v79;
  v235 = sub_23D8DD020();
  v234 = *(v235 - 8);
  v80 = *(v234 + 64);
  v81 = MEMORY[0x28223BE20](v235);
  v228 = &v201 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v231 = &v201 - v83;
  v84 = v276;
  v85 = v277;
  v86 = v282;
  sub_23D830AD4(v277, v276);
  v87 = v275;
  sub_23D8DDF50();
  (*(v278 + 8))(v84, v87);
  v88 = v283;
  v89 = v283 + 16;
  v90 = *(v283 + 16);
  v91 = v266;
  v90(v266, v86, v85);
  v275 = v90;
  v276 = v89;
  v92 = *(v88 + 80);
  v93 = v88;
  v271 = &v280[(v92 + 32) & ~v92];
  v94 = (v92 + 32) & ~v92;
  v278 = v94;
  v274 = v92 | 7;
  v95 = swift_allocObject();
  v96 = v281;
  v97 = v279;
  *(v95 + 16) = v281;
  *(v95 + 24) = v97;
  v98 = *(v93 + 32);
  v283 = v93 + 32;
  v280 = v98;
  v99 = v95 + v94;
  v100 = v91;
  (v98)(v99, v91, v85);
  v101 = v253;
  v102 = v263;
  sub_23D831664(sub_23D834F30, v95, v252, v255);

  (*(v262 + 8))(v102, v101);
  v90(v100, v282, v85);
  v103 = v272;
  v104 = *(v272 + 16);
  v253 = v272 + 16;
  v263 = v104;
  v105 = v258;
  v106 = v267;
  (v104)(v258, v269, v267);
  v262 = *(v103 + 80);
  v107 = &v271[v262] & ~v262;
  v251 = v107;
  v108 = swift_allocObject();
  *(v108 + 16) = v96;
  *(v108 + 24) = v97;
  v109 = v100;
  v110 = v277;
  (v280)(v108 + v278, v109, v277);
  v252 = *(v103 + 32);
  v272 = v103 + 32;
  v252(v108 + v107, v105, v106);
  v111 = v237;
  sub_23D8DE9E0();
  v112 = v217;
  v113 = v202;
  v114 = v255;
  sub_23D8DDFA0();

  (*(v238 + 8))(v111, v239);
  (*(v222 + 8))(v114, v113);
  v115 = v110;
  v116 = v282;
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  v117 = v220;
  v118 = v204;
  sub_23D8DE090();
  (*(v223 + 8))(v112, v118);
  v119 = objc_opt_self();
  v120 = [v119 defaultCenter];
  v121 = *MEMORY[0x277D76C60];
  v122 = v240;
  sub_23D8DEB30();

  v123 = v266;
  v275(v266, v116, v115);
  v124 = swift_allocObject();
  v125 = v279;
  *(v124 + 16) = v281;
  *(v124 + 24) = v125;
  (v280)(v124 + v278, v123, v115);
  v126 = v205;
  v127 = v264;
  sub_23D8DE0F0();

  v128 = *(v268 + 8);
  v268 += 8;
  v255 = v128;
  (v128)(v122, v127);
  (*(v229 + 8))(v117, v126);
  v129 = [v119 defaultCenter];
  v130 = *MEMORY[0x277D76C50];
  v131 = v122;
  sub_23D8DEB30();

  v132 = v275;
  v275(v123, v282, v115);
  v133 = swift_allocObject();
  *(v133 + 16) = v281;
  *(v133 + 24) = v125;
  v134 = v278;
  v135 = v280;
  (v280)(v133 + v278, v123, v115);
  v136 = v215;
  v137 = v264;
  v138 = v256;
  sub_23D8DE0F0();

  (v255)(v131, v137);
  (*(v218 + 8))(v138, v136);
  v139 = v277;
  v140 = v282;
  v286 = [*(v282 + *(v277 + 52) + 8) stopType];
  v141 = v266;
  v142 = v139;
  v132(v266, v140, v139);
  v143 = swift_allocObject();
  v144 = v281;
  v145 = v279;
  *(v143 + 16) = v281;
  *(v143 + 24) = v145;
  v146 = v141;
  v135(v143 + v134, v141, v142);
  swift_checkMetadataState();
  v147 = v209;
  v148 = v257;
  sub_23D8DE070();

  (*(v219 + 8))(v148, v147);
  v149 = v142;
  v286 = [*(v140 + *(v142 + 52) + 8) speakFingerState];
  v150 = v146;
  v151 = v142;
  v152 = v275;
  v275(v146, v140, v151);
  v153 = swift_allocObject();
  *(v153 + 16) = v144;
  *(v153 + 24) = v145;
  v154 = v278;
  (v280)(v153 + v278, v146, v149);
  swift_checkMetadataState();
  v155 = v212;
  v156 = v254;
  sub_23D8DE070();

  (*(v221 + 8))(v156, v155);
  sub_23D8DD860();
  sub_23D8DCCD0();
  v157 = v149;
  v152(v146, v282, v149);
  v158 = v258;
  v159 = v269;
  v160 = v267;
  (v263)(v258, v269, v267);
  v161 = v251;
  v162 = swift_allocObject();
  v163 = v279;
  *(v162 + 16) = v281;
  *(v162 + 24) = v163;
  (v280)(v162 + v154, v150, v157);
  v164 = v158;
  v165 = v158;
  v166 = v252;
  v252(v162 + v161, v164, v160);
  sub_23D8333AC(&qword_27E2ED0C0, MEMORY[0x277CDD730]);
  sub_23D8333AC(&qword_27E2ED0C8, MEMORY[0x277CDD708]);
  v167 = v245;
  v168 = v260;
  sub_23D8DE500();

  (*(v246 + 8))(v168, v167);
  v169 = v150;
  v170 = v277;
  v275(v150, v282, v277);
  v171 = v165;
  v172 = v165;
  v173 = v160;
  (v263)(v172, v159, v160);
  v174 = v251;
  v175 = swift_allocObject();
  v176 = v279;
  *(v175 + 16) = v281;
  *(v175 + 24) = v176;
  v177 = v169;
  (v280)(v175 + v278, v169, v170);
  v166(v175 + v174, v171, v173);
  sub_23D835AD0(&qword_27E2ED0D0, &qword_27E2ED0B8, &qword_23D8E01E8);
  v178 = v244;
  v179 = v247;
  v180 = v261;
  sub_23D8DE4F0();

  (*(v249 + 8))(v180, v179);
  sub_23D8DCD30();
  v181 = v224;
  v182 = v178;
  v183 = v227;
  v184 = v270;
  v185 = v226;
  v186 = v225;
  v187 = v259;
  sub_23D8DDE70();
  (*(v248 + 8))(v182, v184);
  (*(v233 + 8))(v187, v183);
  v188 = v277;
  v275(v177, v282, v277);
  v189 = v267;
  (v263)(v171, v269, v267);
  v190 = swift_allocObject();
  v191 = v279;
  *(v190 + 16) = v281;
  *(v190 + 24) = v191;
  (v280)(v190 + v278, v177, v188);
  v252(v190 + v174, v171, v189);
  v286 = v183;
  v287 = v270;
  v288 = v185;
  v289 = v186;
  v192 = swift_getOpaqueTypeConformance2();
  v193 = v228;
  v194 = v230;
  sub_23D8DE050();

  (*(v236 + 8))(v181, v194);
  v284 = v192;
  v285 = MEMORY[0x277CE0790];
  v195 = v235;
  swift_getWitnessTable();
  v196 = v234;
  v197 = *(v234 + 16);
  v198 = v231;
  v197(v231, v193, v195);
  v199 = *(v196 + 8);
  v199(v193, v195);
  v197(v250, v198, v195);
  return (v199)(v198, v195);
}

uint64_t sub_23D830AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for SSRoundPipView();
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = &v62 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  v77 = v6;
  v9 = sub_23D8DD020();
  v71 = *(v9 - 8);
  v10 = *(v71 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v70 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v63 = (&v62 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v62 - v19);
  v21 = type metadata accessor for SSHUDRoundView();
  v65 = *(v21 - 8);
  v22 = *(v65 + 64);
  MEMORY[0x28223BE20](v21);
  v64 = &v62 - v23;
  v79 = v24;
  v25 = sub_23D8DD020();
  v72 = *(v25 - 8);
  v26 = *(v72 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v66 = &v62 - v30;
  v76 = v9;
  v31 = sub_23D8DD6C0();
  v74 = *(v31 - 8);
  v75 = v31;
  v32 = *(v74 + 64);
  MEMORY[0x28223BE20](v31);
  v73 = &v62 - v33;
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  v34 = *(v2 + *(a1 + 52) + 8);
  if (v94)
  {
    sub_23D8797FC(v20);
    swift_unknownObjectRetain();
    v35 = v67;
    sub_23D87985C(v20, sub_23D87B6F0, 0, v5, v67);
    sub_23D833FAC();
    type metadata accessor for SSStore();

    v36 = v77;
    WitnessTable = swift_getWitnessTable();
    sub_23D8333AC(&qword_27E2ED008, type metadata accessor for SSStore);
    v72 = v25;
    v38 = v70;
    sub_23D8DDDF0();

    (*(v68 + 8))(v35, v36);
    v39 = sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-");
    v92 = WitnessTable;
    v93 = v39;
    v40 = v76;
    v68 = swift_getWitnessTable();
    v41 = v71;
    v42 = *(v71 + 16);
    v43 = v69;
    v42(v69, v38, v40);
    v44 = *(v41 + 8);
    v44(v38, v40);
    v42(v38, v43, v40);
    v90 = swift_getWitnessTable();
    v91 = v39;
    swift_getWitnessTable();
    v45 = v73;
    sub_23D889670(v38, v72, v40);
    v44(v38, v40);
    v44(v43, v40);
  }

  else
  {
    sub_23D88D40C(v20);
    v46 = v63;
    sub_23D88D428(v63);
    swift_unknownObjectRetain();
    v47 = v64;
    sub_23D88D4A8(v20, v46, 1, v34, sub_23D87B6F0, 0, v5, v64, 1.0);
    sub_23D833FAC();
    type metadata accessor for SSStore();

    v48 = v79;
    v49 = swift_getWitnessTable();
    sub_23D8333AC(&qword_27E2ED008, type metadata accessor for SSStore);
    sub_23D8DDDF0();

    (*(v65 + 8))(v47, v48);
    v50 = sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-");
    v82 = v49;
    v83 = v50;
    v71 = swift_getWitnessTable();
    v51 = v72;
    v52 = *(v72 + 16);
    v53 = v66;
    v52(v66, v29, v25);
    v54 = *(v51 + 8);
    v54(v29, v25);
    v52(v29, v53, v25);
    v80 = swift_getWitnessTable();
    v81 = v50;
    swift_getWitnessTable();
    v45 = v73;
    sub_23D889578(v29, v25);
    v54(v29, v25);
    v54(v53, v25);
  }

  v55 = swift_getWitnessTable();
  v56 = sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-");
  v88 = v55;
  v89 = v56;
  v57 = swift_getWitnessTable();
  v86 = swift_getWitnessTable();
  v87 = v56;
  v58 = swift_getWitnessTable();
  v84 = v57;
  v85 = v58;
  v59 = v75;
  swift_getWitnessTable();
  v60 = v74;
  (*(v74 + 16))(v78, v45, v59);
  return (*(v60 + 8))(v45, v59);
}

uint64_t sub_23D831564()
{
  type metadata accessor for SSDraggableView();
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  if ((v1 & 1) == 0)
  {
    sub_23D833FAC();
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_23D8DCB80();
  }

  return result;
}

uint64_t sub_23D831664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v16 = a1;
  v17 = a2;
  v18 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF8, &qword_23D8DFDC0);
  v5 = sub_23D8DD020();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v21 = sub_23D832F94;
  v22 = 0;
  sub_23D8DE5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0F0, &qword_23D8E03C8);
  sub_23D835AD0(&qword_27E2ED0F8, &qword_27E2ED0F0, &qword_23D8E03C8);
  v10 = a3;
  sub_23D8DDD00();
  v11 = swift_allocObject();
  v12 = v17;
  *(v11 + 16) = v16;
  *(v11 + 24) = v12;
  v13 = sub_23D835AD0(&qword_27E2ECF20, &qword_27E2ECEF8, &qword_23D8DFDC0);
  v19 = v10;
  v20 = v13;

  swift_getWitnessTable();
  sub_23D835B7C();
  sub_23D8333AC(&qword_27E2ED108, type metadata accessor for CGSize);
  sub_23D8DDE30();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23D8318F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  sub_23D8DE9D0();
  v4[8] = sub_23D8DE9C0();
  v6 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D831994, v6, v5);
}

uint64_t sub_23D831994()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);

  type metadata accessor for SSDraggableView();
  sub_23D833FAC();

  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  if (*(v0 + 16) == 0.0 && *(v0 + 24) == 0.0)
  {
    v5 = *(v0 + 40);
    sub_23D8DCDF0();
    v7 = v6 * 0.5;
    sub_23D8DCDF0();
    v9 = v8 * 0.5;
  }

  else
  {
    v10 = *(v0 + 32);
    sub_23D833FAC();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D8DCB70();

    v7 = *(v0 + 16);
    v9 = *(v0 + 24);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = v7;
  *(v0 + 24) = v9;
  sub_23D8DCB80();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_23D831B5C()
{
  result = sub_23D8DBE00();
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x277D76BB8];
    *&v7.origin.x = sub_23D8DE870();
    v7.origin.y = v3;
    sub_23D8DEC20();
    if (*(v1 + 16) && (v4 = sub_23D877E9C(v8), (v5 & 1) != 0))
    {
      sub_23D835A24(*(v1 + 56) + 32 * v4, v9);
      sub_23D8359D0(v8);

      type metadata accessor for CGRect(0);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = type metadata accessor for SSDraggableView();
        sub_23D82E228(v6);
        CGRectGetHeight(v7);
        sub_23D82E2EC(v6);
        return sub_23D831CA8(v6);
      }
    }

    else
    {

      return sub_23D8359D0(v8);
    }
  }

  return result;
}

uint64_t sub_23D831CA8(uint64_t a1)
{
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  sub_23D82E1C8(a1);
  if (v3 < v6)
  {
    sub_23D82E28C(a1);
    v2 = sub_23D82E124(1, a1);
  }

  MEMORY[0x28223BE20](v2);
  v5 = *(a1 + 16);
  sub_23D8DE640();
  sub_23D8DCE60();
}

uint64_t sub_23D831EB8(uint64_t a1)
{
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  v2 = sub_23D82E0C4(a1);
  if (v2)
  {
    sub_23D82E28C(a1);
    v2 = sub_23D82E124(0, a1);
  }

  MEMORY[0x28223BE20](v2);
  v4 = *(a1 + 16);
  sub_23D8DE640();
  sub_23D8DCE60();
}

id sub_23D832064(uint64_t a1)
{
  result = [*(a1 + *(type metadata accessor for SSDraggableView() + 52) + 8) stopType];
  if (result)
  {
    MEMORY[0x28223BE20](result);
    sub_23D8DE640();
    sub_23D8DCE60();
  }

  return result;
}

uint64_t sub_23D832134()
{
  type metadata accessor for SSDraggableView();
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D8DCB80();
}

id sub_23D8321B4(uint64_t a1)
{
  v2 = type metadata accessor for SSDraggableView();
  if ([*(a1 + *(v2 + 52) + 8) speakFingerState] == 4 || (result = objc_msgSend(*(a1 + *(v2 + 52) + 8), sel_speakFingerState), result == 1))
  {
    sub_23D833FAC();

    sub_23D861AB4();
  }

  return result;
}

uint64_t sub_23D83225C()
{
  v0 = sub_23D8DD780();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  if (LOBYTE(v31) == 1)
  {
    if (qword_27E2ECEC0 != -1)
    {
      swift_once();
    }

    v6 = *&qword_27E2EEAD0;
    v5 = *algn_27E2EEAD8;
  }

  else
  {
    sub_23D833FAC();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D8DCB70();

    v6 = v31;
    v5 = v32;
  }

  sub_23D8DD870();
  sub_23D8DCE00();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v1 + 8))(v4, v0);
  sub_23D8DCDF0();
  v16 = v15;
  v17 = v6 * 0.5 + 5.0;
  v18 = v5 * 0.5;
  sub_23D8DCDF0();
  v20 = v19 - v17 + -5.0;
  v33.origin.x = v8;
  v33.origin.y = v10;
  v33.size.width = v12;
  v33.size.height = v14;
  Height = CGRectGetHeight(v33);
  sub_23D8DCD00();
  if (v20 >= v22)
  {
    sub_23D8DCD00();
    v20 = v17;
    if (v23 >= v17)
    {
      sub_23D8DCD00();
      v20 = v24;
    }
  }

  sub_23D8DCD00();
  if (v25 >= v18)
  {
    v18 = Height + -5.0;
    sub_23D8DCD00();
    if (Height + -5.0 >= v26)
    {
      sub_23D8DCD00();
      v18 = v27;
    }
  }

  sub_23D833FAC();

  sub_23D8DCD00();
  if (v16 * 0.5 >= v28)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v31) = v29;
  sub_23D8DCB80();
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v20;
  v32 = v18;

  return sub_23D8DCB80();
}

uint64_t sub_23D8325F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SSDraggableView();
  sub_23D832744(a1, a3, v5);
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  if (v7 == 1)
  {
    MEMORY[0x28223BE20](result);
    sub_23D8DE640();
    sub_23D8DCE60();
  }

  return result;
}

uint64_t sub_23D832744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23D8DCCF0();
  v6 = v5;
  sub_23D8DCCE0();
  v8 = v7;
  sub_23D8DCCF0();
  result = sub_23D8DCCE0();
  if (*(v3 + *(a3 + 56)) < vabdd_f64(v6, v8))
  {
    MEMORY[0x28223BE20](result);
    v10 = *(a3 + 16);
    sub_23D8DE640();
    sub_23D8DCE60();
  }

  return result;
}

uint64_t sub_23D832828()
{
  v0 = sub_23D8DD780();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  if (LOBYTE(v30) == 1)
  {
    if (qword_27E2ECEC0 != -1)
    {
      swift_once();
    }

    v6 = *&qword_27E2EEAD0;
    v5 = *algn_27E2EEAD8;
  }

  else
  {
    sub_23D833FAC();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D8DCB70();

    v6 = v30;
    v5 = v31;
  }

  sub_23D8DCD00();
  v29 = v7;
  sub_23D8DD870();
  sub_23D8DCE00();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v1 + 8))(v4, v0);
  sub_23D8DCDF0();
  v17 = v16 * 0.5;
  v18 = v6 * 0.5 + 5.0;
  v19 = v5 * 0.5;
  sub_23D8DCDF0();
  v21 = v20;
  v32.origin.x = v9;
  v32.origin.y = v11;
  v32.size.width = v13;
  v32.size.height = v15;
  Height = CGRectGetHeight(v32);
  sub_23D8DCD00();
  if (v17 >= v23)
  {
    sub_23D833FAC();
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = 1;
  }

  else
  {
    v18 = v21 - v18 + -5.0;
    sub_23D833FAC();
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = 2;
  }

  LOBYTE(v30) = v24;

  sub_23D8DCB80();
  sub_23D8DCD00();
  if (v25 >= v19)
  {
    sub_23D8DCD00();
    if (Height + -5.0 >= v26)
    {
      v19 = v29;
    }

    else
    {
      v19 = Height + -5.0;
    }
  }

  sub_23D833FAC();
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v18;
  v31 = v19;

  return sub_23D8DCB80();
}

uint64_t sub_23D832BD0()
{
  type metadata accessor for SSDraggableView();
  sub_23D833FAC();

  sub_23D8DCDF0();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_23D8DCB80();
}

uint64_t sub_23D832CA8()
{
  type metadata accessor for SSDraggableView();
  sub_23D833FAC();

  sub_23D8DCD00();
  sub_23D861AB4();
}

uint64_t sub_23D832D10(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for SSDraggableView();
  sub_23D833FAC();
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D8DCB80();
}

uint64_t sub_23D832DB4@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  type metadata accessor for SSStore();
  sub_23D8333AC(&qword_27E2ED008, type metadata accessor for SSStore);
  *a2 = sub_23D8DD140();
  a2[1] = v4;
  v5 = type metadata accessor for SSDraggableView();
  v6 = v5[9];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ECEE8, &unk_23D8DFDB0);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v5[10];
  sub_23D8DE310();
  *v7 = v18;
  *(v7 + 1) = v19;
  v8 = (a2 + v5[11]);
  v9 = sub_23D82E188();
  *v8 = v10;
  v8[1] = v11;
  v8[2] = v9;
  v12 = (a2 + v5[12]);
  sub_23D8DE310();
  *v12 = v18;
  v12[1] = v19;
  v13 = (a2 + v5[13]);
  v14 = *(a1 + 8);
  *v13 = sub_23D8DCEF0();
  v13[1] = v15;
  result = AXDeviceIsPad();
  v17 = 500.0;
  if (result)
  {
    v17 = 1000.0;
  }

  *(a2 + v5[14]) = v17;
  return result;
}

uint64_t sub_23D832F94@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23D8DE230();
  result = sub_23D8DCDF0();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_23D833000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x23EEEFBA0](a5);
  }

  return sub_23D8DDD40();
}

uint64_t sub_23D833108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_23D8DEA00();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_23D8DE9D0();
  v9 = sub_23D8DE9C0();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  sub_23D870938(0, 0, v7, a3, v10);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23D833274@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SSDraggableView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_23D82EB04(a1, v8, v5, v6, a2);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23D833358()
{
  result = qword_27E2ECF18;
  if (!qword_27E2ECF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ECF18);
  }

  return result;
}

uint64_t sub_23D8333AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D833444(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_23D8334D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D833568(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23D8DD890();

    return sub_23D8DD020();
  }

  else
  {
    sub_23D8DD0B0();
    swift_getWitnessTable();
    sub_23D8DD7E0();
    sub_23D8DD020();
    sub_23D8DEBD0();
    swift_getWitnessTable();
    sub_23D8DD0B0();
    swift_getWitnessTable();
    sub_23D8DD7E0();
    return sub_23D8DD020();
  }
}

uint64_t sub_23D8336CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23D8DD890();
    sub_23D8DD020();
  }

  else
  {
    sub_23D8DD0B0();
    swift_getWitnessTable();
    sub_23D8DD7E0();
    sub_23D8DD020();
    sub_23D8DEBD0();
    swift_getWitnessTable();
    sub_23D8DD0B0();
    swift_getWitnessTable();
    sub_23D8DD7E0();
    sub_23D8DD020();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D8338F0(uint64_t a1)
{
  v2 = sub_23D8DCFA0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D8DD250();
}

void *sub_23D8339F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23D833A08(uint64_t a1, id *a2)
{
  result = sub_23D8DE850();
  *a2 = 0;
  return result;
}

uint64_t sub_23D833A80(uint64_t a1, id *a2)
{
  v3 = sub_23D8DE860();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23D833B00@<X0>(uint64_t *a1@<X8>)
{
  sub_23D8DE870();
  v2 = sub_23D8DE830();

  *a1 = v2;
  return result;
}

uint64_t sub_23D833B44()
{
  v1 = *v0;
  v2 = sub_23D8DE870();
  v3 = MEMORY[0x23EEF0A80](v2);

  return v3;
}

uint64_t sub_23D833B80()
{
  v1 = *v0;
  sub_23D8DE870();
  sub_23D8DE8C0();
}

uint64_t sub_23D833BD4()
{
  v1 = *v0;
  sub_23D8DE870();
  sub_23D8DED50();
  sub_23D8DE8C0();
  v2 = sub_23D8DED80();

  return v2;
}

uint64_t sub_23D833C48()
{
  v1 = *v0;
  sub_23D8DED50();
  sub_23D8DED70();
  return sub_23D8DED80();
}

uint64_t sub_23D833CBC()
{
  v1 = *v0;
  sub_23D8DED50();
  sub_23D8DED70();
  return sub_23D8DED80();
}

uint64_t sub_23D833D04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23D8DE870();
  v6 = v5;
  if (v4 == sub_23D8DE870() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23D8DED20();
  }

  return v9 & 1;
}

_DWORD *sub_23D833DA0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_23D833DC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23D8DE870();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23D833DEC(uint64_t a1)
{
  v2 = sub_23D8333AC(&qword_27E2ED1A0, type metadata accessor for Key);
  v3 = sub_23D8333AC(&qword_27E2ED1A8, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23D833EA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23D8DE830();

  *a2 = v5;
  return result;
}

uint64_t sub_23D833EF0(uint64_t a1)
{
  v2 = sub_23D8333AC(&qword_27E2ED190, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_23D8333AC(&qword_27E2ED198, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23D833FAC()
{
  result = *v0;
  if (!*v0)
  {
    v2 = v0[1];
    type metadata accessor for SSStore();
    sub_23D8333AC(&qword_27E2ED008, type metadata accessor for SSStore);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D834028(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_23D83403C()
{
  result = qword_27E2ECF68;
  if (!qword_27E2ECF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ECF68);
  }

  return result;
}

unint64_t sub_23D834094()
{
  result = qword_27E2ECF70;
  if (!qword_27E2ECF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ECF70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SSWindowState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SSWindowState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for IconDirection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IconDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_23D834400(uint64_t a1)
{
  sub_23D83475C();
  if (v2 <= 0x3F)
  {
    sub_23D8347F0(319, &qword_27E2ED010, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v3 <= 0x3F)
    {
      sub_23D835FA4(319, &qword_27E2ED018, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v4 <= 0x3F)
      {
        sub_23D8347F0(319, &qword_27E2ED020, type metadata accessor for CGPoint, MEMORY[0x277CE10B8]);
        if (v5 <= 0x3F)
        {
          sub_23D835FA4(319, &qword_27E2ED028, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
          if (v6 <= 0x3F)
          {
            v7 = *(a1 + 16);
            v8 = *(*(a1 + 24) + 8);
            sub_23D8DCF20();
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23D8345AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2ECF78, &qword_23D8DFFA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 52) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_23D834690(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2ECF78, &qword_23D8DFFA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 52) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23D83475C()
{
  if (!qword_27E2ED000)
  {
    type metadata accessor for SSStore();
    sub_23D8333AC(&qword_27E2ED008, type metadata accessor for SSStore);
    v0 = sub_23D8DD150();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2ED000);
    }
  }
}

void sub_23D8347F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_23D83487C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23D8DEB20();
  type metadata accessor for SSHUDRoundView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF0, "j-");
  sub_23D8DD020();
  type metadata accessor for SSRoundPipView();
  sub_23D8DD020();
  sub_23D8DD6C0();
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECEF8, &qword_23D8DFDC0);
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECF00, &qword_23D8DFDC8);
  sub_23D8DD020();
  sub_23D8DCE50();
  sub_23D8DD020();
  sub_23D8DD020();
  sub_23D8333AC(&qword_27E2ECF08, MEMORY[0x277CC9DB0]);
  swift_getWitnessTable();
  sub_23D835AD0(&qword_27E2ECF10, &qword_27E2ECEF0, "j-");
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23D833358();
  swift_getWitnessTable();
  sub_23D835AD0(&qword_27E2ECF20, &qword_27E2ECEF8, &qword_23D8DFDC0);
  swift_getWitnessTable();
  sub_23D835AD0(&qword_27E2ECF28, &qword_27E2ECF00, &qword_23D8DFDC8);
  swift_getWitnessTable();
  sub_23D8333AC(&qword_27E2ECF30, MEMORY[0x277CDD8B0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23D8DD0A0();
  swift_getWitnessTable();
  sub_23D8DD0A0();
  type metadata accessor for AXSpeakStopType(255);
  swift_getWitnessTable();
  sub_23D8333AC(&qword_27E2ECF38, type metadata accessor for AXSpeakStopType);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AXSFSpeakFingerState(255);
  swift_getOpaqueTypeConformance2();
  sub_23D8333AC(&qword_27E2ECF40, type metadata accessor for AXSFSpeakFingerState);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ECF48, &unk_23D8DFDD0);
  swift_getOpaqueTypeConformance2();
  sub_23D835AD0(&qword_27E2ECF50, &qword_27E2ECF48, &unk_23D8DFDD0);
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD020();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DCE80();
  return swift_getWitnessTable();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23D834EB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23D834ED0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_23D834F30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for SSDraggableView() - 8) + 80);

  return sub_23D831564();
}

uint64_t sub_23D834FD0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for SSDraggableView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_23D8DCE10() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_23D836234;

  return sub_23D8318F8(v0 + v5, v0 + v8, v2, v3);
}

uint64_t sub_23D835124()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for SSDraggableView() - 8) + 80);

  return sub_23D831B5C();
}

uint64_t sub_23D8351B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SSDraggableView();
  v4 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  return sub_23D831EB8(v3);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SSDraggableView();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5);

  v9 = v3[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ECEE8, &unk_23D8DFDB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DCFA0();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
    v11 = *(v7 + v9);
  }

  v12 = *(v7 + v3[10] + 8);

  v13 = *(v7 + v3[11] + 16);

  v14 = *(v7 + v3[12] + 8);

  v15 = *(v7 + v3[13] + 8);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23D8353AC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for SSDraggableView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_23D835444()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for SSDraggableView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(*(sub_23D8DCE10() - 8) + 80);
  return sub_23D83225C();
}

uint64_t sub_23D835524(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for SSDraggableView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23D8DCE10() - 8);
  v9 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_23D8325F8(a1, v1 + v6, v9);
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SSDraggableView();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = sub_23D8DCE10();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v22 = *(v8 + 64);
  v10 = v0 + v5;
  v11 = *(v0 + v5);

  v12 = v3[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ECEE8, &unk_23D8DFDB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCFA0();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
    v14 = *(v10 + v12);
  }

  v15 = v4 | v9;
  v16 = (v5 + v6 + v9) & ~v9;
  v17 = *(v10 + v3[10] + 8);

  v18 = *(v10 + v3[11] + 16);

  v19 = *(v10 + v3[12] + 8);

  v20 = *(v10 + v3[13] + 8);
  swift_unknownObjectRelease();
  (*(v8 + 8))(v0 + v16, v7);

  return MEMORY[0x2821FE8E8](v0, v16 + v22, v15 | 7);
}

uint64_t sub_23D835814()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for SSDraggableView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_23D8DCE10() - 8);
  v7 = v0 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_23D832BD0();
}

uint64_t sub_23D83590C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  type metadata accessor for SSDraggableView();
  return sub_23D832828();
}

uint64_t sub_23D835970()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_23D832CA8();
}

uint64_t sub_23D835990()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23D832134();
}

uint64_t sub_23D835A24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23D835AA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  return sub_23D832D10(*(v0 + 32), *(v0 + 48));
}

uint64_t sub_23D835AD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23D835B18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D835B50(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_23D835B7C()
{
  result = qword_27E2ED100;
  if (!qword_27E2ED100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED100);
  }

  return result;
}

uint64_t sub_23D835BD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D835C08()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23D835CB4;

  return sub_23D8CCA34();
}

uint64_t sub_23D835CB4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23D835DA8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23D836234;

  return sub_23D8CC9A0();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D835EE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23D835F00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_23D835FA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23D836288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23D8363DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_23D83653C()
{
  sub_23D83C388(319, &qword_27E2ED228, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23D8366C8();
    if (v1 <= 0x3F)
    {
      sub_23D83675C();
      if (v2 <= 0x3F)
      {
        sub_23D836838();
        if (v3 <= 0x3F)
        {
          sub_23D83691C(319, &qword_27E2ED258, &qword_27E2ED260, &qword_23D8E08F8, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_23D8368CC();
            if (v5 <= 0x3F)
            {
              sub_23D83691C(319, &qword_27E2ED268, &qword_27E2ED270, &qword_23D8E0900, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23D8366C8()
{
  if (!qword_27E2ED230)
  {
    sub_23D8DC9F0();
    sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    v0 = sub_23D8DD150();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2ED230);
    }
  }
}

void sub_23D83675C()
{
  if (!qword_27E2ED240)
  {
    sub_23D8DC430();
    sub_23D8367F0(&unk_27E2F0420, MEMORY[0x277CE7230]);
    v0 = sub_23D8DD150();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2ED240);
    }
  }
}

uint64_t sub_23D8367F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23D836838()
{
  if (!qword_27E2ED248)
  {
    sub_23D8DC900();
    sub_23D8367F0(&qword_27E2ED250, MEMORY[0x277CE73E8]);
    v0 = sub_23D8DCF20();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2ED248);
    }
  }
}

void sub_23D8368CC()
{
  if (!qword_27E2ED018)
  {
    v0 = sub_23D8DE350();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2ED018);
    }
  }
}

void sub_23D83691C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_23D836994()
{
  result = qword_27E2ED278;
  if (!qword_27E2ED278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED278);
  }

  return result;
}

uint64_t sub_23D836A04()
{
  v1 = type metadata accessor for AXRPresetSelectView(0);
  if (*(v0 + *(v1 + 44)))
  {
    if (*(v0 + *(v1 + 44)) == 1)
    {

      return sub_23D8DC4F0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED378, &qword_23D8E18F0);
      v3 = sub_23D8DC510();
      v4 = *(v3 - 8);
      v5 = *(v4 + 72);
      v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_23D8E0880;
      v8 = v7 + v6;
      v9 = *(v4 + 104);
      v9(v8, *MEMORY[0x277CE7278], v3);
      v9(v8 + v5, *MEMORY[0x277CE7298], v3);
      v9(v8 + 2 * v5, *MEMORY[0x277CE7288], v3);
      v9(v8 + 3 * v5, *MEMORY[0x277CE7270], v3);
      v9(v8 + 4 * v5, *MEMORY[0x277CE7268], v3);
      v9(v8 + 5 * v5, *MEMORY[0x277CE7280], v3);
      return v7;
    }
  }

  else
  {

    return sub_23D8DC4E0();
  }
}

uint64_t sub_23D836C18@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED280, &qword_23D8E09D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED288, &qword_23D8E09D8);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v30 - v8;
  v10 = sub_23D8DE560();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_23D836A04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED290, &qword_23D8E09E0);
  v16 = *(sub_23D8DE570() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23D8E0890;
  *v14 = xmmword_23D8E08A0;
  (*(v11 + 104))(v14, *MEMORY[0x277CDF108], v10);
  sub_23D8DE580();
  v32 = v19;
  v33 = v1;
  v34 = v15;
  sub_23D8DD9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED298, &qword_23D8E09E8);
  sub_23D835AD0(&qword_27E2ED2A0, &qword_27E2ED298, &qword_23D8E09E8);
  sub_23D8DCC80();

  v20 = (v1 + *(type metadata accessor for AXRPresetSelectView(0) + 20));
  if (*v20)
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v21 = sub_23D8DEB80();
    v22 = sub_23D8DEB70();

    v23 = sub_23D8DCCB0();
    v24 = *(v23 - 8);
    v25 = MEMORY[0x277CDF3D0];
    if ((v22 & 1) == 0)
    {
      v25 = MEMORY[0x277CDF3C0];
    }

    (*(*(v23 - 8) + 104))(v5, *v25, v23);
    (*(v24 + 56))(v5, 0, 1, v23);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED2B0, &qword_23D8E09F0);
    v27 = v31;
    sub_23D83C744(v5, v31 + *(v26 + 36), &qword_27E2ED280, &qword_23D8E09D0);
    return (*(v6 + 32))(v27, v9, v30);
  }

  else
  {
    v29 = v20[1];
    sub_23D8DC9F0();
    sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8370C8()
{
  v0 = sub_23D8DD790();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);

  sub_23D8DD560();
  sub_23D8367F0(&qword_27E2ED2B8, MEMORY[0x277CE0428]);
  sub_23D8DED90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED2C0, &qword_23D8E09F8);
  sub_23D835AD0(&qword_27E2ED2C8, &qword_27E2ED2C0, &qword_23D8E09F8);
  return sub_23D8DE690();
}

uint64_t sub_23D83724C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v51 = a1;
  v59 = a3;
  v3 = type metadata accessor for AXRPresetSelectView(0);
  v53 = *(v3 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED2D0, &qword_23D8E0A00);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v48 - v10;
  v11 = sub_23D8DD770();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED2D8, &qword_23D8E0A08);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED2E0, &qword_23D8E0A10);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v50 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v48 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED2E8, &qword_23D8E0A18);
  sub_23D83813C();
  sub_23D8DE360();
  sub_23D8DD760();
  sub_23D835AD0(&qword_27E2ED2F8, &qword_27E2ED2D8, &qword_23D8E0A08);
  sub_23D8367F0(&qword_27E2ED300, MEMORY[0x277CDE0B8]);
  sub_23D8DDD10();
  (*(v12 + 8))(v15, v11);
  (*(v17 + 8))(v20, v16);
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = 1;
  v30 = *(v22 + 44);
  v49 = v27;
  v31 = &v27[v30];
  *v31 = KeyPath;
  v31[1] = sub_23D83B780;
  v31[2] = v29;
  v32 = v51;
  v33 = *(v51 + 16);
  v60 = 0;
  v61 = v33;
  swift_getKeyPath();
  sub_23D83BD14(v55, v5, type metadata accessor for AXRPresetSelectView);
  v34 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  sub_23D83C4F4(v5, v35 + v34, type metadata accessor for AXRPresetSelectView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED310, &qword_23D8E0A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED318, &qword_23D8E0A80);
  sub_23D83BA24();
  sub_23D83BB04();
  v36 = v54;
  sub_23D8DE4C0();
  v37 = v27;
  v38 = v50;
  sub_23D83C67C(v37, v50, &qword_27E2ED2E0, &qword_23D8E0A10);
  v39 = v56;
  v40 = v57;
  v41 = *(v57 + 16);
  v42 = v36;
  v43 = v58;
  v41(v56, v36, v58);
  v44 = v59;
  sub_23D83C67C(v38, v59, &qword_27E2ED2E0, &qword_23D8E0A10);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED360, &qword_23D8E0A98);
  v41((v44 + *(v45 + 48)), v39, v43);
  v46 = *(v40 + 8);
  v46(v42, v43);
  sub_23D83C6E4(v49, &qword_27E2ED2E0, &qword_23D8E0A10);
  v46(v39, v43);
  return sub_23D83C6E4(v38, &qword_27E2ED2E0, &qword_23D8E0A10);
}

double sub_23D837888@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE230();
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_23D837904@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  v7 = *(*(v79 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v79);
  v78 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = v67 - v10;
  v11 = type metadata accessor for AXRThemePresetButton(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED340, &qword_23D8E0A88);
  v84 = *(v15 - 8);
  v16 = *(v84 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v81 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v80 = v67 - v19;
  v20 = sub_23D8DC510();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v27 >= *(a2 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v82 = v15;
  v28 = a2 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v27;
  v29 = v67 - v26;
  v30 = *(v21 + 16);
  v30(v67 - v26, v28, v20);
  (*(v21 + 104))(v25, *MEMORY[0x277CE7290], v20);
  sub_23D8367F0(&qword_27E2ED368, MEMORY[0x277CE72A0]);
  v85 = v29;
  LOBYTE(v29) = sub_23D8DE820();
  v31 = *(v21 + 8);
  v31(v25, v20);
  if (v29)
  {
    v31(v85, v20);
    v32 = 1;
    v33 = v82;
    return (*(v84 + 56))(a4, v32, 1, v33);
  }

  v76 = a4;
  v69 = v30;
  v30(v25, v85, v20);
  v74 = type metadata accessor for AXRPresetSelectView(0);
  v34 = *(v83 + v74[7] + 8);
  v35 = (v83 + v74[10]);
  v37 = v35[1];
  v72 = *v35;
  v36 = v72;
  v70 = v34;
  v71 = v37;

  sub_23D83BCC8(v36);
  v38 = sub_23D8DC9F0();
  v39 = sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8]);
  v75 = v38;
  v73 = v39;
  *v14 = sub_23D8DD140();
  v14[1] = v40;
  sub_23D8DC430();
  v68 = v31;
  sub_23D8367F0(&unk_27E2F0420, MEMORY[0x277CE7230]);
  v14[2] = sub_23D8DD140();
  v14[3] = v41;
  v67[1] = v21 + 16;
  v42 = v11[7];
  v43 = sub_23D8DC140();
  v44 = v77;
  (*(*(v43 - 8) + 56))(v77, 1, 1, v43);
  sub_23D83C67C(v44, v78, &qword_27E2ED260, &qword_23D8E08F8);
  sub_23D8DE310();
  sub_23D83C6E4(v44, &qword_27E2ED260, &qword_23D8E08F8);
  v45 = v11[11];
  v46 = (v14 + v11[10]);
  *(v14 + v45) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED370, &qword_23D8E0AD0);
  swift_storeEnumTagMultiPayload();
  v47 = v11[12];
  *(v14 + v47) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  swift_storeEnumTagMultiPayload();
  v48 = v14 + v11[13];
  LOBYTE(v86) = 0;
  sub_23D8DE310();
  v49 = *(&v88 + 1);
  *v48 = v88;
  *(v48 + 1) = v49;
  v50 = v14 + v11[14];
  type metadata accessor for CGSize(0);
  v86 = 0;
  v87 = 0;
  sub_23D8DE310();
  v51 = v89;
  *v50 = v88;
  *(v50 + 2) = v51;
  v69(v14 + v11[8], v25, v20);
  *(v14 + v11[9]) = 1;
  sub_23D8DC900();
  sub_23D8367F0(&qword_27E2ED250, MEMORY[0x277CE73E8]);
  v52 = sub_23D8DCEF0();
  v54 = v53;
  v55 = v68;
  v68(v25, v20);
  v14[4] = v52;
  v14[5] = v54;
  v56 = v71;
  *v46 = v72;
  v46[1] = v56;
  v27 = v83 + v74[5];
  v57 = *v27;
  if (*v27)
  {
    v58 = *v27;

    v59 = sub_23D8DCB10();
    v55(v85, v20);
    v60 = v81;
    sub_23D83BD14(v14, v81, type metadata accessor for AXRThemePresetButton);
    v33 = v82;
    v61 = (v60 + *(v82 + 36));
    *v61 = v59;
    v61[1] = v57;
    sub_23D83D054(v14, type metadata accessor for AXRThemePresetButton);
    v62 = v60;
    v63 = v80;
    sub_23D83C744(v62, v80, &qword_27E2ED340, &qword_23D8E0A88);
    v64 = v63;
    a4 = v76;
    sub_23D83C744(v64, v76, &qword_27E2ED340, &qword_23D8E0A88);
    v32 = 0;
    return (*(v84 + 56))(a4, v32, 1, v33);
  }

LABEL_10:
  v66 = *(v27 + 8);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D8380DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23D8370C8();
}

unint64_t sub_23D8380E8()
{
  result = qword_27E2ED2A8;
  if (!qword_27E2ED2A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2ED2A8);
  }

  return result;
}

unint64_t sub_23D83813C()
{
  result = qword_27E2ED2F0;
  if (!qword_27E2ED2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED2E8, &qword_23D8E0A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED2F0);
  }

  return result;
}

uint64_t sub_23D8381C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AXRThemePresetButton(0);
  sub_23D83C67C(v1 + *(v12 + 48), v11, &qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCF90();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23D8DEAB0();
    v16 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23D8383C8()
{
  v0 = sub_23D8DCF90();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_23D8381C0(&v11 - v6);
  (*(v1 + 104))(v5, *MEMORY[0x277CDF9A8], v0);
  sub_23D8367F0(&qword_27E2ED3F8, MEMORY[0x277CDFA28]);
  v8 = sub_23D8DE800();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if (v8)
  {
    v12 = sub_23D8DD570();
    v13 = 0;
    v14 = 1;
    sub_23D83CC80();
  }

  else
  {
    v12 = sub_23D8DD420();
    v13 = 0;
    v14 = 1;
    sub_23D83CC2C();
  }

  return sub_23D8DE680();
}

uint64_t sub_23D838590()
{
  if (*v0)
  {
    v1 = *(type metadata accessor for AXRThemePresetButton(0) + 32);

    sub_23D8DC9D0();

    v2 = sub_23D8DC870();
    v4 = v3;

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      return v2;
    }

    else
    {

      v7 = sub_23D8DC990();

      return v7;
    }
  }

  else
  {
    v8 = v0[1];
    sub_23D8DC9F0();
    sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8386B8(char *a1)
{
  v2 = sub_23D8DC510();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v7 = type metadata accessor for AXRThemePresetButton(0);
    (*(v3 + 16))(v6, &a1[*(v7 + 32)], v2);

    sub_23D8DC980();
  }

  else
  {
    v9 = *(a1 + 1);
    sub_23D8DC9F0();
    sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D83880C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DCF90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED3E8, &qword_23D8E0BA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v22 - v14);
  sub_23D8381C0(v11);
  (*(v5 + 104))(v9, *MEMORY[0x277CDF9A8], v4);
  sub_23D8367F0(&qword_27E2ED3F8, MEMORY[0x277CDFA28]);
  v16 = sub_23D8DE800();
  v17 = *(v5 + 8);
  v17(v9, v4);
  v17(v11, v4);
  if (v16)
  {
    v18 = sub_23D8DE600();
  }

  else
  {
    v18 = sub_23D8DE5F0();
  }

  *v15 = v18;
  v15[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED400, &qword_23D8E0BA8);
  sub_23D838A5C(a1, v15 + *(v20 + 44));
  sub_23D83C744(v15, a2, &qword_27E2ED3E8, &qword_23D8E0BA0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED3D0, &qword_23D8E0B98);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_23D838A5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED408, &qword_23D8E0BB0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v27 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED410, &qword_23D8E0BB8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  sub_23D838CA0(&v27 - v17);
  *v11 = sub_23D8383C8();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED418, &qword_23D8E0BC0);
  sub_23D839DC0(a1, v11 + *(v19 + 44));
  LOBYTE(a1) = sub_23D8DD9D0();
  sub_23D8DCC20();
  v20 = v11 + *(v5 + 44);
  *v20 = a1;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_23D83C67C(v18, v16, &qword_27E2ED410, &qword_23D8E0BB8);
  sub_23D83C67C(v11, v9, &qword_27E2ED408, &qword_23D8E0BB0);
  sub_23D83C67C(v16, a2, &qword_27E2ED410, &qword_23D8E0BB8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED420, &qword_23D8E0BC8);
  sub_23D83C67C(v9, a2 + *(v25 + 48), &qword_27E2ED408, &qword_23D8E0BB0);
  sub_23D83C6E4(v11, &qword_27E2ED408, &qword_23D8E0BB0);
  sub_23D83C6E4(v18, &qword_27E2ED410, &qword_23D8E0BB8);
  sub_23D83C6E4(v9, &qword_27E2ED408, &qword_23D8E0BB0);
  return sub_23D83C6E4(v16, &qword_27E2ED410, &qword_23D8E0BB8);
}

uint64_t sub_23D838CA0@<X0>(uint64_t a1@<X8>)
{
  v176 = a1;
  v2 = sub_23D8DC510();
  v170 = *(v2 - 8);
  v171 = v2;
  v3 = *(v170 + 64);
  MEMORY[0x28223BE20](v2);
  v168 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED518, &qword_23D8E0C78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v177 = &v146 - v7;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED520, &qword_23D8E0C80);
  v8 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v174 = &v146 - v9;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED528, &qword_23D8E0C88);
  v10 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v175 = &v146 - v11;
  v12 = type metadata accessor for AXRThemePresetButton(0);
  v164 = *(v12 - 8);
  v13 = *(v164 + 64);
  MEMORY[0x28223BE20](v12);
  v165 = v14;
  v166 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23D8DE150();
  v162 = *(v15 - 8);
  v163 = v15;
  v16 = *(v162 + 64);
  MEMORY[0x28223BE20](v15);
  v161 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23D8DCCB0();
  v158 = *(v18 - 8);
  v159 = v18;
  v19 = *(v158 + 64);
  MEMORY[0x28223BE20](v18);
  v157 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23D8DE5C0();
  v151 = *(v21 - 8);
  v152 = v21;
  v22 = *(v151 + 64);
  MEMORY[0x28223BE20](v21);
  v149 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23D8DD090();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v185 = (&v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v29 = (&v146 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED530, &qword_23D8E0C90);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v146 - v32;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED538, &qword_23D8E0C98);
  v34 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v36 = &v146 - v35;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED540, &qword_23D8E0CA0);
  v37 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v39 = &v146 - v38;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED548, &qword_23D8E0CA8);
  v40 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v155 = &v146 - v41;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED550, &qword_23D8E0CB0);
  v42 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v156 = &v146 - v43;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED558, &qword_23D8E0CB8);
  v44 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v186 = &v146 - v45;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED560, &unk_23D8E0CC0);
  v46 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v169 = &v146 - v47;
  v184 = v24;
  v48 = *(v24 + 20);
  v49 = *MEMORY[0x277CE0118];
  v50 = sub_23D8DD4E0();
  v51 = *(v50 - 8);
  v52 = *(v51 + 104);
  v183 = v49;
  v180 = v50;
  v181 = v51 + 104;
  v182 = v52;
  (v52)(v29 + v48, v49);
  __asm { FMOV            V0.2D, #26.0 }

  v146 = _Q0;
  *v29 = _Q0;
  if (*v1)
  {
    v178 = v12;
    v58 = *(v12 + 32);
    v187 = v1;
    v59 = v1 + v58;

    sub_23D8DC9D0();

    v60 = sub_23D8DC7E0();

    sub_23D83C4F4(v29, v33, MEMORY[0x277CDFC08]);
    *&v33[*(v30 + 52)] = v60;
    *&v33[*(v30 + 56)] = 256;

    v179 = v59;
    sub_23D8DC9D0();

    sub_23D8DC7E0();

    sub_23D8DE230();
    v61 = sub_23D8DE1E0();

    v148 = v39;
    v62 = v149;
    if (v61)
    {
      sub_23D8DE5A0();
    }

    else
    {
      sub_23D8DE5B0();
    }

    v63 = &v36[*(v147 + 36)];
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED568, &qword_23D8E2140);
    v65 = &v63[*(v64 + 52)];
    v182(&v65[*(v184 + 20)], v183, v180);
    *v65 = v146;
    (*(v151 + 32))(v63, v62, v152);
    *&v63[*(v64 + 56)] = 256;
    sub_23D83C744(v33, v36, &qword_27E2ED530, &qword_23D8E0C90);
    KeyPath = swift_getKeyPath();

    sub_23D8DC9D0();

    sub_23D8DC7E0();

    sub_23D8380E8();
    sub_23D8DEB60();
    sub_23D8DE130();
    v67 = sub_23D8DE1E0();

    v69 = v158;
    v68 = v159;
    v70 = MEMORY[0x277CDF3C0];
    if ((v67 & 1) == 0)
    {
      v70 = MEMORY[0x277CDF3D0];
    }

    v71 = v157;
    (*(v158 + 104))(v157, *v70, v159);
    v72 = v148;
    v73 = &v148[*(v150 + 36)];
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v69 + 32))(v73 + *(v74 + 28), v71, v68);
    *v73 = KeyPath;
    sub_23D83C744(v36, v72, &qword_27E2ED538, &qword_23D8E0C98);
    sub_23D8DE5F0();
    sub_23D8DD0D0();
    v75 = v72;
    v76 = v155;
    sub_23D83C744(v75, v155, &qword_27E2ED540, &qword_23D8E0CA0);
    v77 = (v76 + *(v153 + 36));
    v78 = v193;
    v77[4] = v192;
    v77[5] = v78;
    v77[6] = v194;
    v79 = v189;
    *v77 = v188;
    v77[1] = v79;
    v80 = v191;
    v77[2] = v190;
    v77[3] = v80;
    (*(v162 + 104))(v161, *MEMORY[0x277CE0ED0], v163);
    v81 = sub_23D8DE280();
    v82 = v156;
    sub_23D83C744(v76, v156, &qword_27E2ED548, &qword_23D8E0CA8);
    v83 = (v82 + *(v154 + 36));
    *v83 = v81;
    v83[1] = 0x3FF0000000000000;
    v83[2] = 0;
    v83[3] = 0;
    v84 = v166;
    sub_23D83BD14(v187, v166, type metadata accessor for AXRThemePresetButton);
    v85 = (*(v164 + 80) + 16) & ~*(v164 + 80);
    v86 = swift_allocObject();
    sub_23D83C4F4(v84, v86 + v85, type metadata accessor for AXRThemePresetButton);
    v87 = sub_23D8DE5F0();
    v89 = v88;
    v90 = v186;
    sub_23D83C744(v82, v186, &qword_27E2ED550, &qword_23D8E0CB0);
    v91 = (v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED578, &qword_23D8E0D08) + 36));
    *v91 = sub_23D832F94;
    v91[1] = 0;
    v91[2] = v87;
    v91[3] = v89;
    v92 = swift_allocObject();
    *(v92 + 16) = sub_23D83CF9C;
    *(v92 + 24) = v86;
    v93 = (v90 + *(v160 + 36));
    *v93 = sub_23D83D04C;
    v93[1] = v92;
    v94 = v185;
    v182(v185 + *(v184 + 20), v183, v180);
    __asm { FMOV            V0.2D, #30.0 }

    *v94 = _Q0;

    v96 = v168;
    sub_23D8DC970();

    sub_23D8367F0(&qword_27E2ED448, MEMORY[0x277CE72A0]);
    v97 = v171;
    sub_23D8DE980();
    sub_23D8DE980();
    if (v198 == v195 && *(&v198 + 1) == *(&v195 + 1))
    {
      (*(v170 + 8))(v96, v97);

      v99 = v175;
      v98 = v176;
      v101 = v173;
      v100 = v174;
      v102 = v177;
    }

    else
    {
      v103 = sub_23D8DED20();
      (*(v170 + 8))(v96, v97);

      v99 = v175;
      v98 = v176;
      v101 = v173;
      v100 = v174;
      v102 = v177;
      if ((v103 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (*(v187 + *(v178 + 36)) == 1)
    {
      v104 = sub_23D8DE200();
LABEL_14:
      v105 = v104;
      sub_23D8DCD60();
      v106 = v185;
      sub_23D83BD14(v185, v102, MEMORY[0x277CDFC08]);
      v107 = v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED580, &qword_23D8E0D10) + 36);
      v108 = v196;
      *v107 = v195;
      *(v107 + 16) = v108;
      *(v107 + 32) = v197;
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED588, &qword_23D8E0D18);
      *(v102 + *(v109 + 52)) = v105;
      *(v102 + *(v109 + 56)) = 256;
      v110 = sub_23D8DE5F0();
      v112 = v111;
      sub_23D83D054(v106, MEMORY[0x277CDFC08]);
      v113 = (v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED590, &qword_23D8E0D20) + 36));
      *v113 = v110;
      v113[1] = v112;
      v114 = v187 + *(v178 + 56);
      v115 = *(v114 + 2);
      v198 = *v114;
      *&v199 = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED598, &qword_23D8E0D28);
      sub_23D8DE320();
      sub_23D8DE5F0();
      sub_23D8DD0D0();
      sub_23D83C744(v102, v100, &qword_27E2ED518, &qword_23D8E0C78);
      v116 = (v100 + *(v172 + 36));
      v117 = v203;
      v116[4] = v202;
      v116[5] = v117;
      v116[6] = v204;
      v118 = v199;
      *v116 = v198;
      v116[1] = v118;
      v119 = v201;
      v116[2] = v200;
      v116[3] = v119;
      LOBYTE(v110) = sub_23D8DD9D0();
      sub_23D8DCC20();
      v121 = v120;
      v123 = v122;
      v125 = v124;
      v127 = v126;
      sub_23D83C744(v100, v99, &qword_27E2ED520, &qword_23D8E0C80);
      v128 = v99 + *(v101 + 36);
      *v128 = v110;
      *(v128 + 8) = v121;
      *(v128 + 16) = v123;
      *(v128 + 24) = v125;
      *(v128 + 32) = v127;
      *(v128 + 40) = 0;
      v129 = sub_23D8DE5F0();
      v131 = v130;
      v132 = v169;
      v133 = &v169[*(v167 + 36)];
      sub_23D83C744(v99, v133, &qword_27E2ED528, &qword_23D8E0C88);
      v134 = (v133 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5A0, &qword_23D8E0D30) + 36));
      *v134 = v129;
      v134[1] = v131;
      sub_23D83C744(v186, v132, &qword_27E2ED558, &qword_23D8E0CB8);
      LOBYTE(v129) = sub_23D8DD9D0();
      sub_23D8DCC20();
      v136 = v135;
      v138 = v137;
      v140 = v139;
      v142 = v141;
      sub_23D83C744(v132, v98, &qword_27E2ED560, &unk_23D8E0CC0);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED410, &qword_23D8E0BB8);
      v144 = v98 + *(result + 36);
      *v144 = v129;
      *(v144 + 8) = v136;
      *(v144 + 16) = v138;
      *(v144 + 24) = v140;
      *(v144 + 32) = v142;
      *(v144 + 40) = 0;
      return result;
    }

LABEL_13:
    v104 = sub_23D8DE230();
    goto LABEL_14;
  }

  v145 = v1[1];
  sub_23D8DC9F0();
  sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8]);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D839DC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED428, &qword_23D8E0BD0);
  v76 = *(v77 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v72 - v4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED430, &qword_23D8E0BD8);
  v5 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v80 = &v72 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED438, &qword_23D8E0BE0);
  v85 = *(v86 - 8);
  v7 = *(v85 + 64);
  v8 = MEMORY[0x28223BE20](v86);
  v79 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v72 - v10;
  v11 = sub_23D8DC510();
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED440, &qword_23D8E0BE8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v87 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v84 = &v72 - v19;
  v20 = sub_23D8DCF90();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v72 - v26;
  sub_23D83A7B4(&v96);
  sub_23D8381C0(v27);
  v28 = v21[13];
  v89 = *MEMORY[0x277CDF9A8];
  v91 = v21 + 13;
  v73 = v28;
  v28(v25);
  v90 = sub_23D8367F0(&qword_27E2ED3F8, MEMORY[0x277CDFA28]);
  v83 = sub_23D8DE800();
  v29 = v21[1];
  v29(v25, v20);
  v72 = v29;
  v29(v27, v20);
  if (*a1)
  {
    v30 = *a1;

    sub_23D8DC970();

    v31 = *(type metadata accessor for AXRThemePresetButton(0) + 32);
    sub_23D8367F0(&qword_27E2ED448, MEMORY[0x277CE72A0]);
    sub_23D8DE980();
    v81 = a1;
    sub_23D8DE980();
    if (v94[0] == v92[0])
    {
      (*(v82 + 8))(v14, v11);
    }

    else
    {
      v32 = sub_23D8DED20();
      (*(v82 + 8))(v14, v11);

      if ((v32 & 1) == 0)
      {
        v60 = 1;
        v55 = v86;
        v59 = v84;
        goto LABEL_7;
      }
    }

    v33 = v75;
    sub_23D83AB04(v75);
    LODWORD(v82) = sub_23D8DDA40();
    sub_23D8381C0(v27);
    v34 = v73;
    v73(v25, v89, v20);
    sub_23D8DE800();
    v35 = v72;
    v72(v25, v20);
    v35(v27, v20);
    sub_23D8DCC20();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = v80;
    (*(v76 + 32))(v80, v33, v77);
    v45 = v44 + *(v74 + 36);
    *v45 = v82;
    *(v45 + 8) = v37;
    *(v45 + 16) = v39;
    *(v45 + 24) = v41;
    *(v45 + 32) = v43;
    *(v45 + 40) = 0;
    LOBYTE(v33) = sub_23D8DDA00();
    sub_23D8381C0(v27);
    v34(v25, v89, v20);
    sub_23D8DE800();
    v35(v25, v20);
    v35(v27, v20);
    sub_23D8DCC20();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v79;
    sub_23D83C744(v44, v79, &qword_27E2ED430, &qword_23D8E0BD8);
    v55 = v86;
    v56 = v54 + *(v86 + 36);
    *v56 = v33;
    *(v56 + 8) = v47;
    *(v56 + 16) = v49;
    *(v56 + 24) = v51;
    *(v56 + 32) = v53;
    *(v56 + 40) = 0;
    v57 = v54;
    v58 = v78;
    sub_23D83C744(v57, v78, &qword_27E2ED438, &qword_23D8E0BE0);
    v59 = v84;
    sub_23D83C744(v58, v84, &qword_27E2ED438, &qword_23D8E0BE0);
    v60 = 0;
LABEL_7:
    (*(v85 + 56))(v59, v60, 1, v55);
    v61 = v83;
    v62 = (v83 & 1) == 0;
    v63 = v87;
    sub_23D83C67C(v59, v87, &qword_27E2ED440, &qword_23D8E0BE8);
    v64 = *v99;
    v92[2] = v98;
    v93[0] = *v99;
    v65 = *&v99[9];
    *(v93 + 9) = *&v99[9];
    v67 = v96;
    v66 = v97;
    v92[1] = v97;
    v92[0] = v96;
    v68 = v88;
    *(v88 + 32) = v98;
    *(v68 + 48) = v64;
    *(v68 + 57) = v65;
    *v68 = v67;
    *(v68 + 16) = v66;
    *(v68 + 80) = 0;
    *(v68 + 88) = v62;
    *(v68 + 89) = v61 & 1;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED450, &qword_23D8E0BF0);
    sub_23D83C67C(v63, v68 + *(v69 + 64), &qword_27E2ED440, &qword_23D8E0BE8);
    sub_23D83C67C(v92, v94, &qword_27E2ED458, &qword_23D8E0BF8);
    sub_23D83C6E4(v59, &qword_27E2ED440, &qword_23D8E0BE8);
    sub_23D83C6E4(v63, &qword_27E2ED440, &qword_23D8E0BE8);
    v94[2] = v98;
    *v95 = *v99;
    *&v95[9] = *&v99[9];
    v94[1] = v97;
    v94[0] = v96;
    return sub_23D83C6E4(v94, &qword_27E2ED458, &qword_23D8E0BF8);
  }

  v71 = a1[1];
  sub_23D8DC9F0();
  sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8]);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D83A7B4@<X0>(uint64_t a1@<X8>)
{
  v46 = sub_23D8DCA70();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_23D838590();
  v48 = v7;
  sub_23D83CB18();
  v8 = sub_23D8DDCB0();
  v45 = v11;
  if (*v1)
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = *(type metadata accessor for AXRThemePresetButton(0) + 32);

    v43 = v15;
    sub_23D8DC9D0();

    sub_23D8DC840();

    v16 = *MEMORY[0x277D76918];
    sub_23D8DCA10();
    (*(v3 + 8))(v6, v46);
    v46 = sub_23D8DDC40();
    v41 = v18;
    v42 = v17;
    v44 = v1;
    v20 = v19;

    sub_23D83CB6C(v12, v13, v14 & 1);

    sub_23D8DC9D0();

    sub_23D8DC800();

    LOBYTE(v13) = v20;
    v21 = v46;
    v22 = v42;
    v45 = sub_23D8DDC00();
    v24 = v23;
    v26 = v25;

    sub_23D83CB6C(v21, v22, v13 & 1);

    sub_23D8DC9D0();

    sub_23D8DC860();

    v27 = v45;
    v28 = sub_23D8DDC30();
    v30 = v29;
    LOBYTE(v15) = v31;
    v33 = v32;
    sub_23D83CB6C(v27, v24, v26 & 1);

    v34 = sub_23D8DDA10();
    result = sub_23D8DCC20();
    LOBYTE(v47) = v15 & 1;
    v49 = 0;
    *a1 = v28;
    *(a1 + 8) = v30;
    *(a1 + 16) = v15 & 1;
    *(a1 + 24) = v33;
    *(a1 + 32) = v34;
    *(a1 + 40) = v36;
    *(a1 + 48) = v37;
    *(a1 + 56) = v38;
    *(a1 + 64) = v39;
    *(a1 + 72) = 0;
  }

  else
  {
    v40 = v1[1];
    sub_23D8DC9F0();
    sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D83AB04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_23D8DD080();
  v4 = *(v3 - 8);
  v25 = v3;
  v26 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED460, &qword_23D8E0C00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = sub_23D8DDBB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x277CE0A68], v13);
  v18 = sub_23D8DDBA0();
  v19 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];

  [v19 scaledValueForValue_];
  v21 = v20;

  v30 = 0;
  v28 = v21;
  v29 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED468, &qword_23D8E0C08);
  sub_23D83C7B8();
  sub_23D83CAC4();
  sub_23D8DCEC0();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2ED4E8, &qword_27E2ED460, &qword_23D8E0C00);
  sub_23D8367F0(&qword_27E2ED4F0, MEMORY[0x277CDDB18]);
  v22 = v25;
  sub_23D8DDD10();
  (*(v26 + 8))(v7, v22);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_23D83AE80(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AXRThemePresetButton(0) + 56));
  v3 = *v1;
  v4 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED598, &qword_23D8E0D28);
  return sub_23D8DE330();
}

uint64_t sub_23D83AF00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4F8, &qword_23D8E0C40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v63 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED480, &qword_23D8E0C10);
  v7 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v9 = &v63 - v8;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v10 = 0x746964652E727861;
  if (qword_27E2F3C80)
  {
    v11 = qword_27E2F3C80;
    v12 = sub_23D8DE830();
    v13 = sub_23D8DE830();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    v10 = sub_23D8DE870();
    v16 = v15;
  }

  else
  {
    v16 = 0xE800000000000000;
  }

  v71 = v10;
  v72 = v16;
  sub_23D83CB18();
  v17 = sub_23D8DDCB0();
  v19 = v18;
  v21 = v20;
  v22 = sub_23D8DDAB0();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  sub_23D8DDB30();
  sub_23D83C6E4(v6, &qword_27E2ED4F8, &qword_23D8E0C40);
  v23 = sub_23D8DDC40();
  v25 = v24;
  v27 = v26;
  v66 = v28;

  sub_23D83CB6C(v17, v19, v21 & 1);

  if (*a1)
  {
    sub_23D8380E8();
    v29 = *(type metadata accessor for AXRThemePresetButton(0) + 32);

    sub_23D8DC9D0();

    sub_23D8DC7E0();

    v30 = sub_23D8DEB80();
    v31 = sub_23D8DEB70();

    v67 = v25;
    v68 = v23;
    if (v31)
    {
      v32 = sub_23D8DE220();
    }

    else
    {
      v32 = sub_23D8DE240();
    }

    v65 = v32;
    KeyPath = swift_getKeyPath();
    v33 = sub_23D8DDA40();
    sub_23D8DCC20();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = v27 & 1;
    v74 = v27 & 1;
    v73 = 0;
    v43 = sub_23D8DD9D0();
    sub_23D8DCC20();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    LOBYTE(v71) = 0;
    v52 = sub_23D8DE270();
    v53 = &v9[*(v69 + 36)];
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4D0, &qword_23D8E0C38);
    v55 = *(v54 + 52);
    v56 = *MEMORY[0x277CE0118];
    v57 = sub_23D8DD4E0();
    (*(*(v57 - 8) + 104))(v53 + v55, v56, v57);
    *v53 = v52;
    *(v53 + *(v54 + 56)) = 256;
    v58 = v67;
    *v9 = v68;
    *(v9 + 1) = v58;
    v9[16] = v42;
    v60 = KeyPath;
    v59 = v65;
    *(v9 + 3) = v66;
    *(v9 + 4) = v60;
    *(v9 + 5) = v59;
    v9[48] = v33;
    *(v9 + 7) = v35;
    *(v9 + 8) = v37;
    *(v9 + 9) = v39;
    *(v9 + 10) = v41;
    v9[88] = 0;
    v9[96] = v43;
    *(v9 + 13) = v45;
    *(v9 + 14) = v47;
    *(v9 + 15) = v49;
    *(v9 + 16) = v51;
    v9[136] = 0;
    sub_23D83C874();
    sub_23D8DDEE0();
    return sub_23D83C6E4(v9, &qword_27E2ED480, &qword_23D8E0C10);
  }

  else
  {
    v62 = a1[1];
    sub_23D8DC9F0();
    sub_23D8367F0(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D83B41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = sub_23D8DD770();
  v4 = *(v20[0] - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v20[0]);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED3C8, &qword_23D8E0B90);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  sub_23D83BD14(v2, v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXRThemePresetButton);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_23D83C4F4(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AXRThemePresetButton);
  v21 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED3D0, &qword_23D8E0B98);
  sub_23D83C5C4();
  sub_23D8DE360();
  sub_23D8DD760();
  sub_23D835AD0(&qword_27E2ED3F0, &qword_27E2ED3C8, &qword_23D8E0B90);
  sub_23D8367F0(&qword_27E2ED300, MEMORY[0x277CDE0B8]);
  v18 = v20[0];
  sub_23D8DDD10();
  (*(v4 + 8))(v8, v18);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_23D83B788()
{
  v1 = type metadata accessor for AXRPresetSelectView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + v1[5]);

  v10 = *(v6 + v1[7] + 8);

  v11 = v6 + v1[8];
  v12 = sub_23D8DC140();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  v14 = *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8) + 28)];

  v15 = *(v6 + v1[9] + 8);

  v16 = (v6 + v1[10]);
  if (*v16 >= 2uLL)
  {
    v17 = v16[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D83B9A0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AXRPresetSelectView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_23D837904(a1, v6, v7, a2);
}

unint64_t sub_23D83BA24()
{
  result = qword_27E2ED320;
  if (!qword_27E2ED320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED310, &qword_23D8E0A78);
    sub_23D83BAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED320);
  }

  return result;
}

unint64_t sub_23D83BAB0()
{
  result = qword_27E2ED328;
  if (!qword_27E2ED328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED328);
  }

  return result;
}

unint64_t sub_23D83BB04()
{
  result = qword_27E2ED330;
  if (!qword_27E2ED330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED318, &qword_23D8E0A80);
    sub_23D83BB88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED330);
  }

  return result;
}

unint64_t sub_23D83BB88()
{
  result = qword_27E2ED338;
  if (!qword_27E2ED338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED340, &qword_23D8E0A88);
    sub_23D8367F0(&qword_27E2ED348, type metadata accessor for AXRThemePresetButton);
    sub_23D835AD0(&qword_27E2ED350, &qword_27E2ED358, &qword_23D8E0A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED338);
  }

  return result;
}

uint64_t sub_23D83BC90(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D83BCC8(uint64_t result)
{
  if (result != 1)
  {
    return sub_23D83BCD8(result);
  }

  return result;
}

uint64_t sub_23D83BCD8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D83BD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D83BD90(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_23D8DC510();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED380, &unk_23D8E0B10);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_23D83BF7C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_23D8DC510();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED380, &unk_23D8E0B10);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

void sub_23D83C154()
{
  sub_23D8366C8();
  if (v0 <= 0x3F)
  {
    sub_23D83675C();
    if (v1 <= 0x3F)
    {
      sub_23D836838();
      if (v2 <= 0x3F)
      {
        sub_23D83691C(319, &qword_27E2ED258, &qword_27E2ED260, &qword_23D8E08F8, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_23D8DC510();
          if (v4 <= 0x3F)
          {
            sub_23D83691C(319, &qword_27E2ED268, &qword_27E2ED270, &qword_23D8E0900, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_23D83C388(319, &qword_27E2ED398, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_23D83C388(319, &qword_27E2ED228, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_23D8368CC();
                  if (v8 <= 0x3F)
                  {
                    sub_23D83C388(319, &qword_27E2ED3A0, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23D83C388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_23D83C3F0()
{
  result = qword_27E2ED3A8;
  if (!qword_27E2ED3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED2B0, &qword_23D8E09F0);
    sub_23D835AD0(&qword_27E2ED3B0, &qword_27E2ED288, &qword_23D8E09D8);
    sub_23D835AD0(&qword_27E2ED3B8, &qword_27E2ED3C0, &qword_23D8E0B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED3A8);
  }

  return result;
}

uint64_t sub_23D83C4F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D83C55C()
{
  v1 = *(type metadata accessor for AXRThemePresetButton(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_23D8386B8(v2);
}

unint64_t sub_23D83C5C4()
{
  result = qword_27E2ED3D8;
  if (!qword_27E2ED3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED3D0, &qword_23D8E0B98);
    sub_23D835AD0(&qword_27E2ED3E0, &qword_27E2ED3E8, &qword_23D8E0BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED3D8);
  }

  return result;
}

uint64_t sub_23D83C67C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D83C6E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23D83C744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_23D83C7B8()
{
  result = qword_27E2ED470;
  if (!qword_27E2ED470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED468, &qword_23D8E0C08);
    sub_23D83C874();
    sub_23D8367F0(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED470);
  }

  return result;
}

unint64_t sub_23D83C874()
{
  result = qword_27E2ED478;
  if (!qword_27E2ED478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED480, &qword_23D8E0C10);
    sub_23D83C958(&qword_27E2ED488, &qword_27E2ED490, &qword_23D8E0C18, sub_23D83C9DC);
    sub_23D835AD0(&qword_27E2ED4C8, &qword_27E2ED4D0, &qword_23D8E0C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED478);
  }

  return result;
}

uint64_t sub_23D83C958(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23D83CA0C()
{
  result = qword_27E2ED4A8;
  if (!qword_27E2ED4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED4B0, &qword_23D8E0C28);
    sub_23D835AD0(&qword_27E2ED4B8, &qword_27E2ED4C0, &qword_23D8E0C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED4A8);
  }

  return result;
}

unint64_t sub_23D83CAC4()
{
  result = qword_27E2ED4E0;
  if (!qword_27E2ED4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED4E0);
  }

  return result;
}

unint64_t sub_23D83CB18()
{
  result = qword_27E2ED500;
  if (!qword_27E2ED500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED500);
  }

  return result;
}

uint64_t sub_23D83CB6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23D83CB7C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEEF2B0]();
  *a1 = result;
  return result;
}

uint64_t sub_23D83CBA8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEEF2B0]();
  *a1 = result;
  return result;
}

uint64_t sub_23D83CBD4(uint64_t *a1)
{
  v1 = *a1;

  return sub_23D8DD170();
}

uint64_t sub_23D83CC00(uint64_t *a1)
{
  v1 = *a1;

  return sub_23D8DD170();
}

unint64_t sub_23D83CC2C()
{
  result = qword_27E2ED508;
  if (!qword_27E2ED508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED508);
  }

  return result;
}

unint64_t sub_23D83CC80()
{
  result = qword_27E2ED510;
  if (!qword_27E2ED510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED510);
  }

  return result;
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for AXRThemePresetButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 40);

  v8 = v0 + v3 + v1[7];
  v9 = sub_23D8DC140();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8) + 28));

  v12 = v1[8];
  v13 = sub_23D8DC510();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);
  v14 = (v5 + v1[10]);
  if (*v14 >= 2uLL)
  {
    v15 = v14[1];
  }

  v16 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED370, &qword_23D8E0AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_23D8DCDE0();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_23D8DCF90();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
    v21 = *(v5 + v19);
  }

  v22 = *(v5 + v1[13] + 8);

  v23 = *(v5 + v1[14] + 16);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D83CF9C()
{
  v1 = *(type metadata accessor for AXRThemePresetButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D83AE80(v2);
}

uint64_t sub_23D83D014()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D83D054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23D83D0B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED3C8, &qword_23D8E0B90);
  sub_23D8DD770();
  sub_23D835AD0(&qword_27E2ED3F0, &qword_27E2ED3C8, &qword_23D8E0B90);
  sub_23D8367F0(&qword_27E2ED300, MEMORY[0x277CDE0B8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D83D1A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x786554656D656874;
    }

    else
    {
      v4 = 0x656D656874;
    }

    if (v2)
    {
      v3 = 0xEE00726F6C6F4374;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x800000023D8E5E20;
    v4 = 0xD000000000000014;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x800000023D8E5E40;
    }

    else
    {
      v3 = 0x800000023D8E5E60;
    }

    v4 = 0xD000000000000013;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x786554656D656874;
    }

    else
    {
      v8 = 0x656D656874;
    }

    if (a2)
    {
      v7 = 0xEE00726F6C6F4374;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x800000023D8E5E60;
    if (a2 == 3)
    {
      v5 = 0x800000023D8E5E40;
    }

    if (a2 == 2)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v7 = 0x800000023D8E5E20;
    }

    else
    {
      v7 = v5;
    }

    if (v4 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v7)
  {
LABEL_34:
    v9 = sub_23D8DED20();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_23D83D34C(uint64_t a1)
{
  v2 = sub_23D8DCCB0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D8DD190();
}

id sub_23D83D414()
{
  result = [objc_allocWithZone(type metadata accessor for ScrollTimerHandler()) init];
  qword_27E2F3C58 = result;
  return result;
}

uint64_t sub_23D83D444()
{
  result = sub_23D8DE830();
  qword_27E2F3C60 = result;
  return result;
}

id sub_23D83D55C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollTimerHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23D83D5A0()
{
  v1 = *v0;
  sub_23D8DED50();
  sub_23D8DE8C0();

  return sub_23D8DED80();
}

uint64_t sub_23D83D698()
{
  *v0;
  *v0;
  *v0;
  sub_23D8DE8C0();
}

uint64_t sub_23D83D77C()
{
  v1 = *v0;
  sub_23D8DED50();
  sub_23D8DE8C0();

  return sub_23D8DED80();
}

uint64_t sub_23D83D870@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23D8526B8();
  *a2 = result;
  return result;
}

void sub_23D83D8A0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656D656874;
  v5 = 0x800000023D8E5E20;
  v6 = 0x800000023D8E5E40;
  if (v2 != 3)
  {
    v6 = 0x800000023D8E5E60;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x786554656D656874;
    v3 = 0xEE00726F6C6F4374;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_23D83D964()
{
  v0 = sub_23D8DC900();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_23D8DC8F0();
}

uint64_t sub_23D83D99C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for AXRFullScreenView();
  sub_23D83C67C(v1 + *(v12 + 28), v11, &qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23D83C744(v11, a1, &qword_27E2EE9E0, &qword_23D8E26D0);
  }

  v14 = *v11;
  sub_23D8DEAB0();
  v15 = sub_23D8DD990();
  sub_23D8DCAD0();

  sub_23D8DD3B0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_23D83DB84()
{
  type metadata accessor for AXRScrollCoordinator();
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7A0, &unk_23D8E2AB0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_23D8DCB40();
  return v0;
}

double sub_23D83DBE8()
{
  v0 = sub_23D8DD850();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB8, &qword_23D8E26E0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  sub_23D83D99C(&v26 - v17);
  (*(v1 + 104))(v16, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v16, 0, 1, v0);
  v19 = *(v5 + 56);
  sub_23D83C67C(v18, v8, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C67C(v16, &v8[v19], &qword_27E2EE9E0, &qword_23D8E26D0);
  v20 = *(v1 + 48);
  if (v20(v8, 1, v0) == 1)
  {
    sub_23D83C6E4(v16, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v18, &qword_27E2EE9E0, &qword_23D8E26D0);
    if (v20(&v8[v19], 1, v0) == 1)
    {
      sub_23D83C6E4(v8, &qword_27E2EE9E0, &qword_23D8E26D0);
      return 350.0;
    }

    goto LABEL_6;
  }

  sub_23D83C67C(v8, v13, &qword_27E2EE9E0, &qword_23D8E26D0);
  if (v20(&v8[v19], 1, v0) == 1)
  {
    sub_23D83C6E4(v16, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v18, &qword_27E2EE9E0, &qword_23D8E26D0);
    (*(v1 + 8))(v13, v0);
LABEL_6:
    sub_23D83C6E4(v8, &qword_27E2EDDB8, &qword_23D8E26E0);
    return 450.0;
  }

  v22 = &v8[v19];
  v23 = v27;
  (*(v1 + 32))(v27, v22, v0);
  sub_23D856D84(&qword_27E2EEA10, MEMORY[0x277CE0570]);
  v24 = sub_23D8DE820();
  v25 = *(v1 + 8);
  v25(v23, v0);
  sub_23D83C6E4(v16, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C6E4(v18, &qword_27E2EE9E0, &qword_23D8E26D0);
  v25(v13, v0);
  sub_23D83C6E4(v8, &qword_27E2EE9E0, &qword_23D8E26D0);
  result = 450.0;
  if (v24)
  {
    return 350.0;
  }

  return result;
}

uint64_t AXRFullScreenView.currentModel.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);

    v2 = sub_23D8DC960();

    return v2;
  }

  else
  {
    v4 = *(v0 + 24);
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D83E0FC()
{
  v1 = sub_23D8DC510();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    v6 = *(v0 + 16);

    sub_23D8DC960();

    v7 = sub_23D8DC870();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      return v7;
    }

    else
    {

      sub_23D8DC960();
      sub_23D8DC830();

      v12 = sub_23D8DC990();

      (*(v2 + 8))(v5, v1);
      return v12;
    }
  }

  else
  {
    v13 = *(v0 + 24);
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D83E2C8@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v35 = sub_23D8DCCB0();
  v32 = *(v35 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED668, &unk_23D8E0EE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED660, &qword_23D8E0EE0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7A8, &qword_23D8E11B0);
  v31 = *(v33 - 8);
  v14 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v16 = &v31 - v15;
  v37 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7B0, &qword_23D8E11B8);
  sub_23D852790();
  sub_23D8DD040();
  v17 = sub_23D835AD0(&qword_27E2ED670, &qword_27E2ED668, &unk_23D8E0EE8);
  sub_23D8DE100();
  (*(v5 + 8))(v8, v4);
  v38 = v4;
  v39 = v17;
  swift_getOpaqueTypeConformance2();
  sub_23D8DDE50();
  (*(v10 + 8))(v13, v9);
  if (*(v1 + 16))
  {
    sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);

    sub_23D8DC960();

    sub_23D8DC7E0();

    v18 = sub_23D8DEB80();
    v19 = sub_23D8DEB70();

    v20 = v32;
    v21 = MEMORY[0x277CDF3D0];
    if ((v19 & 1) == 0)
    {
      v21 = MEMORY[0x277CDF3C0];
    }

    v23 = v34;
    v22 = v35;
    (*(v32 + 104))(v34, *v21, v35);
    KeyPath = swift_getKeyPath();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED658, &qword_23D8E0ED8);
    v26 = v36;
    v27 = (v36 + *(v25 + 36));
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v20 + 32))(v27 + *(v28 + 28), v23, v22);
    *v27 = KeyPath;
    return (*(v31 + 32))(v26, v16, v33);
  }

  else
  {
    v30 = *(v1 + 24);
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t AXRFullScreenView.init(dismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a1;
  v76 = a2;
  v4 = sub_23D8DD4D0();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v64 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5A8, &unk_23D8E0D70);
  v9 = *(*(v70 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v70);
  v69 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = &v64 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  v13 = *(*(v66 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v66);
  v65 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v64 - v16;
  v18 = sub_23D8DCEE0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v64 - v24;
  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
  *a3 = sub_23D8DD140();
  *(a3 + 8) = v26;
  sub_23D8DC9F0();
  sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
  *(a3 + 16) = sub_23D8DD140();
  *(a3 + 24) = v27;
  *(a3 + 32) = sub_23D83D964;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  v28 = type metadata accessor for AXRFullScreenView();
  v29 = v28[7];
  *(a3 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  swift_storeEnumTagMultiPayload();
  v30 = v28[9];
  v67 = (a3 + v28[8]);
  v31 = a3 + v30;
  LOBYTE(v77) = 1;
  sub_23D8DE310();
  v32 = *(&v78 + 1);
  *v31 = v78;
  *(v31 + 8) = v32;
  v33 = a3 + v28[10];
  LOBYTE(v77) = 1;
  sub_23D8DE310();
  v34 = *(&v78 + 1);
  *v33 = v78;
  *(v33 + 8) = v34;
  v35 = a3 + v28[11];
  LOBYTE(v77) = 1;
  sub_23D8DE310();
  v36 = *(&v78 + 1);
  *v35 = v78;
  *(v35 + 8) = v36;
  v37 = v28[12];
  v38 = sub_23D8DCE10();
  (*(*(v38 - 8) + 56))(a3 + v37, 1, 1, v38);
  v39 = a3 + v28[13];
  LOBYTE(v77) = 0;
  sub_23D8DE310();
  v40 = *(&v78 + 1);
  *v39 = v78;
  *(v39 + 8) = v40;
  v41 = v28[14];
  *(a3 + v41) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  swift_storeEnumTagMultiPayload();
  *(a3 + v28[15]) = 0x4040000000000000;
  v42 = v28[16];
  sub_23D8DCED0();
  (*(v19 + 16))(v23, v25, v18);
  sub_23D8DE310();
  (*(v19 + 8))(v25, v18);
  v43 = v28[17];
  v44 = sub_23D8DC140();
  (*(*(v44 - 8) + 56))(v17, 1, 1, v44);
  sub_23D83C67C(v17, v65, &qword_27E2ED260, &qword_23D8E08F8);
  sub_23D8DE310();
  sub_23D83C6E4(v17, &qword_27E2ED260, &qword_23D8E08F8);
  v45 = (a3 + v28[18]);
  v77 = 0;
  sub_23D8DE310();
  v46 = a3 + v28[19];
  LOBYTE(v77) = 0;
  sub_23D8DE310();
  v47 = *(&v78 + 1);
  *v46 = v78;
  *(v46 + 8) = v47;
  v48 = v28[20];
  v49 = sub_23D8DD060();
  v50 = v68;
  (*(*(v49 - 8) + 56))(v68, 1, 1, v49);
  sub_23D83C67C(v50, v69, &qword_27E2ED5A8, &unk_23D8E0D70);
  sub_23D8DE310();
  sub_23D83C6E4(v50, &qword_27E2ED5A8, &unk_23D8E0D70);
  v51 = a3 + v28[21];
  LOBYTE(v77) = 0;
  sub_23D8DE310();
  v52 = *(&v78 + 1);
  *v51 = v78;
  *(v51 + 8) = v52;
  v53 = v28[22];
  v77 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C0, &qword_23D8E0DF0);
  sub_23D8DE310();
  *(a3 + v53) = v78;
  v54 = v28[23];
  v55 = v71;
  sub_23D8DD4C0();
  v56 = v73;
  v57 = v74;
  (*(v73 + 16))(v72, v55, v74);
  sub_23D8DE310();
  (*(v56 + 8))(v55, v57);
  v58 = a3 + v28[24];
  LOBYTE(v77) = 1;
  sub_23D8DE310();
  v59 = *(&v78 + 1);
  *v58 = v78;
  *(v58 + 8) = v59;
  v60 = a3 + v28[25];

  *v60 = sub_23D83DB84;
  *(v60 + 8) = 0;
  *(v60 + 16) = 0;
  v62 = v76;
  v63 = v67;
  *v67 = v75;
  v63[1] = v62;
  *v45 = 0;
  v45[1] = 0;
  return result;
}

uint64_t type metadata accessor for AXRFullScreenView()
{
  result = qword_27E2ED5F0;
  if (!qword_27E2ED5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D83EFA0@<X0>(uint64_t a1@<X8>)
{
  v128 = a1;
  v120 = sub_23D8DD6D0();
  v2 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v119 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D8DCD10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0B8, &qword_23D8E01E8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v102 - v12;
  v121 = sub_23D8DC250();
  v114 = *(v121 - 8);
  v14 = *(v114 + 64);
  MEMORY[0x28223BE20](v121);
  v113 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AXRFullScreenView();
  v132 = *(v16 - 8);
  v17 = *(v132 + 8);
  v18 = MEMORY[0x28223BE20](v16);
  KeyPath = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v108 = &v102 - v21;
  v135 = v22;
  MEMORY[0x28223BE20](v20);
  v136 = &v102 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED848, &qword_23D8E1228);
  v110 = *(v24 - 8);
  v111 = v24;
  v25 = *(v110 + 64);
  MEMORY[0x28223BE20](v24);
  v109 = &v102 - v26;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED840, &qword_23D8E1220);
  v112 = *(v115 - 8);
  v27 = *(v112 + 64);
  MEMORY[0x28223BE20](v115);
  v133 = &v102 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED838, &unk_23D8E1210);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v34 = &v102 - v33;
  if (*(v1 + 16))
  {
    v116 = v34;
    v117 = v32;
    v118 = v31;
    v122 = v8;
    v123 = v5;
    v124 = v4;
    v125 = v13;
    v126 = v10;
    v127 = v9;
    v4 = v1;
    v35 = *v1;
    if (*v1)
    {
      v36 = sub_23D8DC930();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();

      v39 = v35;
      v107 = v35;
      v40 = v39;
      sub_23D8DC920();
      v41 = v40;
      v105 = v41;
      sub_23D8DC3B0();

      v106 = sub_23D8DC910();

      v42 = [objc_opt_self() preferredFontForTextStyle_];
      [v42 pointSize];
      v44 = v43;

      sub_23D8DC960();

      sub_23D8DC7F0();
      v46 = v45;

      sub_23D8DC960();

      v104 = sub_23D8DC6F0();

      v47 = v4 + *(v16 + 100);
      v48 = *v47;
      v49 = *(v47 + 8);
      v50 = *(v47 + 16);
      type metadata accessor for AXRScrollCoordinator();
      sub_23D856D84(&qword_27E2ED648, type metadata accessor for AXRScrollCoordinator);
      v103 = *(sub_23D8DCD40() + 16);

      v51 = v136;
      sub_23D853140(v4, v136);
      v52 = (*(v132 + 80) + 16) & ~*(v132 + 80);
      v53 = *(v132 + 80);
      v54 = swift_allocObject();
      sub_23D855DF8(v51, v54 + v52, type metadata accessor for AXRFullScreenView);
      v134 = v4;
      v55 = v108;
      sub_23D853140(v4, v108);
      v56 = swift_allocObject();
      v132 = type metadata accessor for AXRFullScreenView;
      sub_23D855DF8(v55, v56 + v52, type metadata accessor for AXRFullScreenView);
      v57 = KeyPath;
      sub_23D853140(v4, KeyPath);
      v130 = v53;
      v58 = swift_allocObject();
      sub_23D855DF8(v57, v58 + v52, type metadata accessor for AXRFullScreenView);
      KeyPath = swift_getKeyPath();
      v148 = 0;
      *&v149[0] = 0;
      *(&v149[0] + 1) = 0xE000000000000000;
      v108 = v105;
      sub_23D8DEC50();

      *&v149[0] = 0xD000000000000013;
      *(&v149[0] + 1) = 0x800000023D8E60A0;

      sub_23D8DC960();

      sub_23D8DC7F0();

      v59 = sub_23D8DEA10();
      MEMORY[0x23EEF0A60](v59);

      v60 = v149[0];
      LOBYTE(v57) = v148;
      v61 = sub_23D8DD050();
      v62 = sub_23D8DD9E0();
      *&v140 = v106;
      *(&v140 + 1) = v44 * v46;
      *&v141 = v104;
      *(&v141 + 1) = v103;
      *&v142 = sub_23D855E60;
      *(&v142 + 1) = v54;
      *&v143 = sub_23D855EBC;
      *(&v143 + 1) = v56;
      *&v144 = sub_23D855F20;
      *(&v144 + 1) = v58;
      *&v145 = v107;
      *(&v145 + 1) = KeyPath;
      v146[0] = v57;
      *&v146[8] = v60;
      *&v146[24] = v61;
      v147 = v62;
      v63 = v108;
      sub_23D8DC2C0();

      v64 = sub_23D8DC1C0();
      v66 = v65;
      v68 = v67;

      v137 = v64;
      v138 = v66;
      v139 = v68 & 1;
      v69 = v134;
      v70 = v136;
      sub_23D853140(v134, v136);
      v129 = v52;
      v71 = swift_allocObject();
      sub_23D855DF8(v70, v71 + v52, v132);
      KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED850, &qword_23D8E1230);
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED858, &qword_23D8E1238);
      v72 = sub_23D852F1C();
      v73 = sub_23D852FD4();
      v74 = v109;
      sub_23D8DE060();

      v149[6] = *v146;
      v149[7] = *&v146[16];
      v150 = v147;
      v149[2] = v142;
      v149[3] = v143;
      v149[4] = v144;
      v149[5] = v145;
      v149[0] = v140;
      v149[1] = v141;
      sub_23D83C6E4(v149, &qword_27E2ED850, &qword_23D8E1230);
      v75 = v63;
      LOBYTE(v70) = sub_23D8DC380();

      LOBYTE(v137) = v70 & 1;
      v76 = v136;
      sub_23D853140(v69, v136);
      v77 = v129;
      v78 = swift_allocObject() + v77;
      v79 = v132;
      sub_23D855DF8(v76, v78, v132);
      *&v140 = KeyPath;
      *(&v140 + 1) = v108;
      *&v141 = v72;
      *(&v141 + 1) = v73;
      KeyPath = MEMORY[0x277CE0E30];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v81 = v111;
      sub_23D8DE060();

      (*(v110 + 8))(v74, v81);
      v82 = v75;
      v83 = v113;
      sub_23D8DC2A0();

      v84 = v136;
      sub_23D853140(v134, v136);
      v85 = v129;
      v86 = swift_allocObject();
      v87 = v85;
      sub_23D855DF8(v84, v86 + v85, v79);
      *&v140 = v81;
      *(&v140 + 1) = MEMORY[0x277D839B0];
      *&v141 = OpaqueTypeConformance2;
      *(&v141 + 1) = MEMORY[0x277D839C8];
      v111 = swift_getOpaqueTypeConformance2();
      v110 = sub_23D856D84(&qword_27E2ED890, MEMORY[0x277CE7208]);
      v88 = v115;
      v89 = v116;
      v90 = v121;
      v91 = v133;
      sub_23D8DE060();

      (*(v114 + 8))(v83, v90);
      (*(v112 + 8))(v91, v88);
      sub_23D8DD860();
      v92 = v122;
      sub_23D8DCCD0();
      v93 = v136;
      sub_23D853140(v134, v136);
      v94 = swift_allocObject();
      sub_23D855DF8(v93, v94 + v87, v79);
      sub_23D856D84(&qword_27E2ED0C0, MEMORY[0x277CDD730]);
      sub_23D856D84(&qword_27E2ED0C8, MEMORY[0x277CDD708]);
      v96 = v124;
      v95 = v125;
      sub_23D8DE500();

      (*(v123 + 8))(v92, v96);
      sub_23D8DCD30();
      *&v140 = v88;
      *(&v140 + 1) = v90;
      *&v141 = v111;
      *(&v141 + 1) = v110;
      swift_getOpaqueTypeConformance2();
      sub_23D835AD0(&qword_27E2ED0D0, &qword_27E2ED0B8, &qword_23D8E01E8);
      v97 = v127;
      v98 = v118;
      sub_23D8DDEA0();
      (*(v126 + 8))(v95, v97);
      return (*(v117 + 8))(v89, v98);
    }
  }

  else
  {
    v100 = *(v1 + 24);
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    sub_23D8DD120();
    __break(1u);
  }

  v101 = *(v4 + 8);
  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);

  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D83FE1C()
{
  v1 = type metadata accessor for AXRFullScreenView();
  v2 = (v0 + *(v1 + 84));
  v10 = *v2;
  v11 = *(v2 + 1);
  LOBYTE(v9) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();
  v3 = (v0 + *(v1 + 88));
  v4 = *v3;
  v5 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
  sub_23D8DE320();
  [v9 invalidate];

  v6 = objc_opt_self();
  if (qword_27E2ECEA0 != -1)
  {
    v8 = v6;
    swift_once();
    v6 = v8;
  }

  [v6 scheduledTimerWithTimeInterval:qword_27E2F3C58 target:sel_resetScrollingState selector:0 userInfo:0 repeats:3.0];
  return sub_23D8DE330();
}

uint64_t sub_23D83FF78(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_23D8DE750();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D8DE780();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AXRFullScreenView();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_23D8DE7A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  if (*v1)
  {
    v20 = *v1;
    sub_23D8DC3D0();

    sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
    v21 = sub_23D8DEAF0();
    sub_23D8DE790();
    sub_23D8DE7B0();
    v22 = *(v13 + 8);
    v32 = v12;
    v33 = v22;
    v22(v17, v12);
    sub_23D853140(v2, &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v24 = swift_allocObject();
    sub_23D855DF8(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for AXRFullScreenView);
    *(v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
    aBlock[4] = sub_23D856CF8;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D876358;
    aBlock[3] = &block_descriptor_156;
    v25 = _Block_copy(aBlock);

    sub_23D8DE770();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23D856D84(&qword_27E2EDE68, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
    sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740);
    v26 = v35;
    v27 = v39;
    sub_23D8DEBF0();
    MEMORY[0x23EEF0C20](v19, v9, v26, v25);
    _Block_release(v25);

    (*(v38 + 8))(v26, v27);
    (*(v36 + 8))(v9, v37);
    return v33(v19, v32);
  }

  else
  {
    v29 = *(v1 + 8);
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D840488(uint64_t a1)
{
  if (*a1)
  {
    v1 = *a1;
    v2 = sub_23D8DC280();

    return v2 & 1;
  }

  else
  {
    v4 = *(a1 + 8);
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D840520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23D8DC250();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  sub_23D840804();
  v12 = (a3 + *(type metadata accessor for AXRFullScreenView() + 84));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v22) = v13;
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  result = sub_23D8DE320();
  if ((v21[0] & 1) == 0)
  {
    if (!*a3)
    {
      v20 = *(a3 + 8);
      sub_23D8DC430();
      sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
      result = sub_23D8DD120();
      __break(1u);
      return result;
    }

    v16 = *a3;
    sub_23D8DC2A0();

    (*(v5 + 104))(v9, *MEMORY[0x277CE7200], v4);
    sub_23D856D84(&qword_27E2EDE60, MEMORY[0x277CE7208]);
    sub_23D8DE980();
    sub_23D8DE980();
    if (v22 == v21[0] && v23 == v21[1])
    {
      v17 = *(v5 + 8);
      v17(v9, v4);
      v17(v11, v4);
    }

    else
    {
      v18 = sub_23D8DED20();
      v19 = *(v5 + 8);
      v19(v9, v4);
      v19(v11, v4);

      if ((v18 & 1) == 0)
      {
        return result;
      }
    }

    return sub_23D8409FC();
  }

  return result;
}

uint64_t sub_23D840804()
{
  v1 = v0;
  v2 = sub_23D8DBF60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v7 = *v0;
    sub_23D8DC260();

    v8 = v7;
    v9 = sub_23D8DC340();

    v10 = v8;
    v11 = sub_23D8DC310();

    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = v9 / v12;
    if (v13 < 0.0)
    {
      v13 = 0.0;
    }

    v14 = fmin(v13, 1.0);
    v15 = (v1 + *(type metadata accessor for AXRFullScreenView() + 72));
    v16 = *v15;
    v17 = v15[1];
    *&v20[1] = v14;
    v20[2] = v16;
    v20[3] = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
    sub_23D8DE330();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v19 = *(v0 + 8);
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D8409FC()
{
  v1 = v0;
  v2 = sub_23D8DBF60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v0)
  {
    goto LABEL_25;
  }

  v7 = *v0;
  sub_23D8DC260();
  v8 = sub_23D8DC340();

  (*(v3 + 8))(v6, v2);
  v9 = v7;
  v10 = sub_23D8DC310();

  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v8 / v11;
  if (v12 > 0.95)
  {
    v13 = v1 + *(type metadata accessor for AXRFullScreenView() + 100);
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = v13[16];
    type metadata accessor for AXRScrollCoordinator();
    sub_23D856D84(&qword_27E2ED648, type metadata accessor for AXRScrollCoordinator);
    v17 = *(sub_23D8DCD40() + 16);

    v30 = -1;
LABEL_18:
    sub_23D8DCB30();
  }

  v18 = sub_23D841510();
  if (v12 <= 0.85)
  {
    goto LABEL_12;
  }

  v19 = fmin((v12 + -0.85) * 6.67, 1.0) * (v18 * 3.0);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = __OFADD__(v18, v19);
  v18 += v19;
  if (!v20)
  {
LABEL_12:
    if (__OFADD__(v8, v18))
    {
      __break(1u);
    }

    else if (!__OFSUB__(v10, 1))
    {
      if (v10 - 1 >= v8 + v18)
      {
        v21 = v8 + v18;
      }

      else
      {
        v21 = v10 - 1;
      }

      v22 = v1 + *(type metadata accessor for AXRFullScreenView() + 100);
      v23 = *v22;
      v24 = *(v22 + 1);
      v25 = v22[16];
      type metadata accessor for AXRScrollCoordinator();
      sub_23D856D84(&qword_27E2ED648, type metadata accessor for AXRScrollCoordinator);
      v26 = *(sub_23D8DCD40() + 16);

      v30 = v21;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  v28 = v1[1];
  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

void sub_23D840D80(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    v4 = type metadata accessor for AXRFullScreenView();
    v5 = (a3 + *(v4 + 84));
    v12 = *v5;
    v13 = *(v5 + 1);
    LOBYTE(v11) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
    sub_23D8DE330();
    v6 = (a3 + *(v4 + 88));
    v7 = *v6;
    v8 = v6[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
    sub_23D8DE320();
    [v11 invalidate];

    sub_23D8DE330();
    sub_23D8409FC();
    if (*a3)
    {
      v9 = *a3;
      sub_23D8DC390();
    }

    else
    {
      v10 = *(a3 + 8);
      sub_23D8DC430();
      sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
      sub_23D8DD120();
      __break(1u);
    }
  }
}

uint64_t sub_23D840EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23D8DC250();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CE71F8], v4);
  sub_23D856D84(&qword_27E2EDE60, MEMORY[0x277CE7208]);
  sub_23D8DE980();
  sub_23D8DE980();
  if (v15 == v14[0] && v16 == v14[1])
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v9 = sub_23D8DED20();
    (*(v5 + 8))(v8, v4);

    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  v11 = (a3 + *(type metadata accessor for AXRFullScreenView() + 72));
  v12 = *v11;
  v13 = v11[1];
  v15 = v12;
  v16 = v13;
  v14[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  return sub_23D8DE330();
}

uint64_t sub_23D841100()
{
  sub_23D8DCCE0();
  sub_23D8DE610();
  sub_23D8DCE60();
}

uint64_t sub_23D841184(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AXRFullScreenView();
  v4 = (a2 + *(v3 + 40));
  v5 = *v4;
  v6 = *(v4 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();
  v7 = (a2 + *(v3 + 44));
  v9 = *v7;
  v10 = *(v7 + 1);
  return sub_23D8DE330();
}

uint64_t sub_23D8412A0(uint64_t a1)
{
  sub_23D8DE610();
  sub_23D8DCE60();

  if (*a1)
  {
    v2 = *a1;
    sub_23D8DC370();

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    sub_23D8DC900();
    sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8]);
    sub_23D8DCD40();
    v6 = sub_23D8DC8B0();

    if ((v6 & 1) == 0)
    {
      sub_23D8DCD40();
      sub_23D8DC8C0();
    }

    return sub_23D840804();
  }

  else
  {
    v8 = *(a1 + 8);
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D841450(uint64_t a1)
{
  v2 = type metadata accessor for AXRFullScreenView();
  v3 = (a1 + *(v2 + 40));
  v6 = *v3;
  v8 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();
  v4 = (a1 + *(v2 + 44));
  v7 = *v4;
  v9 = *(v4 + 1);
  return sub_23D8DE330();
}

uint64_t sub_23D841510()
{
  v1 = sub_23D8DCF90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  if (!*(v0 + 16))
  {
    v19 = *(v0 + 24);
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  v9 = *(v0 + 16);

  sub_23D8DC960();

  sub_23D8DC720();

  sub_23D8DC960();

  sub_23D8DC680();
  v11 = v10;

  (*(v2 + 32))(v6, v8, v1);
  v12 = (*(v2 + 88))(v6, v1);
  if (v12 == *MEMORY[0x277CDF9F8] || v12 == *MEMORY[0x277CDF9E0])
  {
    v14 = 300.0;
  }

  else if (v12 == *MEMORY[0x277CDF9E8])
  {
    v14 = 250.0;
  }

  else if (v12 == *MEMORY[0x277CDF9D8])
  {
    v14 = 225.0;
  }

  else if (v12 == *MEMORY[0x277CDF9F0])
  {
    v14 = 200.0;
  }

  else if (v12 == *MEMORY[0x277CDFA00])
  {
    v14 = 175.0;
  }

  else if (v12 == *MEMORY[0x277CDFA10])
  {
    v14 = 150.0;
  }

  else
  {
    if (v12 == *MEMORY[0x277CDF988])
    {
      goto LABEL_19;
    }

    if (v12 == *MEMORY[0x277CDF998])
    {
      v14 = 100.0;
    }

    else if (v12 == *MEMORY[0x277CDF9A8])
    {
      v14 = 75.0;
    }

    else if (v12 == *MEMORY[0x277CDF9B8])
    {
      v14 = 62.5;
    }

    else
    {
      if (v12 != *MEMORY[0x277CDF9D0])
      {
        goto LABEL_39;
      }

      v14 = 50.0;
    }
  }

  while (1)
  {
    v15 = 1.0 / (v11 * 0.05 + 1.0) * v14;
    if (COERCE__INT64(fabs(v15)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v15 > -9.22337204e18)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v18 = *(v2 + 8);
    v2 += 8;
    v18(v6, v1);
LABEL_19:
    v14 = 125.0;
  }

  if (v15 >= 9.22337204e18)
  {
    goto LABEL_38;
  }

  v16 = v15;
  if (v15 >= 500)
  {
    v16 = 500;
  }

  if (v16 <= 30)
  {
    return 30;
  }

  else
  {
    return v16;
  }
}

void sub_23D8418D4(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE58, &qword_23D8E1708);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v50 - v6;
  v8 = sub_23D8DBF60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v50 - v14;
  v15 = type metadata accessor for AXRFullScreenView();
  v16 = (v1 + *(v15 + 76));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v54) = v17;
  v55 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  if (v53 != 1)
  {
    return;
  }

  v51 = v9;
  if (!*(v1 + 16))
  {
    goto LABEL_26;
  }

  v19 = *v1;
  if (!*v1)
  {
LABEL_27:
    v49 = *(v2 + 8);
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);

    sub_23D8DD120();
    __break(1u);
    return;
  }

  v20 = sub_23D8DC930();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();

  v23 = v19;
  sub_23D8DC920();
  v24 = v23;
  sub_23D8DC3B0();

  v25 = sub_23D8DC910();

  v26 = [v25 length];

  v27 = v51;
  if (v26 <= 0)
  {
    return;
  }

  v28 = fmin(a1, 1.0);
  if (a1 < 0.0)
  {
    v28 = 0.0;
  }

  v29 = round(v28 * v26);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    v48 = *(v2 + 24);
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    sub_23D8DD120();
    __break(1u);
    goto LABEL_27;
  }

  if (v26 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v26;
  }

  v31 = v24;
  v32 = sub_23D8DC320();

  if (v32)
  {
    sub_23D8DC230();
    if ((*(v27 + 48))(v7, 1, v8) == 1)
    {

      sub_23D83C6E4(v7, &qword_27E2EDE58, &qword_23D8E1708);
    }

    else
    {
      (*(v27 + 32))(v52, v7, v8);
      v33 = (v2 + *(v15 + 100));
      v34 = v27;
      v35 = *v33;
      v36 = v33[1];
      v37 = *(v33 + 16);
      type metadata accessor for AXRScrollCoordinator();
      sub_23D856D84(&qword_27E2ED648, type metadata accessor for AXRScrollCoordinator);
      v38 = *(sub_23D8DCD40() + 16);

      v54 = v30;
      sub_23D8DCB30();

      v39 = v31;
      LOBYTE(v38) = sub_23D8DC280();

      v40 = v39;
      if (v38)
      {
        sub_23D8DC2C0();

        sub_23D8DC1F0();

        v41 = v40;
        v42 = v52;
        sub_23D8DC300();

        (*(v34 + 8))(v42, v8);
      }

      else
      {
        v43 = sub_23D8DC420();

        v44 = v40;
        if (v43)
        {
          sub_23D8DC3D0();
        }

        else
        {
          sub_23D8DC2C0();

          sub_23D8DC1F0();
        }

        v45 = v51;
        v46 = v52;
        (*(v51 + 16))(v13, v52, v8);
        v47 = v44;
        sub_23D8DC270();

        (*(v45 + 8))(v46, v8);
      }
    }
  }
}

uint64_t sub_23D841E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v125 = sub_23D8DE5C0();
  v124 = *(v125 - 1);
  v3 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v123 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_23D8DD3D0();
  v111 = *(v113 - 8);
  v5 = *(v111 + 64);
  MEMORY[0x28223BE20](v113);
  v107 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AXRFullScreenView();
  v139 = v7;
  v141 = *(v7 - 8);
  v8 = *(v141 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v135 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v106 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED828, &qword_23D8E1208);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v106 - v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED818, &qword_23D8E11F8);
  v127 = *(v112 - 8);
  v16 = *(v127 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v106 - v17;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED810, &qword_23D8E11F0);
  v115 = *(v114 - 8);
  v18 = *(v115 + 64);
  MEMORY[0x28223BE20](v114);
  v110 = &v106 - v19;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED8F0, &qword_23D8E12A0);
  v117 = *(v118 - 8);
  v20 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v106 = &v106 - v21;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED808, &qword_23D8E11E8);
  v22 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v119 = &v106 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7F8, &qword_23D8E11E0);
  v24 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v121 = &v106 - v25;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7E0, &qword_23D8E11D8);
  v26 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v122 = &v106 - v27;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7D0, &qword_23D8E11C8);
  v130 = *(v132 - 8);
  v28 = *(v130 + 64);
  MEMORY[0x28223BE20](v132);
  v137 = &v106 - v29;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED8F8, &unk_23D8E12A8);
  v131 = *(v133 - 8);
  v30 = *(v131 + 64);
  MEMORY[0x28223BE20](v133);
  v129 = &v106 - v31;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7C8, &qword_23D8E11C0);
  v32 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v134 = &v106 - v33;
  sub_23D83EFA0(v15);
  v34 = a1 + *(v7 + 40);
  v35 = a1;
  v36 = *v34;
  v37 = *(v34 + 8);
  LOBYTE(v145) = v36;
  v146 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  LOBYTE(v7) = v143;
  sub_23D853140(a1, v11);
  v39 = (*(v141 + 80) + 16) & ~*(v141 + 80);
  v140 = *(v141 + 80);
  v141 = v8;
  v40 = swift_allocObject();
  v108 = v39;
  v138 = v11;
  sub_23D855DF8(v11, v40 + v39, type metadata accessor for AXRFullScreenView);
  v41 = &v15[*(v12 + 36)];
  *v41 = sub_23D8531AC;
  *(v41 + 1) = v40;
  v41[16] = v7;
  v42 = v111;
  v43 = v107;
  v44 = v113;
  (*(v111 + 104))(v107, *MEMORY[0x277CDDDC0], v113);
  v45 = sub_23D852CA0();
  v46 = v109;
  sub_23D8DDF20();
  (*(v42 + 8))(v43, v44);
  sub_23D83C6E4(v15, &qword_27E2ED828, &qword_23D8E1208);
  v142 = v35;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED820, &qword_23D8E1200);
  v145 = v12;
  v146 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_23D835AD0(&qword_27E2ED8A8, &qword_27E2ED820, &qword_23D8E1200);
  v50 = v110;
  v51 = v112;
  sub_23D8DE040();
  (*(v127 + 8))(v46, v51);
  v52 = v35 + *(v139 + 44);
  v53 = *v52;
  v54 = *(v52 + 8);
  LOBYTE(v145) = v53;
  v146 = v54;
  v127 = v38;
  sub_23D8DE320();
  v145 = v51;
  v146 = v47;
  v147 = OpaqueTypeConformance2;
  v148 = v49;
  swift_getOpaqueTypeConformance2();
  v55 = v106;
  v56 = v114;
  sub_23D8DDE80();
  (*(v115 + 8))(v50, v56);
  if (*(v35 + 16))
  {
    v57 = v108;
    v58 = *(v35 + 16);

    sub_23D8DC960();

    v59 = sub_23D8DC7E0();

    v60 = sub_23D8DD9E0();
    v61 = v119;
    (*(v117 + 32))(v119, v55, v118);
    v62 = v61 + *(v116 + 36);
    *v62 = v59;
    *(v62 + 8) = v60;

    sub_23D8DC960();

    sub_23D8DC7E0();

    sub_23D8DE230();
    LOBYTE(v59) = sub_23D8DE1E0();

    v63 = v123;
    if (v59)
    {
      sub_23D8DE5A0();
    }

    else
    {
      sub_23D8DE5B0();
    }

    v64 = sub_23D8DD9E0();
    v65 = v121;
    v66 = &v121[*(v120 + 36)];
    (*(v124 + 32))(v66, v63, v125);
    v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED8C8, &qword_23D8E1260) + 36)] = v64;
    sub_23D83C744(v61, v65, &qword_27E2ED808, &qword_23D8E11E8);
    v67 = v138;
    sub_23D853140(v35, v138);
    v68 = v57;
    v69 = swift_allocObject();
    v125 = type metadata accessor for AXRFullScreenView;
    sub_23D855DF8(v67, v69 + v57, type metadata accessor for AXRFullScreenView);
    v70 = v122;
    sub_23D83C744(v65, v122, &qword_27E2ED7F8, &qword_23D8E11E0);
    v71 = v126;
    v72 = (v70 + *(v126 + 36));
    *v72 = sub_23D8531CC;
    v72[1] = v69;
    v72[2] = 0;
    v72[3] = 0;
    v73 = *(v35 + 32);
    v74 = *(v35 + 40);
    v75 = *(v35 + 48);
    sub_23D8DC900();
    sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8]);
    sub_23D8DCD40();
    LOBYTE(v74) = sub_23D8DC8B0();

    LOBYTE(v145) = v74 & 1;
    sub_23D853140(v35, v67);
    v76 = v35;
    v77 = v71;
    v78 = swift_allocObject();
    sub_23D855DF8(v67, v78 + v68, v125);
    v79 = sub_23D852988();
    v80 = MEMORY[0x277D839B0];
    sub_23D8DE060();

    sub_23D83C6E4(v70, &qword_27E2ED7E0, &qword_23D8E11D8);
    if (*v76)
    {
      v81 = *v76;
      v82 = sub_23D8DC410();

      v143 = v82;
      v83 = v138;
      sub_23D853140(v76, v138);
      v84 = swift_allocObject();
      sub_23D855DF8(v83, v84 + v68, type metadata accessor for AXRFullScreenView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7D8, &qword_23D8E11D0);
      v145 = v77;
      v146 = v80;
      v147 = v79;
      v148 = MEMORY[0x277D839C8];
      swift_getOpaqueTypeConformance2();
      sub_23D853084();
      v85 = v129;
      v86 = v132;
      v87 = v137;
      sub_23D8DE060();

      (*(v130 + 8))(v87, v86);
      sub_23D853140(v76, v83);
      v88 = swift_allocObject();
      sub_23D855DF8(v83, v88 + v68, type metadata accessor for AXRFullScreenView);
      v89 = v134;
      (*(v131 + 32))(v134, v85, v133);
      v90 = (v89 + *(v128 + 36));
      *v90 = 0;
      v90[1] = 0;
      v90[2] = sub_23D85327C;
      v90[3] = v88;
      v91 = v76 + *(v139 + 52);
      v92 = *v91;
      v93 = *(v91 + 8);
      LOBYTE(v143) = v92;
      v144 = v93;
      sub_23D8DE340();
      v94 = v146;
      v139 = v145;
      LODWORD(v137) = v147;
      sub_23D853140(v76, v83);
      v95 = swift_allocObject();
      sub_23D855DF8(v83, v95 + v68, type metadata accessor for AXRFullScreenView);
      v96 = v135;
      sub_23D853140(v76, v135);
      v97 = swift_allocObject();
      sub_23D855DF8(v96, v97 + v68, type metadata accessor for AXRFullScreenView);
      IsPad = AXDeviceIsPad();
      v99 = v136;
      sub_23D83C744(v89, v136, &qword_27E2ED7C8, &qword_23D8E11C0);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7B0, &qword_23D8E11B8);
      v101 = v99 + *(result + 36);
      *v101 = IsPad;
      *(v101 + 8) = v139;
      *(v101 + 16) = v94;
      *(v101 + 24) = v137;
      *(v101 + 32) = sub_23D853294;
      *(v101 + 40) = v95;
      *(v101 + 48) = sub_23D8532F8;
      *(v101 + 56) = v97;
      return result;
    }

    v105 = *(v76 + 8);
    sub_23D8DC430();
    v103 = &unk_27E2F0420;
    v104 = MEMORY[0x277CE7230];
  }

  else
  {
    v102 = *(v35 + 24);
    sub_23D8DC9F0();
    v103 = &qword_27E2ED238;
    v104 = MEMORY[0x277CE73F8];
  }

  sub_23D856D84(v103, v104);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D842EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v3 = sub_23D8DD850();
  v120 = *(v3 - 8);
  v121 = v3;
  v4 = *(v120 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v115 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v114 = v99 - v7;
  v125 = type metadata accessor for AXRFullScreenView();
  v110 = *(v125 - 1);
  v8 = *(v110 + 64);
  v9 = MEMORY[0x28223BE20](v125);
  v112 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v10;
  MEMORY[0x28223BE20](v9);
  v111 = v99 - v11;
  v12 = type metadata accessor for AXRBottomBar();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE40, &qword_23D8E16E8);
  v16 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v119 = v99 - v17;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE48, &qword_23D8E16F0);
  v18 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v122 = v99 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE50, &qword_23D8E16F8);
  v124 = *(v20 - 8);
  v21 = *(v124 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v117 = v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v116 = v99 - v24;
  v26 = *(a1 + 32);
  v25 = *(a1 + 40);
  v123 = a1;
  v27 = *(a1 + 48);
  v28 = sub_23D8DC900();
  v29 = sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8]);
  sub_23D8DCD40();
  v30 = sub_23D8DC8B0();

  if (v30)
  {
    v108 = v20;
    v99[2] = v28;
    v99[1] = v29;
    v99[0] = sub_23D8DCD40();
    v31 = v125;
    v32 = v123;
    v33 = (v123 + v125[8]);
    v34 = v33[1];
    v104 = *v33;
    v103 = v34;
    v35 = (v123 + v125[18]);
    v36 = *v35;
    v37 = v35[1];
    v129 = v36;
    v130 = v37;
    sub_23D83BCC8(v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
    sub_23D8DE340();
    v105 = *(&v127 + 1);
    v106 = v127;
    v38 = v128;
    v39 = v32 + v31[19];
    v40 = *v39;
    v41 = *(v39 + 1);
    LOBYTE(v129) = v40;
    v130 = v41;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
    sub_23D8DE340();
    v101 = *(&v127 + 1);
    v102 = v127;
    v100 = v128;
    v42 = v111;
    sub_23D853140(v32, v111);
    v43 = (*(v110 + 80) + 16) & ~*(v110 + 80);
    v110 = swift_allocObject();
    sub_23D855DF8(v42, v110 + v43, type metadata accessor for AXRFullScreenView);
    v44 = v112;
    sub_23D853140(v32, v112);
    v45 = swift_allocObject();
    sub_23D855DF8(v44, v45 + v43, type metadata accessor for AXRFullScreenView);
    *v15 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
    swift_storeEnumTagMultiPayload();
    v46 = sub_23D8DC9F0();
    v47 = sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    v112 = v46;
    v111 = v47;
    v48 = sub_23D8DD140();
    v50 = v49;
    v51 = (v15 + v12[5]);
    *v51 = sub_23D8DCEF0();
    v51[1] = v52;
    v53 = (v15 + v12[6]);
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
    *v53 = sub_23D8DD140();
    v53[1] = v54;
    v55 = (v15 + v12[7]);
    *v55 = v48;
    v55[1] = v50;
    v56 = (v15 + v12[8]);
    v57 = v103;
    *v56 = v104;
    v56[1] = v57;
    v58 = v15 + v12[9];
    LOBYTE(v129) = 0;
    sub_23D8DE310();
    v59 = *(&v127 + 1);
    *v58 = v127;
    *(v58 + 1) = v59;
    v60 = (v15 + v12[10]);
    v129 = 0;
    sub_23D8DE310();
    v61 = *(&v127 + 1);
    *v60 = v127;
    v60[1] = v61;
    v62 = (v15 + v12[11]);
    v63 = v105;
    *v62 = v106;
    v62[1] = v63;
    v62[2] = v38;
    v64 = v15 + v12[12];
    v65 = v101;
    *v64 = v102;
    *(v64 + 1) = v65;
    v64[16] = v100;
    v66 = (v15 + v12[13]);
    v67 = v110;
    *v66 = sub_23D855D18;
    v66[1] = v67;
    v68 = (v15 + v12[14]);
    *v68 = sub_23D855D88;
    v68[1] = v45;
    v69 = v12[15];
    v71 = v120;
    v70 = v121;
    v72 = v114;
    (*(v120 + 104))(v114, *MEMORY[0x277CE0558], v121);
    (*(v71 + 16))(v115, v72, v70);
    sub_23D8DE310();
    (*(v71 + 8))(v72, v70);
    v73 = v15 + v12[16];
    v129 = 0;
    v130 = 0xE000000000000000;
    sub_23D8DE310();
    v74 = v128;
    *v73 = v127;
    *(v73 + 2) = v74;
    *(v15 + v12[17]) = 0x3FD3333333333333;
    v75 = *v32;
    if (*v32)
    {
      v76 = v75;
      v77 = sub_23D8DCB10();
      v78 = v119;
      sub_23D855DF8(v15, v119, type metadata accessor for AXRBottomBar);
      v79 = (v78 + *(v113 + 36));
      *v79 = v77;
      v79[1] = v75;
      v80 = v32[2];
      v81 = v126;
      v82 = v108;
      if (v80)
      {
        v83 = v32[2];

        v84 = sub_23D8DCB10();
        v85 = v122;
        sub_23D83C744(v78, v122, &qword_27E2EDE40, &qword_23D8E16E8);
        v86 = (v85 + *(v118 + 36));
        *v86 = v84;
        v86[1] = v80;
        v87 = v32 + v125[10];
        v88 = *v87;
        v89 = *(v87 + 1);
        LOBYTE(v127) = v88;
        *(&v127 + 1) = v89;
        sub_23D8DE320();
        if (v129)
        {
          v90 = 1.0;
        }

        else
        {
          v90 = 0.0;
        }

        v91 = v117;
        sub_23D83C744(v85, v117, &qword_27E2EDE48, &qword_23D8E16F0);
        *(v91 + *(v82 + 36)) = v90;
        v92 = v91;
        v93 = v116;
        sub_23D83C744(v92, v116, &qword_27E2EDE50, &qword_23D8E16F8);
        sub_23D83C744(v93, v81, &qword_27E2EDE50, &qword_23D8E16F8);
        return (*(v124 + 56))(v81, 0, 1, v82);
      }
    }

    else
    {
      v97 = v32[1];
      sub_23D8DD120();
      __break(1u);
    }

    v98 = v32[3];
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  v95 = *(v124 + 56);
  v96 = v126;

  return v95(v96, 1, 1, v20);
}

void sub_23D84397C(uint64_t a1, double a2)
{
  v3 = (a1 + *(type metadata accessor for AXRFullScreenView() + 72));
  v4 = *v3;
  v5 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  sub_23D8DE330();
  sub_23D8418D4(a2);
}

uint64_t sub_23D843A00(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for AXRFullScreenView() + 76));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  return sub_23D8DE330();
}

uint64_t sub_23D843A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE8, &qword_23D8E1560);
  v3 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v135 = v107 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBF0, &qword_23D8E1568);
  v133 = *(v5 - 8);
  v134 = v5;
  v6 = *(v133 + 64);
  MEMORY[0x28223BE20](v5);
  v132 = v107 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBF8, &qword_23D8E1570);
  v130 = *(v8 - 8);
  v131 = v8;
  v9 = *(v130 + 64);
  MEMORY[0x28223BE20](v8);
  v129 = v107 - v10;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC00, &qword_23D8E1578);
  v122 = *(v128 - 8);
  v11 = *(v122 + 64);
  MEMORY[0x28223BE20](v128);
  v121 = v107 - v12;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC08, &qword_23D8E1580);
  v118 = *(v120 - 8);
  v13 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  v114 = v107 - v14;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC10, &qword_23D8E1588);
  v110 = *(v115 - 8);
  v15 = *(v110 + 64);
  MEMORY[0x28223BE20](v115);
  v109 = v107 - v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC18, &qword_23D8E1590);
  v113 = *(v117 - 8);
  v17 = *(v113 + 64);
  MEMORY[0x28223BE20](v117);
  v112 = v107 - v18;
  v124 = sub_23D8DC170();
  v111 = *(v124 - 8);
  v19 = *(v111 + 64);
  v20 = MEMORY[0x28223BE20](v124);
  v108 = v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v123 = v107 - v22;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC20, &qword_23D8E1598);
  v23 = *(*(v126 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v126);
  v116 = v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v119 = v107 - v26;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC28, &qword_23D8E15A0);
  v27 = *(v127 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v127);
  v30 = v107 - v29;
  v31 = sub_23D8DD750();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC30, &qword_23D8E15A8);
  v35 = *(v125 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v125);
  v38 = v107 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC38, &qword_23D8E15B0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v138 = v107 - v41;
  v42 = a1;
  v43 = (a1 + *(type metadata accessor for AXRFullScreenView() + 32));
  v45 = *v43;
  v44 = v43[1];
  v46 = *v43;
  if (!*v43)
  {
    goto LABEL_7;
  }

  if (v45 != 1)
  {
    v71 = swift_allocObject();
    *(v71 + 16) = v45;
    *(v71 + 24) = v44;
    v46 = sub_23D8559EC;
LABEL_7:
    sub_23D83BCD8(v45);
    sub_23D8556A0(v46);
    v72 = sub_23D8DD710();
    MEMORY[0x28223BE20](v72);
    v107[-2] = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD20, &qword_23D8E1620);
    sub_23D8556C8();
    sub_23D8DCD70();
    v73 = sub_23D835AD0(&qword_27E2EDC78, &qword_27E2EDC30, &qword_23D8E15A8);
    v74 = v125;
    MEMORY[0x23EEEF8F0](v38, v125, v73);
    v139 = v74;
    v140 = v73;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v76 = sub_23D854F98();
    v139 = v126;
    v140 = v76;
    v77 = swift_getOpaqueTypeConformance2();
    v78 = v127;
    MEMORY[0x23EEEF900](v30, v127, v128, OpaqueTypeConformance2, v77);
    (*(v27 + 8))(v30, v78);
    v47 = v42;
    (*(v35 + 8))(v38, v74);
    v80 = v135;
    v79 = v136;
    v82 = v133;
    v81 = v134;
LABEL_10:
    v95 = sub_23D8DD720();
    MEMORY[0x28223BE20](v95);
    v107[-2] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC80, &qword_23D8E15D0);
    sub_23D8550F4();
    v96 = v129;
    sub_23D8DCD70();
    sub_23D8DD740();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD10, &qword_23D8E1618);
    sub_23D8555E4();
    v97 = v132;
    sub_23D8DCD70();
    v98 = *(v79 + 48);
    v99 = *(v79 + 64);
    v100 = v138;
    sub_23D83C67C(v138, v80, &qword_27E2EDC38, &qword_23D8E15B0);
    v101 = v80;
    v102 = v130;
    v103 = v101 + v98;
    v104 = v131;
    (*(v130 + 16))(v103, v96, v131);
    (*(v82 + 16))(v101 + v99, v97, v81);
    sub_23D8DD5D0();
    (*(v82 + 8))(v97, v81);
    (*(v102 + 8))(v96, v104);
    return sub_23D83C6E4(v100, &qword_27E2EDC38, &qword_23D8E15B0);
  }

  v47 = v42;
  if (*v42)
  {
    v48 = *v42;
    v49 = sub_23D8DC410();

    v50 = *(v49 + 16);
    v107[1] = v34;
    if (v50)
    {
      v107[0] = v42;
      v51 = v111;
      (*(v111 + 16))(v108, v49 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * (v50 - 1), v124);

      v52 = v123;
      (*(v51 + 32))();
      v53 = sub_23D8DD710();
      MEMORY[0x28223BE20](v53);
      v54 = v107[0];
      v107[-2] = v52;
      v107[-1] = v54;
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC40, &qword_23D8E15B8);
      v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDC48, &unk_23D8E15C0);
      v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDC50, &unk_23D8E5190);
      v57 = sub_23D835AD0(&qword_27E2EDC58, &qword_27E2EDC48, &unk_23D8E15C0);
      v58 = sub_23D835AD0(&qword_27E2EDC60, &qword_27E2EDC50, &unk_23D8E5190);
      v139 = v55;
      v140 = v56;
      v141 = v57;
      v142 = v58;
      swift_getOpaqueTypeConformance2();
      v59 = v109;
      sub_23D8DD0C0();
      v60 = sub_23D835AD0(&qword_27E2EDC68, &qword_27E2EDC10, &qword_23D8E1588);
      v61 = v112;
      v62 = v115;
      sub_23D8DCF70();
      (*(v110 + 8))(v59, v62);
      v139 = v62;
      v140 = v60;
      v63 = swift_getOpaqueTypeConformance2();
      v64 = v114;
      v65 = v117;
      MEMORY[0x23EEEF8F0](v61, v117, v63);
      v66 = v118;
      v67 = v116;
      v68 = v120;
      (*(v118 + 16))(v116, v64, v120);
      (*(v66 + 56))(v67, 0, 1, v68);
      v139 = v65;
      v140 = v63;
      v69 = swift_getOpaqueTypeConformance2();
      v70 = v119;
      MEMORY[0x23EEEF920](v67, v68, v69);
      sub_23D83C6E4(v67, &qword_27E2EDC20, &qword_23D8E1598);
      (*(v66 + 8))(v64, v68);
      (*(v113 + 8))(v61, v65);
      (*(v51 + 8))(v123, v124);
      v47 = v107[0];
    }

    else
    {

      v83 = v116;
      v84 = v120;
      (*(v118 + 56))(v116, 1, 1, v120);
      v85 = sub_23D835AD0(&qword_27E2EDC68, &qword_27E2EDC10, &qword_23D8E1588);
      v139 = v115;
      v140 = v85;
      v86 = swift_getOpaqueTypeConformance2();
      v139 = v117;
      v140 = v86;
      v87 = swift_getOpaqueTypeConformance2();
      v70 = v119;
      MEMORY[0x23EEEF920](v83, v84, v87);
      sub_23D83C6E4(v83, &qword_27E2EDC20, &qword_23D8E1598);
    }

    v79 = v136;
    v82 = v133;
    v81 = v134;
    v88 = sub_23D854F98();
    v89 = v121;
    v90 = v126;
    MEMORY[0x23EEEF8F0](v70, v126, v88);
    v91 = sub_23D835AD0(&qword_27E2EDC78, &qword_27E2EDC30, &qword_23D8E15A8);
    v139 = v125;
    v140 = v91;
    v92 = swift_getOpaqueTypeConformance2();
    v139 = v90;
    v140 = v88;
    v93 = swift_getOpaqueTypeConformance2();
    v94 = v128;
    MEMORY[0x23EEEF910](v89, v127, v128, v92, v93);
    (*(v122 + 8))(v89, v94);
    sub_23D83C6E4(v70, &qword_27E2EDC20, &qword_23D8E1598);
    v80 = v135;
    goto LABEL_10;
  }

  v106 = *(v42 + 8);
  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D844AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD38, &qword_23D8E1630);
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v33 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD68, &qword_23D8E1640);
  v36 = *(v37 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v37);
  v35 = &v33 - v7;
  v8 = (a1 + *(type metadata accessor for AXRFullScreenView() + 32));
  v9 = v8[1];
  v42 = *v8;
  v41 = v9;
  sub_23D83BCC8(v42);
  sub_23D8DC9F0();
  sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
  v40 = sub_23D8DD140();
  v39 = v10;
  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
  v11 = sub_23D8DD140();
  v13 = *a1;
  if (!*a1)
  {
LABEL_6:
    v31 = *(a1 + 8);
    sub_23D8DD120();
    __break(1u);
    goto LABEL_7;
  }

  v14 = v11;
  v15 = v12;
  v16 = v13;
  v17 = sub_23D8DCB10();
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = v17;
    v20 = *(a1 + 16);

    v21 = sub_23D8DCB10();
    *&v44 = v42;
    *(&v44 + 1) = v41;
    *&v45 = v14;
    *(&v45 + 1) = v15;
    *&v46 = v40;
    *(&v46 + 1) = v39;
    *&v47 = v19;
    *(&v47 + 1) = v13;
    *&v48 = v21;
    *(&v48 + 1) = v18;
    v22 = *MEMORY[0x277CDF998];
    v23 = sub_23D8DCF90();
    (*(*(v23 - 8) + 104))(v5, v22, v23);
    sub_23D856D84(&qword_27E2EDD70, MEMORY[0x277CDFA28]);
    if (sub_23D8DE820())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD30, &qword_23D8E1628);
      sub_23D8557F0();
      sub_23D835AD0(&qword_27E2EDD60, &qword_27E2EDD38, &qword_23D8E1630);
      v24 = v35;
      sub_23D8DDDD0();
      sub_23D83C6E4(v5, &qword_27E2EDD38, &qword_23D8E1630);
      v43[2] = v46;
      v43[3] = v47;
      v43[4] = v48;
      v43[1] = v45;
      v43[0] = v44;
      sub_23D83C6E4(v43, &qword_27E2EDD30, &qword_23D8E1628);
      sub_23D8DE5F0();
      sub_23D8DD0D0();
      v25 = v38;
      (*(v36 + 32))(v38, v24, v37);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD20, &qword_23D8E1620);
      v27 = (v25 + *(result + 36));
      v28 = v49;
      v27[4] = v48;
      v27[5] = v28;
      v27[6] = v50;
      v29 = v45;
      *v27 = v44;
      v27[1] = v29;
      v30 = v47;
      v27[2] = v46;
      v27[3] = v30;
      return result;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v32 = *(a1 + 24);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D844FB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC48, &unk_23D8E15C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  *v7 = sub_23D8DD420();
  *(v7 + 1) = 0x4020000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDF0, &unk_23D8E16A0);
  sub_23D845158(a1, a2, &v7[*(v8 + 44)]);
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC50, &unk_23D8E5190);
  sub_23D835AD0(&qword_27E2EDC58, &qword_27E2EDC48, &unk_23D8E15C0);
  sub_23D835AD0(&qword_27E2EDC60, &qword_27E2EDC50, &unk_23D8E5190);
  sub_23D8DDF70();
  return sub_23D83C6E4(v7, &qword_27E2EDC48, &unk_23D8E15C0);
}

uint64_t sub_23D845158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4F8, &qword_23D8E0C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v92 - v7;
  v111 = sub_23D8DDBB0();
  v109 = *(v111 - 8);
  v8 = *(v109 + 64);
  MEMORY[0x28223BE20](v111);
  v108 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDF8, &qword_23D8E16B0);
  v102 = *(v10 - 8);
  v103 = v10;
  v11 = *(v102 + 64);
  MEMORY[0x28223BE20](v10);
  v101 = &v92 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE00, &qword_23D8E16B8);
  v13 = *(*(v100 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v100);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v99 = &v92 - v18;
  MEMORY[0x28223BE20](v17);
  v104 = &v92 - v19;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD38, &qword_23D8E1630);
  v20 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v22 = &v92 - v21;
  v23 = sub_23D8DE2D0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE08, &qword_23D8E16C0);
  v28 = *(*(v106 - 1) + 64);
  v29 = MEMORY[0x28223BE20](v106);
  v98 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v92 - v31;
  v107 = a1;
  v33.value._countAndFlagsBits = sub_23D8DC160();
  iconForBundleId(_:)(v33);
  sub_23D8DE2B0();

  (*(v24 + 104))(v27, *MEMORY[0x277CE0FE0], v23);
  v34 = sub_23D8DE300();

  (*(v24 + 8))(v27, v23);
  v35 = *(type metadata accessor for AXRFullScreenView() + 60);
  v112 = a2;
  v36 = *(a2 + v35);
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *&v117[38] = v121;
  *&v117[22] = v120;
  *&v117[6] = v119;
  *&v116[2] = *v117;
  v118 = 1;
  v115 = v34;
  *v116 = 257;
  *&v116[18] = *&v117[16];
  *&v116[34] = *&v117[32];
  *&v116[48] = *(&v121 + 1);
  v37 = *MEMORY[0x277CDF988];
  v38 = sub_23D8DCF90();
  v39 = *(v38 - 8);
  v40 = *(v39 + 104);
  v41 = v39 + 104;
  v40(v22, v37, v38);
  v42 = sub_23D856D84(&qword_27E2EDD70, MEMORY[0x277CDFA28]);
  v114 = v22;
  if ((sub_23D8DE820() & 1) == 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v94 = v42;
  v95 = v41;
  v96 = v40;
  v97 = v38;
  v93 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE10, &qword_23D8E16C8);
  sub_23D855C08();
  v44 = sub_23D835AD0(&qword_27E2EDD60, &qword_27E2EDD38, &qword_23D8E1630);
  v45 = v114;
  v92 = v44;
  sub_23D8DDDD0();
  sub_23D83C6E4(v45, &qword_27E2EDD38, &qword_23D8E1630);
  v122[1] = *v116;
  v122[2] = *&v116[16];
  v122[3] = *&v116[32];
  v123 = *&v116[48];
  v122[0] = v115;
  sub_23D83C6E4(v122, &qword_27E2EDE10, &qword_23D8E16C8);
  v46 = *(v106 + 9);
  v106 = v32;
  v47 = &v32[v46];
  v48 = *(sub_23D8DD090() + 20);
  v49 = *MEMORY[0x277CE0118];
  v50 = sub_23D8DD4E0();
  (*(*(v50 - 8) + 104))(&v47[v48], v49, v50);
  __asm { FMOV            V0.2D, #8.0 }

  *v47 = _Q0;
  *&v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE30, &qword_23D8E4AD0) + 36)] = 256;
  *&v115 = sub_23D8DC150();
  *(&v115 + 1) = v56;
  sub_23D83CB18();
  v57 = sub_23D8DDCB0();
  v59 = v58;
  v61 = v60;
  v63 = v108;
  v62 = v109;
  v64 = v111;
  (*(v109 + 104))(v108, *MEMORY[0x277CE0A90], v111);
  v65 = sub_23D8DDAB0();
  v66 = v110;
  (*(*(v65 - 8) + 56))(v110, 1, 1, v65);
  sub_23D8DDB40();
  sub_23D83C6E4(v66, &qword_27E2ED4F8, &qword_23D8E0C40);
  (*(v62 + 8))(v63, v64);
  sub_23D8DDB00();
  sub_23D8DDB70();

  v67 = sub_23D8DDC40();
  v69 = v68;
  v71 = v70;

  sub_23D83CB6C(v57, v59, v61 & 1);

  v43 = v112;
  if (*(v112 + 16))
  {
    v72 = *(v112 + 16);

    sub_23D8DC960();

    sub_23D8DC7E0();

    v73 = sub_23D8DE190();

    *&v115 = v73;
    v74 = sub_23D8DDC10();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    sub_23D83CB6C(v67, v69, v71 & 1);

    *&v115 = v74;
    *(&v115 + 1) = v76;
    v116[0] = v78 & 1;
    *&v116[8] = v80;
    v96(v114, *MEMORY[0x277CDF9A8], v97);
    if (sub_23D8DE820())
    {
      v81 = v101;
      v82 = v114;
      sub_23D8DDDD0();
      sub_23D83C6E4(v82, &qword_27E2EDD38, &qword_23D8E1630);
      sub_23D83CB6C(v74, v76, v78 & 1);

      v83 = v99;
      (*(v102 + 32))(v99, v81, v103);
      *(v83 + *(v100 + 36)) = 257;
      v84 = v104;
      sub_23D83C744(v83, v104, &qword_27E2EDE00, &qword_23D8E16B8);
      v85 = v106;
      v86 = v98;
      sub_23D83C67C(v106, v98, &qword_27E2EDE08, &qword_23D8E16C0);
      v87 = v93;
      sub_23D83C67C(v84, v93, &qword_27E2EDE00, &qword_23D8E16B8);
      v88 = v105;
      sub_23D83C67C(v86, v105, &qword_27E2EDE08, &qword_23D8E16C0);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE38, &qword_23D8E16E0);
      sub_23D83C67C(v87, v88 + *(v89 + 48), &qword_27E2EDE00, &qword_23D8E16B8);
      sub_23D83C6E4(v84, &qword_27E2EDE00, &qword_23D8E16B8);
      sub_23D83C6E4(v85, &qword_27E2EDE08, &qword_23D8E16C0);
      sub_23D83C6E4(v87, &qword_27E2EDE00, &qword_23D8E16B8);
      return sub_23D83C6E4(v86, &qword_27E2EDE08, &qword_23D8E16C0);
    }

    goto LABEL_6;
  }

LABEL_7:
  v91 = *(v43 + 24);
  sub_23D8DC9F0();
  sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D845C44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DD560();
  sub_23D8DC150();
  sub_23D83CB18();
  result = sub_23D8DDCB0();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5 & 1;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_23D845CBC@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v2 = type metadata accessor for AXRFullScreenView();
  v3 = *(v2 - 8);
  v93 = v2;
  v94 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v96 = v6;
  v97 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v95 = &v75 - v7;
  v87 = sub_23D8DD770();
  v86 = *(v87 - 8);
  v8 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v76 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_23D8DCCB0();
  v10 = *(v83 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v83);
  v77 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDCD0, &qword_23D8E15F8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v75 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDCB8, &qword_23D8E15F0);
  v18 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v20 = &v75 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD78, &qword_23D8E1648);
  v84 = *(v85 - 8);
  v21 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v81 = &v75 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDCB0, &qword_23D8E15E8);
  v23 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v25 = &v75 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC90, &qword_23D8E15D8);
  v26 = *(*(v89 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v89);
  v79 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v88 = &v75 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD80, &qword_23D8E1650);
  v91 = *(v30 - 8);
  v92 = v30;
  v31 = *(v91 + 64);
  MEMORY[0x28223BE20](v30);
  v90 = &v75 - v32;
  v99 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDD88, &qword_23D8E1658);
  sub_23D855A1C();
  sub_23D835AD0(&qword_27E2EDD98, &qword_27E2EDD88, &qword_23D8E1658);
  sub_23D8DDBE0();
  v33 = sub_23D8DE230();
  v34 = sub_23D8DD9E0();
  v35 = &v17[*(v14 + 44)];
  *v35 = v33;
  v35[8] = v34;
  v78 = v1;
  if (*(v1 + 16))
  {
    sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);

    sub_23D8DC960();

    sub_23D8DC7E0();

    v36 = sub_23D8DEB80();
    v37 = sub_23D8DEB70();

    v38 = MEMORY[0x277CDF3D0];
    if ((v37 & 1) == 0)
    {
      v38 = MEMORY[0x277CDF3C0];
    }

    v39 = v77;
    v40 = v83;
    (*(v10 + 104))(v77, *v38, v83);
    KeyPath = swift_getKeyPath();
    v42 = &v20[*(v80 + 36)];
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v10 + 32))(v42 + *(v43 + 28), v39, v40);
    *v42 = KeyPath;
    sub_23D83C744(v17, v20, &qword_27E2EDCD0, &qword_23D8E15F8);
    v44 = v76;
    sub_23D8DD760();
    sub_23D855448();
    sub_23D856D84(&qword_27E2ED300, MEMORY[0x277CDE0B8]);
    v45 = v81;
    v46 = v87;
    sub_23D8DDD10();
    (*(v86 + 8))(v44, v46);
    sub_23D83C6E4(v20, &qword_27E2EDCB8, &qword_23D8E15F0);
    v47 = &v25[*(v82 + 36)];
    v48 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDCF0, &qword_23D8E1608) + 40)];
    sub_23D8DD0E0();
    *v47 = 0;
    (*(v84 + 32))(v25, v45, v85);
    sub_23D855304();
    v49 = v79;
    sub_23D8DDEE0();
    sub_23D83C6E4(v25, &qword_27E2EDCB0, &qword_23D8E15E8);
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v50 = 0xED0000756E656D2ELL;
    v51 = 0x65726F6D2E727861;
    if (qword_27E2F3C80)
    {
      v52 = qword_27E2F3C80;
      v53 = sub_23D8DE830();
      v54 = sub_23D8DE830();
      v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

      v51 = sub_23D8DE870();
      v50 = v56;
    }

    v100 = v51;
    v101 = v50;
    sub_23D83CB18();
    v57 = v88;
    sub_23D8DCFD0();

    sub_23D83C6E4(v49, &qword_27E2EDC90, &qword_23D8E15D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC98, &qword_23D8E15E0);
    sub_23D855248();
    sub_23D835AD0(&qword_27E2EDCF8, &qword_27E2EDC98, &qword_23D8E15E0);
    v58 = v90;
    sub_23D8DDF70();
    sub_23D83C6E4(v57, &qword_27E2EDC90, &qword_23D8E15D8);
    v59 = v78;
    v60 = v78 + *(v93 + 52);
    v61 = *v60;
    v62 = *(v60 + 8);
    LOBYTE(v103[0]) = v61;
    v104 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
    sub_23D8DE340();
    v63 = v101;
    v93 = v100;
    v64 = v102;
    v65 = v95;
    sub_23D853140(v59, v95);
    v66 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v67 = swift_allocObject();
    sub_23D855DF8(v65, v67 + v66, type metadata accessor for AXRFullScreenView);
    v68 = v97;
    sub_23D853140(v59, v97);
    v69 = swift_allocObject();
    sub_23D855DF8(v68, v69 + v66, type metadata accessor for AXRFullScreenView);
    IsPad = AXDeviceIsPad();
    v71 = v98;
    (*(v91 + 32))(v98, v58, v92);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC80, &qword_23D8E15D0);
    v73 = v71 + *(result + 36);
    *v73 = IsPad;
    *(v73 + 1) = v100;
    *(v73 + 4) = *(&v100 + 3);
    *(v73 + 8) = v93;
    *(v73 + 16) = v63;
    *(v73 + 24) = v64;
    *(v73 + 25) = v103[0];
    *(v73 + 28) = *(v103 + 3);
    *(v73 + 32) = sub_23D855A74;
    *(v73 + 40) = v67;
    *(v73 + 48) = sub_23D8570DC;
    *(v73 + 56) = v69;
  }

  else
  {
    v74 = *(v78 + 24);
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D846824()
{
  sub_23D8DD480();
  v0 = sub_23D8DDC90();
  v2 = v1;
  v4 = v3 & 1;
  sub_23D8DDE40();
  sub_23D83CB6C(v0, v2, v4);
}

void sub_23D8468E0(uint64_t a1)
{
  v2 = type metadata accessor for AXRFullScreenView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8DEA70();
  v6 = MEMORY[0x23EEF0BB0]();
  v7 = *MEMORY[0x277CE7930];
  swift_beginAccess();
  v8 = *(v6 + v7);

  LOBYTE(v6) = sub_23D8DEA40();
  if (v6)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    sub_23D8DC900();
    sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8]);
    sub_23D8DCD40();
    sub_23D8DC8C0();

    if (!*a1)
    {
      goto LABEL_8;
    }

    v12 = *a1;
    sub_23D8DC3A0();
  }

  v13 = [objc_opt_self() defaultCenter];
  if (qword_27E2ECEA8 != -1)
  {
    swift_once();
  }

  v14 = qword_27E2F3C60;
  v15 = [objc_opt_self() mainQueue];
  sub_23D853140(a1, &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_23D855DF8(v5, v17 + v16, type metadata accessor for AXRFullScreenView);
  aBlock[4] = sub_23D854938;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D8470CC;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);

  v19 = [v13 addObserverForName:v14 object:0 queue:v15 usingBlock:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  v20 = *a1;
  if (*a1)
  {
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    sub_23D8DC900();
    sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8]);
    v24 = v20;
    sub_23D8DCD40();
    sub_23D8DC8B0();

    sub_23D8DC360();

    return;
  }

LABEL_8:
  v25 = *(a1 + 8);
  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
  sub_23D8DD120();
  __break(1u);
}

uint64_t sub_23D846CE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AXRFullScreenView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = a2 + *(v4 + 92);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v23) = v13;
  *(&v23 + 1) = v14;
  LOBYTE(v22) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();
  v23 = *(a2 + *(v4 + 96));
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
  sub_23D8DE330();
  v15 = sub_23D8DEA00();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  sub_23D853140(a2, v7);
  sub_23D8DE9D0();
  v16 = sub_23D8DE9C0();
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  sub_23D855DF8(v7, v18 + v17, type metadata accessor for AXRFullScreenView);
  sub_23D870938(0, 0, v11, &unk_23D8E1558, v18);
}

uint64_t sub_23D846F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_23D8DE9D0();
  *(v4 + 24) = sub_23D8DE9C0();
  v6 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D846FCC, v6, v5);
}

uint64_t sub_23D846FCC()
{
  v2 = v0[2];
  v1 = v0[3];

  if (*v2)
  {
    v3 = *v2;
    v4 = sub_23D8DC280();

    if (v4)
    {
      v5 = v0[2];
      sub_23D8409FC();
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = *(v0[2] + 8);
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);

    return sub_23D8DD120();
  }
}

uint64_t sub_23D8470CC(uint64_t a1)
{
  v2 = sub_23D8DBE10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_23D8DBDF0();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_23D8471C0(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F0410, &unk_23D8E1540);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = *a3;
  if (*a3)
  {
    v10 = *a2;
    v11 = v9;
    sub_23D8DC360();

    if (v10)
    {
      v12 = v11;
      v13 = sub_23D8DC280();

      if (v13)
      {
        sub_23D8DC5E0();
        v14 = sub_23D8DC5D0();
        v15 = v12;
        v16 = sub_23D8DC410();
        if (*(v16 + 16))
        {
          v17 = v16;
          v18 = sub_23D8DC170();
          v19 = *(v18 - 8);
          (*(v19 + 16))(v8, v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v18);

          (*(v19 + 56))(v8, 0, 1, v18);
        }

        else
        {

          v21 = sub_23D8DC170();
          (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
        }

        sub_23D8DC5C0();

        sub_23D83C6E4(v8, &unk_27E2F0410, &unk_23D8E1540);
      }
    }

    else
    {
      sub_23D8DC5E0();
      v24 = sub_23D8DC5D0();
      sub_23D8DC5B0();
      v20 = v24;
    }
  }

  else
  {
    v22 = *(a3 + 8);
    sub_23D8DC430();
    sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
    sub_23D8DD120();
    __break(1u);
  }
}

void sub_23D847474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23D8DEA70();
  v4 = MEMORY[0x23EEF0BB0]();
  v5 = *MEMORY[0x277CE7930];
  swift_beginAccess();
  v6 = *(v4 + v5);

  LOBYTE(v4) = sub_23D8DEA40();
  if (v4)
  {
    v7 = *(a3 + 32);
    v8 = *(a3 + 40);
    v9 = *(a3 + 48);
    sub_23D8DC900();
    sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8]);
    sub_23D8DCD40();
    sub_23D8DC8C0();

    v10 = *a3;
    if (*a3)
    {
      v11 = v10;
      sub_23D8DC3A0();

LABEL_5:
      v12 = *(a3 + 32);
      v13 = *(a3 + 40);
      v14 = *(a3 + 48);
      sub_23D8DC900();
      sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8]);
      v15 = v10;
      sub_23D8DCD40();
      sub_23D8DC8B0();

      sub_23D8DC360();

      return;
    }
  }

  else
  {
    v10 = *a3;
    if (*a3)
    {
      goto LABEL_5;
    }
  }

  v16 = *(a3 + 8);
  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
  sub_23D8DD120();
  __break(1u);
}

void sub_23D847688(uint64_t a1)
{
  v2 = type metadata accessor for AXRFullScreenView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultCenter];
  sub_23D853140(a1, v5);
  v7 = sub_23D8DED30();
  if (qword_27E2ECEA8 != -1)
  {
    swift_once();
  }

  [v6 removeObserver:v7 name:qword_27E2F3C60 object:0];

  swift_unknownObjectRelease();
  v8 = (a1 + *(v2 + 88));
  v10 = v8[1];
  v15 = *v8;
  v9 = v15;
  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
  sub_23D8DE320();
  v11 = v14;
  [v14 invalidate];

  v15 = v9;
  v16 = v10;
  v14 = 0;
  sub_23D8DE330();
  sub_23D8DC5E0();
  v12 = sub_23D8DC5D0();
  sub_23D8DC5B0();
}

uint64_t sub_23D847820@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = sub_23D8DD980();
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  MEMORY[0x28223BE20](v2);
  v76 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED900, &qword_23D8E12B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = v58 - v7;
  v65 = sub_23D8DD950();
  v64 = *(v65 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v61 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED908, &qword_23D8E12C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v58[2] = v58 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED910, &qword_23D8E12C8);
  v63 = *(v59 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v59);
  v15 = v58 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED918, &qword_23D8E12D0);
  v68 = *(v71 - 8);
  v16 = *(v68 + 64);
  MEMORY[0x28223BE20](v71);
  v60 = v58 - v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED920, &qword_23D8E12D8);
  v70 = *(v73 - 8);
  v18 = *(v70 + 64);
  MEMORY[0x28223BE20](v73);
  v67 = v58 - v19;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED928, &qword_23D8E12E0);
  v69 = *(v72 - 8);
  v20 = *(v69 + 64);
  MEMORY[0x28223BE20](v72);
  v66 = v58 - v21;
  v62 = type metadata accessor for AXRFullScreenView();
  v22 = *(v62 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D8, &unk_23D8E0EA0);
  sub_23D8DE340();
  v75 = v1;
  v80 = v1;
  v58[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED930, &qword_23D8E12E8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED938, &qword_23D8E12F0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED940, &qword_23D8E12F8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED948, &qword_23D8E1300);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED950, &qword_23D8E1308);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED958, &qword_23D8E1310);
  v28 = sub_23D835AD0(&qword_27E2ED960, &qword_27E2ED958, &qword_23D8E1310);
  v81 = v27;
  v82 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED968, &qword_23D8E1318);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED970, &qword_23D8E1320);
  v32 = sub_23D835AD0(&qword_27E2ED978, &qword_27E2ED970, &qword_23D8E1320);
  v81 = v31;
  v82 = v32;
  v33 = v59;
  v34 = swift_getOpaqueTypeConformance2();
  v81 = v30;
  v82 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  v81 = v25;
  v82 = v26;
  v83 = OpaqueTypeConformance2;
  v84 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_23D83CAC4();
  v38 = sub_23D853304();
  v81 = v23;
  v82 = &type metadata for AXRStage;
  v83 = v24;
  v84 = v36;
  v39 = v60;
  v85 = v37;
  v86 = v38;
  swift_getOpaqueTypeConformance2();
  sub_23D8DD030();
  v81 = sub_23D8DE230();
  v40 = v61;
  sub_23D8DD940();
  v41 = sub_23D835AD0(&qword_27E2EDB08, &qword_27E2ED910, &qword_23D8E12C8);
  v42 = MEMORY[0x277CE0F60];
  sub_23D8DDE60();
  (*(v64 + 8))(v40, v65);

  (*(v63 + 8))(v15, v33);
  LODWORD(v36) = AXDeviceIsPad();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB10, &qword_23D8E1418);
  v43 = *(sub_23D8DD4D0() - 8);
  v44 = *(v43 + 72);
  v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_23D8E0D60;
  sub_23D8DD4B0();
  if (v36)
  {
    sub_23D8DD4A0();
  }

  else
  {
    sub_23D8DD4C0();
  }

  sub_23D854344(v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v47 = *(v62 + 92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E8, &qword_23D8E0EB8);
  v48 = v74;
  sub_23D8DE340();
  v81 = v33;
  v82 = MEMORY[0x277CE0F78];
  v83 = v41;
  v84 = v42;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v67;
  v51 = v71;
  sub_23D8DDE90();

  sub_23D83C6E4(v48, &qword_27E2ED900, &qword_23D8E12B8);
  (*(v68 + 8))(v39, v51);
  v52 = v76;
  sub_23D8DD970();
  v81 = v51;
  v82 = v49;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v66;
  v55 = v73;
  sub_23D8DDF60();
  (*(v77 + 8))(v52, v78);
  (*(v70 + 8))(v50, v55);
  v81 = v55;
  v82 = v53;
  swift_getOpaqueTypeConformance2();
  v56 = v72;
  sub_23D8DDE50();
  return (*(v69 + 8))(v54, v56);
}

uint64_t sub_23D84821C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v43 = a2;
  v3 = type metadata accessor for AXRFullScreenView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = v6;
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDC0, &qword_23D8E1680);
  v44 = *(v39 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v39);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDC8, &qword_23D8E1688);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v42 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v41 = &v35 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v40 = &v35 - v18;
  MEMORY[0x28223BE20](v17);
  v36 = &v35 - v19;
  sub_23D853140(a1, v7);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_23D855DF8(v7, v21 + v20, type metadata accessor for AXRFullScreenView);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDD0, &qword_23D8E1690);
  sub_23D835AD0(&qword_27E2EDDD8, &qword_27E2EDDD0, &qword_23D8E1690);
  sub_23D8DE360();
  sub_23D835AD0(&qword_27E2EDDE0, &qword_27E2EDDC0, &qword_23D8E1680);
  v22 = v39;
  sub_23D8DDEE0();
  v23 = *(v44 + 8);
  v44 += 8;
  v23(v10, v22);
  v24 = v38;
  sub_23D853140(v38, v7);
  v25 = swift_allocObject();
  sub_23D855DF8(v7, v25 + v20, type metadata accessor for AXRFullScreenView);
  v45 = v24;
  sub_23D8DE360();
  v26 = v40;
  sub_23D8DDEE0();
  v23(v10, v22);
  v27 = v36;
  v28 = v41;
  sub_23D83C67C(v36, v41, &qword_27E2EDDC8, &qword_23D8E1688);
  v29 = v26;
  v30 = v26;
  v31 = v42;
  sub_23D83C67C(v29, v42, &qword_27E2EDDC8, &qword_23D8E1688);
  v32 = v43;
  sub_23D83C67C(v28, v43, &qword_27E2EDDC8, &qword_23D8E1688);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDE8, &qword_23D8E1698);
  sub_23D83C67C(v31, v32 + *(v33 + 48), &qword_27E2EDDC8, &qword_23D8E1688);
  sub_23D83C6E4(v30, &qword_27E2EDDC8, &qword_23D8E1688);
  sub_23D83C6E4(v27, &qword_27E2EDDC8, &qword_23D8E1688);
  sub_23D83C6E4(v31, &qword_27E2EDDC8, &qword_23D8E1688);
  return sub_23D83C6E4(v28, &qword_27E2EDDC8, &qword_23D8E1688);
}

__n128 sub_23D848720@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_23D8DD420();
  v15 = 1;
  sub_23D84879C(v10);
  v3 = v10[0];
  v4 = v10[1];
  v5 = v11;
  v6 = v13;
  v7 = v14;
  result = v12;
  v9 = v15;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = v9;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u64[0] = v4;
  a1[2].n128_u8[8] = v5;
  a1[3] = result;
  a1[4].n128_u8[0] = v6;
  a1[4].n128_u64[1] = v7;
  return result;
}

uint64_t sub_23D84879C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v11 = v10 & 1;
  *(a1 + 40) = v10 & 1;
  *(a1 + 48) = v12;

  sub_23D834028(v7, v9, v11);

  sub_23D83CB6C(v7, v9, v11);
}

uint64_t sub_23D848954(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  sub_23D8DC900();
  sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8]);
  sub_23D8DCD40();
  v4 = sub_23D8DC8A0();
  *v5 = !*v5;
  v4(&v7, 0);
}

__n128 sub_23D848A20@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = sub_23D8DD420();
  v17 = 1;
  sub_23D848AAC(a1, v12);
  v5 = v12[0];
  v6 = v12[1];
  v7 = v13;
  v8 = v15;
  v9 = v16;
  result = v14;
  v11 = v17;
  a2->n128_u64[0] = v4;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = v11;
  a2[1].n128_u64[1] = v5;
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u8[8] = v7;
  a2[3] = result;
  a2[4].n128_u8[0] = v8;
  a2[4].n128_u64[1] = v9;
  return result;
}

uint64_t sub_23D848AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_23D8DC900();
  sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8]);
  sub_23D8DCD40();
  sub_23D8DC8B0();

  v6 = sub_23D8DE2C0();
  sub_23D8DCD40();
  sub_23D8DC8B0();

  AXRMoreActions.title.getter();
  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  LOBYTE(v5) = v10 & 1;
  *(a2 + 40) = v10 & 1;
  *(a2 + 48) = v11;

  sub_23D834028(v7, v9, v5);

  sub_23D83CB6C(v7, v9, v5);
}

__n128 sub_23D848C68@<Q0>(__n128 *a1@<X8>)
{
  sub_23D8DC9F0();
  sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
  v2 = sub_23D8DD140();
  v4 = v3;
  sub_23D8DE310();
  sub_23D8DE310();
  result = v6;
  *a1 = v6;
  a1[1].n128_u64[0] = v7;
  a1[1].n128_u16[4] = 257;
  a1[2].n128_u64[0] = v2;
  a1[2].n128_u64[1] = v4;
  a1[3].n128_u8[0] = v6.n128_u8[0];
  a1[3].n128_u64[1] = v6.n128_u64[1];
  return result;
}

__n128 sub_23D848D64@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_23D8DD560();
  sub_23D848DD0(&v7);
  v3 = v7;
  v4 = v9;
  v5 = v10;
  result = v8;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v3;
  a1[2] = result;
  a1[3].n128_u8[0] = v4;
  a1[3].n128_u64[1] = v5;
  return result;
}

uint64_t sub_23D848DD0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v11 = v10 & 1;
  *(a1 + 24) = v10 & 1;
  *(a1 + 32) = v12;

  sub_23D834028(v7, v9, v11);

  sub_23D83CB6C(v7, v9, v11);
}

uint64_t sub_23D848F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDA0, &qword_23D8E1660);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDA8, &qword_23D8E1668);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - v11;
  sub_23D847820(v8);
  sub_23D83DBE8();
  v13 = (a1 + *(type metadata accessor for AXRFullScreenView() + 96));
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v28) = *v13;
  *(&v28 + 1) = v15;
  v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  if (qword_27E2ECEB0 != -1)
  {
    swift_once();
  }

  sub_23D8DE5F0();
  sub_23D8DD0D0();
  (*(v5 + 32))(v12, v8, v4);
  v16 = &v12[*(v9 + 36)];
  v17 = v33;
  *(v16 + 4) = v32;
  *(v16 + 5) = v17;
  *(v16 + 6) = v34;
  v18 = v29;
  *v16 = v28;
  *(v16 + 1) = v18;
  v19 = v31;
  *(v16 + 2) = v30;
  *(v16 + 3) = v19;
  v20 = sub_23D8DE620();
  v26 = v14;
  v27 = v15;
  sub_23D8DE320();
  v21 = v25;
  sub_23D83C744(v12, a2, &qword_27E2EDDA8, &qword_23D8E1668);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB0, &unk_23D8E1670);
  v23 = a2 + *(result + 36);
  *v23 = v20;
  *(v23 + 8) = v21;
  return result;
}

uint64_t sub_23D8492F8(uint64_t a1)
{
  v2 = sub_23D8DCEE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  sub_23D8DC900();
  sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8]);
  sub_23D8DCD40();
  LOBYTE(v11) = sub_23D8DC8B0();

  if (v11)
  {
    v13 = (a1 + *(type metadata accessor for AXRFullScreenView() + 40));
    v14 = *v13;
    v15 = *(v13 + 1);
    v18[16] = v14;
    v19 = v15;
    v18[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
    sub_23D8DE330();
  }

  sub_23D8DCED0();
  v16 = *(type metadata accessor for AXRFullScreenView() + 64);
  (*(v3 + 16))(v7, v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5D8, &unk_23D8E0EA0);
  sub_23D8DE330();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_23D84950C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for AXRFullScreenView();
  v47 = *(v3 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D8DD3D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED958, &qword_23D8E1310);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v39 - v12);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED948, &qword_23D8E1300);
  v42 = *(v40 - 8);
  v14 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED938, &qword_23D8E12F0);
  v18 = *(v17 - 8);
  v43 = v17;
  v44 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v41 = &v39 - v20;
  *v13 = sub_23D8DE5F0();
  v13[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB30, &qword_23D8E1428);
  sub_23D849ABC(a1, v13 + *(v22 + 44));
  (*(v6 + 104))(v9, *MEMORY[0x277CDDDC0], v5);
  v23 = sub_23D835AD0(&qword_27E2ED960, &qword_27E2ED958, &qword_23D8E1310);
  sub_23D8DDF20();
  (*(v6 + 8))(v9, v5);
  sub_23D83C6E4(v13, &qword_27E2ED958, &qword_23D8E1310);
  v49 = a1;
  v24 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED950, &qword_23D8E1308);
  v50 = v10;
  v51 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED968, &qword_23D8E1318);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED970, &qword_23D8E1320);
  v29 = sub_23D835AD0(&qword_27E2ED978, &qword_27E2ED970, &qword_23D8E1320);
  v50 = v28;
  v51 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  v50 = v27;
  v51 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v40;
  v33 = v41;
  sub_23D8DE040();
  (*(v42 + 8))(v16, v32);
  v34 = v45;
  sub_23D853140(v24, v45);
  v35 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v36 = swift_allocObject();
  sub_23D855DF8(v34, v36 + v35, type metadata accessor for AXRFullScreenView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED940, &qword_23D8E12F8);
  v50 = v32;
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v53 = v31;
  swift_getOpaqueTypeConformance2();
  sub_23D83CAC4();
  sub_23D853304();
  v37 = v43;
  sub_23D8DDEC0();

  return (*(v44 + 8))(v33, v37);
}

uint64_t sub_23D849ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for AXRFullScreenView();
  v4 = v3 - 8;
  v85 = *(v3 - 8);
  v5 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v86 = v6;
  v87 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED280, &qword_23D8E09D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v71 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED260, &qword_23D8E08F8);
  v10 = *(*(v77 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v77);
  v76 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v71 - v13;
  v15 = type metadata accessor for AXRPresetSelectView(0);
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBC0, &qword_23D8E1518);
  v20 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v80 = &v71 - v21;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBC8, &qword_23D8E1520);
  v22 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v82 = &v71 - v23;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBD0, &qword_23D8E1528);
  v24 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v83 = &v71 - v25;
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  v28 = *(a1 + 48);
  v72 = a1;
  sub_23D8DC900();
  sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8]);
  sub_23D8DCD40();
  v29 = sub_23D8DC140();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  v30 = (a1 + *(v4 + 40));
  v31 = *v30;
  v32 = v30[1];
  *v19 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  swift_storeEnumTagMultiPayload();
  sub_23D83BCC8(v31);
  v33 = sub_23D8DC9F0();
  v74 = sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
  v75 = v33;
  v34 = sub_23D8DD140();
  v35 = (v19 + v16[7]);
  *v35 = v34;
  v35[1] = v36;
  v37 = (v19 + v16[8]);
  sub_23D8DC430();
  v73 = sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
  *v37 = sub_23D8DD140();
  v37[1] = v38;
  v39 = (v19 + v16[9]);
  *v39 = sub_23D8DCEF0();
  v39[1] = v40;
  v41 = v16[10];
  sub_23D83C67C(v14, v76, &qword_27E2ED260, &qword_23D8E08F8);
  sub_23D8DE310();
  sub_23D83C6E4(v14, &qword_27E2ED260, &qword_23D8E08F8);
  v42 = v19 + v16[11];
  v89 = 0;
  sub_23D8DE310();
  v43 = v91;
  *v42 = v90;
  *(v42 + 1) = v43;
  v44 = (v19 + v16[12]);
  *v44 = v31;
  v44[1] = v32;
  v45 = v72;
  *(v19 + v16[13]) = 2;
  v46 = v45[2];
  if (v46)
  {
    sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);

    sub_23D8DC960();

    sub_23D8DC7E0();

    v47 = sub_23D8DEB80();
    v48 = sub_23D8DEB70();

    v49 = sub_23D8DCCB0();
    v50 = *(v49 - 8);
    v51 = MEMORY[0x277CDF3D0];
    if ((v48 & 1) == 0)
    {
      v51 = MEMORY[0x277CDF3C0];
    }

    v52 = v84;
    (*(*(v49 - 8) + 104))(v84, *v51, v49);
    (*(v50 + 56))(v52, 0, 1, v49);
    v53 = v80;
    sub_23D83C744(v52, &v80[*(v78 + 36)], &qword_27E2ED280, &qword_23D8E09D0);
    sub_23D855DF8(v19, v53, type metadata accessor for AXRPresetSelectView);

    v54 = sub_23D8DCB10();
    v55 = v53;
    v56 = v82;
    sub_23D83C744(v55, v82, &qword_27E2EDBC0, &qword_23D8E1518);
    v57 = (v56 + *(v79 + 36));
    *v57 = v54;
    v57[1] = v46;
    v58 = *v45;
    if (*v45)
    {
      v59 = v58;
      v60 = sub_23D8DCB10();
      v61 = v83;
      sub_23D83C744(v56, v83, &qword_27E2EDBC8, &qword_23D8E1520);
      v62 = (v61 + *(v81 + 36));
      *v62 = v60;
      v62[1] = v58;
      v63 = v87;
      sub_23D853140(v45, v87);
      v64 = (*(v85 + 80) + 16) & ~*(v85 + 80);
      v65 = swift_allocObject();
      sub_23D855DF8(v63, v65 + v64, type metadata accessor for AXRFullScreenView);
      v66 = v88;
      sub_23D83C744(v61, v88, &qword_27E2EDBD0, &qword_23D8E1528);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBD8, &qword_23D8E1530);
      v68 = (v66 + *(result + 36));
      *v68 = sub_23D854904;
      v68[1] = v65;
      v68[2] = 0;
      v68[3] = 0;
      return result;
    }
  }

  else
  {
    v69 = v45[3];
    sub_23D8DD120();
    __break(1u);
  }

  v70 = v45[1];
  result = sub_23D8DD120();
  __break(1u);
  return result;
}

uint64_t sub_23D84A2BC(uint64_t a1)
{
  v2 = sub_23D8DD4D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  sub_23D8DD4C0();
  v10 = type metadata accessor for AXRFullScreenView();
  v11 = v10[23];
  (*(v3 + 16))(v7, v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5E8, &qword_23D8E0EB8);
  sub_23D8DE330();
  (*(v3 + 8))(v9, v2);
  v12 = (a1 + v10[24]);
  v13 = *v12;
  v14 = *(v12 + 1);
  v24 = v13;
  v25 = v14;
  v23 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();
  v15 = (a1 + v10[10]);
  v16 = *v15;
  v17 = *(v15 + 1);
  v24 = v16;
  v25 = v17;
  v23 = 0;
  sub_23D8DE330();
  v18 = (a1 + v10[11]);
  v19 = *v18;
  v20 = *(v18 + 1);
  v24 = v19;
  v25 = v20;
  v23 = 1;
  return sub_23D8DE330();
}

uint64_t sub_23D84A4A8@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v500 = a3;
  v389 = type metadata accessor for AXRFullScreenView();
  v419 = *(v389 - 8);
  v5 = *(v419 + 64);
  MEMORY[0x28223BE20](v389);
  v420 = v6;
  v421 = &v388 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = sub_23D8DD8F0();
  v408 = *(v409 - 8);
  v7 = *(v408 + 64);
  MEMORY[0x28223BE20](v409);
  v405 = &v388 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v9 = *(*(v392 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v392);
  v391 = &v388 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v390 = &v388 - v12;
  v393 = type metadata accessor for AXRTextFormatterSheet(0);
  v13 = *(*(v393 - 8) + 64);
  MEMORY[0x28223BE20](v393);
  v395 = (&v388 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDAD8, &qword_23D8E1400);
  v15 = *(*(v394 - 8) + 64);
  MEMORY[0x28223BE20](v394);
  v396 = &v388 - v16;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDAC0, &qword_23D8E13F8);
  v17 = *(*(v399 - 8) + 64);
  MEMORY[0x28223BE20](v399);
  v397 = &v388 - v18;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDAB8, &qword_23D8E13F0);
  v400 = *(v401 - 8);
  v19 = *(v400 + 64);
  MEMORY[0x28223BE20](v401);
  v398 = &v388 - v20;
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDAA8, &qword_23D8E13E0);
  v404 = *(v407 - 8);
  v21 = *(v404 + 64);
  MEMORY[0x28223BE20](v407);
  v402 = &v388 - v22;
  v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDAA0, &qword_23D8E13D8);
  v406 = *(v410 - 8);
  v23 = *(v406 + 64);
  MEMORY[0x28223BE20](v410);
  v403 = &v388 - v24;
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA98, &qword_23D8E13D0);
  v414 = *(v415 - 8);
  v25 = *(v414 + 64);
  MEMORY[0x28223BE20](v415);
  v411 = &v388 - v26;
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB38, &qword_23D8E1430);
  v416 = *(v417 - 8);
  v27 = *(v416 + 64);
  MEMORY[0x28223BE20](v417);
  v413 = &v388 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA90, &qword_23D8E13C8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v412 = &v388 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v418 = &v388 - v33;
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB40, &qword_23D8E1438);
  v34 = *(*(v431 - 8) + 64);
  MEMORY[0x28223BE20](v431);
  v434 = &v388 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA70, &qword_23D8E13B0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v388 - v38;
  v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA80, &qword_23D8E13C0);
  v425 = *(v430 - 8);
  v40 = *(v425 + 64);
  MEMORY[0x28223BE20](v430);
  v424 = &v388 - v41;
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA78, &qword_23D8E13B8);
  v427 = *(v432 - 8);
  v42 = *(v427 + 64);
  MEMORY[0x28223BE20](v432);
  v426 = &v388 - v43;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB48, &qword_23D8E1440);
  v429 = *(v433 - 8);
  v44 = *(v429 + 64);
  MEMORY[0x28223BE20](v433);
  v428 = &v388 - v45;
  v442 = type metadata accessor for AXRHyperlinkColorSelectionView();
  v46 = *(*(v442 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v442);
  v422 = (&v388 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v47);
  v435 = (&v388 - v49);
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA50, &qword_23D8E13A8);
  v50 = *(*(v462 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v462);
  v423 = &v388 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v436 = &v388 - v53;
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA48, &qword_23D8E13A0);
  v438 = *(v456 - 8);
  v54 = *(v438 + 64);
  MEMORY[0x28223BE20](v456);
  v437 = &v388 - v55;
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA40, &qword_23D8E1398);
  v440 = *(v459 - 8);
  v56 = *(v440 + 64);
  MEMORY[0x28223BE20](v459);
  v439 = &v388 - v57;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB50, &qword_23D8E1448);
  v441 = *(v461 - 8);
  v58 = *(v441 + 64);
  MEMORY[0x28223BE20](v461);
  v443 = &v388 - v59;
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB58, &qword_23D8E1450);
  v60 = *(*(v455 - 8) + 64);
  MEMORY[0x28223BE20](v455);
  v458 = &v388 - v61;
  v492 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA10, &qword_23D8E1378);
  v62 = *(*(v492 - 1) + 64);
  MEMORY[0x28223BE20](v492);
  v460 = &v388 - v63;
  v444 = type metadata accessor for AXRHighlightColorSelectionView();
  v64 = *(*(v444 - 8) + 64);
  MEMORY[0x28223BE20](v444);
  v445 = (&v388 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA28, &qword_23D8E1390);
  v66 = *(*(v452 - 8) + 64);
  MEMORY[0x28223BE20](v452);
  v446 = &v388 - v67;
  v453 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA20, &qword_23D8E1388);
  v448 = *(v453 - 8);
  v68 = *(v448 + 64);
  MEMORY[0x28223BE20](v453);
  v447 = &v388 - v69;
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDA18, &qword_23D8E1380);
  v450 = *(v454 - 8);
  v70 = *(v450 + 64);
  MEMORY[0x28223BE20](v454);
  v449 = &v388 - v71;
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB60, &qword_23D8E1458);
  v451 = *(v457 - 8);
  v72 = *(v451 + 64);
  MEMORY[0x28223BE20](v457);
  v463 = &v388 - v73;
  v464 = type metadata accessor for AXRBackgroundColorSelectionView();
  v74 = *(*(v464 - 8) + 64);
  MEMORY[0x28223BE20](v464);
  v465 = (&v388 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9F0, &qword_23D8E1370);
  v76 = *(*(v482 - 8) + 64);
  MEMORY[0x28223BE20](v482);
  v466 = &v388 - v77;
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9E8, &qword_23D8E1368);
  v468 = *(v483 - 8);
  v78 = *(v468 + 64);
  MEMORY[0x28223BE20](v483);
  v467 = &v388 - v79;
  v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9E0, &qword_23D8E1360);
  v470 = *(v486 - 8);
  v80 = *(v470 + 64);
  MEMORY[0x28223BE20](v486);
  v469 = &v388 - v81;
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB68, &qword_23D8E1460);
  v471 = *(v487 - 8);
  v82 = *(v471 + 64);
  MEMORY[0x28223BE20](v487);
  v472 = &v388 - v83;
  v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB70, &qword_23D8E1468);
  v84 = *(*(v497 - 8) + 64);
  MEMORY[0x28223BE20](v497);
  v498 = &v388 - v85;
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB78, &qword_23D8E1470);
  v86 = *(*(v488 - 8) + 64);
  MEMORY[0x28223BE20](v488);
  v490 = &v388 - v87;
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB80, &qword_23D8E1478);
  v88 = *(*(v480 - 8) + 64);
  MEMORY[0x28223BE20](v480);
  v484 = &v388 - v89;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9A0, &qword_23D8E1330);
  v90 = *(*(v489 - 8) + 64);
  MEMORY[0x28223BE20](v489);
  v485 = &v388 - v91;
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED990, &qword_23D8E1328);
  v92 = *(*(v496 - 8) + 64);
  MEMORY[0x28223BE20](v496);
  v491 = &v388 - v93;
  v94 = sub_23D8DD950();
  v494 = *(v94 - 8);
  v495 = v94;
  v95 = *(v494 + 64);
  MEMORY[0x28223BE20](v94);
  v493 = &v388 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for AXRTextColorSelectionView();
  v98 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v100 = (&v388 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9B8, &qword_23D8E1348);
  v101 = *(*(v477 - 8) + 64);
  MEMORY[0x28223BE20](v477);
  v103 = &v388 - v102;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9B0, &qword_23D8E1340);
  v104 = *(v478 - 8);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v478);
  v107 = &v388 - v106;
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9A8, &qword_23D8E1338);
  v475 = *(v479 - 8);
  v108 = *(v475 + 64);
  MEMORY[0x28223BE20](v479);
  v474 = &v388 - v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB88, &qword_23D8E1480);
  v111 = *(*(v110 - 8) + 64);
  v112 = MEMORY[0x28223BE20](v110);
  v113 = *a1;
  v499 = v36;
  v481 = v112;
  v476 = v114;
  v501 = &v388 - v115;
  v473 = v104;
  if (v113 <= 1)
  {
    if (v113)
    {

LABEL_9:
      *v100 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
      swift_storeEnumTagMultiPayload();
      v118 = *(v97 + 20);
      *(v100 + v118) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
      swift_storeEnumTagMultiPayload();
      v119 = (v100 + *(v97 + 24));
      sub_23D8DC9F0();
      sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
      *v119 = sub_23D8DD140();
      v119[1] = v120;
      v121 = *(a2 + 2);
      if (v121)
      {
        v122 = *(a2 + 2);

        v123 = sub_23D8DCB10();
        v124 = sub_23D855DF8(v100, v103, type metadata accessor for AXRTextColorSelectionView);
        v125 = v477;
        v126 = &v103[*(v477 + 36)];
        *v126 = v123;
        v126[1] = v121;
        MEMORY[0x28223BE20](v124);
        *(&v388 - 2) = a2;
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9C0, &unk_23D8E1350);
        v128 = sub_23D8536BC();
        v129 = type metadata accessor for AXRColorSelectionToolbar();
        v130 = sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar);
        *&v502 = v129;
        *(&v502 + 1) = v130;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v472 = v127;
        sub_23D8DE040();
        sub_23D83C6E4(v103, &qword_27E2ED9B8, &qword_23D8E1348);
        *&v502 = v125;
        *(&v502 + 1) = v127;
        v503 = v128;
        v504 = OpaqueTypeConformance2;
        v477 = MEMORY[0x277CDEEF8];
        v132 = swift_getOpaqueTypeConformance2();
        v133 = v474;
        v134 = v478;
        sub_23D8DDEF0();
        (*(v473 + 8))(v107, v134);
        v505 = sub_23D8DE230();
        v135 = v493;
        sub_23D8DD940();
        *&v502 = v134;
        *(&v502 + 1) = v132;
        v136 = swift_getOpaqueTypeConformance2();
        v137 = v501;
        v138 = v479;
        sub_23D8DDE60();
        (*(v494 + 8))(v135, v495);

        (*(v475 + 8))(v133, v138);
        v139 = v476;
        v140 = v481;
        (*(v476 + 16))(v484, v137, v481);
        swift_storeEnumTagMultiPayload();
        *&v502 = v138;
        v141 = MEMORY[0x277CE0F78];
        *(&v502 + 1) = MEMORY[0x277CE0F78];
        v503 = v136;
        v142 = MEMORY[0x277CE0F60];
        v504 = MEMORY[0x277CE0F60];
        swift_getOpaqueTypeConformance2();
        v143 = sub_23D8537A4();
        *&v502 = v482;
        *(&v502 + 1) = v472;
        v503 = v143;
        v504 = OpaqueTypeConformance2;
        v144 = swift_getOpaqueTypeConformance2();
        *&v502 = v483;
        *(&v502 + 1) = v144;
        v145 = swift_getOpaqueTypeConformance2();
        *&v502 = v486;
        *(&v502 + 1) = v141;
        v503 = v145;
        v504 = v142;
        swift_getOpaqueTypeConformance2();
        v146 = v485;
        sub_23D8DD6B0();
        sub_23D83C67C(v146, v490, &qword_27E2ED9A0, &qword_23D8E1330);
        swift_storeEnumTagMultiPayload();
        sub_23D85341C();
        sub_23D85388C();
        v147 = v491;
        sub_23D8DD6B0();
        sub_23D83C6E4(v146, &qword_27E2ED9A0, &qword_23D8E1330);
        sub_23D83C67C(v147, v498, &qword_27E2ED990, &qword_23D8E1328);
        swift_storeEnumTagMultiPayload();
        sub_23D853390();
        sub_23D853CFC();
        sub_23D8DD6B0();
        sub_23D83C6E4(v147, &qword_27E2ED990, &qword_23D8E1328);
        return (*(v139 + 8))(v501, v140);
      }

LABEL_49:
      v384 = *(a2 + 3);
      sub_23D8DD120();
      __break(1u);
LABEL_50:
      v385 = *(a2 + 3);
      sub_23D8DD120();
      __break(1u);
      goto LABEL_51;
    }

    v388 = v29;
    v116 = a2;
  }

  else
  {
    v388 = v29;
    v116 = a2;
  }

  v117 = sub_23D8DED20();

  a2 = v116;
  if (v117)
  {
    goto LABEL_9;
  }

  v501 = v39;
  v39 = 0xD000000000000013;
  if (v113 == 2)
  {

    goto LABEL_13;
  }

  v149 = sub_23D8DED20();

  if (v149)
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    v151 = v465;
    *v465 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    v152 = v464;
    v153 = *(v464 + 20);
    *(v151 + v153) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    v154 = (v151 + *(v152 + 24));
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    *v154 = sub_23D8DD140();
    v154[1] = v155;
    v156 = *(v116 + 2);
    if (v156)
    {
      v157 = *(v116 + 2);

      v158 = sub_23D8DCB10();
      v159 = v466;
      v160 = sub_23D855DF8(v151, v466, type metadata accessor for AXRBackgroundColorSelectionView);
      v161 = v482;
      v162 = (v159 + *(v482 + 36));
      *v162 = v158;
      v162[1] = v156;
      MEMORY[0x28223BE20](v160);
      *(&v388 - 2) = a2;
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9C0, &unk_23D8E1350);
      v164 = sub_23D8537A4();
      v165 = type metadata accessor for AXRColorSelectionToolbar();
      v166 = sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar);
      *&v502 = v165;
      *(&v502 + 1) = v166;
      v167 = swift_getOpaqueTypeConformance2();
      v168 = v467;
      v501 = v163;
      sub_23D8DE040();
      sub_23D83C6E4(v159, &qword_27E2ED9F0, &qword_23D8E1370);
      *&v502 = v161;
      *(&v502 + 1) = v163;
      v503 = v164;
      v504 = v167;
      v169 = swift_getOpaqueTypeConformance2();
      v170 = v469;
      v171 = v483;
      sub_23D8DDEF0();
      (*(v468 + 8))(v168, v171);
      v505 = sub_23D8DE230();
      v172 = v493;
      sub_23D8DD940();
      *&v502 = v171;
      *(&v502 + 1) = v169;
      v173 = swift_getOpaqueTypeConformance2();
      v174 = v472;
      v175 = v486;
      sub_23D8DDE60();
      (*(v494 + 8))(v172, v495);

      (*(v470 + 8))(v170, v175);
      v176 = v471;
      v177 = v487;
      (*(v471 + 16))(v484, v174, v487);
      swift_storeEnumTagMultiPayload();
      v178 = sub_23D8536BC();
      *&v502 = v477;
      *(&v502 + 1) = v501;
      v503 = v178;
      v504 = v167;
      v179 = swift_getOpaqueTypeConformance2();
      *&v502 = v478;
      *(&v502 + 1) = v179;
      v180 = swift_getOpaqueTypeConformance2();
      *&v502 = v479;
      v181 = MEMORY[0x277CE0F78];
      *(&v502 + 1) = MEMORY[0x277CE0F78];
      v503 = v180;
      v182 = MEMORY[0x277CE0F60];
      v504 = MEMORY[0x277CE0F60];
      swift_getOpaqueTypeConformance2();
      *&v502 = v175;
      *(&v502 + 1) = v181;
      v503 = v173;
      v504 = v182;
      swift_getOpaqueTypeConformance2();
      v183 = v485;
      sub_23D8DD6B0();
      sub_23D83C67C(v183, v490, &qword_27E2ED9A0, &qword_23D8E1330);
      swift_storeEnumTagMultiPayload();
      sub_23D85341C();
      sub_23D85388C();
      v184 = v491;
      sub_23D8DD6B0();
      sub_23D83C6E4(v183, &qword_27E2ED9A0, &qword_23D8E1330);
      sub_23D83C67C(v184, v498, &qword_27E2ED990, &qword_23D8E1328);
      swift_storeEnumTagMultiPayload();
      sub_23D853390();
      sub_23D853CFC();
      sub_23D8DD6B0();
      sub_23D83C6E4(v184, &qword_27E2ED990, &qword_23D8E1328);
      v185 = *(v176 + 8);
      v186 = &v503;
      return v185(*(v186 - 32), v177);
    }

    goto LABEL_50;
  }

  if (v113 > 1)
  {
    v187 = "themeBackgroundColor";
    if (v113 != 3)
    {
      v187 = "themeHighlightColor";
    }

    if (0x800000023D8E5E40 == (v187 | 0x8000000000000000))
    {

      goto LABEL_21;
    }
  }

  v188 = sub_23D8DED20();

  if (v188)
  {
LABEL_21:
    v189 = swift_getKeyPath();
    v190 = v445;
    *v445 = v189;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    v191 = swift_getKeyPath();
    v192 = v444;
    *(v190 + *(v444 + 20)) = v191;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    v193 = sub_23D8DD140();
    v194 = (v190 + *(v192 + 24));
    *v194 = v193;
    v194[1] = v195;
    *(v190 + *(v192 + 28)) = 2;
    v196 = *(v116 + 2);
    if (v196)
    {
      v197 = *(v116 + 2);

      v198 = sub_23D8DCB10();
      v199 = v446;
      v200 = sub_23D855DF8(v190, v446, type metadata accessor for AXRHighlightColorSelectionView);
      v201 = v452;
      v202 = (v199 + *(v452 + 36));
      *v202 = v198;
      v202[1] = v196;
      MEMORY[0x28223BE20](v200);
      *(&v388 - 2) = a2;
      v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9C0, &unk_23D8E1350);
      v204 = sub_23D853B2C();
      v205 = type metadata accessor for AXRColorSelectionToolbar();
      v206 = sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar);
      *&v502 = v205;
      *(&v502 + 1) = v206;
      v207 = swift_getOpaqueTypeConformance2();
      v208 = v447;
      v501 = v203;
      sub_23D8DE040();
      sub_23D83C6E4(v199, &qword_27E2EDA28, &qword_23D8E1390);
      *&v502 = v201;
      *(&v502 + 1) = v203;
      v503 = v204;
      v504 = v207;
      v487 = MEMORY[0x277CDEEF8];
      v209 = swift_getOpaqueTypeConformance2();
      v210 = v449;
      v211 = v453;
      sub_23D8DDEF0();
      (*(v448 + 8))(v208, v211);
      v505 = sub_23D8DE230();
      v212 = v493;
      sub_23D8DD940();
      *&v502 = v211;
      *(&v502 + 1) = v209;
      v213 = swift_getOpaqueTypeConformance2();
      v214 = MEMORY[0x277CE0F78];
      v215 = v463;
      v216 = v454;
      sub_23D8DDE60();
      (*(v494 + 8))(v212, v495);

      (*(v450 + 8))(v210, v216);
      v217 = v451;
      v218 = v215;
      v219 = v457;
      (*(v451 + 16))(v458, v218, v457);
      swift_storeEnumTagMultiPayload();
      *&v502 = v216;
      *(&v502 + 1) = v214;
      v503 = v213;
      v220 = MEMORY[0x277CE0F60];
      v504 = MEMORY[0x277CE0F60];
      swift_getOpaqueTypeConformance2();
      v221 = sub_23D853C14();
      *&v502 = v462;
      *(&v502 + 1) = v501;
      v503 = v221;
      v504 = v207;
      v222 = swift_getOpaqueTypeConformance2();
      *&v502 = v456;
      *(&v502 + 1) = v222;
      v223 = swift_getOpaqueTypeConformance2();
      *&v502 = v459;
      *(&v502 + 1) = v214;
      v503 = v223;
      v504 = v220;
      swift_getOpaqueTypeConformance2();
      v224 = v460;
      v177 = v219;
      sub_23D8DD6B0();
      sub_23D83C67C(v224, v490, &qword_27E2EDA10, &qword_23D8E1378);
      swift_storeEnumTagMultiPayload();
      sub_23D85341C();
      sub_23D85388C();
      v225 = v491;
      sub_23D8DD6B0();
      sub_23D83C6E4(v224, &qword_27E2EDA10, &qword_23D8E1378);
      sub_23D83C67C(v225, v498, &qword_27E2ED990, &qword_23D8E1328);
      swift_storeEnumTagMultiPayload();
      sub_23D853390();
      sub_23D853CFC();
      sub_23D8DD6B0();
      sub_23D83C6E4(v225, &qword_27E2ED990, &qword_23D8E1328);
      v185 = *(v217 + 8);
      v186 = &v495;
      return v185(*(v186 - 32), v177);
    }

    goto LABEL_49;
  }

  if (v113 > 1)
  {
    v226 = v113 == 4 ? 0x800000023D8E5E60 : 0x800000023D8E5E40;
    if (0x800000023D8E5E60 == v226)
    {

      goto LABEL_31;
    }
  }

  v227 = sub_23D8DED20();

  if (v227)
  {
LABEL_31:
    v228 = swift_getKeyPath();
    v229 = v435;
    *v435 = v228;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    v230 = swift_getKeyPath();
    v231 = v442;
    *(v229 + *(v442 + 20)) = v230;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    v232 = sub_23D8DD140();
    v233 = (v229 + *(v231 + 24));
    *v233 = v232;
    v233[1] = v234;
    *(v229 + *(v231 + 28)) = 2;
    v235 = *(v116 + 2);
    if (v235)
    {
      v236 = *(v116 + 2);

      v237 = sub_23D8DCB10();
      v238 = v436;
      v239 = sub_23D855DF8(v229, v436, type metadata accessor for AXRHyperlinkColorSelectionView);
      v240 = v462;
      v241 = (v238 + *(v462 + 36));
      *v241 = v237;
      v241[1] = v235;
      MEMORY[0x28223BE20](v239);
      *(&v388 - 2) = a2;
      v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED9C0, &unk_23D8E1350);
      v243 = sub_23D853C14();
      v244 = type metadata accessor for AXRColorSelectionToolbar();
      v245 = sub_23D856D84(&qword_27E2ED9D8, type metadata accessor for AXRColorSelectionToolbar);
      *&v502 = v244;
      *(&v502 + 1) = v245;
      v246 = swift_getOpaqueTypeConformance2();
      v247 = v437;
      v501 = v242;
      sub_23D8DE040();
      sub_23D83C6E4(v238, &qword_27E2EDA50, &qword_23D8E13A8);
      *&v502 = v240;
      *(&v502 + 1) = v242;
      v503 = v243;
      v504 = v246;
      v248 = swift_getOpaqueTypeConformance2();
      v249 = v439;
      v250 = v456;
      sub_23D8DDEF0();
      (*(v438 + 8))(v247, v250);
      v505 = sub_23D8DE230();
      v251 = v493;
      sub_23D8DD940();
      *&v502 = v250;
      *(&v502 + 1) = v248;
      v252 = swift_getOpaqueTypeConformance2();
      v253 = v443;
      v254 = v459;
      sub_23D8DDE60();
      (*(v494 + 8))(v251, v495);

      (*(v440 + 8))(v249, v254);
      v255 = v441;
      v177 = v461;
      (*(v441 + 16))(v458, v253, v461);
      swift_storeEnumTagMultiPayload();
      v256 = sub_23D853B2C();
      *&v502 = v452;
      *(&v502 + 1) = v501;
      v503 = v256;
      v504 = v246;
      v257 = swift_getOpaqueTypeConformance2();
      *&v502 = v453;
      *(&v502 + 1) = v257;
      v258 = swift_getOpaqueTypeConformance2();
      *&v502 = v454;
      v259 = MEMORY[0x277CE0F78];
      *(&v502 + 1) = MEMORY[0x277CE0F78];
      v503 = v258;
      v260 = MEMORY[0x277CE0F60];
      v504 = MEMORY[0x277CE0F60];
      swift_getOpaqueTypeConformance2();
      *&v502 = v254;
      *(&v502 + 1) = v259;
      v503 = v252;
      v504 = v260;
      swift_getOpaqueTypeConformance2();
      v261 = v460;
      sub_23D8DD6B0();
      sub_23D83C67C(v261, v490, &qword_27E2EDA10, &qword_23D8E1378);
      swift_storeEnumTagMultiPayload();
      sub_23D85341C();
      sub_23D85388C();
      v262 = v491;
      sub_23D8DD6B0();
      sub_23D83C6E4(v261, &qword_27E2EDA10, &qword_23D8E1378);
      sub_23D83C67C(v262, v498, &qword_27E2ED990, &qword_23D8E1328);
      swift_storeEnumTagMultiPayload();
      sub_23D853390();
      sub_23D853CFC();
      sub_23D8DD6B0();
      sub_23D83C6E4(v262, &qword_27E2ED990, &qword_23D8E1328);
      v185 = *(v255 + 8);
      v186 = &v475;
      return v185(*(v186 - 32), v177);
    }

    goto LABEL_49;
  }

  if (v113 > 1)
  {
    v263 = 0x800000023D8E5E40;
    if (v113 != 3)
    {
      v263 = 0x800000023D8E5E60;
    }

    if (0x800000023D8E5E60 == v263)
    {

      goto LABEL_40;
    }
  }

  v264 = sub_23D8DED20();

  if (v264)
  {
LABEL_40:
    v265 = swift_getKeyPath();
    v266 = v422;
    *v422 = v265;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    v267 = swift_getKeyPath();
    v268 = v442;
    *(v266 + *(v442 + 20)) = v267;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    sub_23D8DC9F0();
    sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    v269 = sub_23D8DD140();
    v270 = (v266 + *(v268 + 24));
    *v270 = v269;
    v270[1] = v271;
    *(v266 + *(v268 + 28)) = 2;
    v272 = *(v116 + 2);
    if (v272)
    {
      v273 = *(v116 + 2);

      v274 = sub_23D8DCB10();
      v275 = v423;
      v276 = sub_23D855DF8(v266, v423, type metadata accessor for AXRHyperlinkColorSelectionView);
      v492 = &v388;
      v277 = v462;
      v278 = (v275 + *(v462 + 36));
      *v278 = v274;
      v278[1] = v272;
      MEMORY[0x28223BE20](v276);
      *(&v388 - 2) = v116;
      v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED950, &qword_23D8E1308);
      v280 = sub_23D853C14();
      v281 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED968, &qword_23D8E1318);
      v282 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED970, &qword_23D8E1320);
      v283 = sub_23D835AD0(&qword_27E2ED978, &qword_27E2ED970, &qword_23D8E1320);
      *&v502 = v282;
      *(&v502 + 1) = v283;
      v284 = swift_getOpaqueTypeConformance2();
      *&v502 = v281;
      *(&v502 + 1) = v284;
      v285 = swift_getOpaqueTypeConformance2();
      v286 = v424;
      sub_23D8DE040();
      sub_23D83C6E4(v275, &qword_27E2EDA50, &qword_23D8E13A8);
      *&v502 = v277;
      *(&v502 + 1) = v279;
      v503 = v280;
      v504 = v285;
      v287 = swift_getOpaqueTypeConformance2();
      v288 = v426;
      v289 = v430;
      sub_23D8DDEF0();
      (*(v425 + 8))(v286, v289);
      v505 = sub_23D8DE230();
      v290 = v493;
      sub_23D8DD940();
      *&v502 = v289;
      *(&v502 + 1) = v287;
      v291 = swift_getOpaqueTypeConformance2();
      v292 = MEMORY[0x277CE0F78];
      v293 = MEMORY[0x277CE0F60];
      v294 = v428;
      v295 = v432;
      sub_23D8DDE60();
      (*(v494 + 8))(v290, v495);

      (*(v427 + 8))(v288, v295);
      v296 = v429;
      v297 = v433;
      (*(v429 + 16))(v434, v294, v433);
      swift_storeEnumTagMultiPayload();
      *&v502 = v295;
      *(&v502 + 1) = v292;
      v503 = v291;
      v504 = v293;
      swift_getOpaqueTypeConformance2();
      sub_23D853F2C();
      v298 = v501;
      sub_23D8DD6B0();
      sub_23D83C67C(v298, v498, &qword_27E2EDA70, &qword_23D8E13B0);
      swift_storeEnumTagMultiPayload();
      sub_23D853390();
      sub_23D853CFC();
      sub_23D8DD6B0();
      sub_23D83C6E4(v298, &qword_27E2EDA70, &qword_23D8E13B0);
      return (*(v296 + 8))(v294, v297);
    }

    goto LABEL_49;
  }

  v299 = *(v116 + 4);
  v300 = *(v116 + 5);
  v301 = v116[48];
  v491 = sub_23D8DC900();
  v490 = sub_23D856D84(&qword_27E2ED250, MEMORY[0x277CE73E8]);
  v489 = sub_23D8DCD40();
  v302 = v389;
  v303 = *(v389 + 68);
  v304 = v393;
  v305 = *(v393 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED210, &qword_23D8E08B8);
  v306 = v395;
  sub_23D8DE340();
  v307 = &v116[*(v302 + 32)];
  v309 = v307[1];
  v488 = *v307;
  v308 = v488;
  v487 = v309;
  *v306 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  swift_storeEnumTagMultiPayload();
  *(v306 + v304[5]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  swift_storeEnumTagMultiPayload();
  *(v306 + v304[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  swift_storeEnumTagMultiPayload();
  sub_23D83BCC8(v308);
  sub_23D8DC9F0();
  v492 = sub_23D856D84(&qword_27E2ED238, MEMORY[0x277CE73F8]);
  v310 = sub_23D8DD140();
  v486 = v311;
  *(v306 + v304[20]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED370, &qword_23D8E0AD0);
  swift_storeEnumTagMultiPayload();
  v312 = v304[7];
  v313 = sub_23D8DD850();
  v314 = v390;
  (*(*(v313 - 8) + 56))(v390, 1, 1, v313);
  sub_23D83C67C(v314, v391, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D8DE310();
  sub_23D83C6E4(v314, &qword_27E2EE9E0, &qword_23D8E26D0);
  v315 = v306 + v304[8];
  LOBYTE(v505) = 0;
  sub_23D8DE310();
  v316 = *(&v502 + 1);
  *v315 = v502;
  *(v315 + 1) = v316;
  v317 = v304[9];
  v505 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB90, &qword_23D8E52F0);
  sub_23D8DE310();
  *(v306 + v317) = v502;
  v318 = v304[10];
  v505 = 0;
  sub_23D8DE310();
  *(v306 + v318) = v502;
  v319 = (v306 + v304[11]);
  v39 = a2;
  sub_23D8DC430();
  sub_23D856D84(&unk_27E2F0420, MEMORY[0x277CE7230]);
  *v319 = sub_23D8DD140();
  v319[1] = v320;
  v321 = (v306 + v304[12]);
  v322 = v486;
  *v321 = v310;
  v321[1] = v322;
  v323 = (v306 + v304[13]);
  *v323 = sub_23D8DCEF0();
  v323[1] = v324;
  v325 = v306 + v304[15];
  LOBYTE(v505) = 0;
  sub_23D8DE310();
  v326 = *(&v502 + 1);
  *v325 = v502;
  *(v325 + 1) = v326;
  v327 = v306 + v304[16];
  v505 = 0;
  v506 = 0xE000000000000000;
  sub_23D8DE310();
  v328 = v503;
  *v327 = v502;
  *(v327 + 2) = v328;
  v329 = v306 + v304[17];
  *v329 = sub_23D8DCC50() & 1;
  *(v329 + 1) = v330;
  v329[16] = v331 & 1;
  *(v306 + v304[18]) = 25;
  v332 = (v306 + v304[19]);
  v333 = v487;
  *v332 = v488;
  v332[1] = v333;
  *(v306 + v304[21]) = 0x4036000000000000;
  *(v306 + v304[22]) = 0x4074A00000000000;
  *(v306 + v304[23]) = 0x4041800000000000;
  v334 = *a2;
  if (!*a2)
  {
LABEL_51:
    v386 = *(v39 + 1);
    sub_23D8DD120();
    __break(1u);
    goto LABEL_52;
  }

  v335 = v334;
  v336 = sub_23D8DCB10();
  v337 = v396;
  sub_23D855DF8(v306, v396, type metadata accessor for AXRTextFormatterSheet);
  v338 = (v337 + *(v394 + 36));
  *v338 = v336;
  v338[1] = v334;
  v339 = *(a2 + 2);
  if (!v339)
  {
LABEL_52:
    v387 = *(v39 + 3);
    result = sub_23D8DD120();
    __break(1u);
    return result;
  }

  v340 = *(a2 + 2);

  v341 = sub_23D8DCB10();
  v342 = v397;
  sub_23D83C744(v337, v397, &qword_27E2EDAD8, &qword_23D8E1400);
  v343 = v399;
  v344 = (v342 + *(v399 + 36));
  *v344 = v341;
  v344[1] = v339;
  v345 = v405;
  sub_23D8DD8E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDB98, &qword_23D8E14F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D8E0D60;
  v347 = sub_23D8DD9C0();
  *(inited + 32) = v347;
  v348 = sub_23D8DD9A0();
  *(inited + 33) = v348;
  sub_23D8DD9B0();
  sub_23D8DD9B0();
  if (sub_23D8DD9B0() != v347)
  {
    sub_23D8DD9B0();
  }

  sub_23D8DD9B0();
  if (sub_23D8DD9B0() != v348)
  {
    sub_23D8DD9B0();
  }

  v349 = sub_23D8541A4();
  v350 = v398;
  sub_23D8DDDE0();
  (*(v408 + 8))(v345, v409);
  sub_23D83C6E4(v342, &qword_27E2EDAC0, &qword_23D8E13F8);
  *&v502 = v343;
  *(&v502 + 1) = v349;
  v351 = swift_getOpaqueTypeConformance2();
  v352 = v402;
  v353 = v401;
  sub_23D8DDF10();
  v354 = (*(v400 + 8))(v350, v353);
  MEMORY[0x28223BE20](v354);
  *(&v388 - 2) = v39;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDAB0, &qword_23D8E13E8);
  *&v502 = v353;
  *(&v502 + 1) = v351;
  v356 = swift_getOpaqueTypeConformance2();
  v357 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EDAF8, &qword_23D8E1410);
  v358 = sub_23D835AD0(&qword_27E2EDB00, &qword_27E2EDAF8, &qword_23D8E1410);
  *&v502 = v357;
  *(&v502 + 1) = v358;
  v359 = swift_getOpaqueTypeConformance2();
  v360 = v403;
  v361 = v407;
  sub_23D8DE040();
  (*(v404 + 8))(v352, v361);
  *&v502 = v361;
  *(&v502 + 1) = v355;
  v503 = v356;
  v504 = v359;
  v492 = MEMORY[0x277CDEEF8];
  v362 = swift_getOpaqueTypeConformance2();
  v363 = v411;
  v364 = v410;
  sub_23D8DDEF0();
  (*(v406 + 8))(v360, v364);
  v505 = sub_23D8DE230();
  v365 = v493;
  sub_23D8DD940();
  *&v502 = v364;
  *(&v502 + 1) = v362;
  v491 = MEMORY[0x277CDEC30];
  swift_getOpaqueTypeConformance2();
  v366 = v413;
  v367 = v415;
  sub_23D8DDE60();
  (*(v494 + 8))(v365, v495);

  (*(v414 + 8))(v363, v367);
  v368 = v421;
  sub_23D853140(v39, v421);
  v369 = (*(v419 + 80) + 16) & ~*(v419 + 80);
  v370 = swift_allocObject();
  sub_23D855DF8(v368, v370 + v369, type metadata accessor for AXRFullScreenView);
  v371 = v412;
  (*(v416 + 32))(v412, v366, v417);
  v372 = (v371 + *(v388 + 36));
  *v372 = sub_23D854728;
  v372[1] = v370;
  v372[2] = 0;
  v372[3] = 0;
  v373 = v418;
  sub_23D83C744(v371, v418, &qword_27E2EDA90, &qword_23D8E13C8);
  sub_23D83C67C(v373, v434, &qword_27E2EDA90, &qword_23D8E13C8);
  swift_storeEnumTagMultiPayload();
  v374 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED950, &qword_23D8E1308);
  v375 = sub_23D853C14();
  v376 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED968, &qword_23D8E1318);
  v377 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2ED970, &qword_23D8E1320);
  v378 = sub_23D835AD0(&qword_27E2ED978, &qword_27E2ED970, &qword_23D8E1320);
  *&v502 = v377;
  *(&v502 + 1) = v378;
  v379 = swift_getOpaqueTypeConformance2();
  *&v502 = v376;
  *(&v502 + 1) = v379;
  v380 = swift_getOpaqueTypeConformance2();
  *&v502 = v462;
  *(&v502 + 1) = v374;
  v503 = v375;
  v504 = v380;
  v381 = swift_getOpaqueTypeConformance2();
  *&v502 = v430;
  *(&v502 + 1) = v381;
  v382 = swift_getOpaqueTypeConformance2();
  *&v502 = v432;
  *(&v502 + 1) = MEMORY[0x277CE0F78];
  v503 = v382;
  v504 = MEMORY[0x277CE0F60];
  swift_getOpaqueTypeConformance2();
  sub_23D853F2C();
  v383 = v501;
  sub_23D8DD6B0();
  sub_23D83C67C(v383, v498, &qword_27E2EDA70, &qword_23D8E13B0);
  swift_storeEnumTagMultiPayload();
  sub_23D853390();
  sub_23D853CFC();
  sub_23D8DD6B0();
  sub_23D83C6E4(v383, &qword_27E2EDA70, &qword_23D8E13B0);
  return sub_23D83C6E4(v373, &qword_27E2EDA90, &qword_23D8E13C8);
}