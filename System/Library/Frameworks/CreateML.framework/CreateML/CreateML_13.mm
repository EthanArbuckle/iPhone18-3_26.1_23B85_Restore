uint64_t (*MLRandomForestClassifier.targetColumn.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLRandomForestClassifier() + 24);
  return nullsub_1;
}

uint64_t MLRandomForestClassifier.featureColumns.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLRandomForestClassifier() + 28));
}

uint64_t MLRandomForestClassifier.featureColumns.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLRandomForestClassifier() + 28);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*MLRandomForestClassifier.featureColumns.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLRandomForestClassifier() + 28);
  return nullsub_1;
}

uint64_t MLRandomForestClassifier.modelParameters.getter()
{
  OUTLINED_FUNCTION_146();
  v2 = v1 + *(type metadata accessor for MLRandomForestClassifier() + 32);

  return sub_237AE1E74(v2, v0);
}

uint64_t MLRandomForestClassifier.trainingMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLRandomForestClassifier();
  return OUTLINED_FUNCTION_24_21(*(v0 + 36));
}

uint64_t MLRandomForestClassifier.validationMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLRandomForestClassifier();
  return OUTLINED_FUNCTION_24_21(*(v0 + 40));
}

uint64_t sub_237AE1F28()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_allocate_value_buffer(v0, qword_27DE9C9E8);
  v1 = __swift_project_value_buffer(v0, qword_27DE9C9E8);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLRandomForestClassifier._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A620 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters();
  __swift_project_value_buffer(v2, qword_27DE9C9E8);
  OUTLINED_FUNCTION_3_46();
  return sub_237AE6D08(v3, a1);
}

void MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v248 = v20;
  v257 = v23;
  v249 = v24;
  v255 = v25;
  v245 = v26;
  v266 = v27;
  v29 = v28;
  v30 = type metadata accessor for AnyClassificationMetrics();
  v31 = OUTLINED_FUNCTION_20(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  v36 = OUTLINED_FUNCTION_21_3(v35);
  v37 = type metadata accessor for MLClassifierMetrics(v36);
  v38 = OUTLINED_FUNCTION_20(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v42);
  v43 = type metadata accessor for AnyTreeClassifierModel();
  v44 = OUTLINED_FUNCTION_1(v43);
  v232 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_77_0(&v222 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_77_0(&v222 - v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_21_3(&v222 - v61);
  v238 = sub_237C0602C();
  v62 = OUTLINED_FUNCTION_4(v238);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v67);
  v68 = type metadata accessor for AnyTreeClassifier();
  v69 = OUTLINED_FUNCTION_20(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v73 - v72);
  v256 = sub_237C05DBC();
  v74 = OUTLINED_FUNCTION_0(v256);
  v251 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v81);
  v246 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  v82 = OUTLINED_FUNCTION_4(v246);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v86 - v85);
  v258[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v87 = OUTLINED_FUNCTION_4(v258[0]);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v94);
  v96 = &v222 - v95;
  v253 = sub_237C071DC();
  v97 = OUTLINED_FUNCTION_0(v253);
  v252 = v98;
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v101);
  v103 = &v222 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v104);
  v106 = v105;
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v109);
  v111 = &v222 - v110;
  v112 = type metadata accessor for MLRandomForestClassifier();
  v113 = (v29 + *(v112 + 36));
  sub_237C06FAC();
  v114 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v115 = v113 + *(v114 + 20);
  sub_2379E51D0();
  v116 = v113 + *(v114 + 24);
  sub_2379E5C70();
  (*(v106 + 8))(v111, v104);
  v117 = v29;
  v118 = v257;
  *v113 = 0;
  v119 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v250 = v113;
  swift_storeEnumTagMultiPayload();
  v231 = v112;
  v120 = *(v112 + 40);
  v121 = v103;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v122 = swift_allocError();
  *v123 = 0xD0000000000000C0;
  v123[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v122, v123);
  *(v117 + v120) = v124;
  v254 = v117;
  v229 = v119;
  swift_storeEnumTagMultiPayload();
  sub_237AE1E74(v118, &v262);
  sub_237C071CC();
  sub_237C070DC();
  sub_237C0709C();
  sub_237C070FC();
  sub_237C0715C();
  sub_237C0719C();
  sub_237C0717C();
  sub_237C070BC();
  sub_237C0711C();
  sub_237C0713C();
  sub_237AE35BC(&v262);
  sub_2379E9068(v118, &v260, &qword_27DE9A998, &unk_237C0C100);
  if (v261)
  {
    OUTLINED_FUNCTION_34_10();
    v126 = *(v125 + 48);
    sub_2379DAD24(&v260, &v262);
    v127 = v247;
    swift_dynamicCast();
    v128 = v248;
    sub_237A65054(v96, &v96[v126], v266);
    if (v128)
    {
      OUTLINED_FUNCTION_72_4();
      OUTLINED_FUNCTION_35_11();

      sub_237AE35BC(v118);
      OUTLINED_FUNCTION_36_3(&a11);
      v129(v266, v256);
      v130 = OUTLINED_FUNCTION_5_39();
      v131(v130);
      OUTLINED_FUNCTION_7_31();
      sub_237AE7174();
      sub_237AE7174();
      sub_237AE7174();
    }

    else
    {
      OUTLINED_FUNCTION_7_31();
      sub_237AE7174();
      v132 = v255;
      sub_237B19700(v96, v245, v255, v249);
      v248 = v133;
      v246 = v120;

      v249 = v96;
      OUTLINED_FUNCTION_48_9(&v264);
      sub_2379E9068(v134, v135, v136, v137);
      OUTLINED_FUNCTION_34_10();
      v139 = *(v138 + 48);
      v140 = v256;
      if (__swift_getEnumTagSinglePayload(v127 + v139, 1, v256) == 1)
      {
        sub_2379D9054(v127 + v139, &qword_27DE9A9A0, &qword_237C0BF60);
        v141 = *(v251 + 8);
        v142 = (v251 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v141(v127, v140);
      }

      else
      {
        OUTLINED_FUNCTION_58_7(&a11);
        v158 = v127 + v139;
        v159 = v127;
        v127 = v236;
        (*(v157 + 32))(v236, v158, v140);
        v247 = *(v96 + 1);
        v247(v159, v140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_237C0B660;
        *(inited + 32) = v245;
        *(inited + 40) = v132;

        sub_2379F2DA4();
        v242 = (v96 + 8);
        swift_setDeallocating();
        sub_237B9082C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
        v172 = swift_allocObject();
        *(v172 + 16) = xmmword_237C0B670;
        v173 = MEMORY[0x277D83B88];
        *(v172 + 32) = MEMORY[0x277D837D0];
        *(v172 + 40) = v173;
        sub_2379F30EC();
        v142 = v242 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v140 = v256;
        v141 = v247;
        v247(v127, v256);
      }

      v143 = v249;
      OUTLINED_FUNCTION_48_9(&v265);
      sub_2379E9068(v144, v145, v146, v147);
      sub_237C05DFC();
      v141(v127, v140);
      v148 = v143;
      v149 = v240;
      sub_2379E9068(v148, v240, &qword_27DE9ADC0, &unk_237C0BF40);
      OUTLINED_FUNCTION_34_10();
      v151 = v149 + *(v150 + 48);
      OUTLINED_FUNCTION_48_9(&v262);
      sub_237AE7128(v152, v153, v154, v155);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v127, 1, v140);
      v247 = v141;
      v242 = v142;
      if (EnumTagSinglePayload == 1)
      {
        v141(v149, v140);
        sub_2379D9054(v127, &qword_27DE9A9A0, &qword_237C0BF60);
        v149 = v239;
        __swift_storeEnumTagSinglePayload(v239, 1, 1, v238);
      }

      else
      {
        OUTLINED_FUNCTION_58_7(&v263);
        sub_237C05DFC();
        v141(v127, v140);
        __swift_storeEnumTagSinglePayload(v149, 0, 1, v238);
        v141(v240, v140);
      }

      v161 = v252;
      OUTLINED_FUNCTION_34_10();
      v240 = *(v162 + 48);
      v163 = v237;
      (*(v161 + 16))(v237, v121, v253);

      v164 = v248;

      v165 = sub_237AB7E28(v243, v149, v245, v132, v164, v163, v241);
      OUTLINED_FUNCTION_52_9(v165, &qword_27DE9A9A0, &qword_237C0BF60);
      OUTLINED_FUNCTION_71();
      v166 = v241;
      sub_237AB87DC(v167, v168, v169, v170, v171);
      v244 = v121;
      if ((sub_237A37A64() & 1) == 0)
      {
        OUTLINED_FUNCTION_35_11();
        OUTLINED_FUNCTION_48_9(&v259);
        sub_2379E9068(v174, v175, v176, v177);
        OUTLINED_FUNCTION_34_10();
        v179 = *(v178 + 48);
        sub_237C05D3C();
        OUTLINED_FUNCTION_15_24();
        v180();
        sub_237A37AEC(1);
        sub_2379D9054(v166 + v179, &qword_27DE9A9A0, &qword_237C0BF60);
        v181 = *(v241[3] + 16);
        sub_237A37AEC(1);
      }

      v182 = v231;
      v183 = v254;
      v184 = (v254 + v231[6]);
      v185 = v255;
      *v184 = v245;
      v184[1] = v185;
      v186 = v182[8];
      sub_237AE1E74(v257, v183 + v186);
      *(v183 + v182[7]) = v248;
      OUTLINED_FUNCTION_2_51();
      v187 = v235;
      v188 = v234;
      sub_237AE6D08(v235, v234);
      v189 = (*(v232 + 80) + 16) & ~*(v232 + 80);
      swift_allocObject();
      OUTLINED_FUNCTION_20_19();
      sub_237AE71C8(v188, v190 + v189);
      sub_2379DD56C();
      v192 = v191;
      v245 = v186;

      v193 = v254;
      *(v254 + v182[5]) = v192;
      OUTLINED_FUNCTION_2_51();
      sub_237AE6D08(v187, v193);
      v194 = v230;
      v195 = v249;
      OUTLINED_FUNCTION_11();
      sub_237A5DEEC(v196);
      v198 = *v254;
      v197 = v254[1];
      sub_237C05DFC();
      OUTLINED_FUNCTION_58_7(v258);
      v243 = v198;
      v240 = v197;
      sub_237C05DFC();
      v199 = v228;
      sub_237B0CBBC();
      v200 = v256;
      v247(v194, v256);
      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_48_9(&v255);
      sub_237AE71C8(v201, v202);
      swift_storeEnumTagMultiPayload();
      sub_2379DC1F8(v199, v250);
      v203 = v227;
      sub_2379E9068(v195, v227, &qword_27DE9ADC0, &unk_237C0BF40);
      OUTLINED_FUNCTION_34_10();
      v205 = *(v204 + 48);
      if (__swift_getEnumTagSinglePayload(v203 + v205, 1, v200) == 1)
      {
        sub_237AE35BC(v257);
        v206 = OUTLINED_FUNCTION_61_6();
        v207 = v247;
        (v247)(v206);
        OUTLINED_FUNCTION_1_50();
        sub_237AE7174();
        sub_2379D9054(v195, &qword_27DE9ADC0, &unk_237C0BF40);
        v208 = OUTLINED_FUNCTION_5_39();
        v209(v208);
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_74_3();
        sub_2379D9054(v203 + v205, &qword_27DE9A9A0, &qword_237C0BF60);
        v207(v203, v200);
      }

      else
      {
        (*(v251 + 32))(v225, v203 + v205, v200);
        v210 = v203;
        v211 = v247;
        v247(v210, v200);
        OUTLINED_FUNCTION_11();
        sub_237A5DEEC(v212);
        sub_237C05DFC();
        OUTLINED_FUNCTION_58_7(v258);
        v213 = v225;
        sub_237C05DFC();
        v214 = v224;
        sub_237B0CBBC();
        v211(v226, v200);
        OUTLINED_FUNCTION_55_6();
        v215 = OUTLINED_FUNCTION_61_6();
        (v211)(v215);
        v211(v213, v200);
        OUTLINED_FUNCTION_1_50();
        sub_237AE7174();
        v216 = OUTLINED_FUNCTION_35_11();
        sub_2379D9054(v216, v217, v218);
        v219 = OUTLINED_FUNCTION_5_39();
        v220(v219);
        OUTLINED_FUNCTION_8_30();
        v221 = v223;
        sub_237AE71C8(v214, v223);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_74_3();
        sub_2379DC1F8(v221, v254 + v246);
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237AE3610(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2379F89CC;

  return sub_237B919A4();
}

uint64_t sub_237AE36BC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v0 = type metadata accessor for AnyTreeClassifierModel();
  OUTLINED_FUNCTION_20(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_55_0(v4);

  return sub_237AE3610(v6);
}

uint64_t MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_237C05DBC();
  v11 = OUTLINED_FUNCTION_20(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  LOBYTE(v15) = *(a1 + 8);
  v22 = *a1;
  LOBYTE(v23) = v15;
  sub_237A70ED4(&v22, v16);
  sub_237AE1E74(a5, &v22);
  MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v16, a2, a3, a4, &v22, v17, v18, v19, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  return sub_237AE35BC(a5);
}

void MLRandomForestClassifier.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v99 = v0;
  v107 = v1;
  v3 = v2;
  v89 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  v4 = OUTLINED_FUNCTION_4(v89);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v8);
  v9 = sub_237C071DC();
  v104 = OUTLINED_FUNCTION_0(v9);
  v105 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_14_0();
  v96 = v13;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_138();
  v103 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  v100 = v17;
  v102 = type metadata accessor for AnyTreeClassifier();
  v18 = OUTLINED_FUNCTION_4(v102);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_0();
  v97 = v21;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v85 - v23;
  v25 = type metadata accessor for AnyTreeClassifierModel();
  v26 = OUTLINED_FUNCTION_1(v25);
  v93 = v27;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v95 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58();
  v92 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_58();
  v98 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  v94 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41);
  v43 = &v85 - v42;
  v44 = type metadata accessor for MLRandomForestClassifier();
  v45 = (v3 + *(v44 + 36));
  sub_237C06FAC();
  v46 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v47 = v45 + *(v46 + 20);
  sub_2379E51D0();
  v48 = v45 + *(v46 + 24);
  sub_2379E5C70();
  (*(v38 + 8))(v43, v36);
  *v45 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v101 = v45;
  v49 = v3;
  swift_storeEnumTagMultiPayload();
  v86 = v44;
  v50 = *(v44 + 40);
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v51 = swift_allocError();
  *v52 = 0xD0000000000000C0;
  v52[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v51, v52);
  *(v49 + v50) = v53;
  swift_storeEnumTagMultiPayload();
  switch(*(v107 + *(type metadata accessor for MLCheckpoint() + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v54 = sub_237C0929C();

      if (v54)
      {
LABEL_4:
        v90 = v50;
        v85 = v29;
        v91 = v49;
        sub_237AE1948(MEMORY[0x277D84FA0]);
        v56 = v55;
        v57 = v100;
        sub_237C071CC();
        *v24 = 0;
        *(v24 + 1) = 0xE000000000000000;
        v58 = MEMORY[0x277D84F90];
        *(v24 + 2) = MEMORY[0x277D84F90];
        v59 = v99;
        sub_237AE1458(v56);
        v61 = v60;

        v106[0] = v61;

        OUTLINED_FUNCTION_22_17();
        sub_237AE6AA4(v106, v62, v63, sub_237AE7450, sub_237AE732C);
        if (v59)
        {

          __break(1u);
          JUMPOUT(0x237AE42B0);
        }

        v64 = v105;
        *(v24 + 3) = v106[0];
        v24[32] = 0;
        *(v24 + 5) = v58;
        *(v24 + 6) = 0xD000000000000013;
        *(v24 + 7) = 0x8000000237C17BE0;
        v99 = *(v64 + 16);
        v99(v103, v57, v104);
        v65 = &v24[*(v102 + 32)];
        sub_237C06D7C();
        v66 = *(v64 + 8);
        v67 = OUTLINED_FUNCTION_13_11();
        v105 = v64 + 8;
        v66(v67);
        sub_237AE6A00();
        v68 = v98;
        OUTLINED_FUNCTION_61_6();
        sub_237C0743C();
        OUTLINED_FUNCTION_0_51();
        sub_237AE7174();
        v71 = v91;
        v72 = v94;
        sub_237AE71C8(v68, v94);
        OUTLINED_FUNCTION_2_51();
        v73 = v92;
        sub_237AE6D08(v72, v92);
        v74 = (*(v93 + 80) + 16) & ~*(v93 + 80);
        v75 = swift_allocObject();
        sub_237AE71C8(v73, v75 + v74);
        sub_2379DD56C();
        v77 = v76;

        v78 = v86;
        *(v71 + v86[5]) = v77;
        OUTLINED_FUNCTION_2_51();
        sub_237AE6D08(v72, v71);
        v79 = v88;
        *v88 = 0;
        *(v79 + 8) = 0;
        *(v79 + 16) = 256;
        v80 = v89;
        swift_storeEnumTagMultiPayload();
        v81 = v71 + v78[8];
        *v81 = 0u;
        *(v81 + 16) = 0u;
        *(v81 + 32) = xmmword_237C0BF20;
        *(v81 + 48) = xmmword_237C0BF30;
        *(v81 + 64) = 42;
        *(v81 + 72) = vdupq_n_s64(0x3FE999999999999AuLL);
        v82 = v87;
        sub_237AE6D08(v79, v87);
        v106[3] = v80;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v106);
        sub_237AE71C8(v82, boxed_opaque_existential_0);
        OUTLINED_FUNCTION_7_31();
        sub_237AE7174();
        sub_2379DAE54(v106, v81);
        v84 = (v71 + v78[6]);
        *v84 = 0;
        v84[1] = 0xE000000000000000;
        OUTLINED_FUNCTION_19_24();
        sub_237AE7174();
        OUTLINED_FUNCTION_1_50();
        sub_237AE7174();
        *(v71 + v78[7]) = MEMORY[0x277D84F90];
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v69 = swift_allocError();
        *v70 = 0xD00000000000004ELL;
        v70[1] = 0x8000000237C1B300;
        OUTLINED_FUNCTION_23_3(v69, v70);
        swift_willThrow();
        sub_237AE7174();
        sub_237AE7174();
        sub_237AE7174();
      }

      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237AE42C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2379F9374;

  return sub_237B919A4();
}

void static MLRandomForestClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v2 = OUTLINED_FUNCTION_48_0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *(v1 + 8);
  v16 = *v1;
  v17 = v11;
  sub_2379DBCF4(v16, v11);
  sub_237A70ED4(&v16, v10);
  static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (v0)
  {
    (*(v5 + 8))(v10, v2);
  }

  else
  {
    v13 = v12;
    (*(v5 + 8))(v10, v2);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA08, &qword_237C119F8);
    v15 = OUTLINED_FUNCTION_91(v14);
    sub_237BEC454(v15, v13);
  }

  OUTLINED_FUNCTION_73();
}

{
  static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v0)
  {
    v2 = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA08, &qword_237C119F8);
    v4 = OUTLINED_FUNCTION_91(v3);
    sub_237BEC454(v4, v2);
  }
}

void static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v1 = OUTLINED_FUNCTION_48_0();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = *(v0 + 8);
  v11 = *v0;
  v12 = v10;
  sub_2379DBCF4(v11, v10);
  sub_237A70ED4(&v11, v9);
  static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v4 + 8))(v9, v1);
  OUTLINED_FUNCTION_73();
}

{
  OUTLINED_FUNCTION_74();
  v47 = v1;
  v48 = v2;
  v4 = v3;
  v50 = v5;
  v46 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters();
  v10 = OUTLINED_FUNCTION_20(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  v45 = v14;
  v15 = sub_237C071DC();
  v16 = OUTLINED_FUNCTION_20(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v19 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_0();
  v49 = v27;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_138();
  v30 = v29;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v43 - v32;
  v34 = v4;
  sub_2379E9068(v4, &v54, &qword_27DE9A998, &unk_237C0C100);
  if (v55)
  {
    v35 = *(v23 + 48);
    sub_2379DAD24(&v54, &v51);
    swift_dynamicCast();
    sub_237A65054(v33, &v33[v35], v8);
    OUTLINED_FUNCTION_7_31();
    sub_237AE7174();
    if (!v0)
    {
      sub_2379E9068(v33, v30, &qword_27DE9ADC0, &unk_237C0BF40);
      v43 = *(v23 + 48);
      sub_2379E9068(v33, v49, &qword_27DE9ADC0, &unk_237C0BF40);
      v56 = *(v23 + 48);
      sub_237AE1E74(v34, &v51);

      sub_237C071CC();
      sub_237C070DC();
      sub_237C0709C();
      sub_237C070FC();
      sub_237C0715C();
      sub_237C0719C();
      sub_237C0717C();
      sub_237C070BC();
      sub_237C0711C();
      sub_237C0713C();
      sub_237AE35BC(&v51);
      OUTLINED_FUNCTION_3_46();
      v36 = v45;
      sub_237AE6D08(v48, v45);
      v37 = type metadata accessor for TreeClassifierTrainingSessionDelegate();
      OUTLINED_FUNCTION_91(v37);
      sub_237A6A6F8();
      OUTLINED_FUNCTION_46();
      v38 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v38);
      v40 = (*(v39 + 8))(v49);
      OUTLINED_FUNCTION_69_4(v40, &qword_27DE9A9A0, &qword_237C0BF60);
      v52 = v37;
      v53 = &off_284AC2A08;
      *&v51 = v36;
      OUTLINED_FUNCTION_3_46();
      v41 = v44;
      sub_237AE6D08(v48, v44);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA10, &qword_237C11A00);
      OUTLINED_FUNCTION_91(v42);

      sub_2379E4248(&v51, v41, 1);
      sub_2379D9054(v33, &qword_27DE9ADC0, &unk_237C0BF40);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static MLRandomForestClassifier.resume(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA08, &qword_237C119F8);
  v3 = OUTLINED_FUNCTION_91(v2);

  return sub_237BEC454(v3, a1);
}

void static MLRandomForestClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters();
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-1] - v10;
  OUTLINED_FUNCTION_3_46();
  sub_237AE6D08(a1, v11);
  v12 = type metadata accessor for TreeClassifierTrainingSessionDelegate();
  OUTLINED_FUNCTION_91(v12);
  OUTLINED_FUNCTION_39_9();
  v13 = sub_237A6A5D0();
  if (!v1)
  {
    v16[3] = v12;
    v16[4] = &off_284AC2A08;
    v16[0] = v13;
    OUTLINED_FUNCTION_3_46();
    sub_237AE6D08(a1, v9);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA10, &qword_237C11A00);
    OUTLINED_FUNCTION_91(v14);
    sub_2379E4248(v16, v9, 1);
  }
}

