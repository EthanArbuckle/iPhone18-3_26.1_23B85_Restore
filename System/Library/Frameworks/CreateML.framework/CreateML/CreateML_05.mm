unint64_t MLDataTable.Rows.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_20();
  v2 = MLDataTable.Rows.description.getter();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = sub_237A02218(v2, v4, 0);
  result = sub_237A022C0();
  a1[3] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_237A3AFD0()
{
  result = qword_27DE9B5C0;
  if (!qword_27DE9B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B5C0);
  }

  return result;
}

unint64_t sub_237A3B06C()
{
  result = qword_27DE9B5D8;
  if (!qword_27DE9B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B5D8);
  }

  return result;
}

unint64_t sub_237A3B0C4()
{
  result = qword_27DE9B5E0;
  if (!qword_27DE9B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B5E0);
  }

  return result;
}

uint64_t sub_237A3B160(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B5D0, &qword_237C0D8D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237A3B1DC()
{
  result = qword_27DE9B5F0;
  if (!qword_27DE9B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B5F0);
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

uint64_t _s14descr284ABE0A1V20FeatureExtractorTypeOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s14descr284ABE0A1V20FeatureExtractorTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t OUTLINED_FUNCTION_1_18()
{

  return sub_237A018D0();
}

uint64_t OUTLINED_FUNCTION_2_22()
{

  return MLDataTable.size.getter();
}

void OUTLINED_FUNCTION_4_17()
{

  JUMPOUT(0x2383DC360);
}

id MLLogisticRegressionClassifier.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLLogisticRegressionClassifier() + 20));

  return v1;
}

uint64_t type metadata accessor for MLLogisticRegressionClassifier()
{
  result = qword_27DE9B648;
  if (!qword_27DE9B648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLLogisticRegressionClassifier.model.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLLogisticRegressionClassifier() + 20);

  *(v1 + v2) = v0;
}

void (*MLLogisticRegressionClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLLogisticRegressionClassifier() + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLLogisticRegressionClassifier.targetColumn.getter()
{
  v1 = (v0 + *(type metadata accessor for MLLogisticRegressionClassifier() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLLogisticRegressionClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLLogisticRegressionClassifier() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*MLLogisticRegressionClassifier.targetColumn.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLLogisticRegressionClassifier() + 24);
  return nullsub_1;
}

uint64_t MLLogisticRegressionClassifier.featureColumns.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLLogisticRegressionClassifier() + 28));
}

uint64_t MLLogisticRegressionClassifier.featureColumns.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLLogisticRegressionClassifier() + 28);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*MLLogisticRegressionClassifier.featureColumns.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLLogisticRegressionClassifier() + 28);
  return nullsub_1;
}

uint64_t MLLogisticRegressionClassifier.modelParameters.getter()
{
  OUTLINED_FUNCTION_146();
  v2 = v1 + *(type metadata accessor for MLLogisticRegressionClassifier() + 32);

  return sub_237A3B70C(v2, v0);
}

uint64_t MLLogisticRegressionClassifier.trainingMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = *(type metadata accessor for MLLogisticRegressionClassifier() + 36);
  return OUTLINED_FUNCTION_24_8();
}

uint64_t MLLogisticRegressionClassifier.validationMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = *(type metadata accessor for MLLogisticRegressionClassifier() + 40);
  return OUTLINED_FUNCTION_24_8();
}

uint64_t sub_237A3B7C0()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_allocate_value_buffer(v0, qword_27DE9B610);
  v1 = __swift_project_value_buffer(v0, qword_27DE9B610);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLLogisticRegressionClassifier._defaultSessionParameters.getter()
{
  if (qword_27DE9A570 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_project_value_buffer(v0, qword_27DE9B610);
  OUTLINED_FUNCTION_0_21();
  return sub_237A40094();
}

uint64_t sub_237A3B8B4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237A3B95C;

  return sub_237B917EC();
}

uint64_t sub_237A3B95C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_48_4();
  v4 = v3;
  OUTLINED_FUNCTION_95();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_3();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_41_2();

    return v10();
  }

  else
  {
    *(v4 + 32) = v0;
    v12 = OUTLINED_FUNCTION_28_3();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

void MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v23;
  a20 = v24;
  v248 = v20;
  v254 = v25;
  v249 = v26;
  v256[0] = v27;
  v246 = v28;
  v251 = v29;
  v31 = v30;
  v32 = type metadata accessor for AnyClassificationMetrics();
  v33 = OUTLINED_FUNCTION_20(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_58();
  v38 = OUTLINED_FUNCTION_21_3(v37);
  v39 = type metadata accessor for MLClassifierMetrics(v38);
  v40 = OUTLINED_FUNCTION_20(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v44);
  v45 = _s5ModelVMa();
  v230 = *(v45 - 8);
  v46 = *(v230 + 64);
  MEMORY[0x28223BE20](v45 - 8);
  OUTLINED_FUNCTION_77_0(&v220 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v231 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v50);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B628, &unk_237C0DBE0);
  v51 = OUTLINED_FUNCTION_0(v239);
  v237 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_77_0(&v220 - v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_21_3(&v220 - v66);
  v243 = sub_237C0602C();
  v67 = OUTLINED_FUNCTION_0(v243);
  v238 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v73);
  v234 = _s10ClassifierVMa_1();
  v74 = OUTLINED_FUNCTION_4(v234);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v78);
  v255 = sub_237C05DBC();
  v79 = OUTLINED_FUNCTION_0(v255);
  v253 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v86);
  v247 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v87 = OUTLINED_FUNCTION_4(v247);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  a10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v90 = OUTLINED_FUNCTION_4(a10);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_46_2();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v96);
  v98 = v97;
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_66_1();
  v102 = type metadata accessor for MLLogisticRegressionClassifier();
  v103 = (v31 + *(v102 + 36));
  sub_237C06FAC();
  v104 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v105 = v103 + *(v104 + 20);
  sub_2379E51D0();
  v106 = v103 + *(v104 + 24);
  sub_2379E5C70();
  (*(v98 + 8))(v22, v96);
  *v103 = 0;
  v107 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v250 = v103;
  swift_storeEnumTagMultiPayload();
  v229 = v102;
  v108 = *(v102 + 40);
  v109 = sub_2379E8AF0();
  v110 = OUTLINED_FUNCTION_6_2();
  *v111 = 0xD0000000000000C0;
  v111[1] = 0x8000000237C17B10;
  v112 = v254;
  OUTLINED_FUNCTION_23_3(v110, v111);
  *(v31 + v108) = v113;
  v252 = v31;
  v227 = v107;
  swift_storeEnumTagMultiPayload();
  sub_237A40628();
  if (v259)
  {
    v114 = *(a10 + 48);
    sub_2379DAD24(&v258, v261);
    swift_dynamicCast();
    v115 = v251;
    v116 = v248;
    sub_237B7C890(v21, v21 + v114, v251);
    if (v116)
    {

      sub_237A2A1B0(v112);
      OUTLINED_FUNCTION_36_3(&a10);
      v117(v115, v255);
    }

    else
    {
      v248 = v109;
      OUTLINED_FUNCTION_2_23();
      sub_237A405D4();
      v118 = v256[0];
      sub_237B19700(v21, v246, v256[0], v249);
      v222 = v119;
      v221 = v108;

      v247 = v21;
      OUTLINED_FUNCTION_61_2(&v260);
      sub_237A40628();
      v120 = *(a10 + 48);
      v121 = v255;
      OUTLINED_FUNCTION_73_1(v96 + v120, 1, v255);
      v122 = v253;
      if (v123)
      {
        sub_2379D9054(v96 + v120, &qword_27DE9A9A0, &qword_237C0BF60);
        v124 = *(v122 + 8);
        v125 = OUTLINED_FUNCTION_82();
        v240 = v126;
        (v126)(v125);
        v133 = v246;
      }

      else
      {
        (*(v253 + 32))(v241, v96 + v120, v121);
        v249 = 0;
        v130 = *(v122 + 8);
        v131 = OUTLINED_FUNCTION_82();
        v130(v131);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_237C0B660;
        v133 = v246;
        *(inited + 32) = v246;
        *(inited + 40) = v118;

        v220 = "ds at least two labels.";
        v134 = v249;
        sub_2379F2DA4();
        OUTLINED_FUNCTION_65_1();
        if (v134)
        {

          OUTLINED_FUNCTION_57_2();
          swift_setDeallocating();
          sub_237B9082C();
          OUTLINED_FUNCTION_51_3();
          (v130)(v115, v121);
          (v130)(v241, v121);
          v135 = OUTLINED_FUNCTION_30_6();
          sub_2379D9054(v135, v136, v137);
          OUTLINED_FUNCTION_64_2();
          goto LABEL_20;
        }

        v240 = v130;
        swift_setDeallocating();
        sub_237B9082C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
        v180 = swift_allocObject();
        *(v180 + 16) = xmmword_237C0B670;
        v181 = MEMORY[0x277D83B88];
        *(v180 + 32) = MEMORY[0x277D837D0];
        *(v180 + 40) = v181;
        v182 = v241;
        v183 = v249;
        sub_2379F30EC();
        if (v183)
        {

          OUTLINED_FUNCTION_57_2();

          OUTLINED_FUNCTION_51_3();
          OUTLINED_FUNCTION_35_2(&a12);
          v184 = v240;
          v240();
          (v184)(v182, v118);
          v185 = OUTLINED_FUNCTION_30_6();
          sub_2379D9054(v185, v186, v187);
          goto LABEL_20;
        }

        v121 = v255;
        (v240)(v182, v255);

        v112 = v254;
        v122 = v253;
      }

      sub_237C05DFC();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_61_2(&v258 + 8);
      sub_237A40628();
      v127 = v133 + *(a10 + 48);
      v128 = v233;
      sub_237A403B4();
      OUTLINED_FUNCTION_73_1(v128, 1, v121);
      v249 = 0;
      if (v123)
      {
        v129 = OUTLINED_FUNCTION_82();
        (v240)(v129);
        sub_2379D9054(v128, &qword_27DE9A9A0, &qword_237C0BF60);
        __swift_storeEnumTagSinglePayload(v245, 1, 1, v243);
      }

      else
      {
        OUTLINED_FUNCTION_53_2(&v262);
        sub_237C05DFC();
        v138 = v128;
        v139 = v240;
        (v240)(v138, v121);
        __swift_storeEnumTagSinglePayload(v122, 0, 1, v243);
        v140 = OUTLINED_FUNCTION_82();
        (v139)(v140);
        v118 = v256[0];
      }

      v141 = v239;
      v142 = v244;
      sub_237A3B70C(v112, v261);
      *v142 = v246;
      v142[1] = v118;
      v143 = v222;
      v142[2] = v222;
      sub_237A3B70C(v261, (v142 + 3));
      OUTLINED_FUNCTION_80();
      v142[15] = v143;
      v142[16] = 0xD000000000000013;
      v142[17] = v144;
      sub_237A3B70C(v261, &v258);
      sub_237A20BBC();
      swift_bridgeObjectRetain_n();

      v145 = v236;
      sub_237C072AC();
      v146 = v141;
      sub_237C0725C();
      sub_237C0728C();
      sub_237C0729C();
      sub_237C0727C();
      sub_237C0726C();
      sub_237A2A1B0(&v258);
      v147 = v237;
      (*(v237 + 16))(v235, v145, v141);
      v241 = *(v234 + 36);
      sub_237C073CC();
      v148 = v249;
      sub_237B89590(v242, v245);
      OUTLINED_FUNCTION_65_1();
      v151 = v221;
      if (v148)
      {

        sub_237A2A1B0(v112);
        OUTLINED_FUNCTION_18_10();
        OUTLINED_FUNCTION_14_6();
        v152();
        (*(v147 + 8))(v145, v141);
        sub_237A2A1B0(v261);
        sub_2379D9054(v245, &qword_27DE9AF88, &unk_237C0C700);
        v153 = OUTLINED_FUNCTION_34_3();
        v154(v153);
        v155 = OUTLINED_FUNCTION_30_6();
        sub_2379D9054(v155, v156, v157);

        v158 = v244;
        sub_237A2A1B0((v244 + 3));

        v159 = sub_237C0741C();
        OUTLINED_FUNCTION_4(v159);
        (*(v160 + 8))(&v158[v241]);
        OUTLINED_FUNCTION_64_2();
        goto LABEL_20;
      }

      v161 = v149;
      v162 = v145;
      v163 = v150;
      (*(v147 + 8))(v162, v146);
      sub_237A2A1B0(v261);
      sub_2379D9054(v245, &qword_27DE9AF88, &unk_237C0C700);
      v164 = OUTLINED_FUNCTION_34_3();
      v165(v164);
      v166 = v244;
      v244[13] = v161;
      *(v166 + 112) = v163 & 1;
      v167 = v232;
      sub_237A40680();
      if (*(*(v167 + 104) + 16) <= 1uLL)
      {

        OUTLINED_FUNCTION_57_2();
        v188 = OUTLINED_FUNCTION_6_2();
        *v189 = 0xD000000000000027;
        v189[1] = 0x8000000237C18C90;
        OUTLINED_FUNCTION_23_3(v188, v189);
        swift_willThrow();
        OUTLINED_FUNCTION_51_3();
        OUTLINED_FUNCTION_18_10();
        OUTLINED_FUNCTION_14_6();
        v190();
        v179 = OUTLINED_FUNCTION_30_6();
      }

      else
      {
        v168 = v247;
        OUTLINED_FUNCTION_53_2(&v257);
        OUTLINED_FUNCTION_71();
        v169 = v249;
        sub_237A94F48(v170, v171, v172, v173, v174);
        v175 = v256[0];
        if (!v169)
        {
          v191 = v229;
          v192 = v252;
          v193 = (v252 + v229[6]);
          *v193 = v246;
          v193[1] = v175;
          v248 = v191[8];
          sub_237A3B70C(v254, v192 + v248);
          *(v192 + v191[7]) = v222;
          OUTLINED_FUNCTION_3_20();
          sub_237A40094();
          v194 = (*(v230 + 80) + 16) & ~*(v230 + 80);
          swift_allocObject();
          OUTLINED_FUNCTION_8_14();
          sub_237A40680();
          sub_2379DD56C();
          v196 = v195;

          *(v252 + v191[5]) = v196;
          OUTLINED_FUNCTION_3_20();
          sub_237A40094();
          v197 = v228;
          v198 = v247;
          sub_237A93A8C(v228);
          OUTLINED_FUNCTION_65_1();
          v202 = MEMORY[0xD00000000000001C];
          v203 = MEMORY[0xD000000000000024];
          sub_237C05DFC();
          OUTLINED_FUNCTION_53_2(v256);
          v246 = v202;
          v245 = v203;
          sub_237C05DFC();
          sub_237B0CBBC();
          v204 = v253;
          v205 = v255;
          v206 = v240;
          (v240)(v197, v255);
          OUTLINED_FUNCTION_13_7();
          v207 = v226;
          sub_237A40680();
          swift_storeEnumTagMultiPayload();
          sub_2379DC1F8(v207, v250);
          v208 = v225;
          sub_237A40628();
          v209 = *(a10 + 48);
          OUTLINED_FUNCTION_73_1(v208 + v209, 1, v205);
          if (v123)
          {
            OUTLINED_FUNCTION_51_3();
            v210 = OUTLINED_FUNCTION_43_3();
            (v206)(v210);
            OUTLINED_FUNCTION_1_19();
            sub_237A405D4();
            sub_2379D9054(v198, &qword_27DE9ADC0, &unk_237C0BF40);
            OUTLINED_FUNCTION_4_18();
            OUTLINED_FUNCTION_71_0();
            sub_2379D9054(v208 + v209, &qword_27DE9A9A0, &qword_237C0BF60);
            (v206)(v208, v205);
          }

          else
          {
            v211 = v224;
            (*(v204 + 32))(v224, v208 + v209, v205);
            (v206)(v208, v205);
            OUTLINED_FUNCTION_53_2(&v249);
            v212 = v249;
            sub_237A93A8C(v213);
            OUTLINED_FUNCTION_65_1();
            if (v212)
            {
              OUTLINED_FUNCTION_51_3();
              v214 = OUTLINED_FUNCTION_43_3();
              (v206)(v214);
              (v206)(v211, v205);
              sub_237A405D4();
              v199 = OUTLINED_FUNCTION_30_6();
              sub_2379D9054(v199, v200, v201);
              OUTLINED_FUNCTION_4_18();
              OUTLINED_FUNCTION_71_0();
              sub_237A405D4();
              OUTLINED_FUNCTION_57_2();

              OUTLINED_FUNCTION_64_2();
              sub_237A2A1B0(v252 + v248);
              goto LABEL_20;
            }

            sub_237C05DFC();
            OUTLINED_FUNCTION_53_2(v256);
            v215 = v224;
            sub_237C05DFC();
            sub_237B0CBBC();
            (v206)(v223, v205);
            OUTLINED_FUNCTION_51_3();
            v216 = OUTLINED_FUNCTION_43_3();
            (v206)(v216);
            (v206)(v215, v205);
            OUTLINED_FUNCTION_1_19();
            sub_237A405D4();
            v217 = OUTLINED_FUNCTION_30_6();
            sub_2379D9054(v217, v218, v219);
            OUTLINED_FUNCTION_13_7();
            OUTLINED_FUNCTION_35_2(&v247);
            sub_237A40680();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_4_18();
            OUTLINED_FUNCTION_71_0();
            sub_2379DC1F8(v215, v252 + v151);
          }

          OUTLINED_FUNCTION_64_2();
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_57_2();
        OUTLINED_FUNCTION_51_3();
        OUTLINED_FUNCTION_18_10();
        OUTLINED_FUNCTION_14_6();
        v176();
        v177 = &qword_27DE9ADC0;
        v178 = &unk_237C0BF40;
        v179 = v168;
      }

      sub_2379D9054(v179, v177, v178);
    }

    sub_237A405D4();
LABEL_20:
    sub_237A405D4();
    sub_237A405D4();
LABEL_21:
    OUTLINED_FUNCTION_73();
    return;
  }

  __break(1u);
}

uint64_t MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_237C05DBC();
  v11 = OUTLINED_FUNCTION_20(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  LOBYTE(v15) = *(a1 + 8);
  v21 = *a1;
  LOBYTE(v22) = v15;
  sub_237A70ED4(&v21, v16);
  sub_237A3B70C(a5, &v21);
  MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v16, a2, a3, a4, &v21, v17, v18, v19, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  return sub_237A2A1B0(a5);
}