uint64_t sub_237AE4C00(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA28, &qword_237C11AD0);
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v28[-v14 - 8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  v21 = &v28[-v20 - 8];
  if (a2)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    a4(v15);
    return sub_2379D9054(v15, &qword_27DE9CA28, &qword_237C11AD0);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for TreeClassifierTrainingSessionDelegate();
    swift_dynamicCast();
    v24 = v27;
    v25 = sub_237C08A3C();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v24;
    v26[5] = a4;
    v26[6] = a5;

    sub_237BBAEC8(0, 0, v21, &unk_237C11AE0, v26);
  }
}

uint64_t sub_237AE4DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA28, &qword_237C11AD0);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237AE4EA8, 0, 0);
}

uint64_t sub_237AE4EA8()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_237AE4F48;
  v3 = v0[6];
  v4 = v0[2];

  return sub_237AE521C();
}

uint64_t sub_237AE4F48()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237AE5044()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  swift_storeEnumTagMultiPayload();
  v4 = OUTLINED_FUNCTION_37_0();
  sub_237AE7128(v4, v5, &qword_27DE9CA28, &qword_237C11AD0);
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  v10 = v0[3];
  v9 = v0[4];
  v11 = OUTLINED_FUNCTION_13_11();
  sub_237AE7128(v11, v12, &qword_27DE9CA28, &qword_237C11AD0);
  v10(v6);
  sub_2379D9054(v6, &qword_27DE9CA28, &qword_237C11AD0);

  OUTLINED_FUNCTION_8();

  return v13();
}

uint64_t sub_237AE5134()
{
  v1 = v0[5];
  *v0[7] = v0[10];
  swift_storeEnumTagMultiPayload();
  v2 = v0[8];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  sub_237AE7128(v0[7], v2, &qword_27DE9CA28, &qword_237C11AD0);
  v5(v2);
  sub_2379D9054(v2, &qword_27DE9CA28, &qword_237C11AD0);

  OUTLINED_FUNCTION_8();

  return v6();
}

uint64_t sub_237AE521C()
{
  OUTLINED_FUNCTION_9();
  v0[36] = v1;
  v0[37] = v2;
  v3 = type metadata accessor for AnyClassificationMetrics();
  v0[38] = v3;
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64) + 15;
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC88, &unk_237C11AF0);
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64) + 15;
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v9 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_20(v9);
  v11 = *(v10 + 64);
  v0[43] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v0[44] = v12;
  OUTLINED_FUNCTION_1(v12);
  v0[45] = v13;
  v15 = *(v14 + 64);
  v0[46] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v16);
  v18 = *(v17 + 64);
  v0[47] = OUTLINED_FUNCTION_19();
  v19 = type metadata accessor for MLRandomForestClassifier();
  v0[48] = v19;
  OUTLINED_FUNCTION_20(v19);
  v21 = *(v20 + 64) + 15;
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v22);
  v24 = *(v23 + 64);
  v0[51] = OUTLINED_FUNCTION_19();
  v25 = sub_237C071DC();
  v0[52] = v25;
  OUTLINED_FUNCTION_1(v25);
  v0[53] = v26;
  v28 = *(v27 + 64);
  v0[54] = OUTLINED_FUNCTION_19();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v29);
  v31 = *(v30 + 64);
  v0[55] = OUTLINED_FUNCTION_19();
  v32 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v0[56] = v32;
  OUTLINED_FUNCTION_20(v32);
  v34 = *(v33 + 64);
  v0[57] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_237AE5494()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 296);
  v4 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v3 + v4, v1, &qword_27DE9AE18, &qword_237C0DEE0);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + 448);
  v6 = *(v0 + 456);
  v8 = *(v0 + 432);
  v9 = *(v0 + 416);
  v10 = *(v0 + 424);
  v11 = *(v0 + 408);
  v12 = *(v0 + 376);
  v13 = *(v0 + 296);
  sub_237AE71C8(*(v0 + 440), v6);
  (*(v10 + 16))(v8, v6 + v7[8], v9);
  sub_2379E9068(v6 + v7[5], v11, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237AAC8D8(v8, v11, v0 + 16);
  v14 = (v6 + v7[6]);
  v15 = v14[1];
  v36 = *v14;
  *(v0 + 464) = v15;
  v16 = *(v6 + v7[7]);
  *(v0 + 472) = v16;
  v17 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v13 + v17, v12, &qword_27DE9BC78, &qword_237C0EBD0);
  v18 = type metadata accessor for AnyTreeClassifierModel();
  result = __swift_getEnumTagSinglePayload(v12, 1, v18);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = *(v0 + 384);
  v19 = *(v0 + 392);
  v22 = *(v0 + 360);
  v21 = *(v0 + 368);
  v23 = *(v0 + 352);
  sub_237AE1E74(v0 + 16, v0 + 104);
  v24 = v20[9];
  *(v0 + 512) = v24;
  v25 = (v19 + v24);

  sub_237C06FAC();
  v26 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v27 = v25 + *(v26 + 20);
  sub_2379E51D0();
  v28 = v25 + *(v26 + 24);
  sub_2379E5C70();
  (*(v22 + 8))(v21, v23);
  *v25 = 0;
  *(v0 + 480) = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v29 = v20[10];
  *(v0 + 516) = v29;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v30 = swift_allocError();
  *v31 = 0xD0000000000000C0;
  v31[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v30, v31);
  *(v19 + v29) = v32;
  swift_storeEnumTagMultiPayload();
  *(v19 + v20[7]) = v16;
  v33 = (v19 + v20[6]);
  *v33 = v36;
  v33[1] = v15;
  v34 = swift_task_alloc();
  *(v0 + 488) = v34;
  *v34 = v0;
  v34[1] = sub_237AE57D4;
  v35 = *(v0 + 376);

  return sub_237B919A4();
}

uint64_t sub_237AE57D4()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v8 = *(v7 + 488);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v5 + 496) = v0;

  if (!v0)
  {
    *(v5 + 504) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237AE58E4()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[42];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  *(v2 + *(v4 + 20)) = v0[63];
  OUTLINED_FUNCTION_20_19();
  sub_237AE71C8(v9, v2);
  memcpy((v2 + *(v4 + 32)), v0 + 13, 0x58uLL);
  sub_237AE71C8(v2, v1);
  sub_237AE71C8(v1, v8);
  v10 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v7 + v10, v5, &qword_27DE9BC88, &unk_237C11AF0);
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[60];
    v13 = v0[48];
    v15 = v0[42];
    v14 = v0[43];
    v16 = v0[41];
    v18 = v0[37];
    v17 = v0[38];
    v19 = v0[36];
    sub_237AE35BC((v0 + 2));
    OUTLINED_FUNCTION_8_30();
    sub_237AE71C8(v15, v14);
    OUTLINED_FUNCTION_37_0();
    swift_storeEnumTagMultiPayload();
    sub_2379DC1F8(v14, v19 + *(v13 + 36));
    v20 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v18 + v20, v16, &qword_27DE9BC88, &unk_237C11AF0);

    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      v21 = v0[57];
      v22 = v0[41];
      OUTLINED_FUNCTION_12_27();
      sub_237AE7174();
      sub_2379D9054(v22, &qword_27DE9BC88, &unk_237C11AF0);
    }

    else
    {
      v23 = v0[60];
      v24 = v0[57];
      v25 = v0[48];
      v26 = v0[40];
      v27 = v0[39];
      v28 = v0[36];
      sub_237AE71C8(v0[41], v26);
      sub_237AE71C8(v26, v27);
      v29 = *(v25 + 40);
      sub_237AE7174();
      sub_237AE71C8(v27, v28 + v29);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_27();
      sub_237AE7174();
    }

    v30 = v0[57];
    v31 = v0[54];
    v32 = v0[55];
    v34 = v0[50];
    v33 = v0[51];
    v35 = v0[49];
    v37 = v0[46];
    v36 = v0[47];
    v39 = v0[42];
    v38 = v0[43];
    v41 = v0[41];
    v42 = v0[40];
    v43 = v0[39];

    OUTLINED_FUNCTION_8();

    return v40();
  }

  return result;
}

uint64_t sub_237AE5C14()
{
  v1 = *(v0 + 516);
  v2 = *(v0 + 512);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v6 = *(v0 + 440);
  v13 = *(v0 + 432);
  v14 = *(v0 + 408);
  v7 = *(v0 + 392);
  v8 = *(v0 + 376);
  v15 = *(v0 + 400);
  v16 = *(v0 + 368);
  v17 = *(v0 + 344);
  v18 = *(v0 + 336);
  v19 = *(v0 + 328);
  v20 = *(v0 + 320);
  v21 = *(v0 + 312);
  v9 = *(v0 + 296);
  sub_237AE35BC(v0 + 104);
  OUTLINED_FUNCTION_1_50();
  sub_237AE7174();

  sub_237AE7174();
  sub_237AE7174();

  sub_237AE35BC(v0 + 16);
  OUTLINED_FUNCTION_12_27();
  sub_237AE7174();

  OUTLINED_FUNCTION_8();
  v11 = *(v0 + 496);

  return v10();
}

void MLRandomForestClassifier.predictions(from:)()
{
  v2 = sub_237C05DBC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v8 = *(v0 + *(type metadata accessor for MLRandomForestClassifier() + 28));
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v1)
  {
    OUTLINED_FUNCTION_11();
    sub_237A5DEEC(v9);
    v10 = *v0;
    v11 = v0[1];
    sub_237C05DFC();
    v12 = *(v5 + 8);
    v13 = OUTLINED_FUNCTION_13_11();
    v14(v13);
  }
}

uint64_t MLRandomForestClassifier.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v6 = sub_237C05DBC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v12 = sub_237C0602C();
  v13 = OUTLINED_FUNCTION_20(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v16 = *(a1 + 8);
  v18 = *a1;
  v19 = v16;
  sub_2379DBCF4(v18, v16);
  sub_237A70ED4(&v18, v3);
  MLRandomForestClassifier.predictions(from:)();
  if (v2)
  {
    return (*(v9 + 8))(v3, v6);
  }

  (*(v9 + 8))(v3, v6);
  return sub_237A72900(v4, 1, v1);
}

uint64_t MLRandomForestClassifier.evaluation(on:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v4 = type metadata accessor for AnyClassificationMetrics();
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v8 = type metadata accessor for MLRandomForestClassifier();
  v9 = *(v1 + *(v8 + 28));
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v11 = (v1 + *(v8 + 24));
  v12 = v11[1];
  *(inited + 32) = *v11;
  *(inited + 40) = v12;

  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  sub_237A5EF84(a1, v2);
  OUTLINED_FUNCTION_8_30();
  v14 = OUTLINED_FUNCTION_13_11();
  sub_237AE71C8(v14, v15);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload();
}

{
  v2 = sub_237C05DBC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *(a1 + 8);
  v13 = *a1;
  v14 = v11;
  sub_2379DBCF4(v13, v11);
  sub_237A70ED4(&v13, v10);
  MLRandomForestClassifier.evaluation(on:)(v10);
  return (*(v5 + 8))(v10, v2);
}

void MLRandomForestClassifier.write(to:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v22;
  a20 = v23;
  v70 = v20;
  v25 = v24;
  v26 = type metadata accessor for AnyTreeClassifierModel();
  v27 = OUTLINED_FUNCTION_20(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v32 = v31 - v30;
  v33 = sub_237C07F1C();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v41 = v40 - v39;
  v42 = sub_237C05ADC();
  v43 = OUTLINED_FUNCTION_0(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_0();
  v46 = v25;
  v49 = v48 - v47;
  memcpy(v69, v46, 0x48uLL);
  sub_2379F25FC();
  if (!v21)
  {
    v62 = v36;
    OUTLINED_FUNCTION_2_51();
    sub_237AE6D08(v70, v32);
    v50 = *(&v69[0] + 1);
    if (*(&v69[0] + 1))
    {
      v51 = *&v69[0];
      v52 = *(&v69[1] + 1);
      v53 = *&v69[1];
      v54 = v69[2];
      v55 = *(&v69[3] + 1);
      v56 = *&v69[3];
      v57 = *&v69[4];
    }

    else
    {
      v58 = v49;
      v59 = NSFullUserName();
      v51 = sub_237C086EC();
      v50 = v60;

      v49 = v58;
      v57 = 0;
      v52 = 0x8000000237C17C90;
      v53 = 0xD000000000000033;
      v54 = 0uLL;
      v55 = 0xE100000000000000;
      v56 = 49;
    }

    v64[0] = v51;
    v64[1] = v50;
    v64[2] = v53;
    v64[3] = v52;
    v65 = v54;
    v66 = v56;
    v67 = v55;
    v68 = v57;
    sub_2379E9068(v69, &v63, &qword_27DE9ADE0, &unk_237C0BF90);
    sub_2379FB398(v64);
    OUTLINED_FUNCTION_1_50();
    sub_237AE7174();
    sub_2379FC064(v64);
    sub_237C07E5C();
    (*(v62 + 8))(v41, v33);
    OUTLINED_FUNCTION_36_3(&a12);
    v61(v49, v42);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLRandomForestClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v35 = v4;
  v36 = v2;
  v6 = v5;
  v7 = sub_237C0596C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  v19 = sub_237C05ADC();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  memcpy(v37, v6, sizeof(v37));
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  (*(v10 + 104))(v3, *MEMORY[0x277CC91D8], v7);

  sub_237C05ABC();
  MLRandomForestClassifier.write(to:metadata:)(v27, v37, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8]);
  (*(v22 + 8))(v27, v19);
  OUTLINED_FUNCTION_73();
}

unint64_t MLRandomForestClassifier.debugDescription.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v7 = type metadata accessor for MLRandomForestClassifier();
  v8 = v0 + v7[8];
  v9 = MLRandomForestClassifier.ModelParameters.description.getter();
  v11 = v10;
  v12 = v2 + v7[9];
  v13 = MLClassifierMetrics.description.getter();
  v15 = v14;
  sub_237AE6D08(v2 + v7[10], v1);
  LODWORD(v7) = swift_getEnumCaseMultiPayload();
  sub_237AE7174();
  v16 = MLClassifierMetrics.description.getter();
  v18 = v17;
  MEMORY[0x2383DC360](v9, v11);

  MEMORY[0x2383DC360](v13, v15);
  MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C16EE0);

  if (v7 <= 1)
  {
    MEMORY[0x2383DC360](v16, v18);
    MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C16F00);
  }

  return 0xD000000000000023;
}

id MLRandomForestClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLRandomForestClassifier.debugDescription.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

unint64_t sub_237AE6A00()
{
  result = qword_27DE9CA00;
  if (!qword_27DE9CA00)
  {
    type metadata accessor for AnyTreeClassifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CA00);
  }

  return result;
}