void MLLogisticRegressionClassifier.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v56 = v0;
  v2 = v1;
  v4 = v3;
  v52 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v5 = OUTLINED_FUNCTION_4(v52);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  v50[1] = v8;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_58();
  v51 = v10;
  OUTLINED_FUNCTION_41_0();
  v11 = _s5ModelVMa();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v54 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  v58 = v14;
  OUTLINED_FUNCTION_41_0();
  v55 = _s10ClassifierVMa_1();
  v15 = OUTLINED_FUNCTION_4(v55);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v57 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  v26 = type metadata accessor for MLLogisticRegressionClassifier();
  v27 = (v4 + *(v26 + 36));
  sub_237C06FAC();
  v28 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v29 = v27 + *(v28 + 20);
  sub_2379E51D0();
  v30 = v27 + *(v28 + 24);
  sub_2379E5C70();
  v31 = *(v22 + 8);
  v32 = OUTLINED_FUNCTION_55();
  v33(v32);
  *v27 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v50[0] = v26;
  v34 = *(v26 + 40);
  sub_2379E8AF0();
  v35 = OUTLINED_FUNCTION_6_2();
  *v36 = 0xD0000000000000C0;
  v36[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v35, v36);
  *(v4 + v34) = v37;
  swift_storeEnumTagMultiPayload();
  switch(*(v2 + *(type metadata accessor for MLCheckpoint() + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v38 = sub_237C0929C();

      if (v38)
      {
LABEL_4:
        sub_237A95650(MEMORY[0x277D84F90], 1, 0, 0xE000000000000000, MEMORY[0x277D84F90], v57);
        sub_237A3FE94();
        v39 = v56;
        sub_237C0743C();
        if (!v39)
        {
          OUTLINED_FUNCTION_3_20();
          sub_237A40094();
          v42 = (*(v53 + 80) + 16) & ~*(v53 + 80);
          swift_allocObject();
          OUTLINED_FUNCTION_8_14();
          sub_237A40680();
          sub_2379DD56C();
          v44 = v43;

          v45 = v50[0];
          *(v4 + *(v50[0] + 20)) = v44;
          OUTLINED_FUNCTION_3_20();
          sub_237A40094();
          v47 = v51;
          v46 = v52;
          *v51 = 0;
          v47[1] = 0;
          *(v47 + 8) = 256;
          swift_storeEnumTagMultiPayload();
          v48 = v4 + v45[8];
          *(v48 + 40) = xmmword_237C0CFC0;
          *(v48 + 56) = xmmword_237C0CFD0;
          *(v48 + 24) = 0u;
          *v48 = 10;
          *(v48 + 72) = 1;
          *(v48 + 8) = 0u;
          sub_237A40094();
          v59[3] = v46;
          __swift_allocate_boxed_opaque_existential_0(v59);
          sub_237A40680();
          OUTLINED_FUNCTION_2_23();
          sub_237A405D4();
          sub_2379DAE54(v59, v48 + 8);
          v49 = (v4 + v45[6]);
          *v49 = 0;
          v49[1] = 0xE000000000000000;
          OUTLINED_FUNCTION_7_14();
          sub_237A405D4();
          OUTLINED_FUNCTION_1_19();
          sub_237A405D4();
          OUTLINED_FUNCTION_4_18();
          sub_237A405D4();
          *(v4 + v45[7]) = MEMORY[0x277D84F90];
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_7_14();
        sub_237A405D4();
        OUTLINED_FUNCTION_4_18();
      }

      else
      {
        v40 = OUTLINED_FUNCTION_6_2();
        *v41 = 0xD000000000000049;
        v41[1] = 0x8000000237C18CE0;
        OUTLINED_FUNCTION_23_3(v40, v41);
        swift_willThrow();
        OUTLINED_FUNCTION_7_14();
      }

      sub_237A405D4();
      OUTLINED_FUNCTION_23_9();
      sub_237A405D4();
      sub_237A405D4();
LABEL_9:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237A3D858(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237A3D900;

  return sub_237B917EC();
}

uint64_t sub_237A3D900()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_48_4();
  v4 = v3;
  OUTLINED_FUNCTION_95();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_3();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_41_2();

    return v10();
  }

  else
  {
    *(v4 + 32) = v0;
    v12 = OUTLINED_FUNCTION_28_3();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

void static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v79 = v20;
  v75 = v23;
  v76 = v24;
  v26 = v25;
  v73 = v27;
  v74 = v28;
  v30 = v29;
  v31 = type metadata accessor for MLTrainingSessionParameters();
  v32 = OUTLINED_FUNCTION_20(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v36);
  v37 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v42 = OUTLINED_FUNCTION_4(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_14_0();
  v77 = v45;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_138();
  v78 = v47;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v48);
  v50 = v70 - v49;
  v85 = sub_237C05DBC();
  v51 = OUTLINED_FUNCTION_0(v85);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_2_0();
  v58 = v57 - v56;
  v59 = *(v30 + 8);
  *&v80 = *v30;
  BYTE8(v80) = v59;
  sub_2379DBCF4(v80, v59);
  sub_237A70ED4(&v80, v58);
  v72 = v26;
  sub_237A40628();
  if (v84)
  {
    v60 = *(v41 + 48);
    sub_2379DAD24(&v83, &v80);
    OUTLINED_FUNCTION_44_3();
    swift_dynamicCast();
    v61 = v79;
    sub_237B7C890(v50, &v50[v60], v58);
    if (v61)
    {
      (*(v53 + 8))(v58, v85);
      OUTLINED_FUNCTION_2_23();
      sub_237A405D4();
    }

    else
    {
      v71 = v53;
      OUTLINED_FUNCTION_2_23();
      sub_237A405D4();
      sub_237A40628();
      v79 = *(v41 + 48);
      sub_237A40628();
      v70[1] = *(v41 + 48);
      sub_237A3B70C(v72, &v80);
      OUTLINED_FUNCTION_0_21();
      OUTLINED_FUNCTION_61_2(&a18);
      sub_237A40094();
      v62 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate();
      OUTLINED_FUNCTION_91(v62);

      sub_237AF8658();
      v64 = v63;
      v65 = *(v71 + 8);
      v65(v77, v85);
      sub_2379D9054(v78 + v79, &qword_27DE9A9A0, &qword_237C0BF60);
      v81 = v62;
      v82 = &off_284AC4368;
      *&v80 = v64;
      OUTLINED_FUNCTION_0_21();
      OUTLINED_FUNCTION_35_2(&a16);
      sub_237A40094();
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B640, &qword_237C0DC18);
      OUTLINED_FUNCTION_91(v66);
      v67 = OUTLINED_FUNCTION_45_1();
      sub_2379E41A0(v67, v68, v69);
      sub_2379D9054(v50, &qword_27DE9ADC0, &unk_237C0BF40);
      v65(v58, v85);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static MLLogisticRegressionClassifier.resume(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B638, &qword_237C0DC10);
  v3 = OUTLINED_FUNCTION_91(v2);

  return sub_237BEC01C(v3, a1);
}

void static MLLogisticRegressionClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v43 = v4;
  OUTLINED_FUNCTION_46();
  v5 = type metadata accessor for MLTrainingSessionParameters();
  v6 = OUTLINED_FUNCTION_20(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_41_0();
  v10 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_46_2();
  v42 = v3;
  sub_237A40628();
  if (v48)
  {
    v23 = *(v14 + 48);
    sub_2379DAD24(&v47, &v44);
    OUTLINED_FUNCTION_44_3();
    swift_dynamicCast();
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_2_23();
    sub_237A405D4();
    if (!v0)
    {
      OUTLINED_FUNCTION_70_1();
      OUTLINED_FUNCTION_50_2();
      v24 = *(v14 + 48);
      sub_237A3B70C(v42, &v44);
      OUTLINED_FUNCTION_0_21();
      sub_237A40094();
      v25 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate();
      OUTLINED_FUNCTION_91(v25);

      OUTLINED_FUNCTION_32_4();
      if (v43)
      {
        sub_2379D9054(v1, &qword_27DE9ADC0, &unk_237C0BF40);
        v27 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v27);
        v29 = (*(v28 + 8))(v20);
        OUTLINED_FUNCTION_72_1(v29, &qword_27DE9A9A0, &qword_237C0BF60);
      }

      else
      {
        v30 = v26;
        v31 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v31);
        v33 = (*(v32 + 8))(v20);
        OUTLINED_FUNCTION_72_1(v33, &qword_27DE9A9A0, &qword_237C0BF60);
        v45 = v25;
        v46 = &off_284AC4368;
        *&v44 = v30;
        OUTLINED_FUNCTION_0_21();
        sub_237A40094();
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B640, &qword_237C0DC18);
        OUTLINED_FUNCTION_91(v34);

        v35 = OUTLINED_FUNCTION_45_1();
        sub_2379E41A0(v35, v36, v37);
        v39 = v38;
        sub_2379D9054(v1, &qword_27DE9ADC0, &unk_237C0BF40);

        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B638, &qword_237C0DC10);
        v41 = OUTLINED_FUNCTION_91(v40);
        sub_237BEC01C(v41, v39);
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v39 = v4;
  OUTLINED_FUNCTION_46();
  v5 = type metadata accessor for MLTrainingSessionParameters();
  v6 = OUTLINED_FUNCTION_20(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_41_0();
  v10 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_46_2();
  v38 = v3;
  sub_237A40628();
  if (v44)
  {
    v23 = *(v14 + 48);
    sub_2379DAD24(&v43, &v40);
    OUTLINED_FUNCTION_44_3();
    swift_dynamicCast();
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_2_23();
    sub_237A405D4();
    if (!v0)
    {
      OUTLINED_FUNCTION_70_1();
      OUTLINED_FUNCTION_50_2();
      v24 = *(v14 + 48);
      sub_237A3B70C(v38, &v40);
      OUTLINED_FUNCTION_0_21();
      sub_237A40094();
      v25 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate();
      OUTLINED_FUNCTION_91(v25);

      OUTLINED_FUNCTION_32_4();
      if (v39)
      {
        sub_2379D9054(v1, &qword_27DE9ADC0, &unk_237C0BF40);
        v27 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v27);
        v29 = (*(v28 + 8))(v20);
        OUTLINED_FUNCTION_72_1(v29, &qword_27DE9A9A0, &qword_237C0BF60);
      }

      else
      {
        v30 = v26;
        v31 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v31);
        v33 = (*(v32 + 8))(v20);
        OUTLINED_FUNCTION_72_1(v33, &qword_27DE9A9A0, &qword_237C0BF60);
        v41 = v25;
        v42 = &off_284AC4368;
        *&v40 = v30;
        OUTLINED_FUNCTION_0_21();
        sub_237A40094();
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B640, &qword_237C0DC18);
        OUTLINED_FUNCTION_91(v34);

        v35 = OUTLINED_FUNCTION_45_1();
        sub_2379E41A0(v35, v36, v37);
        sub_2379D9054(v1, &qword_27DE9ADC0, &unk_237C0BF40);
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLLogisticRegressionClassifier.restoreTrainingSession(sessionParameters:)()
{
  v1 = type metadata accessor for MLTrainingSessionParameters();
  v2 = OUTLINED_FUNCTION_20(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-1] - v9;
  OUTLINED_FUNCTION_0_21();
  sub_237A40094();
  v11 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate();
  OUTLINED_FUNCTION_91(v11);
  v12 = sub_237AF8540(v10);
  if (!v0)
  {
    v15[3] = v11;
    v15[4] = &off_284AC4368;
    v15[0] = v12;
    OUTLINED_FUNCTION_0_21();
    sub_237A40094();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B640, &qword_237C0DC18);
    OUTLINED_FUNCTION_91(v13);
    sub_2379E41A0(v15, v7, 8);
  }
}

uint64_t sub_237A3E7CC(void *a1, char a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B658, &unk_237C0DCF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v19[-v15];
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    a4(v12);
    v16 = v12;
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate();
    swift_dynamicCast();

    sub_237A3EA08();
    swift_storeEnumTagMultiPayload();
    sub_237A403B4();
    sub_237A403B4();
    a4(v16);
  }

  return sub_2379D9054(v16, &qword_27DE9B658, &unk_237C0DCF0);
}

void sub_237A3EA08()
{
  OUTLINED_FUNCTION_74();
  v86 = v1;
  v78 = v2;
  v77 = type metadata accessor for MLClassifierMetrics(0);
  v3 = OUTLINED_FUNCTION_4(v77);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B660, &qword_237C0DD00);
  v9 = OUTLINED_FUNCTION_20(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v13);
  v85 = _s5ModelVMa();
  v14 = OUTLINED_FUNCTION_0(v85);
  v82 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v83 = v18;
  OUTLINED_FUNCTION_77_0(&v76[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v81);
  v80 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  v24 = &v76[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B668, &qword_237C0DD08);
  OUTLINED_FUNCTION_20(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  v93 = &v76[-v29];
  OUTLINED_FUNCTION_41_0();
  v84 = type metadata accessor for MLLogisticRegressionClassifier();
  v30 = OUTLINED_FUNCTION_4(v84);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18_0();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41);
  v43 = &v76[-v42];
  v44 = _s20PersistentParametersVMa_1();
  v45 = OUTLINED_FUNCTION_4(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_0();
  v50 = v49 - v48;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v43, 1, v44);
  if (v51)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_237A40680();
  sub_237A3B70C(v50 + v44[8], &v88);
  v52 = v44[7];
  v53 = (v50 + v44[6]);
  v54 = v53[1];
  v79 = *v53;
  v55 = *(v50 + v52);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v93, 1, v85);
  if (v51)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_237A3B70C(&v88, v87);
  v56 = v84;
  v57 = (v35 + v84[9]);

  sub_237C06FAC();
  v58 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v59 = v57 + *(v58 + 20);
  sub_2379E51D0();
  v60 = v57 + *(v58 + 24);
  sub_2379E5C70();
  OUTLINED_FUNCTION_36_3(&v91);
  v61(v24, v81);
  *v57 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_55();
  swift_storeEnumTagMultiPayload();
  v62 = v56[10];
  sub_2379E8AF0();
  v63 = OUTLINED_FUNCTION_6_2();
  *v64 = 0xD0000000000000C0;
  v64[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v63, v64);
  *(v35 + v62) = v65;
  swift_storeEnumTagMultiPayload();
  v66 = v56[7];
  v85 = v55;
  *(v35 + v66) = v55;
  v67 = (v35 + v56[6]);
  *v67 = v79;
  v67[1] = v54;
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_61_2(&v92);
  sub_237A40094();
  v68 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_8_14();
  sub_237A40680();
  sub_2379DD56C();
  if (v0)
  {

    sub_237A2A1B0(v87);
    sub_237A2A1B0(&v88);
    OUTLINED_FUNCTION_1_19();
    sub_237A405D4();

    OUTLINED_FUNCTION_23_9();
    sub_237A405D4();
    sub_237A405D4();
    OUTLINED_FUNCTION_26_6();
LABEL_9:
    OUTLINED_FUNCTION_73();
    return;
  }

  v70 = v69;

  *(v35 + v56[5]) = v70;
  OUTLINED_FUNCTION_8_14();
  sub_237A40680();
  memcpy((v35 + v56[8]), v87, 0x49uLL);
  v71 = v56;
  sub_237A40680();
  v72 = v78;
  sub_237A40680();
  v73 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_35_2(&v90);
  sub_237A40628();
  v74 = v77;
  OUTLINED_FUNCTION_73_1(v73, 1, v77);
  if (!v51)
  {
    sub_237A2A1B0(&v88);
    OUTLINED_FUNCTION_26_6();
    sub_2379DC1F8(v73, v72 + v71[9]);
    v75 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    OUTLINED_FUNCTION_35_2(&v89);
    sub_237A40628();

    OUTLINED_FUNCTION_73_1(v75, 1, v74);
    if (v51)
    {
      sub_2379D9054(v75, &qword_27DE9B660, &qword_237C0DD00);
    }

    else
    {
      OUTLINED_FUNCTION_35_2(&v88);
      sub_237A40680();
      sub_2379DC1F8(v75, v72 + v71[10]);
    }

    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

void MLLogisticRegressionClassifier.predictions(from:)()
{
  v3 = sub_237C05DBC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v9 = *(v0 + *(type metadata accessor for MLLogisticRegressionClassifier() + 28));
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v1)
  {
    sub_237A93A8C(v2);
    v10 = *v0;
    v11 = v0[1];
    sub_237C05DFC();
    (*(v6 + 8))(v2, v3);
  }
}

uint64_t MLLogisticRegressionClassifier.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v5 = sub_237C05DBC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v11 = sub_237C0602C();
  v12 = OUTLINED_FUNCTION_20(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = *(a1 + 8);
  v20 = *a1;
  v21 = v18;
  sub_2379DBCF4(v20, v18);
  sub_237A70ED4(&v20, v3);
  MLLogisticRegressionClassifier.predictions(from:)();
  if (v2)
  {
    return (*(v8 + 8))(v3, v5);
  }

  (*(v8 + 8))(v3, v5);
  return sub_237A72900(v17, 1, v1);
}

uint64_t MLLogisticRegressionClassifier.evaluation(on:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v4 = type metadata accessor for AnyClassificationMetrics();
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v8 = type metadata accessor for MLLogisticRegressionClassifier();
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
  sub_237A938EC(a1, v2);
  OUTLINED_FUNCTION_13_7();
  sub_237A40680();
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
  v16 = *a1;
  v17 = v11;
  sub_2379DBCF4(v16, v11);
  sub_237A70ED4(&v16, v10);
  MLLogisticRegressionClassifier.evaluation(on:)(v10);
  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_55();
  return v14(v13);
}

void MLLogisticRegressionClassifier.write(to:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = _s5ModelVMa();
  v26 = OUTLINED_FUNCTION_20(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v29 = sub_237C07F1C();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v35 = sub_237C05ADC();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_0();
  v39 = v24;
  v42 = v41 - v40;
  memcpy(v64, v39, 0x48uLL);
  sub_2379F25FC();
  if (!v20)
  {
    v58 = v32;
    OUTLINED_FUNCTION_3_20();
    sub_237A40094();
    v43 = *(&v64[0] + 1);
    if (*(&v64[0] + 1))
    {
      v44 = *&v64[0];
      v45 = *(&v64[1] + 1);
      v46 = *&v64[1];
      v47 = v64[2];
      v48 = *(&v64[3] + 1);
      v49 = *&v64[3];
      v50 = *&v64[4];
    }

    else
    {
      v51 = v42;
      v52 = NSFullUserName();
      v44 = sub_237C086EC();
      v43 = v53;

      v42 = v51;
      v50 = 0;
      v45 = 0x8000000237C17C90;
      v46 = 0xD000000000000033;
      v47 = 0uLL;
      v48 = 0xE100000000000000;
      v49 = 49;
    }

    v59[0] = v44;
    v59[1] = v43;
    v59[2] = v46;
    v59[3] = v45;
    v60 = v47;
    v61 = v49;
    v62 = v48;
    v63 = v50;
    sub_237A40628();
    sub_2379FB36C(v59);
    OUTLINED_FUNCTION_1_19();
    sub_237A405D4();
    sub_2379FC064(v59);
    sub_237C07E5C();
    v54 = *(v58 + 8);
    v55 = OUTLINED_FUNCTION_55();
    v56(v55);
    OUTLINED_FUNCTION_36_3(&a12);
    v57(v42, v35);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLLogisticRegressionClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v36 = v4;
  v37 = v2;
  v6 = v5;
  v7 = sub_237C0596C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_66_1();
  v20 = sub_237C05ADC();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  memcpy(v38, v6, sizeof(v38));
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v20);
  (*(v10 + 104))(v15, *MEMORY[0x277CC91D8], v7);

  sub_237C05ABC();
  MLLogisticRegressionClassifier.write(to:metadata:)(v28, v38, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8]);
  (*(v23 + 8))(v28, v20);
  OUTLINED_FUNCTION_73();
}

unint64_t MLLogisticRegressionClassifier.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = type metadata accessor for MLLogisticRegressionClassifier();
  v7 = v0 + v6[8];
  v8 = MLLogisticRegressionClassifier.ModelParameters.description.getter();
  v10 = v9;
  v11 = v1 + v6[9];
  v12 = MLClassifierMetrics.description.getter();
  v14 = v13;
  v15 = v6[10];
  sub_237A40094();
  LODWORD(v6) = swift_getEnumCaseMultiPayload();
  sub_237A405D4();
  v16 = MLClassifierMetrics.description.getter();
  v18 = v17;
  OUTLINED_FUNCTION_80();
  MEMORY[0x2383DC360](v8, v10);

  OUTLINED_FUNCTION_80();
  v22 = v19;
  MEMORY[0x2383DC360](v12, v14);
  MEMORY[0x2383DC360](0xD00000000000001ELL, v22);

  if (v6 <= 1)
  {
    OUTLINED_FUNCTION_80();
    v23 = v20;
    MEMORY[0x2383DC360](v16, v18);
    MEMORY[0x2383DC360](0xD000000000000020, v23);
  }

  return 0xD000000000000029;
}

id MLLogisticRegressionClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLLogisticRegressionClassifier.debugDescription.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237A3FDD8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v0 = _s5ModelVMa();
  OUTLINED_FUNCTION_20(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_55_0(v4);

  return sub_237A3B8B4(v6);
}

unint64_t sub_237A3FE94()
{
  result = qword_27DE9B630;
  if (!qword_27DE9B630)
  {
    _s10ClassifierVMa_1();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B630);
  }

  return result;
}

uint64_t sub_237A3FEEC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v0 = _s5ModelVMa();
  OUTLINED_FUNCTION_20(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_55_0(v4);

  return sub_237A3D858(v6);
}

uint64_t sub_237A3FFA8()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_237A40094()
{
  OUTLINED_FUNCTION_63_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return v0;
}

id sub_237A400EC@<X0>(void *a1@<X8>)
{
  result = MLLogisticRegressionClassifier.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237A40130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s5ModelVMa();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for MLClassifierMetrics(0);
    v8 = a1 + *(a3 + 36);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_237A40214(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s5ModelVMa();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for MLClassifierMetrics(0);
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_237A402E0()
{
  _s5ModelVMa();
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

uint64_t sub_237A403B4()
{
  OUTLINED_FUNCTION_63_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_37_0();
  v7(v6);
  return v0;
}

uint64_t objectdestroyTm_0()
{
  v1 = _s5ModelVMa();
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
  v9 = sub_237C0747C();
  OUTLINED_FUNCTION_4(v9);
  (*(v10 + 8))(v5 + v8);
  v11 = *(v5 + *(v1 + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_237A40518()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v0 = _s5ModelVMa();
  OUTLINED_FUNCTION_20(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_55_0(v4);

  return sub_237A3B8B4(v6);
}

uint64_t sub_237A405D4()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_237A40628()
{
  OUTLINED_FUNCTION_63_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_37_0();
  v7(v6);
  return v0;
}

uint64_t sub_237A40680()
{
  OUTLINED_FUNCTION_63_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_24_8()
{

  return sub_237A40094();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return sub_237A405D4();
}

void OUTLINED_FUNCTION_32_4()
{
  v2 = *(v0 - 224);

  sub_237AF8658();
}

uint64_t OUTLINED_FUNCTION_34_3()
{
  v2 = *(*(v1 - 448) + 8);
  result = v0;
  v4 = *(v1 - 408);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_2()
{
  *(v1 - 256) = *(v0 + 48);

  return sub_237A40628();
}

uint64_t OUTLINED_FUNCTION_51_3()
{
  v2 = *(v0 - 320);

  return sub_237A2A1B0(v2);
}

uint64_t OUTLINED_FUNCTION_57_2()
{
  v2 = *(v0 - 640);
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return sub_237B7C890(v1, v1 + v2, v0);
}

uint64_t OUTLINED_FUNCTION_70_1()
{

  return sub_237A40628();
}

uint64_t OUTLINED_FUNCTION_71_0()
{
  v2 = *(v0 - 504);

  return sub_237A405D4();
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3 + *(v4 - 256);

  return sub_2379D9054(v6, a2, a3);
}

uint64_t sub_237A40A68@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_237C082EC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_237A40AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1_20(a1, a2, a3, a4, a5, a6, a7, a8);
  v45 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_9_11(v15);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_22();
  v21 = OUTLINED_FUNCTION_24_9(v19, MEMORY[0x277D83B88], v20);
  v22 = *(*(sub_237C08D2C() - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_20_6(v24, v44);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B678, &qword_237C0DD38);
  v25 = sub_237A40DF4();
  v26 = OUTLINED_FUNCTION_12_10(v25);
  OUTLINED_FUNCTION_15_9(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v30 = OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_17_9(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  if (OUTLINED_FUNCTION_3_21() == a10)
  {
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_16_7();
    while (1)
    {
      sub_237C08F0C();
      result = __swift_getEnumTagSinglePayload(v10, 1, v21);
      if (result == 1)
      {
        v42 = OUTLINED_FUNCTION_18_11();
        return v43(v42);
      }

      if (__OFADD__(v47, *v10))
      {
        break;
      }

      v35 = OUTLINED_FUNCTION_5_15();
      v36(v35);
      v37 = *(*(v46 + 24) + 16);
      OUTLINED_FUNCTION_6_16();
      sub_237C0860C();
      v38 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_11_12(v38);
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_26_7();

    OUTLINED_FUNCTION_8_15();
    MEMORY[0x2383DC360](v45);
    OUTLINED_FUNCTION_23_10();
    sub_237C08B3C();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_26_7();

    OUTLINED_FUNCTION_19_10();
    v39 = OUTLINED_FUNCTION_2_24();
    MEMORY[0x2383DC360](v39);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    v40 = swift_allocError();
    return OUTLINED_FUNCTION_13_8(v40, v41);
  }

  return result;
}

unint64_t sub_237A40DF4()
{
  result = qword_27DE9B680[0];
  if (!qword_27DE9B680[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B678, &qword_237C0DD38);
    sub_237A02390();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE9B680);
  }

  return result;
}

uint64_t sub_237A40E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1_20(a1, a2, a3, a4, a5, a6, a7, a8);
  v45 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_9_11(v15);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_22();
  v21 = OUTLINED_FUNCTION_24_9(v19, MEMORY[0x277D83B88], v20);
  v22 = *(*(sub_237C08D2C() - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_20_6(v24, v44);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B678, &qword_237C0DD38);
  v25 = sub_237A40DF4();
  v26 = OUTLINED_FUNCTION_12_10(v25);
  OUTLINED_FUNCTION_15_9(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v30 = OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_17_9(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  if (OUTLINED_FUNCTION_3_21() == a10)
  {
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_16_7();
    while (1)
    {
      sub_237C08F0C();
      result = __swift_getEnumTagSinglePayload(v10, 1, v21);
      if (result == 1)
      {
        v42 = OUTLINED_FUNCTION_18_11();
        return v43(v42);
      }

      if (__OFADD__(v47, *v10))
      {
        break;
      }

      v35 = OUTLINED_FUNCTION_5_15();
      v36(v35);
      v37 = *(v46 + 24);
      OUTLINED_FUNCTION_6_16();
      sub_237C0854C();
      v38 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_11_12(v38);
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_26_7();

    OUTLINED_FUNCTION_8_15();
    MEMORY[0x2383DC360](v45);
    OUTLINED_FUNCTION_23_10();
    sub_237C08B3C();
    OUTLINED_FUNCTION_2_24();
    OUTLINED_FUNCTION_26_7();

    OUTLINED_FUNCTION_19_10();
    v39 = OUTLINED_FUNCTION_2_24();
    MEMORY[0x2383DC360](v39);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    v40 = swift_allocError();
    return OUTLINED_FUNCTION_13_8(v40, v41);
  }

  return result;
}

void sub_237A411A4(uint64_t a1)
{
  sub_237A413BC(319, &qword_27DE9B708);
  if (v2 <= 0x3F)
  {
    sub_237A413BC(319, &qword_27DE9B710);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 24);
      sub_237C06AAC();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237A41280(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    v10 = sub_237C06AAC();
    v11 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

void *sub_237A41320(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = *(a4 + 16);
    v8 = *(a4 + 24);
    v9 = sub_237C06AAC();
    v10 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  return result;
}

void sub_237A413BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_237C089DC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void OUTLINED_FUNCTION_1_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 - 272) = v9;
  *(v10 - 152) = v8;
  *(v10 - 144) = a8;
  *(v10 - 136) = a7;
  *(v10 - 200) = a6;
  *(v10 - 232) = a3;
  v11 = *(v10 + 40);
  v12 = *(*(v10 + 32) - 8);
}

uint64_t OUTLINED_FUNCTION_2_24()
{

  return sub_237C0924C();
}

uint64_t OUTLINED_FUNCTION_3_21()
{
  *(v1 - 208) = v0;
  v3 = *(v1 - 200);

  return sub_237C08B3C();
}

uint64_t OUTLINED_FUNCTION_4_19()
{
  *(v4 - 256) = v1;
  *(v4 - 248) = v0;
  *(v4 - 120) = v0;
  *(v4 - 112) = v3;
  *(v4 - 104) = v1;
  *(v4 - 96) = v2;

  return MEMORY[0x2821FD0E0](0, v4 - 120);
}

uint64_t OUTLINED_FUNCTION_5_15()
{
  v3 = **(v2 - 208);
  v4 = v0 + *(v1 + 48);
  result = *(v2 - 176);
  v6 = *(v2 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_16()
{
  v2 = *(v1 - 184);
  result = v0;
  v4 = *(v1 - 200);
  v5 = *(v1 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_15()
{
  *(v0 - 200) = *(v0 + 48);
  *(v0 - 120) = 0;
  v3 = *(v0 - 256);
  v2 = *(v0 - 248);
  v4 = *(v0 - 208);

  return sub_237C092FC();
}

void OUTLINED_FUNCTION_8_15()
{

  JUMPOUT(0x2383DC360);
}

void OUTLINED_FUNCTION_9_11(uint64_t a1@<X8>)
{
  *(v2 - 176) = a1;
  *(v2 - 168) = v1;
  v3 = *(v1 + 16);
  *(v2 - 192) = v3;
  v4 = *(v3 - 8);
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1)
{
  v6 = *(v4 - 152) + v1;
  v7 = *(v4 - 136);

  return MEMORY[0x282114EB8](v3, v7, v2, a1);
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t a1)
{
  v6 = *(v1 + 8);
  *(v4 - 120) = v2;
  *(v4 - 112) = v3;
  *(v4 - 104) = a1;
  *(v4 - 96) = v6;

  return sub_237C08F2C();
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_14_7()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_15_9(uint64_t result)
{
  *(v1 - 264) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_9(uint64_t result)
{
  *(v1 - 128) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_11()
{
  v2 = *(*(v1 - 280) + 8);
  result = v0;
  v4 = *(v1 - 128);
  return result;
}

void OUTLINED_FUNCTION_19_10()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_21_10()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  return sub_237C08EDC();
}

uint64_t OUTLINED_FUNCTION_22_6()
{
  v2 = *(v0 + 44);

  return sub_237C06AAC();
}

void OUTLINED_FUNCTION_23_10()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_24_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 160) = a3;

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_25_6()
{
  v2 = *(v0 - 264);

  return MEMORY[0x2821FD0D0](v2);
}

void OUTLINED_FUNCTION_26_7()
{

  JUMPOUT(0x2383DC360);
}

void sub_237A41858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v39 = *a1;
  v42 = *(a1 + 8);
  v33 = *a2;
  LOBYTE(v36) = v7;
  sub_2379DBCF4(*a1, v42);
  v8 = sub_2379DBCF4(v6, v7);
  v16 = OUTLINED_FUNCTION_8_16(v8, v9, v10, v11, v12, v13, v14, v15, v33, v36, v39);
  v17 = a5(v16);
  OUTLINED_FUNCTION_9_12(v17, v18, v19, v20, v21, v22, v23, v24, v34, v37, v40, v42);
  OUTLINED_FUNCTION_18_12(v25, v26, v27, v28, v29, v30, v31, v32, v35, v38, v41, v43, v44, v45);
}

uint64_t static MLDataColumn.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_237A41908(a1, a2, a3, a4, 4);
}

{
  return sub_237A41B04(a1, a2, a3, a4, 4);
}

uint64_t static MLDataColumn.!= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_237A41908(a1, a2, a3, a4, 5);
}

{
  return sub_237A41B04(a1, a2, a3, a4, 5);
}

uint64_t static MLDataColumn.> infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_237A41908(a1, a2, a3, a4, 7);
}

{
  return sub_237A41B04(a1, a2, a3, a4, 7);
}

uint64_t static MLDataColumn.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_237A41908(a1, a2, a3, a4, 6);
}

{
  return sub_237A41B04(a1, a2, a3, a4, 6);
}

uint64_t static MLDataColumn.>= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_237A41908(a1, a2, a3, a4, 9);
}

{
  return sub_237A41B04(a1, a2, a3, a4, 9);
}

uint64_t static MLDataColumn.<= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_237A41908(a1, a2, a3, a4, 8);
}

{
  return sub_237A41B04(a1, a2, a3, a4, 8);
}

uint64_t sub_237A41908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_12_11(a1, a2, a3);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_10();
  v15 = *v14;
  v16 = *(v14 + 8);
  (*(v10 + 16))(v6);
  if (v16)
  {
    v32 = v15;
    v17 = v15;
    v18 = OUTLINED_FUNCTION_6_17();
    sub_2379DBCF4(v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v20 = sub_237C0925C();
    if (v20)
    {
      v21 = v20;
      v22 = OUTLINED_FUNCTION_6_17();
      sub_2379DBC9C(v22, v23);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_2_25();
      *v25 = v15;
    }

    v28 = 1;
    v26 = OUTLINED_FUNCTION_6_17();
    sub_2379DBC9C(v26, v27);
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    v24 = OUTLINED_FUNCTION_11_13();
    (v5)(v24);
    OUTLINED_FUNCTION_16_8();
    v21 = sub_237A60280(a5, v15, &v30);
    sub_2379E8CE8(v30, *(&v30 + 1), v31);
    sub_2379DBC9C(v15, 0);
    v28 = 0;
  }

  result = (*(v10 + 8))(v6, a3);
  *v5 = v21;
  *(v5 + 8) = v28;
  return result;
}

uint64_t sub_237A41B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_12_11(a1, a2, a3);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_10();
  v15 = *v14;
  v16 = *(v14 + 8);
  (*(v10 + 16))(v6, v17);
  if (v16)
  {
    v33 = v15;
    v18 = v15;
    v19 = OUTLINED_FUNCTION_6_17();
    sub_2379DBCF4(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v21 = sub_237C0925C();
    if (v21)
    {
      v22 = v21;
      v23 = OUTLINED_FUNCTION_6_17();
      sub_2379DBC9C(v23, v24);
    }

    else
    {
      v22 = OUTLINED_FUNCTION_2_25();
      *v26 = v15;
    }

    v29 = 1;
    v27 = OUTLINED_FUNCTION_6_17();
    sub_2379DBC9C(v27, v28);
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    v25 = OUTLINED_FUNCTION_11_13();
    (v5)(v25);
    OUTLINED_FUNCTION_16_8();
    v22 = sub_237A60530(a5, &v31);
    sub_2379E8CE8(v31, *(&v31 + 1), v32);
    sub_2379DBC9C(v15, 0);
    v29 = 0;
  }

  result = (*(v10 + 8))(v6, a3);
  *v5 = v22;
  *(v5 + 8) = v29;
  return result;
}

void static MLDataColumn<>./ infix(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v26 = *a1;
  v28 = *(a1 + 8);
  v22 = *a2;
  LOBYTE(v24) = v5;
  sub_2379DBCF4(*a1, v28);
  v6 = sub_2379DBCF4(v4, v5);
  OUTLINED_FUNCTION_8_16(v6, v7, v8, v9, v10, v11, v12, v13, v22, v24, v26);
  static MLUntypedColumn./ infix(_:_:)();
  OUTLINED_FUNCTION_9_12(v14, v15, v16, v17, v18, v19, v20, v21, v23, v25, v27, v28);
  sub_237A41D7C(v29, v30, a3);

  sub_2379DBC9C(v29, v30);
}

void sub_237A41D7C(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_2379E8AF0();
  v6 = swift_allocError();
  *v7 = 0xD00000000000001ALL;
  *(v7 + 8) = 0x8000000237C18DA0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 1;
  if (a2)
  {
    sub_2379DBCF4(a1, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v8 = sub_237C0925C();
    if (v8)
    {
      v9 = v8;

      sub_2379DBC9C(a1, 1);
    }

    else
    {
      v9 = swift_allocError();
      *v12 = a1;
    }

    v13 = 1;
    goto LABEL_7;
  }

  v10 = *(a1[2] + 16);
  sub_2379DBCF4(a1, 0);
  v11 = sub_237B12C70(v10, 0, 0);
  v14 = v11;
  if (v11)
  {
    type metadata accessor for CMLColumn();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;

    sub_2379DBC9C(a1, 0);
    type metadata accessor for _UntypedColumn();
    v9 = swift_allocObject();
    v13 = 0;
    *(v9 + 16) = v15;
LABEL_7:
    *a3 = v9;
    *(a3 + 8) = v13;
    return;
  }

  __break(1u);
}

void sub_237A41F54(unint64_t a1, uint64_t *a2, char a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = *a2;
  if (a2[1])
  {
    OUTLINED_FUNCTION_14_8(a1, a2, a3, a4, a5, a6, a7, a8, v31, v32);
    v9 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_13_9())
    {
      v11 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v11, v12);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_7_16(v26, v27);
    }

    v28 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v28, v29);
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    v32 = a1;
    v33 = 0;
    v15 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v15, v16);
    v17 = sub_237A60530(a3, &v32);
    v25 = OUTLINED_FUNCTION_0_23(v17, v18, v19, v20, v21, v22, v23, v24, v31, v32, *(&v32 + 1), v33);
    sub_2379DBC9C(v25, v30);
  }

  OUTLINED_FUNCTION_17_10();
}

void static MLDataColumn<>./ infix(_:_:)(void *a1, uint64_t *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = *a2;
  if (a2[1])
  {
    OUTLINED_FUNCTION_14_8(a1, a2, a3, a4, a5, a6, a7, a8, v38, v39);
    v9 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_13_9())
    {
      v11 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v11, v12);
    }

    else
    {
      v29 = OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_7_16(v29, v30);
    }

    v31 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v31, v32);
  }

  else
  {
    v14 = type metadata accessor for _UntypedColumn();
    v15 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v15, v16);
    OUTLINED_FUNCTION_19_11();
    v19 = sub_237A60530(v17, v18);
    v27 = OUTLINED_FUNCTION_0_23(v19, v20, v21, v22, v23, v24, v25, v26, v38, a1, 0, 0);
    if (v14)
    {
      OUTLINED_FUNCTION_5_16(v27, v28);
    }

    else
    {
      sub_2379DBC9C(v27, v28);
    }
  }

  v33 = OUTLINED_FUNCTION_84();
  sub_237A41D7C(v33, v34, v35);
  v36 = OUTLINED_FUNCTION_84();
  sub_2379DBC9C(v36, v37);
}

void static MLDataColumn<>.+ infix(_:_:)(uint64_t *a1)
{
  sub_237A42174(a1);
}

{
  sub_237A423EC(a1);
}

{
  sub_237A42510(a1);
}

void static MLDataColumn<>.- infix(_:_:)(uint64_t *a1)
{
  sub_237A42174(a1);
}

{
  sub_237A423EC(a1);
}

{
  sub_237A42510(a1);
}

void static MLDataColumn<>.* infix(_:_:)(uint64_t *a1)
{
  sub_237A42174(a1);
}

{
  sub_237A423EC(a1);
}

{
  sub_237A42510(a1);
}

void sub_237A42174(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_4_20(a1);
  if (v10)
  {
    OUTLINED_FUNCTION_14_8(v2, v3, v4, v5, v6, v7, v8, v9, v33, v34);
    v11 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_13_9())
    {
      v13 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v13, v14);
    }

    else
    {
      v28 = OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_7_16(v28, v29);
    }

    v30 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v30, v31);
  }

  else
  {
    v15 = v4;
    v16 = v3;
    type metadata accessor for _UntypedColumn();
    v34 = v16;
    v35 = 0;
    v17 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v17, v18);
    v19 = sub_237A60280(v15, v1, &v34);
    v27 = OUTLINED_FUNCTION_0_23(v19, v20, v21, v22, v23, v24, v25, v26, v33, v34, *(&v34 + 1), v35);
    sub_2379DBC9C(v27, v32);
  }

  OUTLINED_FUNCTION_17_10();
}

void static MLDataColumn<>./ infix(_:_:)(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_4_20(a1);
  if (v9)
  {
    OUTLINED_FUNCTION_14_8(v1, v2, v3, v4, v5, v6, v7, v8, v40, v41);
    v10 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_13_9())
    {
      v12 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v12, v13);
    }

    else
    {
      v31 = OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_7_16(v31, v32);
    }

    v33 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v33, v34);
  }

  else
  {
    v14 = v2;
    v15 = type metadata accessor for _UntypedColumn();
    v16 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v16, v17);
    OUTLINED_FUNCTION_19_11();
    v21 = sub_237A60280(v18, v19, v20);
    v29 = OUTLINED_FUNCTION_0_23(v21, v22, v23, v24, v25, v26, v27, v28, v40, v14, 0, 0);
    if (v15)
    {
      OUTLINED_FUNCTION_5_16(v29, v30);
    }

    else
    {
      sub_2379DBC9C(v29, v30);
    }
  }

  v35 = OUTLINED_FUNCTION_84();
  sub_237A41D7C(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_84();
  sub_2379DBC9C(v38, v39);
}

{
  sub_237A423EC(a1);
}

{
  sub_237A42510(a1);
}

void sub_237A423EC(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_4_20(a1);
  if (v10)
  {
    OUTLINED_FUNCTION_14_8(v1, v2, v3, v4, v5, v6, v7, v8, v35, v36);
    v11 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_13_9())
    {
      v13 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v13, v14);
    }

    else
    {
      v31 = OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_7_16(v31, v32);
    }

    v33 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v33, v34);
  }

  else
  {
    v15 = v9;
    v16 = type metadata accessor for _UntypedColumn();
    v17 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v17, v18);
    OUTLINED_FUNCTION_19_11();
    v21 = sub_237A60530(v19, v20);
    v29 = OUTLINED_FUNCTION_0_23(v21, v22, v23, v24, v25, v26, v27, v28, v35, v15, 0, 1);
    if (v16)
    {
      OUTLINED_FUNCTION_5_16(v29, v30);
    }

    else
    {
      sub_2379DBC9C(v29, v30);
    }
  }

  OUTLINED_FUNCTION_17_10();
}

void sub_237A42510(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_4_20(a1);
  if (v10)
  {
    OUTLINED_FUNCTION_14_8(v1, v2, v3, v4, v5, v6, v7, v8, v36, v37);
    v11 = OUTLINED_FUNCTION_1_21();
    sub_2379DBCF4(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_13_9())
    {
      v13 = OUTLINED_FUNCTION_1_21();
      sub_2379DBC9C(v13, v14);
    }

    else
    {
      v32 = OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_7_16(v32, v33);
    }

    v34 = OUTLINED_FUNCTION_1_21();
    sub_2379DBC9C(v34, v35);
  }

  else
  {
    v15 = v9;
    v16 = type metadata accessor for _UntypedColumn();
    v17 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v17, v18);
    OUTLINED_FUNCTION_19_11();
    v22 = sub_237A60280(v19, v20, v21);
    v30 = OUTLINED_FUNCTION_0_23(v22, v23, v24, v25, v26, v27, v28, v29, v36, v15, 0, 1);
    if (v16)
    {
      OUTLINED_FUNCTION_5_16(v30, v31);
    }

    else
    {
      sub_2379DBC9C(v30, v31);
    }
  }

  OUTLINED_FUNCTION_17_10();
}

void sub_237A42644(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v37 = *a1;
  v40 = *(a1 + 8);
  v31 = *a2;
  LOBYTE(v34) = v5;
  sub_2379DBCF4(*a1, v40);
  v6 = sub_2379DBCF4(v4, v5);
  v14 = OUTLINED_FUNCTION_8_16(v6, v7, v8, v9, v10, v11, v12, v13, v31, v34, v37);
  v15 = a3(v14);
  OUTLINED_FUNCTION_9_12(v15, v16, v17, v18, v19, v20, v21, v22, v32, v35, v38, v40);
  OUTLINED_FUNCTION_18_12(v23, v24, v25, v26, v27, v28, v29, v30, v33, v36, v39, v41, v42, v43);
}

uint64_t OUTLINED_FUNCTION_2_25()
{

  return swift_allocError();
}

uint64_t *OUTLINED_FUNCTION_4_20(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 8);
  return result;
}

void OUTLINED_FUNCTION_9_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, void *a11, char a12)
{
  sub_2379DBC9C(a9, a10);

  sub_2379DBC9C(a11, a12);
}

uint64_t OUTLINED_FUNCTION_11_13()
{
  v3 = *(v2 + 32);
  sub_2379DBCF4(v1, 0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return sub_237C0925C();
}

id OUTLINED_FUNCTION_14_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return v10;
}

__n128 OUTLINED_FUNCTION_16_8()
{
  v1 = *(v0 - 96);
  result = *(v0 - 112);
  *(v0 - 144) = result;
  *(v0 - 128) = v1;
  return result;
}

uint64_t sub_237A4288C(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B718, &unk_237C0DD90);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237A42958, 0, 0);
}

uint64_t sub_237A42958()
{
  v1 = v0[19];
  v2 = sub_237C07D9C();
  v0[23] = v2;
  v0[24] = v3;
  v4 = v2;
  v5 = v3;
  sub_2379E8EE0(0, &qword_27DE9B720, 0x277CBFF28);
  sub_237A2C2B0(v4, v5);
  v6 = sub_237A42E3C(v4, v5);
  v0[25] = v6;
  v7 = v6;
  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[20];
  v14 = objc_opt_self();
  v13 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  v0[26] = v13;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_237A42C08;
  swift_continuation_init();
  v0[17] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  sub_237C08A0C();
  (*(v8 + 32))(boxed_opaque_existential_0, v9, v10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_237A42F28;
  v0[13] = &block_descriptor_2;
  [v14 loadModelAsset:v7 configuration:v13 completionHandler:?];
  (*(v8 + 8))(boxed_opaque_existential_0, v10);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_237A42C08()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_237A42DA4;
  }

  else
  {
    v3 = sub_237A42D18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_237A42D18()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  sub_2379E86D4(v0[23], v0[24]);

  v4 = v0[18];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_237A42DA4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  swift_willThrow();
  sub_2379E86D4(v5, v3);

  v6 = v0[27];
  v7 = v0[22];

  v8 = v0[1];

  return v8();
}

id sub_237A42E3C(uint64_t a1, unint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = sub_237C05B6C();
  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelAssetWithSpecificationData:v4 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_237C0593C();

    swift_willThrow();
  }

  sub_2379E86D4(a1, a2);
  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_237A42F28(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    sub_237A43008(v5, v7, MEMORY[0x277D85660]);
  }

  else if (a2)
  {
    v6 = a2;
    sub_237A43008(v5, v6, MEMORY[0x277D85668]);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237A43008(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t))
{
  v6 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B718, &unk_237C0DD90);
  return a3(&v6, v4);
}

id MLDecisionTreeRegressor.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLDecisionTreeRegressor() + 20));

  return v1;
}

uint64_t type metadata accessor for MLDecisionTreeRegressor()
{
  result = qword_27DE9B750;
  if (!qword_27DE9B750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLDecisionTreeRegressor.model.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLDecisionTreeRegressor() + 20);

  *(v1 + v2) = v0;
}

void (*MLDecisionTreeRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLDecisionTreeRegressor() + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLDecisionTreeRegressor.targetColumn.getter()
{
  v1 = (v0 + *(type metadata accessor for MLDecisionTreeRegressor() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLDecisionTreeRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLDecisionTreeRegressor() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*MLDecisionTreeRegressor.targetColumn.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLDecisionTreeRegressor() + 24);
  return nullsub_1;
}

uint64_t MLDecisionTreeRegressor.featureColumns.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLDecisionTreeRegressor() + 28));
}

uint64_t MLDecisionTreeRegressor.featureColumns.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLDecisionTreeRegressor() + 28);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*MLDecisionTreeRegressor.featureColumns.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLDecisionTreeRegressor() + 28);
  return nullsub_1;
}

uint64_t MLDecisionTreeRegressor.modelParameters.getter()
{
  OUTLINED_FUNCTION_146();
  v2 = v1 + *(type metadata accessor for MLDecisionTreeRegressor() + 32);

  return sub_237A43364(v2, v0);
}

id MLDecisionTreeRegressor.trainingMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLDecisionTreeRegressor();
  v1 = OUTLINED_FUNCTION_40_1(*(v0 + 36));

  return sub_2379F7AF4(v1, v2, v3);
}

id MLDecisionTreeRegressor.validationMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLDecisionTreeRegressor();
  v1 = OUTLINED_FUNCTION_40_1(*(v0 + 40));

  return sub_2379F7AF4(v1, v2, v3);
}

uint64_t sub_237A43438()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_allocate_value_buffer(v0, qword_27DE9B728);
  v1 = __swift_project_value_buffer(v0, qword_27DE9B728);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLDecisionTreeRegressor._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A578 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters();
  __swift_project_value_buffer(v2, qword_27DE9B728);
  OUTLINED_FUNCTION_2_26();
  return sub_237A46C5C(v3, a1, v4);
}

void MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v161 = v0;
  v162 = v1;
  v3 = v2;
  v174 = v4;
  v159 = v5;
  v168 = v6;
  v8 = v7;
  v9 = sub_237C05DBC();
  v165 = OUTLINED_FUNCTION_0(v9);
  v166 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_2_0();
  v147 = v14 - v13;
  OUTLINED_FUNCTION_41_0();
  v15 = type metadata accessor for TreeRegressorModel();
  v16 = OUTLINED_FUNCTION_1(v15);
  v151 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_134();
  v153 = v20;
  v152 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_58();
  v158 = v23;
  OUTLINED_FUNCTION_41_0();
  v156 = type metadata accessor for TreeRegressor();
  v24 = OUTLINED_FUNCTION_4(v156);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v157 = (v28 - v27);
  OUTLINED_FUNCTION_41_0();
  v29 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
  v30 = OUTLINED_FUNCTION_4(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_0();
  v148 = v37;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v38);
  v149 = &v145 - v39;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v40);
  v42 = &v145 - v41;
  v167 = sub_237C071DC();
  v43 = OUTLINED_FUNCTION_0(v167);
  v169 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_14_0();
  v155 = v47;
  OUTLINED_FUNCTION_39_0();
  v49 = MEMORY[0x28223BE20](v48);
  v51 = &v145 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v145 - v52;
  v54 = type metadata accessor for MLDecisionTreeRegressor();
  v55 = v8 + *(v54 + 36);
  *v55 = 0;
  *(v55 + 8) = 0;
  v164 = v55;
  *(v55 + 16) = 0;
  v150 = v54;
  v56 = *(v54 + 40);
  v154 = v8;
  v57 = v8 + v56;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  swift_allocError();
  OUTLINED_FUNCTION_41_3();
  *v59 = v58 + 173;
  v59[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v60, v59);
  *v57 = v61;
  *(v57 + 8) = 0;
  v160 = v57;
  *(v57 + 16) = 1;
  sub_237A43364(v3, &v172);
  sub_237C071CC();
  sub_237C0715C();
  sub_237C070DC();
  sub_237C070FC();
  sub_237C0719C();
  sub_237C0717C();
  sub_237C070BC();
  sub_237A44168(&v172);
  v163 = v3;
  sub_2379FC864(v3, &v170, &qword_27DE9A998, &unk_237C0C100);
  if (v171)
  {
    v62 = *(v33 + 48);
    sub_2379DAD24(&v170, &v172);
    swift_dynamicCast();
    v63 = v168;
    v64 = v161;
    sub_237A612D8(v42, &v42[v62], v168);
    if (v64)
    {

      sub_237A44168(v163);
      (*(v166 + 8))(v63, v165);
      v65 = OUTLINED_FUNCTION_47_4();
      v66(v65);
      OUTLINED_FUNCTION_6_18();
      sub_237A470A0();
    }

    else
    {
      v161 = v33;
      OUTLINED_FUNCTION_6_18();
      sub_237A470A0();
      v67 = v159;
      sub_237B19700(v42, v159, v174, v162);
      v69 = v68;

      v162 = 0;
      v70 = v51;
      v145 = v51;
      v71 = *(v169 + 16);
      v146 = v42;
      v72 = v167;
      v71(v70, v53, v167);
      v73 = v67;
      v74 = v157;
      *v157 = v73;
      v74[1] = v174;
      OUTLINED_FUNCTION_80();
      v74[2] = v69;
      v74[3] = v69;
      v74[4] = 0xD000000000000013;
      v74[5] = v75;
      v76 = v145;
      v77(v155, v145, v72);
      v78 = *(v156 + 28);
      swift_bridgeObjectRetain_n();

      v79 = v146;
      v80 = v169;
      sub_237C06CEC();
      v82 = *(v80 + 8);
      v81 = v80 + 8;
      v83 = v76;
      v84 = v82;
      v82(v83, v72);
      v85 = v162;
      sub_237A0CAB0();
      if (v85)
      {

        sub_237A44168(v163);
        v86 = OUTLINED_FUNCTION_25_7();
        v87(v86);
        OUTLINED_FUNCTION_1_22();
        sub_237A470A0();
        sub_2379D9054(v79, &qword_27DE9ADC0, &unk_237C0BF40);
        v84(v53, v72);
      }

      else
      {
        v156 = v69;
        v155 = v84;
        v162 = 0;
        if ((sub_237A37A64() & 1) == 0)
        {
          v88 = OUTLINED_FUNCTION_30_6();
          v89 = v149;
          sub_2379FC864(v88, v149, v90, v91);
          v92 = v81;
          v93 = *(v161 + 48);
          sub_237C05D3C();
          (*(v166 + 8))(v89, v165);
          OUTLINED_FUNCTION_41_3();
          sub_237A37AEC(2);
          v94 = v89 + v93;
          v81 = v92;
          sub_2379D9054(v94, &qword_27DE9A9A0, &qword_237C0BF60);
        }

        v95 = v150;
        v96 = v154;
        v97 = (v154 + v150[6]);
        *v97 = v159;
        v97[1] = v174;
        v159 = v95[8];
        v98 = v163;
        sub_237A43364(v163, v96 + v159);
        *(v96 + v95[7]) = v156;
        OUTLINED_FUNCTION_3_23();
        v99 = v158;
        v100 = v153;
        sub_237A46C5C(v158, v153, v101);
        v102 = (*(v151 + 80) + 16) & ~*(v151 + 80);
        swift_allocObject();
        OUTLINED_FUNCTION_9_13();
        sub_237A470F4(v100, v103 + v102, v104);
        v105 = v162;
        sub_2379DD56C();
        if (v105)
        {
          v162 = v105;

          sub_237A44168(v98);
          v107 = OUTLINED_FUNCTION_25_7();
          v108(v107);
          OUTLINED_FUNCTION_0_24();
          sub_237A470A0();
          OUTLINED_FUNCTION_1_22();
          OUTLINED_FUNCTION_38_3();
          v109 = OUTLINED_FUNCTION_30_6();
          sub_2379D9054(v109, v110, v111);
          v112 = OUTLINED_FUNCTION_12_12();
          v113(v112);
        }

        else
        {
          v114 = v106;

          *(v96 + v95[5]) = v114;
          OUTLINED_FUNCTION_3_23();
          sub_237A46C5C(v99, v96, v115);
          v116 = v146;
          sub_237A478AC(v146, &v172);
          v162 = 0;
          v117 = v114;
          v169 = v81;
          v118 = v172;
          v119 = v173;
          v120 = v164;
          sub_2379F8918(*v164, *(v164 + 8), *(v164 + 16));
          *v120 = v118;
          *(v120 + 16) = v119;
          v121 = v148;
          sub_2379FC864(v116, v148, &qword_27DE9ADC0, &unk_237C0BF40);
          v122 = *(v161 + 48);
          v123 = v165;
          v124 = v98;
          if (__swift_getEnumTagSinglePayload(v121 + v122, 1, v165) == 1)
          {
            sub_237A44168(v98);
            v125 = v121;
            v126 = *(v166 + 8);
            v126(v168, v123);
            OUTLINED_FUNCTION_0_24();
            sub_237A470A0();
            OUTLINED_FUNCTION_1_22();
            OUTLINED_FUNCTION_38_3();
            sub_2379D9054(v116, &qword_27DE9ADC0, &unk_237C0BF40);
            v155(v53, v167);
            sub_2379D9054(v125 + v122, &qword_27DE9A9A0, &qword_237C0BF60);
            v126(v125, v123);
            goto LABEL_13;
          }

          v127 = v166;
          v128 = v121 + v122;
          v129 = v147;
          (*(v166 + 32))(v147, v128, v123);
          v130 = *(v127 + 8);
          v130(v121, v123);
          v131 = v162;
          sub_237A478AC(v129, &v172);
          v162 = v131;
          if (!v131)
          {
            sub_237A44168(v124);
            v130(v168, v123);
            v130(v129, v123);
            OUTLINED_FUNCTION_0_24();
            sub_237A470A0();
            OUTLINED_FUNCTION_1_22();
            OUTLINED_FUNCTION_38_3();
            v137 = OUTLINED_FUNCTION_30_6();
            sub_2379D9054(v137, v138, v139);
            v140 = OUTLINED_FUNCTION_12_12();
            v141(v140);
            v142 = v172;
            v143 = v173;
            v144 = v160;
            sub_2379F8918(*v160, *(v160 + 8), *(v160 + 16));
            *v144 = v142;
            *(v144 + 16) = v143;
            goto LABEL_13;
          }

          sub_237A44168(v124);
          v130(v168, v123);
          v130(v129, v123);
          OUTLINED_FUNCTION_0_24();
          sub_237A470A0();
          OUTLINED_FUNCTION_1_22();
          OUTLINED_FUNCTION_38_3();
          v132 = OUTLINED_FUNCTION_30_6();
          sub_2379D9054(v132, v133, v134);
          v135 = OUTLINED_FUNCTION_12_12();
          v136(v135);
          OUTLINED_FUNCTION_0_24();
          sub_237A470A0();
        }

        sub_237A44168(v96 + v159);
      }
    }

    sub_2379F8918(*v164, *(v164 + 8), *(v164 + 16));
    sub_2379F8918(*v160, *(v160 + 8), *(v160 + 16));
LABEL_13:
    OUTLINED_FUNCTION_73();
    return;
  }

  __break(1u);
}