uint64_t sub_237AE6AA4(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_237AE7220(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for AnyTreeClassifierModel();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  if (*(v0 + v3 + 16))
  {

    v7 = *(v5 + 32);
  }

  v8 = *(v1 + 24);
  v9 = sub_237C0704C();
  OUTLINED_FUNCTION_4(v9);
  (*(v10 + 8))(v5 + v8);
  v11 = *(v5 + *(v1 + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_237AE6C4C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v0 = type metadata accessor for AnyTreeClassifierModel();
  OUTLINED_FUNCTION_20(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_55_0(v4);

  return sub_237AE42C4(v6);
}

uint64_t sub_237AE6D08(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

id sub_237AE6D60@<X0>(void *a1@<X8>)
{
  result = MLRandomForestClassifier.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237AE6DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_87();
  v6 = type metadata accessor for AnyTreeClassifierModel();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for MLClassifierMetrics(0);
    v8 = v3 + *(a3 + 36);
    goto LABEL_8;
  }

  v9 = *(v3 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_237AE6E84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_87();
  result = type metadata accessor for AnyTreeClassifierModel();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for MLClassifierMetrics(0);
    v10 = v4 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_237AE6F4C()
{
  type metadata accessor for AnyTreeClassifierModel();
  if (v0 <= 0x3F)
  {
    sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v1 <= 0x3F)
    {
      sub_2379FC328();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MLClassifierMetrics(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_237AE7020()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_237AE7068(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_19_0(v8);
  *v9 = v10;
  v9[1] = sub_2379D6854;

  return sub_237AE4DEC(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_237AE7128(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_151(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return v4;
}

uint64_t sub_237AE7174()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_237AE71C8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

uint64_t sub_237AE7220(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_237C0923C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x277D84F90];
      }

      else
      {
        v11 = sub_237C0898C();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_237AE732C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_237AE7388(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_237C0929C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_237AE7450(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v7[2];
        sub_237BC0B38();
        v7 = v71;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_237BC0B38();
        v7 = v72;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
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
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_237AE8050((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_237AE7DF8(&v78, *a1, a3);
LABEL_89:
}

void sub_237AE78F0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_237C0929C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_237C0929C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_237C0929C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_237BC0B38();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_237BC0B38();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_237AE81C4((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_237AE7F24(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_237AE7DF8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_237BA12F8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_237AE8050((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_237AE7F24(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_237BA12F8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_237AE81C4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_237AE8050(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_237A20CF8(a1);
    v10 = &a4[v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *a4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *a4;
    v13 = v7 == a4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_237A20CF8(a2);
  v10 = &a4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > a4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - a4;
  if (v6 != a4 || v6 >= &a4[v17])
  {
    memmove(v6, a4, 8 * v17);
  }

  return 1;
}

uint64_t sub_237AE81C4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_237A1DCBC(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_237C0929C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_237A1DCBC(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_237C0929C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_237AE8368(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_237C093CC();
  sub_237C093EC();
  if (a2)
  {
    sub_237C0878C();
  }

  result = sub_237C0940C();
  v8 = v5 + 56;
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  v11 = v10 >> 6;
  v12 = *(v5 + 56 + 8 * (v10 >> 6));
  v13 = 1 << v10;
  if (((1 << v10) & v12) != 0)
  {
    v14 = ~v9;
    v15 = *(v5 + 48);
    do
    {
      v16 = (v15 + 16 * v10);
      v17 = v16[1];
      if (v17)
      {
        if (a2)
        {
          if (*v16 == a1 && v17 == a2)
          {
            goto LABEL_18;
          }

          result = sub_237C0929C();
          if (result)
          {
            v23 = v16[1];
LABEL_18:
            *v16 = a1;
            v16[1] = a2;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_18;
      }

      v10 = (v10 + 1) & v14;
      v11 = v10 >> 6;
      v12 = *(v8 + 8 * (v10 >> 6));
      v13 = 1 << v10;
    }

    while ((v12 & (1 << v10)) != 0);
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v8 + 8 * v11) = v12 | v13;
    v19 = (*(v5 + 48) + 16 * v10);
    *v19 = a1;
    v19[1] = a2;
    v20 = *(v5 + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      *(v5 + 16) = v22;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237AE8508(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_237C08E2C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_39()
{
  v2 = *(*(v1 - 312) + 8);
  result = v0;
  v4 = *(v1 - 304);
  return result;
}

void OUTLINED_FUNCTION_15_24()
{
  v1 = *(v0 - 280);
  v2 = *(v0 - 352);
  v3 = *(v0 - 392);
}

uint64_t OUTLINED_FUNCTION_24_21@<X0>(uint64_t a1@<X8>)
{

  return sub_237AE6D08(v2 + a1, v1);
}

uint64_t OUTLINED_FUNCTION_52_9(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 376) + *(v3 - 408);

  return sub_2379D9054(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_55_6()
{
  v2 = *(v0 - 272);

  return sub_237AE35BC(v2);
}

uint64_t OUTLINED_FUNCTION_69_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 72) + *(v3 - 272);

  return sub_2379D9054(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_71_3(uint64_t a1, uint64_t a2)
{

  return sub_2379E8FD0(v2, a2, 0);
}

uint64_t OUTLINED_FUNCTION_72_4()
{
  v2 = *(v0 - 288);
}

uint64_t OUTLINED_FUNCTION_73_3()
{
  v2 = *(v0 - 344);
}

uint64_t OUTLINED_FUNCTION_74_3()
{
  v2 = *(v0 - 400);

  return sub_237AE7174();
}

uint64_t sub_237AE8814(char a1)
{
  result = 0x6172745F74696E69;
  switch(a1)
  {
    case 1:
    case 8:
      OUTLINED_FUNCTION_0_52();
      result = v8 - 1;
      break;
    case 2:
      OUTLINED_FUNCTION_0_52();
      result = v6 + 3;
      break;
    case 3:
      result = 0x745F656D75736572;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6E69617274;
      break;
    case 6:
      result = 1702257011;
      break;
    case 7:
      result = 0x6174656D5F646461;
      break;
    case 9:
      result = 0x737265765F746567;
      break;
    case 10:
      result = 0x74636964657270;
      break;
    case 11:
      result = 0x657A696C797473;
      break;
    case 12:
      OUTLINED_FUNCTION_0_52();
      result = v3 + 1;
      break;
    case 13:
      result = 0x657461756C617665;
      break;
    case 14:
      result = 0x74706F5F74696E69;
      break;
    case 15:
      result = 0x6569665F7473696CLL;
      break;
    case 16:
      result = 0x756C61765F746567;
      break;
    case 17:
      result = 0x6E656D6D6F636572;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      OUTLINED_FUNCTION_0_52();
      result = v10 + 7;
      break;
    case 20:
      OUTLINED_FUNCTION_0_52();
      result = v7 | 0xC;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      OUTLINED_FUNCTION_0_52();
      result = v9 | 8;
      break;
    case 23:
      OUTLINED_FUNCTION_0_52();
      result = v11 + 26;
      break;
    case 24:
      OUTLINED_FUNCTION_0_52();
      result = v5 + 19;
      break;
    case 25:
      OUTLINED_FUNCTION_0_52();
      result = v4 + 9;
      break;
    case 26:
      OUTLINED_FUNCTION_0_52();
      result = v12 + 16;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237AE8BE0()
{
  v3 = OUTLINED_FUNCTION_87();
  v4 = _s13GraphCNNModelVMa(v3);
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);
  OUTLINED_FUNCTION_20(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_237C05ADC();
  v15 = OUTLINED_FUNCTION_20(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  sub_237C05A2C();
  v33[0] = 1;
  v34 = 44;
  v35 = 0xE100000000000000;
  v36 = 0;
  v37 = 0xE000000000000000;
  v38 = 92;
  v39 = 0xE100000000000000;
  v40 = 1;
  v41 = 34;
  v42 = 0xE100000000000000;
  v43 = 1;
  v44 = &unk_284ABEBF0;
  v45 = 10;
  v47 = 0;
  v48 = 0;
  v46 = 0xE100000000000000;
  v49 = 1;
  v50 = 0;
  MLDataTable.init(contentsOf:options:)(v20, v33, &v32);
  if (!v1)
  {
    v21 = OUTLINED_FUNCTION_8_9();
    v23 = sub_237AE8EA4(v21, v22);
    v24 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
    swift_beginAccess();
    v31 = v0;
    sub_237AF1B7C(v0 + v24, v2);
    sub_237AECC58(v2, v23);
    sub_237AF1BD8(v2, _s13GraphCNNModelVMa);
    v25 = v0;
    v26 = v31;
    sub_237AE9804(v25, v13, v23);
    v27 = OUTLINED_FUNCTION_8_9();
    sub_2379DBC9C(v27, v28);

    v29 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer;
    swift_beginAccess();
    sub_237AF19C8(v13, v26 + v29);
    swift_endAccess();
  }
}

void *sub_237AE8EA4(void *a1, char a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  v6 = sub_237C085AC();
  v63 = a1;
  v7 = a2 & 1;
  v64 = v7;
  sub_2379DBCF4(a1, v7);
  v8 = 0;
  v53 = a1;
  for (i = v7; ; v7 = i)
  {
    v60 = a1;
    LOBYTE(v61) = v7;
    if (v8 == MLDataTable.size.getter())
    {
      break;
    }

    MLDataTable.Rows.subscript.getter(&v60, v8);
    v9 = v61;
    v10 = sub_237B6A8E8(v8);
    if (!v9[2])
    {
      goto LABEL_36;
    }

    v11 = v10;
    v12 = sub_237ACAC78(1937335659, 0xE400000000000000);
    if ((v13 & 1) == 0)
    {
      goto LABEL_36;
    }

    v54 = v11;
    v14 = sub_237A2E9C8(*(v9[7] + 8 * v12));
    if (v3)
    {
      goto LABEL_50;
    }

    sub_237AFC548(v14, &v60);
    v16 = v60;
    v15 = v61;
    if (v62 != 2)
    {
      sub_2379E8CE8(v60, v61, v62);
LABEL_36:

      sub_2379E8AF0();
      swift_allocError();
      *v45 = 0xD000000000000055;
      *(v45 + 8) = 0x8000000237C1B800;
      *(v45 + 16) = 0u;
      *(v45 + 32) = 0u;
      *(v45 + 48) = 2;
      swift_willThrow();
LABEL_41:

LABEL_42:

      break;
    }

    if (!v9[2])
    {
      goto LABEL_40;
    }

    sub_2379E9288(v60, v61, 2);
    v17 = sub_237ACAC78(0x7365756C6176, 0xE600000000000000);
    if ((v18 & 1) == 0)
    {
      v46 = v16;
      v47 = v15;
      v48 = 2;
      goto LABEL_39;
    }

    v58 = v16;
    v3 = 0;
    v19 = sub_237A2E9C8(*(v9[7] + 8 * v17));
    sub_237AFC548(v19, &v60);
    v20 = v60;
    v57 = v61;
    v21 = v62;
    if (v62 != 3)
    {
      sub_2379E8CE8(v58, v15, 2);
      v46 = v20;
      v16 = v58;
      v47 = v57;
      v48 = v21;
LABEL_39:
      sub_2379E8CE8(v46, v47, v48);
LABEL_40:

      sub_2379E8AF0();
      swift_allocError();
      *v49 = 0xD00000000000005BLL;
      *(v49 + 8) = 0x8000000237C1B860;
      *(v49 + 16) = 0u;
      *(v49 + 32) = 0u;
      *(v49 + 48) = 2;
      swift_willThrow();
      sub_2379E8CE8(v16, v15, 2);
      goto LABEL_41;
    }

    v56 = v15;

    v22 = sub_237A2E9F4();
    if (sub_237A2E9F4() < 0)
    {
      goto LABEL_45;
    }

    v23 = sub_237A2E9F4();
    if (v22 < 0 || v23 < v22)
    {
LABEL_46:
      __break(1u);

      __break(1u);

      __break(1u);

      __break(1u);
LABEL_47:
      __break(1u);

      __break(1u);

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      while (1)
      {
LABEL_50:
        swift_unexpectedError();
        __break(1u);
      }
    }

    if (v22)
    {
      v51 = v6;
      v60 = MEMORY[0x277D84F90];
      sub_237AC8B54();
      v24 = 0;
      v25 = v60;
      while (2)
      {
        v26 = sub_237A2E9C8(v24);
        v27 = v24 + 1;
        switch(sub_237A2E910())
        {
          case 1u:
            v28 = *(v26 + 16);

            sub_237B0E848();
            v30 = v29;

            v60 = v25;
            v31 = v25[2];
            if (v31 >= v25[3] >> 1)
            {
              sub_237AC8B54();
              v25 = v60;
            }

            v25[2] = v31 + 1;
            v25[v31 + 4] = v30;
            if (v24 >= sub_237A2E9F4())
            {
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            ++v24;
            if (v22 != v27)
            {
              continue;
            }

            v32 = v57;
            sub_2379E8CE8(v20, v57, 3);
            v6 = v51;
            break;
          case 2u:

            v33 = sub_237A2DE60();
            v35 = v34;
            v55 = 2;

            sub_2379E8CE8(v20, v57, 3);
            v36 = v56;
            sub_2379E8CE8(v58, v56, 2);
            goto LABEL_33;
          case 3u:
            v40 = sub_237B0DD68(*(v26 + 16));
            v6 = v51;
            v36 = v56;
            if (!v40)
            {
              goto LABEL_48;
            }

            v41 = v40;

            v55 = 3;
            sub_2379E8CE8(v20, v57, 3);
            sub_2379E8CE8(v58, v56, 2);
            type metadata accessor for CMLSequence();
            v33 = swift_allocObject();
            v35 = 0;
            *(v33 + 16) = v41;
            *(v33 + 24) = 1;
            goto LABEL_34;
          case 4u:
            v42 = sub_237B0DDC8(*(v26 + 16));
            if (!v42)
            {
              goto LABEL_49;
            }

            type metadata accessor for CMLDictionary();
            v43 = swift_allocObject();
            *(v43 + 16) = v42;
            v65[0] = v43;
            v65[1] = sub_237B004D4;
            v65[2] = 0;
            v65[3] = sub_237B02424;
            v65[4] = 0;
            v65[5] = sub_237AB65A0;
            v65[6] = 0;
            v59 = MEMORY[0x277D84F98];
            swift_retain_n();
            sub_237B019D8(v65, 1, &v59);
            v36 = v56;

            sub_2379E8CE8(v20, v57, 3);
            sub_2379E8CE8(v58, v56, 2);
            v35 = 0;
            v33 = v59;
            v39 = 4;
            goto LABEL_32;
          case 5u:

            sub_2379E8CE8(v20, v57, 3);
            v36 = v56;
            sub_2379E8CE8(v58, v56, 2);
            v33 = 0;
            v35 = 0;
            v39 = 6;
            goto LABEL_32;
          case 6u:

            sub_237AC8278(v38, &v59);
            if (!v59)
            {
              goto LABEL_47;
            }

            v33 = v59;

            sub_2379E8CE8(v20, v57, 3);
            v36 = v56;
            sub_2379E8CE8(v58, v56, 2);
            v35 = 0;
            v39 = 5;
LABEL_32:
            v55 = v39;
LABEL_33:
            v6 = v51;
LABEL_34:
            sub_2379E8AF0();
            swift_allocError();
            *v44 = 0xD000000000000058;
            *(v44 + 8) = 0x8000000237C1B8C0;
            *(v44 + 16) = 0u;
            *(v44 + 32) = 0u;
            *(v44 + 48) = 2;
            swift_willThrow();
            sub_2379E8CE8(v33, v35, v55);

            sub_2379E8CE8(v58, v36, 2);

            sub_2379E8CE8(v20, v57, 3);
            goto LABEL_42;
          default:
            v37 = *(v26 + 16);

            v33 = sub_237B0ECCC(v37);

            sub_2379E8CE8(v20, v57, 3);
            v36 = v56;
            sub_2379E8CE8(v58, v56, 2);
            v35 = 0;
            v55 = 0;
            goto LABEL_33;
        }

        break;
      }
    }

    else
    {
      v32 = v57;
      sub_2379E8CE8(v20, v57, 3);
    }

    swift_isUniquelyReferenced_nonNull_native();
    v60 = v6;
    sub_237B40F54();
    sub_2379E8CE8(v58, v56, 2);
    sub_2379E8CE8(v20, v32, 3);

    sub_2379E8CE8(v58, v56, 2);
    v6 = v60;
    a1 = v53;
    v8 = v54;
  }

  sub_2379DBC9C(v63, v64);
  return v6;
}

uint64_t sub_237AE9804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v74 = a2;
  v62 = sub_237C062EC();
  *&v77 = *(v62 - 8);
  v5 = *(v77 + 64);
  v6 = MEMORY[0x28223BE20](v62);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v53 - v8;
  v67 = sub_237C0638C();
  v69 = *(v67 - 8);
  v9 = *(v69 + 64);
  v10 = MEMORY[0x28223BE20](v67);
  v60 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v53 - v12;
  v72 = sub_237C065CC();
  v68 = *(v72 - 8);
  v13 = *(v68 + 64);
  v14 = MEMORY[0x28223BE20](v72);
  v65 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v71 = &v53 - v16;
  v86 = sub_237C0697C();
  v54 = *(v86 - 8);
  v17 = *(v54 + 64);
  v18 = MEMORY[0x28223BE20](v86);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  v23 = _s13GraphCNNModelVMa(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess();
  sub_237AF1B7C(v3 + v27, v26);
  v76 = v3;
  v28 = sub_237AEA2A4();
  result = sub_237AF1BD8(v26, _s13GraphCNNModelVMa);
  v30 = 0;
  v73 = v28 + 32;
  v55 = (v77 + 32);
  v56 = (v77 + 8);
  v58 = (v69 + 32);
  v59 = (v69 + 8);
  v63 = (v68 + 32);
  v64 = (v68 + 8);
  v68 = v54 + 32;
  v69 = v54 + 8;
  v70 = v28;
  while (1)
  {
    v31 = *(v28 + 16);
    v32 = 0uLL;
    if (v30 == v31)
    {
      v33 = 0uLL;
      v34 = 0uLL;
      goto LABEL_6;
    }

    if (v30 >= v31)
    {
      break;
    }

    *&v82 = v30;
    sub_2379E8624(v73 + 40 * v30, &v82 + 8);
    v32 = v82;
    v33 = v83;
    ++v30;
    v34 = v84;
LABEL_6:
    v85[0] = v32;
    v85[1] = v33;
    v85[2] = v34;
    if (!v34)
    {
    }

    v77 = v32;
    sub_237AC1720((v85 + 8), &v82);
    v80 = 0x5F726579616CLL;
    v81 = 0xE600000000000000;
    v78 = v77;
    v35 = sub_237C0924C();
    MEMORY[0x2383DC360](v35);

    v36 = v80;
    v37 = v81;
    sub_2379E8624(&v82, &v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    v38 = v86;
    if (swift_dynamicCast())
    {
      (*v68)(v20, v22, v38);
      sub_237AEA510(v20, v74, v36, v37, v75);
      if (v4)
      {

        (*v69)(v20, v38);
        goto LABEL_27;
      }

      (*v69)(v20, v38);
    }

    else
    {
      v39 = v20;
      v40 = v71;
      v41 = v72;
      if (swift_dynamicCast())
      {
        v42 = v65;
        (*v63)(v65, v40, v41);
        sub_237AEB3DC(v42, v74, v36, v37, v75, MEMORY[0x277D2CE80], sub_237A7ED98, MEMORY[0x277D2CE70], MEMORY[0x277D2CE68], MEMORY[0x277D2CE58], MEMORY[0x277D2CE60]);
        if (v4)
        {

          (*v64)(v42, v41);
          goto LABEL_27;
        }

        (*v64)(v42, v41);
      }

      else
      {
        v43 = v66;
        v44 = v67;
        if (swift_dynamicCast())
        {
          v45 = v60;
          (*v58)(v60, v43, v44);
          sub_237AEB3DC(v45, v74, v36, v37, v75, MEMORY[0x277D2CE20], sub_237A7FBB8, MEMORY[0x277D2CE10], MEMORY[0x277D2CE08], MEMORY[0x277D2CDF8], MEMORY[0x277D2CE00]);
          if (v4)
          {

            (*v59)(v45, v44);
            goto LABEL_27;
          }

          (*v59)(v45, v44);
        }

        else
        {
          v46 = v61;
          v47 = v62;
          if ((swift_dynamicCast() & 1) == 0)
          {

            v78 = 0;
            v79 = 0xE000000000000000;
            sub_237C08EDC();
            MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C1B610);
            __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
            sub_237C0927C();
            MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C1B640);
            v50 = v78;
            v51 = v79;
            sub_2379E8AF0();
            swift_allocError();
            *v52 = v50;
            *(v52 + 8) = v51;
            *(v52 + 16) = 0u;
            *(v52 + 32) = 0u;
            *(v52 + 48) = 2;
            swift_willThrow();
            goto LABEL_28;
          }

          v48 = v46;
          v49 = v57;
          (*v55)(v57, v48, v47);
          sub_237AEBDFC(v49, v74, v36, v37, v75);
          if (v4)
          {

            (*v56)(v49, v47);
LABEL_27:

LABEL_28:
            __swift_destroy_boxed_opaque_existential_1(&v80);
            return __swift_destroy_boxed_opaque_existential_1(&v82);
          }

          (*v56)(v49, v47);
        }
      }

      v20 = v39;
      v28 = v70;
    }

    __swift_destroy_boxed_opaque_existential_1(&v80);
    result = __swift_destroy_boxed_opaque_existential_1(&v82);
  }

  __break(1u);
  return result;
}

uint64_t sub_237AEA2A4()
{
  _s13GraphCNNModelVMa(0);
  sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
  sub_237C0645C();
  sub_237C0906C();
  v0 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_237C0913C();
    if (!v15)
    {
      break;
    }

    sub_237AC1720(&v14, v13);
    sub_2379E8624(v13, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC48, &qword_237C12138);
    if (swift_dynamicCast())
    {
      sub_2379E8624(v13, &v9);
      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v13, v13[3]);
      v1 = *(sub_237C063AC() + 16);

      if (v1)
      {
        sub_2379E8624(v13, &v9);
      }

      else
      {
        v11 = 0;
        v9 = 0u;
        v10 = 0u;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_destroy_boxed_opaque_existential_1(v13);
    if (*(&v10 + 1))
    {
      sub_237AC1720(&v9, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = *(v0 + 16);
        sub_237BC114C();
        v0 = v4;
      }

      v2 = *(v0 + 16);
      if (v2 >= *(v0 + 24) >> 1)
      {
        sub_237BC114C();
        v0 = v5;
      }

      *(v0 + 16) = v2 + 1;
      sub_237AC1720(v12, v0 + 40 * v2 + 32);
    }

    else
    {
      sub_2379D9054(&v9, &qword_27DE9CC50, &unk_237C12140);
    }
  }

  return v0;
}

uint64_t sub_237AEA510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v143 = a3;
  v146 = a4;
  v133 = a2;
  v140 = a1;
  v7 = sub_237C060BC();
  v8 = *(v7 - 8);
  v127 = v7;
  v128 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v124 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v126 = &v109 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v130 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v132 = &v109 - v17;
  v136 = sub_237C0683C();
  v138 = *(v136 - 8);
  v18 = *(v138 + 64);
  v19 = MEMORY[0x28223BE20](v136);
  v129 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v131 = &v109 - v22;
  MEMORY[0x28223BE20](v21);
  v134 = &v109 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v135 = &v109 - v26;
  v139 = sub_237C069CC();
  v141 = *(v139 - 8);
  v27 = *(v141 + 64);
  v28 = MEMORY[0x28223BE20](v139);
  v30 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v109 - v31;
  v33 = sub_237C0697C();
  v137 = *(v33 - 8);
  v34 = *(v137 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_237ABDDA4();
  sub_237BAFA0C();
  v39 = v38;
  v40 = v142;
  sub_237A7E6C0(v143, v146, v36);
  v142 = v40;
  if (v40)
  {
  }

  v118 = v30;
  v122 = v39;
  v120 = a5;
  v121 = v5;
  v125 = v36;
  v123 = v33;
  sub_237C0693C();
  v42 = sub_237C0699C();
  v44 = v141 + 8;
  v43 = *(v141 + 8);
  v43(v32, v139);
  v45 = sub_237ACDA80(v42, v37);
  if (!v45)
  {

    v144 = 0;
    v145 = 0xE000000000000000;
    sub_237C08EDC();

    v144 = 0xD000000000000019;
    v145 = 0x8000000237C1B660;
    MEMORY[0x2383DC360](v143, v146);
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1B680);
    v64 = v144;
    v65 = v145;
    sub_2379E8AF0();
    swift_allocError();
    *v66 = v64;
    *(v66 + 8) = v65;
    *(v66 + 16) = 0u;
    *(v66 + 32) = 0u;
    *(v66 + 48) = 2;
    swift_willThrow();
    return (*(v137 + 8))(v125, v123);
  }

  v46 = v45;
  v116 = v43;
  v119 = v37;
  v141 = v44;
  v47 = v134;
  sub_237C0692C();
  v48 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess();
  v49 = sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
  v115 = v48;
  v50 = v135;
  v117 = v49;
  sub_237C063BC();
  v52 = v138 + 8;
  v51 = *(v138 + 8);
  v53 = v47;
  v54 = v136;
  v51(v53, v136);
  sub_2379D9054(v50, &qword_27DE9B410, &qword_237C0CCC8);
  swift_endAccess();
  v55 = v131;
  sub_237C0692C();
  v56 = v132;
  sub_237C0679C();
  v131 = v51;
  v51(v55, v54);
  v114 = sub_237C0610C();
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v114);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v58 = swift_allocObject();
  v113 = xmmword_237C0B660;
  *(v58 + 16) = xmmword_237C0B660;
  *(v58 + 56) = MEMORY[0x277D837D0];
  v59 = sub_237A8E8E4();
  *(v58 + 64) = v59;
  v60 = v146;
  *(v58 + 32) = v143;
  *(v58 + 40) = v60;

  v61 = sub_237C0871C();
  v62 = v142;
  sub_237AEC70C(v46, v56, v120, v61, v63);
  if (v62)
  {

    sub_2379D9054(v56, &qword_27DE9BEE0, &unk_237C12120);
    return (*(v137 + 8))(v125, v123);
  }

  v110 = v59;
  v111 = v57;
  v112 = v46;
  v67 = v125;
  v138 = v52;
  v142 = 0;
  sub_2379D9054(v56, &qword_27DE9BEE0, &unk_237C12120);

  v68 = v118;
  sub_237C0691C();
  v69 = sub_237C0699C();
  v116(v68, v139);
  v70 = sub_237ACDA80(v69, v119);

  if (v70)
  {
    v71 = v134;
    sub_237C0690C();
    swift_beginAccess();
    v72 = v135;
    sub_237C063BC();
    v73 = v136;
    v141 = v70;
    v74 = v131;
    (v131)(v71, v136);
    sub_2379D9054(v72, &qword_27DE9B410, &qword_237C0CCC8);
    swift_endAccess();
    v75 = v129;
    sub_237C0690C();
    v76 = v130;
    sub_237C0679C();
    v74(v75, v73);
    v77 = v141;
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v114);
    v78 = swift_allocObject();
    *(v78 + 16) = v113;
    v79 = v110;
    *(v78 + 56) = MEMORY[0x277D837D0];
    *(v78 + 64) = v79;
    *(v78 + 32) = v143;
    *(v78 + 40) = v146;

    v80 = sub_237C0871C();
    v81 = v142;
    sub_237AEC70C(v77, v76, v120, v80, v82);
    v83 = v137;
    if (v81)
    {

      sub_2379D9054(v76, &qword_27DE9BEE0, &unk_237C12120);
      v84 = *(v83 + 8);
      v85 = v67;
      return v84(v85, v123);
    }

    v142 = 0;
    sub_2379D9054(v76, &qword_27DE9BEE0, &unk_237C12120);

    v89 = v126;
    sub_237C068CC();
    v90 = sub_237C0609C();
    v92 = v128 + 8;
    v91 = *(v128 + 8);
    v91(v89, v127);
    v93 = v90;
    v94 = v122;
    v95 = sub_237ACDA80(v93, v122);
    v96 = v123;
    v139 = v95;
    if (v95)
    {
      sub_237C068BC();
      v128 = v92;
      swift_beginAccess();
      v97 = v135;
      sub_237C063BC();
      (v131)(v71, v136);
      sub_2379D9054(v97, &qword_27DE9B410, &qword_237C0CCC8);
      swift_endAccess();
      v98 = v124;
      sub_237C068EC();
      v99 = sub_237C0609C();
      v91(v98, v127);
      v100 = sub_237ACDA80(v99, v94);

      if (!v100)
      {
        v144 = 0;
        v145 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000019, 0x8000000237C1B660);
        MEMORY[0x2383DC360](v143, v146);
        MEMORY[0x2383DC360](0xD00000000000001DLL, 0x8000000237C1B6E0);
        v106 = v144;
        v107 = v145;
        sub_2379E8AF0();
        swift_allocError();
        *v108 = v106;
        *(v108 + 8) = v107;
        *(v108 + 16) = 0u;
        *(v108 + 32) = 0u;
        *(v108 + 48) = 2;
        swift_willThrow();

        v84 = *(v83 + 8);
        v85 = v125;
        return v84(v85, v123);
      }

      v101 = v125;
      sub_237C068DC();
      swift_beginAccess();
      v102 = v135;
      sub_237C063BC();
      (v131)(v71, v136);
      sub_2379D9054(v102, &qword_27DE9B410, &qword_237C0CCC8);
      swift_endAccess();

      return (*(v83 + 8))(v101, v123);
    }

    else
    {

      v144 = 0;
      v145 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000019, 0x8000000237C1B660);
      MEMORY[0x2383DC360](v143, v146);
      MEMORY[0x2383DC360](0xD000000000000019, 0x8000000237C1B6C0);
      v103 = v144;
      v104 = v145;
      sub_2379E8AF0();
      swift_allocError();
      *v105 = v103;
      *(v105 + 8) = v104;
      *(v105 + 16) = 0u;
      *(v105 + 32) = 0u;
      *(v105 + 48) = 2;
      swift_willThrow();

      return (*(v83 + 8))(v125, v96);
    }
  }

  else
  {

    v144 = 0;
    v145 = 0xE000000000000000;
    sub_237C08EDC();

    v144 = 0xD000000000000019;
    v145 = 0x8000000237C1B660;
    MEMORY[0x2383DC360](v143, v146);
    MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C1B6A0);
    v86 = v144;
    v87 = v145;
    sub_2379E8AF0();
    swift_allocError();
    *v88 = v86;
    *(v88 + 8) = v87;
    *(v88 + 16) = 0u;
    *(v88 + 32) = 0u;
    *(v88 + 48) = 2;
    swift_willThrow();

    return (*(v137 + 8))(v67, v123);
  }
}

uint64_t sub_237AEB3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, void, uint64_t), void (*a8)(uint64_t), void (*a9)(void), void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v133 = a8;
  v140 = a7;
  v143 = a4;
  v131 = a2;
  v136 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C810, &qword_237C12130);
  OUTLINED_FUNCTION_20(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v124 = v115 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  v21 = OUTLINED_FUNCTION_20(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_0();
  v123 = v24;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_58();
  v129 = v26;
  v137 = sub_237C0683C();
  v27 = OUTLINED_FUNCTION_0(v137);
  v132 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_0();
  v125 = v31;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_138();
  v128 = v33;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  *&v127 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v37 = OUTLINED_FUNCTION_20(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_0();
  v126 = v40;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58();
  v130 = v42;
  v135 = sub_237C069CC();
  v43 = OUTLINED_FUNCTION_0(v135);
  v138 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_0();
  v49 = v48 - v47;
  v50 = a6(0);
  OUTLINED_FUNCTION_0(v50);
  v134 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v54);
  v56 = v115 - v55;
  v57 = sub_237ABDDA4();
  v58 = v139;
  v59 = v140(a5, a3, v143);
  if (v58)
  {
  }

  v121 = v11;
  v122 = a5;
  v120 = 0;
  v139 = v50;
  v140 = a3;
  v61 = v137;
  v133(v59);
  v62 = sub_237C0699C();
  v63 = v138 + 8;
  v64 = *(v138 + 8);
  v64(v49, v135);
  v65 = sub_237ACDA80(v62, v57);
  if (v65)
  {
    v66 = v65;
    v116 = v64;
    v118 = v57;
    v138 = v63;
    v67 = v127;
    a9();
    v68 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
    v133 = v66;
    swift_beginAccess();
    OUTLINED_FUNCTION_8_31();
    v71 = sub_237AEE02C(v69, v70);
    v117 = v68;
    v72 = v133;
    v73 = v130;
    v115[2] = v71;
    sub_237C063BC();
    v74 = *(v132 + 8);
    v75 = v67;
    v76 = v132 + 8;
    v74(v75, v61);
    sub_2379D9054(v73, &qword_27DE9B410, &qword_237C0CCC8);
    v77 = swift_endAccess();
    v78 = v128;
    v119 = v56;
    (a9)(v77);
    v79 = v129;
    sub_237C0679C();
    v74(v78, v61);
    v128 = sub_237C0610C();
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v80 = swift_allocObject();
    v127 = xmmword_237C0B660;
    *(v80 + 16) = xmmword_237C0B660;
    *(v80 + 56) = MEMORY[0x277D837D0];
    v81 = sub_237A8E8E4();
    *(v80 + 64) = v81;
    v82 = v143;
    *(v80 + 32) = v140;
    *(v80 + 40) = v82;

    v83 = sub_237C0871C();
    v84 = v120;
    sub_237AEC70C(v72, v79, v122, v83, v85);
    if (v84)
    {

      sub_2379D9054(v79, &qword_27DE9BEE0, &unk_237C12120);
      OUTLINED_FUNCTION_51_5();
      v87 = v119;
    }

    else
    {
      v115[0] = v81;
      v115[1] = v74;
      v120 = v76;
      sub_2379D9054(v79, &qword_27DE9BEE0, &unk_237C12120);

      v92 = v126;
      v93 = v119;
      a10(v91);
      v94 = v137;
      if (__swift_getEnumTagSinglePayload(v92, 1, v137) == 1)
      {
        OUTLINED_FUNCTION_51_5();
        v95(v93, v139);

        return sub_2379D9054(v92, &qword_27DE9B410, &qword_237C0CCC8);
      }

      v96 = (*(v132 + 32))(v125, v92, v94);
      v97 = v124;
      a11(v96);
      v98 = v135;
      if (__swift_getEnumTagSinglePayload(v97, 1, v135) == 1)
      {

        sub_2379D9054(v97, &qword_27DE9C810, &qword_237C12130);
      }

      else
      {
        v99 = sub_237C0699C();
        v100 = OUTLINED_FUNCTION_128();
        v116(v100);
        v98 = v118;
        v101 = sub_237ACDA80(v99, v118);

        if (v101)
        {
          swift_beginAccess();
          v102 = v130;
          sub_237C063BC();
          sub_2379D9054(v102, &qword_27DE9B410, &qword_237C0CCC8);
          swift_endAccess();
          v103 = v123;
          sub_237C0679C();
          __swift_storeEnumTagSinglePayload(v103, 0, 1, v128);
          v104 = swift_allocObject();
          *(v104 + 16) = v127;
          v105 = v115[0];
          *(v104 + 56) = MEMORY[0x277D837D0];
          *(v104 + 64) = v105;
          *(v104 + 32) = v140;
          *(v104 + 40) = v82;

          v106 = sub_237C0871C();
          sub_237AEC70C(v101, v103, v122, v106, v107);
          v108 = v139;
          v109 = v134;

          sub_2379D9054(v103, &qword_27DE9BEE0, &unk_237C12120);
          OUTLINED_FUNCTION_44_10();
          v110();
          return (*(v109 + 8))(v119, v108);
        }
      }

      v141 = 0;
      v142 = 0xE000000000000000;
      sub_237C08EDC();

      MEMORY[0x2383DC360](v111, v82);
      MEMORY[0x2383DC360](v98 - 7, 0x8000000237C1B720);
      sub_2379E8AF0();
      v112 = swift_allocError();
      OUTLINED_FUNCTION_35_12(v112, v113);

      OUTLINED_FUNCTION_44_10();
      v114();
      OUTLINED_FUNCTION_51_5();
      v87 = v93;
    }
  }

  else
  {

    v141 = 0;
    v142 = 0xE000000000000000;
    sub_237C08EDC();

    MEMORY[0x2383DC360](v88, v143);
    MEMORY[0x2383DC360](v57 - 5, 0x8000000237C1B700);
    sub_2379E8AF0();
    v89 = swift_allocError();
    OUTLINED_FUNCTION_35_12(v89, v90);
    OUTLINED_FUNCTION_51_5();
    v87 = v56;
  }

  return v86(v87, v139);
}

uint64_t sub_237AEBDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v79 = a5;
  v80 = a3;
  v81 = a4;
  v62 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v57 - v11;
  v59 = _s13GraphCNNModelVMa(0);
  v13 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_237C069CC();
  v15 = *(v67 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v61 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v70 = &v57 - v22;
  v78 = sub_237C0683C();
  v23 = *(v78 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v78);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C062EC();
  v69 = a1;
  v27 = sub_237C0640C();
  v71 = *(v27 + 16);
  v84 = v7;
  v74 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  v28 = v26;
  result = swift_beginAccess();
  v30 = 0;
  v65 = (v23 + 32);
  v64 = (v15 + 8);
  v68 = (v23 + 8);
  v72 = v27;
  v31 = (v27 + 48);
  v60 = v26;
  v63 = v12;
  while (1)
  {
    if (v71 == v30)
    {
    }

    if (v30 >= *(v72 + 16))
    {
      break;
    }

    v32 = *(v31 - 2);
    v33 = *(v31 - 1);
    v77 = v31;
    v34 = *v31;

    v35 = v70;
    v36 = v80;
    sub_237A806E8(v32, v33, v80, v81, v79, v70);
    if (v6)
    {
    }

    v75 = v30;
    v37 = v78;
    if (__swift_getEnumTagSinglePayload(v35, 1, v78) == 1)
    {

      sub_2379D9054(v35, &qword_27DE9B410, &qword_237C0CCC8);
      v82 = 0;
      v83 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000025, 0x8000000237C1A910);
      MEMORY[0x2383DC360](v36, v81);
      MEMORY[0x2383DC360](0x74656D6172617020, 0xEB00000000207265);
      MEMORY[0x2383DC360](v32, v33);

      v51 = v82;
      v52 = v83;
      sub_2379E8AF0();
      swift_allocError();
      *v53 = v51;
      *(v53 + 8) = v52;
      *(v53 + 16) = 0u;
      *(v53 + 32) = 0u;
      *(v53 + 48) = 0;
      swift_willThrow();
    }

    v76 = v32;
    v38 = v81;
    (*v65)(v28, v35, v37);

    v39 = v66;
    swift_getAtKeyPath();

    v40 = sub_237C0699C();
    (*v64)(v39, v67);
    v41 = sub_237ABDDA4();
    if (*(v41 + 16) && (v42 = sub_237ACB20C(v40), (v43 & 1) != 0))
    {
      v44 = *(*(v41 + 56) + 8 * v42);

      v45 = v80;
    }

    else
    {
      v73 = v34;
      v45 = v80;

      v46 = v58;
      sub_237AF1B7C(v84 + v74, v58);
      sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
      v47 = sub_237C063DC();
      MEMORY[0x28223BE20](v47);
      *(&v57 - 2) = v46;
      *(&v57 - 2) = v40;
      v44 = sub_237AB9E1C(sub_237AC16C4, (&v57 - 4), v47);

      sub_237AF1BD8(v46, _s13GraphCNNModelVMa);
      if (!v44)
      {

        v82 = 0;
        v83 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000025, 0x8000000237C1A910);
        MEMORY[0x2383DC360](v45, v38);
        MEMORY[0x2383DC360](0x74656D6172617020, 0xEB00000000207265);
        MEMORY[0x2383DC360](v76, v33);

        v54 = v82;
        v55 = v83;
        sub_2379E8AF0();
        swift_allocError();
        *v56 = v54;
        *(v56 + 8) = v55;
        *(v56 + 16) = 0u;
        *(v56 + 32) = 0u;
        *(v56 + 48) = 0;
        swift_willThrow();

        return (*v68)(v60, v78);
      }

      v28 = v60;
    }

    swift_beginAccess();
    sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
    v48 = v61;
    sub_237C063BC();
    sub_2379D9054(v48, &qword_27DE9B410, &qword_237C0CCC8);
    swift_endAccess();
    v49 = sub_237C0610C();
    v50 = v63;
    __swift_storeEnumTagSinglePayload(v63, 1, 1, v49);
    v82 = v45;
    v83 = v38;

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    MEMORY[0x2383DC360](v76, v33);

    sub_237AEC70C(v44, v50, v79, v82, v83);

    sub_2379D9054(v50, &qword_27DE9BEE0, &unk_237C12120);
    result = (*v68)(v28, v78);
    v31 = v77 + 3;
    v30 = v75 + 1;
  }

  __break(1u);
  return result;
}

void sub_237AEC70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v48 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - v11;
  v13 = sub_237C0683C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v43 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v44 = &v38 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v42 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  sub_237AF1A38(a2, &v38 - v23);
  v25 = sub_237C0610C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v25);
  v46 = a4;
  v47 = a5;
  if (EnumTagSinglePayload != 1)
  {
    v45 = a3;
    v41 = v14;
    sub_237C060EC();
    (*(*(v25 - 8) + 8))(v24, v25);
    goto LABEL_13;
  }

  v40 = v25;
  sub_2379D9054(v24, &qword_27DE9BEE0, &unk_237C12120);
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_237C08EDC();

  v49 = a4;
  v50 = a5;

  MEMORY[0x2383DC360](0xD000000000000019, 0x8000000237C1A8B0);
  v27 = sub_237ACDA88(v49, v50, a3);

  if (!v27)
  {
    return;
  }

  v45 = a3;
  v41 = v14;
  v39 = v12;
  v28 = *(v27 + 16);
  if (!v28)
  {

    v12 = v39;
    v25 = v40;
LABEL_13:
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_237C08EDC();

    v49 = v46;
    v50 = v47;

    MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C1A890);
    v33 = sub_237ACDA88(v49, v50, v45);

    if (v33)
    {
      v34 = v42;
      sub_237C0611C();
      __swift_storeEnumTagSinglePayload(v34, 0, 1, v25);
      v35 = v43;
      sub_237B666C0(v34, v33, v43);

      sub_2379D9054(v34, &qword_27DE9BEE0, &unk_237C12120);
      v36 = v41;
      v37 = v44;
      (*(v41 + 32))(v44, v35, v13);
      (*(v36 + 16))(v12, v37, v13);
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
      LODWORD(v35) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110) + 56);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C808, &qword_237C10EE0);
      sub_237C0627C();
      (*(v36 + 8))(v37, v13);
    }

    else
    {
    }

    return;
  }

  v38 = v13;
  v49 = MEMORY[0x277D84F90];
  sub_237AC8A34();
  v29 = 32;
  v30 = v49;
  while (1)
  {
    v31 = *(v27 + v29);
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v31 <= -9.22337204e18)
    {
      goto LABEL_19;
    }

    if (v31 >= 9.22337204e18)
    {
      goto LABEL_20;
    }

    v49 = v30;
    v32 = *(v30 + 16);
    if (v32 >= *(v30 + 24) >> 1)
    {
      sub_237AC8A34();
      v30 = v49;
    }

    *(v30 + 16) = v32 + 1;
    *(v30 + 8 * v32 + 32) = v31;
    v29 += 8;
    if (!--v28)
    {

      v13 = v38;
      v12 = v39;
      v25 = v40;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_237AECC58(uint64_t a1, uint64_t a2)
{
  v4 = 0xD000000000000033;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3C0, &unk_237C0CC60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (v27 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3C8, &unk_237C12150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  v13 = sub_237ACDA88(0x676E696E7261656CLL, 0xEC00000065746152, a2);
  if (!v13)
  {
    v4 = 0xD000000000000037;
LABEL_20:
    sub_2379E8AF0();
    swift_allocError();
    *v26 = v4;
    *(v26 + 8) = v14 | 0x8000000000000000;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 2;
    return swift_willThrow();
  }

  v15 = v13;
  if (*(v13 + 16) != 1)
  {
    v4 = 0xD000000000000037;
    goto LABEL_19;
  }

  v27[1] = a1;
  v16 = sub_237ACDA88(0x6D75746E656D6F6DLL, 0xE800000000000000, a2);
  v14 = "e checkpoint dictionary";
  if (!v16)
  {
LABEL_19:

    goto LABEL_20;
  }

  v17 = v16;
  if (*(v16 + 16) != 1)
  {
LABEL_18:

    goto LABEL_19;
  }

  result = sub_237ACDA88(0xD000000000000014, 0x8000000237C1A960, a2);
  v14 = "eckpoint dictionary";
  if (!result)
  {
LABEL_17:
    v4 = 0xD00000000000003FLL;
    goto LABEL_18;
  }

  v19 = result;
  if (*(result + 16) != 1)
  {

    goto LABEL_17;
  }

  if (!*(v15 + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  v20 = *(v15 + 32);

  if (!*(v17 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = *(v17 + 32);

  if (!*(v19 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v22 = *(v19 + 32);

  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 > -9.22337204e18)
  {
    if (v22 < 9.22337204e18)
    {
      v23 = sub_237C061EC();
      __swift_storeEnumTagSinglePayload(v12, 1, 1, v23);
      *v8 = 981668463;
      v24 = *MEMORY[0x277D2CD68];
      v25 = sub_237C061BC();
      (*(*(v25 - 8) + 104))(v8, v24, v25);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v25);
      _s13GraphCNNModelVMa(0);
      sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
      return sub_237C0628C();
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_237AED020(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3C0, &unk_237C0CC60);
  OUTLINED_FUNCTION_20(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = (&v66 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3C8, &unk_237C12150);
  OUTLINED_FUNCTION_20(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v67 = &v66 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);
  OUTLINED_FUNCTION_20(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v68 = &v66 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_20(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v33 = &v66 - v32;
  v34 = _s13GraphCNNModelVMa(0);
  v35 = OUTLINED_FUNCTION_4(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_0();
  v40 = v39 - v38;
  v6[2] = a1;
  v6[3] = a3;
  v6[4] = a4;
  *(v40 + *(v41 + 36)) = a2;
  *(v40 + *(v41 + 40)) = a5;
  sub_237C0623C();

  sub_237C0622C();
  v42 = sub_237C0621C();
  OUTLINED_FUNCTION_21_22(v43, v44, v42, v42);
  v45 = sub_237C0616C();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v45);
  OUTLINED_FUNCTION_17_3();
  sub_237C0620C();
  sub_2379D9054(v33, &qword_27DE9ACC8, &qword_237C10CF0);
  v46 = v40 + v34[5];
  sub_237C0636C();
  v47 = sub_237C0622C();
  v48 = sub_237C0621C();
  v49 = v40 + v34[6];
  OUTLINED_FUNCTION_34_11(v47, v48, v50, v51);
  v52 = v40 + v34[7];
  OUTLINED_FUNCTION_17_3();
  sub_237C0687C();
  v53 = *(a1 + 16);

  v54 = v40 + v34[8];
  sub_237AEFBD8(v54);
  sub_237C061CC();
  OUTLINED_FUNCTION_7_32(v33, 1, 1, v45);
  sub_237C0620C();
  sub_2379D9054(v33, &qword_27DE9ACC8, &qword_237C10CF0);
  sub_237C0622C();
  v55 = OUTLINED_FUNCTION_87();
  v56 = v54 + *(_s5TorsoVMa(v55) + 24);
  sub_237C0636C();
  v57 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  sub_237AF1AA8(v40, v6 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model);
  swift_beginAccess();
  sub_237AF1B7C(v6 + v57, v40);
  v58 = sub_237C061EC();
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v58);
  *v17 = 981668463;
  v59 = *MEMORY[0x277D2CD68];
  v60 = sub_237C061BC();
  OUTLINED_FUNCTION_4(v60);
  (*(v61 + 104))(v17, v59, v60);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v60);
  OUTLINED_FUNCTION_8_31();
  sub_237AEE02C(v62, v63);
  v64 = v68;
  sub_237C0628C();
  sub_237AF1BD8(v40, _s13GraphCNNModelVMa);
  sub_237AF1B0C(v64, v6 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer);
  return v6;
}

uint64_t sub_237AED4B0()
{
  v1 = *(v0 + 16);

  sub_237AF1BD8(v0 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, _s13GraphCNNModelVMa);
  sub_2379D9054(v0 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer, &qword_27DE9C7B8, &unk_237C12110);
  return v0;
}

uint64_t sub_237AED514()
{
  sub_237AED4B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_237AED594()
{
  v0 = _s13GraphCNNModelVMa(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_237AED6A0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_237AED6A0()
{
  if (!qword_27DE9CA58)
  {
    _s13GraphCNNModelVMa(255);
    sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
    v0 = sub_237C062AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9CA58);
    }
  }
}

uint64_t sub_237AED748(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_5_31();
  v6 = sub_237C0697C();
  OUTLINED_FUNCTION_135(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_7_3();
  }

  else
  {
    v10 = sub_237C0638C();
    v11 = OUTLINED_FUNCTION_135(v10);
    if (*(v12 + 84) == v3)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      v14 = sub_237C0688C();
      v15 = OUTLINED_FUNCTION_135(v14);
      if (*(v16 + 84) == v3)
      {
        v9 = v15;
        v13 = a3[7];
      }

      else
      {
        v17 = _s5TorsoVMa(0);
        v18 = OUTLINED_FUNCTION_135(v17);
        if (*(v19 + 84) != v3)
        {
          v21 = *(v4 + a3[9]);
          if (v21 >= 2)
          {
            return OUTLINED_FUNCTION_53_7(v21);
          }

          else
          {
            return 0;
          }
        }

        v9 = v18;
        v13 = a3[8];
      }
    }

    v8 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v9);
}

uint64_t sub_237AED8E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_5_31();
  v8 = sub_237C0697C();
  OUTLINED_FUNCTION_135(v8);
  if (*(v9 + 84) == a3)
  {
    OUTLINED_FUNCTION_47_10();
  }

  else
  {
    v10 = sub_237C0638C();
    OUTLINED_FUNCTION_135(v10);
    if (*(v11 + 84) == a3)
    {
      v12 = a4[5];
    }

    else
    {
      v13 = sub_237C0688C();
      OUTLINED_FUNCTION_135(v13);
      if (*(v14 + 84) == a3)
      {
        v15 = a4[7];
      }

      else
      {
        v16 = _s5TorsoVMa(0);
        result = OUTLINED_FUNCTION_135(v16);
        if (*(v18 + 84) != a3)
        {
          *(v5 + a4[9]) = v4 + 1;
          return result;
        }

        v19 = a4[8];
      }
    }
  }

  OUTLINED_FUNCTION_55_7();

  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

uint64_t sub_237AEDA38()
{
  v0 = sub_237C0697C();
  if (v1 <= 0x3F)
  {
    v2 = sub_237C0638C();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      v0 = sub_237C0688C();
      if (v4 <= 0x3F)
      {
        v0 = _s5TorsoVMa(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

uint64_t sub_237AEDB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_5_31();
  v7 = _s17SingleStreamBlockVMa(v6);
  OUTLINED_FUNCTION_135(v7);
  if (*(v8 + 84) == v3)
  {
    v9 = OUTLINED_FUNCTION_7_3();
  }

  else
  {
    v10 = sub_237C0638C();
    v9 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v10);
}

uint64_t sub_237AEDBF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_5_31();
  v8 = _s17SingleStreamBlockVMa(v7);
  OUTLINED_FUNCTION_135(v8);
  if (*(v9 + 84) == a3)
  {
    OUTLINED_FUNCTION_47_10();
  }

  else
  {
    sub_237C0638C();
    v10 = v4 + *(a4 + 24);
  }

  OUTLINED_FUNCTION_55_7();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_237AEDC84()
{
  result = _s17SingleStreamBlockVMa(319);
  if (v1 <= 0x3F)
  {
    result = sub_237C0638C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237AEDD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA80, &qword_237C11B78);
  OUTLINED_FUNCTION_135(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_7_3();
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA88, &unk_237C11B80);
    v8 = a1 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v9);
}

uint64_t sub_237AEDDE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA80, &qword_237C11B78);
  OUTLINED_FUNCTION_135(v7);
  if (*(v8 + 84) == a3)
  {
    OUTLINED_FUNCTION_47_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA88, &unk_237C11B80);
    v9 = a1 + *(a4 + 32);
  }

  OUTLINED_FUNCTION_55_7();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_237AEDE94()
{
  sub_237AEDF70(319, &qword_27DE9CAA0, _s24DownsampledResidualLayerVMa);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_237AEDF70(319, qword_27DE9CAB0, _s13ResidualLayerVMa);
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

void sub_237AEDF70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = _s16InvertedResidualVMa(255);
    v7 = sub_237AEE02C(&qword_27DE9CAA8, _s16InvertedResidualVMa);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_237AEE02C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237AEE0A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237AEE114(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237AEE260(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x237AEE464);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_237AEE4A0(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_5_31();
  v6 = sub_237C065CC();
  OUTLINED_FUNCTION_135(v6);
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_7_3();
  }

  else
  {
    if (v3 == 254)
    {
      v10 = *(v4 + a3[5] + 48);
      if (v10 >= 2)
      {
        return OUTLINED_FUNCTION_53_7(v10);
      }

      else
      {
        return 0;
      }
    }

    v12 = sub_237C0697C();
    v13 = OUTLINED_FUNCTION_135(v12);
    if (*(v14 + 84) == v3)
    {
      v9 = v13;
      v15 = a3[7];
    }

    else
    {
      v9 = sub_237C0688C();
      v15 = a3[8];
    }

    v8 = v4 + v15;
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v9);
}

uint64_t sub_237AEE5B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_5_31();
  v8 = sub_237C065CC();
  result = OUTLINED_FUNCTION_135(v8);
  if (*(v10 + 84) == a3)
  {
    OUTLINED_FUNCTION_47_10();
  }

  else
  {
    if (a3 == 254)
    {
      *(v5 + a4[5] + 48) = v4 + 1;
      return result;
    }

    v11 = sub_237C0697C();
    OUTLINED_FUNCTION_135(v11);
    if (*(v12 + 84) == a3)
    {
      v13 = a4[7];
    }

    else
    {
      sub_237C0688C();
      v14 = a4[8];
    }
  }

  OUTLINED_FUNCTION_55_7();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_237AEE6B0()
{
  result = sub_237C065CC();
  if (v1 <= 0x3F)
  {
    result = sub_237C0697C();
    if (v2 <= 0x3F)
    {
      result = sub_237C0688C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237AEE75C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_237C065CC();
    if (v4 <= 0x3F)
    {
      result = sub_237C0697C();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237AEE7FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v29 = *(a3 + 16);
  v5 = *(v29 - 8);
  v6 = *(v5 + 84);
  v28 = sub_237C065CC();
  v7 = *(v28 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = sub_237C0697C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  v16 = *(v11 + 80);
  if (!a2)
  {
    return 0;
  }

  v17 = v10;
  v18 = *(v5 + 64) + v14;
  if (a2 <= v13)
  {
LABEL_28:
    if (v6 == v13)
    {
      v26 = a1;
      v12 = v6;
      v17 = v29;
    }

    else
    {
      v26 = (a1 + v18) & ~v14;
      if (v8 == v13)
      {
        v12 = v8;
        v17 = v28;
      }

      else
      {
        v26 = (v26 + v15 + v16) & ~v16;
      }
    }

    return __swift_getEnumTagSinglePayload(v26, v12, v17);
  }

  v19 = ((v15 + v16 + (v18 & ~v14)) & ~v16) + *(*(v10 - 8) + 64);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v22 < 2)
    {
LABEL_27:
      if (v13)
      {
        goto LABEL_28;
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_27;
  }

LABEL_17:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    switch(v24)
    {
      case 2:
        v25 = *a1;
        break;
      case 3:
        v25 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v25 = *a1;
        break;
      default:
        v25 = *a1;
        break;
    }
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v23) + 1;
}

void sub_237AEEAE0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v32 = *(a4 + 16);
  v6 = *(v32 - 8);
  v7 = *(v6 + 84);
  v31 = sub_237C065CC();
  v8 = *(v31 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_237C0697C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v8 + 80);
  v16 = *(v6 + 64) + v15;
  v17 = *(v8 + 64);
  v18 = *(v12 + 80);
  v19 = ((v17 + v18 + (v16 & ~v15)) & ~v18) + *(*(v11 - 8) + 64);
  v20 = 8 * v19;
  if (a3 <= v14)
  {
    v23 = 0;
    v21 = a1;
    v22 = a2;
  }

  else
  {
    v21 = a1;
    v22 = a2;
    if (v19 <= 3)
    {
      v27 = ((a3 - v14 + ~(-1 << v20)) >> v20) + 1;
      if (HIWORD(v27))
      {
        v23 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v23 = v28;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v14 < v22)
  {
    v24 = ~v14 + v22;
    if (v19 < 4)
    {
      v25 = (v24 >> v20) + 1;
      if (v19)
      {
        v29 = v24 & ~(-1 << v20);
        bzero(v21, v19);
        if (v19 == 3)
        {
          *v21 = v29;
          v21[2] = BYTE2(v29);
        }

        else if (v19 == 2)
        {
          *v21 = v29;
        }

        else
        {
          *v21 = v24;
        }
      }
    }

    else
    {
      bzero(v21, v19);
      *v21 = v24;
      v25 = 1;
    }

    switch(v23)
    {
      case 1:
        v21[v19] = v25;
        return;
      case 2:
        *&v21[v19] = v25;
        return;
      case 3:
        goto LABEL_48;
      case 4:
        *&v21[v19] = v25;
        return;
      default:
        return;
    }
  }

  v26 = ~v15;
  switch(v23)
  {
    case 1:
      v21[v19] = 0;
      if (!v22)
      {
        return;
      }

      goto LABEL_30;
    case 2:
      *&v21[v19] = 0;
      if (!v22)
      {
        return;
      }

      goto LABEL_30;
    case 3:
LABEL_48:
      __break(1u);
      JUMPOUT(0x237AEEE38);
    case 4:
      *&v21[v19] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (v22)
      {
LABEL_30:
        if (v7 == v14)
        {
          v30 = v21;
          v13 = v7;
          v11 = v32;
        }

        else
        {
          v30 = &v21[v16] & v26;
          if (v9 == v14)
          {
            v13 = v9;
            v11 = v31;
          }

          else
          {
            v30 = (v30 + v17 + v18) & ~v18;
          }
        }

        __swift_storeEnumTagSinglePayload(v30, v22, v13, v11);
      }

      return;
  }
}

uint64_t sub_237AEEE60()
{
  v1 = _s13GraphCNNModelVMa(0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess();
  sub_237AF1B7C(v0 + v8, v7);
  OUTLINED_FUNCTION_8_31();
  sub_237AEE02C(v9, v10);
  OUTLINED_FUNCTION_31_13();
  sub_237C063CC();
  return sub_237AF1BD8(v7, _s13GraphCNNModelVMa);
}

void sub_237AEEF64()
{
  OUTLINED_FUNCTION_153();
  v2 = v1;
  v4 = v3;
  v63 = sub_237C0610C();
  v5 = OUTLINED_FUNCTION_0(v63);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  v11 = v10;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  v14 = v53 - v13;
  v15 = sub_237C0683C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  (*(v18 + 16))(v4, v2, v15);
  v58 = _s13GraphCNNModelVMa(0);
  v21 = *(v58 + 36);
  v61 = v0;
  v60 = *(v0 + v21);
  if (v60 == 1)
  {
    sub_237C0664C();
    v22 = *(v18 + 8);
    v23 = OUTLINED_FUNCTION_31_13();
    v24(v23);
    v25 = *(v18 + 32);
    v26 = OUTLINED_FUNCTION_14_22();
    v27(v26);
  }

  sub_237C065EC();
  v28 = *(v18 + 8);
  v29 = OUTLINED_FUNCTION_31_13();
  v28(v29);
  v62 = *(v18 + 32);
  v30 = OUTLINED_FUNCTION_14_22();
  v31(v30);
  sub_237C0679C();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v32 = v14;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_237C0BC00;
  *(v33 + 32) = sub_237C0612C();
  v59 = v32;
  *(v33 + 40) = sub_237C0612C();
  *(v33 + 48) = xmmword_237C11B20;
  sub_237C0611C();
  sub_237C0681C();
  v34 = *(v7 + 8);
  v55 = v7 + 8;
  v56 = v34;
  v34(v11, v63);
  v35 = OUTLINED_FUNCTION_31_13();
  v28(v35);
  v36 = OUTLINED_FUNCTION_14_22();
  v37 = v62;
  v62(v36);
  sub_237AEF400();
  v38 = OUTLINED_FUNCTION_31_13();
  v28(v38);
  v53[1] = v18 + 8;
  v54 = v28;
  v39 = OUTLINED_FUNCTION_14_22();
  v37(v39);
  v58 = *(v58 + 32);
  _s5TorsoVMa(0);
  sub_237AEE02C(&qword_27DE9CC28, _s5TorsoVMa);
  sub_237C063CC();
  v40 = OUTLINED_FUNCTION_31_13();
  v28(v40);
  v41 = OUTLINED_FUNCTION_14_22();
  v37(v41);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_237C0B670;
  sub_237C0679C();
  v43 = sub_237C0612C();
  v44 = v63;
  v45 = v56;
  v56(v11, v63);
  *(v42 + 32) = v43;
  *(v42 + 40) = -1;
  sub_237C0611C();
  sub_237C0681C();
  v46 = v54;
  v47 = v11;
  v48 = v62;
  v45(v47, v44);
  v49 = OUTLINED_FUNCTION_31_13();
  v46(v49);
  v50 = OUTLINED_FUNCTION_14_22();
  v61 = v18 + 32;
  v48(v50);
  if (v60)
  {
    sub_237C0689C();
    v45(v59, v44);
    v51 = OUTLINED_FUNCTION_31_13();
    v46(v51);
    v52 = OUTLINED_FUNCTION_14_22();
    v48(v52);
  }

  else
  {
    v45(v59, v44);
  }

  OUTLINED_FUNCTION_150();
}

void sub_237AEF400()
{
  OUTLINED_FUNCTION_153();
  v79[3] = v2;
  v3 = sub_237C0610C();
  v93 = OUTLINED_FUNCTION_0(v3);
  v94 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_14_0();
  v83 = v7;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_138();
  v90 = v9;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_124_0();
  v11 = sub_237C0683C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_0();
  v86 = v17;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_138();
  v79[1] = v19;
  OUTLINED_FUNCTION_39_0();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v79 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v79 - v24;
  sub_237C065EC();
  v79[2] = sub_237C0697C();
  v92 = v0;
  sub_237C063CC();
  v26 = v14 + 8;
  v27 = *(v14 + 8);
  v28 = OUTLINED_FUNCTION_29_11();
  v27(v28);
  v82 = v14;
  v30 = *(v14 + 32);
  v29 = v14 + 32;
  v31 = OUTLINED_FUNCTION_38_9();
  v30(v31);
  sub_237C065EC();
  v32 = OUTLINED_FUNCTION_29_11();
  v27(v32);
  v33 = OUTLINED_FUNCTION_38_9();
  v30(v33);
  sub_237C0665C();
  v34 = OUTLINED_FUNCTION_29_11();
  v87 = v26;
  v89 = v27;
  v27(v34);
  v80 = v11;
  v88 = v30;
  (v30)(v25, v23, v11);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_237C0B670;
  sub_237C0679C();
  v36 = sub_237C0612C();
  v37 = v94 + 8;
  v38 = *(v94 + 8);
  v81 = v1;
  v39 = OUTLINED_FUNCTION_42_9();
  v38(v39);
  OUTLINED_FUNCTION_56_6();
  v40 = sub_237C0612C();
  v41 = OUTLINED_FUNCTION_42_9();
  v94 = v37;
  v91 = v38;
  v38(v41);
  if ((v36 * v40) >> 64 != (v36 * v40) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v35 + 32) = v36 * v40;
  v42 = v81;
  OUTLINED_FUNCTION_56_6();
  v43 = sub_237C0612C();
  v44 = OUTLINED_FUNCTION_42_9();
  v45 = v91;
  v91(v44);
  *(v35 + 40) = v43;
  sub_237C0611C();
  sub_237C0681C();
  v46 = OUTLINED_FUNCTION_42_9();
  v45(v46);
  v47 = v80;
  v48 = v29;
  v49 = v89;
  (v89)(v25, v80);
  v50 = OUTLINED_FUNCTION_38_9();
  v51 = v88;
  v88(v50);
  v52 = _s13GraphCNNModelVMa(0);
  v53 = *(v52 + 20);
  sub_237C0638C();
  sub_237C063CC();
  v54 = OUTLINED_FUNCTION_29_11();
  v49(v54);
  v79[0] = v23;
  v84 = v48;
  v51(v25, v23, v47);
  (*(v82 + 16))(v86, v25, v47);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_237C0B680;
  v56 = v83;
  sub_237C0679C();
  v57 = sub_237C0612C();
  v58 = v91;
  (v91)(v56, v93);
  v83 = v52;
  v59 = *(v92 + *(v52 + 40));
  if (!v59)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v57 != 0x8000000000000000 || v59 != -1)
  {
    *(v55 + 32) = v57 / v59;
    *(v55 + 40) = v59;
    OUTLINED_FUNCTION_56_6();
    v61 = sub_237C0612C();
    v58(v42, v93);
    *(v55 + 48) = v61;
    sub_237C0611C();
    v62 = v86;
    sub_237C0681C();
    v63 = OUTLINED_FUNCTION_128();
    (v58)(v63);
    v64 = v89;
    (v89)(v62, v47);
    v65 = OUTLINED_FUNCTION_29_11();
    v64(v65);
    v66 = OUTLINED_FUNCTION_28_11();
    v67 = v58;
    v68 = v88;
    v88(v66);
    OUTLINED_FUNCTION_56_6();
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_237C0BC00;
    *(v69 + 32) = sub_237C0612C();
    *(v69 + 40) = sub_237C0612C();
    *(v69 + 48) = sub_237C0612C() / 16;
    *(v69 + 56) = 16;
    v70 = v90;
    sub_237C0611C();
    sub_237C0681C();
    v67(v70, v93);
    v71 = OUTLINED_FUNCTION_29_11();
    v64(v71);
    v72 = OUTLINED_FUNCTION_28_11();
    v68(v72);
    sub_237C065EC();
    v73 = OUTLINED_FUNCTION_29_11();
    v64(v73);
    v74 = OUTLINED_FUNCTION_28_11();
    v68(v74);
    v75 = v92 + *(v83 + 24);
    sub_237C063CC();
    v76 = OUTLINED_FUNCTION_29_11();
    v64(v76);
    v77 = OUTLINED_FUNCTION_28_11();
    v68(v77);
    sub_237C062FC();
    v67(v42, v93);
    v78 = OUTLINED_FUNCTION_29_11();
    v64(v78);
    OUTLINED_FUNCTION_150();
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_237AEFAD8()
{
  sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);

  return sub_237C0642C();
}

uint64_t sub_237AEFB54()
{
  sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);

  return sub_237C0643C();
}

uint64_t sub_237AEFBD8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_52_8();
  v6 = _s16InvertedResidualVMa(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  sub_237C0623C();
  OUTLINED_FUNCTION_87();
  v12 = sub_237C0616C();
  v13 = OUTLINED_FUNCTION_2_52();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_17_3();
  sub_237C0620C();
  sub_2379D9054(v1, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_36_10();
  *v17 = v144;
  *(v17 + 16) = v145;
  *(v17 + 32) = v146;
  *(v17 + 48) = v147;
  v18 = OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_7_32(v18, v19, v20, v21);
  sub_237C0620C();
  sub_2379D9054(v1, &qword_27DE9ACC8, &qword_237C10CF0);
  v22 = v7[8];
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_26_15();
  v23 = sub_237C0622C();
  v24 = sub_237C0621C();
  v25 = v11 + v7[9];
  OUTLINED_FUNCTION_34_11(v23, v24, v26, v27);
  v28 = v11 + v7[10];
  OUTLINED_FUNCTION_17_3();
  sub_237C0687C();
  sub_237AF1B7C(v11, a1);
  v29 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v29, v30, v31, v12);
  sub_237C0620C();
  sub_2379D9054(v1, &qword_27DE9ACC8, &qword_237C10CF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA80, &qword_237C11B78);
  v33 = *(v32 + 36);
  OUTLINED_FUNCTION_1_51();
  v34 = sub_237C0622C();
  v35 = sub_237C0621C();
  v36 = a1 + *(v32 + 40);
  OUTLINED_FUNCTION_34_11(v34, v35, v37, v38);
  sub_237AF1BD8(v11, _s16InvertedResidualVMa);
  v141 = _s17SingleStreamBlockVMa(0);
  v39 = a1 + v141[5];
  v40 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v40, v41, v42, v12);
  sub_237C0620C();
  v43 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v43, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_12_28();
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_36_10();
  *v44 = v148;
  *(v44 + 16) = v149;
  *(v44 + 32) = v150;
  *(v44 + 48) = v151;
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  v45 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v45, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_26_15();
  sub_237C0622C();
  v46 = sub_237C0621C();
  OUTLINED_FUNCTION_16_19(v46, v47, v48);
  OUTLINED_FUNCTION_15_25();
  sub_237AF1B7C(v11, v39);
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  v49 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v49, &qword_27DE9ACC8, &qword_237C10CF0);
  v50 = *(v32 + 36);
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_1_51();
  sub_237C0622C();
  v51 = sub_237C0621C();
  v52 = v39 + *(v32 + 40);
  OUTLINED_FUNCTION_21_22(v53, v54, v51, v51);
  sub_237AF1BD8(v11, _s16InvertedResidualVMa);
  v138 = a1 + v141[6];
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  v55 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v55, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_12_28();
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_36_10();
  *v56 = v152;
  *(v56 + 16) = v153;
  *(v56 + 32) = v154;
  *(v56 + 48) = v155;
  v57 = OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_7_32(v57, v58, v59, v60);
  sub_237C0620C();
  v61 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v61, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_26_15();
  sub_237C0622C();
  v62 = sub_237C0621C();
  OUTLINED_FUNCTION_16_19(v62, v63, v64);
  OUTLINED_FUNCTION_15_25();
  sub_237AF1B7C(v11, v138);
  v65 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v65, v66, v67, v12);
  sub_237C0620C();
  v68 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v68, &qword_27DE9ACC8, &qword_237C10CF0);
  v69 = *(v32 + 36);
  OUTLINED_FUNCTION_1_51();
  sub_237C0622C();
  v70 = sub_237C0621C();
  v71 = v138 + *(v32 + 40);
  OUTLINED_FUNCTION_21_22(v72, v73, v70, v70);
  sub_237AF1BD8(v11, _s16InvertedResidualVMa);
  v139 = a1 + v141[7];
  v74 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v74, v75, v76, v12);
  sub_237C0620C();
  v77 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v77, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_12_28();
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_36_10();
  *v78 = v156;
  *(v78 + 16) = v157;
  *(v78 + 32) = v158;
  *(v78 + 48) = v159;
  v79 = OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_7_32(v79, v80, v81, v82);
  sub_237C0620C();
  v83 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v83, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_26_15();
  sub_237C0622C();
  v84 = sub_237C0621C();
  OUTLINED_FUNCTION_16_19(v84, v85, v86);
  OUTLINED_FUNCTION_15_25();
  sub_237AF1B7C(v11, v139);
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  v87 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v87, &qword_27DE9ACC8, &qword_237C10CF0);
  v88 = *(v32 + 36);
  OUTLINED_FUNCTION_30_15();
  sub_237C0652C();
  sub_237C0622C();
  v89 = sub_237C0621C();
  v90 = v139 + *(v32 + 40);
  OUTLINED_FUNCTION_21_22(v91, v92, v89, v89);
  sub_237AF1BD8(v11, _s16InvertedResidualVMa);
  v93 = a1 + v141[8];
  v94 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v94, v95, v96, v12);
  sub_237C0620C();
  v97 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v97, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_12_28();
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_4_46();
  v98 = v93 + v7[7];
  *v98 = v160;
  *(v98 + 16) = v161;
  *(v98 + 32) = v162;
  *(v98 + 48) = v163;
  v99 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v99, v100, v101, v12);
  sub_237C0620C();
  v102 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v102, &qword_27DE9ACC8, &qword_237C10CF0);
  v103 = v7[8];
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_26_15();
  sub_237C0622C();
  v104 = sub_237C0621C();
  v105 = v93 + v7[9];
  OUTLINED_FUNCTION_21_22(v106, v107, v104, v104);
  v108 = v93 + v7[10];
  OUTLINED_FUNCTION_17_3();
  sub_237C0687C();
  v140 = a1 + v141[9];
  v109 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v109, v110, v111, v12);
  sub_237C0620C();
  v112 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v112, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_12_28();
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_36_10();
  *v113 = v164;
  *(v113 + 16) = v165;
  *(v113 + 32) = v166;
  *(v113 + 48) = v167;
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  v114 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v114, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_26_15();
  sub_237C0622C();
  v115 = sub_237C0621C();
  OUTLINED_FUNCTION_16_19(v115, v116, v117);
  OUTLINED_FUNCTION_15_25();
  sub_237AF1B7C(v11, v140);
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  v118 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v118, &qword_27DE9ACC8, &qword_237C10CF0);
  v119 = *(v32 + 36);
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_30_15();
  sub_237C0652C();
  sub_237C0622C();
  v120 = sub_237C0621C();
  v121 = v140 + *(v32 + 40);
  OUTLINED_FUNCTION_21_22(v122, v123, v120, v120);
  sub_237AF1BD8(v11, _s16InvertedResidualVMa);
  v143 = a1 + v141[10];
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  sub_2379D9054(v1, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_36_10();
  *v124 = v168;
  *(v124 + 16) = v169;
  *(v124 + 32) = v170;
  *(v124 + 48) = v171;
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  sub_2379D9054(v1, &qword_27DE9ACC8, &qword_237C10CF0);
  v125 = v7[8];
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_26_15();
  v126 = sub_237C0622C();
  v127 = sub_237C0621C();
  v128 = v11 + v7[9];
  OUTLINED_FUNCTION_34_11(v126, v127, v129, v130);
  OUTLINED_FUNCTION_15_25();
  sub_237AF1B7C(v11, v143);
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  sub_2379D9054(v1, &qword_27DE9ACC8, &qword_237C10CF0);
  v131 = *(v32 + 36);
  OUTLINED_FUNCTION_1_51();
  v132 = sub_237C0622C();
  v133 = sub_237C0621C();
  v134 = v143 + *(v32 + 40);
  OUTLINED_FUNCTION_34_11(v132, v133, v135, v136);
  return sub_237AF1BD8(v11, _s16InvertedResidualVMa);
}

uint64_t sub_237AF07C8()
{
  v1 = sub_237C0683C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_40_11();
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  _s17SingleStreamBlockVMa(0);
  sub_237AEE02C(&qword_27DE9CC30, _s17SingleStreamBlockVMa);
  sub_237C063CC();
  sub_237C063CC();
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_58_0();
  v10(v11);
  (*(v4 + 32))(v9, v0, v1);
  v12 = *(_s5TorsoVMa(0) + 24);
  sub_237C0638C();
  sub_237C063CC();
  v13 = OUTLINED_FUNCTION_58_0();
  return (v10)(v13);
}

uint64_t sub_237AF096C()
{
  sub_237AEE02C(&qword_27DE9CC28, _s5TorsoVMa);

  return sub_237C0642C();
}

uint64_t sub_237AF09E8()
{
  sub_237AEE02C(&qword_27DE9CC28, _s5TorsoVMa);

  return sub_237C0643C();
}

void sub_237AF0A6C()
{
  OUTLINED_FUNCTION_153();
  v27[4] = v0;
  v34 = v1;
  v2 = sub_237C0683C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  v6 = MEMORY[0x28223BE20](v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v27 - v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_138();
  v28 = v10;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_138();
  v30 = v12;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  v32 = v14;
  v15 = _s17SingleStreamBlockVMa(0);
  v16 = v15[9];
  v33 = v15[10];
  v31 = v16;
  v17 = v15[7];
  v29 = v15[8];
  v18 = v15[5];
  v27[2] = v15[6];
  v27[3] = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA80, &qword_237C11B78);
  sub_2379D9224(&qword_27DE9CC38, &qword_27DE9CA80, &qword_237C11B78);
  sub_237C063CC();
  OUTLINED_FUNCTION_42_9();
  sub_237C063CC();
  v20 = *(v3 + 8);
  v21 = OUTLINED_FUNCTION_128();
  v20(v21);
  v27[1] = v19;
  sub_237C063CC();
  v22 = OUTLINED_FUNCTION_58_0();
  v23 = v2;
  v20(v22);
  v24 = v28;
  sub_237C063CC();
  (v20)(v9, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA88, &unk_237C11B80);
  sub_2379D9224(&qword_27DE9CC40, &qword_27DE9CA88, &unk_237C11B80);
  v25 = v30;
  sub_237C063CC();
  (v20)(v24, v23);
  v26 = v32;
  sub_237C063CC();
  (v20)(v25, v23);
  OUTLINED_FUNCTION_58_0();
  sub_237C063CC();
  (v20)(v26, v23);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AF0DA4()
{
  sub_237AEE02C(&qword_27DE9CC30, _s17SingleStreamBlockVMa);

  return sub_237C0642C();
}

uint64_t sub_237AF0E20()
{
  sub_237AEE02C(&qword_27DE9CC30, _s17SingleStreamBlockVMa);

  return sub_237C0643C();
}

void sub_237AF0EA4()
{
  OUTLINED_FUNCTION_153();
  v1 = sub_237C0683C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_40_11();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_124_0();
  sub_237C065CC();
  sub_237C063CC();
  v8 = _s16InvertedResidualVMa(0);
  v9 = (v0 + v8[5]);
  v22 = *v9;
  v23 = v9[1];
  v24 = v9[2];
  v25 = *(v9 + 48);
  sub_237C063CC();
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_128();
  v10(v11);
  v12 = *(v4 + 32);
  v13 = OUTLINED_FUNCTION_39_10();
  v12(v13);
  v14 = v0 + v8[6];
  sub_237C063CC();
  v15 = OUTLINED_FUNCTION_128();
  v10(v15);
  v16 = OUTLINED_FUNCTION_39_10();
  v12(v16);
  v17 = v8[7];
  sub_237C0697C();
  sub_237C063CC();
  v18 = OUTLINED_FUNCTION_128();
  v10(v18);
  v19 = OUTLINED_FUNCTION_39_10();
  v12(v19);
  v20 = v8[8];
  sub_237C0688C();
  sub_237C063CC();
  v21 = OUTLINED_FUNCTION_128();
  v10(v21);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AF10B8()
{
  sub_237AEE02C(&qword_27DE9CAA8, _s16InvertedResidualVMa);

  return sub_237C0642C();
}

uint64_t sub_237AF1134()
{
  sub_237AEE02C(&qword_27DE9CAA8, _s16InvertedResidualVMa);

  return sub_237C0643C();
}

uint64_t sub_237AF11B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_237C0683C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  sub_237C063CC();
  sub_237C066FC();
  sub_237C062FC();
  return (*(v7 + 8))(v2, v4);
}

uint64_t sub_237AF12A0()
{
  swift_getWitnessTable();

  return sub_237C0642C();
}

uint64_t sub_237AF1300()
{
  swift_getWitnessTable();

  return sub_237C0643C();
}

void sub_237AF1368()
{
  OUTLINED_FUNCTION_153();
  v3 = v2;
  v4 = sub_237C0683C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_40_11();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_124_0();
  v15 = *(v3 + 16);
  v16 = *(v3 + 24);
  sub_237C063CC();
  v18 = *(v3 + 36);
  v17 = *(v3 + 40);
  sub_237C065CC();
  sub_237C063CC();
  sub_237C0697C();
  sub_237C063CC();
  v19 = *(v7 + 8);
  v19(v12, v4);
  sub_237C066FC();
  v19(v1, v4);
  sub_237C062FC();
  v19(v0, v4);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AF14F8()
{
  swift_getWitnessTable();

  return sub_237C0642C();
}

uint64_t sub_237AF1558()
{
  swift_getWitnessTable();

  return sub_237C0643C();
}

uint64_t sub_237AF19C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AF1A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AF1AA8(uint64_t a1, uint64_t a2)
{
  v4 = _s13GraphCNNModelVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AF1B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AF1B7C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_237AF1BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_51()
{

  return sub_237C0652C();
}

uint64_t OUTLINED_FUNCTION_4_46()
{

  return MEMORY[0x28218B660](1, 3, 1, 1, 0, 0, 1, 1);
}

uint64_t OUTLINED_FUNCTION_15_25()
{
  v3 = v0 + *(v1 + 40);

  return sub_237C0687C();
}

uint64_t OUTLINED_FUNCTION_16_19(uint64_t a1, __n128 a2, __n128 a3)
{
  v9 = v3 + *(v5 + 36);
  a2.n128_u32[0] = v7;
  a3.n128_u32[0] = v8;

  return MEMORY[0x28218BC28](v4, a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_21_22(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  a1.n128_u32[0] = v6;
  a2.n128_u32[0] = v7;

  return MEMORY[0x28218BC28](v4, a4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_26_15()
{

  return sub_237C0652C();
}

uint64_t OUTLINED_FUNCTION_34_11(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  a3.n128_u32[0] = v5;
  a4.n128_u32[0] = v6;

  return MEMORY[0x28218BC28](a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_35_12(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_37_10@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = 0xD000000000000019;
  *(v1 - 104) = (a1 - 32) | 0x8000000000000000;
  return *(v1 - 120);
}

void OUTLINED_FUNCTION_44_10()
{
  v1 = *(v0 - 144);
  v2 = *(v0 - 296);
  v3 = *(v0 - 344);
}

uint64_t OUTLINED_FUNCTION_56_6()
{

  return sub_237C0679C();
}

unint64_t MLSoundClassifier.ModelParameters.ModelAlgorithmType.description.getter()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v2 = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();

  MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C18C70);

  return v2;
}

uint64_t static MLSoundClassifier.ModelParameters.ModelAlgorithmType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (a1[1])
  {
    if (*a1 == *a2)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 0;
    }

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_237AF2008@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (*a1 == *a2)
  {
    if (*(a1 + 5) == *(a2 + 40))
    {
      if (*(a1 + 6) == *(a2 + 48))
      {
        if (*(a1 + 7) == *(a2 + 56))
        {
          if (*(a1 + 8) == *(a2 + 64))
          {
            v6 = *(a1 + 72);
            v7 = 1702195828;
            v8 = *(a2 + 72);
            if (*(a1 + 72))
            {
              v9 = 1702195828;
            }

            else
            {
              v9 = 0x65736C6166;
            }

            if (*(a1 + 72))
            {
              v10 = 0xE400000000000000;
            }

            else
            {
              v10 = 0xE500000000000000;
            }

            if (*(a2 + 72))
            {
              v11 = 0xE400000000000000;
            }

            else
            {
              v7 = 0x65736C6166;
              v11 = 0xE500000000000000;
            }

            if (v6 == v8)
            {
              v12 = 0;
            }

            else
            {
              v12 = 0x2065727574616546;
            }

            if (v6 == v8)
            {
              v13 = 0;
            }

            else
            {
              v13 = 0xEF676E696C616373;
            }

            if (v6 == v8)
            {
              v3 = 0;
            }

            else
            {
              v3 = v9;
            }

            if (v6 == v8)
            {
              v4 = 0;
            }

            else
            {
              v4 = v10;
            }

            if (v6 == v8)
            {
              result = 0;
            }

            else
            {
              result = v7;
            }

            if (v6 == v8)
            {
              v15 = 0;
            }

            else
            {
              v15 = v11;
            }
          }

          else
          {
            v13 = 0x8000000237C1B920;
            sub_237C08A6C();
            result = OUTLINED_FUNCTION_0_54();
            v12 = 0xD000000000000015;
          }
        }

        else
        {
          sub_237C08A6C();
          result = OUTLINED_FUNCTION_0_54();
          v13 = 0xE900000000000065;
          v12 = 0x7A69732070657453;
        }
      }

      else
      {
        v13 = 0xEA00000000007974;
        sub_237C08A6C();
        result = OUTLINED_FUNCTION_0_54();
        v12 = 0x6C616E657020324CLL;
      }
    }

    else
    {
      v13 = 0xEA00000000007974;
      v12 = 0x6C616E657020314CLL;
      sub_237C08A6C();
      result = OUTLINED_FUNCTION_0_54();
    }
  }

  else
  {
    v17 = *a1;
    v3 = sub_237C0924C();
    v4 = v16;
    result = sub_237C0924C();
    v13 = 0xEF736E6F69746172;
    v12 = 0x657469202E78614DLL;
  }

  *a3 = v12;
  a3[1] = v13;
  a3[2] = v3;
  a3[3] = v4;
  a3[4] = result;
  a3[5] = v15;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_54()
{

  return sub_237C08A6C();
}

id sub_237AF2238(uint64_t a1)
{
  v117[5] = *MEMORY[0x277D85DE8];
  v113 = sub_237C05ADC();
  v110 = *(v113 - 8);
  v2 = *(v110 + 64);
  v3 = MEMORY[0x28223BE20](v113);
  v109 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v111 = &v108 - v5;
  v6 = type metadata accessor for MLTextClassifier.FeatureExtractorType();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v108 - v11;
  v13 = type metadata accessor for MLTextClassifier.ModelAlgorithmType();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_237C085AC();
  v18 = type metadata accessor for MLTextClassifier.ModelParameters();
  v19 = a1 + *(v18 + 36);
  if ((*(v19 + 8) & 1) == 0)
  {
    if (!*MEMORY[0x277CD89E8])
    {
      __break(1u);
      JUMPOUT(0x237AF2DF8);
    }

    v20 = *v19;
    *&v115 = *MEMORY[0x277CD89E8];
    type metadata accessor for CFString(0);
    sub_237AF2F68(&qword_27DE9A8A8, type metadata accessor for CFString);
    OUTLINED_FUNCTION_5_40();
    sub_237C08E7C();
    *(&v116 + 1) = MEMORY[0x277D83B88];
    *&v115 = v20;
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_9_33();
  }

  v112 = v10;
  v21 = *(a1 + *(v18 + 20));
  if (v21)
  {
    v22 = v12;
    *&v115 = *MEMORY[0x277CD8880];
    v23 = v115;
    type metadata accessor for ConfigurationOptionsKey(0);
    OUTLINED_FUNCTION_0_55();
    sub_237AF2F68(v24, v25);
    v26 = v21;
    v27 = v23;
    v12 = v22;
    OUTLINED_FUNCTION_2_53();
    sub_237C08E7C();
    type metadata accessor for NLLanguage(0);
    *(&v116 + 1) = v28;
    *&v115 = v26;
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_9_33();
  }

  sub_237AF2EA4(a1, v16, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = *v16;
      v31 = v16[8];
      *&v115 = *MEMORY[0x277CD8888];
      v32 = v115;
      type metadata accessor for ConfigurationOptionsKey(0);
      OUTLINED_FUNCTION_0_55();
      sub_237AF2F68(v33, v34);
      v35 = v32;
      OUTLINED_FUNCTION_5_40();
      sub_237C08E7C();
      if (v31)
      {
        v36 = sub_237ACB4EC();
        if (v37)
        {
          v38 = v36;
          swift_isUniquelyReferenced_nonNull_native();
          v114 = v17;
          v39 = *(v17 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC60, &qword_237C12220);
          OUTLINED_FUNCTION_10_32();
          OUTLINED_FUNCTION_7_33();
          sub_2379E8F7C(v40 + v38 * v41);
          sub_2379DAD24((*(v17 + 56) + 32 * v38), &v115);
          sub_237C090CC();
        }

        else
        {
          v115 = 0u;
          v116 = 0u;
        }

        sub_2379E8F7C(v117);
        sub_237A286E0(&v115);
      }

      else
      {
        *(&v116 + 1) = MEMORY[0x277D83B88];
        *&v115 = v30;
        OUTLINED_FUNCTION_4_47();
        OUTLINED_FUNCTION_1_52();
        OUTLINED_FUNCTION_9_33();
      }

      v74 = MEMORY[0x277CD8890];
      goto LABEL_26;
    }

    v54 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC58, &qword_237C12218) + 48)];
    v55 = *v54;
    v56 = v54[8];
    v57 = v12;
    sub_237AF2E40(v16, v12);
    *&v115 = *MEMORY[0x277CD8888];
    v58 = v115;
    type metadata accessor for ConfigurationOptionsKey(0);
    v60 = v59;
    OUTLINED_FUNCTION_0_55();
    sub_237AF2F68(v61, v62);
    v63 = v58;
    OUTLINED_FUNCTION_2_53();
    sub_237C08E7C();
    if (v56)
    {
      v64 = sub_237ACB4EC();
      v65 = v112;
      if (v66)
      {
        v67 = v64;
        swift_isUniquelyReferenced_nonNull_native();
        v114 = v17;
        v68 = v60;
        v69 = *(v17 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC60, &qword_237C12220);
        v60 = v68;
        sub_237C090AC();
        OUTLINED_FUNCTION_7_33();
        sub_2379E8F7C(v70 + v67 * v71);
        sub_2379DAD24((*(&v116 + 1) + 32 * v67), &v115);
        sub_237C090CC();
      }

      else
      {
        v115 = 0u;
        v116 = 0u;
      }

      v72 = v57;
      sub_2379E8F7C(v117);
      sub_237A286E0(&v115);
      v73 = v113;
    }

    else
    {
      *(&v116 + 1) = MEMORY[0x277D83B88];
      *&v115 = v55;
      OUTLINED_FUNCTION_4_47();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_9_33();
      v72 = v57;
      v65 = v112;
      v73 = v113;
    }

    *&v115 = *MEMORY[0x277CD88A0];
    v76 = v115;
    OUTLINED_FUNCTION_2_53();
    sub_237C08E7C();
    *(&v116 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v115) = 1;
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_8_32();
    sub_237AF2EA4(v72, v65, type metadata accessor for MLTextClassifier.FeatureExtractorType);
    switch(__swift_getEnumTagSinglePayload(v65, 4, v73))
    {
      case 1u:
        *&v115 = *MEMORY[0x277CD8870];
        v91 = v115;
        OUTLINED_FUNCTION_2_53();
        sub_237C08E7C();
        v78 = MEMORY[0x277CD88C0];
        goto LABEL_39;
      case 2u:
      case 3u:
        *&v115 = *MEMORY[0x277CD8870];
        v77 = v115;
        OUTLINED_FUNCTION_2_53();
        sub_237C08E7C();
        v78 = MEMORY[0x277CD88B8];
        goto LABEL_39;
      case 4u:
        *&v115 = *MEMORY[0x277CD8870];
        v79 = v115;
        OUTLINED_FUNCTION_2_53();
        sub_237C08E7C();
        v78 = MEMORY[0x277CD88A8];
LABEL_39:
        v92 = *v78;
        type metadata accessor for EmbeddingType(0);
        *(&v116 + 1) = v93;
        *&v115 = v92;
        OUTLINED_FUNCTION_6_38();
        v94 = v92;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_47();
        OUTLINED_FUNCTION_8_32();
        goto LABEL_40;
      default:
        (*(v110 + 32))(v111, v65, v73);
        *&v115 = *MEMORY[0x277CD8870];
        v80 = v115;
        OUTLINED_FUNCTION_5_40();
        v113 = v60;
        sub_237C08E7C();
        v81 = *MEMORY[0x277CD88B0];
        type metadata accessor for EmbeddingType(0);
        *(&v116 + 1) = v82;
        *&v115 = v81;
        OUTLINED_FUNCTION_6_38();
        v83 = v81;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_47();
        OUTLINED_FUNCTION_8_32();
        if (sub_237C0597C() == 0x6C65646F6D6C6DLL && v84 == 0xE700000000000000)
        {
        }

        else
        {
          v86 = sub_237C0929C();

          if ((v86 & 1) == 0)
          {
            *&v115 = *MEMORY[0x277CD8878];
            v87 = v115;
            OUTLINED_FUNCTION_5_40();
            sub_237C08E7C();
            *(&v116 + 1) = v73;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v115);
            v89 = v110;
            v90 = v111;
            (*(v110 + 16))(boxed_opaque_existential_0, v111, v73);
            OUTLINED_FUNCTION_6_38();
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_3_47();
            OUTLINED_FUNCTION_8_32();
            (*(v89 + 8))(v90, v73);
            goto LABEL_40;
          }
        }

        v98 = objc_opt_self();
        v99 = sub_237C059EC();
        v117[0] = 0;
        v100 = [v98 compileModelAtURL:v99 error:v117];

        v95 = v117[0];
        if (!v100)
        {
          v107 = v117[0];

          sub_237C0593C();

          swift_willThrow();
          (*(v110 + 8))(v111, v73);
          sub_237AF2F0C(v72);
          goto LABEL_42;
        }

        v101 = v109;
        sub_237C05A7C();
        v102 = v95;

        *&v115 = *MEMORY[0x277CD8878];
        v103 = v115;
        OUTLINED_FUNCTION_5_40();
        sub_237C08E7C();
        *(&v116 + 1) = v73;
        v104 = __swift_allocate_boxed_opaque_existential_0(&v115);
        v105 = v110;
        (*(v110 + 16))(v104, v101, v73);
        OUTLINED_FUNCTION_6_38();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_47();
        OUTLINED_FUNCTION_8_32();
        v106 = *(v105 + 8);
        v106(v101, v73);
        v106(v111, v73);
LABEL_40:
        sub_237AF2F0C(v72);
        goto LABEL_41;
    }
  }

  v42 = *v16;
  v43 = v16[8];
  *&v115 = *MEMORY[0x277CD8888];
  v44 = v115;
  type metadata accessor for ConfigurationOptionsKey(0);
  OUTLINED_FUNCTION_0_55();
  sub_237AF2F68(v45, v46);
  v47 = v44;
  OUTLINED_FUNCTION_5_40();
  sub_237C08E7C();
  if (v43)
  {
    v48 = sub_237ACB4EC();
    if (v49)
    {
      v50 = v48;
      swift_isUniquelyReferenced_nonNull_native();
      v114 = v17;
      v51 = *(v17 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC60, &qword_237C12220);
      OUTLINED_FUNCTION_10_32();
      OUTLINED_FUNCTION_7_33();
      sub_2379E8F7C(v52 + v50 * v53);
      sub_2379DAD24((*(v17 + 56) + 32 * v50), &v115);
      sub_237C090CC();
    }

    else
    {
      v115 = 0u;
      v116 = 0u;
    }

    sub_2379E8F7C(v117);
    sub_237A286E0(&v115);
  }

  else
  {
    *(&v116 + 1) = MEMORY[0x277D83B88];
    *&v115 = v42;
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_9_33();
  }

  v74 = MEMORY[0x277CD8898];
LABEL_26:
  *&v115 = *v74;
  v75 = v115;
  OUTLINED_FUNCTION_5_40();
  sub_237C08E7C();
  *(&v116 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v115) = 1;
  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_1_52();
  OUTLINED_FUNCTION_8_32();
LABEL_41:
  v95 = sub_237C0855C();

LABEL_42:
  v96 = *MEMORY[0x277D85DE8];
  return v95;
}

void *sub_237AF2E0C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * a2);
  v3 = v2;
  return v2;
}

uint64_t sub_237AF2E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier.FeatureExtractorType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AF2EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237AF2F0C(uint64_t a1)
{
  v2 = type metadata accessor for MLTextClassifier.FeatureExtractorType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237AF2F68(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *OUTLINED_FUNCTION_1_52()
{
  *(v1 - 216) = v0;

  return sub_237B4160C(v1 - 208, v1 - 136);
}

_OWORD *OUTLINED_FUNCTION_3_47()
{
  *(v1 - 216) = v0;

  return sub_237B4160C(v1 - 208, v1 - 136);
}

uint64_t OUTLINED_FUNCTION_4_47()
{
  sub_2379DAD24((v0 - 176), (v0 - 208));

  return swift_isUniquelyReferenced_nonNull_native();
}

_OWORD *OUTLINED_FUNCTION_6_38()
{

  return sub_2379DAD24((v0 - 176), (v0 - 208));
}

uint64_t OUTLINED_FUNCTION_8_32()
{
  v2 = *(v0 - 216);

  return sub_2379E8F7C(v0 - 136);
}

uint64_t OUTLINED_FUNCTION_9_33()
{
  v2 = *(v0 - 216);

  return sub_2379E8F7C(v0 - 136);
}

uint64_t OUTLINED_FUNCTION_10_32()
{

  return sub_237C090AC();
}

void sub_237AF30D4(uint64_t a1@<X8>)
{
  v3 = v1;
  v162 = a1;
  v182 = sub_237C07B9C();
  v4 = OUTLINED_FUNCTION_0(v182);
  v163 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v9 - v8);
  v160 = sub_237C075DC();
  v10 = OUTLINED_FUNCTION_0(v160);
  v159 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v161 = (v15 - v14);
  v158 = sub_237C07D5C();
  v16 = OUTLINED_FUNCTION_0(v158);
  v156 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v21 - v20);
  v170 = sub_237C0818C();
  v22 = OUTLINED_FUNCTION_0(v170);
  v173 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_0();
  v169 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_21_3(&v145 - v28);
  v168 = sub_237C07D7C();
  v29 = OUTLINED_FUNCTION_0(v168);
  v172 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v164 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC38, &unk_237C0EB60);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  OUTLINED_FUNCTION_21_3(&v145 - v37);
  v38 = sub_237C07F1C();
  v39 = OUTLINED_FUNCTION_0(v38);
  v166 = v40;
  v167 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_0();
  v165 = v43;
  MEMORY[0x28223BE20](v44);
  v174 = &v145 - v45;
  v46 = sub_237C0596C();
  v47 = OUTLINED_FUNCTION_0(v46);
  v176 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_0();
  v53 = v52 - v51;
  v54 = sub_237C05C2C();
  v55 = OUTLINED_FUNCTION_0(v54);
  v175 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_0();
  v61 = v60 - v59;
  v179 = sub_237C05ADC();
  v62 = OUTLINED_FUNCTION_0(v179);
  v177 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_14_0();
  v171 = v66;
  v68 = MEMORY[0x28223BE20](v67);
  v70 = &v145 - v69;
  v71 = MEMORY[0x28223BE20](v68);
  v73 = &v145 - v72;
  MEMORY[0x28223BE20](v71);
  v178 = &v145 - v74;
  v75 = *(v1 + 16);
  if (!v75)
  {
    goto LABEL_20;
  }

  v76 = sub_237AC68B4(v75, *(v3 + 24), *(v3 + 32));
  if (!v2)
  {
    v151 = v3;
    v150 = v75;
    v152 = v76;
    v77 = objc_opt_self();
    v78 = [v77 defaultManager];
    sub_2379F364C();

    v79 = [v77 defaultManager];
    sub_2379F3528();

    sub_237C05C1C();
    v80 = sub_237C05C0C();
    v149 = 0;
    v82 = v81;
    (*(v175 + 8))(v61, v54);
    v180 = v80;
    v181 = v82;
    v83 = v176;
    (*(v176 + 104))(v53, *MEMORY[0x277CC91D8], v46);
    sub_2379F3408();
    sub_237C05ACC();
    (*(v83 + 8))(v53, v46);

    v84 = v177;
    v85 = v177 + 8;
    v86 = *(v177 + 8);
    v87 = v179;
    v86(v70, v179);
    v88 = v178;
    sub_237C05A3C();
    v86(v73, v87);
    v89 = type metadata accessor for AnyTreeClassifierModel();
    v90 = v151 + *(v89 + 24);
    v91 = v149;
    sub_237C0702C();
    if (v91)
    {
      v86(v88, v87);
    }

    else
    {
      v92 = *(v84 + 16);
      v3 = v84 + 16;
      v75 = v171;
      v92(v171, v88, v87);
      sub_237C07D8C();
      v149 = 0;
      v93 = v154;
      sub_237A9AA94(v152, v154);
      v94 = v167;
      if (__swift_getEnumTagSinglePayload(v93, 1, v167) == 1)
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_237C07EBC();
      v95 = *(v166 + 8);
      v147 = v166 + 8;
      v146 = v95;
      v95(v93, v94);
      sub_237C07E9C();
      v96 = v151;
      v97 = *v151;
      v98 = v151[1];

      sub_237C07DEC();
      v171 = v97;
      v180 = v97;
      v181 = v98;
      v175 = v98;

      MEMORY[0x2383DC360](0x6C696261626F7250, 0xEB00000000797469);
      sub_237C07E2C();
      sub_237C085AC();
      sub_237C07EFC();
      v99 = v155;
      sub_237C07E3C();
      v75 = v99;
      v3 = v173;
      v70 = v170;
      v100 = (*(v173 + 88))(v99, v170);
      v101 = *MEMORY[0x277D25390];
      LODWORD(v176) = v100;
      v102 = v168;
      v103 = v164;
      if (v100 != v101)
      {
        while (1)
        {
          v144 = *(v3 + 8);
          v3 += 8;
          v144(v75, v70);
LABEL_20:
          sub_237C090DC();
          __break(1u);
        }
      }

      v148 = v86;
      v154 = v85;
      (*(v3 + 96))(v75, v70);
      (*(v172 + 32))(v103, v75, v102);
      v104 = v96 + *(v89 + 28);
      v105 = v104[8];
      v106 = v157;
      *v157 = *v104;
      v107 = *(v156 + 104);
      if (v105)
      {
        v107(v106, *MEMORY[0x277D25258], v158);

        sub_237C07D6C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
        v108 = OUTLINED_FUNCTION_7_34();
        OUTLINED_FUNCTION_10_33(v108, xmmword_237C0B670);
        OUTLINED_FUNCTION_9_34();
        sub_237C0756C();
        v109 = *MEMORY[0x277D25130];
        v110 = OUTLINED_FUNCTION_5_41();
        v111(v110);

        OUTLINED_FUNCTION_8_33();
        v180 = v102;
        v181 = v103;

        OUTLINED_FUNCTION_1_53();
        OUTLINED_FUNCTION_9_34();
        sub_237C075CC();
      }

      else
      {
        v107(v106, *MEMORY[0x277D25250], v158);

        sub_237C07D6C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
        v112 = OUTLINED_FUNCTION_7_34();
        OUTLINED_FUNCTION_10_33(v112, xmmword_237C0B670);
        OUTLINED_FUNCTION_9_34();
        sub_237C0751C();
        v113 = *MEMORY[0x277D25118];
        v114 = OUTLINED_FUNCTION_5_41();
        v115(v114);

        OUTLINED_FUNCTION_8_33();
        v180 = v102;
        v181 = v103;

        OUTLINED_FUNCTION_1_53();
        OUTLINED_FUNCTION_9_34();
        sub_237C075BC();
      }

      OUTLINED_FUNCTION_6_39();
      sub_237C07ECC();
      v116 = v169;
      (*(v172 + 16))(v169, v103, v102);
      v117 = v103;
      v118 = v173 + 104;
      v119 = v170;
      v161 = *(v173 + 104);
      v161(v116, v176, v170);
      sub_237C07E4C();
      sub_237C07F0C();
      sub_237C07E0C();
      v120 = *(v150 + 16);
      if (v120)
      {
        v173 = v118;
        v180 = MEMORY[0x277D84F90];
        v121 = v150;
        sub_237AC8CF4(0, v120, 0);
        v122 = v180;
        v123 = (v163 + 32);
        v176 = (v85 + 32) & ~v85;
        v124 = (v121 + 56);
        v125 = v153;
        do
        {
          v126 = *(v124 - 3);
          v127 = *(v124 - 2);
          v128 = *(v124 - 1);
          v129 = *v124;

          sub_237A1E09C(v128, v129);
          sub_237B991A4(v128, v129, v125);

          sub_237A1E0B0(v128, v129);
          v180 = v122;
          v131 = *(v122 + 16);
          v130 = *(v122 + 24);
          if (v131 >= v130 >> 1)
          {
            sub_237AC8CF4(v130 > 1, v131 + 1, 1);
            v122 = v180;
          }

          v124 += 32;
          *(v122 + 16) = v131 + 1;
          (*v123)(v122 + v176 + v177 * v131, v125, v182);
          --v120;
        }

        while (v120);
        v119 = v170;
        v132 = v164;
      }

      else
      {
        v132 = v117;
      }

      v133 = v165;
      sub_237C07E9C();
      v134 = v174;
      sub_237C07EBC();
      sub_237C07ECC();
      v135 = v171;
      v136 = v175;
      sub_237C07DEC();
      v180 = v135;
      v181 = v136;

      OUTLINED_FUNCTION_1_53();
      sub_237C07E2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
      v137 = v166;
      v138 = *(v166 + 72);
      v139 = (*(v166 + 80) + 32) & ~*(v166 + 80);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_237C0B660;
      v141 = v167;
      (*(v137 + 16))(v140 + v139, v134, v167);
      v180 = v152;
      sub_237A969F0(v140);
      v142 = v169;
      sub_237C07D3C();
      v161(v142, *MEMORY[0x277D25368], v119);
      sub_237C07E4C();
      (*(v172 + 8))(v132, v168);
      v146(v134, v141);
      (*(v137 + 32))(v162, v133, v141);
      v143 = v178;
      sub_237A64C34();
      v148(v143, v179);
    }
  }
}

void OUTLINED_FUNCTION_1_53()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_5_41()
{
  v2 = *(*(v1 - 272) + 104);
  result = v0;
  v4 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_39()
{
  *(v1 - 128) = v0;

  return sub_237C07B3C();
}

uint64_t OUTLINED_FUNCTION_7_34()
{
  v2 = *(v0 - 240);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_33()
{
  v2 = *(v0 - 176);

  return sub_237C07B3C();
}

uint64_t OUTLINED_FUNCTION_10_33(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 - 144);
}

id MLBoostedTreeRegressor.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLBoostedTreeRegressor() + 20));

  return v1;
}

uint64_t type metadata accessor for MLBoostedTreeRegressor()
{
  result = qword_27DE9CC90;
  if (!qword_27DE9CC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLBoostedTreeRegressor.model.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLBoostedTreeRegressor() + 20);

  *(v1 + v2) = v0;
}

void (*MLBoostedTreeRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLBoostedTreeRegressor() + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLBoostedTreeRegressor.targetColumn.getter()
{
  v1 = (v0 + *(type metadata accessor for MLBoostedTreeRegressor() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLBoostedTreeRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLBoostedTreeRegressor() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*MLBoostedTreeRegressor.targetColumn.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLBoostedTreeRegressor() + 24);
  return nullsub_1;
}

uint64_t MLBoostedTreeRegressor.featureColumns.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLBoostedTreeRegressor() + 28));
}

uint64_t MLBoostedTreeRegressor.featureColumns.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLBoostedTreeRegressor() + 28);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*MLBoostedTreeRegressor.featureColumns.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLBoostedTreeRegressor() + 28);
  return nullsub_1;
}

uint64_t MLBoostedTreeRegressor.modelParameters.getter()
{
  OUTLINED_FUNCTION_146();
  v2 = v1 + *(type metadata accessor for MLBoostedTreeRegressor() + 32);

  return sub_237AF4388(v2, v0);
}

id MLBoostedTreeRegressor.trainingMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLBoostedTreeRegressor();
  v1 = OUTLINED_FUNCTION_40_1(*(v0 + 36));

  return sub_2379F7AF4(v1, v2, v3);
}

id MLBoostedTreeRegressor.validationMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLBoostedTreeRegressor();
  v1 = OUTLINED_FUNCTION_40_1(*(v0 + 40));

  return sub_2379F7AF4(v1, v2, v3);
}

uint64_t sub_237AF445C()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_allocate_value_buffer(v0, qword_27DE9CC68);
  v1 = __swift_project_value_buffer(v0, qword_27DE9CC68);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLBoostedTreeRegressor._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters();
  __swift_project_value_buffer(v2, qword_27DE9CC68);
  OUTLINED_FUNCTION_2_54();
  return sub_237AF7ECC(v3, a1, v4);
}

void MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v165 = v0;
  v170 = v1;
  v166 = v2;
  v175 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_237C05DBC();
  v168 = OUTLINED_FUNCTION_0(v10);
  v169 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v15 - v14);
  v16 = type metadata accessor for TreeRegressorModel();
  v17 = OUTLINED_FUNCTION_1(v16);
  v152 = v18;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v153 = v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v22);
  v155 = type metadata accessor for TreeRegressor();
  v23 = OUTLINED_FUNCTION_4(v155);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v27 - v26);
  v158 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  v28 = OUTLINED_FUNCTION_4(v158);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v163 = v32 - v31;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v33 = OUTLINED_FUNCTION_4(v159);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_0();
  v150 = v36 - v37;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v38);
  v151 = v143 - v39;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v41);
  v162 = sub_237C071DC();
  v42 = OUTLINED_FUNCTION_0(v162);
  v161 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18_0();
  v48 = v46 - v47;
  v50 = MEMORY[0x28223BE20](v49);
  v52 = v143 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = v143 - v53;
  v55 = type metadata accessor for MLBoostedTreeRegressor();
  v56 = v9 + *(v55 + 36);
  *v56 = 0;
  *(v56 + 8) = 0;
  v167 = v56;
  *(v56 + 16) = 0;
  v57 = *(v55 + 40);
  v154 = v9;
  v58 = v9 + v57;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v59 = swift_allocError();
  *v60 = 0xD0000000000000C0;
  v60[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v59, v60);
  *v58 = v61;
  *(v58 + 8) = 0;
  v164 = v58;
  *(v58 + 16) = 1;
  v62 = v7;
  v63 = v5;
  v64 = v165;
  sub_2379F3308();
  if (v64)
  {

    sub_237AF5380(v170);
    OUTLINED_FUNCTION_22_19();
    v65(v62);
    OUTLINED_FUNCTION_45_6();
    goto LABEL_3;
  }

  v144 = v48;
  v145 = v52;
  v143[0] = v55;
  v143[1] = v20;
  v146 = v5;
  v165 = v54;
  v148 = v62;
  v66 = v166;
  if (v166)
  {

    OUTLINED_FUNCTION_43_0();
    v67 = v148;
    sub_2379F2DA4();
    v68 = v175;
    OUTLINED_FUNCTION_45_6();
    v69 = v170;
    v147 = 0;
  }

  else
  {
    v147 = 0;
    v68 = v175;
    OUTLINED_FUNCTION_45_6();
    v67 = v148;
    v69 = v170;
  }

  sub_237AF4388(v69, &v173);
  sub_237C071CC();
  sub_237C070FC();
  sub_237C0715C();
  sub_237C0719C();
  sub_237C0717C();
  sub_237C070BC();
  sub_237C070DC();
  sub_237C071BC();
  sub_237C0711C();
  sub_237C0713C();
  sub_237AF5380(&v173);
  sub_2379FC864(v69, &v171, &qword_27DE9A998, &unk_237C0C100);
  if (v172)
  {
    v70 = *(v159 + 48);
    sub_2379DAD24(&v171, &v173);
    swift_dynamicCast();
    v71 = v160;
    v72 = v147;
    sub_237B68758(v160, v160 + v70, v67);
    if (v72)
    {

      sub_237AF5380(v170);
      OUTLINED_FUNCTION_22_19();
      v73(v67);
      v74 = OUTLINED_FUNCTION_23_22();
      v75(v74);
      OUTLINED_FUNCTION_5_42();
      sub_237AF8310();
    }

    else
    {
      OUTLINED_FUNCTION_5_42();
      sub_237AF8310();
      v76 = v146;
      sub_237B19700(v71, v146, v68, v66);
      v78 = v77;

      v147 = 0;
      v79 = v145;
      (*(v161 + 16))(v145, v165, v162);
      v80 = v76;
      v81 = v156;
      *v156 = v80;
      v81[1] = v68;
      OUTLINED_FUNCTION_80();
      v81[2] = v78;
      v81[3] = v78;
      v81[4] = 0xD000000000000013;
      v81[5] = v82;
      v83(v144, v79, v162);
      v84 = *(v155 + 28);
      v167 = v78;
      v85 = v162;
      swift_bridgeObjectRetain_n();

      v86 = v161;
      sub_237C06CEC();
      v89 = *(v86 + 8);
      v87 = v86 + 8;
      v88 = v89;
      v90 = OUTLINED_FUNCTION_58_0();
      (v89)(v90);
      v91 = v147;
      sub_237A0CAB0();
      if (v91)
      {

        sub_237AF5380(v170);
        v92 = OUTLINED_FUNCTION_18_25();
        v93(v92);
        OUTLINED_FUNCTION_1_54();
        sub_237AF8310();
        sub_2379D9054(v71, &qword_27DE9ADC0, &unk_237C0BF40);
        v88(v165, v85);
      }

      else
      {
        v166 = v88;
        v161 = v87;
        v147 = 0;
        if ((sub_237A37A64() & 1) == 0)
        {
          v94 = OUTLINED_FUNCTION_46_8();
          v95 = v151;
          sub_2379FC864(v94, v151, v96, v97);
          v98 = *(v159 + 48);
          sub_237C05D3C();
          (*(v169 + 8))(v95, v168);
          sub_237A37AEC(4);
          sub_2379D9054(v95 + v98, &qword_27DE9A9A0, &qword_237C0BF60);
        }

        v99 = v143[0];
        v100 = v154;
        v101 = (v154 + *(v143[0] + 24));
        *v101 = v146;
        v101[1] = v175;
        v163 = v99[8];
        v102 = v170;
        sub_237AF4388(v170, v100 + v163);
        *(v100 + v99[7]) = v167;
        OUTLINED_FUNCTION_3_48();
        v103 = v157;
        v104 = v153;
        sub_237AF7ECC(v157, v153, v105);
        v106 = (*(v152 + 80) + 16) & ~*(v152 + 80);
        swift_allocObject();
        OUTLINED_FUNCTION_9_35();
        sub_237AF8364(v104, v107 + v106, v108);
        v109 = v147;
        sub_2379DD56C();
        if (v109)
        {

          sub_237AF5380(v102);
          v111 = OUTLINED_FUNCTION_18_25();
          v112(v111);
          OUTLINED_FUNCTION_0_56();
          sub_237AF8310();
          OUTLINED_FUNCTION_1_54();
          OUTLINED_FUNCTION_43_6();
          v113 = OUTLINED_FUNCTION_46_8();
          sub_2379D9054(v113, v114, v115);
          OUTLINED_FUNCTION_10_34();
          OUTLINED_FUNCTION_19_25();
          v116();
        }

        else
        {
          v117 = v110;

          *(v100 + v99[5]) = v117;
          OUTLINED_FUNCTION_3_48();
          sub_237AF7ECC(v103, v100, v118);
          v119 = v160;
          sub_237A478AC(v160, &v173);
          v147 = 0;
          v120 = v173;
          v121 = v174;
          sub_2379F8918(*v63, *(v63 + 8), *(v63 + 16));
          *v63 = v120;
          *(v63 + 16) = v121;
          v122 = v150;
          sub_2379FC864(v119, v150, &qword_27DE9ADC0, &unk_237C0BF40);
          v123 = *(v159 + 48);
          v124 = v168;
          if (__swift_getEnumTagSinglePayload(v122 + v123, 1, v168) == 1)
          {
            sub_237AF5380(v170);
            v125 = *(v169 + 8);
            v125(v148, v124);
            OUTLINED_FUNCTION_0_56();
            sub_237AF8310();
            OUTLINED_FUNCTION_1_54();
            OUTLINED_FUNCTION_43_6();
            sub_2379D9054(v119, &qword_27DE9ADC0, &unk_237C0BF40);
            v126 = OUTLINED_FUNCTION_10_34();
            v166(v126);
            sub_2379D9054(v122 + v123, &qword_27DE9A9A0, &qword_237C0BF60);
            v125(v122, v124);
            goto LABEL_4;
          }

          v127 = v124;
          v128 = v169;
          v129 = v149;
          (*(v169 + 32))(v149, v122 + v123, v127);
          v130 = *(v128 + 8);
          v130(v122, v127);
          v131 = v147;
          sub_237A478AC(v129, &v173);
          if (!v131)
          {
            sub_237AF5380(v170);
            v130(v148, v127);
            v130(v129, v127);
            OUTLINED_FUNCTION_0_56();
            sub_237AF8310();
            OUTLINED_FUNCTION_1_54();
            OUTLINED_FUNCTION_43_6();
            v136 = OUTLINED_FUNCTION_46_8();
            sub_2379D9054(v136, v137, v138);
            OUTLINED_FUNCTION_10_34();
            OUTLINED_FUNCTION_19_25();
            v139();
            v140 = v173;
            v141 = v174;
            v142 = v164;
            sub_2379F8918(*v164, *(v164 + 8), *(v164 + 16));
            *v142 = v140;
            *(v142 + 16) = v141;
            goto LABEL_4;
          }

          sub_237AF5380(v170);
          v130(v148, v127);
          v130(v129, v127);
          OUTLINED_FUNCTION_0_56();
          sub_237AF8310();
          OUTLINED_FUNCTION_1_54();
          OUTLINED_FUNCTION_43_6();
          v132 = OUTLINED_FUNCTION_46_8();
          sub_2379D9054(v132, v133, v134);
          OUTLINED_FUNCTION_10_34();
          OUTLINED_FUNCTION_19_25();
          v135();
          v100 = v154;
          OUTLINED_FUNCTION_0_56();
          sub_237AF8310();
        }

        sub_237AF5380(v100 + v163);
      }
    }

LABEL_3:
    sub_2379F8918(*v63, *(v63 + 8), *(v63 + 16));
    sub_2379F8918(*v164, *(v164 + 8), *(v164 + 16));
LABEL_4:
    OUTLINED_FUNCTION_73();
    return;
  }

  __break(1u);
}

uint64_t sub_237AF53D8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v0 = type metadata accessor for TreeRegressorModel();
  OUTLINED_FUNCTION_20(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_55_0(v4);

  return sub_2379F8924(v6);
}

uint64_t MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_237C05DBC();
  v8 = OUTLINED_FUNCTION_20(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  LOBYTE(v12) = *(a1 + 8);
  v15 = *a1;
  v16 = v12;
  sub_237A70ED4(&v15, v13);
  sub_237AF4388(a5, &v15);
  MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)();
  return sub_237AF5380(a5);
}

void MLBoostedTreeRegressor.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v87 = v0;
  v2 = v1;
  v4 = v3;
  v80 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  v5 = OUTLINED_FUNCTION_4(v80);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v78 = v8 - v9;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_58();
  v79 = v11;
  v12 = type metadata accessor for TreeRegressorModel();
  v13 = OUTLINED_FUNCTION_1(v12);
  v82 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v83 = v18;
  v84 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_58();
  v88 = v19;
  v20 = sub_237C071DC();
  v21 = OUTLINED_FUNCTION_0(v20);
  v85 = v22;
  v86 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v77 - v26;
  v28 = type metadata accessor for TreeRegressor();
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v34 = (v33 - v32);
  v35 = type metadata accessor for MLBoostedTreeRegressor();
  v36 = v4 + *(v35 + 36);
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  v77 = v35;
  v37 = *(v35 + 40);
  v81 = v4;
  v38 = v4 + v37;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v39 = swift_allocError();
  *v40 = 0xD0000000000000C0;
  v40[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v39, v40);
  *v38 = v41;
  *(v38 + 8) = 0;
  *(v38 + 16) = 1;
  switch(*(v2 + *(type metadata accessor for MLCheckpoint() + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v42 = sub_237C0929C();

      if (v42)
      {
LABEL_4:
        sub_237C071CC();
        *v34 = 0;
        v34[1] = 0xE000000000000000;
        OUTLINED_FUNCTION_80();
        v34[2] = v43;
        v34[3] = v43;
        v34[4] = 0xD000000000000013;
        v34[5] = v44;
        v46 = v85;
        v45 = v86;
        v47 = *(v85 + 16);
        v48 = OUTLINED_FUNCTION_58_0();
        v49(v48);
        v50 = v34 + *(v28 + 28);
        sub_237C06CEC();
        (*(v46 + 8))(v27, v45);
        sub_2379FBDFC();
        v51 = v87;
        v52 = v88;
        sub_237C0743C();
        if (!v51)
        {
          OUTLINED_FUNCTION_3_48();
          v55 = v84;
          sub_237AF7ECC(v52, v84, v56);
          v57 = (*(v82 + 80) + 16) & ~*(v82 + 80);
          swift_allocObject();
          OUTLINED_FUNCTION_9_35();
          sub_237AF8364(v55, v58 + v57, v59);
          sub_2379DD56C();
          v61 = v60;

          v62 = v77;
          v63 = v81;
          *(v81 + *(v77 + 20)) = v61;
          OUTLINED_FUNCTION_3_48();
          sub_237AF7ECC(v52, v63, v64);
          v66 = v79;
          v65 = v80;
          *v79 = 0;
          *(v66 + 8) = 0;
          *(v66 + 16) = 256;
          swift_storeEnumTagMultiPayload();
          v67 = v62;
          v68 = v63 + *(v62 + 32);
          *v68 = 0u;
          *(v68 + 16) = 0u;
          *(v68 + 32) = xmmword_237C0BF20;
          *(v68 + 48) = xmmword_237C0BF30;
          *(v68 + 64) = 42;
          *(v68 + 72) = 0x3FD3333333333333;
          *(v68 + 80) = 0;
          *(v68 + 88) = 1;
          __asm { FMOV            V0.2D, #1.0 }

          *(v68 + 96) = _Q0;
          v74 = v78;
          sub_237AF7ECC(v66, v78, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
          v89[3] = v65;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v89);
          sub_237AF8364(v74, boxed_opaque_existential_0, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
          OUTLINED_FUNCTION_5_42();
          sub_237AF8310();
          sub_2379DAE54(v89, v68);
          v76 = (v63 + *(v67 + 24));
          *v76 = 0;
          v76[1] = 0xE000000000000000;
          OUTLINED_FUNCTION_6_40();
          sub_237AF8310();
          OUTLINED_FUNCTION_0_56();
          sub_237AF8310();
          OUTLINED_FUNCTION_1_54();
          sub_237AF8310();
          *(v63 + *(v67 + 28)) = MEMORY[0x277D84F90];
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_6_40();
        sub_237AF8310();
        OUTLINED_FUNCTION_1_54();
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v53 = swift_allocError();
        *v54 = 0xD000000000000041;
        v54[1] = 0x8000000237C1B990;
        OUTLINED_FUNCTION_23_3(v53, v54);
        swift_willThrow();
        OUTLINED_FUNCTION_6_40();
      }

      sub_237AF8310();
      sub_2379F8918(*v36, *(v36 + 8), *(v36 + 16));
      sub_2379F8918(*v38, *(v38 + 8), *(v38 + 16));
LABEL_9:
      OUTLINED_FUNCTION_73();
      return;
  }
}

void static MLBoostedTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v2 = OUTLINED_FUNCTION_48_0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *(v1 + 8);
  v22 = *v1;
  v23 = v11;
  sub_2379DBCF4(v22, v11);
  sub_237A70ED4(&v22, v10);
  static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (v0)
  {
    v13 = *(v5 + 8);
    v14 = OUTLINED_FUNCTION_58_0();
    v15(v14);
  }

  else
  {
    v16 = v12;
    v17 = *(v5 + 8);
    v18 = OUTLINED_FUNCTION_58_0();
    v19(v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC80, &qword_237C12268);
    v21 = OUTLINED_FUNCTION_91(v20);
    sub_237BEC5BC(v21, v16);
  }

  OUTLINED_FUNCTION_73();
}

{
  static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v0)
  {
    v2 = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC80, &qword_237C12268);
    v4 = OUTLINED_FUNCTION_91(v3);
    sub_237BEC5BC(v4, v2);
  }
}

void static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v1 = OUTLINED_FUNCTION_48_0();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = *(v0 + 8);
  v11 = *v0;
  v12 = v10;
  sub_2379DBCF4(v11, v10);
  sub_237A70ED4(&v11, v9);
  static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v4 + 8))(v9, v1);
  OUTLINED_FUNCTION_73();
}

{
  OUTLINED_FUNCTION_74();
  v57 = v1;
  v3 = v2;
  v59 = v4;
  v56 = v5;
  v55 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters();
  v10 = OUTLINED_FUNCTION_20(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_0();
  v53 = v13 - v14;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v16);
  v17 = sub_237C071DC();
  v18 = OUTLINED_FUNCTION_20(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v23 = (v22 - v21);
  v24 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_0();
  v58 = v32 - v33;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v34);
  v36 = v52 - v35;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v37);
  v39 = v52 - v38;
  v40 = v3;
  sub_2379FC864(v3, &v63, &qword_27DE9A998, &unk_237C0C100);
  if (v64)
  {
    v41 = *(v28 + 48);
    sub_2379DAD24(&v63, &v60);
    swift_dynamicCast();
    sub_237B68758(v39, &v39[v41], v8);
    OUTLINED_FUNCTION_5_42();
    sub_237AF8310();
    if (!v0)
    {
      sub_2379FC864(v39, v36, &qword_27DE9ADC0, &unk_237C0BF40);
      v52[1] = *(v28 + 48);
      v42 = v58;
      sub_2379FC864(v39, v58, &qword_27DE9ADC0, &unk_237C0BF40);
      v65 = *(v28 + 48);
      sub_237AF4388(v40, &v60);

      OUTLINED_FUNCTION_45_6();

      sub_237C071CC();
      sub_237C070FC();
      sub_237C0715C();
      sub_237C0719C();
      sub_237C0717C();
      sub_237C070BC();
      sub_237C070DC();
      sub_237C071BC();
      sub_237C0711C();
      sub_237C0713C();
      sub_237AF5380(&v60);
      OUTLINED_FUNCTION_2_54();
      v43 = v54;
      sub_237AF7ECC(v57, v54, v44);
      v45 = type metadata accessor for TreeRegressorTrainingSessionDelegate();
      OUTLINED_FUNCTION_91(v45);
      sub_237B1A5B0(v36, v42 + v65, v55, v40, v59, v23, v43);
      OUTLINED_FUNCTION_46();
      v46 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v46);
      v48 = (*(v47 + 8))(v58);
      OUTLINED_FUNCTION_64_0(v48, &qword_27DE9A9A0, &qword_237C0BF60);
      v61 = v45;
      v62 = &off_284AC4B18;
      *&v60 = v43;
      OUTLINED_FUNCTION_2_54();
      v49 = v53;
      sub_237AF7ECC(v57, v53, v50);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC88, &unk_237C12270);
      OUTLINED_FUNCTION_91(v51);

      sub_2379E4280(&v60, v49, 4);
      sub_2379D9054(v39, &qword_27DE9ADC0, &unk_237C0BF40);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static MLBoostedTreeRegressor.resume(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC80, &qword_237C12268);
  v3 = OUTLINED_FUNCTION_91(v2);

  return sub_237BEC5BC(v3, a1);
}

void static MLBoostedTreeRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters();
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v21[-1] - v11;
  OUTLINED_FUNCTION_2_54();
  sub_237AF7ECC(a1, v12, v13);
  v14 = type metadata accessor for TreeRegressorTrainingSessionDelegate();
  OUTLINED_FUNCTION_91(v14);
  v15 = sub_237B1A4D0();
  if (!v1)
  {
    v21[3] = v14;
    v21[4] = &off_284AC4B18;
    v21[0] = v15;
    OUTLINED_FUNCTION_2_54();
    v16 = OUTLINED_FUNCTION_58_0();
    sub_237AF7ECC(v16, v17, v18);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC88, &unk_237C12270);
    OUTLINED_FUNCTION_91(v19);
    sub_2379E4280(v21, v9, 4);
  }
}

uint64_t sub_237AF6470(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCA0, &qword_237C12348);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28[-v14 - 8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  v17 = OUTLINED_FUNCTION_20(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v28[-v20 - 8];
  if (a2)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    a4(v15);
    return sub_2379D9054(v15, &qword_27DE9CCA0, &qword_237C12348);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for TreeRegressorTrainingSessionDelegate();
    swift_dynamicCast();
    v24 = v27;
    v25 = sub_237C08A3C();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v24;
    v26[5] = a4;
    v26[6] = a5;

    sub_237BBAEC8(0, 0, v21, &unk_237C12358, v26);
  }
}

uint64_t sub_237AF6664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCA0, &qword_237C12348);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237AF6720, 0, 0);
}