uint64_t sub_237A441C0()
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

uint64_t MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  sub_237A43364(a5, &v15);
  MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)();
  return sub_237A44168(a5);
}

void MLDecisionTreeRegressor.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v84 = v0;
  v2 = v1;
  v4 = v3;
  v77 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
  v5 = OUTLINED_FUNCTION_4(v77);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  v75 = v8;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_58();
  v76 = v10;
  OUTLINED_FUNCTION_41_0();
  v11 = type metadata accessor for TreeRegressorModel();
  v12 = OUTLINED_FUNCTION_1(v11);
  v79 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_134();
  v80 = v17;
  v81 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_58();
  v85 = v19;
  OUTLINED_FUNCTION_41_0();
  v20 = sub_237C071DC();
  v21 = OUTLINED_FUNCTION_0(v20);
  v82 = v22;
  v83 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v25);
  v27 = &v74 - v26;
  v28 = type metadata accessor for TreeRegressor();
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v34 = (v33 - v32);
  v35 = type metadata accessor for MLDecisionTreeRegressor();
  v36 = v4 + *(v35 + 36);
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  v74 = v35;
  v37 = *(v35 + 40);
  v78 = v4;
  v38 = v4 + v37;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  swift_allocError();
  OUTLINED_FUNCTION_41_3();
  *v40 = v39 + 173;
  v40[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v41, v40);
  *v38 = v42;
  *(v38 + 8) = 0;
  *(v38 + 16) = 1;
  switch(*(v2 + *(type metadata accessor for MLCheckpoint() + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v43 = sub_237C0929C();

      if (v43)
      {
LABEL_4:
        sub_237C071CC();
        *v34 = 0;
        v34[1] = 0xE000000000000000;
        OUTLINED_FUNCTION_80();
        v34[2] = v44;
        v34[3] = v44;
        v34[4] = 0xD000000000000013;
        v34[5] = v45;
        v47 = v82;
        v46 = v83;
        v48 = *(v82 + 16);
        v49 = OUTLINED_FUNCTION_58_0();
        v50(v49);
        v51 = v34 + *(v28 + 28);
        sub_237C06CEC();
        (*(v47 + 8))(v27, v46);
        sub_2379FBDFC();
        v52 = v84;
        v53 = v85;
        sub_237C0743C();
        if (!v52)
        {
          OUTLINED_FUNCTION_3_23();
          v57 = v81;
          sub_237A46C5C(v53, v81, v58);
          v59 = (*(v79 + 80) + 16) & ~*(v79 + 80);
          swift_allocObject();
          OUTLINED_FUNCTION_9_13();
          sub_237A470F4(v57, v60 + v59, v61);
          sub_2379DD56C();
          v63 = v62;

          v64 = v74;
          v65 = v78;
          *(v78 + *(v74 + 20)) = v63;
          OUTLINED_FUNCTION_3_23();
          sub_237A46C5C(v53, v65, v66);
          v68 = v76;
          v67 = v77;
          *v76 = 0;
          *(v68 + 8) = 0;
          *(v68 + 16) = 256;
          swift_storeEnumTagMultiPayload();
          v69 = v64;
          v70 = v65 + *(v64 + 32);
          *v70 = 0u;
          *(v70 + 16) = 0u;
          *(v70 + 32) = 6;
          *(v70 + 40) = xmmword_237C0BF30;
          *(v70 + 56) = 42;
          v71 = v75;
          sub_237A46C5C(v68, v75, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
          v86[3] = v67;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v86);
          sub_237A470F4(v71, boxed_opaque_existential_0, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
          OUTLINED_FUNCTION_6_18();
          sub_237A470A0();
          sub_2379DAE54(v86, v70);
          v73 = (v65 + *(v69 + 24));
          *v73 = 0;
          v73[1] = 0xE000000000000000;
          OUTLINED_FUNCTION_5_17();
          sub_237A470A0();
          OUTLINED_FUNCTION_0_24();
          sub_237A470A0();
          OUTLINED_FUNCTION_1_22();
          sub_237A470A0();
          *(v65 + *(v69 + 28)) = MEMORY[0x277D84F90];
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_5_17();
        sub_237A470A0();
        OUTLINED_FUNCTION_1_22();
      }

      else
      {
        OUTLINED_FUNCTION_50();
        swift_allocError();
        OUTLINED_FUNCTION_41_3();
        *v55 = v54 + 47;
        v55[1] = 0x8000000237C18E10;
        OUTLINED_FUNCTION_23_3(v56, v55);
        swift_willThrow();
        OUTLINED_FUNCTION_5_17();
      }

      sub_237A470A0();
      sub_2379F8918(*v36, *(v36 + 8), *(v36 + 16));
      sub_2379F8918(*v38, *(v38 + 8), *(v38 + 16));
LABEL_9:
      OUTLINED_FUNCTION_73();
      return;
  }
}

void static MLDecisionTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
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
  static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
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
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B740, &qword_237C0DDC8);
    v21 = OUTLINED_FUNCTION_91(v20);
    sub_237BEC184(v21, v16);
  }

  OUTLINED_FUNCTION_73();
}

{
  static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v0)
  {
    v2 = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B740, &qword_237C0DDC8);
    v4 = OUTLINED_FUNCTION_91(v3);
    sub_237BEC184(v4, v2);
  }
}

void static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
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
  static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v4 + 8))(v9, v1);
  OUTLINED_FUNCTION_73();
}

{
  OUTLINED_FUNCTION_74();
  v57 = v1;
  v58 = v2;
  v4 = v3;
  v55 = v5;
  v56 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters();
  v10 = OUTLINED_FUNCTION_20(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  v53 = v13;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_58();
  v54 = v15;
  OUTLINED_FUNCTION_41_0();
  v16 = sub_237C071DC();
  v17 = OUTLINED_FUNCTION_20(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v22 = (v21 - v20);
  v23 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_0();
  v59 = v31;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v51 - v33;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v35);
  v37 = &v51 - v36;
  v38 = v4;
  sub_2379FC864(v4, &v63, &qword_27DE9A998, &unk_237C0C100);
  if (v64)
  {
    v39 = *(v27 + 48);
    sub_2379DAD24(&v63, &v60);
    swift_dynamicCast();
    sub_237A612D8(v37, &v37[v39], v8);
    OUTLINED_FUNCTION_6_18();
    sub_237A470A0();
    if (!v0)
    {
      v52 = v34;
      sub_2379FC864(v37, v34, &qword_27DE9ADC0, &unk_237C0BF40);
      v65 = *(v27 + 48);
      v40 = v59;
      sub_2379FC864(v37, v59, &qword_27DE9ADC0, &unk_237C0BF40);
      v51 = *(v27 + 48);
      sub_237A43364(v38, &v60);
      v41 = v57;

      v42 = v56;

      sub_237C071CC();
      sub_237C0715C();
      sub_237C070DC();
      sub_237C070FC();
      sub_237C0719C();
      sub_237C0717C();
      sub_237C070BC();
      sub_237A44168(&v60);
      OUTLINED_FUNCTION_2_26();
      v43 = v54;
      sub_237A46C5C(v58, v54, v44);
      v45 = type metadata accessor for TreeRegressorTrainingSessionDelegate();
      OUTLINED_FUNCTION_91(v45);
      sub_237B1A5B0(v52, v40 + v51, v55, v42, v41, v22, v43);
      OUTLINED_FUNCTION_46();
      v46 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v46);
      (*(v47 + 8))(v59);
      sub_2379D9054(&v52[v65], &qword_27DE9A9A0, &qword_237C0BF60);
      v61 = v45;
      v62 = &off_284AC4B18;
      *&v60 = v42;
      OUTLINED_FUNCTION_2_26();
      v48 = v53;
      sub_237A46C5C(v58, v53, v49);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B748, &unk_237C0DDD0);
      OUTLINED_FUNCTION_91(v50);

      sub_2379E41D8(&v60, v48, 2);
      sub_2379D9054(v37, &qword_27DE9ADC0, &unk_237C0BF40);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static MLDecisionTreeRegressor.resume(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B740, &qword_237C0DDC8);
  v3 = OUTLINED_FUNCTION_91(v2);

  return sub_237BEC184(v3, a1);
}

void static MLDecisionTreeRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters();
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-1] - v10;
  OUTLINED_FUNCTION_2_26();
  sub_237A46C5C(a1, v11, v12);
  v13 = type metadata accessor for TreeRegressorTrainingSessionDelegate();
  OUTLINED_FUNCTION_91(v13);
  v14 = sub_237B1A4D0();
  if (!v1)
  {
    v20[3] = v13;
    v20[4] = &off_284AC4B18;
    v20[0] = v14;
    OUTLINED_FUNCTION_2_26();
    v15 = OUTLINED_FUNCTION_58_0();
    sub_237A46C5C(v15, v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B748, &unk_237C0DDD0);
    OUTLINED_FUNCTION_91(v18);
    sub_2379E41D8(v20, v9, 2);
  }
}

uint64_t sub_237A451FC(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B760, &qword_237C0DEA8);
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
    return sub_2379D9054(v15, &qword_27DE9B760, &qword_237C0DEA8);
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

    sub_237BBAEC8(0, 0, v21, &unk_237C0DEC8, v26);
  }
}

uint64_t sub_237A453F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B760, &qword_237C0DEA8);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237A454AC, 0, 0);
}

uint64_t sub_237A454AC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_237A4554C;
  v3 = v0[6];
  v4 = v0[2];

  return sub_237A457C4();
}

uint64_t sub_237A4554C()
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

uint64_t sub_237A45648()
{
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  swift_storeEnumTagMultiPayload();
  v5 = OUTLINED_FUNCTION_37_0();
  sub_237A47030(v5, v6);
  OUTLINED_FUNCTION_35_3();
  v1(v2);
  sub_2379D9054(v2, &qword_27DE9B760, &qword_237C0DEA8);

  OUTLINED_FUNCTION_8();

  return v7();
}

uint64_t sub_237A45708()
{
  v3 = *(v1 + 40);
  **(v1 + 56) = *(v1 + 80);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_35_3();
  v2(v0);
  sub_2379D9054(v0, &qword_27DE9B760, &qword_237C0DEA8);

  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_237A457C4()
{
  OUTLINED_FUNCTION_9();
  v0[24] = v1;
  v0[25] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  v0[26] = OUTLINED_FUNCTION_19();
  v6 = type metadata accessor for MLDecisionTreeRegressor();
  v0[27] = v6;
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64) + 15;
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v9);
  v11 = *(v10 + 64);
  v0[30] = OUTLINED_FUNCTION_19();
  v12 = sub_237C071DC();
  v0[31] = v12;
  OUTLINED_FUNCTION_1(v12);
  v0[32] = v13;
  v15 = *(v14 + 64);
  v0[33] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v16);
  v18 = *(v17 + 64);
  v0[34] = OUTLINED_FUNCTION_19();
  v19 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v0[35] = v19;
  OUTLINED_FUNCTION_20(v19);
  v21 = *(v20 + 64);
  v0[36] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_237A4594C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 200);
  v4 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess();
  sub_2379FC864(v3 + v4, v1, &qword_27DE9AE18, &qword_237C0DEE0);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 264);
  v9 = *(v0 + 248);
  v10 = *(v0 + 256);
  v11 = *(v0 + 240);
  v13 = *(v0 + 200);
  v12 = *(v0 + 208);
  sub_237A470F4(*(v0 + 272), v6, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v10 + 16))(v8, v6 + v7[8], v9);
  sub_2379FC864(v6 + v7[5], v11, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237A0BCC0(v8, v11, v0 + 16);
  v14 = (v6 + v7[6]);
  v16 = *v14;
  v15 = v14[1];
  *(v0 + 296) = v15;
  v17 = *(v6 + v7[7]);
  *(v0 + 304) = v17;
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

  v21 = *(v0 + 216);
  v20 = *(v0 + 224);
  sub_237A43364(v0 + 16, v0 + 80);
  v22 = v21[9];
  *(v0 + 336) = v22;
  v23 = v20 + v22;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  v24 = v21[10];
  *(v0 + 340) = v24;
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
  *(v0 + 312) = v30;
  *v30 = v0;
  v30[1] = sub_237A45C08;
  v31 = *(v0 + 208);

  return sub_237B91530();
}

uint64_t sub_237A45C08()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v8 = *(v7 + 312);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v5 + 320) = v0;

  if (!v0)
  {
    *(v5 + 328) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237A45D18()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  *(v1 + *(v4 + 20)) = *(v0 + 328);
  OUTLINED_FUNCTION_9_13();
  sub_237A470F4(v7, v1, v8);
  v9 = (v1 + *(v4 + 32));
  v11 = *(v0 + 112);
  v10 = *(v0 + 128);
  v12 = *(v0 + 96);
  *v9 = *(v0 + 80);
  v9[1] = v12;
  v9[2] = v11;
  v9[3] = v10;
  sub_237A470F4(v1, v2, type metadata accessor for MLDecisionTreeRegressor);
  result = sub_237A470F4(v2, v5, type metadata accessor for MLDecisionTreeRegressor);
  v14 = v6 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics;
  v15 = *(v6 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v15 == 255)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v0 + 288);
    v17 = *(v0 + 216);
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v21 = *v14;
    v20 = *(v14 + 8);
    v22 = v15 & 1;
    sub_2379F7AF4(*v14, v20, v15 & 1);
    sub_237A44168(v0 + 16);
    OUTLINED_FUNCTION_14_9();
    sub_237A470A0();
    v23 = v19 + *(v17 + 36);
    sub_2379F8918(*v23, *(v23 + 8), *(v23 + 16));
    *v23 = v21;
    *(v23 + 8) = v20;
    *(v23 + 16) = v22;
    v25 = *(v18 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
    v24 = *(v18 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
    v26 = *(v18 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16);
    sub_2379FC970(v25, v24, *(v18 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16));

    if (v26 != 255)
    {
      v27 = *(v0 + 192) + *(*(v0 + 216) + 40);
      sub_2379F8918(*v27, *(v27 + 8), *(v27 + 16));
      *v27 = v25;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26 & 1;
    }

    v28 = *(v0 + 288);
    v29 = *(v0 + 264);
    v30 = *(v0 + 272);
    v32 = *(v0 + 232);
    v31 = *(v0 + 240);
    v33 = *(v0 + 224);
    v34 = *(v0 + 208);

    OUTLINED_FUNCTION_8();

    return v35();
  }

  return result;
}

uint64_t sub_237A45F14()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  v13 = *(v0 + 264);
  v14 = *(v0 + 240);
  v5 = *(v0 + 224);
  v15 = *(v0 + 232);
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  v8 = v5 + *(v0 + 336);
  v9 = v5 + *(v0 + 340);
  sub_237A44168(v0 + 80);
  OUTLINED_FUNCTION_0_24();
  sub_237A470A0();

  sub_2379F8918(*v8, *(v8 + 8), *(v8 + 16));
  sub_2379F8918(*v9, *(v9 + 8), *(v9 + 16));

  sub_237A44168(v0 + 16);
  OUTLINED_FUNCTION_14_9();
  sub_237A470A0();

  OUTLINED_FUNCTION_8();
  v11 = *(v0 + 320);

  return v10();
}

void MLDecisionTreeRegressor.predictions(from:)()
{
  v2 = sub_237C05DBC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *(v0 + *(type metadata accessor for MLDecisionTreeRegressor() + 28));
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

uint64_t MLDecisionTreeRegressor.predictions(from:)(uint64_t a1)
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
  MLDecisionTreeRegressor.predictions(from:)();
  if (v2)
  {
    return (*(v7 + 8))(v12, v4);
  }

  (*(v7 + 8))(v12, v4);
  return sub_237A72900(v19, 1, v1);
}

void MLDecisionTreeRegressor.evaluation(on:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v4 = type metadata accessor for MLDecisionTreeRegressor();
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

uint64_t MLDecisionTreeRegressor.evaluation(on:)(uint64_t a1)
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
  MLDecisionTreeRegressor.evaluation(on:)(v10);
  return (*(v5 + 8))(v10, v2);
}

void MLDecisionTreeRegressor.write(to:metadata:)()
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
    OUTLINED_FUNCTION_3_23();
    sub_237A46C5C(v51, v10, v30);
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
    OUTLINED_FUNCTION_0_24();
    sub_237A470A0();
    sub_2379FC064(v45);
    sub_237C07E5C();
    (*(v42 + 8))(v19, v11);
    (*(v43 + 8))(v29, v20);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLDecisionTreeRegressor.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v30[1] = v3;
  v31 = v2;
  v5 = v4;
  v6 = sub_237C0596C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v16 = OUTLINED_FUNCTION_20(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v30 - v19;
  v21 = sub_237C05ADC();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  memcpy(v32, v5, sizeof(v32));
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  (*(v9 + 104))(v14, *MEMORY[0x277CC91D8], v6);

  sub_237C05ABC();
  MLDecisionTreeRegressor.write(to:metadata:)();
  (*(v24 + 8))(v29, v21);
  OUTLINED_FUNCTION_73();
}

unint64_t MLDecisionTreeRegressor.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLDecisionTreeRegressor();
  v3 = v0 + v2[8];
  v4 = MLDecisionTreeRegressor.ModelParameters.description.getter();
  v6 = v5;
  v7 = (v1 + v2[9]);
  v22 = *v7;
  v23 = *(v7 + 16);
  v8 = MLRegressorMetrics.description.getter();
  v10 = v9;
  v11 = (v1 + v2[10]);
  v12 = *(v11 + 16);
  v21 = *v11;
  v13 = MLRegressorMetrics.description.getter();
  v15 = v14;
  OUTLINED_FUNCTION_80();
  MEMORY[0x2383DC360](v4, v6);

  OUTLINED_FUNCTION_80();
  v19 = v16;
  MEMORY[0x2383DC360](v8, v10);
  MEMORY[0x2383DC360](0xD00000000000001ELL, v19);

  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_80();
    v20 = v17;
    MEMORY[0x2383DC360](v13, v15);
    MEMORY[0x2383DC360](0xD000000000000020, v20);
  }

  return 0xD000000000000022;
}

id MLDecisionTreeRegressor.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLDecisionTreeRegressor.description.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237A46BA0()
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

  return sub_2379F92CC(v6);
}

uint64_t sub_237A46C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

id sub_237A46CB8@<X0>(void *a1@<X8>)
{
  result = MLDecisionTreeRegressor.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237A46CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for TreeRegressorModel();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_237A46DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TreeRegressorModel();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_237A46E60()
{
  type metadata accessor for TreeRegressorModel();
  if (v0 <= 0x3F)
  {
    sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v1 <= 0x3F)
    {
      sub_2379FC328();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237A46F28()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_237A46F70(uint64_t a1)
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

  return sub_237A453F0(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_237A47030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B760, &qword_237C0DEA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A470A0()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_237A470F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_12_12()
{
  result = v0;
  v3 = *(v1 - 208);
  v4 = *(v1 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_7()
{
  v1 = *(v0 - 224);
  v2 = *(*(v0 - 216) + 8);
  return *(v0 - 200);
}

uint64_t OUTLINED_FUNCTION_35_3()
{
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[7];
  v6 = v0[8];

  return sub_237A47030(v5, v6);
}

uint64_t OUTLINED_FUNCTION_38_3()
{
  v2 = *(v0 - 288);

  return sub_237A470A0();
}

uint64_t OUTLINED_FUNCTION_47_4()
{
  v2 = *(*(v1 - 192) + 8);
  result = v0;
  v4 = *(v1 - 208);
  return result;
}

uint64_t sub_237A47294()
{
  sub_237C08ADC();
  swift_getWitnessTable();
  sub_237C089EC();
  sub_237C089DC();
  swift_getWitnessTable();
  v0 = sub_237C088AC();

  swift_getWitnessTable();
  sub_237C08B1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF10, &qword_237C0D670);
  sub_237A474D0();
  sub_237C092FC();

  sub_237C08F2C();
  swift_getWitnessTable();
  sub_237C085BC();
  return v0;
}

uint64_t sub_237A4749C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  return sub_237C0866C() & 1;
}

unint64_t sub_237A474D0()
{
  result = qword_27DE9B768[0];
  if (!qword_27DE9B768[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AF10, &qword_237C0D670);
    sub_237A02390();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE9B768);
  }

  return result;
}

uint64_t sub_237A4755C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237A475A4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_237A475E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237A4764C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_237C0701C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237A476E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C0701C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TreeRegressorModel()
{
  result = qword_27DE9B7F0;
  if (!qword_27DE9B7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A477B4()
{
  sub_237A47848();
  if (v0 <= 0x3F)
  {
    sub_237C0701C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237A47848()
{
  if (!qword_27DE9B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B008, &qword_237C0C9B8);
    v0 = sub_237C08D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9B800);
    }
  }
}

void sub_237A478AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v51 = sub_237C0602C();
  v4 = OUTLINED_FUNCTION_0(v51);
  v49 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0(v9);
  v47 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B818, &qword_237C0DFE0);
  OUTLINED_FUNCTION_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v52 = v42 - v22;
  v23 = sub_237C05DBC();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v30 = v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v31 = v53;
  sub_237A47CE0(v30);
  if (!v31)
  {
    v42[1] = 0;
    v43 = v26;
    v44 = v23;
    v45 = v18;
    v53 = v16;
    v33 = *v2;
    v32 = v2[1];
    sub_237C05DEC();
    v55 = 0;
    sub_2379D9224(&qword_27DE9B820, &qword_27DE9AB88, &qword_237C0B8F0);
    v34 = v52;
    sub_237C05EAC();
    (*(v47 + 8))(v15, v9);
    v35 = v48;
    sub_237C05DFC();
    sub_237B635F0();
    v37 = v36;
    (*(v49 + 8))(v35, v51);
    if (v37)
    {
      v54 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B828, &qword_237C0DFE8);
      sub_237A48144();
      sub_2379D9224(&qword_27DE9B838, &qword_27DE9B818, &qword_237C0DFE0);
      sub_2379D9224(&qword_27DE9B840, &qword_27DE9B828, &qword_237C0DFE8);
      v38 = v53;
      OUTLINED_FUNCTION_1_23();
      sub_237C06EDC();
      v39 = v55;
      v54 = v37;
      OUTLINED_FUNCTION_1_23();
      sub_237C06EEC();
      (*(v45 + 8))(v34, v38);
      (*(v43 + 8))(v30, v44);

      v40 = v55;
      v41 = v46;
      *v46 = v39;
      v41[1] = v40;
      *(v41 + 16) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_237A47CE0(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v32 = v7;
  v33 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  v14 = OUTLINED_FUNCTION_0(v13);
  v34 = v15;
  v35 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = v31 - v19;
  if (!v1[2])
  {
LABEL_14:
    sub_237C090DC();
    __break(1u);
    return;
  }

  v21 = v1[3];
  v22 = v1[4];
  sub_237A0D2E0();
  if (!v2)
  {
    v23 = v1 + *(type metadata accessor for TreeRegressorModel() + 24);
    v24 = sub_237C0700C();
    sub_237C05DAC();
    v25 = v3[1];
    v31[2] = *v3;
    v26 = *(v24 + 16);
    if (v26)
    {
      v31[1] = a1;
      v36 = MEMORY[0x277D84F90];
      v31[0] = v25;

      sub_237AC8B54();
      v27 = 0;
      v28 = v36;
      while (v27 < *(v24 + 16))
      {
        v29 = *(v24 + 4 * v27 + 32);
        v36 = v28;
        v30 = *(v28 + 16);
        if (v30 >= *(v28 + 24) >> 1)
        {
          sub_237AC8B54();
          v28 = v36;
        }

        ++v27;
        *(v28 + 16) = v30 + 1;
        *(v28 + 8 * v30 + 32) = v29;
        if (v26 == v27)
        {

          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

    v28 = MEMORY[0x277D84F90];
LABEL_11:
    v36 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
    sub_2379D9224(&qword_27DE9B810, &qword_27DE9ACF0, &unk_237C14060);
    sub_237C05EEC();
    sub_237C05D4C();
    (*(v32 + 8))(v12, v33);
    (*(v34 + 8))(v20, v35);
  }
}

uint64_t sub_237A48060(uint64_t a1)
{
  sub_237A47CE0(a1);
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_237A480EC()
{
  result = qword_27DE9B808;
  if (!qword_27DE9B808)
  {
    type metadata accessor for TreeRegressorModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B808);
  }

  return result;
}

unint64_t sub_237A48144()
{
  result = qword_27DE9B830;
  if (!qword_27DE9B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B830);
  }

  return result;
}

void sub_237A481B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_132_0(a1, a2, a3);
  if (v6)
  {
    v7 = v5 < v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v8 = sub_237C07A8C();
    OUTLINED_FUNCTION_20(v8);
    v10 = *(v9 + 80);
    OUTLINED_FUNCTION_150_0();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_237A4823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_132_0(a1, a2, a3);
  if (v5)
  {
    v6 = v4 < v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

void sub_237A482A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_132_0(a1, a2, a3);
  if (v6)
  {
    v7 = v5 < v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
    OUTLINED_FUNCTION_20(v8);
    v10 = *(v9 + 80);
    OUTLINED_FUNCTION_150_0();
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_237A48334(uint64_t a1)
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v2 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v61[-v3];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v75 = *(v72 - 8);
  v4 = *(v75 + 64);
  v5 = MEMORY[0x28223BE20](v72);
  i = &v61[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v63 = &v61[-v7];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B900, &unk_237C0E248);
  v76 = *(v78 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v71 = &v61[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  v70 = *(v10 - 8);
  v11 = *(v70 + 8);
  MEMORY[0x28223BE20](v10);
  v68 = &v61[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8F8, &qword_237C0E238);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v61[-v16];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B930, &unk_237C0E260);
  v18 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v20 = &v61[-v19];
  *&v66 = sub_2379D9224(&qword_27DE9B938, &qword_27DE9AA88, &unk_237C0B800);
  v21 = sub_237C0887C();
  v22 = *(v14 + 60);
  v23 = v10;
  v67 = sub_2379D9224(&qword_27DE9B940, &qword_27DE9B900, &unk_237C0E248);
  v24 = a1;
  v25 = v78;
  v26 = sub_237C0887C();
  if (v26 >= v21)
  {
    v27 = v21;
  }

  else
  {
    v27 = v26;
  }

  v81 = MEMORY[0x277D84F90];
  sub_237AC8DF4();
  v77 = v81;
  sub_2379E9068(v24, v17, &qword_27DE9B8F8, &qword_237C0E238);
  (*(v70 + 4))(v68, v17, v23);
  sub_237C0885C();
  (*(v76 + 32))(v71, &v17[*(v14 + 60)], v25);
  v28 = (v20 + *(v62 + 52));
  sub_237C0885C();
  if ((v27 & 0x8000000000000000) == 0)
  {
    v70 = v28;
    v71 = v23;
    if (!v27)
    {
LABEL_12:
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B948, &qword_237C13CD0) + 36);
      v45 = sub_2379D9224(&qword_27DE9AA90, &qword_27DE9AA88, &unk_237C0B800);
      v67 = v75 + 32;
      v66 = xmmword_237C0B660;
      v46 = v70;
      v68 = v45;
      for (i = v44; ; v44 = i)
      {
        sub_237C08B5C();
        if (*&v44[v20] == v79)
        {
          break;
        }

        v47 = sub_237C08B9C();
        v50 = *v48;
        v49 = v48[1];

        v47(&v79, 0);
        sub_237C08B6C();
        v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B950, &unk_237C0E270) + 36);
        sub_2379D9224(&qword_27DE9B958, &qword_27DE9B900, &unk_237C0E248);
        sub_237C08B5C();
        if (*&v46[v51] == v79)
        {

          break;
        }

        v76 = v50;
        v52 = sub_237C08B9C();
        v54 = *v53;

        v52(&v79, 0);
        sub_237C08B6C();
        v79 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
        v55 = swift_allocObject();
        *(v55 + 16) = v66;
        *(v55 + 32) = *(v54 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
        sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200);
        sub_237C082BC();
        v79 = v76;
        v80 = v49;
        v56 = v63;
        sub_237C06C6C();

        v57 = v77;
        v81 = v77;
        v58 = *(v77 + 16);
        if (v58 >= *(v77 + 24) >> 1)
        {
          sub_237AC8DF4();
          v56 = v63;
          v57 = v81;
        }

        *(v57 + 16) = v58 + 1;
        v59 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v77 = v57;
        (*(v75 + 32))(v57 + v59 + *(v75 + 72) * v58, v56, v72);
      }

      *(v20 + *(v62 + 56)) = 1;
      sub_2379D9054(v20, &qword_27DE9B930, &unk_237C0E260);
      return v77;
    }

    v76 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B948, &qword_237C13CD0) + 36);
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B950, &unk_237C0E270) + 36);
    v67 = v75 + 32;
    v68 = v30;
    sub_2379D9224(&qword_27DE9AA90, &qword_27DE9AA88, &unk_237C0B800);
    v64 = xmmword_237C0B660;
    v65 = v20;
    *&v66 = v29;
    while (1)
    {
      sub_237C08B5C();
      if (*(v20 + v29) == v79)
      {
        break;
      }

      v31 = sub_237C08B9C();
      v34 = *v32;
      v33 = v32[1];

      v31(&v79, 0);
      sub_237C08B6C();
      sub_2379D9224(&qword_27DE9B958, &qword_27DE9B900, &unk_237C0E248);
      v35 = v70;
      sub_237C08B5C();
      if (*&v68[v35] == v79)
      {
        goto LABEL_22;
      }

      v36 = sub_237C08B9C();
      v38 = *v37;

      v36(&v79, 0);
      sub_237C08B6C();
      v79 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
      v39 = swift_allocObject();
      *(v39 + 16) = v64;
      *(v39 + 32) = *(v38 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
      sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200);
      sub_237C082BC();
      v79 = v34;
      v80 = v33;
      v40 = i;
      sub_237C06C6C();

      v41 = v77;
      v81 = v77;
      v42 = *(v77 + 16);
      if (v42 >= *(v77 + 24) >> 1)
      {
        sub_237AC8DF4();
        v41 = v81;
      }

      *(v41 + 16) = v42 + 1;
      v43 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v77 = v41;
      (*(v75 + 32))(v41 + v43 + *(v75 + 72) * v42, v40, v72);
      --v76;
      v20 = v65;
      v29 = v66;
      if (!v76)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_237A48E68(uint64_t a1)
{
  OUTLINED_FUNCTION_144_0("sound_classifier");
  _s20PersistentParametersVMa_2();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) = v7;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures) = v7;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) = v7;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) = 0;
  _s10ClassifierVMa_0();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  _s5ModelVMa_0();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  type metadata accessor for MLSoundClassifier.ModelParameters();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v20);
  type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_66_2();
  sub_237A596A4(a1, v31);
  return v1;
}

void *sub_237A48FF0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  HIDWORD(v74) = a2;
  v75 = *v4;
  v76 = a1;
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for MLSoundClassifier.DataSource();
  v14 = OUTLINED_FUNCTION_20(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  OUTLINED_FUNCTION_144_0("sound_classifier");
  v26 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  v27 = _s20PersistentParametersVMa_2();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  v31 = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) = v31;
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures) = v31;
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) = v31;
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels) = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) = 0;
  _s10ClassifierVMa_0();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  _s5ModelVMa_0();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v6);
  v43 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v43);
  type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  v54 = OUTLINED_FUNCTION_58_0();
  sub_237A596FC(v54, v55);
  OUTLINED_FUNCTION_10_11();
  sub_237A596FC(a3, v12);
  v56 = v77;
  sub_237AD54F4(v19, v12, v25);
  if (v56)
  {
    OUTLINED_FUNCTION_68_0();
    sub_237A59650();
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_29_5();
    sub_237A59650();
    v57 = v4[3];

    sub_2379D9054(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9B8B0, &qword_237C13FC0);
    v58 = *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles);

    v59 = *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);

    v60 = *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);

    v61 = *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);

    v62 = *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);

    sub_2379D9054(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, &qword_27DE9B898, &qword_237C0E0D8);
    sub_2379D9054(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model, &qword_27DE9B890, &qword_237C0E0D0);
    sub_2379D9054(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_parameters, &qword_27DE9B968, &qword_237C0E2C8);
    v63 = OUTLINED_FUNCTION_168(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics);
    sub_2379D9054(v63, v64, &qword_237C0DD00);
    v65 = OUTLINED_FUNCTION_168(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics);
    sub_2379D9054(v65, v66, &qword_237C0DD00);
    sub_2379D9054(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter, &qword_27DE9B8D0, &qword_237C0E1E8);
    v67 = *(*v4 + 48);
    v68 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_29_5();
    sub_237A59650();
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v27);
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_2379E8FDC(v25, v4 + v26, &qword_27DE9B8B0, &qword_237C13FC0);
    swift_endAccess();
    OUTLINED_FUNCTION_66_2();
    sub_237A596A4(v78, v72);
    *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) = BYTE4(v74) & 1;
  }

  return v4;
}