uint64_t sub_237AF6720()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_237AF67C0;
  v3 = v0[6];
  v4 = v0[2];

  return sub_237AF6A38();
}

uint64_t sub_237AF67C0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237AF68BC()
{
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  swift_storeEnumTagMultiPayload();
  v5 = OUTLINED_FUNCTION_37_0();
  sub_237AF82A0(v5, v6);
  OUTLINED_FUNCTION_41_9();
  v1(v2);
  sub_2379D9054(v2, &qword_27DE9CCA0, &qword_237C12348);

  OUTLINED_FUNCTION_8();

  return v7();
}

uint64_t sub_237AF697C()
{
  v3 = *(v1 + 40);
  **(v1 + 56) = *(v1 + 80);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_41_9();
  v2(v0);
  sub_2379D9054(v0, &qword_27DE9CCA0, &qword_237C12348);

  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_237AF6A38()
{
  OUTLINED_FUNCTION_9();
  v0[36] = v1;
  v0[37] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  v0[38] = OUTLINED_FUNCTION_19();
  v6 = type metadata accessor for MLBoostedTreeRegressor();
  v0[39] = v6;
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64) + 15;
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v9);
  v11 = *(v10 + 64);
  v0[42] = OUTLINED_FUNCTION_19();
  v12 = sub_237C071DC();
  v0[43] = v12;
  OUTLINED_FUNCTION_1(v12);
  v0[44] = v13;
  v15 = *(v14 + 64);
  v0[45] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v16);
  v18 = *(v17 + 64);
  v0[46] = OUTLINED_FUNCTION_19();
  v19 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v0[47] = v19;
  OUTLINED_FUNCTION_20(v19);
  v21 = *(v20 + 64);
  v0[48] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_237AF6BC0()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 296);
  v4 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess();
  sub_2379FC864(v3 + v4, v1, &qword_27DE9AE18, &qword_237C0DEE0);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  v8 = *(v0 + 360);
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  v11 = *(v0 + 336);
  v13 = *(v0 + 296);
  v12 = *(v0 + 304);
  sub_237AF8364(*(v0 + 368), v6, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v10 + 16))(v8, v6 + v7[8], v9);
  sub_2379FC864(v6 + v7[5], v11, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_2379DB58C(v8, v11, v0 + 16);
  v14 = (v6 + v7[6]);
  v16 = *v14;
  v15 = v14[1];
  *(v0 + 392) = v15;
  v17 = *(v6 + v7[7]);
  *(v0 + 400) = v17;
  v18 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model;
  swift_beginAccess();
  sub_2379FC864(v13 + v18, v12, &qword_27DE9AE10, &qword_237C0C090);
  v19 = type metadata accessor for TreeRegressorModel();
  result = __swift_getEnumTagSinglePayload(v12, 1, v19);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v21 = *(v0 + 312);
  v20 = *(v0 + 320);
  sub_237AF4388(v0 + 16, v0 + 128);
  v22 = v21[9];
  *(v0 + 432) = v22;
  v23 = v20 + v22;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  v24 = v21[10];
  *(v0 + 436) = v24;
  v25 = v20 + v24;
  sub_2379E8AF0();

  OUTLINED_FUNCTION_50();
  v26 = swift_allocError();
  *v27 = 0xD0000000000000C0;
  v27[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v26, v27);
  *v25 = v28;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  *(v20 + v21[7]) = v17;
  v29 = (v20 + v21[6]);
  *v29 = v16;
  v29[1] = v15;
  v30 = swift_task_alloc();
  *(v0 + 408) = v30;
  *v30 = v0;
  v30[1] = sub_237AF6E7C;
  v31 = *(v0 + 304);

  return sub_237B91530();
}