uint64_t sub_237A494AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23();
  v68 = v6;
  OUTLINED_FUNCTION_41_0();
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v8 = OUTLINED_FUNCTION_20(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_22();
  v69 = v11;
  OUTLINED_FUNCTION_41_0();
  v12 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B898, &qword_237C0E0D8);
  v20 = OUTLINED_FUNCTION_20(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_0();
  v71 = v23;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_58();
  v70 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v30 = OUTLINED_FUNCTION_149_0();
  v31 = OUTLINED_FUNCTION_4(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v36 = v35 - v34;
  v37 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v0 + v37, v0, &qword_27DE9B8B0, &qword_237C13FC0);
  v38 = OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_73_1(v38, v39, v30);
  if (v40)
  {
    result = sub_2379D9054(v0, &qword_27DE9B8B0, &qword_237C13FC0);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_3_24();
    v41 = OUTLINED_FUNCTION_140_0();
    sub_237A596A4(v41, v42);
    sub_237A49928(v36);
    if (v72)
    {
      OUTLINED_FUNCTION_0_25();
      return sub_237A59650();
    }

    v73 = *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);
    sub_237A596FC(v36 + v30[5], v69);
    v44 = v30[9];
    v45 = *(v36 + v30[8]);
    v46 = *(v36 + v30[6]);
    v47 = *(v36 + v44);
    v67 = *(v36 + v44 + 8);
    v48 = (v18 + v12[7]);
    *v48 = 0u;
    v48[1] = 0u;
    OUTLINED_FUNCTION_122_0(v18 + v12[8]);
    *(v18 + v12[9]) = 32;
    v49 = OUTLINED_FUNCTION_141_0();
    sub_237A596FC(v49, v50);
    *(v18 + v12[5]) = v45;
    *(v18 + v12[6]) = v46;
    v76 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    v74 = v47;
    v75 = v67;

    OUTLINED_FUNCTION_8_17();
    sub_237A59650();
    sub_2379E8FDC(&v74, v48, &qword_27DE9A998, &unk_237C0C100);
    v51 = OUTLINED_FUNCTION_166();
    sub_237B59204(v51, v52, v53);
    v54 = _s10ClassifierVMa_0();
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v54);
    v58 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_2379E8FDC(v70, v1 + v58, &qword_27DE9B898, &qword_237C0E0D8);
    swift_endAccess();
    sub_2379E9068(v1 + v58, v71, &qword_27DE9B898, &qword_237C0E0D8);
    OUTLINED_FUNCTION_170();
    result = OUTLINED_FUNCTION_73_1(v59, v60, v61);
    if (!v40)
    {
      sub_237B5950C(v68);
      OUTLINED_FUNCTION_0_25();
      sub_237A59650();
      OUTLINED_FUNCTION_1_24();
      sub_237A59650();
      _s5ModelVMa_0();
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
      v66 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_2379E8FDC(v68, v1 + v66, &qword_27DE9B890, &qword_237C0E0D0);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

void sub_237A49928(uint64_t a1)
{
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v103 = *(v101 - 1);
  v2 = *(v103 + 64);
  MEMORY[0x28223BE20](v101);
  v102 = &v93 - v3;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v105 = *(v99 - 1);
  v4 = *(v105 + 64);
  MEMORY[0x28223BE20](v99);
  v6 = &v93 - v5;
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v93 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v93 - v15;
  v17 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v18 = *(*(v17 - 1) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v93 - v22;
  v24 = a1;
  v25 = v104;
  sub_237B3BD1C();
  if (!v25)
  {
    v94 = v21;
    v96 = v14;
    v97 = v16;
    v95 = v11;
    v98 = 0;
    v104 = v6;
    if (v26)
    {
      v95 = v26;
      v27 = _s20PersistentParametersVMa_2();
      v28 = v97;
      sub_237A596FC(v24 + v27[5], v97);
      v29 = *(v24 + v27[8]);
      v30 = *(v24 + v27[6]);
      v31 = (v24 + v27[9]);
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = &v23[v17[7]];
      *v34 = 0u;
      *(v34 + 1) = 0u;
      v35 = &v23[v17[8]];
      *v35 = 0;
      v35[8] = 1;
      *&v23[v17[9]] = 32;
      sub_237A596FC(v28, v23);
      *&v23[v17[5]] = v29;
      *&v23[v17[6]] = v30;
      v112 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
      v110 = v32;
      LOBYTE(v111) = v33;
      v36 = v95;
      sub_237A59650();
      sub_2379E8FDC(&v110, v34, &qword_27DE9A998, &unk_237C0C100);
      sub_237A596FC(v23, v96);
      sub_237A59650();
      v37 = v98;
      v38 = sub_237B1903C(v36);
      if (v37)
      {
LABEL_4:
        sub_237A59650();

        return;
      }

      v58 = v38;
      v59 = v39;
      sub_237A59650();
      v60 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
      v61 = v100;
      swift_beginAccess();
      v62 = *(v61 + v60);
      *(v61 + v60) = v58;

      v63 = MEMORY[0x277D84F90];
      if (!v59)
      {
        v59 = MEMORY[0x277D84F90];
      }

      v64 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
      swift_beginAccess();
      v65 = *(v61 + v64);
      *(v61 + v64) = v59;

      swift_getKeyPath();
      v66 = *(v36 + 16);
      if (v66)
      {
        v98 = 0;
        v108 = v63;
        sub_237AC8A74();
        v67 = v108;
        v68 = v104;
        v69 = *(v105 + 16);
        v70 = v36 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
        v102 = *(v105 + 72);
        v103 = v69;
        v101 = (v105 + 8);
        v71 = v99;
        v105 += 16;
        do
        {
          (v103)(v68, v70, v71);
          swift_getAtKeyPath();
          (*v101)(v68, v71);
          v73 = v106;
          v72 = v107;
          v108 = v67;
          v74 = *(v67 + 16);
          if (v74 >= *(v67 + 24) >> 1)
          {
            sub_237AC8A74();
            v71 = v99;
            v67 = v108;
          }

          *(v67 + 16) = v74 + 1;
          v75 = v67 + 16 * v74;
          *(v75 + 32) = v73;
          *(v75 + 40) = v72;
          v70 += v102;
          --v66;
          v68 = v104;
        }

        while (v66);
LABEL_14:

        v61 = v100;
LABEL_25:
        v91 = sub_237B42F98(v67);
        v92 = *(v61 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);
        *(v61 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels) = v91;

        return;
      }
    }

    else
    {
      v40 = a1;
      sub_237B3C1CC();
      v41 = v97;
      v43 = v42;
      v44 = _s20PersistentParametersVMa_2();
      v98 = 0;
      v45 = v44;
      sub_237A596FC(v40 + *(v44 + 20), v41);
      v46 = *(v40 + v45[8]);
      v47 = *(v40 + v45[6]);
      v48 = v40 + v45[9];
      v96 = v43;
      v49 = *v48;
      v50 = *(v48 + 8);
      v51 = v94;
      v52 = &v94[v17[7]];
      *v52 = 0u;
      *(v52 + 1) = 0u;
      v53 = v51 + v17[8];
      *v53 = 0;
      *(v53 + 8) = 1;
      *(v51 + v17[9]) = 32;
      sub_237A596FC(v41, v51);
      *(v51 + v17[5]) = v46;
      *(v51 + v17[6]) = v47;
      v112 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
      v110 = v49;
      v54 = v96;
      LOBYTE(v111) = v50;
      sub_237A59650();
      sub_2379E8FDC(&v110, v52, &qword_27DE9A998, &unk_237C0C100);
      sub_237A596FC(v51, v95);
      sub_237A59650();
      v55 = v98;
      v56 = sub_237B192F8(v54);
      if (v55)
      {
        goto LABEL_4;
      }

      v76 = v56;
      v77 = v57;
      sub_237A59650();
      v78 = MEMORY[0x277D84F90];
      if (v77)
      {
        v79 = v77;
      }

      else
      {
        v79 = MEMORY[0x277D84F90];
      }

      v61 = v100;
      sub_237A4C0E8(v76, v79, v40);

      KeyPath = swift_getKeyPath();
      v81 = *(v54 + 16);
      if (v81)
      {
        v98 = 0;
        v109 = v78;
        sub_237AC8A74();
        v67 = v109;
        v82 = v102;
        v83 = *(v103 + 16);
        v84 = v54 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
        v104 = *(v103 + 72);
        v105 = v83;
        v99 = (v103 + 8);
        v85 = v101;
        v103 += 16;
        do
        {
          (v105)(v82, v84, v85);
          v86 = KeyPath;
          swift_getAtKeyPath();
          (*v99)(v82, v85);
          v87 = v110;
          v88 = v111;
          v109 = v67;
          v89 = *(v67 + 16);
          if (v89 >= *(v67 + 24) >> 1)
          {
            sub_237AC8A74();
            v85 = v101;
            v67 = v109;
          }

          *(v67 + 16) = v89 + 1;
          v90 = v67 + 16 * v89;
          *(v90 + 32) = v87;
          *(v90 + 40) = v88;
          v84 += v104;
          --v81;
          v82 = v102;
          KeyPath = v86;
        }

        while (v81);
        goto LABEL_14;
      }
    }

    v67 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }
}

void sub_237A4A240()
{
  OUTLINED_FUNCTION_74();
  v103 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B898, &qword_237C0E0D8);
  OUTLINED_FUNCTION_20(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23();
  v97 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23();
  v96 = v13;
  OUTLINED_FUNCTION_41_0();
  v14 = sub_237C05ADC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v100 = v16;
  v101 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_0();
  v95 = v19;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_58();
  v99 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_149_0();
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_22();
  v104 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v32 = OUTLINED_FUNCTION_20(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_0();
  v98 = v35;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v36);
  v38 = &v93 - v37;
  v39 = type metadata accessor for MLCheckpoint();
  v40 = OUTLINED_FUNCTION_0(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18_0();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_138();
  v94 = v49;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v50);
  v52 = &v93 - v51;
  sub_237A9A92C(v3, v38);
  OUTLINED_FUNCTION_73_1(v38, 1, v39);
  if (!v58)
  {
    OUTLINED_FUNCTION_71_1();
    v102 = v52;
    sub_237A596A4(v38, v52);
    v55 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v0 + v55, v0, &qword_27DE9B8B0, &qword_237C13FC0);
    v56 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_73_1(v56, v57, v26);
    if (v58)
    {
      sub_2379D9054(v0, &qword_27DE9B8B0, &qword_237C13FC0);
      __break(1u);
    }

    else
    {
      v59 = v0;
      OUTLINED_FUNCTION_3_24();
      v60 = v104;
      sub_237A596A4(v0, v104);
      v61 = v103;
      sub_237A49928(v60);
      if (v61)
      {
        OUTLINED_FUNCTION_0_25();
        sub_237A59650();
        OUTLINED_FUNCTION_5_18();
LABEL_28:
        sub_237A59650();
        goto LABEL_29;
      }

      v63 = v102[*(v39 + 20)];
      if (v63 != 2)
      {
        if (v63 == 1)
        {
          sub_237A4AACC(v102);
          OUTLINED_FUNCTION_0_25();
          sub_237A59650();
          OUTLINED_FUNCTION_5_18();
        }

        else
        {
          sub_2379E8AF0();
          v72 = OUTLINED_FUNCTION_6_2();
          *v73 = 0xD00000000000003ELL;
          v73[1] = 0x8000000237C19130;
          OUTLINED_FUNCTION_52(v72, v73);
          OUTLINED_FUNCTION_0_25();
          sub_237A59650();
        }

        goto LABEL_28;
      }

      v105 = v3;
      v64 = *(v3 + 16);
      if (v64)
      {
        v65 = v0;
        v66 = *(v42 + 72);
        v67 = v64 - 1;
        v68 = v3 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + v66 * (v64 - 1);
        v69 = -v66;
        while (1)
        {
          sub_237A596FC(v68, v47);
          switch(*(v47 + *(v39 + 20)))
          {
            case 1:

              OUTLINED_FUNCTION_5_18();
              v62 = sub_237A59650();
              v59 = v65;
              goto LABEL_22;
            case 2:
              OUTLINED_FUNCTION_51_4();
              break;
            case 3:
              OUTLINED_FUNCTION_158();
              break;
            case 4:
              OUTLINED_FUNCTION_60_0();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_156();
          v70 = sub_237C0929C();

          OUTLINED_FUNCTION_5_18();
          v62 = sub_237A59650();
          if (v70)
          {
            break;
          }

          --v67;
          v68 += v69;
          if (v67 == -1)
          {
            v67 = 0;
            break;
          }
        }

        v71 = v101;
        v59 = v65;
      }

      else
      {
        v67 = 0;
LABEL_22:
        v71 = v101;
      }

      v74 = v98;
      MEMORY[0x28223BE20](v62);
      *(&v93 - 2) = &v105;
      sub_237A9D3D4(sub_237A594BC, v67, v75 & 1, v74);
      OUTLINED_FUNCTION_73_1(v74, 1, v39);
      if (v58)
      {
        sub_2379D9054(v74, &qword_27DE9B8E8, &qword_237C0EBF0);
      }

      else
      {
        OUTLINED_FUNCTION_71_1();
        v76 = v94;
        sub_237A596A4(v74, v94);
        sub_237A4AACC(v76);
        OUTLINED_FUNCTION_5_18();
        sub_237A59650();
      }

      v78 = v99;
      v77 = v100;
      v79 = v95;
      sub_237C05A2C();
      sub_237C05A3C();
      v80 = *(v77 + 8);
      v80(v79, v71);
      v81 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_2379E9068(v59 + v81, v97, &qword_27DE9B898, &qword_237C0E0D8);
      v82 = _s10ClassifierVMa_0();
      v83 = OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_73_1(v83, v84, v82);
      v85 = v96;
      if (!v58)
      {
        OUTLINED_FUNCTION_67_1();
        sub_237A595B8(v86, v87);
        sub_237C0734C();
        v80(v78, v71);
        OUTLINED_FUNCTION_0_25();
        sub_237A59650();
        OUTLINED_FUNCTION_5_18();
        sub_237A59650();
        OUTLINED_FUNCTION_1_24();
        sub_237A59650();
        _s5ModelVMa_0();
        OUTLINED_FUNCTION_80_0();
        __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
        v92 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        sub_2379E8FDC(v85, v59 + v92, &qword_27DE9B890, &qword_237C0E0D0);
        swift_endAccess();
        goto LABEL_29;
      }
    }

    __break(1u);
    JUMPOUT(0x237A4AAB8);
  }

  sub_2379D9054(v38, &qword_27DE9B8E8, &qword_237C0EBF0);
  sub_2379E8AF0();
  v53 = OUTLINED_FUNCTION_6_2();
  *v54 = 0xD00000000000001DLL;
  v54[1] = 0x8000000237C19110;
  OUTLINED_FUNCTION_52(v53, v54);
LABEL_29:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A4AACC(uint64_t a1)
{
  v195 = a1;
  v188 = sub_237C05FAC();
  v5 = OUTLINED_FUNCTION_0(v188);
  v187 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_22();
  v189 = v9;
  OUTLINED_FUNCTION_41_0();
  v10 = sub_237C05E5C();
  v11 = OUTLINED_FUNCTION_20(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_58();
  v186 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_23();
  v172 = v20;
  OUTLINED_FUNCTION_41_0();
  v21 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v22 = OUTLINED_FUNCTION_20(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_22();
  v176 = v25;
  OUTLINED_FUNCTION_41_0();
  v174 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v26 = OUTLINED_FUNCTION_4(v174);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_22();
  v175 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B898, &qword_237C0E0D8);
  v31 = OUTLINED_FUNCTION_20(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  v177 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v37 = OUTLINED_FUNCTION_20(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_58();
  v190 = v43;
  OUTLINED_FUNCTION_41_0();
  v191 = sub_237C05DBC();
  v44 = OUTLINED_FUNCTION_0(v191);
  v198 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_58();
  v197 = v51;
  OUTLINED_FUNCTION_41_0();
  v52 = sub_237C05ADC();
  v53 = OUTLINED_FUNCTION_0(v52);
  v201 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_138();
  v200 = v58;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  v61 = MEMORY[0x28223BE20](v60);
  v63 = &v162 - v62;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_138();
  v202 = v64;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_124_0();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_127_0();
  v71 = _s20PersistentParametersVMa_2();
  v72 = OUTLINED_FUNCTION_4(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_2_0();
  v77 = v76 - v75;
  v78 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v184 = v2;
  sub_2379E9068(v2 + v78, v1, &qword_27DE9B8B0, &qword_237C13FC0);
  v173 = v71;
  OUTLINED_FUNCTION_73_1(v1, 1, v71);
  if (v79)
  {
    result = sub_2379D9054(v1, &qword_27DE9B8B0, &qword_237C13FC0);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_3_24();
    v199 = v77;
    sub_237A596A4(v1, v77);
    OUTLINED_FUNCTION_51_4();
    sub_237C05A2C();
    OUTLINED_FUNCTION_74_1();
    v80 = v201;
    v81 = v201 + 8;
    v82 = *(v201 + 8);
    v82(v3, v52);
    OUTLINED_FUNCTION_49_0();
    sub_237C05A2C();
    v83 = v202;
    OUTLINED_FUNCTION_74_1();
    v195 = v81;
    v192 = v82;
    v82(v3, v52);
    v84 = *(v80 + 16);
    v84(v63, v4, v52);
    v85 = v194;
    OUTLINED_FUNCTION_71();
    v86 = v196;
    sub_237C05CDC();
    v196 = v86;
    v87 = v52;
    v193 = v4;
    if (v86)
    {
      OUTLINED_FUNCTION_137_0();
      v201 = v80 + 16;
      v182 = v84;
      (v84)();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8F0, &unk_237C0E228);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE68, &qword_237C0C110);
      OUTLINED_FUNCTION_88_0(v89);
      v91 = *(v90 + 72);
      v194 = v87;
      v93 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v169 = v88;
      v167 = v93 + 2 * v91;
      v94 = swift_allocObject();
      v165 = xmmword_237C0B670;
      *(v94 + 16) = xmmword_237C0B670;
      v168 = v93;
      v95 = (v94 + v93);
      v96 = *(v89 + 48);
      *v95 = 0x7365727574616566;
      v95[1] = 0xE800000000000000;
      v97 = *(v187 + 104);
      v166 = *MEMORY[0x277CE1910];
      v98 = v188;
      (v97)(v95 + v96);
      v170 = v91;
      v171 = v89;
      v99 = *(v89 + 48);
      OUTLINED_FUNCTION_95_0((v95 + v91));
      v164 = *MEMORY[0x277CE1920];
      (v97)(v100 + v101);
      v187 = sub_237C085AC();
      sub_237B9068C(&unk_284ABFD58);
      sub_237B9068C(&unk_284ABFE18);
      sub_237B9068C(&unk_284ABFE78);
      v102 = v189;
      v163 = *MEMORY[0x277CE1918];
      v181 = v97;
      (v97)(v189);
      sub_237C05E4C();
      v103 = v185;
      OUTLINED_FUNCTION_71();
      sub_237C05CAC();
      v200 = *(v198 + 32);
      v200(v197, v103, v191);
      v182(v183, v202, v194);
      v105 = swift_allocObject();
      *(v105 + 16) = v165;
      v106 = v102;
      v107 = (v105 + v168);
      v108 = v171;
      v109 = *(v171 + 48);
      *v107 = 0x7365727574616566;
      v107[1] = 0xE800000000000000;
      v110 = v181;
      (v181)(v107 + v109, v166, v98);
      v111 = *(v108 + 48);
      OUTLINED_FUNCTION_95_0((v107 + v170));
      v110(v112 + v113, v164, v98);
      sub_237C085AC();
      v114 = sub_237B9068C(&unk_284ABFD58);
      sub_237B9068C(&unk_284ABFE18);
      sub_237B9068C(&unk_284ABFE78);
      v110(v106, v163, v98);
      OUTLINED_FUNCTION_137_0();
      sub_237C05E4C();
      v115 = v180;
      OUTLINED_FUNCTION_71();
      sub_237C05CAC();
      OUTLINED_FUNCTION_177();

      v117 = v191;
      __swift_storeEnumTagSinglePayload(v115, 0, 1, v191);
      v118 = v115;
      v119 = v198;
      v87 = v194;
    }

    else
    {
      v114 = v84;
      v119 = v198;
      v117 = v191;
      v200 = *(v198 + 32);
      v200(v197, v85, v191);
      v106 = v181;
      v114(v181, v83, v87);
      v118 = v182;
      OUTLINED_FUNCTION_71();
      v104 = v196;
      sub_237C05CDC();
      if (v104)
      {
      }

      OUTLINED_FUNCTION_177();
      __swift_storeEnumTagSinglePayload(v118, v116, 1, v117);
    }

    sub_237A594DC(v118, v114);
    sub_237A4BB60();
    v121 = v120;
    v122 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
    swift_beginAccess();
    v123 = *&v106[v122];
    *&v106[v122] = v121;

    v124 = v179;
    sub_2379E9068(v114, v179, &qword_27DE9A9A0, &qword_237C0BF60);
    OUTLINED_FUNCTION_73_1(v124, 1, v117);
    if (v79)
    {
      v194 = v87;
      sub_2379D9054(v124, &qword_27DE9A9A0, &qword_237C0BF60);
    }

    else
    {
      v125 = OUTLINED_FUNCTION_30();
      (v200)(v125);
      sub_237A4BB60();
      v127 = v126;
      v194 = v87;
      v128 = *(v119 + 8);
      v129 = OUTLINED_FUNCTION_141_0();
      v130(v129);
      v131 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
      swift_beginAccess();
      v132 = *&v106[v131];
      *&v106[v131] = v127;
    }

    v201 = *&v106[OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels];
    v133 = v173;
    v134 = v199;
    v135 = v176;
    sub_237A596FC(v199 + v173[5], v176);
    v136 = *(v134 + v133[8]);
    v137 = *(v134 + v133[6]);
    v138 = v134 + v133[9];
    v200 = *v138;
    LODWORD(v196) = *(v138 + 8);
    v139 = v174;
    v140 = v175;
    v141 = (v175 + v174[7]);
    *v141 = 0u;
    v141[1] = 0u;
    OUTLINED_FUNCTION_122_0(v140 + v139[8]);
    *(v140 + v139[9]) = 32;
    sub_237A596FC(v135, v140);
    *(v140 + v139[5]) = v136;
    *(v140 + v139[6]) = v137;
    v205 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    v203 = v200;
    v204 = v196;

    OUTLINED_FUNCTION_8_17();
    sub_237A59650();
    sub_2379E8FDC(&v203, v141, &qword_27DE9A998, &unk_237C0C100);
    v142 = v177;
    v143 = OUTLINED_FUNCTION_140_0();
    sub_237B59204(v143, v144, v145);
    v146 = _s10ClassifierVMa_0();
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v147, v148, v149, v146);
    v150 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_2379E8FDC(v142, &v106[v150], &qword_27DE9B898, &qword_237C0E0D8);
    swift_endAccess();
    v151 = &v106[v150];
    v152 = v178;
    sub_2379E9068(v151, v178, &qword_27DE9B898, &qword_237C0E0D8);
    result = OUTLINED_FUNCTION_73_1(v152, 1, v146);
    if (!v79)
    {
      v154 = v172;
      sub_237B5950C(v172);
      sub_2379D9054(v190, &qword_27DE9A9A0, &qword_237C0BF60);
      (*(v198 + 8))(v197, v117);
      v155 = v194;
      v156 = v192;
      v192(v202, v194);
      v156(v193, v155);
      OUTLINED_FUNCTION_0_25();
      sub_237A59650();
      OUTLINED_FUNCTION_1_24();
      sub_237A59650();
      _s5ModelVMa_0();
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
      v161 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_2379E8FDC(v154, &v106[v161], &qword_27DE9B890, &qword_237C0E0D0);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

void sub_237A4BB60()
{
  OUTLINED_FUNCTION_74();
  v62 = v1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8F8, &qword_237C0E238);
  OUTLINED_FUNCTION_4(v58);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23();
  v59 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  v8 = OUTLINED_FUNCTION_0(v7);
  v55 = v9;
  v56 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_0();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B900, &unk_237C0E248);
  OUTLINED_FUNCTION_0(v57);
  v54 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23();
  v53 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_127_0();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_0(v61);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  v30 = &v53 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B908, &qword_237C0E258);
  OUTLINED_FUNCTION_0(v31);
  v60 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  v37 = &v53 - v36;
  OUTLINED_FUNCTION_90_0();
  sub_237C05DEC();
  OUTLINED_FUNCTION_89();
  sub_237C05DEC();
  v63 = 0;
  v64 = 0xE000000000000000;
  OUTLINED_FUNCTION_72_2();
  sub_2379D9224(v38, &qword_27DE9ACA0, &unk_237C0E0E0);
  v65 = v30;
  sub_237C05EAC();
  (*(v20 + 8))(v0, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  OUTLINED_FUNCTION_46();
  v39 = sub_237C057CC();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v63 = sub_237C057BC();
  sub_237A5954C(&qword_27DE9B918);
  sub_237A595B8(&qword_27DE9B920, MEMORY[0x277CC8710]);
  v42 = v2;
  v43 = v62;
  sub_237C05F5C();

  if (v43)
  {
    (*(v25 + 8))(v65, v61);
    (*(v60 + 8))(v37, v31);
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_72_2();
    sub_2379D9224(v44, v45, v46);
    v47 = v53;
    OUTLINED_FUNCTION_169();
    sub_237C05EAC();
    (*(v55 + 8))(v42, v0);
    v48 = *(v25 + 16);
    v49 = v59;
    v62 = v31;
    v50 = v61;
    v48(v59, v65, v61);
    v51 = v57;
    v52 = v54;
    (*(v54 + 16))(v49 + *(v58 + 52), v47, v57);
    sub_237A48334(v49);
    sub_2379D9054(v49, &qword_27DE9B8F8, &qword_237C0E238);
    (*(v52 + 8))(v47, v51);
    (*(v25 + 8))(v65, v50);
    (*(v60 + 8))(v37, v62);
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A4C0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + *(_s20PersistentParametersVMa_2() + 28));
  v11 = sub_237A4C2B8(a1, v7);

  sub_237A5630C(&v11);
  if (v4)
  {

    __break(1u);
  }

  else
  {

    v8 = *(v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles);
    *(v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) = v11;

    v11 = sub_237A4C2B8(a2, v7);

    sub_237A5630C(&v11);

    v9 = *(v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
    *(v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) = v11;
  }

  return result;
}

uint64_t sub_237A4C200@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = sub_237C06C4C();
  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_237A4C25C(uint64_t *a1)
{
  v4 = *a1;
  v5 = a1[1];

  v1 = OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  return sub_237C06C5C();
}

uint64_t sub_237A4C2B8(uint64_t a1, double a2)
{
  v4 = sub_237C05ADC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v46 = a1;

  sub_237A56258(&v46);
  v15 = *(v46 + 16);
  if (v15)
  {
    v16 = a2 * 1000.0;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v45 = v18;
    v19 = *(v17 + 64);
    v38 = v46;
    v41 = (v19 + 32) & ~v19;
    v20 = v46 + v41;
    v21 = (v17 - 8);
    v43 = v17;
    v44 = MEMORY[0x277D84F90];
    v22 = *(v17 + 56);
    v39 = v22;
    v40 = (v17 + 16);
    do
    {
      v45(v14, v20, v8);
      sub_237C06C7C();
      v23 = objc_allocWithZone(MEMORY[0x277CB8398]);
      v24 = sub_237A5584C(v7);
      v25 = v24;
      if (v24)
      {
        v26 = [v24 length] * 1000.0;
        v27 = [v25 fileFormat];
        [v27 sampleRate];
        v29 = v28;

        if (v16 <= v26 / v29)
        {
          v45(v42, v14, v8);
          v30 = v44;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = *(v30 + 16);
            sub_237BC122C();
            v30 = v35;
          }

          v31 = v30;
          v32 = *(v30 + 16);
          v44 = v31;
          if (v32 >= *(v31 + 24) >> 1)
          {
            sub_237BC122C();
            v44 = v36;
          }

          (*v21)(v14, v8);
          v33 = v44;
          *(v44 + 16) = v32 + 1;
          v22 = v39;
          (*v40)(v33 + v41 + v32 * v39, v42, v8);
        }

        else
        {
          (*v21)(v14, v8);
        }
      }

      else
      {
        (*v21)(v14, v8);
      }

      v20 += v22;
      --v15;
    }

    while (v15);

    return v44;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

void sub_237A4C690()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_87();
  v0 = sub_237C05ADC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  sub_237C06C7C();
  v9 = sub_237C05A8C();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v8, v0);
  sub_237C06C7C();
  v13 = sub_237C05A8C();
  v15 = v14;
  v12(v8, v0);
  if (v9 != v13 || v11 != v15)
  {
    OUTLINED_FUNCTION_105_0();
    sub_237C0929C();
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A4C7F4(unsigned __int8 *a1)
{
  v2 = *a1;
  result = 1;
  switch(v2)
  {
    case 1:
      v4 = *(*(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) + 16);
      v5 = *(*(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) + 16);
      result = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        __break(1u);
        JUMPOUT(0x237A4C868);
      }

      return result;
    case 2:
      return result;
    case 3:
      result = 0;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_237A4C87C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_83();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_20(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12();
  v11 = _s20PersistentParametersVMa_2();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v1 + v18, v3, &qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_73_1(v3, 1, v11);
  if (v19)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_3_24();
  v20 = OUTLINED_FUNCTION_138_0();
  sub_237A596A4(v20, v21);
  v22 = *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles);
  v23 = *(v22 + 16);
  v3 = *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
  v24 = *(v3 + 16);
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v26 <= a1)
  {
    OUTLINED_FUNCTION_0_25();
    sub_237A59650();
    return 0;
  }

  v65 = v26;
  v27 = *(v17 + v11[6]);
  v28 = *(v17 + v11[7]);
  v29 = (v17 + v11[9]);
  v30 = *v29;
  v54 = *(v29 + 8);
  v31 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters;
  v32 = *(v31 + *(type metadata accessor for MLTrainingSessionParameters() + 20));
  v25 = __OFADD__(a1, v32);
  v33 = a1 + v32;
  v34 = v25;
  v35 = a1 - v23;
  if (a1 < v23)
  {
    if ((v34 & 1) == 0)
    {
      if (v23 >= v33)
      {
        v23 = v33;
      }

      if (v23 >= a1)
      {
        v36 = OUTLINED_FUNCTION_58_0();
        sub_237A482A0(v36, v37, v22);
        v3 = v38;
        *&v55 = v27;
        *(&v55 + 1) = v28;
        v56 = 0;
        v57 = v65;
        v58 = v30;
        v59 = v54;
        v42 = sub_237A4CBF8(v38, v39, v40, v41, &v55);
        if (!v2)
        {
          v43 = v42;
          v53 = v23;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_59_1();
          swift_beginAccess();
          sub_237A96A1C(v43);
          swift_endAccess();
          goto LABEL_23;
        }

LABEL_21:
        OUTLINED_FUNCTION_0_25();
        sub_237A59650();
        return swift_unknownObjectRelease();
      }

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v34)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v45 = v65;
  if (v65 < v33)
  {
    v33 = v65;
  }

  v53 = v33;
  v46 = v33 - v23;
  if (__OFSUB__(v33, v23))
  {
    goto LABEL_29;
  }

  if (v46 < v35)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_237A482A0(v35, v46, v3);
  v3 = v47;
  *&v60 = v27;
  *(&v60 + 1) = v28;
  v61 = v23;
  v62 = v45;
  v63 = v30;
  v64 = v54;
  v51 = sub_237A4CBF8(v47, v48, v49, v50, &v60);
  if (v2)
  {
    goto LABEL_21;
  }

  v52 = v51;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237A96A1C(v52);
  swift_endAccess();
LABEL_23:
  OUTLINED_FUNCTION_0_25();
  sub_237A59650();
  result = v53 - a1;
  if (__OFSUB__(v53, a1))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_2379D9054(v3, &qword_27DE9B8B0, &qword_237C13FC0);
    __break(1u);
  }

  return result;
}

unint64_t sub_237A4CBF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5)
{
  v10 = swift_unknownObjectRetain();
  sub_237A55308(v10, a2, a3, a4, a5, &v13);
  if (!v5)
  {
    sub_237A9726C();
    a4 = v11;
  }

  return a4;
}

uint64_t sub_237A4CCA0(uint64_t a1, uint64_t a2)
{

  sub_237A5556C(v5, a2, &v8);
  if (!v3)
  {
    sub_237A9726C();
    v2 = v6;
  }

  return v2;
}

uint64_t sub_237A4CD30()
{
  OUTLINED_FUNCTION_9();
  v1[39] = v2;
  v1[40] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B898, &qword_237C0E0D8);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  v1[41] = OUTLINED_FUNCTION_134_0();
  v1[42] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64);
  v1[43] = OUTLINED_FUNCTION_134_0();
  v1[44] = swift_task_alloc();
  v9 = type metadata accessor for TrainingTablePrinter(0);
  v1[45] = v9;
  OUTLINED_FUNCTION_1(v9);
  v1[46] = v10;
  v1[47] = *(v11 + 64);
  v1[48] = OUTLINED_FUNCTION_134_0();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8D0, &qword_237C0E1E8);
  OUTLINED_FUNCTION_20(v12);
  v14 = *(v13 + 64);
  v1[51] = OUTLINED_FUNCTION_134_0();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v15);
  v17 = *(v16 + 64);
  v1[55] = OUTLINED_FUNCTION_19();
  v18 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

void sub_237A4CEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  v15 = *(v14 + 440);
  v16 = *(v14 + 320);
  v17 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v16 + v17, v15, &qword_27DE9B8B0, &qword_237C13FC0);
  _s20PersistentParametersVMa_2();
  v18 = OUTLINED_FUNCTION_117_0();
  LODWORD(v16) = __swift_getEnumTagSinglePayload(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_30();
  sub_2379D9054(v21, v22, &qword_237C13FC0);
  if (v16 == 1)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = *(v14 + 312);
  v24 = *(v14 + 320);
  v25 = v24 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters;
  v26 = type metadata accessor for MLTrainingSessionParameters();
  v27 = *(v25 + *(v26 + 20));
  *(v14 + 448) = v27;
  v28 = __OFADD__(v23, v27);
  v29 = v23 + v27;
  v30 = v28;
  *(v14 + 280) = v29;
  *(v14 + 288) = v30;
  if (v28)
  {
    goto LABEL_25;
  }

  v31 = *(v25 + *(v26 + 28));
  *(v14 + 456) = v31;
  v32 = __OFSUB__(v31, v23);
  v33 = v31 - v23;
  v34 = v32;
  *(v14 + 296) = v33;
  *(v14 + 304) = v34;
  if (v32)
  {
    goto LABEL_26;
  }

  v35 = *(v14 + 432);
  v36 = *(v14 + 360);
  type metadata accessor for EventCollector();
  swift_allocObject();
  v37 = sub_237AD988C();
  *(v14 + 464) = v37;
  v38 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v24 + v38, v35, &qword_27DE9B8D0, &qword_237C0E1E8);
  LODWORD(v36) = __swift_getEnumTagSinglePayload(v35, 1, v36);
  sub_2379D9054(v35, &qword_27DE9B8D0, &qword_237C0E1E8);
  if (v36 != 1)
  {
    goto LABEL_13;
  }

  v39 = *(v14 + 416);
  v40 = *(v14 + 424);
  v41 = *(v14 + 360);
  v42 = *(v14 + 320);
  v43 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v44 = *(*(v42 + v43) + 16);
  sub_237B4AD2C();
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v41);
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_2379E8FDC(v40, v24 + v38, &qword_27DE9B8D0, &qword_237C0E1E8);
  swift_endAccess();
  sub_2379E9068(v24 + v38, v39, &qword_27DE9B8D0, &qword_237C0E1E8);
  OUTLINED_FUNCTION_170();
  if (__swift_getEnumTagSinglePayload(v48, v49, v50) == 1)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v51 = *(v14 + 416);
  sub_237BAC5E0();
  OUTLINED_FUNCTION_16_9();
  sub_237A59650();
LABEL_13:
  v52 = *(v14 + 360);
  sub_2379E9068(v24 + v38, *(v14 + 408), &qword_27DE9B8D0, &qword_237C0E1E8);
  v53 = OUTLINED_FUNCTION_117_0();
  if (__swift_getEnumTagSinglePayload(v53, v54, v52) == 1)
  {
    sub_2379D9054(*(v14 + 408), &qword_27DE9B8D0, &qword_237C0E1E8);
    sub_237C090DC();
    OUTLINED_FUNCTION_54_2();
    return;
  }

  v55 = *(v14 + 400);
  v56 = *(v14 + 320);
  OUTLINED_FUNCTION_30_7();
  sub_237A596A4(v57, v58);
  v59 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v60 = *(v56 + v59);
  *(v14 + 472) = v60;
  v61 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
  if (*(v60 + 16))
  {
    v62 = *(v14 + 328);
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v56 + v61, v62, &qword_27DE9B898, &qword_237C0E0D8);
    v63 = _s10ClassifierVMa_0();
    if (__swift_getEnumTagSinglePayload(v62, 1, v63) != 1)
    {
      v64 = *(v14 + 400);
      v65 = *(v14 + 376);
      v66 = *(v14 + 384);
      v67 = *(v14 + 368);
      v68 = *(v14 + 320);
      v69 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      *(v14 + 512) = *(v68 + v69);
      OUTLINED_FUNCTION_69_1();
      v70 = OUTLINED_FUNCTION_34_1();
      sub_237A596FC(v70, v71);
      v72 = (*(v67 + 80) + 24) & ~*(v67 + 80);
      v73 = swift_allocObject();
      *(v14 + 520) = v73;
      *(v73 + 16) = v37;
      OUTLINED_FUNCTION_30_7();
      sub_237A596A4(v66, v74 + v72);
      OUTLINED_FUNCTION_125_0(&dword_237C0E1F0);

      v75 = swift_task_alloc();
      *(v14 + 528) = v75;
      *v75 = v14;
      v75[1] = sub_237A4D7AC;
      v76 = *(v14 + 344);
      v77 = *(v14 + 328);
      OUTLINED_FUNCTION_54_2();

      v83(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14);
      return;
    }

    goto LABEL_28;
  }

  v86 = *(v14 + 336);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v56 + v61, v86, &qword_27DE9B898, &qword_237C0E0D8);
  _s10ClassifierVMa_0();
  v87 = OUTLINED_FUNCTION_117_0();
  if (__swift_getEnumTagSinglePayload(v87, v88, v89) == 1)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v91 = *(v14 + 392);
  v90 = *(v14 + 400);
  v93 = *(v14 + 368);
  v92 = *(v14 + 376);
  v94 = *(v14 + 320);
  v95 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  *(v14 + 480) = *(v94 + v95);
  OUTLINED_FUNCTION_69_1();
  sub_237A596FC(v90, v91);
  v96 = (*(v93 + 80) + 24) & ~*(v93 + 80);
  v97 = swift_allocObject();
  *(v14 + 488) = v97;
  *(v97 + 16) = v37;
  OUTLINED_FUNCTION_30_7();
  sub_237A596A4(v91, v98 + v96);
  OUTLINED_FUNCTION_125_0(&dword_237C0E208);

  v99 = swift_task_alloc();
  *(v14 + 496) = v99;
  *v99 = v14;
  v99[1] = sub_237A4D524;
  v100 = *(v14 + 352);
  v101 = *(v14 + 336);
  OUTLINED_FUNCTION_54_2();

  v106(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237A4D524()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_20_2();
  *v4 = v3;
  v6 = v5[62];
  v7 = v5[61];
  v8 = v5[60];
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v3 + 504) = v0;

  if (!v0)
  {
    v11 = *(v3 + 336);
    OUTLINED_FUNCTION_1_24();
    sub_237A59650();
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_237A4D66C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[44];
  v2 = v0[40];
  _s5ModelVMa_0();
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_2379E8FDC(v1, v2 + v7, &qword_27DE9B890, &qword_237C0E0D0);
  swift_endAccess();
  OUTLINED_FUNCTION_82_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_237C0B660;
  v9 = MEMORY[0x277D83C10];
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 64) = v9;
  *(v8 + 32) = 3;
  OUTLINED_FUNCTION_148_0();

  v10 = swift_task_alloc();
  v0[70] = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_58_2(v10);

  return sub_237A4F11C(v11);
}

uint64_t sub_237A4D7AC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_20_2();
  *v4 = v3;
  v6 = v5[66];
  v7 = v5[65];
  v8 = v5[64];
  v9 = v5[59];
  v10 = *v1;
  OUTLINED_FUNCTION_3();
  *v11 = v10;
  *(v3 + 536) = v0;

  if (!v0)
  {
    v12 = *(v3 + 328);
    OUTLINED_FUNCTION_1_24();
    sub_237A59650();
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_237A4D91C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[43];
  v2 = v0[40];
  _s5ModelVMa_0();
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_2379E8FDC(v1, v2 + v7, &qword_27DE9B890, &qword_237C0E0D0);
  swift_endAccess();
  OUTLINED_FUNCTION_82_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_237C0B660;
  v9 = MEMORY[0x277D83C10];
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 64) = v9;
  *(v8 + 32) = 3;
  OUTLINED_FUNCTION_148_0();

  v10 = swift_task_alloc();
  v0[70] = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_58_2(v10);

  return sub_237A4F11C(v11);
}

uint64_t sub_237A4DA5C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v2 = v1;
  v4 = *(v3 + 560);
  *v2 = *v0;
  *(v1 + 568) = v5;

  v6 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237A4DB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  v15 = v14[58];
  v16 = v14[54];
  v17 = v14[55];
  v19 = v14[52];
  v18 = v14[53];
  v21 = v14[50];
  v20 = v14[51];
  v23 = v14[48];
  v22 = v14[49];
  v24 = v14[44];
  v39 = v14[43];
  v40 = v14[42];
  v41 = v14[41];

  OUTLINED_FUNCTION_16_9();
  sub_237A59650();

  v25 = v14[1];
  v26 = v14[71];
  v27 = v14[69];
  v28 = v14[68];
  v29 = v14[57];
  OUTLINED_FUNCTION_54_2();

  return v34(v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, a12, a13, a14);
}

uint64_t sub_237A4DC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_106_0();
  v17 = v16[58];
  v19 = v16[54];
  v18 = v16[55];
  v21 = v16[52];
  v20 = v16[53];
  v22 = v16[50];
  v23 = v16[51];
  v25 = v16[48];
  v24 = v16[49];
  v36 = v16[44];
  v37 = v16[43];
  v26 = v16[42];
  v38 = v16[41];
  v39 = v16[63];

  OUTLINED_FUNCTION_16_9();
  sub_237A59650();
  OUTLINED_FUNCTION_1_24();
  sub_237A59650();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_3();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, v38, v39, a14, a15, a16);
}

uint64_t sub_237A4DD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_106_0();
  v17 = v16[58];
  v19 = v16[54];
  v18 = v16[55];
  v21 = v16[52];
  v20 = v16[53];
  v22 = v16[50];
  v23 = v16[51];
  v25 = v16[48];
  v24 = v16[49];
  v36 = v16[44];
  v37 = v16[43];
  v26 = v16[41];
  v38 = v16[42];
  v39 = v16[67];

  OUTLINED_FUNCTION_16_9();
  sub_237A59650();
  OUTLINED_FUNCTION_1_24();
  sub_237A59650();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_3();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, v38, v39, a14, a15, a16);
}

uint64_t sub_237A4DE58()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v1[5] = v4;
  v1[6] = v0;
  v1[3] = v5;
  v1[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v1[7] = v7;
  OUTLINED_FUNCTION_1(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v1[10] = v11;
  OUTLINED_FUNCTION_1(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v1[13] = v15;
  OUTLINED_FUNCTION_1(v15);
  v1[14] = v16;
  v18 = *(v17 + 64);
  v1[15] = OUTLINED_FUNCTION_19();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v1[16] = v19;
  OUTLINED_FUNCTION_1(v19);
  v1[17] = v20;
  v22 = *(v21 + 64);
  v1[18] = OUTLINED_FUNCTION_19();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v1[19] = v23;
  OUTLINED_FUNCTION_20(v23);
  v25 = *(v24 + 64);
  v1[20] = OUTLINED_FUNCTION_19();
  v1[2] = v3;
  v26 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_237A4E04C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[6];
  v4 = _s10ClassifierVMa_0();
  sub_2379E9068(v3 + *(v4 + 20), v2, &qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_30();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v0[11] + 32))(v0[12], v0[20], v0[10]);
    v5 = *(MEMORY[0x277CC5138] + 4);
    v6 = swift_task_alloc();
    v0[23] = v6;
    v7 = OUTLINED_FUNCTION_62_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_7_17();
    sub_2379D9224(v9, v10, &qword_237C0E218);
    OUTLINED_FUNCTION_159();
    *v6 = v11;
    v6[1] = sub_237A4E334;
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[10];
    OUTLINED_FUNCTION_162();

    return MEMORY[0x282115360]();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_35_4();
    v16(v15);
    v17 = *(MEMORY[0x277CC5100] + 4);
    v18 = swift_task_alloc();
    v0[21] = v18;
    v19 = OUTLINED_FUNCTION_62_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_7_17();
    sub_2379D9224(v21, v22, &qword_237C0E218);
    OUTLINED_FUNCTION_159();
    *v18 = v23;
    v18[1] = sub_237A4E23C;
    v24 = v0[18];
    v25 = v0[15];
    v26 = v0[16];
    OUTLINED_FUNCTION_162();

    return MEMORY[0x282115308]();
  }
}

uint64_t sub_237A4E23C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237A4E334()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237A4E42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = v12[15];
  v14 = v12[13];
  v15 = v12[14];
  v16 = v12[20];
  v17 = v12[12];
  v18 = v12[9];
  v19 = v12[6];
  v20 = v12[3];
  (*(v12[17] + 8))(v12[18], v12[16]);
  OUTLINED_FUNCTION_10_11();
  v21 = OUTLINED_FUNCTION_83();
  sub_237A596FC(v21, v22);
  v23 = _s5ModelVMa_0();
  v24 = OUTLINED_FUNCTION_84_1(v23);
  v25(v24, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_237A4E530()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[12];
  v7 = v0[9];
  v8 = OUTLINED_FUNCTION_38(v0[17]);
  v9(v8);

  OUTLINED_FUNCTION_8();

  return v10();
}

uint64_t sub_237A4E5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = v12[12];
  v15 = v12[9];
  v14 = v12[10];
  v16 = v12[7];
  v17 = v12[8];
  v18 = v12[20];
  v19 = v12[18];
  v20 = v12[15];
  v21 = v12[6];
  v22 = v12[3];
  v23 = OUTLINED_FUNCTION_38(v12[11]);
  v24(v23);
  OUTLINED_FUNCTION_10_11();
  v25 = OUTLINED_FUNCTION_83();
  sub_237A596FC(v25, v26);
  v27 = _s5ModelVMa_0();
  v28 = OUTLINED_FUNCTION_84_1(v27);
  v29(v28, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_237A4E6E0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[24];
  v2 = v0[12];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[15];
  v7 = v0[9];
  v6 = v0[10];
  v8 = OUTLINED_FUNCTION_38(v0[11]);
  v9(v8);

  OUTLINED_FUNCTION_8();

  return v10();
}

uint64_t sub_237A4E7D0()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  v1[6] = v6;
  v1[7] = v0;
  v1[4] = v7;
  v1[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v1[8] = v9;
  OUTLINED_FUNCTION_1(v9);
  v1[9] = v10;
  v12 = *(v11 + 64);
  v1[10] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v1[11] = v13;
  OUTLINED_FUNCTION_1(v13);
  v1[12] = v14;
  v16 = *(v15 + 64);
  v1[13] = OUTLINED_FUNCTION_19();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v1[14] = v17;
  OUTLINED_FUNCTION_1(v17);
  v1[15] = v18;
  v20 = *(v19 + 64);
  v1[16] = OUTLINED_FUNCTION_19();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v1[17] = v21;
  OUTLINED_FUNCTION_1(v21);
  v1[18] = v22;
  v24 = *(v23 + 64);
  v1[19] = OUTLINED_FUNCTION_19();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v1[20] = v25;
  OUTLINED_FUNCTION_20(v25);
  v27 = *(v26 + 64);
  v1[21] = OUTLINED_FUNCTION_19();
  v1[2] = v5;
  v1[3] = v3;
  v28 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_237A4E9D0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[7];
  v4 = _s10ClassifierVMa_0();
  sub_2379E9068(v3 + *(v4 + 20), v2, &qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[21];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[12] + 32))(v0[13], v6, v0[11]);
    v7 = *(MEMORY[0x277CC5130] + 4);
    v8 = swift_task_alloc();
    v0[24] = v8;
    v9 = OUTLINED_FUNCTION_62_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    OUTLINED_FUNCTION_7_17();
    sub_2379D9224(v11, v12, &qword_237C0E218);
    OUTLINED_FUNCTION_159();
    *v8 = v13;
    v8[1] = sub_237A4ECC0;
    v14 = v0[13];
    v15 = v0[11];
    v17 = OUTLINED_FUNCTION_92_0(v16, v0[10]);

    return MEMORY[0x282115358](v17);
  }

  else
  {
    (*(v0[18] + 32))(v0[19], v6, v0[17]);
    v18 = *(MEMORY[0x277CC50F8] + 4);
    v19 = swift_task_alloc();
    v0[22] = v19;
    v20 = OUTLINED_FUNCTION_62_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_7_17();
    sub_2379D9224(v22, v23, &qword_237C0E218);
    OUTLINED_FUNCTION_159();
    *v19 = v24;
    v19[1] = sub_237A4EBC8;
    v25 = v0[19];
    v26 = v0[17];
    v28 = OUTLINED_FUNCTION_92_0(v27, v0[16]);

    return MEMORY[0x282115300](v28);
  }
}

uint64_t sub_237A4EBC8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237A4ECC0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237A4EDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = v12[16];
  v14 = v12[14];
  v15 = v12[15];
  v16 = v12[21];
  v17 = v12[13];
  v18 = v12[10];
  v19 = v12[7];
  v20 = v12[4];
  (*(v12[18] + 8))(v12[19], v12[17]);
  OUTLINED_FUNCTION_10_11();
  v21 = OUTLINED_FUNCTION_83();
  sub_237A596FC(v21, v22);
  v23 = _s5ModelVMa_0();
  v24 = OUTLINED_FUNCTION_84_1(v23);
  v25(v24, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_237A4EEBC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  v7 = v0[10];
  v8 = OUTLINED_FUNCTION_38(v0[18]);
  v9(v8);

  OUTLINED_FUNCTION_8();

  return v10();
}

uint64_t sub_237A4EF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = v12[13];
  v15 = v12[10];
  v14 = v12[11];
  v16 = v12[8];
  v17 = v12[9];
  v18 = v12[21];
  v19 = v12[19];
  v20 = v12[16];
  v21 = v12[7];
  v22 = v12[4];
  v23 = OUTLINED_FUNCTION_38(v12[12]);
  v24(v23);
  OUTLINED_FUNCTION_10_11();
  v25 = OUTLINED_FUNCTION_83();
  sub_237A596FC(v25, v26);
  v27 = _s5ModelVMa_0();
  v28 = OUTLINED_FUNCTION_84_1(v27);
  v29(v28, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_237A4F06C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[25];
  v2 = v0[13];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v7 = v0[10];
  v6 = v0[11];
  v8 = OUTLINED_FUNCTION_38(v0[12]);
  v9(v8);

  OUTLINED_FUNCTION_8();

  return v10();
}

uint64_t sub_237A4F11C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_237C06A4C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237A4F1DC, 0, 0);
}

uint64_t sub_237A4F1DC()
{
  OUTLINED_FUNCTION_106_0();
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  sub_237C06A1C();
  sub_237B1A15C();
  OUTLINED_FUNCTION_176();
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_62_2();
  v6(v7);
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_46_3();
    sub_237B19FFC(v8, 3);
  }

  OUTLINED_FUNCTION_123_0();
  sub_237C06A2C();
  sub_237B1A15C();
  OUTLINED_FUNCTION_176();
  v9 = OUTLINED_FUNCTION_62_2();
  v6(v9);
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_46_3();
    sub_237B19FFC(v10, 5);
  }

  OUTLINED_FUNCTION_123_0();
  sub_237C069EC();
  sub_237B1A15C();
  OUTLINED_FUNCTION_176();
  v11 = OUTLINED_FUNCTION_62_2();
  v6(v11);
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_46_3();
    sub_237B19FFC(v12, 0);
  }

  OUTLINED_FUNCTION_123_0();
  sub_237C06A0C();
  sub_237B1A15C();
  OUTLINED_FUNCTION_176();
  v13 = OUTLINED_FUNCTION_62_2();
  v6(v13);
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_46_3();
    sub_237B19FFC(v14, 4);
  }

  v15 = v0[5];

  v16 = OUTLINED_FUNCTION_129_0();

  return v17(v16);
}

uint64_t sub_237A4F350()
{
  OUTLINED_FUNCTION_9();
  v1[48] = v0;
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  v1[49] = OUTLINED_FUNCTION_19();
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v1[50] = v5;
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v6 + 64);
  v1[51] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v8);
  v10 = *(v9 + 64);
  v1[52] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v1[53] = v11;
  OUTLINED_FUNCTION_1(v11);
  v1[54] = v12;
  v14 = *(v13 + 64);
  v1[55] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B238, &qword_237C0E110);
  v1[56] = v15;
  OUTLINED_FUNCTION_1(v15);
  v1[57] = v16;
  v18 = *(v17 + 64);
  v1[58] = OUTLINED_FUNCTION_19();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v1[59] = v19;
  OUTLINED_FUNCTION_1(v19);
  v1[60] = v20;
  v22 = *(v21 + 64);
  v1[61] = OUTLINED_FUNCTION_134_0();
  v1[62] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B660, &qword_237C0DD00);
  OUTLINED_FUNCTION_20(v23);
  v25 = *(v24 + 64);
  v1[63] = OUTLINED_FUNCTION_134_0();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v26);
  v28 = *(v27 + 64);
  v1[66] = OUTLINED_FUNCTION_19();
  v29 = _s5ModelVMa_0();
  v1[67] = v29;
  OUTLINED_FUNCTION_20(v29);
  v31 = *(v30 + 64);
  v1[68] = OUTLINED_FUNCTION_19();
  v32 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_237A4F5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  v15 = v14[67];
  v16 = v14[66];
  v17 = v14[48];
  v18 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v17 + v18, v16, &qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_170();
  if (__swift_getEnumTagSinglePayload(v19, v20, v21) == 1)
  {
    sub_2379D9054(v14[66], &qword_27DE9B890, &qword_237C0E0D0);
    OUTLINED_FUNCTION_31_5();
    a10 = v23;
    a11 = v22;

    v24 = v14[1];
    OUTLINED_FUNCTION_54_2();
  }

  else
  {
    v33 = v14[48];
    sub_237A596A4(v14[66], v14[68]);
    v34 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
    v14[69] = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v14[70] = *(v33 + v34);
    OUTLINED_FUNCTION_125_0(&dword_237C0E118);

    v35 = swift_task_alloc();
    v14[71] = v35;
    *v35 = v14;
    v35[1] = sub_237A4F7CC;
    v36 = v14[68];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_54_2();
  }

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237A4F7CC()
{
  OUTLINED_FUNCTION_49();
  v2 = *v1;
  OUTLINED_FUNCTION_20_2();
  *v4 = v3;
  v5 = *(v2 + 568);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 576) = v8;
  *(v9 + 584) = v0;

  v10 = *(v2 + 560);

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237A4F8F8()
{
  v1 = v0[72];
  KeyPath = swift_getKeyPath();
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  v121 = v0;
  if (v3)
  {
    v5 = v0[72];
    v6 = v0[57];
    v122 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v7 = v122;
    v9 = *(v6 + 16);
    v8 = (v6 + 16);
    v10 = *(v8 + 64);
    OUTLINED_FUNCTION_119_0();
    v12 = v5 + v11;
    OUTLINED_FUNCTION_171();
    do
    {
      v13 = v121[58];
      v14 = v121[56];
      OUTLINED_FUNCTION_137_0();
      v116();
      v15 = KeyPath;
      swift_getAtKeyPath();
      v16 = *v8;
      v17 = OUTLINED_FUNCTION_87_0();
      v18(v17);
      v19 = v121[36];
      v20 = v121[37];
      v22 = *(v122 + 16);
      v21 = *(v122 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_106(v21);
        sub_237AC8A74();
      }

      *(v122 + 16) = v22 + 1;
      v23 = v122 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      v12 += v113;
      --v3;
      KeyPath = v15;
    }

    while (v3);

    v4 = MEMORY[0x277D84F90];
    v0 = v121;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v24 = v0[69];
  v25 = v0[48];
  v0[44] = v7;
  v26 = *(v25 + v24);
  v27 = swift_getKeyPath();
  v28 = *(v26 + 16);
  if (v28)
  {
    v29 = v0[54];

    sub_237AC8A74();
    v30 = v4;
    v32 = *(v29 + 16);
    v31 = (v29 + 16);
    v33 = *(v31 + 64);
    OUTLINED_FUNCTION_119_0();
    v35 = v26 + v34;
    OUTLINED_FUNCTION_171();
    do
    {
      v36 = v121[55];
      v37 = v121[53];
      v38 = OUTLINED_FUNCTION_87_0();
      (v116)(v38);
      v39 = v27;
      swift_getAtKeyPath();
      v40 = *v31;
      v41 = OUTLINED_FUNCTION_140_0();
      v42(v41);
      v43 = v121[38];
      v44 = v121[39];
      v46 = *(v30 + 16);
      v45 = *(v30 + 24);
      if (v46 >= v45 >> 1)
      {
        OUTLINED_FUNCTION_106(v45);
        sub_237AC8A74();
      }

      *(v30 + 16) = v46 + 1;
      v47 = v30 + 16 * v46;
      *(v47 + 32) = v43;
      *(v47 + 40) = v44;
      v35 += v113;
      --v28;
      v27 = v39;
    }

    while (v28);

    v0 = v121;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v48 = v0[65];
  v49 = v0[62];
  v50 = v0[59];
  v51 = v0[60];
  v52 = v0[48];
  v0[45] = v30;
  v53 = OUTLINED_FUNCTION_34_1();
  v0[74] = __swift_instantiateConcreteTypeFromMangledNameV2(v53, v54);
  OUTLINED_FUNCTION_137_0();
  v0[75] = sub_2379D9224(v55, v56, v57);
  sub_237C06FBC();
  v0[76] = *(v51 + 32);
  v0[77] = (v51 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v58 = OUTLINED_FUNCTION_37_0();
  v59(v58);
  v0[78] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  swift_storeEnumTagMultiPayload();
  v0[79] = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v60 = type metadata accessor for MLClassifierMetrics(0);
  v0[80] = v60;
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v60);
  v64 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_2379E8FDC(v48, v52 + v64, &qword_27DE9B660, &qword_237C0DD00);
  swift_endAccess();
  v65 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles;
  v66 = *(v52 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
  v67 = &unk_27DEAC000;
  if (!*(v66 + 16) || (v68 = v0[48], v69 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures, swift_beginAccess(), *(*(v68 + v69) + 16)))
  {
    v70 = v0[72];
    goto LABEL_18;
  }

  v109 = v60;
  v110 = v69;
  v111 = v68;
  v87 = v0[52];
  v88 = v0[48];
  v89 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v88 + v89, v87, &qword_27DE9B8B0, &qword_237C13FC0);
  v90 = _s20PersistentParametersVMa_2();
  result = __swift_getEnumTagSinglePayload(v87, 1, v90);
  if (result != 1)
  {
    v119 = v0[73];
    v92 = v0[72];
    v93 = v0[51];
    v94 = v0[52];
    v95 = v0[49];
    v96 = v0[50];

    sub_237A596FC(v94 + v90[5], v95);
    v97 = v90[9];
    v112 = *(v94 + v90[8]);
    v98 = *(v94 + v90[6]);
    v117 = *(v94 + v97);
    v114 = *(v94 + v97 + 8);
    v99 = (v93 + v96[7]);
    *v99 = 0u;
    v99[1] = 0u;
    OUTLINED_FUNCTION_122_0(v93 + v96[8]);
    *(v93 + v96[9]) = 32;
    sub_237A596FC(v95, v93);
    *(v93 + v96[5]) = v112;
    *(v93 + v96[6]) = v98;
    v0[11] = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    v0[8] = v117;
    *(v0 + 72) = v114;
    OUTLINED_FUNCTION_8_17();
    sub_237A59650();
    sub_2379E8FDC((v0 + 8), v99, &qword_27DE9A998, &unk_237C0C100);
    OUTLINED_FUNCTION_0_25();
    sub_237A59650();
    sub_237A96C5C(v93, *(*(v52 + v65) + 16), (v0 + 2));
    v100 = sub_237A4CCA0(v66, (v0 + 2));
    if (v119)
    {
      v101 = v0[68];
      OUTLINED_FUNCTION_4_21();
      sub_237A59650();

      v102 = v0[68];
      v103 = v0[66];
      v104 = v0[65];
      OUTLINED_FUNCTION_80_1();
      v115 = v0[52];
      v118 = v0[51];
      v120 = v0[49];

      OUTLINED_FUNCTION_131_0();
      OUTLINED_FUNCTION_147_0();

      __asm { BRAA            X2, X16 }
    }

    v107 = v100;

    v108 = *(v111 + v110);
    *(v111 + v110) = v107;
    v67 = &unk_27DEAC000;
    v60 = v109;
LABEL_18:
    v71 = v0[48];

    v72 = v67[403];
    v0[81] = v72;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v73 = *(v71 + v72);
    v0[82] = v73;
    if (*(v73 + 16))
    {

      v74 = swift_task_alloc();
      v0[83] = v74;
      *v74 = v0;
      v74[1] = sub_237A50170;
      v75 = v0[68];
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_147_0();

      __asm { BR              X3 }
    }

    v78 = v0[68];
    v79 = v0[63];
    v80 = v0[48];
    OUTLINED_FUNCTION_4_21();
    sub_237A59650();
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v60);
    v84 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_2379E8FDC(v79, v80 + v84, &qword_27DE9B660, &qword_237C0DD00);
    swift_endAccess();
    OUTLINED_FUNCTION_31_5();

    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_147_0();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A50170()
{
  OUTLINED_FUNCTION_49();
  v2 = *v1;
  OUTLINED_FUNCTION_20_2();
  *v4 = v3;
  v5 = *(v2 + 664);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 672) = v8;
  *(v9 + 680) = v0;

  v10 = *(v2 + 656);

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237A5029C()
{
  v1 = v0[84];
  KeyPath = swift_getKeyPath();
  v3 = *(v1 + 16);
  v4 = v0[84];
  v5 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = v0[57];
    v76 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v7 = v76;
    v8 = *(v6 + 16);
    v6 += 16;
    v9 = *(v6 + 64);
    OUTLINED_FUNCTION_119_0();
    v11 = v4 + v10;
    v70 = *(v6 + 56);
    v72 = v12;
    v68 = (v6 - 8);
    do
    {
      v13 = v0[58];
      v14 = v0[56];
      OUTLINED_FUNCTION_137_0();
      v72();
      v15 = KeyPath;
      swift_getAtKeyPath();
      v16 = *v68;
      v17 = OUTLINED_FUNCTION_87_0();
      v18(v17);
      v19 = v0[40];
      v20 = v0[41];
      v22 = *(v76 + 16);
      v21 = *(v76 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_106(v21);
        sub_237AC8A74();
      }

      *(v76 + 16) = v22 + 1;
      v23 = v76 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      v11 += v70;
      --v3;
      KeyPath = v15;
    }

    while (v3);
    v24 = v0[84];

    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    v25 = v0[84];

    v7 = MEMORY[0x277D84F90];
  }

  v26 = v0[81];
  v27 = v0[48];
  v0[46] = v7;
  v28 = *(v27 + v26);
  v29 = swift_getKeyPath();
  v30 = *(v28 + 16);
  if (v30)
  {
    v31 = v0[54];

    sub_237AC8A74();
    v32 = v5;
    v33 = *(v31 + 16);
    v31 += 16;
    v34 = *(v31 + 64);
    OUTLINED_FUNCTION_119_0();
    v36 = v28 + v35;
    v71 = *(v31 + 56);
    v73 = v37;
    v69 = (v31 - 8);
    do
    {
      v38 = v0[55];
      v39 = v0[53];
      v40 = OUTLINED_FUNCTION_87_0();
      v73(v40);
      v41 = v29;
      swift_getAtKeyPath();
      v42 = *v69;
      v43 = OUTLINED_FUNCTION_140_0();
      v44(v43);
      v45 = v0[42];
      v46 = v0[43];
      v48 = *(v32 + 16);
      v47 = *(v32 + 24);
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_106(v47);
        sub_237AC8A74();
      }

      *(v32 + 16) = v48 + 1;
      v49 = v32 + 16 * v48;
      *(v49 + 32) = v45;
      *(v49 + 40) = v46;
      v36 += v71;
      --v30;
      v29 = v41;
    }

    while (v30);
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v74 = v0[79];
  v75 = v0[80];
  v50 = v0[78];
  v51 = v0[77];
  v52 = v0[76];
  v53 = v0[75];
  v54 = v0[74];
  v55 = v0[68];
  v56 = v0[64];
  v57 = v0[61];
  v58 = v0[59];
  v59 = v0[48];
  v0[47] = v32;
  sub_237C06FBC();
  OUTLINED_FUNCTION_4_21();
  sub_237A59650();
  v60 = OUTLINED_FUNCTION_140_0();
  v52(v60);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v75);
  v64 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_2379E8FDC(v56, v59 + v64, &qword_27DE9B660, &qword_237C0DD00);
  swift_endAccess();
  OUTLINED_FUNCTION_31_5();

  v65 = OUTLINED_FUNCTION_136_0();

  return v66(v65);
}

uint64_t sub_237A506DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  v15 = v14[68];
  OUTLINED_FUNCTION_4_21();
  sub_237A59650();
  v16 = v14[73];
  v17 = v14[68];
  v18 = v14[66];
  v19 = v14[65];
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_179();

  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_54_2();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237A507B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  v15 = v14[68];
  OUTLINED_FUNCTION_4_21();
  sub_237A59650();
  v16 = v14[85];
  v17 = v14[68];
  v18 = v14[66];
  v19 = v14[65];
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_179();

  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_54_2();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237A5088C()
{
  OUTLINED_FUNCTION_9();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = _s5ModelVMa_0();
  v1[8] = v5;
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v6 + 64);
  v1[9] = OUTLINED_FUNCTION_19();
  v8 = sub_237C074BC();
  v1[10] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B238, &qword_237C0E110);
  v1[13] = v12;
  OUTLINED_FUNCTION_1(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v1[16] = v16;
  OUTLINED_FUNCTION_1(v16);
  v1[17] = v17;
  v19 = *(v18 + 64);
  v1[18] = OUTLINED_FUNCTION_19();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v1[19] = v20;
  OUTLINED_FUNCTION_1(v20);
  v1[20] = v21;
  v23 = *(v22 + 64);
  v1[21] = OUTLINED_FUNCTION_19();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  v1[22] = v24;
  OUTLINED_FUNCTION_20(v24);
  v26 = *(v25 + 64);
  v1[23] = OUTLINED_FUNCTION_19();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v1[24] = v27;
  OUTLINED_FUNCTION_1(v27);
  v1[25] = v28;
  v30 = *(v29 + 64);
  v1[26] = OUTLINED_FUNCTION_19();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  v1[27] = v31;
  OUTLINED_FUNCTION_1(v31);
  v1[28] = v32;
  v34 = *(v33 + 64);
  v1[29] = OUTLINED_FUNCTION_134_0();
  v1[30] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v1[31] = v35;
  OUTLINED_FUNCTION_1(v35);
  v1[32] = v36;
  v38 = *(v37 + 64);
  v1[33] = OUTLINED_FUNCTION_19();
  v39 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v39, v40, v41);
}