uint64_t sub_237AF6E7C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v8 = *(v7 + 408);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v5 + 416) = v0;

  if (!v0)
  {
    *(v5 + 424) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237AF6F8C()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  *(v1 + *(v4 + 20)) = v0[53];
  OUTLINED_FUNCTION_9_35();
  sub_237AF8364(v7, v1, v8);
  memcpy((v1 + *(v4 + 32)), v0 + 16, 0x70uLL);
  sub_237AF8364(v1, v2, type metadata accessor for MLBoostedTreeRegressor);
  result = sub_237AF8364(v2, v5, type metadata accessor for MLBoostedTreeRegressor);
  v10 = v6 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics;
  v11 = *(v6 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v11 == 255)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[48];
    v13 = v0[39];
    v15 = v0[36];
    v14 = v0[37];
    v17 = *v10;
    v16 = *(v10 + 8);
    v18 = v11 & 1;
    sub_2379F7AF4(*v10, v16, v11 & 1);
    sub_237AF5380((v0 + 2));
    OUTLINED_FUNCTION_16_20();
    sub_237AF8310();
    v19 = v15 + *(v13 + 36);
    sub_2379F8918(*v19, *(v19 + 8), *(v19 + 16));
    *v19 = v17;
    *(v19 + 8) = v16;
    *(v19 + 16) = v18;
    v21 = *(v14 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
    v20 = *(v14 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
    v22 = *(v14 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16);
    sub_2379FC970(v21, v20, *(v14 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16));

    if (v22 != 255)
    {
      v23 = v0[36] + *(v0[39] + 40);
      sub_2379F8918(*v23, *(v23 + 8), *(v23 + 16));
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22 & 1;
    }

    v24 = v0[48];
    v25 = v0[45];
    v26 = v0[46];
    v28 = v0[41];
    v27 = v0[42];
    v29 = v0[40];
    v30 = v0[38];

    OUTLINED_FUNCTION_8();

    return v31();
  }

  return result;
}

uint64_t sub_237AF7184()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);
  v13 = *(v0 + 360);
  v14 = *(v0 + 336);
  v5 = *(v0 + 320);
  v15 = *(v0 + 328);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v8 = v5 + *(v0 + 432);
  v9 = v5 + *(v0 + 436);
  sub_237AF5380(v0 + 128);
  OUTLINED_FUNCTION_0_56();
  sub_237AF8310();

  sub_2379F8918(*v8, *(v8 + 8), *(v8 + 16));
  sub_2379F8918(*v9, *(v9 + 8), *(v9 + 16));

  sub_237AF5380(v0 + 16);
  OUTLINED_FUNCTION_16_20();
  sub_237AF8310();

  OUTLINED_FUNCTION_8();
  v11 = *(v0 + 416);

  return v10();
}