uint64_t sub_237A50BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  v17[34] = *(v17[4] + 16);
  sub_237BC194C();
  v17[35] = 0;
  v17[36] = v18;
  v19 = v17[33];
  if (v17[34])
  {
    OUTLINED_FUNCTION_103_0();
    v20();
    sub_237C08A4C();
    OUTLINED_FUNCTION_40_5();
    v34 = v17[7];
    v33 = v17[8];
    sub_237C06C7C();
    sub_2379E9068(v34 + *(v33 + 20), v16, &qword_27DE9A790, &qword_237C0A710);
    OUTLINED_FUNCTION_62_2();
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_115_0();
    if (v35)
    {
      v36 = OUTLINED_FUNCTION_35_4();
      v37(v36);
      v38 = *(MEMORY[0x277CC5160] + 4);
      v39 = swift_task_alloc();
      v40 = OUTLINED_FUNCTION_41_4(v39);
      *v40 = v41;
      OUTLINED_FUNCTION_11_14(v40);
      OUTLINED_FUNCTION_54_2();

      return MEMORY[0x2821153B0](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      v50 = OUTLINED_FUNCTION_39_3();
      v51(v50);
      v52 = *(MEMORY[0x277CC5150] + 4);
      v53 = swift_task_alloc();
      v54 = OUTLINED_FUNCTION_42_1(v53);
      *v54 = v55;
      OUTLINED_FUNCTION_12_13(v54);
      OUTLINED_FUNCTION_54_2();

      return MEMORY[0x2821153A0](v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16);
    }
  }

  else
  {
    v22 = v17[29];
    v21 = v17[30];
    OUTLINED_FUNCTION_2_27();
    v64 = v23;

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_54_2();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, v64, a11, a12, a13, a14);
  }
}

uint64_t sub_237A50E7C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 304) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237A50F74()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237A5106C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_106_0();
  (*(v17[20] + 8))(v17[21], v17[19]);
  v20 = v17[38];
  v21 = OUTLINED_FUNCTION_22_7();
  v22(v21);
  v23 = OUTLINED_FUNCTION_50_3();
  v24(v23);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_49_1();
  if (v25)
  {
    OUTLINED_FUNCTION_113_0();
    v16 = v97;
  }

  v26 = OUTLINED_FUNCTION_15_10();
  v27(v26);
  if (v18)
  {
    v28 = OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_77_1(v28);

    OUTLINED_FUNCTION_93_0();
    sub_237C0874C();
    v20 = OUTLINED_FUNCTION_55_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    OUTLINED_FUNCTION_14_10();
    sub_237A595B8(v29, v30);
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_33_4();
    v19(v18);
    v31 = OUTLINED_FUNCTION_56_3();
    v32(v31);
  }

  v33 = OUTLINED_FUNCTION_48_5();
  v34(v33);
  v35 = OUTLINED_FUNCTION_83_1();
  v36(v35);
  OUTLINED_FUNCTION_32_5();
  if (v38)
  {
    v40 = v17[29];
    v39 = v17[30];
    OUTLINED_FUNCTION_2_27();
    v98 = v41;

    OUTLINED_FUNCTION_52_3();
    OUTLINED_FUNCTION_53_3();

    return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, v98, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_18_13(v37);
    v51();
    sub_237C08A4C();
    v52 = v17[33];
    if (v20)
    {
      v53 = OUTLINED_FUNCTION_86_0();
      v54(v53);

      v55 = v17[33];
      v56 = v17[29];
      v57 = v17[30];
      OUTLINED_FUNCTION_2_27();
      v99 = v58;

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_53_3();

      return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, v99, a13, a14, a15, a16);
    }

    else
    {
      OUTLINED_FUNCTION_40_5();
      v68 = v17[7];
      v67 = v17[8];
      sub_237C06C7C();
      sub_2379E9068(v68 + *(v67 + 20), v16, &qword_27DE9A790, &qword_237C0A710);
      OUTLINED_FUNCTION_62_2();
      swift_getEnumCaseMultiPayload();
      OUTLINED_FUNCTION_115_0();
      if (v38)
      {
        v69 = OUTLINED_FUNCTION_35_4();
        v70(v69);
        v71 = *(MEMORY[0x277CC5160] + 4);
        v72 = swift_task_alloc();
        v73 = OUTLINED_FUNCTION_41_4(v72);
        *v73 = v74;
        OUTLINED_FUNCTION_11_14(v73);
        OUTLINED_FUNCTION_53_3();

        return MEMORY[0x2821153B0](v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16);
      }

      else
      {
        v83 = OUTLINED_FUNCTION_39_3();
        v84(v83);
        v85 = *(MEMORY[0x277CC5150] + 4);
        v86 = swift_task_alloc();
        v87 = OUTLINED_FUNCTION_42_1(v86);
        *v87 = v88;
        OUTLINED_FUNCTION_12_13(v87);
        OUTLINED_FUNCTION_53_3();

        return MEMORY[0x2821153A0](v89, v90, v91, v92, v93, v94, v95, v96, a9, a10, a11, a12, a13, a14, a15, a16);
      }
    }
  }
}

uint64_t sub_237A51430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_106_0();
  (*(v17[17] + 8))(v17[18], v17[16]);
  v20 = v17[40];
  v21 = OUTLINED_FUNCTION_22_7();
  v22(v21);
  v23 = OUTLINED_FUNCTION_50_3();
  v24(v23);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_49_1();
  if (v25)
  {
    OUTLINED_FUNCTION_113_0();
    v16 = v97;
  }

  v26 = OUTLINED_FUNCTION_15_10();
  v27(v26);
  if (v18)
  {
    v28 = OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_77_1(v28);

    OUTLINED_FUNCTION_93_0();
    sub_237C0874C();
    v20 = OUTLINED_FUNCTION_55_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    OUTLINED_FUNCTION_14_10();
    sub_237A595B8(v29, v30);
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_33_4();
    v19(v18);
    v31 = OUTLINED_FUNCTION_56_3();
    v32(v31);
  }

  v33 = OUTLINED_FUNCTION_48_5();
  v34(v33);
  v35 = OUTLINED_FUNCTION_83_1();
  v36(v35);
  OUTLINED_FUNCTION_32_5();
  if (v38)
  {
    v40 = v17[29];
    v39 = v17[30];
    OUTLINED_FUNCTION_2_27();
    v98 = v41;

    OUTLINED_FUNCTION_52_3();
    OUTLINED_FUNCTION_53_3();

    return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, v98, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_18_13(v37);
    v51();
    sub_237C08A4C();
    v52 = v17[33];
    if (v20)
    {
      v53 = OUTLINED_FUNCTION_86_0();
      v54(v53);

      v55 = v17[33];
      v56 = v17[29];
      v57 = v17[30];
      OUTLINED_FUNCTION_2_27();
      v99 = v58;

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_53_3();

      return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, v99, a13, a14, a15, a16);
    }

    else
    {
      OUTLINED_FUNCTION_40_5();
      v68 = v17[7];
      v67 = v17[8];
      sub_237C06C7C();
      sub_2379E9068(v68 + *(v67 + 20), v16, &qword_27DE9A790, &qword_237C0A710);
      OUTLINED_FUNCTION_62_2();
      swift_getEnumCaseMultiPayload();
      OUTLINED_FUNCTION_115_0();
      if (v38)
      {
        v69 = OUTLINED_FUNCTION_35_4();
        v70(v69);
        v71 = *(MEMORY[0x277CC5160] + 4);
        v72 = swift_task_alloc();
        v73 = OUTLINED_FUNCTION_41_4(v72);
        *v73 = v74;
        OUTLINED_FUNCTION_11_14(v73);
        OUTLINED_FUNCTION_53_3();

        return MEMORY[0x2821153B0](v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16);
      }

      else
      {
        v83 = OUTLINED_FUNCTION_39_3();
        v84(v83);
        v85 = *(MEMORY[0x277CC5150] + 4);
        v86 = swift_task_alloc();
        v87 = OUTLINED_FUNCTION_42_1(v86);
        *v87 = v88;
        OUTLINED_FUNCTION_12_13(v87);
        OUTLINED_FUNCTION_53_3();

        return MEMORY[0x2821153A0](v89, v90, v91, v92, v93, v94, v95, v96, a9, a10, a11, a12, a13, a14, a15, a16);
      }
    }
  }
}

uint64_t sub_237A517F4()
{
  OUTLINED_FUNCTION_9();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = _s5ModelVMa_1();
  v1[8] = v5;
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v6 + 64);
  v1[9] = OUTLINED_FUNCTION_19();
  v8 = sub_237C074BC();
  v1[10] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B238, &qword_237C0E110);
  v1[13] = v12;
  OUTLINED_FUNCTION_1(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v1[16] = v16;
  OUTLINED_FUNCTION_1(v16);
  v1[17] = v17;
  v19 = *(v18 + 64);
  v1[18] = OUTLINED_FUNCTION_19();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v1[19] = v20;
  OUTLINED_FUNCTION_1(v20);
  v1[20] = v21;
  v23 = *(v22 + 64);
  v1[21] = OUTLINED_FUNCTION_19();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  v1[22] = v24;
  OUTLINED_FUNCTION_20(v24);
  v26 = *(v25 + 64);
  v1[23] = OUTLINED_FUNCTION_19();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v1[24] = v27;
  OUTLINED_FUNCTION_1(v27);
  v1[25] = v28;
  v30 = *(v29 + 64);
  v1[26] = OUTLINED_FUNCTION_19();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  v1[27] = v31;
  OUTLINED_FUNCTION_1(v31);
  v1[28] = v32;
  v34 = *(v33 + 64);
  v1[29] = OUTLINED_FUNCTION_134_0();
  v1[30] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v1[31] = v35;
  OUTLINED_FUNCTION_1(v35);
  v1[32] = v36;
  v38 = *(v37 + 64);
  v1[33] = OUTLINED_FUNCTION_19();
  v39 = OUTLINED_FUNCTION_34_4();

  return MEMORY[0x2822009F8](v39, v40, v41);
}

uint64_t sub_237A51B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  v16[34] = *(v16[4] + 16);
  sub_237BC194C();
  v16[35] = 0;
  v16[36] = v17;
  v18 = v16[33];
  if (v16[34])
  {
    OUTLINED_FUNCTION_103_0();
    v19();
    sub_237C08A4C();
    OUTLINED_FUNCTION_40_5();
    v32 = v16[7];
    sub_237C06C7C();
    v33 = OUTLINED_FUNCTION_128();
    sub_2379E9068(v33, v34, v35, v36);
    OUTLINED_FUNCTION_62_2();
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_115_0();
    if (v37)
    {
      v38 = OUTLINED_FUNCTION_35_4();
      v39(v38);
      v40 = *(MEMORY[0x277CC5160] + 4);
      v41 = swift_task_alloc();
      v42 = OUTLINED_FUNCTION_41_4(v41);
      *v42 = v43;
      OUTLINED_FUNCTION_11_14(v42);
      OUTLINED_FUNCTION_54_2();

      return MEMORY[0x2821153B0](v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      v52 = OUTLINED_FUNCTION_39_3();
      v53(v52);
      v54 = *(MEMORY[0x277CC5150] + 4);
      v55 = swift_task_alloc();
      v56 = OUTLINED_FUNCTION_42_1(v55);
      *v56 = v57;
      OUTLINED_FUNCTION_12_13(v56);
      OUTLINED_FUNCTION_54_2();

      return MEMORY[0x2821153A0](v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16);
    }
  }

  else
  {
    v21 = v16[29];
    v20 = v16[30];
    OUTLINED_FUNCTION_2_27();
    v66 = v22;

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_54_2();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, v66, a11, a12, a13, a14);
  }
}

uint64_t sub_237A51DDC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 304) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237A51ED4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237A51FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_106_0();
  (*(v16[20] + 8))(v16[21], v16[19]);
  v19 = v16[38];
  v20 = OUTLINED_FUNCTION_22_7();
  v21(v20);
  v22 = OUTLINED_FUNCTION_50_3();
  v23(v22);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_49_1();
  if (v24)
  {
    OUTLINED_FUNCTION_113_0();
  }

  v25 = OUTLINED_FUNCTION_15_10();
  v26(v25);
  if (v17)
  {
    v27 = OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_76_1(v27);

    OUTLINED_FUNCTION_93_0();
    sub_237C0874C();
    v19 = OUTLINED_FUNCTION_55_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    OUTLINED_FUNCTION_14_10();
    sub_237A595B8(v28, v29);
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_33_4();
    v18(v17);
    v30 = OUTLINED_FUNCTION_56_3();
    v31(v30);
  }

  v32 = OUTLINED_FUNCTION_48_5();
  v33(v32);
  v34 = OUTLINED_FUNCTION_83_1();
  v35(v34);
  OUTLINED_FUNCTION_32_5();
  if (v37)
  {
    v39 = v16[29];
    v38 = v16[30];
    OUTLINED_FUNCTION_2_27();
    v99 = v40;

    OUTLINED_FUNCTION_52_3();
    OUTLINED_FUNCTION_53_3();

    return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, v99, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_18_13(v36);
    v50();
    sub_237C08A4C();
    v51 = v16[33];
    if (v19)
    {
      v52 = OUTLINED_FUNCTION_86_0();
      v53(v52);

      v54 = v16[33];
      v55 = v16[29];
      v56 = v16[30];
      OUTLINED_FUNCTION_2_27();
      v100 = v57;

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_53_3();

      return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, v100, a13, a14, a15, a16);
    }

    else
    {
      OUTLINED_FUNCTION_40_5();
      v66 = v16[7];
      sub_237C06C7C();
      v67 = OUTLINED_FUNCTION_128();
      sub_2379E9068(v67, v68, v69, v70);
      OUTLINED_FUNCTION_62_2();
      swift_getEnumCaseMultiPayload();
      OUTLINED_FUNCTION_115_0();
      if (v37)
      {
        v71 = OUTLINED_FUNCTION_35_4();
        v72(v71);
        v73 = *(MEMORY[0x277CC5160] + 4);
        v74 = swift_task_alloc();
        v75 = OUTLINED_FUNCTION_41_4(v74);
        *v75 = v76;
        OUTLINED_FUNCTION_11_14(v75);
        OUTLINED_FUNCTION_53_3();

        return MEMORY[0x2821153B0](v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, a16);
      }

      else
      {
        v85 = OUTLINED_FUNCTION_39_3();
        v86(v85);
        v87 = *(MEMORY[0x277CC5150] + 4);
        v88 = swift_task_alloc();
        v89 = OUTLINED_FUNCTION_42_1(v88);
        *v89 = v90;
        OUTLINED_FUNCTION_12_13(v89);
        OUTLINED_FUNCTION_53_3();

        return MEMORY[0x2821153A0](v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14, a15, a16);
      }
    }
  }
}

uint64_t sub_237A52388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v35 = v14[38];
  v19 = v14[21];
  v20 = v14[19];
  OUTLINED_FUNCTION_114_0(v14[20]);
  v21();
  (*(v18 + 8))(v16, v17);

  (*(v12 + 8))(v13, v15);
  v22 = v14[33];
  v24 = v14[29];
  v23 = v14[30];
  OUTLINED_FUNCTION_6_19();
  v25 = v14[9];

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

uint64_t sub_237A52498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_106_0();
  (*(v16[17] + 8))(v16[18], v16[16]);
  v19 = v16[40];
  v20 = OUTLINED_FUNCTION_22_7();
  v21(v20);
  v22 = OUTLINED_FUNCTION_50_3();
  v23(v22);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_49_1();
  if (v24)
  {
    OUTLINED_FUNCTION_113_0();
  }

  v25 = OUTLINED_FUNCTION_15_10();
  v26(v25);
  if (v17)
  {
    v27 = OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_76_1(v27);

    OUTLINED_FUNCTION_93_0();
    sub_237C0874C();
    v19 = OUTLINED_FUNCTION_55_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    OUTLINED_FUNCTION_14_10();
    sub_237A595B8(v28, v29);
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_33_4();
    v18(v17);
    v30 = OUTLINED_FUNCTION_56_3();
    v31(v30);
  }

  v32 = OUTLINED_FUNCTION_48_5();
  v33(v32);
  v34 = OUTLINED_FUNCTION_83_1();
  v35(v34);
  OUTLINED_FUNCTION_32_5();
  if (v37)
  {
    v39 = v16[29];
    v38 = v16[30];
    OUTLINED_FUNCTION_2_27();
    v99 = v40;

    OUTLINED_FUNCTION_52_3();
    OUTLINED_FUNCTION_53_3();

    return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, v99, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_18_13(v36);
    v50();
    sub_237C08A4C();
    v51 = v16[33];
    if (v19)
    {
      v52 = OUTLINED_FUNCTION_86_0();
      v53(v52);

      v54 = v16[33];
      v55 = v16[29];
      v56 = v16[30];
      OUTLINED_FUNCTION_2_27();
      v100 = v57;

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_53_3();

      return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, v100, a13, a14, a15, a16);
    }

    else
    {
      OUTLINED_FUNCTION_40_5();
      v66 = v16[7];
      sub_237C06C7C();
      v67 = OUTLINED_FUNCTION_128();
      sub_2379E9068(v67, v68, v69, v70);
      OUTLINED_FUNCTION_62_2();
      swift_getEnumCaseMultiPayload();
      OUTLINED_FUNCTION_115_0();
      if (v37)
      {
        v71 = OUTLINED_FUNCTION_35_4();
        v72(v71);
        v73 = *(MEMORY[0x277CC5160] + 4);
        v74 = swift_task_alloc();
        v75 = OUTLINED_FUNCTION_41_4(v74);
        *v75 = v76;
        OUTLINED_FUNCTION_11_14(v75);
        OUTLINED_FUNCTION_53_3();

        return MEMORY[0x2821153B0](v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, a16);
      }

      else
      {
        v85 = OUTLINED_FUNCTION_39_3();
        v86(v85);
        v87 = *(MEMORY[0x277CC5150] + 4);
        v88 = swift_task_alloc();
        v89 = OUTLINED_FUNCTION_42_1(v88);
        *v89 = v90;
        OUTLINED_FUNCTION_12_13(v89);
        OUTLINED_FUNCTION_53_3();

        return MEMORY[0x2821153A0](v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14, a15, a16);
      }
    }
  }
}