void MLBoostedTreeRegressor.predictions(from:)()
{
  v2 = sub_237C05DBC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *(v0 + *(type metadata accessor for MLBoostedTreeRegressor() + 28));
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v1)
  {
    OUTLINED_FUNCTION_11();
    sub_237A47CE0(v12);
    v13 = *v0;
    v14 = v0[1];
    sub_237C05DFC();
    (*(v5 + 8))(v10, v2);
  }
}

uint64_t MLBoostedTreeRegressor.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v4 = sub_237C05DBC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = sub_237C0602C();
  v14 = OUTLINED_FUNCTION_20(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = *(a1 + 8);
  v22 = *a1;
  v23 = v20;
  sub_2379DBCF4(v22, v20);
  sub_237A70ED4(&v22, v12);
  MLBoostedTreeRegressor.predictions(from:)();
  if (v2)
  {
    return (*(v7 + 8))(v12, v4);
  }

  (*(v7 + 8))(v12, v4);
  return sub_237A72900(v19, 1, v1);
}

void MLBoostedTreeRegressor.evaluation(on:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v4 = type metadata accessor for MLBoostedTreeRegressor();
  v5 = *(v2 + *(v4 + 28));
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v7 = (v2 + *(v4 + 24));
  v8 = v7[1];
  *(inited + 32) = *v7;
  *(inited + 40) = v8;

  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  sub_237A478AC(a1, v1);
}

uint64_t MLBoostedTreeRegressor.evaluation(on:)(uint64_t a1)
{
  v2 = sub_237C05DBC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *(a1 + 8);
  v13 = *a1;
  v14 = v11;
  sub_2379DBCF4(v13, v11);
  sub_237A70ED4(&v13, v10);
  MLBoostedTreeRegressor.evaluation(on:)(v10);
  return (*(v5 + 8))(v10, v2);
}

void MLBoostedTreeRegressor.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v51 = v0;
  v3 = v2;
  v4 = type metadata accessor for TreeRegressorModel();
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_237C07F1C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = sub_237C05ADC();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v26 = v3;
  v29 = v28 - v27;
  memcpy(v50, v26, 0x48uLL);
  sub_2379F25FC();
  if (!v1)
  {
    v42 = v14;
    v43 = v23;
    OUTLINED_FUNCTION_3_48();
    sub_237AF7ECC(v51, v10, v30);
    v31 = *(&v50[0] + 1);
    if (*(&v50[0] + 1))
    {
      v32 = *&v50[0];
      v33 = *(&v50[1] + 1);
      v34 = *&v50[1];
      v35 = v50[2];
      v36 = *(&v50[3] + 1);
      v37 = *&v50[3];
      v38 = *&v50[4];
    }

    else
    {
      v39 = v29;
      v40 = NSFullUserName();
      v32 = sub_237C086EC();
      v31 = v41;

      v29 = v39;
      v38 = 0;
      v33 = 0x8000000237C17C90;
      v34 = 0xD000000000000033;
      v35 = 0uLL;
      v36 = 0xE100000000000000;
      v37 = 49;
    }

    v45[0] = v32;
    v45[1] = v31;
    v45[2] = v34;
    v45[3] = v33;
    v46 = v35;
    v47 = v37;
    v48 = v36;
    v49 = v38;
    sub_2379FC864(v50, &v44, &qword_27DE9ADE0, &unk_237C0BF90);
    sub_2379FB350(v45);
    OUTLINED_FUNCTION_0_56();
    sub_237AF8310();
    sub_2379FC064(v45);
    sub_237C07E5C();
    (*(v42 + 8))(v19, v11);
    (*(v43 + 8))(v29, v20);
  }

  OUTLINED_FUNCTION_73();
}